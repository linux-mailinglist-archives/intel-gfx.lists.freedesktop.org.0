Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9D541BD927
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 12:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 917A56ED0A;
	Wed, 29 Apr 2020 10:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F7A76ED07
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 10:10:58 +0000 (UTC)
IronPort-SDR: Ed08+WWPhtvFuLUb8Ekiv2+FLGIk4Kd00pa0jFw0Fu9whRrs15otbiCR9DCrnc9QYGikwk70jq
 oT6RGhcwtZ6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 03:10:57 -0700
IronPort-SDR: aV5wL7iM/kzEJ2oJHrGqr1FWEKeWAEL+XHxjyom+tH/VZYhIKmL6c3VTY3u1MhKpuHsaqTGqMI
 Uh8zWIME4RJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="336915198"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Apr 2020 03:10:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 13:10:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 13:10:29 +0300
Message-Id: <20200429101034.8208-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/12] drm/i915/fbc: Allow FBC to recompress
 after a 3D workload on i85x/i865
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
cm1hbGx5IGk4NXgvaTg2NSAzRCBhY3Rpdml0eSB3aWxsIGJsb2NrIEZCQyB1bnRpbCBhIDJEIGJs
aXQKb2NjdXJzLiBJIHN1cHBvc2UgdGhpcyB3YXMgbWVhbnQgdG8gYXZvaWQgcmVjb21wcmVzc2lv
biB3aGlsZQozRCBhY3Rpdml0eSBpcyBzdGlsbCBnb2luZyBvbiBidXQgdGhlIGZyYW1lIGhhc24n
dCB5ZXQgYmVlbgpwcmVzZW50ZWQuIFVuZm9ydHVuYXRlbHkgdGhhdCBhbHNvIG1lYW5zIHRoYXQg
YSBwYWdlIGZsaXBwZWQKM0Qgd29ya2xvYWQgd2lsbCBwZXJtYW5lbnRseSBibG9jayBGQkMgZXZl
biBpZiBpdCBvbmx5IHJlbmRlcnMKYSBzaW5nbGUgZnJhbWUgYW5kIHRoZW4gZG9lcyBub3RoaW5n
LgoKU2luY2Ugd2UgYXJlIHVzaW5nIHNvZnR3YXJlIHJlbmRlciB0cmFja2luZyBhbnl3YXkgd2Ug
bWlnaHQgYXMKd2VsbCBmbGlwIHRoZSBjaGlja2VuIGJpdCBzbyB0aGF0IDNEIGRvZXMgbm90IGJs
b2NrIEZCQy4gVGhpcwp3aWxsIGF2b2lkIHRoZSBwZXJtYW1lbnQgRkJDIGJsb2NrYWdlIGluIHRo
ZSBhZm9yZW1lbnRpb24gdXNlCmNhc2UsIGJ1dCB0aGFua3MgdG8gdGhlIHNvZnR3YXJlIHRyYWNr
aW5nIHRoZSBjb21wcmVzc29yIHdpbGwKbm90IGRpc3R1cmIgM0QgcmVuZGVyaW5nIGFjdGl2aXR5
LgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgIDEgKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDEwICsrKysrKysrKysKIDIgZmlsZXMgY2hh
bmdlZCwgMTEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDk2ZDlm
ODg1MzM0My4uMDg4MjE1MDI1NjYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTI4MTUs
NiArMjgxNSw3IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVf
cmVnX3QgcmVnKQogI2RlZmluZSBWTFZfR1VfQ1RMMAlfTU1JTyhWTFZfRElTUExBWV9CQVNFICsg
MHgyMDMwKQogI2RlZmluZSBWTFZfR1VfQ1RMMQlfTU1JTyhWTFZfRElTUExBWV9CQVNFICsgMHgy
MDM0KQogI2RlZmluZSBTQ1BEMAkJX01NSU8oMHgyMDljKSAvKiA5MTUrIG9ubHkgKi8KKyNkZWZp
bmUgIFNDUERfRkJDX0lHTk9SRV8zRAkJCSgxIDw8IDYpCiAjZGVmaW5lICBDU1RBVEVfUkVOREVS
X0NMT0NLX0dBVEVfRElTQUJMRQkoMSA8PCA1KQogI2RlZmluZSBHRU4yX0lFUglfTU1JTygweDIw
YTApCiAjZGVmaW5lIEdFTjJfSUlSCV9NTUlPKDB4MjBhNCkKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
CmluZGV4IGJmYjE4MGZlODA0Ny4uMWU5OWIzNWYwMDdlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMKQEAgLTczNjksNiArNzM2OSwxNiBAQCBzdGF0aWMgdm9pZCBpODV4X2luaXRfY2xvY2tfZ2F0
aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAogCUk5MTVfV1JJVEUoTUVN
X01PREUsCiAJCSAgIF9NQVNLRURfQklUX0VOQUJMRShNRU1fRElTUExBWV9UUklDS0xFX0ZFRURf
RElTQUJMRSkpOworCisJLyoKKwkgKiBIYXZlIEZCQyBpZ25vcmUgM0QgYWN0aXZpdHkgc2luY2Ug
d2UgdXNlIHNvZnR3YXJlCisJICogcmVuZGVyIHRyYWNraW5nLCBhbmQgb3RoZXJ3aXNlIGEgcHVy
ZSAzRCB3b3JrbG9hZAorCSAqIChldmVuIGlmIGl0IGp1c3QgcmVuZGVycyBhIHNpbmdsZSBmcmFt
ZSBhbmQgdGhlbiBkb2VzCisJICogYWJvc3VsdGVseSBub3RoaW5nKSB3b3VsZCBub3QgYWxsb3cg
RkJDIHRvIHJlY29tcHJlc3MKKwkgKiB1bnRpbCBhIDJEIGJsaXQgb2NjdXJzLgorCSAqLworCUk5
MTVfV1JJVEUoU0NQRDAsCisJCSAgIF9NQVNLRURfQklUX0VOQUJMRShTQ1BEX0ZCQ19JR05PUkVf
M0QpKTsKIH0KIAogc3RhdGljIHZvaWQgaTgzMF9pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjI0LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
