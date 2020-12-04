Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F162CF3EC
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 19:23:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABF16E1C0;
	Fri,  4 Dec 2020 18:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59D46E1C0
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Dec 2020 18:23:14 +0000 (UTC)
IronPort-SDR: mci+k0Y7uXCcRuJEwZnEua2IlijQUAvZgDu6YwLO9sENSmYF5WeVYPd/GghxRLZvNQF8wZz92F
 foAXtXPYpiLQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9825"; a="235021898"
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="235021898"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 10:23:11 -0800
IronPort-SDR: XEJVOZmCOa/839JnKYwT/oLJufh0dXgPgaq7Lupx3CEVEmrIiO5iR0gso1iLRK8ABiI3DDA0jU
 qBp4t6xdY3Og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,393,1599548400"; d="scan'208";a="373993011"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 04 Dec 2020 10:23:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Dec 2020 20:23:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Dec 2020 20:23:09 +0200
Message-Id: <20201204182309.14213-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Reduce duplicated switch cases in hpd
 code
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldp
dGggR0VOMTFfSE9UUExVR19DVExfTE9OR19ERVRFQ1QoKSwgU0hPVFBMVUdfQ1RMX0RESV9IUERf
TE9OR19ERVRFQ1QoKQphbmQgSUNQX1RDX0hQRF9MT05HX0RFVEVDVCgpIHRha2luZyB0aGUgaHBk
X3BpbiBhcyB0aGVpciBhcmd1bWVudAp3ZSBjYW4gcmVtb3ZlIHNvbWUgZHVwbGljYXRpb24gaW4g
dGhlIGxvbmdfZGV0ZWN0KCkgc3dpdGNoIHN0YXRlbWVudHMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCAxOSArKystLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYwppbmRleCBiMjQ1MTA5ZjczZTMuLjQ5MWY4MjUwMGQ2OCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCkBAIC0xMDQ0LDE3ICsxMDQ0LDEyIEBAIHN0YXRpYyBib29sIGdlbjExX3BvcnRf
aG90cGx1Z19sb25nX2RldGVjdChlbnVtIGhwZF9waW4gcGluLCB1MzIgdmFsKQogewogCXN3aXRj
aCAocGluKSB7CiAJY2FzZSBIUERfUE9SVF9UQzE6Ci0JCXJldHVybiB2YWwgJiBHRU4xMV9IT1RQ
TFVHX0NUTF9MT05HX0RFVEVDVChIUERfUE9SVF9UQzEpOwogCWNhc2UgSFBEX1BPUlRfVEMyOgot
CQlyZXR1cm4gdmFsICYgR0VOMTFfSE9UUExVR19DVExfTE9OR19ERVRFQ1QoSFBEX1BPUlRfVEMy
KTsKIAljYXNlIEhQRF9QT1JUX1RDMzoKLQkJcmV0dXJuIHZhbCAmIEdFTjExX0hPVFBMVUdfQ1RM
X0xPTkdfREVURUNUKEhQRF9QT1JUX1RDMyk7CiAJY2FzZSBIUERfUE9SVF9UQzQ6Ci0JCXJldHVy
biB2YWwgJiBHRU4xMV9IT1RQTFVHX0NUTF9MT05HX0RFVEVDVChIUERfUE9SVF9UQzQpOwogCWNh
c2UgSFBEX1BPUlRfVEM1OgotCQlyZXR1cm4gdmFsICYgR0VOMTFfSE9UUExVR19DVExfTE9OR19E
RVRFQ1QoSFBEX1BPUlRfVEM1KTsKIAljYXNlIEhQRF9QT1JUX1RDNjoKLQkJcmV0dXJuIHZhbCAm
IEdFTjExX0hPVFBMVUdfQ1RMX0xPTkdfREVURUNUKEhQRF9QT1JUX1RDNik7CisJCXJldHVybiB2
YWwgJiBHRU4xMV9IT1RQTFVHX0NUTF9MT05HX0RFVEVDVChwaW4pOwogCWRlZmF1bHQ6CiAJCXJl
dHVybiBmYWxzZTsKIAl9CkBAIC0xMDc4LDEzICsxMDczLDEwIEBAIHN0YXRpYyBib29sIGljcF9k
ZGlfcG9ydF9ob3RwbHVnX2xvbmdfZGV0ZWN0KGVudW0gaHBkX3BpbiBwaW4sIHUzMiB2YWwpCiB7
CiAJc3dpdGNoIChwaW4pIHsKIAljYXNlIEhQRF9QT1JUX0E6Ci0JCXJldHVybiB2YWwgJiBTSE9U
UExVR19DVExfRERJX0hQRF9MT05HX0RFVEVDVChIUERfUE9SVF9BKTsKIAljYXNlIEhQRF9QT1JU
X0I6Ci0JCXJldHVybiB2YWwgJiBTSE9UUExVR19DVExfRERJX0hQRF9MT05HX0RFVEVDVChIUERf
UE9SVF9CKTsKIAljYXNlIEhQRF9QT1JUX0M6Ci0JCXJldHVybiB2YWwgJiBTSE9UUExVR19DVExf
RERJX0hQRF9MT05HX0RFVEVDVChIUERfUE9SVF9DKTsKIAljYXNlIEhQRF9QT1JUX0Q6Ci0JCXJl
dHVybiB2YWwgJiBTSE9UUExVR19DVExfRERJX0hQRF9MT05HX0RFVEVDVChIUERfUE9SVF9EKTsK
KwkJcmV0dXJuIHZhbCAmIFNIT1RQTFVHX0NUTF9ERElfSFBEX0xPTkdfREVURUNUKHBpbik7CiAJ
ZGVmYXVsdDoKIAkJcmV0dXJuIGZhbHNlOwogCX0KQEAgLTEwOTQsMTcgKzEwODYsMTIgQEAgc3Rh
dGljIGJvb2wgaWNwX3RjX3BvcnRfaG90cGx1Z19sb25nX2RldGVjdChlbnVtIGhwZF9waW4gcGlu
LCB1MzIgdmFsKQogewogCXN3aXRjaCAocGluKSB7CiAJY2FzZSBIUERfUE9SVF9UQzE6Ci0JCXJl
dHVybiB2YWwgJiBJQ1BfVENfSFBEX0xPTkdfREVURUNUKEhQRF9QT1JUX1RDMSk7CiAJY2FzZSBI
UERfUE9SVF9UQzI6Ci0JCXJldHVybiB2YWwgJiBJQ1BfVENfSFBEX0xPTkdfREVURUNUKEhQRF9Q
T1JUX1RDMik7CiAJY2FzZSBIUERfUE9SVF9UQzM6Ci0JCXJldHVybiB2YWwgJiBJQ1BfVENfSFBE
X0xPTkdfREVURUNUKEhQRF9QT1JUX1RDMyk7CiAJY2FzZSBIUERfUE9SVF9UQzQ6Ci0JCXJldHVy
biB2YWwgJiBJQ1BfVENfSFBEX0xPTkdfREVURUNUKEhQRF9QT1JUX1RDNCk7CiAJY2FzZSBIUERf
UE9SVF9UQzU6Ci0JCXJldHVybiB2YWwgJiBJQ1BfVENfSFBEX0xPTkdfREVURUNUKEhQRF9QT1JU
X1RDNSk7CiAJY2FzZSBIUERfUE9SVF9UQzY6Ci0JCXJldHVybiB2YWwgJiBJQ1BfVENfSFBEX0xP
TkdfREVURUNUKEhQRF9QT1JUX1RDNik7CisJCXJldHVybiB2YWwgJiBJQ1BfVENfSFBEX0xPTkdf
REVURUNUKHBpbik7CiAJZGVmYXVsdDoKIAkJcmV0dXJuIGZhbHNlOwogCX0KLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
