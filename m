Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C04C4D8F3F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 13:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF9D26E937;
	Wed, 16 Oct 2019 11:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 332D06E937
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 11:19:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 04:19:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="397134843"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga006.fm.intel.com with ESMTP; 16 Oct 2019 04:19:38 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Oct 2019 16:40:53 +0530
Message-Id: <20191016111054.19666-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016111054.19666-1-swati2.sharma@intel.com>
References: <20191016111054.19666-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] [v6] drm/i915/color: Extract icl_read_luts()
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch
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
ZmFpbHVyZSB0byByZWFkIFBBTF9QUkVDX0RBVEEKICAgICBjb3JyZWN0bHkKdjU6IC1hZGRlZCBn
YW1tYV9lbmFibGUgY2hlY2sgaW5zaWRlIHJlYWRfbHV0cygpCnY2OiAtcmVuYW1lZCBpbnRlbF9j
b2xvcl9sdXRfZW50cnlfZXF1YWwoKSB0byBpbnRlbF9jb2xvcl9sdXRfZW50cmllc19lcXVhbCgp
IFtWaWxsZV0KICAgIC1jaGFuZ2VkIGlmLWVsc2UgdG8gc3dpdGNoIFtWaWxsZV0KICAgIC1yZW1v
dmVkIGludGVsX2NvbG9yX2x1dF9lbnRyeV9tdWx0aV9lcXVhbCgpIFtWaWxsZV0KClNpZ25lZC1v
ZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgMTE0ICsrKysrKysrKysrKysr
KysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgICA2
ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKaW5kZXggZmE0NGVi
NzNkMDg4Li45ZjQ2ZDUxMGFjZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NvbG9yLmMKQEAgLTgxMiw3ICs4MTIsNyBAQCBpY2xfbG9hZF9nY21heChjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAlzdHJ1Y3QgaW50ZWxfZHNiICpkc2Ig
PSBpbnRlbF9kc2JfZ2V0KGNydGMpOwogCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAot
CS8qIEZpeG1lOiBMVVQgZW50cmllcyBhcmUgMTYgYml0IG9ubHksIHNvIHdlIGNhbiBwcm9nIDB4
RkZGRiBtYXggKi8KKwkvKiBGSVhNRSBMVVQgZW50cmllcyBhcmUgMTYgYml0IG9ubHksIHNvIHdl
IGNhbiBwcm9nIDB4RkZGRiBtYXggKi8KIAlpbnRlbF9kc2JfcmVnX3dyaXRlKGRzYiwgUFJFQ19Q
QUxfR0NfTUFYKHBpcGUsIDApLCBjb2xvci0+cmVkKTsKIAlpbnRlbF9kc2JfcmVnX3dyaXRlKGRz
YiwgUFJFQ19QQUxfR0NfTUFYKHBpcGUsIDEpLCBjb2xvci0+Z3JlZW4pOwogCWludGVsX2RzYl9y
ZWdfd3JpdGUoZHNiLCBQUkVDX1BBTF9HQ19NQVgocGlwZSwgMiksIGNvbG9yLT5ibHVlKTsKQEAg
LTE0NzcsNiArMTQ3NywyNSBAQCBzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiAJfQogfQogCitzdGF0aWMgaW50
IGljbF9nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCit7CisJaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgUE9TVF9DU0NfR0FNTUFf
RU5BQkxFKSA9PSAwKQorCQlyZXR1cm4gMDsKKworCXN3aXRjaCAoY3J0Y19zdGF0ZS0+Z2FtbWFf
bW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSB7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJ
VDoKKwkJcmV0dXJuIDg7CisJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6CisJCXJldHVybiAx
MDsKKwljYXNlIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQ6CisJCXJldHVy
biAxNjsKKwlkZWZhdWx0OgorCQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSk7
CisJCXJldHVybiAwOworCX0KKworfQorCiBpbnQgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9w
cmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2Uu
Y3J0Yyk7CkBAIC0xNDg4LDcgKzE1MDcsOSBAQCBpbnQgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2Jp
dF9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdAogCQll
bHNlCiAJCQlyZXR1cm4gaTl4eF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CiAJfSBlbHNl
IHsKLQkJaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3By
aXYpKQorCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKKwkJCXJldHVybiBpY2xfZ2Ft
bWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOworCQllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9w
cml2KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKIAkJCXJldHVybiBnbGtfZ2FtbWFfcHJl
Y2lzaW9uKGNydGNfc3RhdGUpOwogCQllbHNlIGlmIChJU19JUk9OTEFLRShkZXZfcHJpdikpCiAJ
CQlyZXR1cm4gaWxrX2dhbW1hX3ByZWNpc2lvbihjcnRjX3N0YXRlKTsKQEAgLTE1MDUsOSArMTUy
Niw5IEBAIHN0YXRpYyBib29sIGVycl9jaGVjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwK
IAkJKChhYnMoKGxvbmcpbHV0Mi0+Z3JlZW4gLSBsdXQxLT5ncmVlbikpIDw9IGVycik7CiB9CiAK
LXN0YXRpYyBib29sIGludGVsX2NvbG9yX2x1dF9lbnRyeV9lcXVhbChzdHJ1Y3QgZHJtX2NvbG9y
X2x1dCAqbHV0MSwKLQkJCQkJc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dDIsCi0JCQkJCWludCBs
dXRfc2l6ZSwgdTMyIGVycikKK3N0YXRpYyBib29sIGludGVsX2NvbG9yX2x1dF9lbnRyaWVzX2Vx
dWFsKHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQxLAorCQkJCQkgIHN0cnVjdCBkcm1fY29sb3Jf
bHV0ICpsdXQyLAorCQkJCQkgIGludCBsdXRfc2l6ZSwgdTMyIGVycikKIHsKIAlpbnQgaTsKIApA
QCAtMTUzNywxNiArMTU1OCw4IEBAIGJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBk
cm1fcHJvcGVydHlfYmxvYiAqYmxvYjEsCiAJbHV0X3NpemUyID0gZHJtX2NvbG9yX2x1dF9zaXpl
KGJsb2IyKTsKIAogCS8qIGNoZWNrIHN3IGFuZCBodyBsdXQgc2l6ZSAqLwotCXN3aXRjaCAoZ2Ft
bWFfbW9kZSkgewotCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6Ci0JY2FzZSBHQU1NQV9NT0RF
X01PREVfMTBCSVQ6Ci0JCWlmIChsdXRfc2l6ZTEgIT0gbHV0X3NpemUyKQotCQkJcmV0dXJuIGZh
bHNlOwotCQlicmVhazsKLQlkZWZhdWx0OgotCQlNSVNTSU5HX0NBU0UoZ2FtbWFfbW9kZSk7Ci0J
CQlyZXR1cm4gZmFsc2U7Ci0JfQorCWlmIChsdXRfc2l6ZTEgIT0gbHV0X3NpemUyKQorCQlyZXR1
cm4gZmFsc2U7CiAKIAlsdXQxID0gYmxvYjEtPmRhdGE7CiAJbHV0MiA9IGJsb2IyLT5kYXRhOwpA
QCAtMTU1NCwxMSArMTU2NywxNiBAQCBib29sIGludGVsX2NvbG9yX2x1dF9lcXVhbChzdHJ1Y3Qg
ZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IxLAogCWVyciA9IDB4ZmZmZiA+PiBiaXRfcHJlY2lzaW9u
OwogCiAJLyogY2hlY2sgc3cgYW5kIGh3IGx1dCBlbnRyeSB0byBiZSBlcXVhbCAqLwotCXN3aXRj
aCAoZ2FtbWFfbW9kZSkgeworCXN3aXRjaCAoZ2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9N
QVNLKSB7CiAJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKIAljYXNlIEdBTU1BX01PREVfTU9E
RV8xMEJJVDoKLQkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZW50cnlfZXF1YWwobHV0MSwgbHV0MiwK
LQkJCQkJCSBsdXRfc2l6ZTIsIGVycikpCisJCWlmICghaW50ZWxfY29sb3JfbHV0X2VudHJpZXNf
ZXF1YWwobHV0MSwgbHV0MiwKKwkJCQkJICAgICAgICAgICBsdXRfc2l6ZTIsIGVycikpCisJCQly
ZXR1cm4gZmFsc2U7CisJCWJyZWFrOworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJ
X1NFR01FTlRFRDoKKwkJaWYgKCFpbnRlbF9jb2xvcl9sdXRfZW50cmllc19lcXVhbChsdXQxLCBs
dXQyLAorCQkJCQkJICAgOSwgZXJyKSkKIAkJCXJldHVybiBmYWxzZTsKIAkJYnJlYWs7CiAJZGVm
YXVsdDoKQEAgLTE4MTUsNiArMTgzMyw2NSBAQCBzdGF0aWMgdm9pZCBnbGtfcmVhZF9sdXRzKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQljcnRjX3N0YXRlLT5iYXNlLmdh
bW1hX2x1dCA9IGdsa19yZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxV
RSgwKSk7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKgoraWNsX3JlYWRf
bHV0X211bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3Rh
dGUtPmJhc2UuY3J0Yyk7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjLT5iYXNlLmRldik7CisJaW50IGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJp
diktPmNvbG9yLmdhbW1hX2x1dF9zaXplOworCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsK
KwlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2I7CisJc3RydWN0IGRybV9jb2xvcl9sdXQg
KmJsb2JfZGF0YTsKKwl1MzIgaSwgdmFsMSwgdmFsMjsKKworCWJsb2IgPSBkcm1fcHJvcGVydHlf
Y3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sCisJCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9y
X2x1dCkgKiBsdXRfc2l6ZSwKKwkJCQkJTlVMTCk7CisJaWYgKElTX0VSUihibG9iKSkKKwkJcmV0
dXJuIE5VTEw7CisKKwlibG9iX2RhdGEgPSBibG9iLT5kYXRhOworCisJSTkxNV9XUklURShQUkVD
X1BBTF9NVUxUSV9TRUdfSU5ERVgocGlwZSksIFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKKwor
CWZvciAoaSA9IDA7IGkgPCA5OyBpKyspIHsKKwkJdmFsMSA9IEk5MTVfUkVBRChQUkVDX1BBTF9N
VUxUSV9TRUdfREFUQShwaXBlKSk7CisJCXZhbDIgPSBJOTE1X1JFQUQoUFJFQ19QQUxfTVVMVElf
U0VHX0RBVEEocGlwZSkpOworCisJCWJsb2JfZGF0YVtpXS5yZWQgPSBSRUdfRklFTERfR0VUKFBB
TF9QUkVDX01VTFRJX1NFR19SRURfVURXX01BU0ssIHZhbDIpIDw8IDYgfAorCQkJCSAgIFJFR19G
SUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9MRFdfTUFTSywgdmFsMSk7CisJCWJsb2Jf
ZGF0YVtpXS5ncmVlbiA9IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX0dSRUVOX1VE
V19NQVNLLCB2YWwyKSA8PCA2IHwKKwkJCQkgICAgIFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVM
VElfU0VHX0dSRUVOX0xEV19NQVNLLCB2YWwxKTsKKwkJYmxvYl9kYXRhW2ldLmJsdWUgPSBSRUdf
RklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19CTFVFX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwK
KwkJCQkgICAgUkVHX0ZJRUxEX0dFVChQQUxfUFJFQ19NVUxUSV9TRUdfQkxVRV9MRFdfTUFTSywg
dmFsMSk7CisJfQorCisJLyoKKwkgKiBGSVhNRSByZWFkb3V0cyBmcm9tIFBBTF9QUkVDX0RBVEEg
cmVnaXN0ZXIgYXJlbid0IGdpdmluZyBjb3JyZWN0IHZhbHVlcworCSAqIGluIHRoZSBjYXNlIG9m
IGZpbmUgYW5kIGNvYXJzZSBzZWdtZW50cy4gUmVzdHJpY3RpbmcgcmVhZG91dHMgb25seSBmb3IK
KwkgKiBzdXBlciBmaW5lIHNlZ21lbnQgYXMgb2Ygbm93LgorCSAqLworCisJcmV0dXJuIGJsb2I7
Cit9CisKK3N0YXRpYyB2b2lkIGljbF9yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3RhdGUpCit7CisJaWYgKChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgUE9TVF9DU0Nf
R0FNTUFfRU5BQkxFKSA9PSAwKQorCQlyZXR1cm47CisKKwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdh
bW1hX21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFTSykgeworCWNhc2UgR0FNTUFfTU9ERV9NT0RF
XzhCSVQ6CisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNy
dGNfc3RhdGUpOworCQlicmVhazsKKwljYXNlIEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9T
RUdNRU5URUQ6CisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaWNsX3JlYWRfbHV0X211
bHRpX3NlZ21lbnQoY3J0Y19zdGF0ZSk7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCWNydGNfc3Rh
dGUtPmJhc2UuZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfbHV0XzEwKGNydGNfc3RhdGUsIFBBTF9QUkVD
X0lOREVYX1ZBTFVFKDApKTsKKwl9Cit9CisKIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTE4NTgsNiArMTkzNSw3IEBAIHZvaWQgaW50
ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAogCQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkgewogCQkJZGV2X3ByaXYtPmRpc3BsYXkubG9hZF9sdXRzID0gaWNs
X2xvYWRfbHV0czsKKwkJCWRldl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGljbF9yZWFkX2x1
dHM7CiAJCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgfHwgSVNfR0VNSU5JTEFL
RShkZXZfcHJpdikpIHsKIAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGdsa19sb2Fk
X2x1dHM7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBnbGtfcmVhZF9sdXRzOwpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggMWRjMDY3ZmM1N2FiLi4wNmI2Mzk4YjdkNjIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTA1ODQsNiArMTA1ODQsMTIgQEAgZW51bSBza2xf
cG93ZXJfZ2F0ZSB7CiAKICNkZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0EJMHg0QTQw
QwogI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQgkweDRBQzBDCisjZGVmaW5lICBQ
QUxfUFJFQ19NVUxUSV9TRUdfUkVEX0xEV19NQVNLICAgUkVHX0dFTk1BU0soMjksIDI0KQorI2Rl
ZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9VRFdfTUFTSyAgIFJFR19HRU5NQVNLKDI5LCAy
MCkKKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR19HUkVFTl9MRFdfTUFTSyBSRUdfR0VOTUFT
SygxOSwgMTQpCisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfR1JFRU5fVURXX01BU0sgUkVH
X0dFTk1BU0soMTksIDEwKQorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX0JMVUVfTERXX01B
U0sgIFJFR19HRU5NQVNLKDksIDQpCisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfQkxVRV9V
RFdfTUFTSyAgUkVHX0dFTk1BU0soOSwgMCkKIAogI2RlZmluZSBQUkVDX1BBTF9NVUxUSV9TRUdf
SU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCiAJCQkJCV9QQUxfUFJFQ19NVUxUSV9TRUdf
SU5ERVhfQSwgXAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
