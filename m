Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A58B8309
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 22:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B8906FBC7;
	Thu, 19 Sep 2019 20:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB9F6FBC7
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 20:57:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 13:57:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,526,1559545200"; d="scan'208";a="362644399"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 19 Sep 2019 13:57:46 -0700
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <20190820195451.15671-1-daniel.vetter@ffwll.ch>
 <055acb8e-8ba4-52b7-8cba-a5fef504e95e@intel.com>
 <20190821135537.GI5942@intel.com>
 <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <814dabde-a3d8-51f1-23a2-bce7dbbbc01a@intel.com>
Date: Thu, 19 Sep 2019 13:57:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uFBXmDXA32dUhfvkxqxYDidbt0R6rowXBk7BwUBMU9qqA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>, Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzIxLzE5IDg6MjAgQU0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gV2VkLCBBdWcg
MjEsIDIwMTkgYXQgMzo1NSBQTSBWaWxsZSBTeXJqw6Rsw6QKPiA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+Pgo+PiBPbiBUdWUsIEF1ZyAyMCwgMjAxOSBhdCAwMTo1Nzo0
NFBNIC0wNzAwLCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiA4
LzIwLzE5IDEyOjU0IFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4+IFRoZSBjcHUgKGRlKXRp
bGVyIGh3IGlzIGdvbmUsIHRoaXMgc3RvcHBlZCBiZWluZyB1c2VmdWwuIFBsdXMgaXQgbmV2ZXIK
Pj4+PiBzdXBwb3J0ZWQgYW55IG9mIHRoZSBmYW5jeSBuZXcgdGlsaW5nIGZvcm1hdHMsIHdoaWNo
IG1lYW5zIHVzZXJzcGFjZQo+Pj4+IGFsc28gc3RvcHBlZCB1c2luZyB0aGUgbWFnaWMgc2lkZS1j
aGFubmVsIHRoaXMgcHJvdmlkZXMuCj4+Pj4KPj4+PiBUaGlzIHdvdWxkIHRvdGFsbHkgYnJlYWsg
YSBsb3Qgb2YgdGhlIGlndHMsIGJ1dCB0aGV5J3JlIGFscmVhZHkgYnJva2VuCj4+Pj4gZm9yIHRo
ZSBzYW1lIHJlYXNvbnMgYXMgdXNlcnNwYWNlIG9uIGdlbjEyIHdvdWxkIGJlLgo+Pj4+Cj4+Pj4g
djI6IExvb2sgYXQgZ2d0dC0+bnVtX2ZlbmNlcyBpbnN0ZWFkLCB0aGF0IGFsc28gYXZvaWRzIHRo
ZSBuZWVkIGZvciBhCj4+Pj4gY29tbWVudCAoQ2hyaXMpLiBUaGlzIGFsc28gbWVhbnMgdGhhdCBn
ZW4xMiBzdXBwb3J0IHJlYWxseSBuZWVkcyB0bwo+Pj4+IG1ha2Ugc3VyZSBudW1fZmVuY2VzIGlz
IHNldCB0byAwLiBUaGVyZSBpcyBhIHBhdGNoIGZvciB0aGF0LCBidXQgaXQKPj4+PiBjaGVja3Mg
Zm9yIEhBU19NQVBQQUJMRV9BUEVSVFVSRSwgd2hpY2ggSSdtIG5vdCBzdXJlIGlzIHRoZSByaWdo
dAo+Pj4+IHRoaW5nIHJlYWxseS4gQWRkaW5nIHJlbGV2YW50IHBlb3BsZS4KPj4+Pgo+Pj4KPj4+
IFdlJ2Qgb2J2aW91c2x5IG5lZWQgdG8gbWFrZSB0aGF0IHNldHRpbmcgZm9yIGFsbCBnZW4xMiss
IGJlY2F1c2UgVEdMCj4+PiBkb2VzIGhhdmUgbWFwcGFibGUgYXBlcnR1cmUuCj4+Pgo+Pj4gQXBh
cnQgZnJvbSB0aGUgdGlsaW5nIGlvY3RsLCB0aGUgb25seSBwbGFjZSBJIHNlZSB3aGVyZSB3ZSBz
ZXQgdGlsaW5nIGlzCj4+PiBpbnRlbF9hbGxvY19pbml0aWFsX3BsYW5lX29iaigpLCBjYW4gdGhl
IHVzZXJzIG9mIHRoYXQgb2JqZWN0IGhhbmRsZSB0aGUKPj4+IGxhY2sgb2YgZmVuY2VzIGdyYWNl
ZnVsbHk/Cj4+Cj4+IEdlbjQrIGRpc3BsYXkgZW5naW5lIGhhcyBpdHMgb3duIHRpbGluZyBjb250
cm9scyBhbmQgZG9lc24ndCBjYXJlIGFib3V0Cj4+IGZlbmNlcy4gU28gd2Ugc2hvdWxkIGJlIGFi
bGUgdG8gbGVhdmUgdGhlIG9iaiB0aWxpbmcgc2V0IHRvIE5PTkUuCj4+Cj4+IEhtbS4gQWN0dWFs
bHkgSSB0aGluayB3ZSBzaG91bGQgcmVqZWN0IHRpbGVkIGZyYW1lYnVmZmVycyBpbiB0aGUgQklP
Uwo+PiBmYiB0YWtlb3ZlciBiZWNhdXNlIGZiZGV2IG5lZWRzIGEgbGluZWFyIHZpZXcgZm9yIHRo
ZSBtZW1vcnkuIE5vIGNhbgo+PiBkbyB3aXRob3V0IHRoZSBmZW5jZS4KPiAKPiBZZWFoIEkgdGhp
bmsgdGhpcyBpcyBqdXN0IG1vcmUgZmFsbG91dCBmcm9tICJubyBtb3JlIGZlbmNlcyBpbiB0aGUg
aHciLgo+IC1EYW5pZWwKPiAKCklzIGFueW9uZSBsb29raW5nIGF0IGltcGxlbWVudGluZyB0aGlz
IChmZW5jZSA9IDAgYW5kIHJlamVjdCB0aWxlZCBGQnMpIApmb3IgVEdMPyBJIGNhbiBwaWNrIGl0
IHVwIGlmIG5vIG9uZSBpcy4KCkRhbmllbGUKCj4+Cj4+PiBXaGVuIEkgd3JvdGUgdGhlIG51bV9m
ZW5jZXM9MCBwYXRjaCBJIHdhcwo+Pj4gZXhwZWN0aW5nIGRpc3BsYXkgdG8gYmUgdW5hdmFpbGFi
bGUsIHNvIEkgZGlkbid0IHJlYWxseSBsb29rIGF0IHRoYXQKPj4+IHBhcnQgb2YgdGhlIGNvZGUu
Cj4+Pgo+Pj4gSXQnZCBhbHNvIGJlIG5pY2UgdG8gYmUgbW9yZSBleHBsaWNpdCB3aXRoIGZlbmNp
bmcgc2luY2Ugd2Ugc2VlbSB0bwo+Pj4gb2Z0ZW4gY2FsbCBpOTE1X3ZtYV9waW5faW9tYXAsIHdo
aWNoIGltcGxpY2l0bHkgYXBwbGllcyBhIGZlbmNlIGlmCj4+PiBuZWVkZWQsIG9uIG9iamVjdHMg
dGhhdCBjYW4ndCBiZSB0aWxlZCBvciBoYXZlIGhhZCBhIGZlbmNlIGFzc2lnbmVkIGEKPj4+IGZl
dyBsaW5lcyBiZWZvcmUuIFRoaXMgaXMgbW9yZSBhIG5pY2UgdG8gaGF2ZSB0b3VnaCwgcG9zc2li
bHkgdG9nZXRoZXIKPj4+IHdpdGggYSBzcGxpdCBvZiB0aGUgIm1hcHBhYmxlIiBhbmQgImZlbmNl
YWJsZSIgYXR0cmlidXRlcyBvZiB0aGUgdm1hLgo+Pj4KPj4+IERhbmllbGUKPj4+Cj4+Pj4gQ2M6
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+
Cj4+Pj4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4+Pj4g
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4+PiBDYzogS2VubmV0
aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+Cj4+Pj4gQ2M6IEphc29uIEVrc3RyYW5k
IDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KPj4+PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4+Pj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlA
aW50ZWwuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+Pj4+IC0tLQo+Pj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV90aWxpbmcuYyB8IDcgKysrKysrKwo+Pj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fdGlsaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dGlsaW5nLmMKPj4+PiBpbmRleCBjYTBjMmY0NTE3NDIuLmU1ZDFhZThkNGRiYSAxMDA2NDQKPj4+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPj4+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdGlsaW5nLmMKPj4+PiBAQCAt
MzEzLDEwICszMTMsMTQgQEAgaW50Cj4+Pj4gICAgaTkxNV9nZW1fc2V0X3RpbGluZ19pb2N0bChz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+Pj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKQo+Pj4+ICAgIHsKPj4+PiArICAgc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwo+Pj4+ICAgICAgc3RydWN0
IGRybV9pOTE1X2dlbV9zZXRfdGlsaW5nICphcmdzID0gZGF0YTsKPj4+PiAgICAgIHN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+Pj4gICAgICBpbnQgZXJyOwo+Pj4+Cj4+Pj4gKyAg
IGlmICghZGV2X3ByaXYtPmdndHQubnVtX2ZlbmNlcykKPj4+PiArICAgICAgICAgICByZXR1cm4g
LUVPUE5PVFNVUFA7Cj4+Pj4gKwo+Pj4+ICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1
cChmaWxlLCBhcmdzLT5oYW5kbGUpOwo+Pj4+ICAgICAgaWYgKCFvYmopCj4+Pj4gICAgICAgICAg
ICAgIHJldHVybiAtRU5PRU5UOwo+Pj4+IEBAIC00MDIsNiArNDA2LDkgQEAgaTkxNV9nZW1fZ2V0
X3RpbGluZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+Pj4+ICAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iajsKPj4+PiAgICAgIGludCBlcnIgPSAt
RU5PRU5UOwo+Pj4+Cj4+Pj4gKyAgIGlmICghZGV2X3ByaXYtPmdndHQubnVtX2ZlbmNlcykKPj4+
PiArICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4+Pj4gKwo+Pj4+ICAgICAgcmN1X3Jl
YWRfbG9jaygpOwo+Pj4+ICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2xvb2t1cF9yY3UoZmls
ZSwgYXJncy0+aGFuZGxlKTsKPj4+PiAgICAgIGlmIChvYmopIHsKPj4+Pgo+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEludGVsLWdmeCBtYWls
aW5nIGxpc3QKPj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cj4+Cj4+IC0t
Cj4+IFZpbGxlIFN5cmrDpGzDpAo+PiBJbnRlbAo+IAo+IAo+IApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
