Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD02722314
	for <lists+intel-gfx@lfdr.de>; Sat, 18 May 2019 12:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C6A89274;
	Sat, 18 May 2019 10:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E4389274
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 May 2019 10:12:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 May 2019 03:12:13 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga002.jf.intel.com with ESMTP; 18 May 2019 03:12:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 May 2019 16:09:27 +0530
Message-Id: <1558175967-22068-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558110049-3360-1-git-send-email-uma.shankar@intel.com>
References: <1558110049-3360-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v13 06/12] drm/i915: Write HDR infoframe and send to
 panel
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxlIHdyaXRpbmcgb2YgSERSIG1ldGFkYXRhIGluZm9mcmFtZSB0byBwYW5lbC4KVGhlIGRh
dGEgd2lsbCBiZSBwcm92aWQgYnkgdXNlcnNhcGFjZSBjb21wb3NpdG9ycywgYmFzZWQKb24gYmxl
bmRpbmcgcG9saWNpZXMgYW5kIHBhc3NzZWQgdG8gZHJpdmVyIHRocm91Z2ggYSBibG9iCnByb3Bl
cnR5LgoKdjI6IFJlYmFzZQoKdjM6IEZpeGVkIGEgd2FybmluZyBtZXNzYWdlCgp2NDogQWRkcmVz
c2VkIFNoYXNoYW5rJ3MgcmV2aWV3IGNvbW1lbnRzCgp2NTogUmViYXNlLiBBZGRlZCBpbmZvZnJh
bWUgY2FsY3VsYXRpb24gaW4gY29tcHV0ZSBjb25maWcuCgp2NjogQWRkcmVzc2VkIFNoYXNoYW5r
J3MgcmV2aWV3IGNvbW1lbnQuIEFkZGVkIEhEUiBtZXRhZGF0YQpzdXBwb3J0IGZyb20gR0VOMTAg
b253YXJkcyBhcyBwZXIgU2hhc2hhbmsncyByZWNvbW1lbmRhdGlvbi4KCnY3OiBBZGRyZXNzZWQg
U2hhc2hhbmsncyByZXZpZXcgY29tbWVudHMKCnY4OiBBZGRlZCBTaGFzaGFuaydzIFJCLgoKdjk6
IEFkZHJlc3NlZCBWaWxsZSdzIHJldmlldyBjb21tZW50cy4KCnYxMDogUmVtb3ZlZCBhIHJlZHVu
ZGFudCBjaGVjayBhcyBjb3JlIGFscmVhZHkgaGFuZGxlcyBpdCwgYXMgcGVyClZpbGxlJ3MgY29t
bWVudC4KCnYxMTogQWRkZWQgdGhlIG1ldGFkYXRhIGF2YWlsYWJsZSBjaGVjayB0byBhdm9pZCBm
YWlsdXJlIGluCmNvbXB1dGVfY29uZmlnLgoKU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVt
YS5zaGFua2FyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hh
bmsuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYu
aCAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMgfCA0MyArKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDQgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKaW5kZXggNTI1OGFiYi4uNDBlMmM1
MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKQEAgLTkxMCw2ICs5MTAsNyBAQCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSB7CiAJCXVuaW9uIGhkbWlfaW5mb2ZyYW1lIGF2aTsKIAkJdW5pb24g
aGRtaV9pbmZvZnJhbWUgc3BkOwogCQl1bmlvbiBoZG1pX2luZm9mcmFtZSBoZG1pOworCQl1bmlv
biBoZG1pX2luZm9mcmFtZSBkcm07CiAJfSBpbmZvZnJhbWVzOwogCiAJLyogSERNSSBzY3JhbWJs
aW5nIHN0YXR1cyAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRt
aS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaGRtaS5jCmluZGV4IDgxZDcyZjYuLjg2
YTU0YTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKQEAgLTU3Myw2ICs1NzMsNyBAQCBz
dGF0aWMgdTMyIGhzd19pbmZvZnJhbWVzX2VuYWJsZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCiAJSERNSV9JTkZPRlJBTUVfVFlQRV9BVkksCiAJSERNSV9JTkZPRlJBTUVfVFlQRV9T
UEQsCiAJSERNSV9JTkZPRlJBTUVfVFlQRV9WRU5ET1IsCisJSERNSV9JTkZPRlJBTUVfVFlQRV9E
Uk0sCiB9OwogCiB1MzIgaW50ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKHVuc2lnbmVkIGludCB0
eXBlKQpAQCAtNzk1LDYgKzc5Niw0MCBAQCB2b2lkIGludGVsX3JlYWRfaW5mb2ZyYW1lKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCXJldHVybiB0cnVlOwogfQogCitzdGF0aWMgYm9v
bAoraW50ZWxfaGRtaV9jb21wdXRlX2RybV9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCisJCQkJIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAorCQkJ
CSBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZSkKK3sKKwlzdHJ1Y3QgaGRt
aV9kcm1faW5mb2ZyYW1lICpmcmFtZSA9ICZjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmRybS5kcm07
CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5i
YXNlLmRldik7CisJaW50IHJldDsKKworCWlmICghKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAg
fHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpKQorCQlyZXR1cm4gdHJ1ZTsKKworCWlmICghY3J0
Y19zdGF0ZS0+aGFzX2luZm9mcmFtZSkKKwkJcmV0dXJuIHRydWU7CisKKwlpZiAoIWNvbm5fc3Rh
dGUtPmhkcl9vdXRwdXRfbWV0YWRhdGEpCisJCXJldHVybiB0cnVlOworCisJY3J0Y19zdGF0ZS0+
aW5mb2ZyYW1lcy5lbmFibGUgfD0KKwkJaW50ZWxfaGRtaV9pbmZvZnJhbWVfZW5hYmxlKEhETUlf
SU5GT0ZSQU1FX1RZUEVfRFJNKTsKKworCXJldCA9IGRybV9oZG1pX2luZm9mcmFtZV9zZXRfaGRy
X21ldGFkYXRhKGZyYW1lLCBjb25uX3N0YXRlKTsKKwlpZiAocmV0IDwgMCkgeworCQlEUk1fREVC
VUdfS01TKCJjb3VsZG4ndCBzZXQgSERSIG1ldGFkYXRhIGluIGluZm9mcmFtZVxuIik7CisJCXJl
dHVybiBmYWxzZTsKKwl9CisKKwlyZXQgPSBoZG1pX2RybV9pbmZvZnJhbWVfY2hlY2soZnJhbWUp
OworCWlmIChXQVJOX09OKHJldCkpCisJCXJldHVybiBmYWxzZTsKKworCXJldHVybiB0cnVlOwor
fQorCiBzdGF0aWMgdm9pZCBnNHhfc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCiAJCQkgICAgICAgYm9vbCBlbmFibGUsCiAJCQkgICAgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCkBAIC0xMTgwLDYgKzEyMTUsOSBAQCBzdGF0
aWMgdm9pZCBoc3dfc2V0X2luZm9mcmFtZXMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiAJaW50ZWxfd3JpdGVfaW5mb2ZyYW1lKGVuY29kZXIsIGNydGNfc3RhdGUsCiAJCQkgICAgICBI
RE1JX0lORk9GUkFNRV9UWVBFX1ZFTkRPUiwKIAkJCSAgICAgICZjcnRjX3N0YXRlLT5pbmZvZnJh
bWVzLmhkbWkpOworCWludGVsX3dyaXRlX2luZm9mcmFtZShlbmNvZGVyLCBjcnRjX3N0YXRlLAor
CQkJICAgICAgSERNSV9JTkZPRlJBTUVfVFlQRV9EUk0sCisJCQkgICAgICAmY3J0Y19zdGF0ZS0+
aW5mb2ZyYW1lcy5kcm0pOwogfQogCiB2b2lkIGludGVsX2RwX2R1YWxfbW9kZV9zZXRfdG1kc19v
dXRwdXQoc3RydWN0IGludGVsX2hkbWkgKmhkbWksIGJvb2wgZW5hYmxlKQpAQCAtMjM4Niw2ICsy
NDI0LDExIEBAIGludCBpbnRlbF9oZG1pX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAogCQlyZXR1cm4gLUVJTlZBTDsKIAl9CiAKKwlpZiAoIWludGVsX2hkbWlf
Y29tcHV0ZV9kcm1faW5mb2ZyYW1lKGVuY29kZXIsIHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKSkg
eworCQlEUk1fREVCVUdfS01TKCJiYWQgRFJNIGluZm9mcmFtZVxuIik7CisJCXJldHVybiAtRUlO
VkFMOworCX0KKwogCXJldHVybiAwOwogfQogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
