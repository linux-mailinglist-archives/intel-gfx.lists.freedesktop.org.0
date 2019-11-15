Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9788DFE156
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05DAD6E89A;
	Fri, 15 Nov 2019 15:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9E36E89A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:34:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:37 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="379957439"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 17:33:44 +0200
Message-Id: <fb1215db42f86cce9059fa39fac3f40a6d0c9892.1573831924.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573831924.git.jani.nikula@intel.com>
References: <cover.1573831924.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 08/10] drm/i915/dsi: abstract afe_clk
 calculation
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

V2UnbGwgbWFrZSBtb3JlIHVzZSBvZiBpdCBpbiB0aGUgZnV0dXJlLgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pY2xfZHNpLmMgfCAxOCArKysrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pY2xfZHNpLmMKaW5kZXggZWY1M2VkNmQzZWNmLi5kZTM3NDMyMzNkY2IgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC0zMDEsMTggKzMwMSwyNiBAQCBzdGF0
aWMgdm9pZCBjb25maWd1cmVfZHVhbF9saW5rX21vZGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsCiAJSTkxNV9XUklURShEU1NfQ1RMMSwgZHNzX2N0bDEpOwogfQogCisvKiBha2EgRFNJ
IDhYIGNsb2NrICovCitzdGF0aWMgaW50IGFmZV9jbGsoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIpCit7CisJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpID0gZW5jX3RvX2ludGVsX2Rz
aSgmZW5jb2Rlci0+YmFzZSk7CisJaW50IGJwcDsKKworCWJwcCA9IG1pcGlfZHNpX3BpeGVsX2Zv
cm1hdF90b19icHAoaW50ZWxfZHNpLT5waXhlbF9mb3JtYXQpOworCisJcmV0dXJuIERJVl9ST1VO
RF9DTE9TRVNUKGludGVsX2RzaS0+cGNsayAqIGJwcCwgaW50ZWxfZHNpLT5sYW5lX2NvdW50KTsK
K30KKwogc3RhdGljIHZvaWQgZ2VuMTFfZHNpX3Byb2dyYW1fZXNjX2Nsa19kaXYoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAJc3RydWN0IGludGVsX2RzaSAqaW50
ZWxfZHNpID0gZW5jX3RvX2ludGVsX2RzaSgmZW5jb2Rlci0+YmFzZSk7CiAJZW51bSBwb3J0IHBv
cnQ7Ci0JdTMyIGJwcCA9IG1pcGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAoaW50ZWxfZHNpLT5w
aXhlbF9mb3JtYXQpOwotCXUzMiBhZmVfY2xrX2toejsgLyogOFggQ2xvY2sgKi8KKwlpbnQgYWZl
X2Nsa19raHo7CiAJdTMyIGVzY19jbGtfZGl2X207CiAKLQlhZmVfY2xrX2toeiA9IERJVl9ST1VO
RF9DTE9TRVNUKGludGVsX2RzaS0+cGNsayAqIGJwcCwKLQkJCQkJaW50ZWxfZHNpLT5sYW5lX2Nv
dW50KTsKLQorCWFmZV9jbGtfa2h6ID0gYWZlX2NsayhlbmNvZGVyKTsKIAllc2NfY2xrX2Rpdl9t
ID0gRElWX1JPVU5EX1VQKGFmZV9jbGtfa2h6LCBEU0lfTUFYX0VTQ19DTEspOwogCiAJZm9yX2Vh
Y2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgewotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
