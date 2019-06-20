Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 978F84CF80
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 15:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD2D6E584;
	Thu, 20 Jun 2019 13:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983086E584
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 13:49:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16967017-1500050 for multiple; Thu, 20 Jun 2019 14:48:46 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190619214351.12000-3-daniele.ceraolospurio@intel.com>
References: <20190619214351.12000-1-daniele.ceraolospurio@intel.com>
 <20190619214351.12000-3-daniele.ceraolospurio@intel.com>
Message-ID: <156103852821.664.1230107661333517163@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 20 Jun 2019 14:48:48 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/guc: handle GuC messages
 received with CTB disabled
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTE5IDIyOjQzOjUxKQo+ICsv
Kgo+ICsgKiBFdmVudHMgdHJpZ2dlcmVkIHdoaWxlIENUIGJ1ZmZlcnMgYXJlIGRpc2FibGVkIGFy
ZSBsb2dnZWQgaW4gdGhlIFNDUkFUQ0hfMTUKPiArICogcmVnaXN0ZXIgdXNpbmcgdGhlIHNhbWUg
Yml0cyB1c2VkIGluIHRoZSBDVCBtZXNzYWdlIHBheWxvYWQuIFNpbmNlIG91cgo+ICsgKiBjb21t
dW5pY2F0aW9uIGNoYW5uZWwgd2l0aCBndWMgaXMgdHVybmVkIG9mZiBhdCB0aGlzIHBvaW50LCB3
ZSBjYW4gc2F2ZSB0aGUKPiArICogbWVzc2FnZSBhbmQgaGFuZGxlIGl0IGFmdGVyIHdlIHR1cm4g
aXQgYmFjayBvbi4KPiArICovCj4gK3N0YXRpYyB2b2lkIGd1Y19jbGVhcl9tbWlvX21zZyhzdHJ1
Y3QgaW50ZWxfZ3VjICpndWMpCj4gK3sKPiArICAgICAgIGludGVsX3VuY29yZV93cml0ZSgmZ3Vj
X3RvX2k5MTUoZ3VjKS0+dW5jb3JlLCBTT0ZUX1NDUkFUQ0goMTUpLCAwKTsKClNob3VsZCB0aGUg
cmVnaXN0ZXIgYmUgY2xlYXJlZCBvbiBpbnRlbF9ndWNfcmVzZXQoKT8gT3RoZXJ3aXNlLCB3ZSB3
b3VsZApiZSBhc3NvY2lhdGluZyB0aGUgc3RhbGUgbXNnIGZyb20gYW4gZWFybGllciBndWMgaW5z
dGFuY2Ugd2l0aCB0aGUKY3VycmVudCBvbmUuCgpUaGF0IHdvdWxkIG1lYW4gY2xlYXJfbW1pb19t
c2cgd291bGQgd2FudCB0byBiZSBjYWxsZWQgZnJvbQpndWNfc3RvcF9jb21tdW5pY2F0aW9uIG5v
dCBqdXN0IGd1Y19kaXNhYmxlX2NvbW11bmljYXRpb24uCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
