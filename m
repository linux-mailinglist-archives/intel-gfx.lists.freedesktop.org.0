Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C79E2FB959
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 21:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8B489AEE;
	Wed, 13 Nov 2019 20:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8675689AEE
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 20:05:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19192496-1500050 for multiple; Wed, 13 Nov 2019 20:05:30 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Bruce Chang <yu.bruce.chang@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191113195244.20368-1-yu.bruce.chang@intel.com>
In-Reply-To: <20191113195244.20368-1-yu.bruce.chang@intel.com>
Message-ID: <157367552964.22201.948463158207430674@skylake-alporthouse-com>
Date: Wed, 13 Nov 2019 20:05:29 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a bug calling sleep function
 in atomic context
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

UXVvdGluZyBCcnVjZSBDaGFuZyAoMjAxOS0xMS0xMyAxOTo1Mjo0NCkKPiBUaGVyZSBhcmUgcXVp
dGUgYSBmZXcgcmVwb3J0cyByZWdhcmRpbmcgIkJVRzogc2xlZXBpbmcgZnVuY3Rpb24gY2FsbGVk
IGZyb20KPiBpbnZhbGlkIGNvbnRleHQgYXQgbW0vcGFnZV9hbGxvYy5jIgo+IAo+IEJhc2ljYWxs
eSBhZnRlciB0aGUgaW9fbWFwcGluZ19tYXBfYXRvbWljX3djL2ttYXBfYXRvbWljLCBpdCBlbnRl
cnMgYXRvbWljCj4gY29udGV4dCwgYnV0IGNvbXByZXNzX3BhZ2UgY2Fubm90IGJlIGNhbGxlZCBp
biBhdG9taWMgY29udGV4dCBhcyBpdCB3aWxsCj4gY2FsbCBwb29sX2FsbG9jIHdpdGggR0ZQX0tF
Uk5FTCBmbGFnIHdoaWNoIGNhbiBnbyB0byBzbGVlcC4gVGhpcyBpcyB3aHkKPiB0aGUgYnVnIGdv
dCByZXBvcnRlZC4KCkp1c3QgYSB0cmltbWVkIHN0YWNrIHRyYWNlIHNob3dpbmcgdGhlIGJ1ZyB3
aWxsIGRvIGZpbmU7IGFzIHRoZSBkaXN0YW5jZQp0byBtaWdodF9zbGVlcF9pZigpIGlzIHNob3J0
LgoKVGhlbiBhbGwgeW91IG5lZWQgdG8gZG8gaXMgYSBxdWljayBkZXNjcmlwdGlvbiBvZiB3aHkg
dGhhdCBpcyBhIHByb2JsZW0sCmFuZCB3aHkgeW91IGNob29zZSB0byBmaXggaXQgYXMgeW91IGRp
ZC4gVGhlIGxhdHRlciBpcyBzbyB0aGF0IHdlIGNhbgphc3Nlc3MgaWYgeW91J3ZlIGNvbnNpZGVy
ZWQgdGhlIGFsdGVybmF0aXZlcywgdGhvdWdoIGluIHRoaXMgY2FzZSBpdCBpcwp0cml2aWFsIGFs
dGhvdWdoIHRoZSByZWFzb24gd2h5IEdGUF9LRVJORUwgd29ya3MgZm9yIHVzIGhlcmUgaXMgbm90
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
