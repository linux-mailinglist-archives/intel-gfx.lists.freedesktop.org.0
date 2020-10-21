Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3F229518C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 19:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031076EE30;
	Wed, 21 Oct 2020 17:31:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8C7C6ED85
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:59:25 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
 t=1603288764;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/WERzru05Wb69j9MCKzq+AXXcyefJcxA2Zc/EP6RoqE=;
 b=WZwwrHeBy/Ul0HckOcAl5CtPMetXmjU4TkIwf/aC4TL5xdNtsXsTKqgPEyQiRpfsSuDzEv
 GO/1z7aAIU/TYUrNSyDXpB3fQm4bQm65EQoqempmfuNxyhqnk5IJsyJY3oGGX36b48b1Zv
 WJwO/2EXx0FYX2oczl2m+QcOkbfD09I=
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 61683ACE6;
 Wed, 21 Oct 2020 13:59:24 +0000 (UTC)
To: Jason Andryuk <jandryuk@gmail.com>
References: <CAKf6xpv-LRCuo-qHHWMuukYtvJiR-i+-YhLUOZeqoAFd-=swEQ@mail.gmail.com>
 <1a3b90f4-564e-84d3-fd6a-3454e8753579@citrix.com>
 <20201015113109.GA68032@Air-de-Roger>
 <CAKf6xpsJYT7VCeaf6TxPNK1QD+3U9E8ST7E+mWtfDjw0k9L9dA@mail.gmail.com>
 <CAKf6xps1q9zMBeFg7C7ZhD-JcwQ6EG6+bYvvA9QT8PzzxKqMNg@mail.gmail.com>
 <20201021095809.o53b6hpvjl2lbqsi@Air-de-Roger>
 <CAKf6xpuTE4gBNe4YXPYh_hAMLaJduDuKL5_6aC4H=y6DRxaxvw@mail.gmail.com>
 <a4dd7778-9bd4-00c1-3056-96d435b70d70@suse.com>
 <CAKf6xpvKiWiU5Wsv2C1EiEFr77nMZTd+VHgkdk7qcKw1OFD8Vg@mail.gmail.com>
From: Jan Beulich <jbeulich@suse.com>
Message-ID: <9bbf6768-a39e-2b3c-c4de-fd883cc9ef85@suse.com>
Date: Wed, 21 Oct 2020 15:59:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKf6xpvKiWiU5Wsv2C1EiEFr77nMZTd+VHgkdk7qcKw1OFD8Vg@mail.gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Wed, 21 Oct 2020 17:31:41 +0000
Subject: Re: [Intel-gfx] i915 dma faults on Xen
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
Cc: Andrew Cooper <andrew.cooper3@citrix.com>, intel-gfx@lists.freedesktop.org,
 xen-devel <xen-devel@lists.xenproject.org>,
 =?UTF-8?Q?Roger_Pau_Monn=c3=a9?= <roger.pau@citrix.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjEuMTAuMjAyMCAxNTozNiwgSmFzb24gQW5kcnl1ayB3cm90ZToKPiBPbiBXZWQsIE9jdCAy
MSwgMjAyMCBhdCA4OjUzIEFNIEphbiBCZXVsaWNoIDxqYmV1bGljaEBzdXNlLmNvbT4gd3JvdGU6
Cj4+Cj4+IE9uIDIxLjEwLjIwMjAgMTQ6NDUsIEphc29uIEFuZHJ5dWsgd3JvdGU6Cj4+PiBPbiBX
ZWQsIE9jdCAyMSwgMjAyMCBhdCA1OjU4IEFNIFJvZ2VyIFBhdSBNb25uw6kgPHJvZ2VyLnBhdUBj
aXRyaXguY29tPiB3cm90ZToKPj4+PiBIbSwgaXQncyBoYXJkIHRvIHRlbGwgd2hhdCdzIGdvaW5n
IG9uLiBNeSBsaW1pdGVkIGV4cGVyaWVuY2Ugd2l0aAo+Pj4+IElPTU1VIGZhdWx0cyBvbiBicm9r
ZW4gc3lzdGVtcyB0aGVyZSdzIGEgc21hbGwgcmFuZ2UgdGhhdCBpbml0aWFsbHkKPj4+PiB0cmln
Z2VycyB0aG9zZSwgYW5kIHRoZW4gdGhlIGRldmljZSBnb2VzIHdvbmt5IGFuZCBzdGFydHMgYWNj
ZXNzaW5nIGEKPj4+PiB3aG9sZSBsb2FkIG9mIGludmFsaWQgYWRkcmVzc2VzLgo+Pj4+Cj4+Pj4g
WW91IGNvdWxkIHRyeSBhZGRpbmcgdGhvc2UgbWFudWFsbHkgdXNpbmcgdGhlIHJtcnIgWGVuIGNv
bW1hbmQgbGluZQo+Pj4+IG9wdGlvbiBbMF0sIG1heWJlIHlvdSBjYW4gZmlndXJlIG91dCB3aGlj
aCByYW5nZShzKSBhcmUgbWlzc2luZz8KPj4+Cj4+PiBUaGV5IHNlZW0gdG8gY2hhbmdlLCBzbyBp
dCdzIGhhcmQgdG8ga25vdy4gIFdvdWxkIHRoZXJlIGJlIGhhcm0gaW4KPj4+IGFkZGluZyBvbmUg
dG8gY292ZXIgdGhlIGVuZCBvZiBSQU0gKCAweDA0LDdjODAsMDAwMCApIHRvICgKPj4+IDB4ZmYs
ZmZmZixmZmZmICk/ICBNYXliZSB0aGF0IHdvdWxkIGp1c3QgcXVpZXQgdGhlIHBvaW50bGVzcyBm
YXVsdHMKPj4+IHdoaWxlIGxlYXZpbmcgdGhlIElPTU1VIGVuYWJsZWQ/Cj4+Cj4+IFdoaWxlIHRo
ZXkgbWF5IHF1aWV0ZW4gdGhlIGZhdWx0cywgSSBkb24ndCB0aGluayB0aG9zZSBmYXVsdHMgYXJl
Cj4+IHBvaW50bGVzcy4gVGhleSBpbmRpY2F0ZSBzb21lIHByb2JsZW0gd2l0aCB0aGUgc29mdHdh
cmUgKGxlc3MKPj4gbGlrZWx5IHRoZSBoYXJkd2FyZSwgcG9zc2libHkgdGhlIGZpcm13YXJlKSB0
aGF0IHlvdSdyZSB1c2luZy4KPj4gQWxzbyB0aGVyZSdzIHRoZSBxdWVzdGlvbiBvZiB3aGF0IHRo
ZSBvdmVyYWxsIGJlaGF2aW9yIGlzIGdvaW5nCj4+IHRvIGJlIHdoZW4gZGV2aWNlcyBhcmUgcGVy
bWl0dGVkIHRvIGFjY2VzcyB1bnBvcHVsYXRlZCBhZGRyZXNzCj4+IHJhbmdlcy4gSSBhc3N1bWUg
eW91IGRpZCBjaGVjayBhbHJlYWR5IHRoYXQgbm8gZGV2aWNlcyBoYXZlIHRoZWlyCj4+IEJBUnMg
cGxhY2VkIGluIHRoYXQgcmFuZ2U/Cj4gCj4gSXNuJ3Qgbm8taWdmeCBhbHJlYWR5IGxldHRpbmcg
dGhlbSB0cnkgdG8gcmVhZCB0aG9zZSB1bnBvcHVsYXRlZCBhZGRyZXNzZXM/CgpZZXMsIGFuZCBp
dCBpcyBmb3IgdGhlIHJlYXNvbiB0aGF0IHRoZSBkb2N1bWVudGF0aW9uIGZvciB0aGUKb3B0aW9u
IHNheXMgIklmIHNwZWNpZnlpbmcgYG5vLWlnZnhgIGZpeGVzIGFueXRoaW5nLCBwbGVhc2UKcmVw
b3J0IHRoZSBwcm9ibGVtLiIgSSBpbXBseSBmcm9tIGluIGluIHBhcnRpY3VsYXIgdGhhdCBvbmUK
YmV0dGVyIHdvdWxkbid0IHVzZSBpdCBmb3Igbm9uLWRldmVsb3BtZW50IHB1cnBvc2VzIG9mIHdo
YXRldmVyCmtpbmQuCgpKYW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
