Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 582D736759
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 00:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372AE895C4;
	Wed,  5 Jun 2019 22:15:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0E62895C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 22:15:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 15:15:22 -0700
X-ExtLoop1: 1
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2019 15:15:22 -0700
Date: Wed, 5 Jun 2019 15:15:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190605221522.GW13184@mdroper-desk.amr.corp.intel.com>
References: <20190605211832.23945-1-matthew.d.roper@intel.com>
 <20190605215107.GA14368@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605215107.GA14368@intel.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Support HBR3 on EHL combo PHY
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

T24gV2VkLCBKdW4gMDUsIDIwMTkgYXQgMDI6NTE6MDhQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBXZWQsIEp1biAwNSwgMjAxOSBhdCAwMjoxODozMlBNIC0wNzAwLCBNYXR0IFJv
cGVyIHdyb3RlOgo+ID4gVW5saWtlIElDTCwgRUhMJ3MgY29tYm8gUEhZcyBjYW4gc3VwcG9ydCBI
QlIzIGRhdGEgcmF0ZXMuICBOb3RlIHRoYXQKPiA+IHRoaXMganVzdCBleHRlbmRzIHRoZSB1cHBl
ciBsaW1pdDsgd2Ugd2lsbCBjb250aW51ZSB0byBob25vciB0aGUgbWF4Cj4gPiBkYXRhIHJhdGUg
c3BlY2lmaWVkIGluIHRoZSBWQlQgaW4gY2FzZXMgd2hlcmUgaXQgaXMgbG93ZXIgdGhhbiBIQlIz
Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgo+IAo+IFllcyBsb29rcyBnb29kIHRvIG1lLgo+IAo+IFJldmlld2VkLWJ5OiBNYW5h
c2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+IAo+IE1hbmFzaQoKVGhhbmtz
IGZvciB0aGUgcXVpY2sgcmV2aWV3LiAgQ0kgbG9va3MgaGFwcHkgdG9vLCBzbyBwdXNoZWQgdG8g
ZGlucS4KCgpNYXR0Cgo+IAo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHAuYyB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RwLmMKPiA+IGluZGV4IDI0YjU2YjJhNzZjOC4uYjA5OWE5ZGMyOGZk
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ID4gQEAgLTMzMiw2ICszMzIsNyBA
QCBzdGF0aWMgaW50IGljbF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkKPiA+ICAJZW51bSBwb3J0IHBvcnQgPSBkaWdfcG9ydC0+YmFzZS5wb3J0Owo+ID4gIAo+ID4g
IAlpZiAoaW50ZWxfcG9ydF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkgJiYKPiA+ICsJICAg
ICFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYKPiA+ICAJICAgICFpbnRlbF9kcF9pc19lZHAo
aW50ZWxfZHApKQo+ID4gIAkJcmV0dXJuIDU0MDAwMDsKPiA+ICAKPiA+IC0tIAo+ID4gMi4xNC41
Cj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKSW9U
RyBQbGF0Zm9ybSBFbmFibGluZyAmIERldmVsb3BtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYp
IDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
