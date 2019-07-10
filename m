Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA25648A2
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2456289C5E;
	Wed, 10 Jul 2019 14:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6286F89C5E
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:50:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:50:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="364499005"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2019 07:50:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 615EE5C1EC2; Wed, 10 Jul 2019 17:50:37 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156276934120.4055.6617596785630747488@skylake-alporthouse-com>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-5-chris@chris-wilson.co.uk>
 <8736je1ey0.fsf@gaia.fi.intel.com>
 <156274712436.11940.4326721010127255446@skylake-alporthouse-com>
 <87imsaq84d.fsf@gaia.fi.intel.com>
 <156276934120.4055.6617596785630747488@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 17:50:37 +0300
Message-ID: <87ftneq6yq.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDE1OjI1OjM4KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBRdW90aW5nIE1pa2EgS3Vv
cHBhbGEgKDIwMTktMDctMTAgMDk6MTc6MjcpCj4+ID4+IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4+ID4+IAo+PiA+PiA+IFRoaXMgd2lsbCBiZSB1c2Vm
dWwgdG8gY29uc29saWRhdGUgcmVjdXJzaXZlIGNvZGUuCj4+ID4+ID4KPj4gPj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4gPj4gPiAt
LS0KPj4gPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzICsrKwo+
PiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaCB8IDEgKwo+PiA+PiA+
ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+PiA+PiA+Cj4+ID4+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gPj4gPiBpbmRleCBkYTRkYjc2Y2UwNTQuLjJmYzYw
ZThhY2Q5YSAxMDA2NDQKPj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9ndHQuYwo+PiA+PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
Cj4+ID4+ID4gQEAgLTE1MzcsNiArMTUzNyw4IEBAIHN0YXRpYyB2b2lkIHBwZ3R0X2luaXQoc3Ry
dWN0IGk5MTVfcHBndHQgKnBwZ3R0LCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+PiA+PiA+ICAgICAg
IHBwZ3R0LT52bS52bWFfb3BzLnVuYmluZF92bWEgID0gcHBndHRfdW5iaW5kX3ZtYTsKPj4gPj4g
PiAgICAgICBwcGd0dC0+dm0udm1hX29wcy5zZXRfcGFnZXMgICA9IHBwZ3R0X3NldF9wYWdlczsK
Pj4gPj4gPiAgICAgICBwcGd0dC0+dm0udm1hX29wcy5jbGVhcl9wYWdlcyA9IGNsZWFyX3BhZ2Vz
Owo+PiA+PiA+ICsKPj4gPj4gPiArICAgICBwcGd0dC0+dm0udG9wID0gaTkxNV92bV9pc180bHZs
KCZwcGd0dC0+dm0pID8gMyA6IDI7Cj4+ID4+IAo+PiA+PiBQZXJoYXBzIGl0IGJlY29tZXMgZXZp
ZGVudCBsYXRlciBpbiB0aGUgc2VyaWVzIHdoeSB0b3AgYW5kCj4+ID4+IG5vdCBsZXZlbCwgc28g
dGhlc2Ugd291bGQgYmUgNCBhbmQgMyBoZXJlLgo+PiA+Cj4+ID4gQmVjYXVzZSB3ZSB1c2UgdG9w
IGFuZCBub3QgbGV2ZWwgOikKPj4gCj4+IFlvdSBtYWtlIG1lIHN1YnN0cmFjdCBvbmUgd2l0aCBt
eSBiaW9sb2dpY2FsIHByb2Nlc3Nvci4KPj4gSXQgaXMgaGFyZC4KPj4gCj4+IFBsZWFzZSBkbyBy
ZW1ha2UgdGhlIGk5MTVfdm1faXNfNGx2bCgpIGFuZCBpbmNsdWRlLgo+Cj4gSSdtIHRlbXB0ZWQg
dG8gcHV0IHRoZSBndHRfZGVwdGggaW4gdGhlIGRldmljZSBpbmZvLgo+Cj4gSG93IGRvIHlvdSB3
YW50IGk5MTVfdm1faXNfNGx2bCgpIHJlbWFkZT8gVGhlIHNwZWNpYWwgY2FzZSBnb2luZwo+IGZv
cndhcmQgaXMgcmVhbGx5IGlzXzNsdmw/CgpObyBzdHJvbmcgZmVlbGluZ3MgaGVyZS4gSG93IGFi
b3V0IGk5MTVfdm1fZ2V0X2x2bCh2bSkKeyByZXR1cm4gdG9wICsgMTsgfSA/CgpCdXQgYW55dGhp
bmcgd2hpY2ggbG9va3Mgc2xlZWsgb24gY2FsbHNpdGVzIGlzIGZpbmUuCgotTWlrYQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
