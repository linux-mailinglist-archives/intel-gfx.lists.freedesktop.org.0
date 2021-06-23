Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C69E3B1BF0
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 16:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C426E8F1;
	Wed, 23 Jun 2021 14:03:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 112336E8F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 14:03:27 +0000 (UTC)
IronPort-SDR: jFZETIChxRWCHGcJfkosdoSQ/NdtiMA+p2TCL9sAcBa/zHbZBP1DFLdoNf5UuV37mobnVfZYOT
 iw/YpdsGw8dQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="194571877"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="194571877"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:02:36 -0700
IronPort-SDR: F2J6hRldceBoumqHW94HTbsxqlMoZM1fhCOuo92d6ysstzkJ0EZwyssRGDx6sh4idPL2BNTHrq
 QGw1Ntsi/N4A==
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="453045237"
Received: from huynhn-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.35.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 07:02:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210608073603.2408-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210608073603.2408-1-ville.syrjala@linux.intel.com>
 <20210608073603.2408-15-ville.syrjala@linux.intel.com>
Date: Wed, 23 Jun 2021 17:02:32 +0300
Message-ID: <87wnqku1af.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 14/17] drm/i915: Fix ehl edp hbr2 vswing
 table
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

T24gVHVlLCAwOCBKdW4gMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBFSEwgaXMgc3VwcG9zZWQgdG8gdXNlIHNwZWNpYWwgYnVmIHRy
YW5zIHZhbHVlcyBmb3IgZURQIEhCUjIrLgo+IEFkZCBzdWNoIGEgdGFibGUuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoK
UmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+
ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCAyOCArKysr
KysrKysrKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpX2J1Zl90cmFucy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGlfYnVmX3RyYW5zLmMKPiBpbmRleCA2ZTJiNmM4NTFmYjQuLjkzOThhYTYyNTg1YiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJh
bnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90
cmFucy5jCj4gQEAgLTY3Miw2ICs2NzIsMjUgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
ZGlfYnVmX3RyYW5zIGVobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcCA9IHsKPiAgCS5u
dW1fZW50cmllcyA9IEFSUkFZX1NJWkUoX2VobF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19k
cCksCj4gIH07Cj4gIAo+ICtzdGF0aWMgY29uc3QgdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19l
bnRyeSBfZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyW10gPSB7Cj4gKwkJ
CQkJCQkvKiBOVCBtViBUcmFucyBtViBkYiAgICAqLwo+ICsJeyAuY25sID0geyAweDgsIDB4N0Ys
IDB4M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiAyMDAgICAyMDAgICAgICAwLjAgICAqLwo+ICsJeyAu
Y25sID0geyAweDgsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiAyMDAgICAyNTAgICAg
ICAxLjkgICAqLwo+ICsJeyAuY25sID0geyAweDEsIDB4N0YsIDB4M0QsIDB4MDAsIDB4MDIgfSB9
LAkvKiAyMDAgICAzMDAgICAgICAzLjUgICAqLwo+ICsJeyAuY25sID0geyAweEEsIDB4MzUsIDB4
MzksIDB4MDAsIDB4MDYgfSB9LAkvKiAyMDAgICAzNTAgICAgICA0LjkgICAqLwo+ICsJeyAuY25s
ID0geyAweDgsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiAyNTAgICAyNTAgICAgICAw
LjAgICAqLwo+ICsJeyAuY25sID0geyAweDEsIDB4N0YsIDB4M0MsIDB4MDAsIDB4MDMgfSB9LAkv
KiAyNTAgICAzMDAgICAgICAxLjYgICAqLwo+ICsJeyAuY25sID0geyAweEEsIDB4MzUsIDB4Mzks
IDB4MDAsIDB4MDYgfSB9LAkvKiAyNTAgICAzNTAgICAgICAyLjkgICAqLwo+ICsJeyAuY25sID0g
eyAweDEsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiAzMDAgICAzMDAgICAgICAwLjAg
ICAqLwo+ICsJeyAuY25sID0geyAweEEsIDB4MzUsIDB4MzgsIDB4MDAsIDB4MDcgfSB9LAkvKiAz
MDAgICAzNTAgICAgICAxLjMgICAqLwo+ICsJeyAuY25sID0geyAweEEsIDB4MzUsIDB4M0YsIDB4
MDAsIDB4MDAgfSB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLwo+ICt9Owo+ICsKPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zIGVobF9jb21ib19waHlfZGRpX3Ry
YW5zbGF0aW9uc19lZHBfaGJyMiA9IHsKPiArCS5lbnRyaWVzID0gX2VobF9jb21ib19waHlfZGRp
X3RyYW5zbGF0aW9uc19lZHBfaGJyMiwKPiArCS5udW1fZW50cmllcyA9IEFSUkFZX1NJWkUoX2Vo
bF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMiksCj4gK307Cj4gKwo+ICBzdGF0
aWMgY29uc3QgdW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSBfanNsX2NvbWJvX3BoeV9k
ZGlfdHJhbnNsYXRpb25zX2VkcF9oYnJbXSA9IHsKPiAgCQkJCQkJCS8qIE5UIG1WIFRyYW5zIG1W
IGRiICAgICovCj4gIAl7IC5jbmwgPSB7IDB4OCwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9IH0s
CS8qIDIwMCAgIDIwMCAgICAgIDAuMCAgICovCj4gQEAgLTEzODQsOCArMTQwMywxMyBAQCBlaGxf
Z2V0X2NvbWJvX2J1Zl90cmFuc19lZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4g
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJh
c2UuZGV2KTsKPiAgCj4gIAlpZiAoZGV2X3ByaXYtPnZidC5lZHAubG93X3Zzd2luZykgewo+IC0J
CXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlv
bnNfZWRwX2hicjIsCj4gLQkJCQkJICAgbl9lbnRyaWVzKTsKPiArCQlpZiAoY3J0Y19zdGF0ZS0+
cG9ydF9jbG9jayA+IDI3MDAwMCkgewo+ICsJCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygm
ZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyLAo+ICsJCQkJCQkgICBuX2Vu
dHJpZXMpOwo+ICsJCX0gZWxzZSB7Cj4gKwkJCXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZp
Y2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjIsCj4gKwkJCQkJCSAgIG5fZW50
cmllcyk7Cj4gKwkJfQo+ICAJfQo+ICAKPiAgCXJldHVybiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFu
c19kcChlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOwoKLS0gCkphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
