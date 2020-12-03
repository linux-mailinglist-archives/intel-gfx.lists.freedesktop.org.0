Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 086252CD621
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 13:53:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1CB06E995;
	Thu,  3 Dec 2020 12:53:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E74516E995
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 12:53:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23201822-1500050 for multiple; Thu, 03 Dec 2020 12:53:45 +0000
MIME-Version: 1.0
In-Reply-To: <20201203124543.GG6112@intel.com>
References: <20201202212809.26233-1-chris@chris-wilson.co.uk>
 <20201203124543.GG6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Thu, 03 Dec 2020 12:53:43 +0000
Message-ID: <160700002362.2026.10506954563660230233@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/display: Record the plane
 update times for debugging
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTItMDMgMTI6NDU6NDMpCj4gT24gV2VkLCBE
ZWMgMDIsIDIwMjAgYXQgMDk6Mjg6MDlQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
U2luY2Ugd2UgdHJ5IGFuZCBlc3RpbWF0ZSBob3cgbG9uZyB3ZSByZXF1aXJlIHRvIHVwZGF0ZSB0
aGUgcmVnaXN0ZXJzIHRvCj4gPiBwZXJmb3JtIGEgcGxhbmUgdXBkYXRlLCBpdCBpcyBvZiB2aXRh
bCBpbXBvcnRhbmNlIHRoYXQgd2UgbWVhc3VyZSB0aGUKPiA+IGRpc3RyaWJ1dGlvbiBvZiBwbGFu
ZSB1cGRhdGVzIHRvIGJldHRlciBndWlkZSBvdXIgZXN0aW1hdGUuIElmIHdlCj4gPiB1bmRlcmVz
dGltYXRlIGhvdyBsb25nIGl0IHRha2VzIHRvIHBlcmZvcm0gdGhlIHBsYW5lIHVwZGF0ZSwgd2Ug
bWF5Cj4gPiBzbGlwIGludG8gdGhlIG5leHQgc2Nhbm91dCBmcmFtZSBjYXVzaW5nIGEgdGVhci4g
SWYgd2Ugb3ZlcmVzdGltYXRlLCB3ZQo+ID4gbWF5IHVubmVjZXNzYXJpbHkgZGVsYXkgdGhlIHVw
ZGF0ZSB0byB0aGUgbmV4dCBmcmFtZSwgY2F1c2luZyB2aXNpYmxlCj4gPiBqaXR0ZXIuCj4gPiAK
PiA+IFJlcGxhY2UgdGhlIHdhcm5pbmcgdGhhdCB3ZSBleGNlZWQgc29tZSBhcmJpdHJhcnkgdGhy
ZXNob2xkIGZvciB0aGUKPiA+IHZibGFuayB1cGRhdGUgd2l0aCBhIGhpc3RvZ3JhbSBmb3IgZGVi
dWdmcy4KPiA+IAo+ID4gdjI6IEFkZCBhIHBlci1jcnRjIGRlYnVnZnMgZW50cnkgc28gdGhhdCB0
aGUgaW5mb3JtYXRpb24gaXMgZWFzaWVyIHRvCj4gPiBleHRyYWN0IHdoZW4gdGVzdGluZyBpbmRp
dmlkdWFsIENSVEMsIGFuZCBzbyB0aGF0IGl0IGNhbiBiZSByZXNldCBiZWZvcmUKPiA+IGEgdGVz
dC4KPiA+IAo+ID4gdjM6IEZsaXAgdGhlIGdyYXBoIG9uIGl0cyBzaWRlOyBjcmVhdGVzIHNwYWNl
IHRvIGxhYmVsIHRoZSB0aW1lIGF4aXMuCj4gPiAKPiA+IFVwZGF0ZXM6IDQ2ODQKPiA+ICAgICAg
ICB8Cj4gPiAgICAxdXMgfAo+ID4gICAgICAgIHwKPiA+ICAgIDR1cyB8KioqKioqKioKPiA+ICAg
ICAgICB8KioqKioqKioqKgo+ID4gICAxNnVzIHwqKioqKioqKioqKgo+ID4gICAgICAgIHwqKioq
Kgo+ID4gICA2NnVzIHwKPiA+ICAgICAgICB8Cj4gPiAgMjYydXMgfAo+ID4gICAgICAgIHwKPiA+
ICAgIDFtcyB8Cj4gPiAgICAgICAgfAo+ID4gICAgNG1zIHwKPiA+ICAgICAgICB8Cj4gPiAgIDE3
bXMgfAo+ID4gICAgICAgIHwKPiAKPiBHb2luZyB0aGF0IGhpZ2ggZmVlbHMgYSBiaXQgb3Zlcmtp
bGwgdG8gbWUuIEknZCBiZSBzYXRpc2lmaWVkCj4gd2l0aCBhbiB1cHBlciBsaW1pdCBvZiA8MW1z
IG9yIHNvbWV0aGluZy4KIApJIHRob3VnaHQgMTZtcyB3YXMgb3ZlcmtpbGwsIGJ1dCBsb29raW5n
IGF0IHRoZSByZXN1bHRzLCB3ZSBkbyBnZXQgc29tZQpkZWxheXMgPjFtcyAoYnV0IG5vdCByYWlz
aW5nIGFuIGVycm9yIGZvciBtaXNzaW5nIHRoZSBzdGFydCBvZiB2YmxhbmspLgoKSSBjYXBwZWQg
aXQgdGhlcmUganVzdCBpbiBjYXNlIHRoZXJlIGlzIGEgYnVnIHdoZXJlIHdlIHdhaXQgZm9yIGEg
d2hvbGUKdmJsYW5rLCB3aGljaCBpcyBhYm91dCBhcyBzZXZlcmUgYSBidWcgYXMgb25lIG1pZ2h0
IGV4cGVjdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
