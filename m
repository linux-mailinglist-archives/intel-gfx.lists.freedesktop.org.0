Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44FFA23CA6D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF4A76E55C;
	Wed,  5 Aug 2020 12:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EFE26E55C
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:12:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22039365-1500050 for multiple; Wed, 05 Aug 2020 13:12:32 +0100
MIME-Version: 1.0
In-Reply-To: <9bbe622c-d71e-7554-fa34-32bd06942240@shipmail.org>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-28-chris@chris-wilson.co.uk>
 <4c92b001-fa38-1720-cd66-15038617342d@linux.intel.com>
 <69739483-8392-1a89-f028-766d994e1281@linux.intel.com>
 <546a2b6b-4369-db68-5083-3e91cc1771b2@shipmail.org>
 <8a9763b8-da54-3593-dc58-ebf773ee57c3@linux.intel.com>
 <9bbe622c-d71e-7554-fa34-32bd06942240@shipmail.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Hellström (Intel) <thomas_os@shipmail.org>, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 05 Aug 2020 13:12:33 +0100
Message-ID: <159662955306.20458.3878599224580810087@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 28/66] drm/i915/gem: Replace
 i915_gem_object.mm.mutex with reservation_ww_class
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUaG9tYXMgSGVsbHN0csO2bSAoSW50ZWwpICgyMDIwLTA3LTI5IDE0OjQ0OjQxKQo+
IAo+IE9uIDcvMjkvMjAgMjoxNyBQTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gPgo+ID4gT24g
MjgvMDcvMjAyMCAxMjoxNywgVGhvbWFzIEhlbGxzdHLDtm0gKEludGVsKSB3cm90ZToKPiA+PiBP
biA3LzE2LzIwIDU6NTMgUE0sIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+ID4+PiBPbiAxNS8wNy8y
MDIwIDE2OjQzLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiA+Pj4+IE9wIDE1LTA3LTIwMjAg
b20gMTM6NTEgc2NocmVlZiBDaHJpcyBXaWxzb246Cj4gPj4+Pj4gT3VyIGdvYWwgaXMgdG8gcHVs
bCBhbGwgbWVtb3J5IHJlc2VydmF0aW9ucyAobmV4dCBpdGVyYXRpb24KPiA+Pj4+PiBvYmotPm9w
cy0+Z2V0X3BhZ2VzKCkpIHVuZGVyIGEgd3dfbXV0ZXgsIGFuZCB0byBhbGlnbiB0aG9zZSAKPiA+
Pj4+PiByZXNlcnZhdGlvbnMKPiA+Pj4+PiB3aXRoIG90aGVyIGRyaXZlcnMsIGkuZS4gY29udHJv
bCBhbGwgc3VjaCBhbGxvY2F0aW9ucyB3aXRoIHRoZQo+ID4+Pj4+IHJlc2VydmF0aW9uX3d3X2Ns
YXNzLiBDdXJyZW50bHksIHRoaXMgaXMgdW5kZXIgdGhlIHB1cnZpZXcgb2YgdGhlCj4gPj4+Pj4g
b2JqLT5tbS5tdXRleCwgYW5kIHdoaWxlIG9iai0+bW0gcmVtYWlucyBhbiBlbWJlZGRlZCBzdHJ1
Y3Qgd2UgY2FuCj4gPj4+Pj4gInNpbXBseSIgc3dpdGNoIHRvIHVzaW5nIHRoZSByZXNlcnZhdGlv
bl93d19jbGFzcyAKPiA+Pj4+PiBvYmotPmJhc2UucmVzdi0+bG9jawo+ID4+Pj4+Cj4gPj4+Pj4g
VGhlIG1ham9yIGNvbnNlcXVlbmNlIGlzIHRoZSBpbXBhY3Qgb24gdGhlIHNocmlua2VyIHBhdGhz
IGFzIHRoZQo+ID4+Pj4+IHJlc2VydmF0aW9uX3d3X2NsYXNzIGlzIHVzZWQgdG8gd3JhcCBhbGxv
Y2F0aW9ucywgYW5kIGEgd3dfbXV0ZXggZG9lcwo+ID4+Pj4+IG5vdCBzdXBwb3J0IHN1YmNsYXNz
aW5nIHNvIHdlIGNhbm5vdCBkbyBvdXIgdXN1YWwgdHJpY2sgb2Yga25vd2luZyAKPiA+Pj4+PiB0
aGF0Cj4gPj4+Pj4gd2UgbmV2ZXIgcmVjdXJzZSBpbnNpZGUgdGhlIHNocmlua2VyIGFuZCBpbnN0
ZWFkIGhhdmUgdG8gZmluaXNoIHRoZQo+ID4+Pj4+IHJlY2xhaW0gd2l0aCBhIHRyeWxvY2suIFRo
aXMgbWF5IHJlc3VsdCBpbiB1cyBmYWlsaW5nIHRvIHJlbGVhc2UgdGhlCj4gPj4+Pj4gcGFnZXMg
YWZ0ZXIgaGF2aW5nIHJlbGVhc2VkIHRoZSB2bWEuIFRoaXMgd2lsbCBoYXZlIHRvIGRvIHVudGls
IGEgCj4gPj4+Pj4gYmV0dGVyCj4gPj4+Pj4gaWRlYSBjb21lcyBhbG9uZy4KPiA+Pj4+Pgo+ID4+
Pj4+IEhvd2V2ZXIsIHRoaXMgc3RlcCBvbmx5IGNvbnZlcnRzIHRoZSBtdXRleCBvdmVyIGFuZCBj
b250aW51ZXMgdG8gCj4gPj4+Pj4gdHJlYXQKPiA+Pj4+PiBldmVyeXRoaW5nIGFzIGEgc2luZ2xl
IGFsbG9jYXRpb24gYW5kIHBpbm5pbmcgdGhlIHBhZ2VzLiBXaXRoIHRoZQo+ID4+Pj4+IHd3X211
dGV4IGluIHBsYWNlIHdlIGNhbiByZW1vdmUgdGhlIHRlbXBvcmFyeSBwaW5uaW5nLCBhcyB3ZSBj
YW4gdGhlbgo+ID4+Pj4+IHJlc2VydmUgYWxsIHN0b3JhZ2UgZW4gbWFzc2UuCj4gPj4+Pj4KPiA+
Pj4+PiBPbmUgbGFzdCB0aGluZyB0byBkbzoga2lsbCB0aGUgaW1wbGljdCBwYWdlIHBpbm5pbmcg
Zm9yIGFjdGl2ZSB2bWEuCj4gPj4+Pj4gVGhpcyB3aWxsIHJlcXVpcmUgdXMgdG8gaW52YWxpZGF0
ZSB0aGUgdm1hLT5wYWdlcyB3aGVuIHRoZSBiYWNraW5nIAo+ID4+Pj4+IHN0b3JlCj4gPj4+Pj4g
aXMgcmVtb3ZlZCAoYW5kIHdlIGV4cGVjdCB0aGF0IHdoaWxlIHRoZSB2bWEgaXMgYWN0aXZlLCB3
ZSBtYXJrIHRoZQo+ID4+Pj4+IGJhY2tpbmcgc3RvcmUgYXMgYWN0aXZlIHNvIHRoYXQgaXQgY2Fu
bm90IGJlIHJlbW92ZWQgd2hpbGUgdGhlIEhXIGlzCj4gPj4+Pj4gYnVzeS4pCj4gPj4+Pj4KPiA+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiA+Pj4KPiA+Pj4gW3NuaXBdCj4gPj4+Cj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jIAo+ID4+Pj4+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3Nocmlua2VyLmMKPiA+Pj4+PiBpbmRleCBkYzhmMDUy
YTBmZmUuLjRlOTI4MTAzYTM4ZiAxMDA2NDQKPiA+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYwo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9zaHJpbmtlci5jCj4gPj4+Pj4gQEAgLTQ3LDEwICs0Nyw3IEBA
IHN0YXRpYyBib29sIHVuc2FmZV9kcm9wX3BhZ2VzKHN0cnVjdCAKPiA+Pj4+PiBkcm1faTkxNV9n
ZW1fb2JqZWN0ICpvYmosCj4gPj4+Pj4gwqDCoMKgwqDCoCBpZiAoIShzaHJpbmsgJiBJOTE1X1NI
UklOS19CT1VORCkpCj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGZsYWdzID0gSTkxNV9HRU1f
T0JKRUNUX1VOQklORF9URVNUOwo+ID4+Pj4+IMKgIC3CoMKgwqAgaWYgKGk5MTVfZ2VtX29iamVj
dF91bmJpbmQob2JqLCBmbGFncykgPT0gMCkKPiA+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgX19pOTE1
X2dlbV9vYmplY3RfcHV0X3BhZ2VzKG9iaik7Cj4gPj4+Pj4gLQo+ID4+Pj4+IC3CoMKgwqAgcmV0
dXJuICFpOTE1X2dlbV9vYmplY3RfaGFzX3BhZ2VzKG9iaik7Cj4gPj4+Pj4gK8KgwqDCoCByZXR1
cm4gaTkxNV9nZW1fb2JqZWN0X3VuYmluZChvYmosIGZsYWdzKSA9PSAwOwo+ID4+Pj4+IMKgIH0K
PiA+Pj4+PiDCoCDCoCBzdGF0aWMgdm9pZCB0cnlfdG9fd3JpdGViYWNrKHN0cnVjdCBkcm1faTkx
NV9nZW1fb2JqZWN0ICpvYmosCj4gPj4+Pj4gQEAgLTE5OSwxNCArMTk2LDE0IEBAIGk5MTVfZ2Vt
X3NocmluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiA+Pj4+PiBzcGluX3VubG9j
a19pcnFyZXN0b3JlKCZpOTE1LT5tbS5vYmpfbG9jaywgZmxhZ3MpOwo+ID4+Pj4+IMKgIC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGlmICh1bnNhZmVfZHJvcF9wYWdlcyhvYmosIHNocmluaykpIHsK
PiA+Pj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC8qIE1heSBhcnJpdmUgZnJv
bSBnZXRfcGFnZXMgb24gYW5vdGhlciBibyAqLwo+ID4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgbXV0ZXhfbG9jaygmb2JqLT5tbS5sb2NrKTsKPiA+Pj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAodW5zYWZlX2Ryb3BfcGFnZXMob2JqLCBzaHJpbmspICYmCj4gPj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X2dlbV9vYmplY3RfdHJ5bG9j
ayhvYmopKSB7Cj4gPj4+Cj4gPj4+PiBXaHkgdHJ5bG9jaz8gQmVjYXVzZSBvZiB0aGUgbmVzdGlu
Zz8gSW4gdGhhdCBjYXNlLCBzdGlsbCB1c2Ugd3cgY3R4IAo+ID4+Pj4gaWYgcHJvdmlkZWQgcGxl
YXNlCj4gPj4+Cj4gPj4+IEJ5ICJpZiBwcm92aWRlZCIgeW91IG1lYW4gZm9yIGNvZGUgcGF0aHMg
d2hlcmUgd2UgYXJlIGNhbGxpbmcgdGhlIAo+ID4+PiBzaHJpbmtlciBvdXJzZWx2ZXMsIGFzIG9w
cG9zZWQgdG8gcmVjbGFpbSwgbGlrZSBzaG1lbV9nZXRfcGFnZXM/Cj4gPj4+Cj4gPj4+IFRoYXQg
aW5kZWVkIHNvdW5kcyBsaWtlIHRoZSByaWdodCB0aGluZyB0byBkbywgc2luY2UgYWxsIHRoZSAK
PiA+Pj4gZ2V0X3BhZ2VzIGZyb20gZXhlY2J1ZiBhcmUgaW4gdGhlIHJlc2VydmF0aW9uIHBoYXNl
LCBjb2xsZWN0aW5nIGEgCj4gPj4+IGxpc3Qgb2YgR0VNIG9iamVjdHMgdG8gbG9jaywgdGhlIG9u
ZXMgdG8gc2hyaW5rIHNvdW5kIGxpa2Ugc2hvdWxkIGJlIAo+ID4+PiBvbiB0aGF0IGxpc3QuCj4g
Pj4+Cj4gPj4+Pj4gKyBfX2k5MTVfZ2VtX29iamVjdF9wdXRfcGFnZXMob2JqKTsKPiA+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmICghaTkxNV9nZW1fb2JqZWN0X2hh
c19wYWdlcyhvYmopKSB7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHRyeV90b193cml0ZWJhY2sob2JqLCBzaHJpbmspOwo+ID4+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb3VudCArPSBvYmotPmJhc2Uuc2l6
ZSA+PiBQQUdFX1NISUZUOwo+ID4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgfQo+ID4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbXV0ZXhfdW5sb2Nr
KCZvYmotPm1tLmxvY2spOwo+ID4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aTkxNV9nZW1fb2JqZWN0X3VubG9jayhvYmopOwo+ID4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH0KPiA+Pj4+PiDCoCDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzY2FubmVkICs9
IG9iai0+YmFzZS5zaXplID4+IFBBR0VfU0hJRlQ7Cj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYyAKPiA+Pj4+PiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYwo+ID4+Pj4+IGluZGV4IGZmNzJlZTJm
ZDljZC4uYWMxMmUxYzIwZTY2IDEwMDY0NAo+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYwo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV90aWxpbmcuYwo+ID4+Pj4+IEBAIC0yNjUsNyArMjY1LDYgQEAgaTkx
NV9nZW1fb2JqZWN0X3NldF90aWxpbmcoc3RydWN0IAo+ID4+Pj4+IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaiwKPiA+Pj4+PiDCoMKgwqDCoMKgwqAgKiBwYWdlcyB0byBwcmV2ZW50IHRoZW0gYmVp
bmcgc3dhcHBlZCBvdXQgYW5kIGNhdXNpbmcgCj4gPj4+Pj4gY29ycnVwdGlvbgo+ID4+Pj4+IMKg
wqDCoMKgwqDCoCAqIGR1ZSB0byB0aGUgY2hhbmdlIGluIHN3aXp6bGluZy4KPiA+Pj4+PiDCoMKg
wqDCoMKgwqAgKi8KPiA+Pj4+PiAtwqDCoMKgIG11dGV4X2xvY2soJm9iai0+bW0ubG9jayk7Cj4g
Pj4+Pj4gwqDCoMKgwqDCoCBpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19wYWdlcyhvYmopICYmCj4g
Pj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIG9iai0+bW0ubWFkdiA9PSBJOTE1X01BRFZfV0lMTE5F
RUQgJiYKPiA+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNS0+cXVpcmtzICYgUVVJUktfUElO
X1NXSVpaTEVEX1BBR0VTKSB7Cj4gPj4+Pj4gQEAgLTI4MCw3ICsyNzksNiBAQCBpOTE1X2dlbV9v
YmplY3Rfc2V0X3RpbGluZyhzdHJ1Y3QgCj4gPj4+Pj4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
LAo+ID4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9iai0+bW0ucXVpcmtlZCA9IHRy
dWU7Cj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPiA+Pj4+PiDCoMKgwqDCoMKgIH0KPiA+
Pj4+PiAtwqDCoMKgIG11dGV4X3VubG9jaygmb2JqLT5tbS5sb2NrKTsKPiA+Pj4+PiDCoCDCoMKg
wqDCoMKgIHNwaW5fbG9jaygmb2JqLT52bWEubG9jayk7Cj4gPj4+Pj4gwqDCoMKgwqDCoCBmb3Jf
ZWFjaF9nZ3R0X3ZtYSh2bWEsIG9iaikgewo+ID4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jIAo+ID4+Pj4+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3VzZXJwdHIuYwo+ID4+Pj4+IGluZGV4IGU5NDYwMzJiMTNl
NC4uODA5MDdjMDBjNmZkIDEwMDY0NAo+ID4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV91c2VycHRyLmMKPiA+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdXNlcnB0ci5jCj4gPj4+Pj4gQEAgLTEyOSw4ICsxMjksMTUgQEAgdXNl
cnB0cl9tbl9pbnZhbGlkYXRlX3JhbmdlX3N0YXJ0KHN0cnVjdCAKPiA+Pj4+PiBtbXVfbm90aWZp
ZXIgKl9tbiwKPiA+Pj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0ID0gaTkxNV9nZW1fb2JqZWN0
X3VuYmluZChvYmosCj4gPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBJOTE1X0dFTV9PQkpFQ1RfVU5CSU5EX0FDVElWRSB8Cj4gPj4+Pj4g
STkxNV9HRU1fT0JKRUNUX1VOQklORF9CQVJSSUVSKTsKPiA+Pj4+PiAtwqDCoMKgwqDCoMKgwqAg
aWYgKHJldCA9PSAwKQo+ID4+Pj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IF9faTkx
NV9nZW1fb2JqZWN0X3B1dF9wYWdlcyhvYmopOwo+ID4+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAo
cmV0ID09IDApIHsKPiA+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvKiB3d19tdXRleCBh
bmQgbW11X25vdGlmaWVyIGlzIGZzX3JlY2xhaW0gdGFpbnRlZCAqLwo+ID4+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGlmIChpOTE1X2dlbV9vYmplY3RfdHJ5bG9jayhvYmopKSB7Cj4gPj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBfX2k5MTVfZ2VtX29iamVj
dF9wdXRfcGFnZXMob2JqKTsKPiA+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGk5MTVfZ2VtX29iamVjdF91bmxvY2sob2JqKTsKPiA+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB9IGVsc2Ugewo+ID4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
ID0gLUVBR0FJTjsKPiA+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4gPj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgIH0KPiA+Pj4+Cj4gPj4+PiBJJ20gbm90IHN1cmUgdXBzdHJlYW0gd2lsbCBh
Z3JlZSB3aXRoIHRoaXMga2luZCBvZiBBUEk6Cj4gPj4+Pgo+ID4+Pj4gMS4gSXQgd2lsbCBkZWFk
bG9jayB3aGVuIFJUIHRhc2tzIGFyZSB1c2VkLgo+ID4+Pgo+ID4+PiBJdCB3aWxsIG9yIGl0IGNh
bj8gV2hpY2ggcGFydD8gSXQgd2lsbCBicmVhayBvdXQgb2YgdGhlIGxvb3AgaWYgCj4gPj4+IHRy
eWxvY2sgZmFpbHMuCj4gPj4+Cj4gPj4+Pgo+ID4+Pj4gMi4gWW91IHN0YXJ0IHRocm93aW5nIC1F
QUdBSU4gYmVjYXVzZSB5b3UgZG9uJ3QgaGF2ZSB0aGUgY29ycmVjdCAKPiA+Pj4+IG9yZGVyaW5n
IG9mIGxvY2tpbmcsIHRoaXMgbmVlZHMgZml4aW5nIGZpcnN0Lgo+ID4+Pgo+ID4+PiBJcyBpdCBh
Ym91dCBjb3JyZWN0IG9yZGVyaW5nIG9mIGxvY2tzIG9yIHNvbWV0aGluZyBlbHNlPyBJZiBtZW1v
cnkgCj4gPj4+IGFsbG9jYXRpb24gaXMgYWxsb3dlZCB1bmRlciBkbWFfcmVzdi5sb2NrLCB0aGVu
IHRoZSBvcHBvc2l0ZSBvcmRlciAKPiA+Pj4gY2Fubm90IGJlIHRha2VuIGluIGFueSBjYXNlLgo+
ID4+Pgo+ID4+PiBJJ3ZlIGhhZCBhIGJyaWVmIGxvb2sgYXQgdGhlIGFtZGdwdSBzb2x1dGlvbiBh
bmQgbWF5YmUgSSAKPiA+Pj4gbWlzdW5kZXJzdG9vZCBzb21ldGhpbmcsIGJ1dCBpdCBsb29rcyBs
aWtlIGEgQktMIGFwcHJvYWNoIHdpdGggdGhlIAo+ID4+PiBkZXZpY2UgbGV2ZWwgbm90aWZpZXJf
bG9jay4gVGhlaXIgdXNlcnB0ciBub3RpZmllciBibG9ja3Mgb24gdGhhdCAKPiA+Pj4gb25lLCBu
b3Qgb24gZG1hX3Jlc3YgbG9jaywgYnV0IHRoYXQgYWxzbyBtZWFucyB0aGVpciBjb21tYW5kIAo+
ID4+PiBzdWJtaXNzaW9uIChhbWRncHVfY3Nfc3VibWl0KSBibG9ja3Mgb24gdGhlIHNhbWUgbG9j
ayB3aGlsZSAKPiA+Pj4gb2J0YWluaW5nIGJhY2tpbmcgc3RvcmUuCj4gPj4KPiA+PiBJZiBJIHJl
YWQgQ2hyaXN0aWFuIHJpZ2h0LCBpdCBibG9ja3Mgb24gdGhhdCBsb2NrIG9ubHkganVzdCBiZWZv
cmUgCj4gPj4gY29tbWFuZCBzdWJtaXNzaW9uIHRvIHZhbGlkYXRlIHRoYXQgc2VxdWVuY2UgbnVt
YmVyLiBJZiB0aGVyZSBpcyBhIAo+ID4+IG1pc21hdGNoLCBpdCBuZWVkcyB0byByZXJ1biBDUy4g
SSdtIG5vdCBzdXJlIGhvdyBjb21tb24gdXNlcnB0ciAKPiA+PiBidWZmZXJzIGFyZSwgYnV0IGlm
IGEgZGV2aWNlLXdpZGUgbXV0ZXggaHVydHMgdG9vIG11Y2gsIFRoZXJlIGFyZSAKPiA+PiBwZXJo
YXBzIG1vcmUgZmluZS1ncmFpbmVkIHNvbHV0aW9ucy4gKExpa2UgYW4gcncgc2VtYXBob3JlLCBh
bmQgCj4gPj4gdW5sb2NrIGJlZm9yZSB0aGUgZmVuY2Ugd2FpdCBpbiB0aGUgbm90aWZpZXI6IENT
IHdoaWNoIGFyZSB1bmFmZmVjdGVkIAo+ID4+IHNob3VsZG4ndCBuZWVkIHRvIHdhaXQuLi4pLgo+
ID4KPiA+IFJpZ2h0LCBJIHdhc24ndCBmYW1pbGlhciB3aXRoIHRoZSBtbXUgbm90aWZpZXIgc2Vx
bm8gYnVzaW5lc3MuIEhtIGk5MTUgCj4gPiBhbmQgYW1kZ3B1IHNlZW0gdG8gdXNlIGRpZmZlcmVu
dCBtbXUgbm90aWZpZXIgaG9va3MuIENvdWxkIHdlIHVzZSB0aGUgCj4gPiBzYW1lIGFuZCBkb2Vz
IGl0IG1lYW4gImxvY2tpbmcgb3JkZXIiIGlzIGlycmVsZXZhbnQgdG8gdGhlIHN1Yi1zdG9yeSAK
PiA+IG9mIHVzZXJwdHI/Cj4gPgo+ID4+Cj4gPj4+Cj4gPj4+IFNvIGl0IGxvb2tzIGxpa2UgYSBi
aWcgaGFtbWVyIGFwcHJvYWNoIG5vdCBkaXJlY3RseSByZWxhdGVkIHRvIHRoZSAKPiA+Pj4gc3Rv
cnkgb2YgZG1hX3Jlc3YgbG9ja2luZy4gTWF5YmUgd2UgY291bGQgZG8gdGhlIHNhbWUgYmlnIGhh
bW1lciAKPiA+Pj4gYXBwcm9hY2gsIGFsdGhvdWdoIEkgYW0gbm90IHN1cmUgaG93IGl0IGlzIGRl
YWRsb2NrIGZyZWUuCj4gPj4+Cj4gPj4+IFdoYXQgaGFwcGVucyBmb3IgaW5zdGFuY2UgaWYgc29t
ZW9uZSBzdWJtaXRzIGFuIHVzZXJwdHIgYmF0Y2ggd2hpY2ggCj4gPj4+IGdldHMgdW5tYXBwZWQg
d2hpbGUgYW1kZ3B1X2NzX3N1Ym1pdCBpcyBob2xkaW5nIHRoZSBub3RpZmllcl9sb2NrPwo+ID4+
Cj4gPj4gTXkgdW5kZXJzdGFuZGluZyBpcyB0aGUgdW5tYXBwaW5nIG9wZXJhdGlvbiBibG9ja3Mg
b24gdGhlIAo+ID4+IG5vdGlmaWVyX2xvY2sgaW4gdGhlIG1tdSBub3RpZmllcj8KPiA+Cj4gPiBZ
ZXMsIHRoZSBrZXkgd2lsbCBiZSB1bmRlcnN0YW5kaW5nIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4K
PiA+IGludmFsaWRhdGVfcmFuZ2Vfc3RhcnQgYW5kIGludmFsaWRhdGUrc2Vxbm8gYW5kIHdoZXRo
ZXIgd2UgY2FuIHVzZSB0aGUgCj4gPiBzYW1lIGZyb20gaTkxNSB0byBhdm9pZCB0aGUgdHJ5bG9j
ay4KPiA+Cj4gPiBCdXQgZ2l2ZW4gaG93IHd3IG11dGV4IGlzIHRhaW50ZWQgZnMgcmVjbGFpbSBk
b2VzIHRoYXQgbWVhbiB3ZSB3b3VsZCAKPiA+IGFsc28gbmVlZCB0byBlbnN1cmUgbm8gbWVtb3J5
IGFsbG9jYXRpb25zIHVuZGVyIHd3IG11dGV4Pwo+IAo+IFNvIHdpdGggdGhlIGZzX3JlY2xhaW0s
IHdlIGNhbiBkbyBtZW1vcnkgYWxsb2NhdGlvbnMgdW5kZXIgd3dfbXV0ZXgsIGJ1dCAKPiBuZWVk
IHRyeWxvY2sgaW4gc2hyaW5rZXJzIGFuZCBtbXVfbm90aWZpZXJzLiBIb3dldmVyIGdldF91c2Vy
X3BhZ2VzKCkgCj4gbXVzdCBub3QgcnVuIHVuZGVyIHd3X211dGV4IGR1ZSB0byBtbWFwX3NlbSBp
bnZlcnNpb24uCgpUaGVyZSdzIG5vIHJlYWwgcmVhc29uIGZvciB0aGUgc2hyaW5rZXIgdG8gY2Fs
bCBpbnRvIG1tdS1ub3RpZmllcnMsCmNlcnRhaW5seSBkb2Vzbid0IHdvcmsgZm9yIHVzIHdoZXJl
IHdlIGhhbmRsZSB0aGUgc2hyaW5raW5nIHZpYSBhbm90aGVyCnNocmlua2VyLiBUaGUgZGViYXRl
IGlzIGJldHdlZW4gYWRkaW5nIHNraXAgZm9yIHBhZ2VfbWF5YmVfZG1hX3Bpbm5lZCB0bwp0aGUg
bHJ1IHNocmluayBhbmQgZm9yIGZvciBuZXZlciBhZGRpbmcgcGlubmVkIGRtYSBwYWdlcyB0byB0
aGUgbHJ1IGxpc3QKaW4gdGhlIGZpcnN0IHBsYWNlLgogCj4gQnV0IHdpdGggdGhlIEFNRCBzb2x1
dGlvbiBJIGZpZ3VyZSB3ZSBkb24ndCByZWFsbHkgbmVlZCB0aGUgd3dfbXV0ZXggaW4gCj4gdGhl
IG1tdV9ub3RpZmllciBhdCBhbGw/IFRoYXQgd291bGQgcG9zc2libHkgbWVhbiBob2xkaW5nIG9u
IHRvIGFuZCAKPiBleHBvc2luZyB0byBHUFUgaXRzIHBhZ2VzIHRoYXQgYXJlbid0IHVzZWQgYW55
bW9yZSwgYnV0IGEgc2hyaW5rZXIgd291bGQgCj4gbm90aWNlIHRoZSBzZXF1ZW5jZSBudW1iZXIg
bWlzbWF0Y2ggYW5kIGNvbnNpZGVyIHRoZSBwYWdlcyBwdXJnZWFibGUsIAo+IGFuZCBhbHNvIHRo
ZSBuZXh0IGNzIHRoZSBzdGFsZSBwYWdlcyB3b3VsZCBiZSByZWxlYXNlZC4KCllvdSBuZWVkIHNv
bWUgbG9jayB0byBjb29yZGluYXRlIHRvIGdpdmUgdGhlIGd1YXJhbnRlZSByZXF1aXJlZCBieSB0
aGUKbW11LW5vdGlmaWVyIGludGVyZmFjZSB3ZSB1c2UuIEhNTSBpcyBsaWtlbHkgdGhlIG9ubHkg
d2F5IGFyb3VuZCB0aGF0LApieSBtb3ZpbmcgdGhlIGdvYWxwb3N0cyBlbnRpcmVseS4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
