Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEDFDDC1BC
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 11:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38F1F6EB0F;
	Fri, 18 Oct 2019 09:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3E896EB10
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 09:50:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18879861-1500050 for multiple; Fri, 18 Oct 2019 10:50:00 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191018090751.28295-1-matthew.auld@intel.com>
References: <20191018090751.28295-1-matthew.auld@intel.com>
Message-ID: <157139219783.10597.11529360069848494226@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 18 Oct 2019 10:49:57 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: enumerate and init each
 supported region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMTggMTA6MDc6NDkpCj4gRnJvbTogQWJkaWVs
IEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+IAo+IE5vdGhpbmcg
dG8gZW51bWVyYXRlIHlldC4uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8
YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9v
bmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiBAQCAtMjc4MSw2ICsyODI3LDgg
QEAgdm9pZCBpOTE1X2dndHRfZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
Kmk5MTUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBwYWdldmVjICpwdmVjOwo+ICAKPiArICAgICAg
IGk5MTVfZ2VtX2NsZWFudXBfbWVtb3J5X3JlZ2lvbnMoaTkxNSk7Cj4gKwo+ICAgICAgICAgZmlu
aV9hbGlhc2luZ19wcGd0dCgmaTkxNS0+Z2d0dCk7Cj4gIAo+ICAgICAgICAgZ2d0dF9jbGVhbnVw
X2h3KCZpOTE1LT5nZ3R0KTsKPiBAQCAtMjc5MCw4ICsyODM4LDYgQEAgdm9pZCBpOTE1X2dndHRf
ZHJpdmVyX3JlbGVhc2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gICAgICAgICAg
ICAgICAgIHNldF9wYWdlc19hcnJheV93YihwdmVjLT5wYWdlcywgcHZlYy0+bnIpOwo+ICAgICAg
ICAgICAgICAgICBfX3BhZ2V2ZWNfcmVsZWFzZShwdmVjKTsKPiAgICAgICAgIH0KPiAtCj4gLSAg
ICAgICBpOTE1X2dlbV9jbGVhbnVwX3N0b2xlbihpOTE1KTsKCkkgaGFkIHRvIGRvIGEgcXVpY2sg
ZG91YmxlIHRha2UsIGJ1dCBpdCBpcyBqdXN0IGNvZGUgbW9tZW50IGFuZCBub3QKcHJlbWF0dXJl
IHN0b2xlbi1hcy1yZWdpb24uCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
