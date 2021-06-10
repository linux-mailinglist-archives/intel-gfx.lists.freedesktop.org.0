Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC86A3A332C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19AC96EDCE;
	Thu, 10 Jun 2021 18:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 187146EDCE
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:32:55 +0000 (UTC)
IronPort-SDR: tysbuj4BFEbM9RrvRe//3OCHdatXJhrFrfruSwAoTDvzPQZogYg6/1KTYsplnulRkGDeposI58
 oJDeLtVm+Ufw==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185741634"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="185741634"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:32:54 -0700
IronPort-SDR: 6EQQ81j7lhRZV6KcEFnT74JaqAcj8hBuLbAETtuuAkWizVOJiNhCAQJLT1gtvMj/U7m4BLq2FJ
 edf3h4M84/7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="441318841"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 10 Jun 2021 11:32:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jun 2021 21:32:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Jun 2021 21:32:32 +0300
Message-Id: <20210610183237.3920-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
References: <20210610183237.3920-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/fbc: Don't pass around the mm node
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHBvaW50IGluIHBhc3NpbmcgdGhlIG1tIG5vZGUgZXhwbGljaXRseSB0byBmaW5kX2NvbXByZXNz
aW9uX2xpbWl0KCkKc2luY2UgaXQncyBhbHdheXMgdGhlIHNhbWUgbm9kZSBmb3IgdGhlIGNmYi4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDEz
ICsrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9m
YmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMKaW5kZXggOTlm
Mzg2ZjA2ZjdiLi41NWJjNzA4ZTg3MTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9mYmMuYwpAQCAtNDM0LDEwICs0MzQsMTAgQEAgc3RhdGljIHU2NCBpbnRlbF9mYmNfY2Zi
X2Jhc2VfbWF4KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogfQogCiBzdGF0aWMgaW50
IGZpbmRfY29tcHJlc3Npb25fbGltaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAotCQkJCSAgc3RydWN0IGRybV9tbV9ub2RlICpub2RlLAogCQkJCSAgdW5zaWduZWQgaW50IHNp
emUsCiAJCQkJICB1bnNpZ25lZCBpbnQgZmJfY3BwKQogeworCXN0cnVjdCBpbnRlbF9mYmMgKmZi
YyA9ICZkZXZfcHJpdi0+ZmJjOwogCWludCBjb21wcmVzc2lvbl9saW1pdCA9IDE7CiAJaW50IHJl
dDsKIAl1NjQgZW5kOwpAQCAtNDYyLDggKzQ2Miw4IEBAIHN0YXRpYyBpbnQgZmluZF9jb21wcmVz
c2lvbl9saW1pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJICovCiAKIAkv
KiBUcnkgdG8gb3Zlci1hbGxvY2F0ZSB0byByZWR1Y2UgcmVhbGxvY2F0aW9ucyBhbmQgZnJhZ21l
bnRhdGlvbi4gKi8KLQlyZXQgPSBpOTE1X2dlbV9zdG9sZW5faW5zZXJ0X25vZGVfaW5fcmFuZ2Uo
ZGV2X3ByaXYsIG5vZGUsIHNpemUgPDw9IDEsCi0JCQkJCQkgICA0MDk2LCAwLCBlbmQpOworCXJl
dCA9IGk5MTVfZ2VtX3N0b2xlbl9pbnNlcnRfbm9kZV9pbl9yYW5nZShkZXZfcHJpdiwgJmZiYy0+
Y29tcHJlc3NlZF9mYiwKKwkJCQkJCSAgIHNpemUgPDw9IDEsIDQwOTYsIDAsIGVuZCk7CiAJaWYg
KHJldCA9PSAwKQogCQlyZXR1cm4gY29tcHJlc3Npb25fbGltaXQ7CiAKQEAgLTQ3Myw4ICs0NzMs
OCBAQCBzdGF0aWMgaW50IGZpbmRfY29tcHJlc3Npb25fbGltaXQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCSAgICAoZmJfY3BwID09IDIgJiYgY29tcHJlc3Npb25fbGltaXQg
PT0gMikpCiAJCXJldHVybiAwOwogCi0JcmV0ID0gaTkxNV9nZW1fc3RvbGVuX2luc2VydF9ub2Rl
X2luX3JhbmdlKGRldl9wcml2LCBub2RlLCBzaXplID4+PSAxLAotCQkJCQkJICAgNDA5NiwgMCwg
ZW5kKTsKKwlyZXQgPSBpOTE1X2dlbV9zdG9sZW5faW5zZXJ0X25vZGVfaW5fcmFuZ2UoZGV2X3By
aXYsICZmYmMtPmNvbXByZXNzZWRfZmIsCisJCQkJCQkgICBzaXplID4+PSAxLCA0MDk2LCAwLCBl
bmQpOwogCWlmIChyZXQgJiYgRElTUExBWV9WRVIoZGV2X3ByaXYpIDw9IDQpIHsKIAkJcmV0dXJu
IDA7CiAJfSBlbHNlIGlmIChyZXQpIHsKQEAgLTQ5Niw4ICs0OTYsNyBAQCBzdGF0aWMgaW50IGlu
dGVsX2ZiY19hbGxvY19jZmIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWRy
bV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLAogCQkgICAgZHJtX21tX25vZGVfYWxsb2NhdGVkKCZm
YmMtPmNvbXByZXNzZWRfbGxiKSk7CiAKLQlyZXQgPSBmaW5kX2NvbXByZXNzaW9uX2xpbWl0KGRl
dl9wcml2LCAmZmJjLT5jb21wcmVzc2VkX2ZiLAotCQkJCSAgICAgc2l6ZSwgZmJfY3BwKTsKKwly
ZXQgPSBmaW5kX2NvbXByZXNzaW9uX2xpbWl0KGRldl9wcml2LCBzaXplLCBmYl9jcHApOwogCWlm
ICghcmV0KQogCQlnb3RvIGVycl9sbGI7CiAJZWxzZSBpZiAocmV0ID4gMSkgewotLSAKMi4zMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
