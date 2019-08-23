Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B8679AACD
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F936EC33;
	Fri, 23 Aug 2019 08:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1B06EC32
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702056"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:43 -0700
Message-Id: <20190823082055.5992-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/23] drm: Add
 for_each_oldnew_intel_crtc_in_state_reverse()
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpTYW1l
IGFzIGZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKCkgYnV0IGl0ZXJhdGVzIGlu
IHJldmVyc2UKb3JkZXIuCgp2MjogRml4IGFkZGl0aW9uYWwgYmxhbmsgbGluZQoKQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBN
YXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmggfCA5ICsrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgK
aW5kZXggZmQzMDQzZTc3YjUwLi5iNjNmYjdhNDU5OWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC00MTksNiArNDE5LDE1IEBAIGVudW0gcGh5
X2ZpYSB7CiAJCQkgICAgICgoY29ubmVjdG9yKSA9IHRvX2ludGVsX2Nvbm5lY3RvcigoX19zdGF0
ZSktPmJhc2UuY29ubmVjdG9yc1tfX2ldLnB0ciksIFwKIAkJCSAgICAgKG5ld19jb25uZWN0b3Jf
c3RhdGUpID0gdG9faW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUoKF9fc3RhdGUpLT5iYXNl
LmNvbm5lY3RvcnNbX19pXS5uZXdfc3RhdGUpLCAxKSkKIAorI2RlZmluZSBmb3JfZWFjaF9vbGRu
ZXdfaW50ZWxfY3J0Y19pbl9zdGF0ZV9yZXZlcnNlKF9fc3RhdGUsIGNydGMsIG9sZF9jcnRjX3N0
YXRlLCBuZXdfY3J0Y19zdGF0ZSwgX19pKSBcCisJZm9yICgoX19pKSA9IChfX3N0YXRlKS0+YmFz
ZS5kZXYtPm1vZGVfY29uZmlnLm51bV9jcnRjIC0gMTsgXAorCSAgICAgKF9faSkgPj0gMCAgJiYg
XAorCSAgICAgKChjcnRjKSA9IHRvX2ludGVsX2NydGMoKF9fc3RhdGUpLT5iYXNlLmNydGNzW19f
aV0ucHRyKSwgXAorCSAgICAgIChvbGRfY3J0Y19zdGF0ZSkgPSB0b19pbnRlbF9jcnRjX3N0YXRl
KChfX3N0YXRlKS0+YmFzZS5jcnRjc1tfX2ldLm9sZF9zdGF0ZSksIFwKKwkgICAgICAobmV3X2Ny
dGNfc3RhdGUpID0gdG9faW50ZWxfY3J0Y19zdGF0ZSgoX19zdGF0ZSktPmJhc2UuY3J0Y3NbX19p
XS5uZXdfc3RhdGUpLCAxKTsgXAorCSAgICAgKF9faSktLSkgXAorCQlmb3JfZWFjaF9pZihjcnRj
KQorCiB2b2lkIGludGVsX2xpbmtfY29tcHV0ZV9tX24odTE2IGJwcCwgaW50IG5sYW5lcywKIAkJ
CSAgICBpbnQgcGl4ZWxfY2xvY2ssIGludCBsaW5rX2Nsb2NrLAogCQkJICAgIHN0cnVjdCBpbnRl
bF9saW5rX21fbiAqbV9uLAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
