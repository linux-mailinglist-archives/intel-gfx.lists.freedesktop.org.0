Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B79A8314B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 14:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14CA6E370;
	Tue,  6 Aug 2019 12:25:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558E76E372
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 12:25:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 05:25:25 -0700
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="325620178"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 05:25:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue,  6 Aug 2019 14:24:58 +0200
Message-Id: <20190806122458.15237-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806122458.15237-1-janusz.krzysztofik@linux.intel.com>
References: <20190806122458.15237-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 2/2] drm/i915: Fix panic if nothing to
 promote after preempt on reset
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXhlY2xpc3RzIHN0YXRlIG1hY2hpbmUgYWx3YXlzIGZhbGxzIHRocm91Z2ggZnJvbSBQUkVFTVBU
IHRvIFBST01PVEUsCmV4cGVjdGluZyBwZW5kaW5nIHRvIGJlIHZhbGlkLiAgQXBwYXJlbnRseSBp
dCBub3QgYWx3YXlzIGhhcHBlbnMgdG8gYmUKdGhlIGNhc2UsIGF0IGxlYXN0IGR1cmluZyByZXNl
dC4gIEFzc3VtaW5nIHRoaXMgdW5leHBlY3RlZCBiZWhhdmlvcgpkZXBlbmRzIG9uIGhhcmR3YXJl
LCBmaXggdGhlIGlzc3VlIGJ5IGludHJvZHVjaW5nIGEgY29uZGl0aW9uYWwgYnJlYWsuCgpTaWdu
ZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAzICsr
KwogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKaW5kZXggYWExMzhhYWY4NzQzLi4xYmJhMTNlZTEwMjMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCkBAIC0xNDA4LDYgKzE0MDgsOSBAQCBzdGF0aWMgdm9pZCBwcm9j
ZXNzX2NzYihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCQl3aGlsZSAoKmV4ZWNs
aXN0cy0+YWN0aXZlKQogCQkJCWV4ZWNsaXN0c19zY2hlZHVsZV9vdXQoKmV4ZWNsaXN0cy0+YWN0
aXZlKyspOwogCisJCQlpZiAocmVzZXRfaW5fcHJvZ3Jlc3MoZXhlY2xpc3RzKSAmJgorCQkJICAg
ICFhc3NlcnRfcGVuZGluZ192YWxpZChleGVjbGlzdHMsICJyZXNldCIpKQorCQkJCWJyZWFrOwog
CQkJLyogZmFsbHRocm91Z2ggKi8KIAkJY2FzZSBDU0JfUFJPTU9URTogLyogc3dpdGNoIHBlbmRp
bmcgdG8gaW5mbGlnaHQgKi8KIAkJCUdFTV9CVUdfT04oKmV4ZWNsaXN0cy0+YWN0aXZlKTsKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
