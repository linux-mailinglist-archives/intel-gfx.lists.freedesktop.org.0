Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F10E794991
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 18:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A30489DBF;
	Mon, 19 Aug 2019 16:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ECA489DBF
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 16:14:40 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 09:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="189577345"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Aug 2019 09:14:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Aug 2019 19:14:37 +0300
Date: Mon, 19 Aug 2019 19:14:37 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190819161437.GX5942@intel.com>
References: <20190808133741.10113-1-imre.deak@intel.com>
 <20190808162547.7009-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808162547.7009-1-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Fix HW readout for crtc_clock
 in HDMI mode
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

T24gVGh1LCBBdWcgMDgsIDIwMTkgYXQgMDc6MjU6NDdQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IFRoZSBjb252ZXJzaW9uIGR1cmluZyBIRE1JIEhXIHJlYWRvdXQgZnJvbSBwb3J0X2Nsb2Nr
IHRvIGNydGNfY2xvY2sgd2FzCj4gbWlzc2VkIHdoZW4gSERNSSAxMGJwYyBzdXBwb3J0IHdhcyBh
ZGRlZCwgc28gZml4IHRoYXQuCj4gCj4gdjI6Cj4gLSBVbnNjcmV3IHRoZSBub24tSERNSSBjYXNl
Lgo+IAo+IEZpeGVzOiBjZDllMTFhOGJmMjUgKCJkcm0vaTkxNS9pY2w6IEFkZCAxMC1iaXQgc3Vw
cG9ydCBmb3IgaGRtaSIpCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwOTU5Mwo+IENjOiBSYWRoYWtyaXNobmEgU3JpcGFkYSA8cmFkaGFr
cmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kZGkuYyAgICAgICAgICAgfCA0ICsrLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4IGFhNWIyNDQwNTEzYy4uN2M3M2QxZjk3NGZjIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gQEAgLTE0Njcs
OCArMTQ2Nyw4IEBAIHN0YXRpYyB2b2lkIGRkaV9kb3RjbG9ja19nZXQoc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKnBpcGVfY29uZmlnKQo+ICAJZWxzZSBpZiAoaW50ZWxfY3J0Y19oYXNfZHBfZW5j
b2RlcihwaXBlX2NvbmZpZykpCj4gIAkJZG90Y2xvY2sgPSBpbnRlbF9kb3RjbG9ja19jYWxjdWxh
dGUocGlwZV9jb25maWctPnBvcnRfY2xvY2ssCj4gIAkJCQkJCSAgICAmcGlwZV9jb25maWctPmRw
X21fbik7Cj4gLQllbHNlIGlmIChwaXBlX2NvbmZpZy0+aGFzX2hkbWlfc2luayAmJiBwaXBlX2Nv
bmZpZy0+cGlwZV9icHAgPT0gMzYpCj4gLQkJZG90Y2xvY2sgPSBwaXBlX2NvbmZpZy0+cG9ydF9j
bG9jayAqIDIgLyAzOwo+ICsJZWxzZSBpZiAocGlwZV9jb25maWctPmhhc19oZG1pX3NpbmsgJiYg
cGlwZV9jb25maWctPnBpcGVfYnBwID4gMjQpCj4gKwkJZG90Y2xvY2sgPSBwaXBlX2NvbmZpZy0+
cG9ydF9jbG9jayAqIDI0IC8gcGlwZV9jb25maWctPnBpcGVfYnBwOwo+ICAJZWxzZQo+ICAJCWRv
dGNsb2NrID0gcGlwZV9jb25maWctPnBvcnRfY2xvY2s7Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXggYTg4ZWM5
YWE5Y2EwLi4yMWNiN2VlMzRkNDUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IEBAIC04NjYsNyArODY2LDcgQEAgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgewo+ICAKPiAgCS8qCj4gIAkgKiBGcmVxdWVuY2UgdGhlIGRw
bGwgZm9yIHRoZSBwb3J0IHNob3VsZCBydW4gYXQuIERpZmZlcnMgZnJvbSB0aGUKPiAtCSAqIGFk
anVzdGVkIGRvdGNsb2NrIGUuZy4gZm9yIERQIG9yIDEyYnBjIGhkbWkgbW9kZS4gVGhpcyBpcyBh
bHNvCj4gKwkgKiBhZGp1c3RlZCBkb3RjbG9jayBlLmcuIGZvciBEUCBvciAxMC8xMmJwYyBoZG1p
IG1vZGUuIFRoaXMgaXMgYWxzbwo+ICAJICogYWxyZWFkeSBtdWx0aXBsaWVkIGJ5IHBpeGVsX211
bHRpcGxpZXIuCj4gIAkgKi8KPiAgCWludCBwb3J0X2Nsb2NrOwo+IC0tIAo+IDIuMTcuMQoKLS0g
ClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
