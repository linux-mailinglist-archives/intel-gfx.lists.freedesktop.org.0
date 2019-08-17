Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C4F90FC0
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 726D56E49F;
	Sat, 17 Aug 2019 09:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D97E26E30E
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950656"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:37 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:38 -0700
Message-Id: <20190817093902.2171-17-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 16/40] drm/i915: Add
 for_each_new_intel_connector_in_state()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGUg
c2FtZSBtYWNybyBhcyBmb3JfZWFjaF9uZXdfY29ubmVjdG9yX2luX3N0YXRlKCkgYnV0IGl0IHVz
ZXMKaW50ZWwvaTkxNSB0eXBlcyBpbnN0ZWFkIG9mIHRoZSBkcm0gb25lcy4KClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgOCArKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKaW5kZXggZTU3ZTY5NjkwNTFkLi5mZDMwNDNlNzdiNTAg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC00
MTEsNiArNDExLDE0IEBAIGVudW0gcGh5X2ZpYSB7CiAJICAgICAoX19pKSsrKSBcCiAJCWZvcl9l
YWNoX2lmKGNydGMpCiAKKyNkZWZpbmUgZm9yX2VhY2hfbmV3X2ludGVsX2Nvbm5lY3Rvcl9pbl9z
dGF0ZShfX3N0YXRlLCBjb25uZWN0b3IsIG5ld19jb25uZWN0b3Jfc3RhdGUsIF9faSkgXAorCWZv
ciAoKF9faSkgPSAwOyBcCisJICAgICAoX19pKSA8IChfX3N0YXRlKS0+YmFzZS5udW1fY29ubmVj
dG9yOyBcCisJICAgICAoX19pKSsrKSBcCisJCWZvcl9lYWNoX2lmICgoX19zdGF0ZSktPmJhc2Uu
Y29ubmVjdG9yc1tfX2ldLnB0ciAmJiBcCisJCQkgICAgICgoY29ubmVjdG9yKSA9IHRvX2ludGVs
X2Nvbm5lY3RvcigoX19zdGF0ZSktPmJhc2UuY29ubmVjdG9yc1tfX2ldLnB0ciksIFwKKwkJCSAg
ICAgKG5ld19jb25uZWN0b3Jfc3RhdGUpID0gdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3Rh
dGUoKF9fc3RhdGUpLT5iYXNlLmNvbm5lY3RvcnNbX19pXS5uZXdfc3RhdGUpLCAxKSkKKwogdm9p
ZCBpbnRlbF9saW5rX2NvbXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCiAJCQkgICAgaW50
IHBpeGVsX2Nsb2NrLCBpbnQgbGlua19jbG9jaywKIAkJCSAgICBzdHJ1Y3QgaW50ZWxfbGlua19t
X24gKm1fbiwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
