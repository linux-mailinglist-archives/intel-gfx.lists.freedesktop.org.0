Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F017148D2B
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 20:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AE889274;
	Mon, 17 Jun 2019 18:58:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B094589274
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 18:58:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 11:58:52 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.252.2.103]) ([10.252.2.103])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2019 11:58:50 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
 <20190617071912.20256-15-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <8ca0a031-350b-5639-c376-e9eb84ad7190@intel.com>
Date: Mon, 17 Jun 2019 19:58:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190617071912.20256-15-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 15/22] drm/i915: Provide an
 i915_active.acquire callback
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
Cc: mika.kuoppala@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTcvMDYvMjAxOSAwODoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IElmIHdlIGludHJvZHVj
ZSBhIGNhbGxiYWNrIGZvciBpOTE1X2FjdGl2ZSB0aGF0IGlzIG9ubHkgY2FsbGVkIHRoZSBmaXJz
dAo+IHRpbWUgd2UgdXNlIHRoZSBpOTE1X2FjdGl2ZSBhbmQgaXMgc3ltbWV0cmljYWxseSBwYWly
ZWQgd2l0aCB0aGUKPiBpOTE1X2FjdGl2ZS5yZXRpcmUgY2FsbGJhY2ssIHdlIGNhbiByZXBsYWNl
IHRoZSBvcGVuLWNvZGVkIGFuZAo+IG5vbi1hdG9taWMgaW1wbGVtZW50YXRpb25zIC0tIHdoaWNo
IHdpbGwgYmUgdmVyeSBmcmFnaWxlIChpLmUuIGJyb2tlbikKPiB1cG9uIHJlbW92aW5nIHRoZSBz
dHJ1Y3RfbXV0ZXggc2VyaWFsaXNhdGlvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgIHwgICA4ICstCj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgICAgICB8ICA4MiArKysrLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmggICAgICB8ICAxNCArLQo+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgICAgICAgICAgfCAgIDYgKy0KPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYyAgIHwgICAyICstCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAgICAgICB8ICAgMiArLQo+ICAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYyAgICAgICAgICAgfCAyMTcgKysrKysrKysrKy0t
LS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuaCAgICAgICAgICAg
fCAgMjUgKystCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oICAg
ICB8ICAxMCArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgICAgICAg
ICAgfCAgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdGltZWxpbmUuYyAgICAg
ICAgIHwgIDE2ICstCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jICAgICAgICAg
ICAgICB8ICAyMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0
aXZlLmMgfCAgMTIgKy0KPiAgIDEzIGZpbGVzIGNoYW5nZWQsIDIyNSBpbnNlcnRpb25zKCspLCAx
OTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jCj4gaW5kZXggMWNlMTIyZjRlZDI1Li45MjYyYTFkNGY3NjMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBAQCAtOTIzLDggKzky
MywxMiBAQCBzdGF0aWMgaW50IGNvbnRleHRfYmFycmllcl90YXNrKHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0ICpjdHgsCj4gICAJaWYgKCFjYikKPiAgIAkJcmV0dXJuIC1FTk9NRU07Cj4gICAKPiAt
CWk5MTVfYWN0aXZlX2luaXQoaTkxNSwgJmNiLT5iYXNlLCBjYl9yZXRpcmUpOwo+IC0JaTkxNV9h
Y3RpdmVfYWNxdWlyZSgmY2ItPmJhc2UpOwo+ICsJaTkxNV9hY3RpdmVfaW5pdChpOTE1LCAmY2It
PmJhc2UsIE5VTEwsIGNiX3JldGlyZSk7Cj4gKwllcnIgPSBpOTE1X2FjdGl2ZV9hY3F1aXJlKCZj
Yi0+YmFzZSk7Cj4gKwlpZiAoZXJyKSB7Cj4gKwkJa2ZyZWUoY2IpOwo+ICsJCXJldHVybiBlcnI7
Cj4gKwl9Cj4gICAKPiAgIAlmb3JfZWFjaF9nZW1fZW5naW5lKGNlLCBpOTE1X2dlbV9jb250ZXh0
X2xvY2tfZW5naW5lcyhjdHgpLCBpdCkgewo+ICAgCQlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gaW5kZXggMmM0NTRmMjI3
YzJlLi5iMTlhYTgyM2E1MWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfY29udGV4dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5jCj4gQEAgLTk1LDExICs5NSwxNCBAQCB2b2lkIGludGVsX2NvbnRleHRfdW5waW4oc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlKQo+ICAgCWludGVsX2NvbnRleHRfcHV0KGNlKTsKPiAgIH0K
PiAgIAo+IC1zdGF0aWMgaW50IF9fY29udGV4dF9waW5fc3RhdGUoc3RydWN0IGk5MTVfdm1hICp2
bWEsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCj4gK3N0YXRpYyBpbnQgX19jb250ZXh0X3Bpbl9zdGF0
ZShzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiAgIHsKPiArCXU2NCBmbGFnczsKPiAgIAlpbnQgZXJy
Owo+ICAgCj4gLQllcnIgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBmbGFncyB8IFBJTl9HTE9C
QUwpOwo+ICsJZmxhZ3MgPSBQSU5fSElHSCB8IFBJTl9HTE9CQUw7Cj4gKwlmbGFncyB8PSBpOTE1
X3ZtX3RvX2dndHQodm1hLT52bSktPnBpbl9iaWFzIHwgUElOX09GRlNFVF9CSUFTOwoKaTkxNV9n
Z3R0X3Bpbl9iaWFzKHZtYSkgfCBQSU5fT0ZGU0VUX0JJQVM7CgpGd2l3LApSZXZpZXdlZC1ieTog
TWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
