Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B09AFB81
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 13:38:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB6F26EA94;
	Wed, 11 Sep 2019 11:38:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6358E6EA94
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 11:38:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18450400-1500050 for multiple; Wed, 11 Sep 2019 12:38:41 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <90d744ec-17ac-b8d1-e9c0-d34c16adcd4f@linux.intel.com>
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
 <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
 <951e2751-15d7-9ca8-ef6f-299ba59c47a6@linux.intel.com>
 <156337241401.4375.2377981562987470090@skylake-alporthouse-com>
 <d867c0e8-e2e1-fff6-d073-3d5d98335712@linux.intel.com>
 <4a90e8f9-694c-8dea-45b6-e5ea5677df64@intel.com>
 <156803716592.27961.18000112287811684297@skylake-alporthouse-com>
 <90d744ec-17ac-b8d1-e9c0-d34c16adcd4f@linux.intel.com>
Message-ID: <156820191991.2643.4682362430205149096@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 12:38:39 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0xMSAxMjozMTozMikKPiAKPiBPbiAwOS8w
OS8yMDE5IDE0OjUyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA3LTI2IDE0OjM4OjQwKQo+ID4+IE9uIDE3LzA3LzIwMTkgMjE6MDksIFR2
cnRrbyBVcnN1bGluIHdyb3RlOgo+ID4+Pgo+ID4+PiBPbiAxNy8wNy8yMDE5IDE1OjA2LCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gPj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3
IDE0OjQ2OjE1KQo+ID4+Pj4+Cj4gPj4+Pj4gT24gMTcvMDcvMjAxOSAxNDozNSwgQ2hyaXMgV2ls
c29uIHdyb3RlOgo+ID4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3IDE0
OjIzOjU1KQo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IE9uIDE3LzA3LzIwMTkgMTQ6MTcsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE3
IDE0OjA5OjAwKQo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBPbiAxNi8wNy8yMDE5IDE2OjM3LCBD
aHJpcyBXaWxzb24gd3JvdGU6Cj4gPj4+Pj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgy
MDE5LTA3LTE2IDE2OjI1OjIyKQo+ID4+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Pj4gT24gMTYvMDcv
MjAxOSAxMzo0OSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+Pj4+Pj4+Pj4+PiBGb2xsb3dpbmcg
YSB0cnlfdG9fdW5tYXAoKSB3ZSBtYXkgd2FudCB0byByZW1vdmUgdGhlIHVzZXJwdHIKPiA+Pj4+
Pj4+Pj4+Pj4gYW5kIHNvIGNhbGwKPiA+Pj4+Pj4+Pj4+Pj4gcHV0X3BhZ2VzKCkuIEhvd2V2ZXIs
IHRyeV90b191bm1hcCgpIGFjcXVpcmVzIHRoZSBwYWdlIGxvY2sKPiA+Pj4+Pj4+Pj4+Pj4gYW5k
IHNvIHdlCj4gPj4+Pj4+Pj4+Pj4+IG11c3QgYXZvaWQgcmVjdXJzaXZlbHkgbG9ja2luZyB0aGUg
cGFnZXMgb3Vyc2VsdmVzIC0tIHdoaWNoCj4gPj4+Pj4+Pj4+Pj4+IG1lYW5zIHRoYXQKPiA+Pj4+
Pj4+Pj4+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRoZSBsb2NrIGFyb3VuZCBzZXRfcGFn
ZV9kaXJ0eSgpLgo+ID4+Pj4+Pj4+Pj4+PiBTaW5jZSB3ZQo+ID4+Pj4+Pj4+Pj4+PiBjYW4ndCBi
ZSBzdXJlIG9mIHRoZSBsb2NrLCB3ZSBoYXZlIHRvIHJpc2sgc2tpcCBkaXJ0eWluZyB0aGUKPiA+
Pj4+Pj4+Pj4+Pj4gcGFnZSwgb3IKPiA+Pj4+Pj4+Pj4+Pj4gZWxzZSByaXNrIGNhbGxpbmcgc2V0
X3BhZ2VfZGlydHkoKSB3aXRob3V0IGEgbG9jayBhbmQgc28gcmlzayBmcwo+ID4+Pj4+Pj4+Pj4+
PiBjb3JydXB0aW9uLgo+ID4+Pj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+Pj4gU28gaWYgdHJ5bG9jayBy
YW5kb21seSBmYWlsIHdlIGdldCBkYXRhIGNvcnJ1cHRpb24gaW4gd2hhdGV2ZXIKPiA+Pj4+Pj4+
Pj4+PiBkYXRhIHNldAo+ID4+Pj4+Pj4+Pj4+IGFwcGxpY2F0aW9uIGlzIHdvcmtpbmcgb24sIHdo
aWNoIGlzIHdoYXQgdGhlIG9yaWdpbmFsIHBhdGNoCj4gPj4+Pj4+Pj4+Pj4gd2FzIHRyeWluZwo+
ID4+Pj4+Pj4+Pj4+IHRvIGF2b2lkPyBBcmUgd2UgYWJsZSB0byBkZXRlY3QgdGhlIGJhY2tpbmcg
c3RvcmUgdHlwZSBzbyBhdAo+ID4+Pj4+Pj4+Pj4+IGxlYXN0IHdlCj4gPj4+Pj4+Pj4+Pj4gZG9u
J3QgcmlzayBza2lwcGluZyBzZXRfcGFnZV9kaXJ0eSB3aXRoIGFub255bW91cy9zaG1lbWZzPwo+
ID4+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4+IHBhZ2UtPm1hcHBpbmc/Pz8KPiA+Pj4+Pj4+Pj4KPiA+
Pj4+Pj4+Pj4gV291bGQgcGFnZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/
Cj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+PiBJdCBiYXNpY2FsbHkgdGVsbHMgdXMgaWYgdGhlcmUgaXMg
YSBmcyBhcm91bmQ7IGFueXRoaW5nIHRoYXQgaXMKPiA+Pj4+Pj4+PiB0aGUgbW9zdAo+ID4+Pj4+
Pj4+IGJhc2ljIG9mIG1hbGxvYyAoZXZlbiB0bXBmcy9zaG1lbWZzIGhhcyBwYWdlLT5tYXBwaW5n
KS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBOb3JtYWwgbWFsbG9jIHNvIGFub255bW91cyBwYWdlcz8g
T3IgeW91IG1lYW50IGV2ZXJ5dGhpbmcgX2FwYXJ0Xwo+ID4+Pj4+Pj4gZnJvbQo+ID4+Pj4+Pj4g
dGhlIG1vc3QgYmFzaWMgbWFsbG9jPwo+ID4+Pj4+Pgo+ID4+Pj4+PiBBeWUgbWlzc2VkIHRoZSBu
b3QuCj4gPj4+Pj4+Cj4gPj4+Pj4+Pj4+PiBXZSBzdGlsbCBoYXZlIHRoZSBpc3N1ZSB0aGF0IGlm
IHRoZXJlIGlzIGEgbWFwcGluZyB3ZSBzaG91bGQgYmUKPiA+Pj4+Pj4+Pj4+IHRha2luZwo+ID4+
Pj4+Pj4+Pj4gdGhlIGxvY2ssIGFuZCB3ZSBtYXkgaGF2ZSBib3RoIGEgbWFwcGluZyBhbmQgYmUg
aW5zaWRlCj4gPj4+Pj4+Pj4+PiB0cnlfdG9fdW5tYXAoKS4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+
Pj4gSXMgdGhpcyBhIHByb2JsZW0/IE9uIGEgcGF0aCB3aXRoIG1hcHBpbmdzIHdlIHRyeWxvY2sg
YW5kIHNvCj4gPj4+Pj4+Pj4+IHNvbHZlIHRoZQo+ID4+Pj4+Pj4+PiBzZXRfZGlydHlfbG9ja2Vk
IGFuZCByZWN1cnNpdmUgZGVhZGxvY2sgaXNzdWVzLCBhbmQgd2l0aCBubwo+ID4+Pj4+Pj4+PiBt
YXBwaW5ncwo+ID4+Pj4+Pj4+PiB3aXRoIGFsd2F5cyBkaXJ0eSB0aGUgcGFnZSBhbmQgYXZvaWQg
ZGF0YSBjb3JydXB0aW9uLgo+ID4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4gVGhlIHByb2JsZW0gYXMgSSBz
ZWUgaXQgaXMgIXBhZ2UtPm1hcHBpbmcgYXJlIGxpa2VseSBhbgo+ID4+Pj4+Pj4+IGluc2lnbmlm
aWNhbnQKPiA+Pj4+Pj4+PiBtaW5vcml0eSBvZiB1c2VycHRyOyBhcyBJIHRoaW5rIGV2ZW4gbWVt
ZmQgYXJlIGVzc2VudGlhbGx5Cj4gPj4+Pj4+Pj4gc2htZW1mcyAob3IKPiA+Pj4+Pj4+PiBodWdl
dGxiZnMpIGFuZCBzbyBoYXZlIG1hcHBpbmdzLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEJldHRlciB0
aGVuIG5vdGhpbmcsIG5vPyBJZiBlYXN5IHRvIGRvLi4KPiA+Pj4+Pj4KPiA+Pj4+Pj4gQWN0dWFs
bHksIEkgZXJyaW5nIG9uIHRoZSBvcHBvc2l0ZSBzaWRlLiBQZWVraW5nIGF0IG1tLyBpbnRlcm5h
bHMgZG9lcwo+ID4+Pj4+PiBub3QgYm9kZSBjb25maWRlbmNlIGFuZCBmZWVscyBpbmRlZmVuc2li
bGUuIEknZCBtdWNoIHJhdGhlciB0aHJvdyBteQo+ID4+Pj4+PiBoYW5kcyB1cCBhbmQgc2F5ICJ0
aGlzIGlzIHRoZSBiZXN0IHdlIGNhbiBkbyB3aXRoIHRoZSBBUEkgcHJvdmlkZWQsCj4gPj4+Pj4+
IHBsZWFzZSB0ZWxsIHVzIHdoYXQgd2Ugc2hvdWxkIGhhdmUgZG9uZS4iIFRvIHdoaWNoIHRoZSBh
bnN3ZXIgaXMKPiA+Pj4+Pj4gcHJvYmFibHkgdG8gbm90IGhhdmUgdXNlZCBndXAgaW4gdGhlIGZp
cnN0IHBsYWNlIDp8Cj4gPj4+Pj4KPiA+Pj4+PiAiIiIKPiA+Pj4+PiAvKgo+ID4+Pj4+ICDCoCAq
IHNldF9wYWdlX2RpcnR5KCkgaXMgcmFjeSBpZiB0aGUgY2FsbGVyIGhhcyBubyByZWZlcmVuY2Ug
YWdhaW5zdAo+ID4+Pj4+ICDCoCAqIHBhZ2UtPm1hcHBpbmctPmhvc3QsIGFuZCBpZiB0aGUgcGFn
ZSBpcyB1bmxvY2tlZC4gVGhpcyBpcwo+ID4+Pj4+IGJlY2F1c2UgYW5vdGhlcgo+ID4+Pj4+ICDC
oCAqIENQVSBjb3VsZCB0cnVuY2F0ZSB0aGUgcGFnZSBvZmYgdGhlIG1hcHBpbmcgYW5kIHRoZW4g
ZnJlZSB0aGUKPiA+Pj4+PiBtYXBwaW5nLgo+ID4+Pj4+ICDCoCAqCj4gPj4+Pj4gIMKgICogVXN1
YWxseSwgdGhlIHBhZ2UgX2lzXyBsb2NrZWQsIG9yIHRoZSBjYWxsZXIgaXMgYSB1c2VyLXNwYWNl
Cj4gPj4+Pj4gcHJvY2VzcyB3aGljaAo+ID4+Pj4+ICDCoCAqIGhvbGRzIGEgcmVmZXJlbmNlIG9u
IHRoZSBpbm9kZSBieSBoYXZpbmcgYW4gb3BlbiBmaWxlLgo+ID4+Pj4+ICDCoCAqCj4gPj4+Pj4g
IMKgICogSW4gb3RoZXIgY2FzZXMsIHRoZSBwYWdlIHNob3VsZCBiZSBsb2NrZWQgYmVmb3JlIHJ1
bm5pbmcKPiA+Pj4+PiBzZXRfcGFnZV9kaXJ0eSgpLgo+ID4+Pj4+ICDCoCAqLwo+ID4+Pj4+IGlu
dCBzZXRfcGFnZV9kaXJ0eV9sb2NrKHN0cnVjdCBwYWdlICpwYWdlKQo+ID4+Pj4+ICIiIgo+ID4+
Pj4+Cj4gPj4+Pj4gQ291bGQgd2UgaG9sZCBhIHJlZmVyZW5jZSB0byBwYWdlLT5tYXBwaW5nLT5o
b3N0IHdoaWxlIGhhdmluZyBwYWdlcwo+ID4+Pj4+IGFuZCB0aGVuIHdvdWxkIGJlIG9rYXkgdG8g
Y2FsbCBwbGFpbiBzZXRfcGFnZV9kaXJ0eT8KPiA+Pj4+Cj4gPj4+PiBXZSB3b3VsZCB0aGVuIGJl
IGhpdHRpbmcgdGhlIHdhcm5pbmdzIGluIGV4dDQgZm9yIHVubG9ja2VkIHBhZ2VzIGFnYWluLgo+
ID4+Pgo+ID4+PiBBaCB0cnVlLi4KPiA+Pj4KPiA+Pj4+IEVzc2VudGlhbGx5IHRoZSBhcmd1bWVu
dCBpcyB3aGV0aGVyIG9yIG5vdCB0aGF0IHdhcm4gaXMgdmFsaWQsIHRvCj4gPj4+PiB3aGljaCBJ
Cj4gPj4+PiB0aGluayByZXF1aXJlcyBpbm5lciBrbm93bGVkZ2Ugb2YgdmZzICsgZXh0NC4gVG8g
aG9sZCBhIHJlZmVyZW5jZSBvbiB0aGUKPiA+Pj4+IGhvc3Qgd291bGQgcmVxdWlyZSB1cyB0cmFj
a2luZyBwYWdlLT5tYXBwaW5nIChyZWFzb25hYmxlIHNpbmNlIHdlCj4gPj4+PiBhbHJlYWR5IGhv
b2tlZCBpbnRvIG1tdSBhbmQgc28gd2lsbCBnZXQgYW4gaW52YWxpZGF0ZSArIGZyZXNoIGd1cCBv
bgo+ID4+Pj4gYW55IGNoYW5nZXMpLCBwbHVzIGl0ZXJhdGluZyBvdmVyIGFsbCB0byBhY3F1aXJl
IHRoZSBleHRyYSByZWZlcmVuY2UgaWYKPiA+Pj4+IGFwcGxpY2FibGUgLS0gYW5kIEkgaGF2ZSBu
byBpZGVhIHdoYXQgdGhlIHNpZGUtZWZmZWN0cyBvZiB0aGF0IHdvdWxkIGJlLgo+ID4+Pj4gQ291
bGQgd2VsbCBiZSBwb3NpdGl2ZSBzaWRlLWVmZmVjdHMuIEp1c3QgZmVlbHMgbGlrZSB3YW5kZXJp
bmcgZXZlbgo+ID4+Pj4gZnVydGhlciBvZmYgdGhlIGJlYXRlbiBwYXRoIHdpdGhvdXQgYSBtYXAu
IEdvb2QgbmV3cyBobW0gaXMganVzdCBhcm91bmQKPiA+Pj4+IHRoZSBjb3JuZXIgKHdoaWNoIHdp
bGwgcHJvYmFibHkgcHJvaGliaXQgdGhpcyB1c2UtY2FzZSkgOnwKPiA+Pj4KPiA+Pj4gLi4uIGNh
biB3ZSByZWFjaCBvdXQgdG8gc29tZW9uZSBtb3JlIGtub3dsZWRnZWFibGUgaW4gbW0gbWF0dGVy
cyB0bwo+ID4+PiByZWNvbW1lbmQgdXMgd2hhdCB0byBkbz8KPiA+Pj4KPiA+Pj4gUmVnYXJkcywK
PiA+Pj4KPiA+Pj4gVHZydGtvCj4gPj4KPiA+Pgo+ID4+IEp1c3QgYSByZW1pbmRlciB0byBub3Qg
bGV0IHRoaXMgc2xpcC4KPiA+PiBXZSBydW4gaW50byB1c2VycHRyIGJ1Z3MgaW4gQ0kgcXVpdGUg
cmVndWxhcmx5Lgo+ID4gCj4gPiBSZW1pbmQgYXdheS4gUmV2ZXJ0IG9yIHRyeWxvY2ssIHRoZXJl
IGRvZXNuJ3Qgc2VlbSB0byBiZSBhIGdvb2QgYW5zd2VyLgo+IAo+IFJvY2sgYW5kIGEgaGFyZCBw
bGFjZS4gRGF0YSBjb3JydXB0aW9uIGZvciB1c2VycHRyIHVzZXJzICh3aXRoIGVpdGhlciAKPiB0
cnlsb2NrIG9yIG5vIGxvY2spIG9yIGEgZGVhZGxvY2sgKHdpdGggdGhlIGxvY2spLiBJIGhvbmVz
dGx5IGNhbid0IAo+IGRlY2lkZSB3aGF0IGlzIHdvcnNlLiBUaW55IHByZWZlcmVuY2UgdG8gZGVh
ZGxvY2sgcmF0aGVyIHRoYW4gc2lsZW50IAo+IGNvcnJ1cHRpb24uIE1pc2d1aWRlZD8gRG9uJ3Qg
a25vdyByZWFsbHkuLgoKVGhlIGRlYWRsb2NrIGlzIHByZXR0eSBlYXN5IHRvIGhpdCBhcyBzb29u
IGFzIHRoZSBzeXN0ZW0gaXMgdW5kZXIKbWVtcHJlc3N1cmUgYW5kIGl0IHRyaWVzIHRvIGZyZWUg
cGFnZXMgYXMgd2UgZG8gdGhlIHVzZXJwdHIgZ3VwLi4uCihIYWgsIGVhc3kgaW4gdGhlb3J5LCBi
dXQgbm90IGluIENJLikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
