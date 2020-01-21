Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BEF1442D1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:11:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCA26EDBD;
	Tue, 21 Jan 2020 17:11:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EBC6EDBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 17:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 09:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,346,1574150400"; d="scan'208";a="280141992"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 21 Jan 2020 09:11:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2020 19:11:09 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 19:10:52 +0200
Message-Id: <20200121171100.4370-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
References: <20200121171100.4370-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/11] drm/i915/crt: Configure connector->polled
 and encoder->hpd_pin consistently
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
dCdzIG1ha2Ugc3VyZSBlbmNvZGVyLT5ocGRfcGluIGFuZCBjb25uZWN0b3ItPnBvbGxlZCBhcmUg
bWlycm9yCmltYWdlcyBvZiBlYWNoIG90aGVyICh3aGVuIHdlIHdhbnQgdG8gdXNlIHBvbGxpbmcp
LiBUaGUgb3RoZXIKcG90ZW50aWFsbHkgcG9sbGVkIGNvbm5lY3RvcnMgKHNkdm8gYW5kIHR2KSBh
bHJlYWR5IGdldCB0aGlzIHJpZ2h0LgoKQWxzbyBudWtlIHRoZSBydWR1bmRhbnQgZm9yY2VfaG90
cGx1Z19yZXF1aXJlZCBpbml0aWFsaXphdGlvbgoodGhlIHRoaW5nIGlzIGt6YWxsb2MoKWVkKS4K
ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyB8IDEw
ICsrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMKaW5kZXggZjk3NmI4
MDBiMjQ1Li5iYThmOTJjMWVhZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3J0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jcnQuYwpAQCAtMTAyNyw2ICsxMDI3LDggQEAgdm9pZCBpbnRlbF9jcnRfaW5pdChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJICAgICFkbWlfY2hlY2tfc3lzdGVtKGludGVs
X3NwdXJpb3VzX2NydF9kZXRlY3QpKSB7CiAJCWNydC0+YmFzZS5ocGRfcGluID0gSFBEX0NSVDsK
IAkJY3J0LT5iYXNlLmhvdHBsdWcgPSBpbnRlbF9lbmNvZGVyX2hvdHBsdWc7CisJfSBlbHNlIHsK
KwkJaW50ZWxfY29ubmVjdG9yLT5wb2xsZWQgPSBEUk1fQ09OTkVDVE9SX1BPTExfQ09OTkVDVDsK
IAl9CiAKIAlpZiAoSEFTX0RESShkZXZfcHJpdikpIHsKQEAgLTEwNTcsMTQgKzEwNTksNiBAQCB2
b2lkIGludGVsX2NydF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAog
CWRybV9jb25uZWN0b3JfaGVscGVyX2FkZChjb25uZWN0b3IsICZpbnRlbF9jcnRfY29ubmVjdG9y
X2hlbHBlcl9mdW5jcyk7CiAKLQlpZiAoIUk5MTVfSEFTX0hPVFBMVUcoZGV2X3ByaXYpKQotCQlp
bnRlbF9jb25uZWN0b3ItPnBvbGxlZCA9IERSTV9DT05ORUNUT1JfUE9MTF9DT05ORUNUOwotCi0J
LyoKLQkgKiBDb25maWd1cmUgdGhlIGF1dG9tYXRpYyBob3RwbHVnIGRldGVjdGlvbiBzdHVmZgot
CSAqLwotCWNydC0+Zm9yY2VfaG90cGx1Z19yZXF1aXJlZCA9IGZhbHNlOwotCiAJLyoKIAkgKiBU
T0RPOiBmaW5kIGEgcHJvcGVyIHdheSB0byBkaXNjb3ZlciB3aGV0aGVyIHdlIG5lZWQgdG8gc2V0
IHRoZSB0aGUKIAkgKiBwb2xhcml0eSBhbmQgbGluayByZXZlcnNhbCBiaXRzIG9yIG5vdCwgaW5z
dGVhZCBvZiByZWx5aW5nIG9uIHRoZQotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
