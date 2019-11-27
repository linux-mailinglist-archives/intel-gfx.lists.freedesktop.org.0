Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AAD10B148
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 15:28:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B123B89D8A;
	Wed, 27 Nov 2019 14:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2069089D52
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 14:28:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 06:27:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="206789015"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga008.fm.intel.com with ESMTP; 27 Nov 2019 06:27:55 -0800
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 19:45:22 +0530
Message-Id: <20191127141523.5075-2-swati2.sharma@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127141523.5075-1-swati2.sharma@intel.com>
References: <20191127141523.5075-1-swati2.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] [v8] drm/i915/color: Extract icl_read_luts()
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
Cc: jani.nikula@intel.com
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
dmVkIGludGVsX2NvbG9yX2x1dF9lbnRyeV9tdWx0aV9lcXVhbCgpIFtWaWxsZV0Kdjc6IC1jaGVj
a3BhdGNoIHdhcm5pbmdzCnY4OiAtcmViYXNlZAoKU2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1h
IDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NvbG9yLmMgfCAxMTMgKysrKysrKysrKysrKysrKystLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgfCAgIDYgKysKIDIgZmlsZXMgY2hhbmdl
ZCwgMTAxIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwppbmRleCAzOTgwZThiNTBjMjguLmM3ZDBmMzdkODg5
OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpAQCAtODEy
LDcgKzgxMiw3IEBAIGljbF9sb2FkX2djbWF4KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAogCXN0cnVjdCBpbnRlbF9kc2IgKmRzYiA9IGludGVsX2RzYl9nZXQoY3J0
Yyk7CiAJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwogCi0JLyogRml4bWU6IExVVCBlbnRy
aWVzIGFyZSAxNiBiaXQgb25seSwgc28gd2UgY2FuIHByb2cgMHhGRkZGIG1heCAqLworCS8qIEZJ
WE1FIExVVCBlbnRyaWVzIGFyZSAxNiBiaXQgb25seSwgc28gd2UgY2FuIHByb2cgMHhGRkZGIG1h
eCAqLwogCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBQUkVDX1BBTF9HQ19NQVgocGlwZSwgMCks
IGNvbG9yLT5yZWQpOwogCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBQUkVDX1BBTF9HQ19NQVgo
cGlwZSwgMSksIGNvbG9yLT5ncmVlbik7CiAJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIFBSRUNf
UEFMX0dDX01BWChwaXBlLCAyKSwgY29sb3ItPmJsdWUpOwpAQCAtMTUzOCw2ICsxNTM4LDI0IEBA
IHN0YXRpYyBpbnQgZ2xrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqY3J0Y19zdGF0ZSkKIAl9CiB9CiAKK3N0YXRpYyBpbnQgaWNsX2dhbW1hX3ByZWNpc2lv
bihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKK3sKKwlpZiAoKGNy
dGNfc3RhdGUtPmdhbW1hX21vZGUgJiBQT1NUX0NTQ19HQU1NQV9FTkFCTEUpID09IDApCisJCXJl
dHVybiAwOworCisJc3dpdGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9N
T0RFX01BU0spIHsKKwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgorCQlyZXR1cm4gODsKKwlj
YXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoKKwkJcmV0dXJuIDEwOworCWNhc2UgR0FNTUFfTU9E
RV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRDoKKwkJcmV0dXJuIDE2OworCWRlZmF1bHQ6CisJ
CU1JU1NJTkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsKKwkJcmV0dXJuIDA7CisJfQor
fQorCiBpbnQgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CkBAIC0xNTQ5LDcgKzE1
NjcsOSBAQCBpbnQgaW50ZWxfY29sb3JfZ2V0X2dhbW1hX2JpdF9wcmVjaXNpb24oY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdAogCQllbHNlCiAJCQlyZXR1cm4gaTl4eF9n
YW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7CiAJfSBlbHNlIHsKLQkJaWYgKElTX0NBTk5PTkxB
S0UoZGV2X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCQlpZiAoSU5URUxfR0VO
KGRldl9wcml2KSA+PSAxMSkKKwkJCXJldHVybiBpY2xfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3Rh
dGUpOworCQllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8fCBJU19HRU1JTklMQUtF
KGRldl9wcml2KSkKIAkJCXJldHVybiBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwog
CQllbHNlIGlmIChJU19JUk9OTEFLRShkZXZfcHJpdikpCiAJCQlyZXR1cm4gaWxrX2dhbW1hX3By
ZWNpc2lvbihjcnRjX3N0YXRlKTsKQEAgLTE1NjYsOSArMTU4Niw5IEBAIHN0YXRpYyBib29sIGVy
cl9jaGVjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwKIAkJKChhYnMoKGxvbmcpbHV0Mi0+
Z3JlZW4gLSBsdXQxLT5ncmVlbikpIDw9IGVycik7CiB9CiAKLXN0YXRpYyBib29sIGludGVsX2Nv
bG9yX2x1dF9lbnRyeV9lcXVhbChzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqbHV0MSwKLQkJCQkJc3Ry
dWN0IGRybV9jb2xvcl9sdXQgKmx1dDIsCi0JCQkJCWludCBsdXRfc2l6ZSwgdTMyIGVycikKK3N0
YXRpYyBib29sIGludGVsX2NvbG9yX2x1dF9lbnRyaWVzX2VxdWFsKHN0cnVjdCBkcm1fY29sb3Jf
bHV0ICpsdXQxLAorCQkJCQkgIHN0cnVjdCBkcm1fY29sb3JfbHV0ICpsdXQyLAorCQkJCQkgIGlu
dCBsdXRfc2l6ZSwgdTMyIGVycikKIHsKIAlpbnQgaTsKIApAQCAtMTU5OCwxNiArMTYxOCw4IEBA
IGJvb2wgaW50ZWxfY29sb3JfbHV0X2VxdWFsKHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxv
YjEsCiAJbHV0X3NpemUyID0gZHJtX2NvbG9yX2x1dF9zaXplKGJsb2IyKTsKIAogCS8qIGNoZWNr
IHN3IGFuZCBodyBsdXQgc2l6ZSAqLwotCXN3aXRjaCAoZ2FtbWFfbW9kZSkgewotCWNhc2UgR0FN
TUFfTU9ERV9NT0RFXzhCSVQ6Ci0JY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Ci0JCWlmIChs
dXRfc2l6ZTEgIT0gbHV0X3NpemUyKQotCQkJcmV0dXJuIGZhbHNlOwotCQlicmVhazsKLQlkZWZh
dWx0OgotCQlNSVNTSU5HX0NBU0UoZ2FtbWFfbW9kZSk7Ci0JCQlyZXR1cm4gZmFsc2U7Ci0JfQor
CWlmIChsdXRfc2l6ZTEgIT0gbHV0X3NpemUyKQorCQlyZXR1cm4gZmFsc2U7CiAKIAlsdXQxID0g
YmxvYjEtPmRhdGE7CiAJbHV0MiA9IGJsb2IyLT5kYXRhOwpAQCAtMTYxNSwxMSArMTYyNywxNiBA
QCBib29sIGludGVsX2NvbG9yX2x1dF9lcXVhbChzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJs
b2IxLAogCWVyciA9IDB4ZmZmZiA+PiBiaXRfcHJlY2lzaW9uOwogCiAJLyogY2hlY2sgc3cgYW5k
IGh3IGx1dCBlbnRyeSB0byBiZSBlcXVhbCAqLwotCXN3aXRjaCAoZ2FtbWFfbW9kZSkgeworCXN3
aXRjaCAoZ2FtbWFfbW9kZSAmIEdBTU1BX01PREVfTU9ERV9NQVNLKSB7CiAJY2FzZSBHQU1NQV9N
T0RFX01PREVfOEJJVDoKIAljYXNlIEdBTU1BX01PREVfTU9ERV8xMEJJVDoKLQkJaWYgKCFpbnRl
bF9jb2xvcl9sdXRfZW50cnlfZXF1YWwobHV0MSwgbHV0MiwKLQkJCQkJCSBsdXRfc2l6ZTIsIGVy
cikpCisJCWlmICghaW50ZWxfY29sb3JfbHV0X2VudHJpZXNfZXF1YWwobHV0MSwgbHV0MiwKKwkJ
CQkJCSAgIGx1dF9zaXplMiwgZXJyKSkKKwkJCXJldHVybiBmYWxzZTsKKwkJYnJlYWs7CisJY2Fz
ZSBHQU1NQV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VHTUVOVEVEOgorCQlpZiAoIWludGVsX2Nv
bG9yX2x1dF9lbnRyaWVzX2VxdWFsKGx1dDEsIGx1dDIsCisJCQkJCQkgICA5LCBlcnIpKQogCQkJ
cmV0dXJuIGZhbHNlOwogCQlicmVhazsKIAlkZWZhdWx0OgpAQCAtMTg3Niw2ICsxODkzLDY1IEBA
IHN0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiAJCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGdsa19yZWFkX2x1dF8xMChjcnRj
X3N0YXRlLCBQQUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7CiB9CiAKK3N0YXRpYyBzdHJ1Y3QgZHJt
X3Byb3BlcnR5X2Jsb2IgKgoraWNsX3JlYWRfbHV0X211bHRpX3NlZ21lbnQoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJc3RydWN0IGludGVsX2NydGMgKmNy
dGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7CisJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CisJaW50IGx1
dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNvbG9yLmdhbW1hX2x1dF9zaXplOworCWVu
dW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKKwlzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJs
b2I7CisJc3RydWN0IGRybV9jb2xvcl9sdXQgKmJsb2JfZGF0YTsKKwl1MzIgaSwgdmFsMSwgdmFs
MjsKKworCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sCisJ
CQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBsdXRfc2l6ZSwKKwkJCQkJTlVMTCk7
CisJaWYgKElTX0VSUihibG9iKSkKKwkJcmV0dXJuIE5VTEw7CisKKwlibG9iX2RhdGEgPSBibG9i
LT5kYXRhOworCisJSTkxNV9XUklURShQUkVDX1BBTF9NVUxUSV9TRUdfSU5ERVgocGlwZSksIFBB
TF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKKworCWZvciAoaSA9IDA7IGkgPCA5OyBpKyspIHsKKwkJ
dmFsMSA9IEk5MTVfUkVBRChQUkVDX1BBTF9NVUxUSV9TRUdfREFUQShwaXBlKSk7CisJCXZhbDIg
PSBJOTE1X1JFQUQoUFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSkpOworCisJCWJsb2JfZGF0
YVtpXS5yZWQgPSBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19SRURfVURXX01BU0ss
IHZhbDIpIDw8IDYgfAorCQkJCSAgIFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX1JF
RF9MRFdfTUFTSywgdmFsMSk7CisJCWJsb2JfZGF0YVtpXS5ncmVlbiA9IFJFR19GSUVMRF9HRVQo
UEFMX1BSRUNfTVVMVElfU0VHX0dSRUVOX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwKKwkJCQkgICAg
IFJFR19GSUVMRF9HRVQoUEFMX1BSRUNfTVVMVElfU0VHX0dSRUVOX0xEV19NQVNLLCB2YWwxKTsK
KwkJYmxvYl9kYXRhW2ldLmJsdWUgPSBSRUdfRklFTERfR0VUKFBBTF9QUkVDX01VTFRJX1NFR19C
TFVFX1VEV19NQVNLLCB2YWwyKSA8PCA2IHwKKwkJCQkgICAgUkVHX0ZJRUxEX0dFVChQQUxfUFJF
Q19NVUxUSV9TRUdfQkxVRV9MRFdfTUFTSywgdmFsMSk7CisJfQorCisJLyoKKwkgKiBGSVhNRSBy
ZWFkb3V0cyBmcm9tIFBBTF9QUkVDX0RBVEEgcmVnaXN0ZXIgYXJlbid0IGdpdmluZworCSAqIGNv
cnJlY3QgdmFsdWVzIGluIHRoZSBjYXNlIG9mIGZpbmUgYW5kIGNvYXJzZSBzZWdtZW50cy4KKwkg
KiBSZXN0cmljdGluZyByZWFkb3V0cyBvbmx5IGZvciBzdXBlciBmaW5lIHNlZ21lbnQgYXMgb2Yg
bm93LgorCSAqLworCisJcmV0dXJuIGJsb2I7Cit9CisKK3N0YXRpYyB2b2lkIGljbF9yZWFkX2x1
dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCit7CisJaWYgKChjcnRjX3N0
YXRlLT5nYW1tYV9tb2RlICYgUE9TVF9DU0NfR0FNTUFfRU5BQkxFKSA9PSAwKQorCQlyZXR1cm47
CisKKwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUgJiBHQU1NQV9NT0RFX01PREVfTUFT
SykgeworCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhCSVQ6CisJCWNydGNfc3RhdGUtPmh3LmdhbW1h
X2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKKwkJYnJlYWs7CisJY2FzZSBHQU1N
QV9NT0RFX01PREVfMTJCSVRfTVVMVElfU0VHTUVOVEVEOgorCQljcnRjX3N0YXRlLT5ody5nYW1t
YV9sdXQgPSBpY2xfcmVhZF9sdXRfbXVsdGlfc2VnbWVudChjcnRjX3N0YXRlKTsKKwkJYnJlYWs7
CisJZGVmYXVsdDoKKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gZ2xrX3JlYWRfbHV0XzEw
KGNydGNfc3RhdGUsIFBBTF9QUkVDX0lOREVYX1ZBTFVFKDApKTsKKwl9Cit9CisKIHZvaWQgaW50
ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTE5MTks
NiArMTk5NSw3IEBAIHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykKIAogCQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgewogCQkJZGV2X3ByaXYtPmRp
c3BsYXkubG9hZF9sdXRzID0gaWNsX2xvYWRfbHV0czsKKwkJCWRldl9wcml2LT5kaXNwbGF5LnJl
YWRfbHV0cyA9IGljbF9yZWFkX2x1dHM7CiAJCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFLRShkZXZf
cHJpdikgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsKIAkJCWRldl9wcml2LT5kaXNwbGF5
LmxvYWRfbHV0cyA9IGdsa19sb2FkX2x1dHM7CiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1
dHMgPSBnbGtfcmVhZF9sdXRzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggOTRkMGY1OTNl
ZWI3Li42YWZkNGY1OTFmMmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTA3MjEsNiAr
MTA3MjEsMTIgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAKICNkZWZpbmUgX1BBTF9QUkVDX01V
TFRJX1NFR19EQVRBX0EJMHg0QTQwQwogI2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFf
QgkweDRBQzBDCisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9TRUdfUkVEX0xEV19NQVNLICAgUkVH
X0dFTk1BU0soMjksIDI0KQorI2RlZmluZSAgUEFMX1BSRUNfTVVMVElfU0VHX1JFRF9VRFdfTUFT
SyAgIFJFR19HRU5NQVNLKDI5LCAyMCkKKyNkZWZpbmUgIFBBTF9QUkVDX01VTFRJX1NFR19HUkVF
Tl9MRFdfTUFTSyBSRUdfR0VOTUFTSygxOSwgMTQpCisjZGVmaW5lICBQQUxfUFJFQ19NVUxUSV9T
RUdfR1JFRU5fVURXX01BU0sgUkVHX0dFTk1BU0soMTksIDEwKQorI2RlZmluZSAgUEFMX1BSRUNf
TVVMVElfU0VHX0JMVUVfTERXX01BU0sgIFJFR19HRU5NQVNLKDksIDQpCisjZGVmaW5lICBQQUxf
UFJFQ19NVUxUSV9TRUdfQkxVRV9VRFdfTUFTSyAgUkVHX0dFTk1BU0soOSwgMCkKIAogI2RlZmlu
ZSBQUkVDX1BBTF9NVUxUSV9TRUdfSU5ERVgocGlwZSkJX01NSU9fUElQRShwaXBlLCBcCiAJCQkJ
CV9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQSwgXAotLSAKMi4yMy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
