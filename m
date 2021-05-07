Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A393769BD
	for <lists+intel-gfx@lfdr.de>; Fri,  7 May 2021 19:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA0C6E158;
	Fri,  7 May 2021 17:56:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F0DA6E0EF;
 Fri,  7 May 2021 17:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=CBcWZHqzaGgz7lsbjdL7nRqUtTSFr2Wq5t9BDXCRpfE=; b=DNoyHoiYuAGlKKpvGmvu1VsqtI
 wNZiM3SfXAiE0xS4pvYR0CjZr3OE2COsF8LL9QfPdeVw8PbKPMdQBUBKQ0CaP/lo0dEAsTlq+1teb
 gBGqQueY5FfJCzsRxrKb2eQfX6llI2Ok55eKpyjqKxYdMh4Y/G/HuiUEFJ5Cbu6nEBM2QNtubr5/H
 qo3pynSZ/LT6cOmBNnCZK6RZ/vi6oDoJQ1Pfx/JrGOEwoemOC53Jv+mekzs0PSto/jnJ0XwEmSj5w
 BvHIukLNPLe9bIz/aAeaLMOmJwg68EGNIS/H/CsXjetTOKmn6MAfB9YaIih8P5mBLdNH58gdovPTo
 eQYHe0KA==;
Received: from [2601:1c0:6280:3f0::7376]
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4iK-0073Xx-I5; Fri, 07 May 2021 17:56:36 +0000
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Werner Sembach <wse@tuxedocomputers.com>
References: <20210506172325.1995964-1-wse@tuxedocomputers.com>
 <20210507084903.28877-1-wse@tuxedocomputers.com>
 <20210507084903.28877-3-wse@tuxedocomputers.com> <YJV+Xr59xyK2yLXT@intel.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <0d88cd48-a91f-bf0a-e298-a9d66bf0562b@infradead.org>
Date: Fri, 7 May 2021 10:56:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <YJV+Xr59xyK2yLXT@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915/display: Restructure output
 format computation for better expandability
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNS83LzIxIDEwOjUyIEFNLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gRnJpLCBNYXkg
MDcsIDIwMjEgYXQgMTA6NDk6MDJBTSArMDIwMCwgV2VybmVyIFNlbWJhY2ggd3JvdGU6Cj4+IENv
dXBsZXMgdGhlIGRlY2lzc2lvbiBiZXR3ZWVuIFJHQiBhbmQgWUNiQ3I0MjAgbW9kZSBhbmQgdGhl
IGNoZWNrIGlmIHRoZQo+PiBwb3J0IGNsb2NrIGNhbiBhcmNoaXZlIHRoZSByZXF1aXJlZCBmcmVx
dWVuY3kuIE90aGVyIGNoZWNrcyBhbmQKPj4gY29uZmlndXJhdGlvbiBzdGVwcyB0aGF0IHdoZXJl
IHByZXZpb3VzbHkgZG9uZSBpbiBiZXR3ZWVuIGNhbiBhbHNvIGJlIGRvbmUKPj4gYmVmb3JlIG9y
IGFmdGVyLgo+Pgo+PiBUaGlzIGFsbG93cyBmb3IgYXJlIGNsZWFuZXIgaW1wbGVtZW50YXRpb24g
b2YgcmV0cnlpbmcgZGlmZmVyZW50IGNvbG9yCj4+IGVuY29kaW5ncy4KPj4KPj4gQSBzbGlnaHQg
Y2hhbmdlIGluIGJlaGF2aW91ciBvY2N1cnMgd2l0aCB0aGlzIHBhdGNoOiBJZiBZQ2JDcjQyMCBp
cyBub3QKPj4gYWxsb3dlZCBidXQgZGlzcGxheSBpcyBZQ2JDcjQyMCBvbmx5IGl0IG5vIGxvbmdl
ciBmYWlscywgYnV0IGp1c3QgcHJpbnRzCj4+IGFuIGVycm9yIGFuZCB0cmllcyB0byBmYWxsYmFj
ayBvbiBSR0IuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFdlcm5lciBTZW1iYWNoIDx3c2VAdHV4ZWRv
Y29tcHV0ZXJzLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYyB8IDY1ICsrKysrKysrKysrKy0tLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMzQgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCj4+Cgo+IAo+IFdlIGNhbid0IGxl
dCB0aGUgdXNlciBzcGFtIGRtZXNnIHdpdGggZXJyb3JzIGZyZWVseS4gU28gdGhpcyBuZWVkcwo+
IHRvIGJlIGEgZHJtX2RiZ19rbXMoKS4gQWxzbyBhIGJpdCBsb25nLCBzbyBnb2luZyB0byBhbm5v
eWluZ2x5IHdyYXAKPiBhbHdheXMuIENvdWxkIG1heWJlIHNob3J0ZW4gYSBiaXQgdG8gc29tZXRo
aW5nIGxpa2U6Cj4gIllDYkNyIDQ6MjowIG1vZGUgYnV0IFlDYkNyIDQ6MjowIG91dHB1dCBub3Qg
cG9zc2libGUuIEZhbGxpbmcgYmFjayB0byBSR0IuIgo+IAo+IFdpdGggdGhhdCBzb3J0ZWQsIGFu
ZCB0aGUgaW50ZWxfaGRtaV9wb3J0X2Nsb2NrKCkgc3R1ZmYgcmVzdG9yZWQsCj4gSSBiZWxpZXZl
IHRoaXMgc2VyaWVzIGlzIGdvb2QgdG8gZ28uCj4gCj4gSSB0aGluayB5b3UgY29uZnVzZWQgb3Vy
IENJIGJ5IHJlcGx5aW5nIHRvIHRoZSBvbGQgcGF0Y2ggd2l0aCBhIHdob2xlCj4gbmV3IHNlcmll
cy4gSXQgY2FuIGdlbmVyYWxseSBkZWFsIHdpdGggYSB3aG9sZSBuZXcgc2VyaWVzIGFzIGEgbmV3
Cj4gdGhyZWFkIG9yIHJlcGxpZXMgdG8gaW5kaXZpZHVhbCBwYXRjaGVzIHdpdGggdXBkYXRlZCB2
ZXJzaW9ucyBvZgo+IGV4YWN0bHkgdGhhdCBwYXRjaCwgYnV0IG5vdCBmdWxsIHNlcmllcyBhcyBh
IHJlcGx5IHRvIGEgcGF0Y2guCj4gU28gSSBzdWdnZXN0IGp1c3QgcG9zdGluZyB0aGUgZmluYWwg
dmVyc2lvbnMgYXMgYSBuZXcgc2VyaWVzLiBUaGFua3MuCj4gCgpZZWFoLCB3ZSB0cnkgdG8gc2F5
ICJkb24ndCBkbyB0aGF0LCIgYnV0IG1heWJlIHdlIG5lZWQgdG8gc2F5IHRoYXQgbW9yZQpzdHJv
bmdseS4gU2VlIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0OgoK
PDw8Ckhvd2V2ZXIsIGZvciBhIG11bHRpLXBhdGNoIHNlcmllcywgaXQgaXMgZ2VuZXJhbGx5CmJl
c3QgdG8gYXZvaWQgdXNpbmcgSW4tUmVwbHktVG86IHRvIGxpbmsgdG8gb2xkZXIgdmVyc2lvbnMg
b2YgdGhlCnNlcmllcy4gIFRoaXMgd2F5IG11bHRpcGxlIHZlcnNpb25zIG9mIHRoZSBwYXRjaCBk
b24ndCBiZWNvbWUgYW4KdW5tYW5hZ2VhYmxlIGZvcmVzdCBvZiByZWZlcmVuY2VzIGluIGVtYWls
IGNsaWVudHMuICBJZiBhIGxpbmsgaXMKaGVscGZ1bCwgeW91IGNhbiB1c2UgdGhlIGh0dHBzOi8v
bGttbC5rZXJuZWwub3JnLyByZWRpcmVjdG9yIChlLmcuLCBpbgp0aGUgY292ZXIgZW1haWwgdGV4
dCkgdG8gbGluayB0byBhbiBlYXJsaWVyIHZlcnNpb24gb2YgdGhlIHBhdGNoIHNlcmllcy4KPj4+
CgoKLS0gCn5SYW5keQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
