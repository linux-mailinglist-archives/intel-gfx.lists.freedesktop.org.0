Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EE17D5FE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 09:04:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05BE06E3A8;
	Thu,  1 Aug 2019 07:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FE7C6E3A8
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 07:04:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17778803-1500050 for multiple; Thu, 01 Aug 2019 08:04:26 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190731223321.36436-1-michal.wajdeczko@intel.com>
 <20190731223321.36436-5-michal.wajdeczko@intel.com>
In-Reply-To: <20190731223321.36436-5-michal.wajdeczko@intel.com>
Message-ID: <156464306539.2512.13874180281743403073@skylake-alporthouse-com>
Date: Thu, 01 Aug 2019 08:04:25 +0100
Subject: Re: [Intel-gfx] [CI 4/4] drm/i915/uc: Stop sanitizing enable_guc
 modparam
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDIzOjMzOjIxKQo+IEFzIHdlIGFs
cmVhZHkgdHJhY2sgR3VDL0h1QyB1c2VzIGJ5IG90aGVyIG1lYW5zIHRoYW4gbW9kcGFyYW0KPiB0
aGVyZSBpcyBubyBwb2ludCBpbiBzYW5pdGl6aW5nIGl0LiBKdXN0IHNjYW4gbW9kcGFyYW0gZm9y
Cj4gbWFqb3IgZGlzY3JlcGFuY2llcyBiZXR3ZWVuIHdoYXQgd2FzIHJlcXVlc3RlZCB2cyBhY3R1
YWwuCj4gCj4gdjI6IHJlYmFzZWQsIHJld29yZGVkIGluZm8gbWVzc2FnZXMKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBD
YzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNv
bT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpJIHRoaW5r
IGJlY2F1c2Ugd2UgbmVlZCB0byBleHBsaWNpdGx5IHNldCBlbmFibGVfZ3VjfD0yIGN1cnJlbnRs
eSwgaXQKc2hvdWxkbid0IGhhdmUgYW55IG9ic2VydmFibGUgZGlmZmVyZW5jZXMgaW4gdGhlIGln
dCB0ZWxsdGFsZS4gKEFuZCBpZgppdCBkaWQsIGl0J3Mgbm90IHRoZSBlbmQgb2YgdGhlIHdvcmxk
LCBpdCdzIG9ubHkgYSBkZWJ1ZyBhaWRlLW1lbW9pcmUKdGhhdCB3ZSBjYW4gcmVwbGFjZSBsYXRl
ci4pCgpSZXZpZXdlZC1ieS1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
