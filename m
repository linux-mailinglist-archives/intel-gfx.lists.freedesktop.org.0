Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01363434B9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 11:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C93189817;
	Thu, 13 Jun 2019 09:38:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B096089817
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 09:38:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16886032-1500050 for multiple; Thu, 13 Jun 2019 10:38:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190613084416.6794-1-jani.nikula@intel.com>
 <156041738573.27443.11336619597847360845@skylake-alporthouse-com>
 <87v9x9x1wr.fsf@intel.com>
In-Reply-To: <87v9x9x1wr.fsf@intel.com>
Message-ID: <156041869203.27443.15918228820613880033@skylake-alporthouse-com>
Date: Thu, 13 Jun 2019 10:38:12 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: make intel_sdvo_regs.h
 self-contained
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0xMyAxMDozNjoyMCkKPiBPbiBUaHUsIDEzIEp1
biAyMDE5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
PiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTA2LTEzIDA5OjQ0OjE0KQo+ID4+IEVuc3VyZSBp
bnRlbF9zZHZvX3JlZ3MuaCBpcyBzZWxmLWNvbnRhaW5lZCBhbmQgcmVtYWlucyB0aGF0IHdheS4K
PiA+PiAKPiA+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXIt
dGVzdCB8IDEgKwo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvX3JlZ3MuaCAg
ICB8IDcgKysrKysrKwo+ID4+ICAyIGZpbGVzIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+ID4+
IAo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXIt
dGVzdCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0Cj4gPj4gaW5k
ZXggNmVmM2I2NDdhYzY1Li5jMDQyOTdjZTU3YjQgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdAo+ID4+IEBAIC01Niw2ICs1Niw3IEBAIGhlYWRl
cl90ZXN0IDo9IFwKPiA+PiAgICAgICAgIGludGVsX3F1aXJrcy5oIFwKPiA+PiAgICAgICAgIGlu
dGVsX3J1bnRpbWVfcG0uaCBcCj4gPj4gICAgICAgICBpbnRlbF9zZHZvLmggXAo+ID4+ICsgICAg
ICAgaW50ZWxfc2R2b19yZWdzLmggXAo+ID4+ICAgICAgICAgaW50ZWxfc2lkZWJhbmQuaCBcCj4g
Pj4gICAgICAgICBpbnRlbF9zcHJpdGUuaCBcCj4gPj4gICAgICAgICBpbnRlbF90di5oIFwKPiA+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2R2b19yZWdzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvX3JlZ3MuaAo+ID4+IGluZGV4IGU5YmEzYjA0
N2Y5My4uYWYwMmMwZDIxZDZiIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3Nkdm9fcmVncy5oCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
c2R2b19yZWdzLmgKPiA+PiBAQCAtMjQsNiArMjQsMTEgQEAKPiA+PiAgICogICAgIEVyaWMgQW5o
b2x0IDxlcmljQGFuaG9sdC5uZXQ+Cj4gPj4gICAqLwo+ID4+ICAKPiA+PiArI2lmbmRlZiBfX0lO
VEVMX1NEVk9fUkVHU19IX18KPiA+PiArI2RlZmluZSBfX0lOVEVMX1NEVk9fUkVHU19IX18KPiA+
PiArCj4gPgo+ID4gI2luY2x1ZGUgPGxpbnV4L2NvbXBpbGVyLmg+IG9yIGNvbXBpbGVyX2F0dHJp
YnV0ZXMuaCBmb3IgX19wYWNrZWQKPiA+Cj4gPiBMb29rcyBsaWtlIHJhbmRvbSBpbmNsdXNpb24g
b3RoZXJ3aXNlLgo+ID4KPiA+PiArI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4gCj4gSHVoLCBu
byBlcnJvcnMgYWJvdXQgX19wYWNrZWQgdGhhdCBJIGNvdWxkIHNlZSwgd2hhdCBhbSBJIG1pc3Np
bmc/Cj4gPGxpbnV4L3R5cGVzLmg+IGlzIGZvciBrZXJuZWwgdW5zaWduZWQgdHlwZXMuCgpOb3Ro
aW5nLCBJIHRoaW5rIGl0IGdldHMgYWNjaWRlbnRhbGx5IGluY2x1ZGVkIDopCgojaW5jbHVkZSA8
bGludXgvY29tcGlsZXIuaD4gc2VlbXMgdG8gdGhlIGJlIGNvbW1vbiBjaG9pY2UgZm9yCl9fYXR0
cmlidXRlcy4KCk9yIHlvdSBjb3VsZCBhcmd1ZSB0aGF0IF9fcGFja2VkIGlzIG5hdHVyYWxseSBh
IHR5cGUgYXR0cmlidXRlIGFuZCBzbwpzaG91bGQgYmUgcHVsbGVkIGluIHZpYSB0eXBlcy5oIDop
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
