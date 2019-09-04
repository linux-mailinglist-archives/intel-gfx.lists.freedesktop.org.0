Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E679A7C43
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 09:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E67318996E;
	Wed,  4 Sep 2019 07:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78568996E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 07:05:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10BF322CED;
 Wed,  4 Sep 2019 07:05:33 +0000 (UTC)
Date: Wed, 4 Sep 2019 09:05:32 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190904070532.GB18791@kroah.com>
References: <20190903133731.2094-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903133731.2094-1-jani.nikula@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1567580734;
 bh=aWGzlmrB2PaClSzN/gYS8Kh4U8lGww1SuEpNwf6L34c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=I1XbJYryFvML98L8MUbUNMCVghNaG0ZM/kQjPjHdov2dtaPX33t3c4blqrFhgHB3X
 CsaSNk+frGyPriJzkBiC1Mb7JjcHzaMMqtcAdmekkZqnalpeTSQlfZCNSkRHwbW44n
 Shg6hZE5liVhGBAjhIHYqI5SEvhN10z5DxlY0rv4=
Subject: Re: [Intel-gfx] [PATCH 1/2] linux/kernel.h: add yesno(), onoff(),
 enableddisabled(), plural() helpers
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
Cc: linux-usb@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@lip6.fr>, Vishal Kulkarni <vishal@chelsio.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBTZXAgMDMsIDIwMTkgYXQgMDQ6Mzc6MzBQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gVGhlIGtlcm5lbCBoYXMgcGxlbnR5IG9mIHRlcm5hcnkgb3BlcmF0b3JzIHRvIGNob29z
ZSBiZXR3ZWVuIGNvbnN0YW50Cj4gc3RyaW5ncywgc3VjaCBhcyBjb25kaXRpb24gPyAieWVzIiA6
ICJubyIsIGFzIHdlbGwgYXMgdmFsdWUgPT0gMSA/ICIiIDoKPiAicyI6Cj4gCj4gJCBnaXQgZ3Jl
cCAnPyAieWVzIiA6ICJubyInIHwgd2MgLWwKPiAyNTgKPiAkIGdpdCBncmVwICc/ICJvbiIgOiAi
b2ZmIicgfCB3YyAtbAo+IDIwNAo+ICQgZ2l0IGdyZXAgJz8gImVuYWJsZWQiIDogImRpc2FibGVk
IicgfCB3YyAtbAo+IDE5Ngo+ICQgZ2l0IGdyZXAgJz8gIiIgOiAicyInIHwgd2MgLWwKPiAyNQo+
IAo+IEFkZGl0aW9uYWxseSwgdGhlcmUgYXJlIHNvbWUgb2NjdXJlbmNlcyBvZiB0aGUgc2FtZSBp
biByZXZlcnNlIG9yZGVyLAo+IHNwbGl0IHRvIG11bHRpcGxlIGxpbmVzLCBvciBvdGhlcndpc2Ug
bm90IGNhdWdodCBieSB0aGUgc2ltcGxlIGdyZXAuCj4gCj4gQWRkIGhlbHBlcnMgdG8gcmV0dXJu
IHRoZSBjb25zdGFudCBzdHJpbmdzLiBSZW1vdmUgZXhpc3RpbmcgZXF1aXZhbGVudAo+IGFuZCBj
b25mbGljdGluZyBmdW5jdGlvbnMgaW4gaTkxNSwgY3hnYjQsIGFuZCBVU0IgY29yZS4gRnVydGhl
cgo+IGNvbnZlcnNpb24gY2FuIGJlIGRvbmUgaW5jcmVtZW50YWxseS4KPiAKPiBXaGlsZSB0aGUg
bWFpbiBnb2FsIGhlcmUgaXMgdG8gYWJzdHJhY3QgcmVjdXJyaW5nIHBhdHRlcm5zLCBhbmQgc2xp
Z2h0bHkKPiBjbGVhbiB1cCB0aGUgY29kZSBiYXNlIGJ5IG5vdCBvcGVuIGNvZGluZyB0aGUgdGVy
bmFyeSBvcGVyYXRvcnMsIHRoZXJlCj4gYXJlIGFsc28gc29tZSBzcGFjZSBzYXZpbmdzIHRvIGJl
IGhhZCB2aWEgYmV0dGVyIHN0cmluZyBjb25zdGFudAo+IHBvb2xpbmcuCj4gCj4gQ2M6IEpvb25h
cyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogUm9kcmln
byBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj4gQ2M6IFZpc2hhbCBLdWxrYXJuaSA8dmlzaGFsQGNoZWxzaW8uY29tPgo+
IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnCj4gQ2M6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+Cj4gQ2M6IGxpbnV4LXVzYkB2Z2VyLmtlcm5lbC5vcmcK
PiBDYzogQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZz4KPiBDYzogbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZwo+IENjOiBKdWxpYSBMYXdhbGwgPGp1bGlhLmxhd2Fs
bEBsaXA2LmZyPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCAgICAgICAg
ICAgICB8IDE1IC0tLS0tLS0tLS0tLS0KPiAgLi4uL2V0aGVybmV0L2NoZWxzaW8vY3hnYjQvY3hn
YjRfZGVidWdmcy5jICAgIHwgMTEgLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3VzYi9jb3JlL2NvbmZp
Zy5jICAgICAgICAgICAgICAgICAgICAgfCAgNSAtLS0tLQo+ICBkcml2ZXJzL3VzYi9jb3JlL2dl
bmVyaWMuYyAgICAgICAgICAgICAgICAgICAgfCAgNSAtLS0tLQo+ICBpbmNsdWRlL2xpbnV4L2tl
cm5lbC5oICAgICAgICAgICAgICAgICAgICAgICAgfCAyMSArKysrKysrKysrKysrKysrKysrCj4g
IDUgZmlsZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMzYgZGVsZXRpb25zKC0pCgpSZXZp
ZXdlZC1ieTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
