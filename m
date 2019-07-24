Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2359873285
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 17:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D1706E5CD;
	Wed, 24 Jul 2019 15:11:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6474A6E5CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 15:11:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17569227-1500050 for multiple; Wed, 24 Jul 2019 16:11:20 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190724150525.18291-1-janusz.krzysztofik@linux.intel.com>
References: <20190724150525.18291-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <156398107902.31349.6805258014181001471@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 24 Jul 2019 16:11:19 +0100
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/guc: Fix premature release of
 context on reset
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMjQgMTY6MDU6MjUpCj4gV2hlbiB1
c2luZyBHdUMgc3VibWlzc2lvbiwgc29tZSBleGVjbGlzdHMgb3JpZ2luYXRlZCBoZWxwZXIgZnVu
Y3Rpb25zCj4gYXJlIHJldXNlZC4gIE9uZSBvZiB0aGVtLCB1c2VkIGluc2lkZSBndWNfcmVzZXQo
KSBhbmQKPiBndWNfY2FuY2VsX3JlcXVlc3RzKCkgY2FsbGJhY2tzIGludHJvZHVjZWQgYnkgY29t
bWl0IDI5MmFkMjVjMjJkOQo+ICgiZHJtL2k5MTUvZ3VjOiBJbXBsZW1lbnQgcmVzZXQgbG9jYWxs
eSIpLCB1bmZvcnR1bmF0ZWx5IGNhbGxzCj4gZXhlY2xpc3RzX3NjaGVkdWxlX291dCgpIGhlbHBl
ciBpbnN0ZWFkIG9mIGl0cyBHdUMgc3BlY2lmaWMgZXF1aXZhbGVudC4KPiBBcyBleGVjbGlzdHMg
ZnVuY3Rpb25zIG1haW50YWluIGNvbnRleHQgcmVmZXJlbmNlcyBmb3IgdGhlbXNlbHZlcywgdGhh
dAo+IGhlbHBlciByZWxlYXNlcyBhIGNvbnRleHQgYXNzb2NpYXRlZCB3aXRoIGEgcmVxdWVzdCBi
ZWluZyBwcm9jZXNzZWQgYXMKPiBzb29uIGFzIHRoZSBjb250ZXh0IGluZmxpZ2h0IHF1ZXVlIGJl
Y29tZXMgZW1wdHkuICBTaW5jZSBHdUMgc3VibWlzc2lvbgo+IGRvZXNuJ3Qga2VlcCBleHRyYSBj
b250ZXh0IHJlZmVyZW5jZXMsIHBvc3NpYmx5IHN0aWxsIGFjdGl2ZSBjb250ZXh0cwo+IG1heSBi
ZSByZWxlYXNlZCBwcmVtYXR1cmVseSwgcmVzdWx0aW5nIGluIGtlcm5lbCBwYW5pYy4KPiAKPiBG
aXggaXQgYnkgcHJvdmlkaW5nIGEgbG9jYWwsIG1vZGlmaWVkIGNvcHkgb2YKPiBleGVjbGlzdHNf
Y2FuY2VsX3BvcnRfcmVxdWVzdHMoKSBoZWxwZXIuCgpUaGVuIHJlbW92ZSB0aGUgZXhwb3J0IGFu
ZCBzdHViLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
