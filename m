Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DC67890F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 12:01:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6288089CAC;
	Mon, 29 Jul 2019 10:01:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B24489CAC
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 10:01:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17695976-1500050 for multiple; Mon, 29 Jul 2019 11:01:35 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <bd4676e8-f724-91a7-ad3b-393e5892b159@linux.intel.com>
 <20190729085944.2179-1-chris@chris-wilson.co.uk>
 <1abf4cff-952d-eda3-def5-eb2c3c9867f7@linux.intel.com>
In-Reply-To: <1abf4cff-952d-eda3-def5-eb2c3c9867f7@linux.intel.com>
Message-ID: <156439449554.6902.14115192360902701327@skylake-alporthouse-com>
Date: Mon, 29 Jul 2019 11:01:35 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Careful not to flush
 hang_fini on error setups
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yOSAxMDo1MDo1NikKPiAKPiBPbiAyOS8w
Ny8yMDE5IDA5OjU5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTbWF0Y2ggc3BvdHRlZCB0aGF0
IHdlIHRlc3QgYXQgdGhlIHN0YXJ0IG9mIGhhbmdfZmluaSBmb3IgYSB2YWxpZCAoaC0+Z3QKPiA+
IGlzIG9ubHkgc2V0IGFmdGVyIGEgcmVxdWVzdCBpcyBjcmVhdGVkKSBidXQgdGhlbiB1c2VkIGl0
IHJlZ2FyZGxlc3MKPiA+IGxhdGVyIG9uLgo+ID4gCj4gPiB2MjogQWx0ZXJuYXRpdmVseSwgd2Ug
ZG8gbm90IG5lZWQgdG8gY2hlY2sgYXMgd2Ugbm93IGFsd2F5cyBwcmltZSBoLT5ndAo+ID4gaW4g
aGFuZ19pbml0KCkKPiA+IAo+ID4gRml4ZXM6IGNiODIzZWQ5OTE1YiAoImRybS9pOTE1L2d0OiBV
c2UgaW50ZWxfZ3QgYXMgdGhlIHByaW1hcnkgb2JqZWN0IGZvciBoYW5kbGluZyByZXNldHMiKQo+
IAo+IFdpbGwgdGhlIGZpeGVzIHRhZyBjYXVzZSBzb21lIHVud2FudGVkIGJhY2twb3J0aW5nPwoK
R29vZCBwb2ludCwgd2UgZG9uJ3QgbmVlZCB0byBiYWNrcG9ydCB0aGlzIChwcmV0dHkgc3VyZSBp
dCB3YXMKc2VsZi1jb250YWluZWQgaW4gZGlucSwgYnV0IG5ldmVydGhlbGVzcykuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
