Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8BCB0A7D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 10:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0CA6E22B;
	Thu, 12 Sep 2019 08:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC776E22B
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 08:38:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18460573-1500050 for multiple; Thu, 12 Sep 2019 09:38:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190912070925.11526-1-chris@chris-wilson.co.uk>
 <87pnk6rlyt.fsf@gaia.fi.intel.com>
 <156827549301.4926.3480311664455647255@skylake-alporthouse-com>
 <87muf9syur.fsf@gaia.fi.intel.com>
In-Reply-To: <87muf9syur.fsf@gaia.fi.intel.com>
Message-ID: <156827752765.4926.7869517370214869675@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 09:38:47 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a paranoid
 flush of the CSB pointers upon reset
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEyIDA5OjI3OjU2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDktMTIgMDg6NTE6MzgpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IEFmdGVyIGEgR1BVIHJlc2V0
LCB3ZSBuZWVkIHRvIGRyYWluIGFsbCB0aGUgQ1MgZXZlbnRzIHNvIHRoYXQgd2UgaGF2ZSBhbgo+
ID4+ID4gYWNjdXJhdGUgcGljdHVyZSBvZiB0aGUgZXhlY2xpc3RzIHN0YXRlIGF0IHRoZSB0aW1l
IG9mIHRoZSByZXNldC4gQmUKPiA+PiA+IHBhcmFub2lkIGFuZCBmb3JjZSBhIHJlYWQgb2YgdGhl
IENTQiB3cml0ZSBwb2ludGVyIGZyb20gbWVtb3J5Lgo+ID4+ID4KPiA+PiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4+ID4gQ2M6IE1p
a2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4+ID4gLS0tCj4g
Pj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA0ICsrKysKPiA+PiA+
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPj4gPgo+ID4+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+PiA+IGluZGV4IDNkODNjN2UwZDlkZS4uNjFhMzhhNGNj
YmNhIDEwMDY0NAo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMKPiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPj4g
PiBAQCAtMjgzNiw2ICsyODM2LDEwIEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xpc3RzX3Jlc2V0KHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQo+ID4+ID4gICAgICAg
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7Cj4gPj4gPiAgICAgICB1MzIgKnJlZ3M7Cj4gPj4gPiAg
Cj4gPj4gPiArICAgICBtYigpOyAvKiBwYXJhbm9pYTogcmVhZCB0aGUgQ1NCIHBvaW50ZXJzIGZy
b20gYWZ0ZXIgdGhlIHJlc2V0ICovCj4gPj4gPiArICAgICBjbGZsdXNoKGV4ZWNsaXN0cy0+Y3Ni
X3dyaXRlKTsKPiA+PiA+ICsgICAgIG1iKCk7Cj4gPj4gPiArCj4gPj4gCj4gPj4gV2Uga25vdyB0
aGVyZSBpcyBhbHdheXMgYSBjb3N0LiBXZSBkbyBpbnZhbGlkYXRlIHRoZSBjc2IKPiA+PiBvbiBl
YWNoIHBhc3Mgb24gcHJvY2Vzc19jc2IuCj4gPj4gCj4gPj4gQWRkIGNzYl93cml0ZSBpbiB0byBp
bnZhbGlkYXRlX2NzYiBlbnRyaWVzIGFsb25nCj4gPj4gd2l0aCBtYnMuIFJlbmFtZSBpdCB0byBp
bnZhbGlkYXRlX2NzYiBhbmQgdXNlIGl0Cj4gPj4gYWx3YXlzPwo+ID4+IAo+ID4+IEJ5IGRvaW5n
IHNvLCB3ZSBjb3VsZCBwcm9sbHkgdGhyb3cgb3V0IHRoZSBybWIoKSBhdAo+ID4+IHRoZSBzdGFy
dCBvZiB0aGUgcHJvY2Vzc19jc2IgYXMgd2Ugd291bGQgaGF2ZSBpbnZhbGlkYXRlZAo+ID4+IHRo
ZSB3cml0ZSBwb2ludGVyIGFsb25nIHdpdGggdGhlIGVudHJpZXMgd2UgcmVhZCwKPiA+PiBvbiBw
cmV2aW91cyBwYXNzLgo+ID4KPiA+IE5vLiBUaGF0IHJtYiBpcyBlc3NlbnRpYWwgZm9yIHRoZSBy
ZWFkIG9yZGVyaW5nIGF0IHRoYXQgbW9tZW50IGluIHRpbWUuCj4gCj4gQWggeWVzIGluZGVlZCBp
dCBpcy4gaGVhZCB2cyBlbnRyaWVzIGNvaGVyZW5jeS4KPiAKPiA+Cj4gPiBBbGwgSSBoYXZlIGlu
IG1pbmQgaGVyZSBpcyBhIGRlbGF5LCBub3QgcmVhbGx5IGEgYmFycmllciBwZXIgc2UsIGp1c3QK
PiA+IHRoaXMgaXMgYSBuaWNlIHdheSBvZiBzYXlpbmcgbm8gc3BlY3VsYXRpb24gZWl0aGVyLgo+
IAo+IEZvcmdldHRpbmcgdGhlIHJtYigpLCB0aGVyZSBpcyBzaW1pbGFyIHBhdHRlcm4gb2YgbWIo
KStmbHVzaAo+IGVsc2V3aGVyZS4gSnVzdCBzYXcgdGhlIHByb2ZpbGlmZXJhdGlvbiBhbmQgb3Bw
b3J0dW5pdHkgdG8gY29udmVyZ2UuCgpJIHVuZGVyc3Rvb2QuIEkgdGhpbmsgeW91ciBiYXJyaWVy
LWxlc3Mgdy9hIHdvcmtzIHByZXR0eSB3ZWxsIGFuZCBJCmhhdmVuJ3QgeWV0IHBva2VkIGEgaG9s
ZSBpbiBob3cgSSB0aGluayBpdCB3b3JrcyA7KQoKPiBCdXQgc3luY2luZyB3aXRoIHRoZSBoYXJk
d2FyZSBvbiBtb21lbnQgb2YgcmVzZXQsIHRoaXMgc2hvdWxkCj4gZG8uCgpJIGxvb2tlZCBhdCBy
ZXVzaW5nIGludmFsaWRhdGVfY3NiX2VudHJpZXMoKSBhbmQgSSB0aGluayB0aGUga2V5IHBhcnQK
aGVyZSBpcyB0aGF0IHdlIGRvIHdhbnQgdG8gaW52YWxpZGF0ZSB0aGUgZXhlY2xpc3RzLT5jc2Jf
d3JpdGUgaXRzZWxmLApzbyBhIHN1YnRseSBkaWZmZXJlbnQgbG9jYXRpb24vcmVhc29uIChub3Qg
c3VyZSBpZiBpdCdzIHRoZSBzYW1lCmNhY2hlbGluZSBvciB0aGUgbmVpZ2hib3VyaW5nIG9uZSku
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
