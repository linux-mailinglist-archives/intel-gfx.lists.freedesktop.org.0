Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8EBD8D2E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 12:03:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E62C6E90F;
	Wed, 16 Oct 2019 10:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23326E90F
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 10:03:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 03:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="189633925"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga008.jf.intel.com with ESMTP; 16 Oct 2019 03:03:37 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:02:45 +0530
Message-Id: <20191016103249.32121-3-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191016103249.32121-1-uma.shankar@intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v1 2/6] drm/i915/display: Enable HDR on gen9 devices
 with MCA Lspcon
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

R2VuOSBoYXJkd2FyZSBzdXBwb3J0cyBIRE1JMi4wIHRocm91Z2ggTFNQQ09OIGNoaXBzLgpFeHRl
bmRpbmcgSERSIHN1cHBvcnQgZm9yIE1DQSBMU1BDT04gYmFzZWQgR0VOOSBkZXZpY2VzLgoKU09D
IHdpbGwgZHJpdmUgTFNQQ09OIGFzIERQIGFuZCBzZW5kIEhEUiBtZXRhZGF0YSBhcyBzdGFuZGFy
ZApEUCBTRFAgcGFja2V0cy4gTFNQQ09OIHdpbGwgYmUgc2V0IHRvIG9wZXJhdGUgaW4gUENPTiBt
b2RlLAp3aWxsIHJlY2VpdmUgdGhlIG1ldGFkYXRhIGFuZCBjcmVhdGUgRHluYW1pYyBSYW5nZSBh
bmQKTWFzdGVyaW5nIEluZm9mcmFtZSAoRFJNIHBhY2tldHMpIGFuZCBzZW5kIGl0IHRvIEhEUiBj
YXBhYmxlCkhETUkgc2luayBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyAgIHwgMzMgKysrKysrKysrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyB8IDM2ICsrKysrKysrKysrKysrLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaCB8ICA0ICsrKwogMyBmaWxl
cyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCmluZGV4IDkyZDFjYmJiZWUyYi4uNDYwZTEw
ZmIxNzgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hk
bWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAt
NTc2LDYgKzU3NiwzOSBAQCBzdGF0aWMgdTMyIGhzd19pbmZvZnJhbWVzX2VuYWJsZWQoc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAJcmV0dXJuIHZhbCAmIG1hc2s7CiB9CiAKK3ZvaWQg
bHNwY29uX2RybV93cml0ZV9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CisJCQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQkJdW5z
aWduZWQgaW50IHR5cGUsCisJCQkJY29uc3Qgdm9pZCAqZnJhbWUsIHNzaXplX3QgbGVuKQorewor
CWNvbnN0IHUzMiAqZGF0YSA9IGZyYW1lOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOworCWVudW0gdHJhbnNjb2RlciBjcHVf
dHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOworCWk5MTVfcmVnX3QgY3Rs
X3JlZyA9IEhTV19UVklERU9fRElQX0NUTChjcHVfdHJhbnNjb2Rlcik7CisJaW50IGRhdGFfc2l6
ZTsKKwlpbnQgaTsKKwl1MzIgdmFsID0gSTkxNV9SRUFEKGN0bF9yZWcpOworCisJZGF0YV9zaXpl
ID0gaHN3X2RpcF9kYXRhX3NpemUoZGV2X3ByaXYsIHR5cGUpOworCisJdmFsICY9IH5oc3dfaW5m
b2ZyYW1lX2VuYWJsZSh0eXBlKTsKKwlJOTE1X1dSSVRFKGN0bF9yZWcsIHZhbCk7CisKKwlmb3Ig
KGkgPSAwOyBpIDwgbGVuOyBpICs9IDQpIHsKKwkJSTkxNV9XUklURShoc3dfZGlwX2RhdGFfcmVn
KGRldl9wcml2LCBjcHVfdHJhbnNjb2RlciwKKwkJCQkJICAgIHR5cGUsIGkgPj4gMiksICpkYXRh
KTsKKwkJZGF0YSsrOworCX0KKwkvKiBXcml0ZSBldmVyeSBwb3NzaWJsZSBkYXRhIGJ5dGUgdG8g
Zm9yY2UgY29ycmVjdCBFQ0MgY2FsY3VsYXRpb24uICovCisJZm9yICg7IGkgPCBkYXRhX3NpemU7
IGkgKz0gNCkKKwkJSTkxNV9XUklURShoc3dfZGlwX2RhdGFfcmVnKGRldl9wcml2LCBjcHVfdHJh
bnNjb2RlciwKKwkJCQkJICAgIHR5cGUsIGkgPj4gMiksIDApOworCisJdmFsIHw9IGhzd19pbmZv
ZnJhbWVfZW5hYmxlKHR5cGUpOworCUk5MTVfV1JJVEUoY3RsX3JlZywgdmFsKTsKKwlQT1NUSU5H
X1JFQUQoY3RsX3JlZyk7Cit9CisKIHN0YXRpYyBjb25zdCB1OCBpbmZvZnJhbWVfdHlwZV90b19p
ZHhbXSA9IHsKIAlIRE1JX1BBQ0tFVF9UWVBFX0dFTkVSQUxfQ09OVFJPTCwKIAlIRE1JX1BBQ0tF
VF9UWVBFX0dBTVVUX01FVEFEQVRBLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9sc3Bjb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfbHNwY29uLmMKaW5kZXggYTFkMDEyN2I3ZjU3Li41MWFkNWYwMmU3MDAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwpAQCAtNDYwLDI3ICs0NjAsNDEg
QEAgdm9pZCBsc3Bjb25fd3JpdGVfaW5mb2ZyYW1lKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCQkJICAgIHVuc2lnbmVkIGludCB0eXBlLAogCQkJICAgIGNvbnN0IHZvaWQgKmZyYW1l
LCBzc2l6ZV90IGxlbikKIHsKLQlib29sIHJldDsKKwlib29sIHJldCA9IHRydWU7CiAJc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcCgmZW5jb2Rlci0+YmFzZSk7CiAJ
c3RydWN0IGludGVsX2xzcGNvbiAqbHNwY29uID0gZW5jX3RvX2ludGVsX2xzcGNvbigmZW5jb2Rl
ci0+YmFzZSk7CiAKLQkvKiBMU1BDT04gb25seSBuZWVkcyBBVkkgSUYgKi8KLQlpZiAodHlwZSAh
PSBIRE1JX0lORk9GUkFNRV9UWVBFX0FWSSkKKwlpZiAoISh0eXBlID09IEhETUlfSU5GT0ZSQU1F
X1RZUEVfQVZJIHx8CisJICAgICAgdHlwZSA9PSBIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFE
QVRBKSkKIAkJcmV0dXJuOwogCi0JaWYgKGxzcGNvbi0+dmVuZG9yID09IExTUENPTl9WRU5ET1Jf
TUNBKQotCQlyZXQgPSBfbHNwY29uX3dyaXRlX2F2aV9pbmZvZnJhbWVfbWNhKCZpbnRlbF9kcC0+
YXV4LAotCQkJCQkJICAgICAgZnJhbWUsIGxlbik7Ci0JZWxzZQotCQlyZXQgPSBfbHNwY29uX3dy
aXRlX2F2aV9pbmZvZnJhbWVfcGFyYWRlKCZpbnRlbF9kcC0+YXV4LAotCQkJCQkJCSBmcmFtZSwg
bGVuKTsKKwkvKgorCSAqIFN1cHBvcnRpbmcgSERSIG9uIE1DQSBMU1BDT04KKwkgKiBUb2RvOiBB
ZGQgc3VwcG9ydCBmb3IgUGFyYWRlIGxhdGVyCisJICovCisJaWYgKHR5cGUgPT0gSERNSV9QQUNL
RVRfVFlQRV9HQU1VVF9NRVRBREFUQSAmJgorCSAgICBsc3Bjb24tPnZlbmRvciAhPSBMU1BDT05f
VkVORE9SX01DQSkKKwkJcmV0dXJuOworCisJaWYgKGxzcGNvbi0+dmVuZG9yID09IExTUENPTl9W
RU5ET1JfTUNBKSB7CisJCWlmICh0eXBlID09IEhETUlfSU5GT0ZSQU1FX1RZUEVfQVZJKQorCQkJ
cmV0ID0gX2xzcGNvbl93cml0ZV9hdmlfaW5mb2ZyYW1lX21jYSgmaW50ZWxfZHAtPmF1eCwKKwkJ
CQkJCQkgICAgICBmcmFtZSwgbGVuKTsKKwkJZWxzZSBpZiAodHlwZSA9PSBIRE1JX1BBQ0tFVF9U
WVBFX0dBTVVUX01FVEFEQVRBKQorCQkJbHNwY29uX2RybV93cml0ZV9pbmZvZnJhbWUoZW5jb2Rl
ciwgY3J0Y19zdGF0ZSwKKwkJCQkJCSAgIEhETUlfUEFDS0VUX1RZUEVfR0FNVVRfTUVUQURBVEEs
CisJCQkJCQkgICBmcmFtZSwgVklERU9fRElQX0RBVEFfU0laRSk7CisJfSBlbHNlIHsKKwkJcmV0
ID0gX2xzcGNvbl93cml0ZV9hdmlfaW5mb2ZyYW1lX3BhcmFkZSgmaW50ZWxfZHAtPmF1eCwgZnJh
bWUsCisJCQkJCQkJIGxlbik7CisJfQogCiAJaWYgKCFyZXQpIHsKLQkJRFJNX0VSUk9SKCJGYWls
ZWQgdG8gd3JpdGUgQVZJIGluZm9mcmFtZXNcbiIpOworCQlEUk1fRVJST1IoIkZhaWxlZCB0byB3
cml0ZSBpbmZvZnJhbWVzXG4iKTsKIAkJcmV0dXJuOwogCX0KIAotCURSTV9ERUJVR19EUklWRVIo
IkFWSSBpbmZvZnJhbWVzIHVwZGF0ZWQgc3VjY2Vzc2Z1bGx5XG4iKTsKKwlEUk1fREVCVUdfRFJJ
VkVSKCJJbmZvZnJhbWVzIHVwZGF0ZWQgc3VjY2Vzc2Z1bGx5XG4iKTsKIH0KIAogdm9pZCBsc3Bj
b25fcmVhZF9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uaAppbmRleCAzN2NmZGRmOGE5YzUu
LjY1ODc4OTA0ZjY3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9sc3Bjb24uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xz
cGNvbi5oCkBAIC0zNSw0ICszNSw4IEBAIHUzMiBsc3Bjb25faW5mb2ZyYW1lc19lbmFibGVkKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogdm9pZCBsc3Bjb25feWNiY3I0MjBfY29uZmln
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCQkgICAgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpOwogCit2b2lkIGxzcGNvbl9kcm1fd3JpdGVfaW5mb2ZyYW1l
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCXVuc2lnbmVkIGludCB0eXBlLAorCQkJCWNvbnN0
IHZvaWQgKmZyYW1lLCBzc2l6ZV90IGxlbik7CiAjZW5kaWYgLyogX19JTlRFTF9MU1BDT05fSF9f
ICovCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
