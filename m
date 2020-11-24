Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EE72C31B8
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 21:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D86E6E0B8;
	Tue, 24 Nov 2020 20:12:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF006E0B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 20:12:07 +0000 (UTC)
IronPort-SDR: V6u8fa/cC4tBA5L6dv4U1cRLJBb4dF1lXiK2qf+htdtcilEDIKHQxHjoOIWiiizG8HE9llVMK7
 orAwFOBXXyWw==
X-IronPort-AV: E=McAfee;i="6000,8403,9815"; a="171230516"
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="171230516"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2020 12:12:07 -0800
IronPort-SDR: UZJ9/ZY1OFFV6+OEK2ZAJhbE/t8nNzt+tqzKpNLByESQ0Eq0jUc2rs2F0PTrlMLTCrSAOZODpN
 CwD285o7gpkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,366,1599548400"; d="scan'208";a="365125219"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 24 Nov 2020 12:12:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Nov 2020 22:12:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Nov 2020 22:11:56 +0200
Message-Id: <20201124201156.17095-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
References: <20201124201156.17095-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Call kill_bigjoiner_slave()
 earlier
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGRvIHRoZSBraWxsX2JpZ2pvaW5lcl9zbGF2ZSgpIHRoaW5nIGZyb20KaW50ZWxfYmlnam9p
bmVyX2FkZF9hZmZlY3RlZF9jcnRjcygpIHNpbmNlIGl0J3MgcmVsYXRlZCB0bwp3aGF0IHdlIGRv
IHRoZXJlLiBUaGlzIGNsZWFucyB1cCB0aGUgbG9naWMgaW4gdGhlCmNvbXB1dGVfY29uZmlnKCkg
bG9vcCBhIGJpdC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCAyNSArKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEw
IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMDRkYWQzYmFmOGEwLi5hMWVlZDMwYjJlMGMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0x
NTM3MywyMSArMTUzNzMsMTYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2tfYmlnam9p
bmVyKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCXJldHVybiAtRUlOVkFMOwog
fQogCi1zdGF0aWMgaW50IGtpbGxfYmlnam9pbmVyX3NsYXZlKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLAotCQkJCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICptYXN0ZXJfY3J0Y19z
dGF0ZSkKK3N0YXRpYyB2b2lkIGtpbGxfYmlnam9pbmVyX3NsYXZlKHN0cnVjdCBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLAorCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbWFzdGVyX2Ny
dGNfc3RhdGUpCiB7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnNsYXZlX2NydGNfc3RhdGUg
PQotCQlpbnRlbF9hdG9taWNfZ2V0X2NydGNfc3RhdGUoJnN0YXRlLT5iYXNlLAotCQkJCQkgICAg
bWFzdGVyX2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0Yyk7Ci0KLQlpZiAoSVNfRVJS
KHNsYXZlX2NydGNfc3RhdGUpKQotCQlyZXR1cm4gUFRSX0VSUihzbGF2ZV9jcnRjX3N0YXRlKTsK
KwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgbWFzdGVyX2NydGNfc3Rh
dGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0Yyk7CiAKIAlzbGF2ZV9jcnRjX3N0YXRlLT5iaWdqb2lu
ZXIgPSBtYXN0ZXJfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyID0gZmFsc2U7CiAJc2xhdmVfY3J0Y19z
dGF0ZS0+Ymlnam9pbmVyX3NsYXZlID0gbWFzdGVyX2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9zbGF2
ZSA9IGZhbHNlOwogCXNsYXZlX2NydGNfc3RhdGUtPmJpZ2pvaW5lcl9saW5rZWRfY3J0YyA9IG1h
c3Rlcl9jcnRjX3N0YXRlLT5iaWdqb2luZXJfbGlua2VkX2NydGMgPSBOVUxMOwogCWludGVsX2Ny
dGNfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0YXRlLCBzbGF2ZV9jcnRjX3N0YXRlKTsKLQlyZXR1
cm4gMDsKIH0KIAogLyoqCkBAIC0xNTU1Nyw2ICsxNTU1MiwxMyBAQCBzdGF0aWMgaW50IGludGVs
X2JpZ2pvaW5lcl9hZGRfYWZmZWN0ZWRfY3J0Y3Moc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUpCiAJCQlyZXR1cm4gcmV0OwogCX0KIAorCWZvcl9lYWNoX25ld19pbnRlbF9jcnRjX2lu
X3N0YXRlKHN0YXRlLCBjcnRjLCBjcnRjX3N0YXRlLCBpKSB7CisJCS8qIEtpbGwgb2xkIGJpZ2pv
aW5lciBsaW5rLCB3ZSBtYXkgcmUtZXN0YWJsaXNoIGFmdGVyd2FyZHMgKi8KKwkJaWYgKG5lZWRz
X21vZGVzZXQoY3J0Y19zdGF0ZSkgJiYKKwkJICAgIGNydGNfc3RhdGUtPmJpZ2pvaW5lciAmJiAh
Y3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKQorCQkJa2lsbF9iaWdqb2luZXJfc2xhdmUoc3Rh
dGUsIGNydGNfc3RhdGUpOworCX0KKwogCXJldHVybiAwOwogfQogCkBAIC0xNTU5OCwxMyArMTU2
MDAsNiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVjayhzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LAogCQkJY29udGludWU7CiAJCX0KIAotCQkvKiBLaWxsIG9sZCBiaWdqb2luZXIgbGluaywg
d2UgbWF5IHJlLWVzdGFibGlzaCBhZnRlcndhcmRzICovCi0JCWlmIChvbGRfY3J0Y19zdGF0ZS0+
Ymlnam9pbmVyICYmICFvbGRfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKSB7Ci0JCQlyZXQg
PSBraWxsX2JpZ2pvaW5lcl9zbGF2ZShzdGF0ZSwgbmV3X2NydGNfc3RhdGUpOwotCQkJaWYgKHJl
dCkKLQkJCQlnb3RvIGZhaWw7Ci0JCX0KLQogCQlpZiAoIW5ld19jcnRjX3N0YXRlLT51YXBpLmVu
YWJsZSkgewogCQkJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKSB7CiAJCQkJ
aW50ZWxfY3J0Y19jb3B5X3VhcGlfdG9faHdfc3RhdGUoc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsK
LS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
