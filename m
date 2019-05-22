Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D032606E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 11:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15377897CD;
	Wed, 22 May 2019 09:25:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7994B89760
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 09:25:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16637713-1500050 for multiple; Wed, 22 May 2019 10:25:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
 <155845847818.23981.11970035434652441216@skylake-alporthouse-com>
 <da6d6099-8996-1539-690d-3822faef4547@intel.com>
 <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
 <7d69dbe8-7fa1-a03a-47b3-7f2579ee38d5@intel.com>
In-Reply-To: <7d69dbe8-7fa1-a03a-47b3-7f2579ee38d5@intel.com>
Message-ID: <155851710985.23981.8303955033927338893@skylake-alporthouse-com>
Date: Wed, 22 May 2019 10:25:09 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNS0yMiAxMDoxOTo0NikKPiBPbiAyMS8w
NS8yMDE5IDE4OjQ4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA1LTIxIDE4OjE5OjUwKQo+ID4+IE9uIDIxLzA1LzIwMTkgMTg6MDcsIENo
cmlzIFdpbHNvbiB3cm90ZToKPiA+Pj4gUXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0w
NS0yMSAxNTowODo1NCkKPiA+Pj4+ICsgICAgICAgaWYgKGViLT5vYV9jb25maWcgJiYKPiA+Pj4+
ICsgICAgICAgICAgIGViLT5vYV9jb25maWcgIT0gZWItPmk5MTUtPnBlcmYub2EuZXhjbHVzaXZl
X3N0cmVhbS0+b2FfY29uZmlnKSB7Cj4gPj4+IEJ1dCB0aGUgb2FfY29uZmlnIGlzIG5vdCBvcmRl
cmVkIHdpdGggcmVzcGVjdCB0byByZXF1ZXN0cywgYW5kIHRoZQo+ID4+PiByZWdpc3RlcnMgY2hh
bmdlZCBoZXJlIGFyZSBub3QgY29udGV4dCBzYXZlZCBhbmQgc28gbWF5IGJlIGNoYW5nZWQgYnkg
YQo+ID4+PiB0aGlyZCBwYXJ0eSBiZWZvcmUgZXhlY3V0aW9uLiBUaGUgZmlyc3QgcGFydHkgbXVz
dCBwcmVzdW1hYmx5IGRyb3BwZWQKPiA+Pj4gdGhlIHBlcmZfZmQgYmVmb3JlIHRoZW4sIHNvIG1h
eWJlIHlvdSBkb24ndCBjYXJlPyBIbW0sIGRvZXNuJ3QgZXZlbiB0YWtlCj4gPj4+IGEgdGhpcmQg
cGFydHkgYXMgdGhlIHBlcmZfZmQgb3duZXIgbWF5IGNoYW5nZSB0aGVpciBtaW5kIGZvciBkaWZm
ZXJlbnQKPiA+Pj4gY29udGV4dHMgYW5kIGJlIHN1cnByaXNlZCB3aGVuIHRoZSB3cm9uZyBzZXQg
aXMgdXNlZC4KPiA+Pgo+ID4+IFRoZSBPQSBjb25maWcgYmF0Y2ggc2hvdWxkIGJlIG9yZGVyZWQg
d2l0aCByZWdhcmQgdG8gdGhlIE1JX0JCUyB3ZSdyZQo+ID4+IGRvaW5nIGp1c3QgYmVsb3cgcmln
aHQ/Cj4gPiBCdXQgeW91IG9ubHkgZW1pdCBpZiB0aGUgb2FfY29uZmlnIGhhcyBjaGFuZ2VkLiBF
cmdvLCBpdCBtYXkgaGF2ZQo+ID4gY2hhbmdlZCBiZXR3ZWVuIHN1Ym1pc3Npb24gYW5kIGV4ZWN1
dGlvbi4KPiA+Cj4gPj4gSXQncyB3cml0dGVuIGJlZm9yZSBpbiB0aGUgcmluZyBidWZmZXIuCj4g
Pj4KPiA+Pgo+ID4+IFRoYXQgZXNzZW50aWFsbHkgYWxsIHdlIG5lZWQgc28gdGhhdCBhcyB0aGUg
cGVyZiBxdWVyaWVzIHJ1biBpbiB0aGUKPiA+PiBiYXRjaCBzdXBwbGllZCBieSB0aGUgYXBwbGlj
YXRpb24gcnVucyB3aXRoIHRoZSBjb25maWd1cmF0aW9uIG5lZWRlZC4KPiA+Pgo+ID4+IElmIHRo
ZSBhcHBsaWNhdGlvbiBzaGFyZXMgdGhlIHBlcmYgRkQgYW5kIHNvbWVvbmUgZWxzZSBydW5zIGFu
b3RoZXIKPiA+PiBjb25maWd1cmF0aW9uLCBpdCdzIHRoZSBhcHBsaWNhdGlvbiBmYXVsdC4KPiA+
Pgo+ID4+IEl0IG5lZWRzIHRvIGhvbGQgdGhlIHBlcmYgRkQgZm9yIGFzIGxvbmcgYXMgaXQncyBk
b2luZyBwZXJmIHF1ZXJpZXMgYW5kCj4gPj4gbm90IGFsbG93IGFueWJvZHkgZWxzZSB0byBpbnRl
cmFjdCB3aXRoIHRoZSBPQSBjb25maWd1cmF0aW9uLgo+ID4gSWYgb25lIGFwcCBpcyB0cnlpbmcg
dG8gdXNlIGRpZmZlcmVudCBjb25maWdzIG9uIGRpZmZlcmVudCBjb250ZXh0cwo+ID4gKHdoaWNo
IHNlZW1zIHJlYXNvbmFibGUgaWYgaXQgaXMgdHJ5aW5nIHRvIHNhbXBsZSBkaWZmZXJlbnQgc3Rh
dHM/KSB0aGVuCj4gPiBpdCBjYW4gYmUgY2F1Z2h0IG91dC4gVGhlIG9yZGVyIG9mIGV4ZWN1dGlv
biBpcyBub3QgdGhlIHNhbWUgYXMgdGhlCj4gPiBvcmRlciBvZiBzdWJtaXNzaW9uICh1bmxlc3Mg
d2UgZW5mb3JjZSBpdCBieSBlLmcuIGRlZmluaW5nIHRoZQo+ID4gcGVyZi5vYV9jb25maWcgYXMg
YSBiYXJyaWVyKS4KPiAKPiAKPiBUaGlua2luZyBhYm91dCB0aGlzIGEgYml0IG1vcmUsIHRoZSB1
c2UgY2FzZSBoZXJlIHdhcyBhbHdheXMgdGhhdCB0aGUgCj4gYXBwIGlzIHRoZSBzaW5nbGUgdXNl
ciBvZiB0aGUgT0EgdW5pdC4KPiAKPiBJbiB0aGlzIHNjZW5hcmlvLCB0aGUgYXBwIGlzIGRvaW5n
IHF1ZXJpZXMgYW5kIHNob3VsZCBub3Qgc2hhcmUgdGhlIAo+IGNvbmZpZ3VyYXRpb24gb2YgdGhl
IE9BIEhXIHdpdGggYW55Ym9keSBlbHNlLgoKV2hhdCBhYm91dCB3aXRoIGl0c2VsZj8gQW5kIGRv
ZXMgdGhhdCBleGN1c2UgdGhlIGtlcm5lbCBjYXJyeWluZyBhClRPQ1RPVSBidWc/Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
