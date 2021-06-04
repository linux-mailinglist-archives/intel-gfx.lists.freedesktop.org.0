Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A939BAAD
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 16:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5986EBFF;
	Fri,  4 Jun 2021 14:09:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 080036E043;
 Fri,  4 Jun 2021 14:09:12 +0000 (UTC)
IronPort-SDR: DnpoU4K6YyZZ+glynSZta2OvG7io/Csn+yY5d6k9aKfDJQu6Dg1NX5dujzH4jE087bSTa0PZNj
 8zJxMr/m9sUQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="289925108"
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="289925108"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 07:08:58 -0700
IronPort-SDR: KPXmf99+P6VoEJe2JhtYMp2eVCwwZ/bjSp6mBK0IyRlhdrdJP737/S8WvsEG+Xv+OfM3V1uOib
 RrtqHSZA0+TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,248,1616482800"; d="scan'208";a="412379056"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 04 Jun 2021 07:08:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Jun 2021 17:08:54 +0300
Date: Fri, 4 Jun 2021 17:08:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <YLoz9oZSzdE97OOj@intel.com>
References: <20210516171432.1734268-1-emil.l.velikov@gmail.com>
 <YKKmsbvTZBwCUiRu@intel.com>
 <CACvgo53H7GAjN_aFsCBOw+xtVbjcbR1q-U3vdgjT1KUPKoMkkg@mail.gmail.com>
 <YKOiN1EFXz7TfYyV@intel.com>
 <CACvgo52f_8XzkKpzAsgQ-E4VHn9md+rZVbTau5H40PPRVa4SdQ@mail.gmail.com>
 <CACvgo53nKn0nKL195FEJ6gRyTyA_23QnLnP-awPXOtv4DwDyiQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo53nKn0nKL195FEJ6gRyTyA_23QnLnP-awPXOtv4DwDyiQ@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: only disable default vga device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 kernel@collabora.com, ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdW4gMDQsIDIwMjEgYXQgMDI6NDc6MTZQTSArMDEwMCwgRW1pbCBWZWxpa292IHdy
b3RlOgo+IE9uIFdlZCwgMjYgTWF5IDIwMjEgYXQgMTc6MjEsIEVtaWwgVmVsaWtvdiA8ZW1pbC5s
LnZlbGlrb3ZAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBIaSBWaWxsZSwKPiA+Cj4gPiBPbiBU
dWUsIDE4IE1heSAyMDIxIGF0IDEyOjE3LCBWaWxsZSBTeXJqw6Rsw6QKPiA+IDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IE9uIFR1ZSwgTWF5IDE4LCAy
MDIxIGF0IDEyOjA5OjU2UE0gKzAxMDAsIEVtaWwgVmVsaWtvdiB3cm90ZToKPiA+ID4gPiBIaSBW
aWxsZSwKPiA+ID4gPgo+ID4gPiA+IE9uIE1vbiwgMTcgTWF5IDIwMjEgYXQgMTg6MjQsIFZpbGxl
IFN5cmrDpGzDpAo+ID4gPiA+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gU3VuLCBNYXkgMTYsIDIwMjEgYXQgMDY6MTQ6MzJQTSAr
MDEwMCwgRW1pbCBWZWxpa292IHdyb3RlOgo+ID4gPiA+ID4gPiBGcm9tOiBWaXZlayBEYXMgTW9o
YXBhdHJhIDx2aXZla0Bjb2xsYWJvcmEuY29tPgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGlz
IHBhdGNoIGlzIHRvIGRvIHdpdGggc2VhbWxlc3MgaGFuZG92ZXIsIGVnIHdoZW4gdGhlIHNlcXVl
bmNlIGlzCj4gPiA+ID4gPiA+IGJvb3Rsb2FkZXIg4oaSIHBseW1vdXRoIOKGkiBkZXNrdG9wLgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJdCBzd2l0Y2hlcyB0aGUgdmdhIGFyYml0ZXIgZnJvbSB0
aGUgIm90aGVyIiBHUFUgdG8gdGhlIGRlZmF1bHQgb25lCj4gPiA+ID4gPiA+IChpbnRlbCBpbiB0
aGlzIGNhc2UpLCBzbyB0aGUgZHJpdmVyIGNhbiBpc3N1ZSBzb21lIGlvKCkuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gSSBkb24ndCB1bmRlcnN0YW5kIHdoYXQgdGhpcyBjb21taXQgbWVzc2FnZSBpcyB0
cnlpbmcgdG8gc2F5Lgo+ID4gPiA+ID4KPiA+ID4gPiBCdW5jaCBvZiBjb250ZXh0IGlzIGxvc3Qg
ZHVlIHRvIHRoZSBwYXRjaCBhZ2UsIHNvIEknbSBub3QgMTAwJSBzdXJlIG9mCj4gPiA+ID4gdGhl
IGFjdHVhbCBoYXJkd2FyZSBzZXR1cCB3aGVyZSB0aGlzIG9jY3Vycy4KPiA+ID4gPiBEb2VzIHRo
ZSBmb2xsb3dpbmcgbWFrZSBzZW5zZT8KPiA+ID4gPgo+ID4gPiA+IEN1cnJlbnRseSBvbiBkdWFs
IEdQVSBzeXN0ZW1zLCB3ZSBkbyBub3QgZ2V0IHNlYW1sZXNzIGhhbmRvdmVyIGFzIHRoZQo+ID4g
PiA+IG91dHB1dCBmbGlja2VycyBkdXJpbmcgdGhlIHRyYW5zaXRpb24gYm9vdGxvYWRlciAtPiBw
bHltb3V0aCAtPgo+ID4gPiA+IGRlc2t0b3AuCj4gPiA+ID4gVGhpcyBoYXBwZW5zIGFzIGEgcmVz
dWx0IG9mIHN3aXRjaGluZyAodmlhIHRoZSBWR0EgYXJiaXRlcikgZnJvbSB0aGUKPiA+ID4gPiAi
b3RoZXIiIEdQVSBiYWNrIHRvIHRoZSBkZWZhdWx0IGk5MTUgb25lIGFuZCBpc3N1aW5nIGlvKCkg
Y29tbWFuZHMuCj4gPiA+Cj4gPiA+IEhtbS4gRG9lcyB0aGlzIHdvcms/Cj4gPiA+Cj4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2EuYwo+ID4gPiBAQCAtMjksNiAr
MjksOSBAQCB2b2lkIGludGVsX3ZnYV9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKPiA+ID4gICAgICAgICBpOTE1X3JlZ190IHZnYV9yZWcgPSBpbnRlbF92Z2FfY250
cmxfcmVnKGRldl9wcml2KTsKPiA+ID4gICAgICAgICB1OCBzcjE7Cj4gPiA+Cj4gPiA+ICsgICAg
ICAgaWYgKGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHZnYV9yZWcpICYgVkdBX0RJU1BfRElTQUJM
RSkKPiA+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsKPiA+ID4gKwo+ID4gPiAgICAgICAgIC8q
IFdhRW5hYmxlVkdBQWNjZXNzVGhyb3VnaElPUG9ydDpjdGcsZWxrLGlsayxzbmIsaXZiLHZsdixo
c3cgKi8KPiA+ID4gICAgICAgICB2Z2FfZ2V0X3VuaW50ZXJydXB0aWJsZShwZGV2LCBWR0FfUlNS
Q19MRUdBQ1lfSU8pOwo+ID4gPiAgICAgICAgIG91dGIoU1IwMSwgVkdBX1NSX0lOREVYKTsKPiA+
ID4KPiA+IFdhcyBhYmxlIHRvIHJlcGxpY2F0ZSB0aGUgaXNzdWUgc29tZXdoYXQgYW5kIHRoZSBh
Ym92ZSBkb2VzIGhlbHAgcXVpdGUgYSBsb3QuCj4gPiBGZWVsIGZyZWUgdG8gYWRkIG15Ogo+ID4g
UmV2aWV3ZWQtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4g
PiBUZXN0ZWQtYnk6IEVtaWwgVmVsaWtvdiA8ZW1pbC52ZWxpa292QGNvbGxhYm9yYS5jb20+Cj4g
Pgo+IEh1bWJsZSBwb2tlLgo+IAo+IENhbm5vdCBzZWUgdGhpcyBwYXRjaCBpbiB0aGUgZHJtLW1p
c2Mgb3IgZHJtLWludGVsIHRyZWVzLiBJcyB0aGVyZQo+IGFueXRoaW5nIEkgZG8gdG8gaGVscCBt
b3ZlIGl0IGZvcndhcmQ/CgpDYW4geW91IGp1c3QgcmVzcGluIHRoZSBwYXRjaCB3aXRoIHRoaXM/
CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
