Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4439B4D440
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 18:52:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85CA16E5D2;
	Thu, 20 Jun 2019 16:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9FFE6E5D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 16:51:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:51:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="358597250"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jun 2019 09:51:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190619112341.9082-1-chris@chris-wilson.co.uk>
 <c467c41b-fc81-5ad6-e12f-b3ffc34ae448@linux.intel.com>
 <156095621331.21217.2570744388023676419@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <762064d7-b00f-57fd-33e2-b92ee7da1df9@linux.intel.com>
Date: Thu, 20 Jun 2019 17:51:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156095621331.21217.2570744388023676419@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gtt: Defer address space
 cleanup to an RCU worker
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE5LzA2LzIwMTkgMTU6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTE5IDE1OjUxOjE4KQo+Pgo+PiBPbiAxOS8wNi8yMDE5IDEyOjIz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBFbmFibGUgUkNVIHByb3RlY3Rpb24gb2YgaTkxNV9h
ZGRyZXNzX3NwYWNlIGFuZCBpdHMgcHBndHQgc3VwZXJjbGFzc2VzLAo+Pj4gYW5kIGRlZmVyIGl0
cyBjbGVhbnVwIGludG8gYSB3b3JrZXIgZXhlY3V0ZWQgYWZ0ZXIgYW4gUkNVIGdyYWNlIHBlcmlv
ZC4KPj4+Cj4+PiBJbiB0aGUgZnV0dXJlIHdlIHdpbGwgYmUgYWJsZSB0byB1c2UgdGhlIFJDVSBw
cm90ZWN0aW9uIHRvIHJlZHVjZSB0aGUKPj4+IGxvY2tpbmcgYXJvdW5kIFZNIGxvb2t1cHMsIGJ1
dCB0aGUgaW1tZWRpYXRlIGJlbmVmaXQgaXMgYmVpbmcgYWJsZSB0bwo+Pj4gZGVmZXIgdGhlIHJl
bGVhc2UgaW50byBhIGt3b3JrZXIgKHByb2Nlc3MgY29udGV4dCkuIFRoaXMgaXMgcmVxdWlyZWQg
YXMKPj4+IHdlIG1heSBuZWVkIHRvIHNsZWVwIHRvIHJlYXAgdGhlIFdDIHBhZ2VzIHN0YXNoZWQg
YXdheSBpbnNpZGUgdGhlIHBwZ3R0Lgo+Pgo+PiBJIGNhbid0IHNlZSB0aGF0IGl0IGFkZHMgUkNV
IHByb3RlY3Rpb24gYXBhcnQgZnJvbSB1c2luZyBxdWV1ZV9yY3Vfd29yawo+PiBmb3Igc29tZSBy
ZWFzb24uCj4gCj4gVGhhdCBwcm92aWRlcyB0aGUgUkNVIHNhZmUgZnJlZWluZywgeWVzLiBNeSBp
bnRlbnRpb25hbCBpcyB0byB1c2UgdGhlCj4gcmN1IHJlYWQgbG9jayBhcm91bmQgdGhlIHZtIGxv
b2t1cCArIGtyZWYgd2hlbiBkcm9wcGluZyB0aGUgc3RydWN0X211dGV4Cj4gdGhlcmUuCj4gCj4+
IEl0IF9zZWVtc18gbGlrZSBpdCBjb3VsZCBqdXN0IGFzIHdlbGwgdXNlIG5vcm1hbAo+PiBkZWZl
cnJlZCB3b3JrZXI/IFJDVSBtYXkgaGF2ZSBhIGJlbmVmaXQgb2YgYmVpbmcgcmVsYXhlZCBpbiB0
aW1pbmcgaWUgd2UKPj4gZG9uJ3QgY2FyZSBpdCBoYXBwZW5zIGltbWVkaWF0ZWx5LCBidXQgYWxz
byBkb24ndCB3YW50IHRvIHB1dCBzb21lIG1hZGUKPj4gdXAgdGltZSBwZXJpb2QgYWdhaW5zdCBp
dC4gU28gaXQncyBhbGwgYWJvdXQgbmF0dXJhbCBiYXRjaGluZyBvbmx5IGF0Cj4+IHRoaXMgcG9p
bnQ/Cj4gCj4gQXQgdGhpcyBtb21lbnQsIHRvIGZpeCB1cCB0aGUgY3VycmVudCBidWcgYW5kIHRv
IGFsbG93IGk5MTVfYWN0aXZlIHRvIGJlCj4gc3RydWN0X211dGV4LWxlc3MsIHdlIG5lZWQgdG8g
ZGVmZXIgdGhlIGk5MTVfdm1fcmVsZWFzZSBhbmQKPiBnZW44X3BwZ3R0X3JlbGVhc2UgdG8gcHJv
Y2VzcyBjb250ZXh0LiBIZW5jZSB1c2luZyB0aGUgd29ya2VyIGNhbGxiYWNrCj4gYW5kIG5vdCB0
aGUgcmVndWxhciBzb2Z0aXJxLWNvbnRleHQgcmN1IGNhbGxiYWNrLgoKSXQncyBmaW5lIGJ5IG1l
LCBJIGp1c3Qgd2FudGVkIGZvciBzb21lIHJlYXNzdXJhbmNlcyBhYm91dCBmdXR1cmUgcGxhbnMu
IDopCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
