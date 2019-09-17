Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CB2B48A7
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 09:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A616EB29;
	Tue, 17 Sep 2019 07:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9BD6EB29
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 07:57:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18515019-1500050 for multiple; Tue, 17 Sep 2019 08:57:26 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
Message-ID: <156870704430.5729.2381429891555562179@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 08:57:24 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix SFC reset flow
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
Cc: Owen Zhang <owen.zhang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE2IDIyOjQxOjA0KQo+IE91
ciBhc3N1bXB0aW9uIHRoYXQgdGhlIHdlIGNhbiBhc2sgdGhlIEhXIHRvIGxvY2sgdGhlIFNGQyBl
dmVuIGlmIG5vdAo+IGN1cnJlbnRseSBpbiB1c2UgZG9lcyBub3QgbWF0Y2ggdGhlIEhXIGNvbW1p
dG1lbnQuIFRoZSBleHBlY3RhdGlvbiBmcm9tCj4gdGhlIEhXIGlzIHRoYXQgU1cgd2lsbCBub3Qg
dHJ5IHRvIGxvY2sgdGhlIFNGQyBpZiB0aGUgZW5naW5lIGlzIG5vdAo+IHVzaW5nIGl0IGFuZCBp
ZiB3ZSBkbyB0aGF0IHRoZSBiZWhhdmlvciBpcyB1bmRlZmluZWQ7IG9uIElDTCB0aGUgSFcKPiBl
bmRzIHVwIHRvIHJldHVybmluZyB0aGUgYWNrIGFuZCBpZ25vcmluZyBvdXIgbG9jayByZXF1ZXN0
LCBidXQgdGhpcyBpcwo+IG5vdCBndWFyYW50ZWVkIGFuZCB3ZSBzaG91bGRuJ3QgZXhwZWN0IGl0
IGdvaW5nIGZvcndhcmQuCj4gCj4gUmVwb3J0ZWQtYnk6IE93ZW4gWmhhbmcgPG93ZW4uemhhbmdA
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gQEAgLTM2NiwxMCArMzY4LDEzIEBAIHN0
YXRpYyB1MzIgZ2VuMTFfbG9ja19zZmMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2ZjX2ZvcmNlZF9sb2Nr
X2Fja19iaXQsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzZmNf
Zm9yY2VkX2xvY2tfYWNrX2JpdCwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDEwMDAsIDAsIE5VTEwpKSB7Cj4gLSAgICAgICAgICAgICAgIERSTV9ERUJVR19EUklW
RVIoIldhaXQgZm9yIFNGQyBmb3JjZWQgbG9jayBhY2sgZmFpbGVkXG4iKTsKPiArICAgICAgICAg
ICAgICAgLyogZGlkIHdlIHJhY2UgdGhlIHVubG9jaz8gKi8KPiArICAgICAgICAgICAgICAgaWYg
KGludGVsX3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgc2ZjX3VzYWdlKSAmIHNmY191c2FnZV9iaXQp
Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJXYWl0IGZvciBTRkMgZm9yY2Vk
IGxvY2sgYWNrIGZhaWxlZFxuIik7CgpXaGF0J3Mgb3VyIHBsYW4gaWYgdGhpcyAqRVJST1IqIGlz
IGV2ZXIgdHJpZ2dlcmVkPwoKSWYgaXQgcmVtYWlucyBkbyBub3RoaW5nIGFuZCBjaGVjayB0aGUg
bG9ncyBvbiBkZWF0aCwgdGhlbiBpdCByZW1haW5zCmp1c3QgYSBkZWJ1ZyBzcGxhdC4gSWYgdGhl
cmUgaXMgYSBwbGFuIHRvIGFjdHVhbGx5IGRvIHNvbWV0aGluZyB0bwpoYW5kbGUgdGhlIGVycm9y
LCBkbyBpdCEKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
