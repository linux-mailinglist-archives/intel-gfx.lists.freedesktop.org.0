Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 237FD2A0BB7
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD106E9D7;
	Fri, 30 Oct 2020 16:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4617F6E9D7
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:51:01 +0000 (UTC)
IronPort-SDR: 1s+ILi0z7p4OWnwcSZCQSKzamuzfn0aC0F3d/4DUVF0s1afiCh/4IJUHqZgYIjkPBG8OgKGfIM
 HxBa8UOgev5Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="168764453"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="168764453"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:51:00 -0700
IronPort-SDR: o5TUcpaPMSWaKw1DQ0y76oSvrYWXFwLnM294MvMM3wnWwXre9CiSH/s+g824xfixf+tSiZOi68
 wpEgm/gp+NJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="356644962"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 30 Oct 2020 09:50:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 18:50:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 18:50:39 +0200
Message-Id: <20201030165045.5000-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
References: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/10] drm/i915:
 s/dev_priv->wm.hw/&dev_priv->wm.ilk/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bmFtZSB0aGUgJ2h3JyB0aGluZyB0byAnaWxrJyB0byBtYWtlIHN1cmUgaXQncyBzcGVjaWZpYwp0
byBpbGsrLiBXZSBhbHJlYWR5IGhhdmUgJ2c0eCcgYW5kICd2bHYnIG5leHQgdG8gaXQuCgpTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAgMiArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDEwICsrKysrLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmlu
ZGV4IDNhMWIzN2M1NjBlNS4uMGQwNWY3NTg2ZTE5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
QEAgLTExMTMsNyArMTExMyw3IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKIAogCQkvKiBj
dXJyZW50IGhhcmR3YXJlIHN0YXRlICovCiAJCXVuaW9uIHsKLQkJCXN0cnVjdCBpbGtfd21fdmFs
dWVzIGh3OworCQkJc3RydWN0IGlsa193bV92YWx1ZXMgaWxrOwogCQkJc3RydWN0IHZsdl93bV92
YWx1ZXMgdmx2OwogCQkJc3RydWN0IGc0eF93bV92YWx1ZXMgZzR4OwogCQl9OwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMKaW5kZXggNTM2NDIwMzI3YzY2Li44NzFkMzc0ZmI5M2YgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwpAQCAtMzUyNSw3ICszNTI1LDcgQEAgc3RhdGljIHVuc2lnbmVkIGludCBp
bGtfY29tcHV0ZV93bV9kaXJ0eShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiBz
dGF0aWMgYm9vbCBfaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAogCQkJICAgICAgIHVuc2lnbmVkIGludCBkaXJ0eSkKIHsKLQlzdHJ1Y3QgaWxrX3dt
X3ZhbHVlcyAqcHJldmlvdXMgPSAmZGV2X3ByaXYtPndtLmh3OworCXN0cnVjdCBpbGtfd21fdmFs
dWVzICpwcmV2aW91cyA9ICZkZXZfcHJpdi0+d20uaWxrOwogCWJvb2wgY2hhbmdlZCA9IGZhbHNl
OwogCiAJaWYgKGRpcnR5ICYgV01fRElSVFlfTFAoMykgJiYgcHJldmlvdXMtPndtX2xwWzJdICYg
V00xX0xQX1NSX0VOKSB7CkBAIC0zNTU5LDcgKzM1NTksNyBAQCBzdGF0aWMgYm9vbCBfaWxrX2Rp
c2FibGVfbHBfd20oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogc3RhdGljIHZv
aWQgaWxrX3dyaXRlX3dtX3ZhbHVlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
CiAJCQkJc3RydWN0IGlsa193bV92YWx1ZXMgKnJlc3VsdHMpCiB7Ci0Jc3RydWN0IGlsa193bV92
YWx1ZXMgKnByZXZpb3VzID0gJmRldl9wcml2LT53bS5odzsKKwlzdHJ1Y3QgaWxrX3dtX3ZhbHVl
cyAqcHJldmlvdXMgPSAmZGV2X3ByaXYtPndtLmlsazsKIAl1bnNpZ25lZCBpbnQgZGlydHk7CiAJ
dTMyIHZhbDsKIApAQCAtMzYyMSw3ICszNjIxLDcgQEAgc3RhdGljIHZvaWQgaWxrX3dyaXRlX3dt
X3ZhbHVlcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJaWYgKGRpcnR5ICYg
V01fRElSVFlfTFAoMykgJiYgcHJldmlvdXMtPndtX2xwWzJdICE9IHJlc3VsdHMtPndtX2xwWzJd
KQogCQlJOTE1X1dSSVRFKFdNM19MUF9JTEssIHJlc3VsdHMtPndtX2xwWzJdKTsKIAotCWRldl9w
cml2LT53bS5odyA9ICpyZXN1bHRzOworCWRldl9wcml2LT53bS5pbGsgPSAqcmVzdWx0czsKIH0K
IAogYm9vbCBpbGtfZGlzYWJsZV9scF93bShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCkBAIC02Mjc5LDcgKzYyNzksNyBAQCB2b2lkIHNrbF93bV9nZXRfaHdfc3RhdGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogc3RhdGljIHZvaWQgaWxrX3BpcGVfd21fZ2V0
X2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogewogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwotCXN0cnVjdCBpbGtf
d21fdmFsdWVzICpodyA9ICZkZXZfcHJpdi0+d20uaHc7CisJc3RydWN0IGlsa193bV92YWx1ZXMg
Kmh3ID0gJmRldl9wcml2LT53bS5pbGs7CiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOwogCXN0cnVjdCBp
bGtfcGlwZV93bSAqYWN0aXZlID0gJmNydGNfc3RhdGUtPndtLmlsay5vcHRpbWFsOwogCWVudW0g
cGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKQEAgLTY3MzUsNyArNjczNSw3IEBAIHN0YXRpYyB2b2lk
IGlsa19pbml0X2xwX3dhdGVybWFya3Moc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
KQogCiB2b2lkIGlsa193bV9nZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQogewotCXN0cnVjdCBpbGtfd21fdmFsdWVzICpodyA9ICZkZXZfcHJpdi0+d20uaHc7
CisJc3RydWN0IGlsa193bV92YWx1ZXMgKmh3ID0gJmRldl9wcml2LT53bS5pbGs7CiAJc3RydWN0
IGludGVsX2NydGMgKmNydGM7CiAKIAlpbGtfaW5pdF9scF93YXRlcm1hcmtzKGRldl9wcml2KTsK
LS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
