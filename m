Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0CD95CFB
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 13:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB2C6E790;
	Tue, 20 Aug 2019 11:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546276E790
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 11:14:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18200816-1500050 for multiple; Tue, 20 Aug 2019 12:14:05 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
References: <20190820020147.5667-1-daniele.ceraolospurio@intel.com>
Message-ID: <156629964319.1374.5752199343673724939@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 20 Aug 2019 12:14:03 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Dynamically allocate s0ix
 struct for VLV
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTIwIDAzOjAxOjQ2KQo+IFRo
aXMgaXMgb25seSByZXF1aXJlZCBmb3IgYSBzaW5nbGUgcGxhdGZvcm0gc28gbm8gbmVlZCB0byBy
ZXNlcnZlIHRoZQo+IG1lbW9yeSBvbiBhbGwgb2YgdGhlbS4KPiAKPiBUaGlzIHJlbW92ZXMgdGhl
IGxhc3QgZGlyZWN0IGRlcGVuZGVuY3kgb2YgaTkxNV9kcnYuaCBvbiBpOTE1X3JlZy5oCj4gKGFw
YXJ0IGZyb20gdGhlIGk5MTVfcmVnX3QgZGVmaW5pdGlvbikuCj4gCj4gdjI6IGRyb3AgdW5uZWVk
ZWQgZGlmZiwga2VlcCB0aGUgdmx2IHByZWZpeCwgY2FsbCBmdW5jdGlvbnMKPiAgICAgdW5jb25k
aXRpb25hbGx5IChKYW5pKSwgZndkIGRlY2xhcmF0aW9uIG9mIHRoZSBzdHJ1Y3QgKENocmlzKQo+
IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4K
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpBbnkgY2hhbmNlIHdlIGNhbiBtb3ZlIHRoaXMg
dG8gdmx2X3MwaXguYz8gT3IgcGVyaGFwcwp2bHZfc3VzcGVuZC5jLCBvciB2bHZfcG0uYz8KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
