Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A524D9B479
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 18:31:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B64EA6E083;
	Fri, 23 Aug 2019 16:31:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C8F56E083
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 16:31:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242954-1500050 for multiple; Fri, 23 Aug 2019 17:31:39 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <db509eba-c142-1cc1-9e84-e5af15df4212@intel.com>
References: <20190823020909.6029-1-daniele.ceraolospurio@intel.com>
 <156654524525.27716.6405573408447860616@skylake-alporthouse-com>
 <156657036871.27716.10415431163024851672@skylake-alporthouse-com>
 <d34b64fd-4ece-ffea-6ab3-0ef1dbaf5ce1@intel.com>
 <156657304893.4019.6114530226750288695@skylake-alporthouse-com>
 <156657412207.4019.2312887558171300172@skylake-alporthouse-com>
 <f8bd967c-de26-730b-9871-ec918279e06b@intel.com>
 <156657556096.4019.5895875072663620308@skylake-alporthouse-com>
 <db509eba-c142-1cc1-9e84-e5af15df4212@intel.com>
Message-ID: <156657789715.4019.2928233627730037459@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 23 Aug 2019 17:31:37 +0100
Subject: Re: [Intel-gfx] [RFC] drm/i915/tgl: Advanced preparser support for
 GPU relocs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjU2OjU0KQo+IAo+
IAo+IE9uIDgvMjMvMTkgODo1MiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIzIDE2OjM5OjE0KQo+ID4+Cj4gPj4KPiA+
PiBPbiA4LzIzLzE5IDg6MjggQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDgtMjMgMTY6MTA6NDgpCj4gPj4+PiBRdW90aW5nIERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gKDIwMTktMDgtMjMgMTY6MDU6NDUpCj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+
Pj4+IE9uIDgvMjMvMTkgNzoyNiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+Pj4+PiBRdW90
aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wOC0yMyAwODoyNzoyNSkKPiA+Pj4+Pj4+IFF1b3Rpbmcg
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyAoMjAxOS0wOC0yMyAwMzowOTowOSkKPiA+Pj4+Pj4+PiBU
R0wgaGFzIGFuIGltcHJvdmVkIENTIHByZS1wYXJzZXIgdGhhdCBjYW4gbm93IHByZS1mZXRjaCBj
b21tYW5kcyBhY3Jvc3MKPiA+Pj4+Pj4+PiBiYXRjaCBib3VuZGFyaWVzLiBUaGlzIGltcHJvdmVz
IHBlcmZvcm1hbmNlcyB3aGVuIGxvdHMgb2Ygc21hbGwgYmF0Y2hlcwo+ID4+Pj4+Pj4+IGFyZSB1
c2VkLCBidXQgaGFzIGFuIGltcGFjdCBvbiBzZWxmLW1vZGlmeWluZyBjb2RlLiBJZiB3ZSB3YW50
IHRvIG1vZGlmeQo+ID4+Pj4+Pj4+IHRoZSBjb250ZW50IG9mIGEgYmF0Y2ggZnJvbSBhbm90aGVy
IHJpbmcvYmF0Y2gsIHdlIG5lZWQgdG8gZWl0aGVyCj4gPj4+Pj4+Pj4gZ3VhcmFudGVlIHRoYXQg
dGhlIG1lbW9yeSBsb2NhdGlvbiBpcyB1cGRhdGVkIGJlZm9yZSB0aGUgcHJlLXBhcnNlciBnZXRz
Cj4gPj4+Pj4+Pj4gdG8gaXQgb3Igd2UgbmVlZCB0byB0dXJuIHRoZSBwcmUtcGFyc2VyIG9mZiBh
cm91bmQgdGhlIG1vZGlmaWNhdGlvbi4KPiA+Pj4+Pj4+PiBJbiBpOTE1LCB3ZSB1c2Ugc2VsZi1t
b2RpZnlpbmcgY29kZSBvbmx5IGZvciBHUFUgcmVsb2NhdGlvbnMuCj4gPj4+Pj4+Pj4KPiA+Pj4+
Pj4+PiBUaGUgcHJlLXBhcnNlciBmZXRjaGVzIGFjcm9zcyBtZW1vcnkgc3luY2hyb25pemF0aW9u
IGNvbW1hbmRzIGFzIHdlbGwsCj4gPj4+Pj4+Pj4gc28gdGhlIG9ubHkgd2F5IHRvIGd1YXJhbnRl
ZSB0aGF0IHRoZSB3cml0ZXMgbGFuZCBiZWZvcmUgdGhlIHBhcnNlciBnZXRzCj4gPj4+Pj4+Pj4g
dG8gaXQgaXMgdG8gaGF2ZSBtb3JlIGluc3RydWN0aW9ucyBiZXR3ZWVuIHRoZSBzeW5jIGFuZCB0
aGUgZGVzdGluYXRpb24KPiA+Pj4+Pj4+PiB0aGFuIHRoZSBwYXJzZXIgRklGTyBkZXB0aCwgd2hp
Y2ggaXMgbm90IGFuIG9wdGltYWwgc29sdXRpb24uCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gV2VsbCwg
b3VyIEFCSSBpcyB0aGF0IG1lbW9yeSBpcyBjb2hlcmVudCBiZWZvcmUgdGhlIGJyZWFkY3J1bWIg
b2YgKmVhY2gqCj4gPj4+Pj4+PiBiYXRjaC4gVGhhdCBpcyBhIGZ1bmRhbWVudGFsIHJlcXVpcmVt
ZW50IGZvciBvdXIgc2lnbmFsaW5nIHRvIHVzZXJzcGFjZS4KPiA+Pj4+Pj4+IFBsZWFzZSB0ZWxs
IG1lIHRoYXQgdGhlcmUgaXMgYSBjb250ZXh0IGZsYWcgdG8gdHVybiB0aGlzIG9mZiwgb3Igd2Ug
ZWxzZQo+ID4+Pj4+Pj4gd2UgbmVlZCB0byBlbWl0IDMyeCBmbHVzaGVzIG9yIHdoYXRldmVyIGl0
IHRha2VzLgo+ID4+Pj4+Pgo+ID4+Pj4+IEFyZSB5b3UgcmVmZXJyaW5nIHRvIHRoZSBzcGVjaWZp
YyBjYXNlIHdoZXJlIHdlIGhhdmUgYSByZXF1ZXN0IG1vZGlmeWluZwo+ID4+Pj4+IGFuIG9iamVj
dCB0aGF0IGlzIHRoZW4gdXNlZCBhcyBhIGJhdGNoIGluIHRoZSBuZXh0IHJlcXVlc3Q/IEJlY2F1
c2UKPiA+Pj4+PiBjb2hlcmVuY3kgb2Ygb2JqZWN0cyB0aGF0IGFyZSBub3QgZXhlY3V0ZWQgYXMg
YmF0Y2hlcyBpcyBub3QgaW1wYWN0ZWQuCj4gPj4+Pgo+ID4+Pj4gIkZldGNoZXMgYWNyb3NzIG1l
bW9yeSBzeW5jIiBzb3VuZHMgbGlrZSBhIG1ham9yIEFCSSBicmVhay4gVGhlIGJhdGNoZXMKPiA+
Pj4+IGFyZSBhIGhhcmQgc2VyaWFsaXNhdGlvbiBiYXJyaWVyLCB3aXRoIG1lbW9yeSBjb2hlcmVu
Y3kgZ3VhcmFudGVlZCBwcmlvcgo+ID4+Pj4gdG8gdGhlIHNpZ25hbGluZyBhdCB0aGUgZW5kIG9m
IG9uZSBiYXRjaCBhbmQgY2xlYXIgY2FjaGVzIGd1YXJhbnRlZWQgYXQKPiA+Pj4+IHRoZSBzdGFy
dCBvZiB0aGUgbmV4dC4KPiA+Pj4KPiA+Pj4gV2UgaGF2ZSByZWxvY3MsIG9hIGFuZCBzc2V1IGFs
bCB1c2luZyBzZWxmLW1vZGlmeWluZyBjb2RlLiBJIGV4cGVjdCB3ZQo+ID4+PiB3aWxsIGhhdmUg
UFRFIG1vZGlmaWNhdGlvbnMgYW5kIG11Y2ggbW9yZSBkb25lIHZpYSB0aGUgR1BVIGluIHRoZSBu
ZWFyCj4gPj4+IGZ1dHVyZS4gQWxsIHJlbHkgb24gdGhlIENTX1NUQUxMIGRvaW5nIGV4YWN0bHkg
d2hhdCBpdCBzYXlzIG9uIHRoZSB0aW4uCj4gPj4+IC1DaHJpcwo+ID4+Pgo+ID4+Cj4gPj4gSSBn
dWVzcyB0aGUgZWFzaWVzdCBzb2x1dGlvbiBpcyB0aGVuIHRvIGtlZXAgdGhlIHBhcnNlciBvZmYg
b3V0c2lkZSBvZgo+ID4+IHVzZXIgYmF0Y2hlcy4gV2UgY2FuIGRlZmF1bHQgdG8gb2ZmIGFuZCB0
aGVuIHJlc3RvcmUgd2hhdCB0aGUgdXNlciBoYXMKPiA+PiBwcm9ncmFtbWVkIGJlZm9yZSB0aGUg
QkJTVEFSVC4gSXQncyBub3QgYSBicmVhY2ggb2YgY29udHJhY3QgaWYgd2Ugc2F5Cj4gPj4gdGhh
dCBpZiB5b3Ugb3B0LWluIHRvIHRoZSBwYXJzZXIgdGhlbiB5b3UgbmVlZCB0byBtYWtlIHN1cmUg
eW91ciBiYXRjaGVzCj4gPj4gYXJlIG5vdCBzZWxmLW1vZGlmeWluZywgcmlnaHQ/Cj4gPiAKPiA+
IElzIGl0IGp1c3QgdGhlIE1JX0FSQl9PTk9GRiBiaXRzLCBhbmQgaXMgdGhhdCBzdGlsbCBhIHBy
aXZpbGVnZWQKPiA+IGNvbW1hbmQ/IGkuZS4gY2FuIHVzZXJzcGFjZSBjaGFuZ2UgbW9kZSBieSBp
dHNlbGYsIG9yIGl0IGlzIGEKPiA+IGNvbnRleHQtcGFyYW0/Cj4gCj4gSXQncyB0aGUgQVJCX0NI
RUNLLCBub3QgdGhlIEFSQl9PTk9GRiwgc28geWVzLCBpdCBpcyBub3QgcHJpdmlsZWdlZCBhbmQg
Cj4gdXNlcnNwYWNlIGNhbiBtb2RpZnkgaXQgaXRzZWxmLiBJdCB3b3VsZCd2ZSBiZWVuIGVhc2ll
ciBpZiBpdCB3YXMgYSAKPiBjb250ZXh0IHBhcmFtIDopCgpEb2VzIGl0IGdvIGFjcm9zcyBhIGNv
bnRleHQgc3dpdGNoPyBUaGF0IG1pZ2h0IGJlIGFuIGVhc3kgc29sdXRpb24gZm9yCm91ciBpbnRl
cm5hbCByZXF1ZXN0cyAoYWxyZWFkeSB0cnVlIGZvciBvYS9zc2V1IHdoZXJlIHdlIHVzZSBvbmUg
Y29udGV4dAp0byBtb2RpZnkgYW5vdGhlcikuIEkgZG8gd29ycnkgdGhvdWdoIGlmIHRoZXJlIG1p
Z2h0IGJlIGxlYWthZ2UKYWNyb3NzIG91ciBmbHVzaC1pbnZhbGlkYXRlIGJhcnJpZXJzIGJldHdl
ZW4gdXNlcnNwYWNlIGJhdGNoZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
