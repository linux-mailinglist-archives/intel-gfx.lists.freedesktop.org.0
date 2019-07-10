Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA2364876
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:35:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0CDF89DC0;
	Wed, 10 Jul 2019 14:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4AF389DC0
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:35:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17200753-1500050 for multiple; Wed, 10 Jul 2019 15:35:43 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
 <8736je1ey0.fsf@gaia.fi.intel.com>
 <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
 <87imsaq84d.fsf@gaia.fi.intel.com>
In-Reply-To: <87imsaq84d.fsf@gaia.fi.intel.com>
Message-ID: <156276934120.4055.6617596785630747488@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 15:35:41 +0100
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/gtt: Markup i915_ppgtt depth
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE1OjI1OjM4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMTktMDctMTAgMDk6MTc6MjcpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IFRoaXMgd2lsbCBiZSB1c2Vm
dWwgdG8gY29uc29saWRhdGUgcmVjdXJzaXZlIGNvZGUuCj4gPj4gPgo+ID4+ID4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gPiAtLS0K
PiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyB8IDMgKysrCj4gPj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggfCAxICsKPiA+PiA+ICAyIGZp
bGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+ID4+ID4KPiA+PiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jCj4gPj4gPiBpbmRleCBkYTRkYjc2Y2UwNTQuLjJmYzYwZThhY2Q5YSAx
MDA2NDQKPiA+PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4g
Pj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4+ID4gQEAg
LTE1MzcsNiArMTUzNyw4IEBAIHN0YXRpYyB2b2lkIHBwZ3R0X2luaXQoc3RydWN0IGk5MTVfcHBn
dHQgKnBwZ3R0LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ID4+ID4gICAgICAgcHBndHQtPnZtLnZt
YV9vcHMudW5iaW5kX3ZtYSAgPSBwcGd0dF91bmJpbmRfdm1hOwo+ID4+ID4gICAgICAgcHBndHQt
PnZtLnZtYV9vcHMuc2V0X3BhZ2VzICAgPSBwcGd0dF9zZXRfcGFnZXM7Cj4gPj4gPiAgICAgICBw
cGd0dC0+dm0udm1hX29wcy5jbGVhcl9wYWdlcyA9IGNsZWFyX3BhZ2VzOwo+ID4+ID4gKwo+ID4+
ID4gKyAgICAgcHBndHQtPnZtLnRvcCA9IGk5MTVfdm1faXNfNGx2bCgmcHBndHQtPnZtKSA/IDMg
OiAyOwo+ID4+IAo+ID4+IFBlcmhhcHMgaXQgYmVjb21lcyBldmlkZW50IGxhdGVyIGluIHRoZSBz
ZXJpZXMgd2h5IHRvcCBhbmQKPiA+PiBub3QgbGV2ZWwsIHNvIHRoZXNlIHdvdWxkIGJlIDQgYW5k
IDMgaGVyZS4KPiA+Cj4gPiBCZWNhdXNlIHdlIHVzZSB0b3AgYW5kIG5vdCBsZXZlbCA6KQo+IAo+
IFlvdSBtYWtlIG1lIHN1YnN0cmFjdCBvbmUgd2l0aCBteSBiaW9sb2dpY2FsIHByb2Nlc3Nvci4K
PiBJdCBpcyBoYXJkLgo+IAo+IFBsZWFzZSBkbyByZW1ha2UgdGhlIGk5MTVfdm1faXNfNGx2bCgp
IGFuZCBpbmNsdWRlLgoKSSdtIHRlbXB0ZWQgdG8gcHV0IHRoZSBndHRfZGVwdGggaW4gdGhlIGRl
dmljZSBpbmZvLgoKSG93IGRvIHlvdSB3YW50IGk5MTVfdm1faXNfNGx2bCgpIHJlbWFkZT8gVGhl
IHNwZWNpYWwgY2FzZSBnb2luZwpmb3J3YXJkIGlzIHJlYWxseSBpc18zbHZsPwotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
