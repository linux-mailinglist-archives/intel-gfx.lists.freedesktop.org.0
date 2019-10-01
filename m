Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 972E9C3056
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 11:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DC2E89ECD;
	Tue,  1 Oct 2019 09:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2D0189ECD
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 09:38:52 +0000 (UTC)
Received: from localhost (unknown [89.205.130.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7437C215EA;
 Tue,  1 Oct 2019 09:38:51 +0000 (UTC)
Date: Tue, 1 Oct 2019 11:38:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20191001093849.GA2945163@kroah.com>
References: <8e697984-03b5-44f3-304e-42d303724eaa@rasmusvillemoes.dk>
 <20191001080739.18513-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001080739.18513-1-jani.nikula@intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1569922732;
 bh=6+oWkvMUsGtq0GBx5dh3yc1sqkoRm9y7wM7hepbH7/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qvezovxKSITFw09Qy95zXh7z4nBFmvmR0686U2aVGc2JofqddohPlueOG+Y7U/oWd
 hfpgYSoPcsoYS0HQJQxXcqejb4AJtIh7RrJRf0scdFBZfw2uO37pvc5uWN9whs0WXN
 0/SBEvLLq/2Xbw/Hirahx8Voes4/znSwZPcPYuck=
Subject: Re: [Intel-gfx] [PATCH v3] string-choice: add yesno(), onoff(),
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
 intel-gfx@lists.freedesktop.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@lip6.fr>,
 Vishal Kulkarni <vishal@chelsio.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMDEsIDIwMTkgYXQgMTE6MDc6MzlBTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
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
bEBsaXA2LmZyPgo+IENjOiBSYXNtdXMgVmlsbGVtb2VzIDxsaW51eEByYXNtdXN2aWxsZW1vZXMu
ZGs+Cj4gUmV2aWV3ZWQtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91bmRh
dGlvbi5vcmc+ICMgdjEKCkFzIHRoaXMgaXMgYSB0b3RhbGx5IGRpZmZlcmVudCB2ZXJzaW9uLCBw
bGVhc2UgZHJvcCBteSByZXZpZXdlZC1ieSBhcwp0aGF0J3MgcmVhbGx5IG5vdCB0cnVlIGhlcmUg
OigKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
