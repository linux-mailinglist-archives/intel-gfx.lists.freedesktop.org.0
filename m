Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D0F6525D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 09:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F5D6E0C8;
	Thu, 11 Jul 2019 07:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44A9A6E0C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 07:23:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 00:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193314181"
Received: from dawalker-mobl.ger.corp.intel.com (HELO [10.251.80.131])
 ([10.251.80.131])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jul 2019 00:23:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190708111944.20095-1-chris@chris-wilson.co.uk>
 <90ade255-1338-0c87-4df9-f445b66cefaf@linux.intel.com>
 <156258817632.9375.11792986185475548766@skylake-alporthouse-com>
 <30a45908-0857-83fa-5f03-07dd481d8ec2@linux.intel.com>
 <156259317575.9375.9765045306016542839@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c8892810-91dd-d24a-260c-62364a559dfc@linux.intel.com>
Date: Thu, 11 Jul 2019 08:23:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156259317575.9375.9765045306016542839@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/oa: Reconfigure contexts on
 the fly
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA4LzA3LzIwMTkgMTQ6MzksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTA4IDEzOjI0OjM5KQo+Pgo+PiBPbiAwOC8wNy8yMDE5IDEzOjE2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTA4IDEzOjEwOjM0KQo+Pj4+Cj4+Pj4gT24gMDgvMDcvMjAxOSAxMjoxOSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBBdm9pZCBhIGdsb2JhbCBpZGxlIGJhcnJpZXIgYnkgcmVjb25maWd1cmlu
ZyBlYWNoIGNvbnRleHQgYnkgcmV3cml0aW5nCj4+Pj4+IHRoZW0gd2l0aCBNSV9TVE9SRV9EV09S
RCBmcm9tIHRoZSBrZXJuZWwgY29udGV4dC4KPj4+Pj4KPj4+Pj4gdjI6IFdlIG9ubHkgbmVlZCB0
byBkZXRlcm1pbmUgdGhlIGRlc2lyZWQgcmVnaXN0ZXIgdmFsdWVzIG9uY2UsIHRoZXkgYXJlCj4+
Pj4+IHRoZSBzYW1lIGZvciBhbGwgY29udGV4dHMuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+PiBDYzogTGlvbmVs
IExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+Pj4+PiBDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Pj4gUmV2aWV3ZWQtYnk6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4+Pj4g
LS0tCj4+Pj4+ICAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
IHwgICAyICsKPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAg
ICAgICAgfCAgIDcgKy0KPj4+Pj4gICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
ICAgICAgICAgICAgfCAyNDggKysrKysrKysrKysrKysrLS0tLS0KPj4+Pj4gICAgIDMgZmlsZXMg
Y2hhbmdlZCwgMTk1IGluc2VydGlvbnMoKyksIDYyIGRlbGV0aW9ucygtKQo+Pj4+Pgo+Pj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPj4+Pj4gaW5kZXgg
ZTM2N2RjZTJhNjk2Li4xZjBkMTBiYjg4YzEgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+Pj4+PiBAQCAtNjI0LDcgKzYyNCw5IEBA
IGk5MTVfZ2VtX2NvbnRleHRfY3JlYXRlX2tlcm5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSwgaW50IHByaW8pCj4+Pj4+ICAgICAgICAgY3R4LT5zY2hlZC5wcmlvcml0eSA9IEk5MTVf
VVNFUl9QUklPUklUWShwcmlvKTsKPj4+Pj4gICAgICAgICBjdHgtPnJpbmdfc2l6ZSA9IFBBR0Vf
U0laRTsKPj4+Pj4gICAgIAo+Pj4+PiArICAgICAvKiBJc29sYXRlIHRoZSBrZXJuZWwgY29udGV4
dCBmcm9tIHByeWluZyBleWVzIGFuZCBzdGlja3kgZmluZ2VycyAqLwo+Pj4+PiAgICAgICAgIEdF
TV9CVUdfT04oIWk5MTVfZ2VtX2NvbnRleHRfaXNfa2VybmVsKGN0eCkpOwo+Pj4+PiArICAgICBs
aXN0X2RlbF9pbml0KCZjdHgtPmxpbmspOwo+Pj4+Cj4+Pj4gV2h5IGV4YWN0bHk/Cj4+Pgo+Pj4g
T3RoZXJ3aXNlIHdlIHJlY3Vyc2l2ZWx5IHRyeSB0byBtb2RpZnkgdGhlIGNvbnRleHQuCj4+Cj4+
ICAgRnJvbSBnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMsIHR3aWNlLCBvciByZWFsbHkgcmVj
dXJzaXZlbHk/IElmCj4+IGZvcm1lciBpc24ndCB0aGF0IHNvbHZhYmxlIGJ5IHNpbXBseSBza2lw
cGluZyBrZXJuZWwgY29udGV4dHMgaW4gdGhlCj4+IGZpcnN0IGxvb3A/Cj4+Cj4+Pj4gQW55IHJl
cGVyY3Vzc2lvbnMgZm9yIGk5MTVfc3lzZnMvaTkxNV9sM193cml0ZT8gZGVidWdmcyBJIGdhdGhl
ciB5b3UKPj4+PiB3b24ndCBjYXJlIGFib3V0Pwo+Pj4KPj4+IE5vLCBiZWNhdXNlIHdoYXQgbWF0
dGVycyBmb3IgdGhvc2UgaXMgdXNlciBjb250ZXh0cy4KPj4KPj4gVGhlcmUgaXNuJ3Qgc29tZSB0
aW1lIGNvc3QgYXNzb2NpYXRlZCB3aXRoIGwzX3JlbWFwIGNhbGxzIHdoZW4gc3dpdGNoaW5nCj4+
IGNvbnRleHRzPwo+IAo+IE5vLCBpdCdzIGV2ZW4gd2VpcmRlciB0aGFuIHRoYXQgYXMgaXQgaXMg
bm90IGEgY29udGV4dCByZWdpc3RlciAoYXQKPiBsZWFzdCBvbiBoc3cgd2hlcmUgd2Ugc3VwcG9y
dCBpdCkuIEkgZ3Vlc3MsIHdlIHNob3VsZCBqdXN0IHVubGF6eSBhbmQgZW1pdAo+IGEgcmVxdWVz
dCBmcm9tIHRoZSBzeXNmcy4KPiAKPj4+PiBTaG91bGQgYWRkaW5nIHRvIGk5MTUtPmNvbnRleHRz
Lmxpc3QgYmUgZG9uZSBmcm9tIGdlbV9jb250ZXh0X3JlZ2lzdGVyPwo+Pj4+IFdoYXQgcmVtYWlu
cyBub3QgYSBrZXJuZWwgY29udGV4dCwgYnV0IG9uIGEgbGlzdD8KPj4+Cj4+PiBBbmQgSSBhbHNv
IHBsYW4gdG8gcHVsbCBpdCB1bmRlciBpdHMgb3duIG11dGV4Lgo+Pj4gICAgCj4+Pj4gV29uJ3Qg
cHJlZW1wdCBjb250ZXh0IGJlIG1pc3NlZCBpbiByZS1jb25maWd1cmF0aW9uPwo+Pj4KPj4+IFdo
YXQgcHJlZW1wdC1jb250ZXh0PyA6LXAgQW5kIEkgd291bGQgc2tpcCBrZXJuZWxfY29udGV4dCBp
ZiBJIGNvdWxkLCBidXQKPj4+IGZvciB3aGF0ZXZlciByZWFzb24gb2EgZXZlbnRzIGFyZSBiZWlu
ZyBzZW50IHRvIHVzZXJzcGFjZSBldmVuIHdoaWxlIHRoZQo+Pj4gR1BVIGlzIGlkbGUgYW5kIGln
dCBleHBlY3RzIHRoZSByZWd1bGFyIHRpY2suCj4+Cj4+IE15IHRyZWUgc3RpbGwgaGFzIGl0PyBJ
cyBpdCBvdXQgb2YgZGF0ZT8gU29sdXRpb24gd2l0aCBrZWVwaW5nIGl0IG9uIHRoZQo+PiBsaXN0
IGFuZCBza2lwcGluZyBzb3VuZHMgbW9yZSBmdXR1cmUgcHJvb2YgaWYgZG9hYmxlLgo+IAo+IEl0
J3Mgb25seSB1c2VkIGJ5IGd1YyBmb3IgdGhlIGd1YyBjb21tYW5kIHRvIHByZWVtcHQtdG8taWRs
ZS4gSXQgc2hvdWxkCj4gbm90IGJlIHJlY29yZGVkIGFzIGFuIG9hIGV2ZW50IGJ1dCBhbiBpbnRl
ci1jb250ZXh0IGJsaXAgKHdoaWNoIGlzCj4gZXhhY3RseSB3aGF0IGl0IGlzKS4KPiAKPiBTaW1p
bGFybHksIEkgYWxzbyB0aGluayBvYSBzaG91bGQgbm90IHByeWluZyBpbnRvIHRoZSBrZXJuZWwg
Y29udGV4dAo+IChldmVuIHRob3VnaCBpdCdzIG5vdCB1c2VkIGZvciBtdWNoIGF0IHByZXNlbnQp
LgoKV2lsbCB0aGVyZSBiZSBhIHNlcGFyYXRlIGJsaXR0ZXIgY29udGV4dD8KCk9BIGNhbiBoYW5k
bGUgdGhlIGNoYW5naW5nIGNvbmZpZyBiZXR3ZWVuIGtlcm5lbCBhbmQgb3RoZXIgY29udGV4dHM/
CgpSZWdhcmRzLAoKVHZydGtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
