Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCE93AE9EC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Jun 2021 15:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14DD6E0AF;
	Mon, 21 Jun 2021 13:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 775966E0AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Jun 2021 13:20:55 +0000 (UTC)
IronPort-SDR: pOAsmOJNVmDu3N8WnAIRxdOKV7BPOrbOHQl1NFCBdLN3TSA3KBX/Cywe0frefJkjFSyVDhDRo3
 qcZ8OmX55Qig==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="193977341"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="193977341"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:20:54 -0700
IronPort-SDR: vHjhnKjq0aI1/CNFvdhjxl4e/GBZrRn34KEgck/9KLE7eJ8jQ8k1OlXQpcgz/rTEC9X0/4Cd6f
 /dZw8rGZD1BQ==
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="405957871"
Received: from bchikkop-mobl.ger.corp.intel.com (HELO [10.213.238.150])
 ([10.213.238.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 06:20:53 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210621114123.3131534-1-maarten.lankhorst@linux.intel.com>
 <04424cbf-750a-4cb9-a99a-6a5a3671452f@linux.intel.com>
 <74c6afe5-a76f-1895-d37b-d738978e2804@linux.intel.com>
 <1d7486eb-27df-17cd-e4a6-3ac45ecf7a36@linux.intel.com>
 <7c012b08-eebc-ceba-7fa7-be2a0a830b25@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ecadb3a4-fb8a-9533-81ad-6b2daaaa9fa6@linux.intel.com>
Date: Mon, 21 Jun 2021 14:20:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <7c012b08-eebc-ceba-7fa7-be2a0a830b25@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Do not allow setting ring
 size for legacy ring submission
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIxLzA2LzIwMjEgMTQ6MTIsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDIxLzA2
LzIwMjEgMTQ6MDcsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+PiBPcCAyMS0wNi0yMDIxIG9t
IDE0OjUyIHNjaHJlZWYgVHZydGtvIFVyc3VsaW46Cj4+Pgo+Pj4gT24gMjEvMDYvMjAyMSAxMzow
OCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pj4KPj4+PiBJIGhhZCBzb21lIHF1ZXN0aW9ucyBv
biB0aGUgdHJ5Ym90IG1haWxpbmcgbGlzdCwgbGV0IG1lIGNvcHkmcGFzdGUuLgo+Pj4+Cj4+Pj4g
T24gMjEvMDYvMjAyMSAxMjo0MSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+Pj4+IEl0IGRv
ZXNuJ3Qgd29yayBmb3IgbGVnYWN5IHJpbmcgc3VibWlzc2lvbiwgYW5kIGlzIGluIHRoZSBiZXN0
IGNhc2UKPj4+Pj4gaWdub3JlZC4KPj4+Pgo+Pj4+IExvb2tzIHJlamVjdGVkIGluc3RlYWQgb2Yg
aWdub3JlZDoKPj4+Pgo+Pj4+IHN0YXRpYyBpbnQgc2V0X3JpbmdzaXplKHN0cnVjdCBpOTE1X2dl
bV9jb250ZXh0ICpjdHgsCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRy
bV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtICphcmdzKQo+Pj4+IHsKPj4+PiDCoMKgwqDCoMKgIGlm
ICghSEFTX0xPR0lDQUxfUklOR19DT05URVhUUyhjdHgtPmk5MTUpKQo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVOT0RFVjsKPj4+Pj4KPj4+Pj4gSW4gdGhlIHdvcnN0IGNhc2Ugd2Ug
ZW5kIHVwIGZyZWVpbmcgZW5naW5lLT5sZWdhY3kucmluZyBmb3IgYWxsIG90aGVyCj4+Pj4+IGFj
dGl2ZSBlbmdpbmVzLCByZXN1bHRpbmcgaW4gYSB1c2UtYWZ0ZXItZnJlZS4KPj4+Pgo+Pj4+IFdv
cnN0IGNhc2UgaXMgY2xvbmluZyBiZWNhdXNlIHJpbmdfY29udGV4dF9hbGxvYyBpcyBub3QgdGFr
aW5nIGEgCj4+Pj4gcmVmZXJlbmNlIHRvIGVuZ2luZS0+bGVnYWN5LnJpbmcsIG9yIHNvbWV0aGlu
ZyBlbHNlPwo+Pj4KPj4+IE5vIGNhbid0IGJlIHRoYXQsIGl0IHdhcyBteSBpbmNvbXBsZXRlIGFu
YWx5c2lzIGxhc3Qgd2Vlay4gU2luY2UgCj4+PiByaW5nX2NvbnRleHRfZGVzdHJveSBkb2VzIG5v
dCBhY3R1YWxseSBmcmVlIHRoZSBsZWdhY3kgcmluZyBJIGRvbid0IAo+Pj4gc2VlIGFueSB1c2Ug
YWZ0ZXIgZnJlZSBwYXRocy4KPj4+Cj4+PiBSZWdhcmRzLAo+Pgo+PiBIbW0sIGl0IGdldHMgc3R1
Y2sgaW5zaWRlIGludGVsX2NvbnRleHRfc2V0X3Jpbmdfc2l6ZSB3aGVuIGNsb25pbmcgCj4+IGVu
Z2luZXMuLgo+Pgo+PiBJIGd1ZXNzIGl0IGNhbid0IGhhcHBlbiBpbiBwcmFjdGljZSwganVzdCB0
aGUgY29kZSBpbnRyb2R1Y2VzIHRoZSByYWNlIAo+PiBieSBwcmVhbGxvY2F0aW5nCj4+IGluc2lk
ZSBpbnRlbF9jb250ZXh0X2xvY2tfcGlubmVkKCkuLgo+IAo+ICJUaGUgY29kZSIgYmVpbmcgdGhl
IHJlc3Qgb2YgeW91ciBzZXJpZXM/IEhhdmVuJ3QgbG9va2VkIGluIHRoZXJlLCBidXQgCj4gY2Fu
J3QgZmluZCBhIHByb2JsZW0gaW4gdXBzdHJlYW0uIFNpbmNlIGFzIHlvdSBzYXksIGNvcHlfcmlu
Z19zaXplIHdpbGwgCj4gcnVuIGJ1dCBpbnRlbF9jb250ZXh0X3NldF9yaW5nX3NpemUgd2lsbCBu
b3QgZnJlZS1hbmQtYWxsb2NhdGUgb2xkL25ldyAKPiByaW5nIHNpbmNlIGNsb25lZCBjb250ZXh0
IGRvZXMgbm90IGhhdmUgYSBzdGF0ZSBhbGxvY2F0ZWQgeWV0LgoKUC5TLiBQdXR0aW5nIGEgSEFT
X0xPR0lDQUxfUklOR19DT05URVhUUyBjaGVjayBpbiBjb3B5X3Jpbmdfc2l6ZSB3b3VsZCAKYmUg
YSBiaXQgdW5mb3J0dW5hdGUgYmVjYXVzZSBsYXllcmluZyBpcyBhIGJpdCBicm9rZW4gYXQgdGhl
IG1vbWVudCBhbmQgCnRoYXQgd291bGRuJ3QgbWFrZSBpdCBiZXR0ZXIuCgpUbyBjbGFyaWZ5IG15
IHRoaW5raW5nOiBBdCB0aGUgbW9tZW50IGFsbG9jYXRpbmcgdGhlIHJpbmcgaXMgCnJlc3BvbnNp
YmlsaXR5IG9mIGEgYmFja2VuZCBzcGVjaWZpYyBob29rLiBBcGFydCBmcm9tIHRoZSBnZW5lcmlj
IAppbnRlbF9jb250ZXh0X3NldF9yaW5nX3NpemUgd2hpY2ggYnJlYWtzIHRoYXQgYnkgYWxsb2Nh
dGluZyBpbiB0aGUgbGF5ZXIgCmFib3ZlIHRoZSBiYWNrZW5kLiBTbyBwcm9wZXIgZml4IGNvdWxk
IGJlIHRvIGludHJvZHVjZSBiYWNrZW5kIHNwZWNpZmljIApob29rcyBmb3IgcmluZyBhbGxvY2F0
aW9uL2ZyZWVpbmcuCgoqSWYqIHlvdSBuZWVkIHRvIGFsbG9jYXRlIHRoZSBzdGF0ZSBzbyBlYXJs
eS4uIG5vdCBzdXJlIGFib3V0IHRoYXQuIEknZCAKZmlyc3QgbmVlZCB0byB1bmRlcnN0YW5kIHdo
eS4gSWYgeW91IHNheSBpdCBpcyBhIHJhY2UgdGhlbiBpdCB3YXMgYWxsIAphY2NpZGVudGFsPwoK
UmVnYXJkcywKClR2cnRrbwoKPiBSZWdhcmRzLAo+IAo+IFR2cnRrbwo+IAo+PiBjb3B5X3Jpbmdf
c2l6ZSgpIHNob3VsZCBvbmx5IGJlIGNhbGxlZCBmb3IgSEFTX0xPR0lDQUxfUklOR19DT05URVhU
UygpLgo+PiBJIGd1ZXNzIHRoYXQgbWFrZXMgdGhpcyBwYXRjaCBvYnNvbGV0ZS4gSXQgY2FuIHNh
ZmVseSBiZSBkcm9wcGVkIGZyb20gCj4+IHRoZSBzZXJpZXMsCj4+IEkgdGhpbmsgSSBzaG91bGQg
cHJvYmFibHkgaW50cm9kdWNlIGEgY2hlY2sgdG8gb25seSBzZXQgdGhlIHNpemUgd2hlbiAKPj4g
SEFTX0xPR0lDQUxfUklOR19DT05URVhUUwo+PiBldmFsdWF0ZXMgdG8gdHJ1ZSwgYnV0IHRoYXQg
d291bGRuJ3QgYmxvY2sgdGhlIHJlc3Qgb2YgdGhpcyBzZXJpZXMuCj4+Cj4+IH5NYWFydGVuCj4+
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
