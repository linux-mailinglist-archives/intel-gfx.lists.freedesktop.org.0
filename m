Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7E94BDE3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 18:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B50F06E445;
	Wed, 19 Jun 2019 16:18:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D0536E43D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 16:18:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 09:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="153851171"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 19 Jun 2019 09:18:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jun 2019 19:18:52 +0300
Date: Wed, 19 Jun 2019 19:18:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190619161852.GA5942@intel.com>
References: <20190618142108.9978-1-ville.syrjala@linux.intel.com>
 <20190618142108.9978-4-ville.syrjala@linux.intel.com>
 <156086971035.31375.13192884909397662143@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156086971035.31375.13192884909397662143@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Initialize drm_driver vblank
 funcs at compile time
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

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMDM6NTU6MTBQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0wNi0xOCAxNToyMTowOCkKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IE1vdmUgdGhlIC5nZXRfdmJsYW5rX3RpbWVzdGFtcCgpIGFuZCAuZ2V0X3NjYW5vdXRfcG9z
aXRpb24oKQo+ID4gaW5pdGlhbGl6YXRpb24gdG8gaGFwcGVuIGF0IGNvbXBpbGUgdGltZS4gTm8g
cG9pbnQgaW4gZGVsYXlpbmcKPiA+IGl0IHNpbmNlIHdlIGFsd2F5cyBhc3NpZ24gdGhlIHNhbWUg
ZnVuY3Rpb25zLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyB8ICAzICsrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMgfCAxMSArKysrLS0tLS0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmgg
fCAgNSArKysrKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxl
dGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiBpbmRleCBlYTZiMDYx
MDlkNWEuLjE3OGU5ODcyYjkwNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+
IEBAIC0zMjE2LDYgKzMyMTYsOSBAQCBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyID0g
ewo+ID4gICAgICAgICAuZ2VtX3ByaW1lX2V4cG9ydCA9IGk5MTVfZ2VtX3ByaW1lX2V4cG9ydCwK
PiA+ICAgICAgICAgLmdlbV9wcmltZV9pbXBvcnQgPSBpOTE1X2dlbV9wcmltZV9pbXBvcnQsCj4g
PiAgCj4gPiArICAgICAgIC5nZXRfdmJsYW5rX3RpbWVzdGFtcCA9IGRybV9jYWxjX3ZibHRpbWVz
dGFtcF9mcm9tX3NjYW5vdXRwb3MsCj4gPiArICAgICAgIC5nZXRfc2Nhbm91dF9wb3NpdGlvbiA9
IGk5MTVfZ2V0X2NydGNfc2Nhbm91dHBvcywKPiAKPiBPbmUgbWlnaHQgc3VnZ2VzdCBpbnRlbF9n
ZXRfY3J0Y19zY2Fub3V0cG9zLCBhbmQgYSBwdXNoIGZvciBpdCB0byBiZQo+IHBhc3NlZCBkcm1f
Y3J0YyBpbnN0ZWFkIG9mIGRldiArIHBpcGUuCgpJIHN1cHBvc2UuIFRoZXJlJ3MgYWxzbyBhIEZJ
WE1FIGFib3V0IG1vdmluZyBpdCB0byB0aGUgY3J0Y19oZWxwZXIgZnVuY3MKaW5zdGVhZC4gT3Ig
Y291bGQganVzdCByZW1vdmUgdGhlIHZmdW5jIGVudGlyZWx5IGFuZCBoYXZlIGVhY2ggZHJpdmVy
CnBhc3MgaXQgdG8gZHJtX2NhbGNfdmJsdGltZXN0YW1wX2Zyb21fc2Nhbm91dHBvcygpLiBFaXRo
ZXIgdGhhdCBvcgplbGltaW5hdGUgdGhlIC5nZXRfdmJsYW5rX3RpbWVzdGFtcCgpIHZmdW5jIGlu
c3RlYWQgc2luY2UgSSBiZWxpZXZlCmV2ZXJ5b25lIHdobyBoYXMgdGhhdCB1c2VzIGRybV9jYWxj
X3ZibHRpbWVzdGFtcF9mcm9tX3NjYW5vdXRwb3MoKS4KCkFueXdheXMsIGxvb2tzIGxpa2UgdGhl
cmUncyBlbm91Z2ggbWF0ZXJpYWwgdGhlcmUgZm9yIGEgZ29vZCBmZXcgaG91cnMKb2YgY3Vyc2lu
Zy4KCj4gCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IC1DaHJpcwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
