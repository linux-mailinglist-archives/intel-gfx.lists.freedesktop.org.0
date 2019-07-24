Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5007B732AA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 17:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CFB6E5CB;
	Wed, 24 Jul 2019 15:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974F26E5CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 15:24:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17569561-1500050 for multiple; Wed, 24 Jul 2019 16:24:39 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190724150525.18291-1-janusz.krzysztofik@linux.intel.com>
References: <20190724150525.18291-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <156398187775.31349.10647488705940146436@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 24 Jul 2019 16:24:37 +0100
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
ZSByZWxlYXNlZCBwcmVtYXR1cmVseSwgcmVzdWx0aW5nIGluIGtlcm5lbCBwYW5pYy4KCkZ3aXcs
IHRoYXQgcnEtPmNvbnRleHQtPmluZmxpZ2h0ID0gTlVMTCBpbiBzY2hlZHVsZV9vdXQoKSBpcyBu
b3QKcHJvdGVjdGVkIGFnYWluc3QgYSBkYW5nbGluZyBkZXJlZmVyZW5jZS4gV2hpY2gsIGlmIHlv
dSBhcmUgbm90IGZhbGxpbmcKaW50byB0aGUgZXhlY2xpc3RzIHRyYXAsIHlvdSBjYW4gcmVtb3Zl
IGVudGlyZWx5IHRvIGF2b2lkIHRoZSBwb3RlbnRpYWwKdXNlLWFmdGVyLWZyZWUuCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
