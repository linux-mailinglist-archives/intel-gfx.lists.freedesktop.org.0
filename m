Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CED8C90B29
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 00:43:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3056E6E9B7;
	Fri, 16 Aug 2019 22:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40426E9B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 22:43:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18168360-1500050 for multiple; Fri, 16 Aug 2019 23:43:31 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190816205658.15020-1-michal.wajdeczko@intel.com>
References: <20190816205658.15020-1-michal.wajdeczko@intel.com>
Message-ID: <156599540849.22053.11817372973045022419@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 23:43:28 +0100
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/uc: Add explicit DISABLED state
 for firmware
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA4LTE2IDIxOjU2OjU4KQo+IFdlIHJlYWxs
eSBuZWVkIHRvIGhhdmUgc2VwYXJhdGUgTk9UX1NVUFBPUlRFRCBzdGF0ZSAoZm9yCj4gbGFjayBv
ZiBoYXJkd2FyZSBzdXBwb3J0KSBhbmQgRElTQUJMRUQgc3RhdGUgKHRvIGluZGljYXRlCj4gdXNl
ciBkZWNpc2lvbikgYXMgd2Ugd2lsbCBoYXZlIHRvIHRha2Ugc3BlY2lhbCBzdGVwcyBldmVuCj4g
aWYgR3VDIGZpcm13YXJlIGlzIG5vdyBkaXNhYmxlZCBidXQgaGFyZHdhcmUgZXhpc3RzIGFuZAo+
IGNvdWxkIGhhdmUgYmVlbiBwcmV2aW91c2x5IHVzZWQuCj4gCj4gdjI6IGZpeCBsb2dpYyAoQ2hy
aXMvQ0kpCj4gdjM6IHVzZSBwcm9wZXIgY2hlY2sgdG8gYXZvaWQgcHJvYmUgZmFpbHVyZSAoQ0kp
Cj4gdjQ6IGV4cGxhaW4gc3RhdHVzIHRyYW5zaXRpb25zIChDaHJpcykKPiAKPiBTaWduZWQtb2Zm
LWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiBDYzog
RGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4K
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
