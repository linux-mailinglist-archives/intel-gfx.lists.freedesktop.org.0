Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3F6103782
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 11:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12926E1A7;
	Wed, 20 Nov 2019 10:28:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 651086E1A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 10:28:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 02:28:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="204781190"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 20 Nov 2019 02:28:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Nov 2019 12:28:33 +0200
Date: Wed, 20 Nov 2019 12:28:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stuart Summers <stuart.summers@intel.com>
Message-ID: <20191120102833.GF1208@intel.com>
References: <20191120011016.18049-1-stuart.summers@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120011016.18049-1-stuart.summers@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not initialize display BW when
 display not available
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBOb3YgMTksIDIwMTkgYXQgMDU6MTA6MTZQTSAtMDgwMCwgU3R1YXJ0IFN1bW1lcnMg
d3JvdGU6Cj4gV2hlbiBkaXNwbGF5IGlzIG5vdCBhdmFpbGFibGUsIGZpbmRpbmcgdGhlIG1lbW9y
eSBiYW5kd2lkdGggYXZhaWxhYmxlCj4gZm9yIGRpc3BsYXkgaXMgbm90IHVzZWZ1bC4gU2tpcCB0
aGlzIHNlcXVlbmNlIGhlcmUuCj4gCj4gUmVmZXJlbmNlczogSFNERVMgMTIwOTk3ODI1NQo+IAo+
IFNpZ25lZC1vZmYtYnk6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDMgKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jCj4gaW5kZXggM2Y2ZTI5ZjYxMzIzLi44NmU3NWU4NTgwMDgg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jCj4gQEAgLTI2NCw2
ICsyNjQsOSBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGljbF9tYXhfYncoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAo+ICAKPiAgdm9pZCBpbnRlbF9id19pbml0X2h3KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+ICsJaWYgKCFIQVNfRElTUExBWShkZXZf
cHJpdikpCj4gKwkJcmV0dXJuOwo+ICsKCkl0IG1pZ2h0IG1ha2Ugc2Vuc2UgdG8gY2F0Y2ggdGhp
cyBzb21ld2hlcmUgaGlnaGVyIHVwLiBCdXQgc2VlbXMgT0sgZm9yCm5vdyB1bnRpbCBwZW9wbGUg
ZmlndXJlIG91dCB3aGF0IEhBU19ESVNQTEFZIGFjdHVhbGx5IG1lYW5zLgoKUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cgo+ICAJaWYg
KElTX0dFTihkZXZfcHJpdiwgMTIpKQo+ICAJCWljbF9nZXRfYndfaW5mbyhkZXZfcHJpdiwgJnRn
bF9zYV9pbmZvKTsKPiAgCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKQo+IC0tIAo+IDIu
MjIuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
