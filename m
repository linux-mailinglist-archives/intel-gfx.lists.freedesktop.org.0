Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73917FE3AD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 18:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF0D6E9C7;
	Fri, 15 Nov 2019 17:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A43256E9D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 17:11:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:11:30 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="379986705"
Received: from unknown (HELO ldmartin-desk1) ([10.24.10.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 09:11:29 -0800
Date: Fri, 15 Nov 2019 09:11:19 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191115171119.ehhg5tf6l2uggpgc@ldmartin-desk1>
References: <20191024122138.25065-1-ville.syrjala@linux.intel.com>
 <20191024122138.25065-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024122138.25065-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Add CHICKEN_TRANS_D
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMDM6MjE6MzdQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPgo+QWRkIENISUNLRU5fVFJBTlMgZGVmaW5pdGlvbiBmb3IgdHJhbnNjb2RlciBELgo+
Cj5TaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgoKTHVjYXMgRGUgTWFyY2hpCgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCB8IDQgKysrLQo+IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj5pbmRleCAzODA3MWQwYzgwMjAuLjUw
YzJmYTBmMmNhYiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPkBAIC03NjIwLDExICs3NjIw
LDEzIEBAIGVudW0gewo+ICNkZWZpbmUgX0NISUNLRU5fVFJBTlNfQgkweDQyMGM0Cj4gI2RlZmlu
ZSBfQ0hJQ0tFTl9UUkFOU19DCTB4NDIwYzgKPiAjZGVmaW5lIF9DSElDS0VOX1RSQU5TX0VEUAkw
eDQyMGNjCj4rI2RlZmluZSBfQ0hJQ0tFTl9UUkFOU19ECTB4NDIwZDgKPiAjZGVmaW5lIENISUNL
RU5fVFJBTlModHJhbnMpCV9NTUlPKF9QSUNLKCh0cmFucyksIFwKPiAJCQkJCSAgICBbVFJBTlND
T0RFUl9FRFBdID0gX0NISUNLRU5fVFJBTlNfRURQLCBcCj4gCQkJCQkgICAgW1RSQU5TQ09ERVJf
QV0gPSBfQ0hJQ0tFTl9UUkFOU19BLCBcCj4gCQkJCQkgICAgW1RSQU5TQ09ERVJfQl0gPSBfQ0hJ
Q0tFTl9UUkFOU19CLCBcCj4tCQkJCQkgICAgW1RSQU5TQ09ERVJfQ10gPSBfQ0hJQ0tFTl9UUkFO
U19DKSkKPisJCQkJCSAgICBbVFJBTlNDT0RFUl9DXSA9IF9DSElDS0VOX1RSQU5TX0MsIFwKPisJ
CQkJCSAgICBbVFJBTlNDT0RFUl9EXSA9IF9DSElDS0VOX1RSQU5TX0QpKQo+ICNkZWZpbmUgIFZT
Q19EQVRBX1NFTF9TT0ZUV0FSRV9DT05UUk9MCSgxIDw8IDI1KSAvKiBHTEsgYW5kIENOTCsgKi8K
PiAjZGVmaW5lICBERElfVFJBSU5JTkdfT1ZFUlJJREVfRU5BQkxFCSgxIDw8IDE5KQo+ICNkZWZp
bmUgIERESV9UUkFJTklOR19PVkVSUklERV9WQUxVRQkoMSA8PCAxOCkKPi0tIAo+Mi4yMS4wCj4K
Pl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
