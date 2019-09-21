Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E0BA264
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Sep 2019 14:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F2289503;
	Sun, 22 Sep 2019 12:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38C216E093
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Sep 2019 20:20:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Sep 2019 13:20:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,532,1559545200"; d="scan'208";a="194993796"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Sep 2019 13:20:31 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 22 Sep 2019 01:40:53 +0530
Message-Id: <1569096654-24433-3-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
References: <1569096654-24433-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v4][PATCH 2/3] drm/i915/color: Extract icl_read_luts()
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIGljbCssIGhhdmUgaHcgcmVhZCBvdXQgdG8gY3JlYXRlIGh3IGJsb2Igb2YgZ2FtbWEKbHV0
IHZhbHVlcy4gaWNsKyBwbGF0Zm9ybXMgc3VwcG9ydHMgbXVsdGkgc2VnbWVudGVkIGdhbW1hCm1v
ZGUgYnkgZGVmYXVsdCwgYWRkIGh3IGx1dCBjcmVhdGlvbiBmb3IgdGhpcyBtb2RlLgoKVGhpcyB3
aWxsIGJlIHVzZWQgdG8gdmFsaWRhdGUgZ2FtbWEgcHJvZ3JhbW1pbmcgdXNpbmcgZHNiCihkaXNw
bGF5IHN0YXRlIGJ1ZmZlcikgd2hpY2ggaXMgYSB0Z2wgc3BlY2lmaWMgZmVhdHVyZS4KCk1ham9y
IGNoYW5nZSBkb25lLXJlbW92YWwgb2YgcmVhZG91dHMgb2YgY29hcnNlIGFuZCBmaW5lIHNlZ21l
bnRzCmJlY2F1c2UgUEFMX1BSRUNfREFUQSByZWdpc3RlciBpc24ndCBnaXZpbmcgcHJvcG9lciB2
YWx1ZXMuClN0YXRlIGNoZWNrZXIgbGltaXRlZCBvbmx5IHRvICJmaW5lIHNlZ21lbnQiCgp2Mjog
LXJlYWRvdXQgY29kZSBmb3IgbXVsdGlzZWdtZW50ZWQgZ2FtbWEgaGFzIHRvIGNvbWUKICAgICB1
cCB3aXRoIHNvbWUgaW50ZXJtZWRpYXRlIGVudHJpZXMgdGhhdCBhcmVuJ3QgcHJlc2VydmVkCiAg
ICAgaW4gaGFyZHdhcmUgKEphbmkgTikKICAgIC1saW5lYXIgaW50ZXJwb2xhdGlvbiAoVmlsbGUp
CiAgICAtbW92ZWQgY29tbW9uIGNvZGUgdG8gY2hlY2sgZ2FtbWFfZW5hYmxlIHRvIHNwZWNpZmlj
IGZ1bmNzLAogICAgIHNpbmNlIGljbCBkb2Vzbid0IHN1cHBvcnQgdGhhdAp2MzogLXVzZSB1MTYg
aW5zdGVhZCBvZiBfX3UxNiBbSmFuaSBOXQogICAgLXVzZWQgc2luZ2xlIGx1dCBbSmFuaSBOXQog
ICAgLWltcHJvdmVkIGFuZCBtb3JlIHJlYWRhYmxlIGZvciBsb29wcyBbSmFuaSBOXQogICAgLXJl
YWQgdmFsdWVzIGRpcmVjdGx5IHRvIGFjdHVhbCBsb2NhdGlvbnMgYW5kIHRoZW4gZmlsbCBnYXBz
IFtKYW5pIE5dCiAgICAtbW92ZWQgY2xlYW5pbmcgdG8gcGF0Y2ggMSBbSmFuaSBOXQogICAgLXJl
bmFtZWQgaWNsX3JlYWRfbHV0X211bHRpX3NlZygpIHRvIGljbF9yZWFkX2x1dF9tdWx0aV9zZWdt
ZW50IHRvCiAgICAgbWFrZSBpdCBzaW1pbGFyIHRvIGljbF9sb2FkX2x1dHMoKQogICAgLXJlbmFt
ZWQgaWNsX2NvbXB1dGVfaW50ZXJwb2xhdGVkX2dhbW1hX2Jsb2IoKSB0bwogICAgIGljbF9jb21w
dXRlX2ludGVycG9sYXRlZF9nYW1tYV9sdXRfdmFsdWVzKCkgbW9yZSBzZW5zaWJsZSwgSSBndWVz
cwp2NDogLXJlbW92ZWQgaW50ZXJwb2xhdGVkIGZ1bmMgZm9yIGNyZWF0aW5nIGdhbW1hIGx1dCB2
YWx1ZXMKICAgIC1yZW1vdmVkIHJlYWRvdXRzIG9mIGZpbmUgYW5kIGNvYXJzZSBzZWdtZW50cywg
ZmFpbHVyZSB0byByZWFkIFBBTF9QUkVDX0RBVEEKICAgICBjb3JyZWN0bHkKClNpZ25lZC1vZmYt
Ynk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTI2ICsrKysrKysrKysrKysrKysr
KysrKysrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
fCAgIDYgKysKIDIgZmlsZXMgY2hhbmdlZCwgMTE3IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29s
b3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwppbmRleCBm
Nzc0OTM4Li4yOTlhZGE1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jb2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuYwpAQCAtMTM3MSw2ICsxMzcxLDkgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2so
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAKIHN0YXRpYyBpbnQgaTl4eF9n
YW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CiB7CisJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCisJCXJldHVybiAwOworCiAJc3dp
dGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJ
VDoKIAkJcmV0dXJuIDg7CkBAIC0xMzg0LDYgKzEzODcsOSBAQCBzdGF0aWMgaW50IGk5eHhfZ2Ft
bWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQog
CiBzdGF0aWMgaW50IGlsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKmNydGNfc3RhdGUpCiB7CisJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCisJ
CXJldHVybiAwOworCiAJaWYgKChjcnRjX3N0YXRlLT5jc2NfbW9kZSAmIENTQ19QT1NJVElPTl9C
RUZPUkVfR0FNTUEpID09IDApCiAJCXJldHVybiAwOwogCkBAIC0xNDAwLDYgKzE0MDYsOSBAQCBz
dGF0aWMgaW50IGlsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpCiAKIHN0YXRpYyBpbnQgY2h2X2dhbW1hX3ByZWNpc2lvbihjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlpZiAoIWNydGNfc3RhdGUt
PmdhbW1hX2VuYWJsZSkKKwkJcmV0dXJuIDA7CisKIAlpZiAoY3J0Y19zdGF0ZS0+Y2dtX21vZGUg
JiBDR01fUElQRV9NT0RFX0dBTU1BKQogCQlyZXR1cm4gMTA7CiAJZWxzZQpAQCAtMTQwOCw2ICsx
NDE3LDkgQEAgc3RhdGljIGludCBjaHZfZ2FtbWFfcHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCiBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNp
b24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CisJaWYgKCFj
cnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCisJCXJldHVybiAwOworCiAJc3dpdGNoIChjcnRjX3N0
YXRlLT5nYW1tYV9tb2RlKSB7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKIAkJcmV0dXJu
IDg7CkBAIC0xNDE5LDIxICsxNDMxLDM5IEBAIHN0YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lv
bihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAl9CiB9CiAKK3N0
YXRpYyBpbnQgaWNsX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQT1NUX0NT
Q19HQU1NQV9FTkFCTEUpID09IDApCisJCXJldHVybiAwOworCisJc3dpdGNoIChjcnRjX3N0YXRl
LT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0spIHsKKwljYXNlIEdBTU1BX01PREVf
TU9ERV84QklUOgorCQlyZXR1cm4gODsKKwljYXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoKKwkJ
cmV0dXJuIDEwOworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRDoK
KwkJcmV0dXJuIDE2OworCWRlZmF1bHQ6CisJCU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1t
YV9tb2RlKTsKKwkJcmV0dXJuIDA7CisJfQorCit9CisKIGludCBpbnRlbF9jb2xvcl9nZXRfZ2Ft
bWFfYml0X3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0
ZS0+YmFzZS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19p
OTE1KGNydGMtPmJhc2UuZGV2KTsKIAotCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxlKQot
CQlyZXR1cm4gMDsKLQogCWlmIChIQVNfR01DSChkZXZfcHJpdikpIHsKIAkJaWYgKElTX0NIRVJS
WVZJRVcoZGV2X3ByaXYpKQogCQkJcmV0dXJuIGNodl9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0
ZSk7CiAJCWVsc2UKIAkJCXJldHVybiBpOXh4X2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsK
IAl9IGVsc2UgewotCQlpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFL
RShkZXZfcHJpdikpCisJCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQorCQkJcmV0dXJu
IGljbF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CisJCWVsc2UgaWYgKElTX0NBTk5PTkxB
S0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQogCQkJcmV0dXJuIGdsa19n
YW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CiAJCWVsc2UgaWYgKElTX0lST05MQUtFKGRldl9w
cml2KSkKIAkJCXJldHVybiBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwpAQCAtMTQ2
NCw2ICsxNDk0LDIwIEBAIHN0YXRpYyBib29sIGludGVsX2NvbG9yX2x1dF9lbnRyeV9lcXVhbChz
dHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwKIAlyZXR1cm4gdHJ1ZTsKIH0KIAorc3RhdGljIGJv
b2wgaW50ZWxfY29sb3JfbHV0X2VudHJ5X211bHRpX2VxdWFsKHN0cnVjdCBkcm1fY29sb3JfbHV0
ICpsdXQxLAorCQkJCQkgICAgICBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MiwKKwkJCQkJICAg
ICAgaW50IGx1dF9zaXplLCB1MzIgZXJyKQoreworCWludCBpOworCisJZm9yIChpID0gMDsgaSA8
IDk7IGkrKykgeworCQlpZiAoIWVycl9jaGVjaygmbHV0MVtpXSwgJmx1dDJbaV0sIGVycikpCisJ
CQlyZXR1cm4gZmFsc2U7CisJfQorCisJcmV0dXJuIHRydWU7Cit9CisKIGJvb2wgaW50ZWxfY29s
b3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCiAJCQkgICBzdHJ1
Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IyLAogCQkJICAgdTMyIGdhbW1hX21vZGUsIHUzMiBi
aXRfcHJlY2lzaW9uKQpAQCAtMTQ4MiwxNiArMTUyNiw4IEBAIGJvb2wgaW50ZWxfY29sb3JfbHV0
X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCiAJbHV0X3NpemUyID0gZHJt
X2NvbG9yX2x1dF9zaXplKGJsb2IyKTsKIAogCS8qIGNoZWNrIHN3IGFuZCBodyBsdXQgc2l6ZSAq
LwotCXN3aXRjaCAoZ2FtbWFfbW9kZSkgewotCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6Ci0J
Y2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Ci0JCWlmIChsdXRfc2l6ZTEgIT0gbHV0X3NpemUy
KQotCQkJcmV0dXJuIGZhbHNlOwotCQlicmVhazsKLQlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0Uo
Z2FtbWFfbW9kZSk7Ci0JCQlyZXR1cm4gZmFsc2U7Ci0JfQorCWlmIChsdXRfc2l6ZTEgIT0gbHV0
X3NpemUyKQorCQlyZXR1cm4gZmFsc2U7CiAKIAlsdXQxID0gYmxvYjEtPmRhdGE7CiAJbHV0MiA9
IGJsb2IyLT5kYXRhOwpAQCAtMTQ5OSwxMyArMTUzNSwxOCBAQCBib29sIGludGVsX2NvbG9yX2x1
dF9lcXVhbChzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IxLAogCWVyciA9IDB4ZmZmZiA+
PiBiaXRfcHJlY2lzaW9uOwogCiAJLyogY2hlY2sgc3cgYW5kIGh3IGx1dCBlbnRyeSB0byBiZSBl
cXVhbCAqLwotCXN3aXRjaCAoZ2FtbWFfbW9kZSkgeworCXN3aXRjaCAoZ2FtbWFfbW9kZSAmIEdB
TU1BX01PREVfTU9ERV9NQVNLKSB7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKIAljYXNl
IEdBTU1BX01PREVfTU9ERV8xMEJJVDoKIAkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZW50cnlfZXF1
YWwobHV0MSwgbHV0MiwKIAkJCQkJCSBsdXRfc2l6ZTIsIGVycikpCiAJCQlyZXR1cm4gZmFsc2U7
CiAJCWJyZWFrOworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRDoK
KwkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZW50cnlfbXVsdGlfZXF1YWwobHV0MSwgbHV0MiwKKwkJ
CQkJCSAgICAgICBsdXRfc2l6ZTIsIGVycikpCisJCQlyZXR1cm4gZmFsc2U7CisJCWJyZWFrOwog
CWRlZmF1bHQ6CiAJCU1JU1NJTkdfQ0FTRShnYW1tYV9tb2RlKTsKIAkJCXJldHVybiBmYWxzZTsK
QEAgLTE3NDUsNiArMTc4Niw2MCBAQCBzdGF0aWMgdm9pZCBnbGtfcmVhZF9sdXRzKHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1
dCA9IGdsa19yZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7
CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKgoraWNsX3JlYWRfbHV0X211
bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7
CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJh
c2UuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShj
cnRjLT5iYXNlLmRldik7CisJaW50IGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNv
bG9yLmdhbW1hX2x1dF9zaXplOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlzdHJ1
Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7CisJc3RydWN0IGRybV9jb2xvcl9sdXQgKmJsb2Jf
ZGF0YTsKKwl1MzIgaSwgdmFsMSwgdmFsMjsKKworCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRl
X2Jsb2IoJmRldl9wcml2LT5kcm0sCisJCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkg
KiBsdXRfc2l6ZSwKKwkJCQkJTlVMTCk7CisJaWYgKElTX0VSUihibG9iKSkKKwkJcmV0dXJuIE5V
TEw7CisKKwlibG9iX2RhdGEgPSBibG9iLT5kYXRhOworCisJSTkxNV9XUklURShQUkVDX1BBTF9N
VUxUSV9TRUdfSU5ERVgocGlwZSksIFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKKworCWZvciAo
aSA9IDA7IGkgPCA5OyBpKyspIHsKKwkJdmFsMSA9IEk5MTVfUkVBRChQUkVDX1BBTF9NVUxUSV9T
RUdfREFUQShwaXBlKSk7CisJCXZhbDIgPSBJOTE1X1JFQUQoUFJFQ19QQUxfTVVMVElfU0VHX0RB
VEEocGlwZSkpOworCisJCWJsb2JfZGF0YVtpXS5yZWQgPSBSRUdfRklFTERfR0VUKFBBTF9QUkVD
X01VTFRJX1NFR19SRURfVURXX01BU0ssIHZhbDIpIDw8IDYgfAorCQkJCSAgIFJFR19GSUVMRF9H
RVQoUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9MRFdfTUFTSywgdmFsMSk7CisJCWJsb2JfZGF0YVtp
XS5ncmVlbiA9IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX0dSRUVOX1VEV19NQVNL
LCB2YWwyKSA8PCA2IHwKKwkJCQkgICAgIFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VH
X0dSRUVOX0xEV19NQVNLLCB2YWwxKTsKKwkJYmxvYl9kYXRhW2ldLmJsdWUgPSBSRUdfRklFTERf
R0VUKFBBTF9QUkVDX01VTFRJX1NFR19CTFVFX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwKKwkJCQkg
ICAgUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfQkxVRV9MRFdfTUFTSywgdmFsMSk7
CisJfQorCisJLyoKKwkgKiBGSVhNRSByZWFkb3V0cyBmcm9tIFBBTF9QUkVDX0RBVEEgcmVnaXN0
ZXIgYXJlbid0IGdpdmluZyBjb3JyZWN0IHZhbHVlcworCSAqIGluIHRoZSBjYXNlIG9mIGZpbmUg
YW5kIGNvYXJzZSBzZWdtZW50cy4gUmVzdHJpY3RpbmcgcmVhZG91dHMgb25seSBmb3IKKwkgKiBz
dXBlciBmaW5lIHNlZ21lbnQgYXMgb2Ygbm93LgorCSAqLworCisJcmV0dXJuIGJsb2I7Cit9CisK
K3N0YXRpYyB2b2lkIGljbF9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCit7CisJaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RF
X01BU0spID09CisJICAgIEdBTU1BX01PREVfTU9ERV84QklUKQorCQljcnRjX3N0YXRlLT5iYXNl
LmdhbW1hX2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKKwllbHNlIGlmICgoY3J0
Y19zdGF0ZS0+Z2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSA9PQorCQkgR0FNTUFf
TU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRCkKKwkJY3J0Y19zdGF0ZS0+YmFzZS5nYW1t
YV9sdXQgPSBpY2xfcmVhZF9sdXRfbXVsdGlfc2VnbWVudChjcnRjX3N0YXRlKTsKKwllbHNlCisJ
CWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfbHV0XzEwKGNydGNfc3RhdGUs
IFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKK30KKwogdm9pZCBpbnRlbF9jb2xvcl9pbml0KHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwpAQCAtMTc4OCw2ICsxODgzLDcgQEAgdm9p
ZCBpbnRlbF9jb2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogCiAJCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDExKSB7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMg
PSBpY2xfbG9hZF9sdXRzOworCQkJZGV2X3ByaXYtPmRpc3BsYXkucmVhZF9sdXRzID0gaWNsX3Jl
YWRfbHV0czsKIAkJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1J
TklMQUtFKGRldl9wcml2KSkgewogCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRzID0gZ2xr
X2xvYWRfbHV0czsKIAkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGdsa19yZWFkX2x1
dHM7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiZjM3ZWNlLi4xZWEyNmM4IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKQEAgLTEwNDAxLDYgKzEwNDAxLDEyIEBAIGVudW0gc2tsX3Bvd2Vy
X2dhdGUgewogCiAjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9BCTB4NEE0MEMKICNk
ZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0IJMHg0QUMwQworI2RlZmluZSAgUEFMX1BS
RUNfTVVMVElfU0VHX1JFRF9MRFdfTUFTSyAgIFJFR19HRU5NQVNLKDI5LCAyNCkKKyNkZWZpbmUg
IFBBTF9QUkVDX01VTFRJX1NFR19SRURfVURXX01BU0sgICBSRUdfR0VOTUFTSygyOSwgMjApCisj
ZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fTERXX01BU0sgUkVHX0dFTk1BU0soMTks
IDE0KQorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX0dSRUVOX1VEV19NQVNLIFJFR19HRU5N
QVNLKDE5LCAxMCkKKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR19CTFVFX0xEV19NQVNLICBS
RUdfR0VOTUFTSyg5LCA0KQorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX0JMVUVfVURXX01B
U0sgIFJFR19HRU5NQVNLKDksIDApCiAKICNkZWZpbmUgUFJFQ19QQUxfTVVMVElfU0VHX0lOREVY
KHBpcGUpCV9NTUlPX1BJUEUocGlwZSwgXAogCQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVY
X0EsIFwKLS0gCjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
