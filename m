Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5579AF1C66
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 18:23:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9868E6EE0C;
	Wed,  6 Nov 2019 17:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E06456EE0C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 17:23:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 09:23:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="228362733"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 06 Nov 2019 09:23:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Nov 2019 19:23:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Nov 2019 19:23:49 +0200
Message-Id: <20191106172349.11987-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Don't oops in dumb_create ioctl if we
 have no crtcs
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugc3VyZSB3ZSBoYXZlIGEgY3J0YyBiZWZvcmUgcHJvYmluZyBpdHMgcHJpbWFyeSBwbGFuZSdz
Cm1heCBzdHJpZGUuIEluaXRpYWxseSBJIHRob3VnaHQgd2UgY2FuJ3QgZ2V0IHRoaXMgZmFyIHdp
dGhvdXQKY3J0Y3MsIGJ1dCBsb29rcyBsaWtlIHdlIGNhbiB2aWEgdGhlIGR1bWJfY3JlYXRlIGlv
Y3RsLgoKTm90IHN1cmUgaWYgd2Ugc2hvdWxkbid0IGRpc2FibGUgZHVtYiBidWZmZXIgc3VwcG9y
dCBlbnRpcmVseQp3aGVuIHdlIGhhdmUgbm8gY3J0Y3MsIGJ1dCB0aGF0IHdvdWxkIHJlcXVpcmUg
c29tZSBhbW91bnQgb2Ygd29yawphcyB0aGUgb25seSB0aGluZyBjdXJyZW50bHkgYmVpbmcgY2hl
Y2tlZCBpcyBkZXYtPmRyaXZlci0+ZHVtYl9jcmVhdGUKd2hpY2ggd2UnZCBoYXZlIHRvIGNvbnZl
cnQgdG8gc29tZSBkZXZpY2Ugc3BlY2lmaWMgZHluYW1pYyB0aGluZy4KCkNjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnClJlcG9ydGVkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KRml4ZXM6IGFhNWNhOGI3NDIxYyAoImRybS9pOTE1OiBBbGlnbiBkdW1i
IGJ1ZmZlciBzdHJpZGUgdG8gNGsgdG8gYWxsb3cgZm9yIGd0dCByZW1hcHBpbmciKQpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMyArKysK
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDFmOTM4NjBmYjg5Ny4uMzMxMDMwNzY1Y2E5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MjU0Myw2ICsyNTQzLDkgQEAgdTMyIGludGVsX3BsYW5lX2ZiX21heF9zdHJpZGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCSAqIHRoZSBoaWdoZXN0IHN0cmlkZSBsaW1pdHMg
b2YgdGhlbSBhbGwuCiAJICovCiAJY3J0YyA9IGludGVsX2dldF9jcnRjX2Zvcl9waXBlKGRldl9w
cml2LCBQSVBFX0EpOworCWlmICghY3J0YykKKwkJcmV0dXJuIDA7CisKIAlwbGFuZSA9IHRvX2lu
dGVsX3BsYW5lKGNydGMtPmJhc2UucHJpbWFyeSk7CiAKIAlyZXR1cm4gcGxhbmUtPm1heF9zdHJp
ZGUocGxhbmUsIHBpeGVsX2Zvcm1hdCwgbW9kaWZpZXIsCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
