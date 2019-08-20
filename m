Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 844BB96946
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 21:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC126E856;
	Tue, 20 Aug 2019 19:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EEAC6E856
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 19:20:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18206618-1500050 for multiple; Tue, 20 Aug 2019 20:20:13 +0100
MIME-Version: 1.0
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <7f8e62e638f3cb3b8d849a1189b28db38e3ef168.camel@intel.com>
References: <20190819215003.48305-1-stuart.summers@intel.com>
 <20190819215003.48305-7-stuart.summers@intel.com>
 <156629840383.1374.7838008887428792378@skylake-alporthouse-com>
 <7f8e62e638f3cb3b8d849a1189b28db38e3ef168.camel@intel.com>
Message-ID: <156632881149.1374.14144931583724422972@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 20:20:11 +0100
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Add function to determine if
 a slice has a subslice
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTdW1tZXJzLCBTdHVhcnQgKDIwMTktMDgtMjAgMjA6MDE6MDUpCj4gT24gVHVlLCAy
MDE5LTA4LTIwIGF0IDExOjUzICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5n
IFN0dWFydCBTdW1tZXJzICgyMDE5LTA4LTE5IDIyOjUwOjAwKQo+ID4gPiBBZGQgYSBuZXcgZnVu
Y3Rpb24gdG8gZGV0ZXJtaW5lIHdoZXRoZXIgYSBwYXJ0aWN1bGFyIHNsaWNlCj4gPiA+IGhhcyBh
IGdpdmVuIHN1YnNsaWNlLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1l
cnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9zc2V1LmggICAgIHwgMTAgKysrKysrKysrKwo+ID4gPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8ICA5ICsrKystLS0tLQo+ID4g
PiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4g
PiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUu
aAo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3NzZXUuaAo+ID4gPiBpbmRl
eCAyMjYxZDRlN2Q5OGIuLjBlY2MxYzM1YTdhMSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfc3NldS5oCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3NzZXUuaAo+ID4gPiBAQCAtNjYsNiArNjYsMTYgQEAgaW50ZWxfc3NldV9m
cm9tX2RldmljZV9pbmZvKGNvbnN0IHN0cnVjdAo+ID4gPiBzc2V1X2Rldl9pbmZvICpzc2V1KQo+
ID4gPiAgICAgICAgIHJldHVybiB2YWx1ZTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiArc3RhdGlj
IGlubGluZSBib29sCj4gPiA+ICtpbnRlbF9zc2V1X2hhc19zdWJzbGljZShjb25zdCBzdHJ1Y3Qg
c3NldV9kZXZfaW5mbyAqc3NldSwgaW50Cj4gPiA+IHNsaWNlLAo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICBpbnQgc3Vic2xpY2UpCj4gPiA+ICt7Cj4gPiA+ICsgICAgICAgdTggbWFzayA9
IHNzZXUtPnN1YnNsaWNlX21hc2tbc2xpY2UgKiBzc2V1LT5zc19zdHJpZGUgKwo+ID4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN1YnNsaWNlIC8gQklUU19QRVJfQllU
RV07Cj4gPiA+ICsKPiA+IAo+ID4gU3VnZ2VzdGlvbjoKPiA+IAo+ID4gICAgICAgR0VNX0JVR19P
TihzdWJzbGljZSA+PSBzc2V1LT5zc19zbGljZSk7Cj4gCj4gVGhhbmtzIENocmlzIGFuZCBtYWtl
cyBzZW5zZS4gSSB0aGluayB0aGlzIHNob3VsZCAgaW5zdGVhZCBiZSAoc3MgLwo+IEJJVFNfUEVS
X0JZVEUgPj0gc3Nfc3RyaWRlKS4KCkRvbid0IGFzc3VtZSBJIHB1dCBtb3JlIHRob3VnaHQgaW50
byB0aGFuIGRyb3BwaW5nIGEgaGludCB0byBjYXRjaApwcm9ncmFtbWVyIGVycm9ycyB0aGF0IHdv
dWxkIGxlYWQgdG8gVUIuIDopCgo+IEknbGwgcG9zdCBhbiB1cGRhdGUgaG9wZWZ1bGx5IHRvZGF5
IG9uIHRoaXMuIExldCBtZSBrbm93IGlmIHlvdSdkIGxpa2UKPiBtZSB0byBkcm9wIHlvdXIgUi1C
IHdpdGggdGhlIGFib3ZlIGNoYW5nZS4KCklmIENJIGRvZXNuJ3QgZXhwbG9kZSwga2VlcCB0aGUg
ci1iIDspCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
