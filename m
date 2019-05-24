Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C44D2951F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 11:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EE76E04B;
	Fri, 24 May 2019 09:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8FC6E04B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 09:51:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 02:51:49 -0700
X-ExtLoop1: 1
Received: from delly.ld.intel.com (HELO [10.103.239.89]) ([10.103.239.89])
 by fmsmga007.fm.intel.com with ESMTP; 24 May 2019 02:51:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-3-lionel.g.landwerlin@intel.com>
 <155845658360.23981.11195981062397484814@skylake-alporthouse-com>
 <6aa987f0-3825-ff37-7b8e-deb24840a3c9@intel.com>
 <155869095409.28319.17899714925932847048@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <20477c2a-f4b7-9130-6e69-e6c08ff62f7e@intel.com>
Date: Fri, 24 May 2019 10:51:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155869095409.28319.17899714925932847048@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/perf: allow holding preemption
 on filtered ctx
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

T24gMjQvMDUvMjAxOSAxMDo0MiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjQgMTA6Mjg6MTYpCj4+IE9uIDIxLzA1LzIwMTkgMTc6MzYs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjEgMTU6MDg6NTIpCj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4+PiBp
bmRleCBmMjYzYTgzNzQyNzMuLjJhZDk1OTc3ZjdhOCAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCj4+Pj4gQEAgLTIwODUsNyArMjA4NSw3IEBAIHN0YXRpYyBpbnQg
Z2VuOV9lbWl0X2JiX3N0YXJ0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+Pj4+ICAgICAgICAg
ICBpZiAoSVNfRVJSKGNzKSkKPj4+PiAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihj
cyk7Cj4+Pj4gICAgCj4+Pj4gLSAgICAgICAqY3MrKyA9IE1JX0FSQl9PTl9PRkYgfCBNSV9BUkJf
RU5BQkxFOwo+Pj4+ICsgICAgICAgKmNzKysgPSBNSV9BUkJfT05fT0ZGIHwgcnEtPmh3X2NvbnRl
eHQtPmFyYl9lbmFibGU7Cj4+PiBNeSBwcmVkaWN0aW9uIGlzIHRoYXQgdGhpcyB3aWxsIHJlc3Vs
dCBpbiB0aGlzIGNvbnRleHQgYmVpbmcgcmVzZXQgZHVlCj4+PiB0byBwcmVlbXB0aW9uIHRpbWVv
dXRzIGFuZCB0aGUgY29udGV4dCB1bmRlciBwcm9maWxlIGJlaW5nIGJhbm5lZC4gTm90ZQo+Pj4g
dGhhdCBwcmVlbXB0aW9uIHRpbWVvdXRzIHdpbGwgYmUgdGhlIHByaW1hcnkgbWVhbnMgZm9yIGhh
bmcgZGV0ZWN0aW9uCj4+PiBmb3IgZW5kbGVzcyBiYXRjaGVzLgo+Pj4gLUNocmlzCj4+Pgo+PiBB
bm90aGVyIHRob3VnaHQgOgo+Pgo+PiBXaGF0IGlmIHdlIHJhbiB3aXRoIHRoZSBtYXggcHJpb3Jp
dHk/Cj4+IEl0IHdvdWxkIGJlIGZpbmUgdG8gaGF2ZSB0aGUgaGFuZ2NoZWNrIHByZWVtcHQgdGhl
IHdvcmtsb2FkIChpdCdzIHByZXR0eQo+PiBzaG9ydCBhbmQgc2hvdWxkbid0IGFmZmVjdCBwZXJm
IGNvdW50ZXJzIGZyb20gM2QvY29tcHV0ZSBwaXBlbGluZSBtdWNoKQo+PiBhcyBsb25nIGFzIGVu
c3VyZSBub3RoaW5nIGVsc2UgcnVucy4KPiBJdCdzIGNlcnRhaW5seSBzYWZlciBmcm9tIHRoZSBw
b3YgdGhhdCB3ZSBkb24ndCBibG9jayBwcmVlbXB0aW9uIGFuZCBzbwo+IGRvbid0IGluY3VyIGZv
cmNlZCByZXNldHMuIE5vdCBrZWVuIG9uIHRoZSBzeXN0ZW0gYmVpbmcgcGVydHVyYmVkIGJ5IHRo
ZQo+IGFjdCBvZiBvYnNlcnZpbmcgaXQsIGFuZCBJIHN0aWxsIGRpc2xpa2UgdGhlIG5vdGlvbiBv
ZiBwZXJtaXR0aW5nIG9uZQo+IGNsaWVudCB0byBob2cgdGhlIEdQVSBzbyBlYXNpbHkuIE1ha2Vz
IG1lIHRoaW5rIG9mIFJUIHRocm90dGxpbmcsIGFuZAo+IGdlbmVyYWxseSB0aHJvd2luZyBvdXQg
dGhlIGFic29sdXRlIHByaW9yaXR5IHN5c3RlbSAoaW4gZXhjaGFuZ2UgZm9yCj4gY29tcHV0ZWQg
ZGVhZGxpbmVzIG9yIHNvbWV0aGluZykuCj4gLUNocmlzCj4KSSBkb24ndCBsaWtlIGl0IG11Y2gg
ZWl0aGVyIGJ1dCBJIGNhbid0IHNlZSBob3cgdG8gZG8gb3RoZXJ3aXNlIHdpdGggdGhlIApoYXJk
d2FyZSB3ZSBjdXJyZW50bHkgaGF2ZS4KCkknbSB0aGlua2luZyBvZiAyIHByaW9yaXRpZXMgdmFs
dWVzIG9uZSBvZiBzY2hlZHVsaW5nLCBvbmUgb25jZSBydW5uaW5nLgoKTW9zdCBjb250ZXh0cyB3
b3VsZCBoYXZlIGJvdGggdmFsdWVzIGVxdWFsLgoKQ291bGQgbWl0aWdhdGUgdGhlIGlzc3VlIGEg
Yml0PwoKCi1MaW9uZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
