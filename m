Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 148C0AA359
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E85E6E0BF;
	Thu,  5 Sep 2019 12:39:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432C96E0BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 12:39:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:39:33 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="358435554"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:39:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Sep 2019 15:39:15 +0300
Message-Id: <20190905123916.27846-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905123916.27846-1-jani.nikula@intel.com>
References: <20190905123916.27846-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [CI 2/3] drm/i915: convert device info num_pipes to
 pipe_mask
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

UmVwbGFjZSBkZXZpY2UgaW5mbyBudW1iZXIgb2YgcGlwZXMgd2l0aCBhIGJpdCBtYXNrIG9mIGF2
YWlsYWJsZQpwaXBlcy4gVGhpcyB3aWxsIHByb3ZlIGhhbmR5IGluIHRoZSBmdXR1cmUuIFRoZXJl
J3Mgc3RpbGwgYSBidW5jaCBvZgpmdXR1cmUgd29yayB0byBkbyB0byBhY3R1YWxseSBhbGxvdyBh
IG5vbi1jb25zZWN1dGl2ZSBtYXNrIG9mIHBpcGVzLCBidXQKaXQncyBhIHN0YXJ0LiBObyBmdW5j
dGlvbmFsIGNoYW5nZXMuCgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQWNrZWQt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICA0ICsrLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMgICAgICAgICAgfCAyNCArKysrKysrKysrKystLS0tLS0tLS0t
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgfCAxMCArKysrKy0t
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgIDIgKy0KIDQg
ZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKaW5kZXggZjRmYzcyZTIxMThjLi42NTU3Y2Q4ZGRkN2EgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaApAQCAtMjE4Miw5ICsyMTgyLDkgQEAgSVNfU1VCUExBVEZPUk0oY29u
c3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAjZGVmaW5lIEdUX0ZSRVFVRU5DWV9N
VUxUSVBMSUVSIDUwCiAjZGVmaW5lIEdFTjlfRlJFUV9TQ0FMRVIgMwogCi0jZGVmaW5lIElOVEVM
X05VTV9QSVBFUyhkZXZfcHJpdikgKElOVEVMX0lORk8oZGV2X3ByaXYpLT5udW1fcGlwZXMpCisj
ZGVmaW5lIElOVEVMX05VTV9QSVBFUyhkZXZfcHJpdikgKGh3ZWlnaHQ4KElOVEVMX0lORk8oZGV2
X3ByaXYpLT5waXBlX21hc2spKQogCi0jZGVmaW5lIEhBU19ESVNQTEFZKGRldl9wcml2KSAoSU5U
RUxfTlVNX1BJUEVTKGRldl9wcml2KSA+IDApCisjZGVmaW5lIEhBU19ESVNQTEFZKGRldl9wcml2
KSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPnBpcGVfbWFzayAhPSAwKQogCiBzdGF0aWMgaW5saW5l
IGJvb2wgaW50ZWxfdnRkX2FjdGl2ZSh2b2lkKQogewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKaW5k
ZXggZmJlOThhMmRiODhlLi4xN2RkYzAzZGYwMDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwpA
QCAtMTQ3LDcgKzE0Nyw3IEBACiAjZGVmaW5lIEk4MzBfRkVBVFVSRVMgXAogCUdFTigyKSwgXAog
CS5pc19tb2JpbGUgPSAxLCBcCi0JLm51bV9waXBlcyA9IDIsIFwKKwkucGlwZV9tYXNrID0gQklU
KFBJUEVfQSkgfCBCSVQoUElQRV9CKSwgXAogCS5kaXNwbGF5Lmhhc19vdmVybGF5ID0gMSwgXAog
CS5kaXNwbGF5LmN1cnNvcl9uZWVkc19waHlzaWNhbCA9IDEsIFwKIAkuZGlzcGxheS5vdmVybGF5
X25lZWRzX3BoeXNpY2FsID0gMSwgXApAQCAtMTY1LDcgKzE2NSw3IEBACiAKICNkZWZpbmUgSTg0
NV9GRUFUVVJFUyBcCiAJR0VOKDIpLCBcCi0JLm51bV9waXBlcyA9IDEsIFwKKwkucGlwZV9tYXNr
ID0gQklUKFBJUEVfQSksIFwKIAkuZGlzcGxheS5oYXNfb3ZlcmxheSA9IDEsIFwKIAkuZGlzcGxh
eS5vdmVybGF5X25lZWRzX3BoeXNpY2FsID0gMSwgXAogCS5kaXNwbGF5Lmhhc19nbWNoID0gMSwg
XApAQCAtMjAzLDcgKzIwMyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2lu
Zm8gaW50ZWxfaTg2NWdfaW5mbyA9IHsKIAogI2RlZmluZSBHRU4zX0ZFQVRVUkVTIFwKIAlHRU4o
MyksIFwKLQkubnVtX3BpcGVzID0gMiwgXAorCS5waXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJ
VChQSVBFX0IpLCBcCiAJLmRpc3BsYXkuaGFzX2dtY2ggPSAxLCBcCiAJLmdwdV9yZXNldF9jbG9i
YmVyc19kaXNwbGF5ID0gdHJ1ZSwgXAogCS5lbmdpbmVfbWFzayA9IEJJVChSQ1MwKSwgXApAQCAt
Mjg3LDcgKzI4Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50
ZWxfcGluZXZpZXdfbV9pbmZvID0gewogCiAjZGVmaW5lIEdFTjRfRkVBVFVSRVMgXAogCUdFTig0
KSwgXAotCS5udW1fcGlwZXMgPSAyLCBcCisJLnBpcGVfbWFzayA9IEJJVChQSVBFX0EpIHwgQklU
KFBJUEVfQiksIFwKIAkuZGlzcGxheS5oYXNfaG90cGx1ZyA9IDEsIFwKIAkuZGlzcGxheS5oYXNf
Z21jaCA9IDEsIFwKIAkuZ3B1X3Jlc2V0X2Nsb2JiZXJzX2Rpc3BsYXkgPSB0cnVlLCBcCkBAIC0z
MzcsNyArMzM3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRl
bF9nbTQ1X2luZm8gPSB7CiAKICNkZWZpbmUgR0VONV9GRUFUVVJFUyBcCiAJR0VOKDUpLCBcCi0J
Lm51bV9waXBlcyA9IDIsIFwKKwkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9C
KSwgXAogCS5kaXNwbGF5Lmhhc19ob3RwbHVnID0gMSwgXAogCS5lbmdpbmVfbWFzayA9IEJJVChS
Q1MwKSB8IEJJVChWQ1MwKSwgXAogCS5oYXNfc25vb3AgPSB0cnVlLCBcCkBAIC0zNjMsNyArMzYz
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9pcm9ubGFr
ZV9tX2luZm8gPSB7CiAKICNkZWZpbmUgR0VONl9GRUFUVVJFUyBcCiAJR0VOKDYpLCBcCi0JLm51
bV9waXBlcyA9IDIsIFwKKwkucGlwZV9tYXNrID0gQklUKFBJUEVfQSkgfCBCSVQoUElQRV9CKSwg
XAogCS5kaXNwbGF5Lmhhc19ob3RwbHVnID0gMSwgXAogCS5kaXNwbGF5Lmhhc19mYmMgPSAxLCBc
CiAJLmVuZ2luZV9tYXNrID0gQklUKFJDUzApIHwgQklUKFZDUzApIHwgQklUKEJDUzApLCBcCkBA
IC00MTEsNyArNDExLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBp
bnRlbF9zYW5keWJyaWRnZV9tX2d0Ml9pbmZvID0gewogCiAjZGVmaW5lIEdFTjdfRkVBVFVSRVMg
IFwKIAlHRU4oNyksIFwKLQkubnVtX3BpcGVzID0gMywgXAorCS5waXBlX21hc2sgPSBCSVQoUElQ
RV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQyksIFwKIAkuZGlzcGxheS5oYXNfaG90cGx1
ZyA9IDEsIFwKIAkuZGlzcGxheS5oYXNfZmJjID0gMSwgXAogCS5lbmdpbmVfbWFzayA9IEJJVChS
Q1MwKSB8IEJJVChWQ1MwKSB8IEJJVChCQ1MwKSwgXApAQCAtNDYyLDcgKzQ2Miw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfaXZ5YnJpZGdlX3FfaW5mbyA9
IHsKIAlHRU43X0ZFQVRVUkVTLAogCVBMQVRGT1JNKElOVEVMX0lWWUJSSURHRSksCiAJLmd0ID0g
MiwKLQkubnVtX3BpcGVzID0gMCwgLyogbGVnYWwsIGxhc3Qgb25lIHdpbnMgKi8KKwkucGlwZV9t
YXNrID0gMCwgLyogbGVnYWwsIGxhc3Qgb25lIHdpbnMgKi8KIAkuaGFzX2wzX2RwZiA9IDEsCiB9
OwogCkBAIC00NzAsNyArNDcwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2Vf
aW5mbyBpbnRlbF92YWxsZXl2aWV3X2luZm8gPSB7CiAJUExBVEZPUk0oSU5URUxfVkFMTEVZVklF
VyksCiAJR0VOKDcpLAogCS5pc19scCA9IDEsCi0JLm51bV9waXBlcyA9IDIsCisJLnBpcGVfbWFz
ayA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQiksCiAJLmhhc19ydW50aW1lX3BtID0gMSwKIAku
aGFzX3JjNiA9IDEsCiAJLmhhc19ycHMgPSB0cnVlLApAQCAtNTYwLDcgKzU2MCw3IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfYnJvYWR3ZWxsX2d0M19pbmZv
ID0gewogc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZXZpY2VfaW5mbyBpbnRlbF9jaGVycnl2
aWV3X2luZm8gPSB7CiAJUExBVEZPUk0oSU5URUxfQ0hFUlJZVklFVyksCiAJR0VOKDgpLAotCS5u
dW1fcGlwZXMgPSAzLAorCS5waXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwg
QklUKFBJUEVfQyksCiAJLmRpc3BsYXkuaGFzX2hvdHBsdWcgPSAxLAogCS5pc19scCA9IDEsCiAJ
LmVuZ2luZV9tYXNrID0gQklUKFJDUzApIHwgQklUKFZDUzApIHwgQklUKEJDUzApIHwgQklUKFZF
Q1MwKSwKQEAgLTYzMSw3ICs2MzEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rldmlj
ZV9pbmZvIGludGVsX3NreWxha2VfZ3Q0X2luZm8gPSB7CiAJLmlzX2xwID0gMSwgXAogCS5kaXNw
bGF5Lmhhc19ob3RwbHVnID0gMSwgXAogCS5lbmdpbmVfbWFzayA9IEJJVChSQ1MwKSB8IEJJVChW
Q1MwKSB8IEJJVChCQ1MwKSB8IEJJVChWRUNTMCksIFwKLQkubnVtX3BpcGVzID0gMywgXAorCS5w
aXBlX21hc2sgPSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0IpIHwgQklUKFBJUEVfQyksIFwKIAku
aGFzXzY0Yml0X3JlbG9jID0gMSwgXAogCS5kaXNwbGF5Lmhhc19kZGkgPSAxLCBcCiAJLmhhc19m
cGdhX2RiZyA9IDEsIFwKQEAgLTc5Miw3ICs3OTIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX2RldmljZV9pbmZvIGludGVsX2Vsa2hhcnRsYWtlX2luZm8gPSB7CiBzdGF0aWMgY29uc3Qg
c3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3RpZ2VybGFrZV8xMl9pbmZvID0gewogCUdF
TjEyX0ZFQVRVUkVTLAogCVBMQVRGT1JNKElOVEVMX1RJR0VSTEFLRSksCi0JLm51bV9waXBlcyA9
IDQsCisJLnBpcGVfbWFzayA9IEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQikgfCBCSVQoUElQRV9D
KSB8IEJJVChQSVBFX0QpLAogCS5yZXF1aXJlX2ZvcmNlX3Byb2JlID0gMSwKIAkuZGlzcGxheS5o
YXNfbW9kdWxhcl9maWEgPSAxLAogCS5lbmdpbmVfbWFzayA9CmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYwppbmRleCBkOWI1YmFhZWY1ZDAuLjUwYjA1YTVkZTUzYiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCkBAIC04OTYsNyArODk2LDcg
QEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCiAJaWYgKGk5MTVfbW9kcGFyYW1zLmRpc2FibGVfZGlzcGxheSkg
ewogCQlEUk1fSU5GTygiRGlzcGxheSBkaXNhYmxlZCAobW9kdWxlIHBhcmFtZXRlcilcbiIpOwot
CQlpbmZvLT5udW1fcGlwZXMgPSAwOworCQlpbmZvLT5waXBlX21hc2sgPSAwOwogCX0gZWxzZSBp
ZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpICYmCiAJCSAgIChJU19HRU5fUkFOR0UoZGV2X3ByaXYs
IDcsIDgpKSAmJgogCQkgICBIQVNfUENIX1NQTElUKGRldl9wcml2KSkgewpAQCAtOTE3LDE0ICs5
MTcsMTQgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19ydW50aW1lX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkgICAgKEhBU19QQ0hfQ1BUKGRldl9wcml2KSAmJgog
CQkgICAgICEoc2Z1c2Vfc3RyYXAgJiBTRlVTRV9TVFJBUF9GVVNFX0xPQ0spKSkgewogCQkJRFJN
X0lORk8oIkRpc3BsYXkgZnVzZWQgb2ZmLCBkaXNhYmxpbmdcbiIpOwotCQkJaW5mby0+bnVtX3Bp
cGVzID0gMDsKKwkJCWluZm8tPnBpcGVfbWFzayA9IDA7CiAJCX0gZWxzZSBpZiAoZnVzZV9zdHJh
cCAmIElWQl9QSVBFX0NfRElTQUJMRSkgewogCQkJRFJNX0lORk8oIlBpcGVDIGZ1c2VkIG9mZlxu
Iik7Ci0JCQlpbmZvLT5udW1fcGlwZXMgLT0gMTsKKwkJCWluZm8tPnBpcGVfbWFzayAmPSB+QklU
KFBJUEVfQyk7CiAJCX0KIAl9IGVsc2UgaWYgKEhBU19ESVNQTEFZKGRldl9wcml2KSAmJiBJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDkpIHsKIAkJdTMyIGRmc20gPSBJOTE1X1JFQUQoU0tMX0RGU00p
OwotCQl1OCBlbmFibGVkX21hc2sgPSBCSVQoaW5mby0+bnVtX3BpcGVzKSAtIDE7CisJCXU4IGVu
YWJsZWRfbWFzayA9IGluZm8tPnBpcGVfbWFzazsKIAogCQlpZiAoZGZzbSAmIFNLTF9ERlNNX1BJ
UEVfQV9ESVNBQkxFKQogCQkJZW5hYmxlZF9tYXNrICY9IH5CSVQoUElQRV9BKTsKQEAgLTk0NSw3
ICs5NDUsNyBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCQlEUk1fRVJST1IoImludmFsaWQgcGlwZSBmdXNl
IGNvbmZpZ3VyYXRpb246IGVuYWJsZWRfbWFzaz0weCV4XG4iLAogCQkJCSAgZW5hYmxlZF9tYXNr
KTsKIAkJZWxzZQotCQkJaW5mby0+bnVtX3BpcGVzID0gaHdlaWdodDgoZW5hYmxlZF9tYXNrKTsK
KwkJCWluZm8tPnBpcGVfbWFzayA9IGVuYWJsZWRfbWFzazsKIAl9CiAKIAkvKiBJbml0aWFsaXpl
IHNsaWNlL3N1YnNsaWNlL0VVIGluZm8gKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZp
Y2VfaW5mby5oCmluZGV4IDkyZTBjMmUwOTU0Yy4uZDRjMjg4ODYwYWVkIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTE2MSw3ICsxNjEsNyBAQCBzdHJ1Y3Qg
aW50ZWxfZGV2aWNlX2luZm8gewogCiAJdTMyIGRpc3BsYXlfbW1pb19vZmZzZXQ7CiAKLQl1OCBu
dW1fcGlwZXM7CisJdTggcGlwZV9tYXNrOwogCiAjZGVmaW5lIERFRklORV9GTEFHKG5hbWUpIHU4
IG5hbWU6MQogCURFVl9JTkZPX0ZPUl9FQUNIX0ZMQUcoREVGSU5FX0ZMQUcpOwotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
