Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF93B30D607
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B47196EA2B;
	Wed,  3 Feb 2021 09:16:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A246EA2B
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 09:16:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23780522-1500050 for multiple; Wed, 03 Feb 2021 09:16:20 +0000
MIME-Version: 1.0
In-Reply-To: <YBpmRoq5ROk6/hMb@intel.com>
References: <20210203083841.19735-1-chris@chris-wilson.co.uk>
 <YBpmRoq5ROk6/hMb@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Wed, 03 Feb 2021 09:14:25 +0000
Message-ID: <161234366593.2630.16033706817884632445@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Apply VT-d scanout adjustment to
 the VMA
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjEtMDItMDMgMDk6MDA6NTQpCj4gT24gV2VkLCBG
ZWIgMDMsIDIwMjEgYXQgMDg6Mzg6NDFBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
Q3VycmVudGx5LCB3ZSBhbGxvY2F0ZSBleGFjdGx5IHRoZSBWTUEgcmVxdWVzdGVkIGZvciB0aGUg
ZnJhbWVidWZmZXIgYW5kCj4gPiByZWx5IG9uIGZpbGxpbmcgdGhlIHdob2xlIG9mIHRoZSBHR1RU
IHdpdGggc2NyYXRjaCBwYWdlcyB0byBjYXRjaCB3aGVuCj4gPiBWVC1kIHByZWZldGNoZXMgYmV5
b25kIHRoZSBib3VuZHMgb2YgdGhlIHN1cmZhY2UuIEhvd2V2ZXIsIHRoaXMgbWVhbnMKPiA+IHRo
YXQgd2UgaGF2ZSB0byBzY3J1YiB0aGUgR0dUVCBvbiBzdGFydHVwIGFuZCByZXN1bWUsIGFuZCBv
biByZWNlbnQgSFcKPiA+IHRoaXMgaXMgbWFkZSBldmVuIHNsb3dlciBhcyB0aGUgb25seSBhY2Nl
c3MgdG8gR1NNIGlzIHVuY2FjaGVkLgo+ID4gCj4gPiBTaW5jZSB3ZSBkbyBmaWxsIHRoZSBwYWQt
dG8tc2l6ZSBQVEUgd2l0aCBzY3JhdGNoIHBhZ2VzLCBhbmQgdGhpcyBpcwo+ID4gYWxzbyByZWFw
cGxpZWQgb24gcmVzdW1lLCB3ZSBjYW4gZm9yZ28gdGhlIG92ZXJ6ZWFsb3VzIGNsZWFyaW5nIG9m
IHRoZQo+ID4gZW50aXJlIEdHVFQgYW5kIGluc3RlYWQgcGFkIHRoZSBWTUEgdG8gYXZvaWQgdGhl
IFZULWQgcHJlZmV0Y2hlcyBnb2luZwo+ID4gb3V0c2lkZSBvZiB0aGUgVk1BLgo+IAo+IFdlIGhh
dmUgYSBsb3Qgb2YgdGhlc2UgImFsbG9jYXRlIGEgaHVnZSBwaWxlIG9mIGV4dHJhIFBURXMKPiBh
ZnRlciAob3IgYmVmb3JlIGZvciByb3RhdGlvbikgdGhlIHNjYW5vdXQgc3VyZmFjZSIgd29ya2Fy
b3VuZHMKPiB3ZSdyZSBub3QgaGFuZGxpbmcgYXQgYWxsLiBOb3Qgc3VyZSB0aHMgaXMgc3VmZmlj
aWVudCB0byBjb3Zlcgo+IHRob3NlLgoKSSBhbSBiZWluZyBvcHRpbWlzdGljIGluIHRoYXQgd2Ug
c2hvdWxkIGhhdmUgYSBsb3Qgb2Ygd2VpcmQgY2FzZXMKY292ZXJlZCBpbiBDSSBhbmQgd2l0aCBp
b21tdSBlbmFibGVkLCB3ZSB3aWxsIGdldCBzcGxhdHMuCgpCdXQgaWYgaXQncyBwYWdlcy9hZnRl
ciBiZWZvcmUgcmVnYXJkbGVzcyBvZiBhbGlnbm1lbnQsIHRoZW4gdGhpcyBpcwppbnN1ZmZpY2ll
bnQuCgpBbHNvLCB0aGUgY2FzZSBvZiByZW1hcHBlZCBwYWdlcyB3ZSBkb24ndCB3YW50IG9iai0+
c2l6ZSBoZXJlLCBidXQKdm1hLT5zaXplLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
