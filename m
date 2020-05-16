Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6931D628A
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 18:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C64F6E1E5;
	Sat, 16 May 2020 16:15:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819776E1E5
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 16:15:48 +0000 (UTC)
IronPort-SDR: b0BI7J5NBl8o7o7n+GrptmeVpouIss06+w0V2WQKhCTVVw5CCgfwVJ+ws6eR2phFQpYTRjyGAw
 dJkZc7YVzLiA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2020 09:15:48 -0700
IronPort-SDR: eJtONBFdEdW9GpgkoPrLJ+yiTe619KmiVHUMVO0EaA876zBScVgJjwowT85PwAGASyh5nynhGe
 fszdGifwZKzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,398,1583222400"; d="scan'208";a="252449609"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 16 May 2020 09:15:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 16 May 2020 19:15:42 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 16 May 2020 19:15:42 +0300
Message-Id: <20200516161542.8032-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix dbuf slice mask when turning off
 all the pipes
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGRidWYgc2xpY2UgY29tcHV0YXRpb24gb25seSBoYXBwZW5zIHdoZW4gdGhlcmUg
YXJlCmFjdGl2ZSBwaXBlcy4gSWYgd2UgYXJlIHR1cm5pbmcgb2ZmIGFsbCB0aGUgcGlwZXMgd2Ug
anVzdCBsZWF2ZQp0aGUgZGJ1ZiBzbGljZSBtYXNrIGF0IGl0J3MgcHJldmlvdXMgdmFsdWUsIHdo
aWNoIG1heSBiZSBzb21ldGhpbmcKb3RoZXIgdGhhdCBCSVQoUzEpLiBJZiBydW50aW1lIFBNIHdp
bGwga2ljayBpbiBpdCB3aWxsIGhvd2V2ZXIKdHVybiBvZmYgZXZlcnl0aGluZyBidXQgUzEuIFRo
ZW4gb24gdGhlIG5leHQgYXRvbWljIGNvbW1pdCAoaWYKdGhlIG5ldyBkYnVmIHNsaWNlIG1hc2sg
bWF0Y2hlcyB0aGUgc3RhbGUgdmFsdWUgd2UgbGVmdCBiZWhpbmQpCnRoZSBjb2RlIHdpbGwgbm90
IHR1cm4gb24gdGhlIG90aGVyIHNsaWNlcyB3ZSBub3cgbmVlZC4gVGhpcyB3aWxsCmxlYWQgdG8g
dW5kZXJydW5zIGFzIHRoZSBwbGFuZXMgYXJlIHRyeWluZyB0byB1c2UgYSBkYnVmIHNsaWNlCnRo
YXQncyBub3QgcG93ZXJlZCB1cC4KClRvIHdvcmsgYXJvdW5kIGxldCdzIGp1c3QganVzdCBleHBs
aWNpdGx5IHNldCB0aGUgZGJ1ZiBzbGljZSBtYXNrCnRvIEJJVChTMSkgd2hlbiB3ZSBhcmUgdHVy
bmluZyBvZmYgYWxsIHRoZSBwaXBlcy4gUmVhbGx5IHRoZSBjb2RlCnNob3VsZCBqdXN0IGNhbGN1
bGF0ZSB0aGlzIHN0dWZmIHRoZSBzYW1lIHdheSByZWdhcmRsZXNzIHdoZXRoZXIKdGhlIHBpcGVz
IGFyZSBvbiBvciBvZmYsIGJ1dCB3ZSdyZSBub3QgcXVpdGUgdGhlcmUgeWV0IChuZWVkIGEKYml0
IG1vcmUgd29yayBvbiB0aGUgZGJ1ZiBzdGF0ZSBmb3IgdGhhdCkuCgpDYzogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KRml4ZXM6IDNjZjQzY2RjNjNmYiAoImRybS9pOTE1
OiBJbnRyb2R1Y2UgcHJvcGVyIGRidWYgc3RhdGUiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMgfCAxNiArKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGEyMWUzNmVkMWE3
Ny4uNGE1MjNkOGI4ODFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQwNzEsNiArNDA3
MSwyMiBAQCBza2xfZGRiX2dldF9waXBlX2FsbG9jYXRpb25fbGltaXRzKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkqbnVtX2FjdGl2ZSA9IGh3ZWlnaHQ4KGFjdGl2ZV9waXBl
cyk7CiAKIAlpZiAoIWNydGNfc3RhdGUtPmh3LmFjdGl2ZSkgeworCQkvKgorCQkgKiBGSVhNRSBo
YWNrIHRvIG1ha2Ugc3VyZSB3ZSBjb21wdXRlIHRoaXMgc2Vuc2libHkgd2hlbgorCQkgKiB0dXJu
aW5nIG9mZiBhbGwgdGhlIHBpcGVzLiBPdGhlcndpc2Ugd2UgbGVhdmUgaXQgYXQKKwkJICogd2hh
dGV2ZXIgd2UgaGFkIHByZXZpb3VzbHksIGFuZCB0aGVuIHJ1bnRpbWUgUE0gd2lsbAorCQkgKiBt
ZXNzIGl0IHVwIGJ5IHR1cm5pbmcgb2ZmIGFsbCBidXQgUzEuIFJlbW92ZSB0aGlzCisJCSAqIG9u
Y2UgdGhlIGRidWYgc3RhdGUgY29tcHV0YXRpb24gZmxvdyBiZWNvbWVzIHNhbmUuCisJCSAqLwor
CQlpZiAoYWN0aXZlX3BpcGVzID09IDApIHsKKwkJCW5ld19kYnVmX3N0YXRlLT5lbmFibGVkX3Ns
aWNlcyA9IEJJVChEQlVGX1MxKTsKKworCQkJaWYgKG9sZF9kYnVmX3N0YXRlLT5lbmFibGVkX3Ns
aWNlcyAhPSBuZXdfZGJ1Zl9zdGF0ZS0+ZW5hYmxlZF9zbGljZXMpIHsKKwkJCQlyZXQgPSBpbnRl
bF9hdG9taWNfc2VyaWFsaXplX2dsb2JhbF9zdGF0ZSgmbmV3X2RidWZfc3RhdGUtPmJhc2UpOwor
CQkJCWlmIChyZXQpCisJCQkJCXJldHVybiByZXQ7CisJCQl9CisJCX0KIAkJYWxsb2MtPnN0YXJ0
ID0gMDsKIAkJYWxsb2MtPmVuZCA9IDA7CiAJCXJldHVybiAwOwotLSAKMi4yNi4yCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
