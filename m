Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3504C36D0
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:15:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54FA06E7A2;
	Tue,  1 Oct 2019 14:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 410876E7A2
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:15:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18680814-1500050 for multiple; Tue, 01 Oct 2019 15:15:28 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001134534.14747-3-janusz.krzysztofik@linux.intel.com>
References: <20191001134534.14747-1-janusz.krzysztofik@linux.intel.com>
 <20191001134534.14747-3-janusz.krzysztofik@linux.intel.com>
Message-ID: <156993932294.1880.13900788270021735567@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 15:15:22 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Rename "inject_load_failure"
 module parameter
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMDEgMTQ6NDU6MzQpCj4gQ29tbWl0
IGYyZGI1M2YxNGQzZCAoImRybS9pOTE1OiBSZXBsYWNlICJfbG9hZCIgd2l0aCAiX3Byb2JlIgo+
IGNvbnNlcXVlbnRseSIpIGRlbGliZXJhdGVseSBsZWZ0IHRoZSBuYW1lIG9mIHRoZSBtb2R1bGUg
cGFyYW1ldGVyCj4gdW5jaGFuZ2VkIGFzIHRoYXQgd291bGQgcmVxdWlyZSBhIGNvcnJlc3BvbmRp
bmcgY2hhbmdlIG9uIElHVCBzaXplLgo+IE5vdyBhcyB0aGUgSUdUIHNpZGUgY2hhbmdlIGhhcyBi
ZWVuIHN1Ym1pdHRlZCwgY29tcGxldGUgdGhlIHN3aXRjaCB0bwo+IHRoZSAicHJvYmUiIG5vbWVu
Y2xhdHVyZS4KPiAKPiBNYXkgYWZmZWN0IGN1c3RvbSB1c2VyIGFwcGxpY2F0aW9ucyB1dGlsaXpp
bmcgdGhlIG9sZCBuYW1lLgo+IAo+IFN1Z2dlc3RlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5
c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWljaGHF
giBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBNaWNoYcWCIFdp
bmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gQ2M6IFBpb3RyIFBpw7Nya293
c2tpIDxwaW90ci5waW9ya293c2tpQGludGVsLmNvbT4KPiBDYzogVG9tYXN6IExpcyA8dG9tYXN6
Lmxpc0BpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
