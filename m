Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D98BB5661E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 12:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6D06E34B;
	Wed, 26 Jun 2019 10:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D736E34B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 10:02:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17028571-1500050 for multiple; Wed, 26 Jun 2019 11:02:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190624203152.13725-1-daniele.ceraolospurio@intel.com>
 <20190624203152.13725-2-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190624203152.13725-2-daniele.ceraolospurio@intel.com>
Message-ID: <156154334639.2637.9988052891636686902@skylake-alporthouse-com>
Date: Wed, 26 Jun 2019 11:02:26 +0100
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915: split out uncore_mmio_debug
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA2LTI0IDIxOjMxOjQ5KQo+IEBA
IC02MDUsMTggKzYxNCwyMCBAQCB2b2lkIGludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHN0cnVj
dCBpbnRlbF91bmNvcmUgKnVuY29yZSwKPiAgdm9pZCBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3Vz
ZXJfZ2V0KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSkKPiAgewo+ICAgICAgICAgc3Bpbl9s
b2NrX2lycSgmdW5jb3JlLT5sb2NrKTsKPiArICAgICAgIHNwaW5fbG9jaygmdW5jb3JlLT5kZWJ1
Zy0+bG9jayk7Cj4gICAgICAgICBpZiAoIXVuY29yZS0+dXNlcl9mb3JjZXdha2UuY291bnQrKykg
ewoKQWZhaWN0LCB1bmNvcmUtPnVzZXJfZm9yY2V3YWtlLmNvdW50IGlzIG9ubHkgZ3VhcmRlZCBi
eSB1bmNvcmUtPmxvY2sKYW5kIHdlIG9ubHkgbmVlZCB0byB0YWtlIGRlYnVnLT5sb2NrIGZvciB0
aGUgZGVidWctPnVuY2xhaW1lZF9tbWlvX2NoZWNrCm1hbmlwdWxhdGlvbi4gQnV0IHRoZXJlIG5l
ZWRzIHRvIGJlIGEgc2hhcmVkIHVzYWdlIGNvdW50ZXIgYXJvdW5kIHRoZQpkZWJ1ZyBhcyBpdCBp
cyBzaGFyZWQgc3RhdGUuCgo+ICAgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfZm9yY2V3YWtl
X2dldF9fbG9ja2VkKHVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7Cj4gIAo+ICAgICAgICAgICAgICAg
ICAvKiBTYXZlIGFuZCBkaXNhYmxlIG1taW8gZGVidWdnaW5nIGZvciB0aGUgdXNlciBieXBhc3Mg
Ki8KPiAgICAgICAgICAgICAgICAgdW5jb3JlLT51c2VyX2ZvcmNld2FrZS5zYXZlZF9tbWlvX2No
ZWNrID0KPiAtICAgICAgICAgICAgICAgICAgICAgICB1bmNvcmUtPnVuY2xhaW1lZF9tbWlvX2No
ZWNrOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHVuY29yZS0+ZGVidWctPnVuY2xhaW1lZF9t
bWlvX2NoZWNrOwo+ICAgICAgICAgICAgICAgICB1bmNvcmUtPnVzZXJfZm9yY2V3YWtlLnNhdmVk
X21taW9fZGVidWcgPQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGk5MTVfbW9kcGFyYW1zLm1t
aW9fZGVidWc7CgpTb21ldGhpbmcgbW9yZSBsaWtlCgpzcGluX2xvY2tfaXJxKCZ1bmNvcmUtPmxv
Y2spOwppZiAoIXVuY29yZS0+dXNlcl9mb3JjZXdha2VfY291bnQrKykgewoJc3Bpbl9sb2NrKCZ1
bmNvcmUtPmRlYnVnLT5sb2NrKTsKCWlmICghdW5jb3JlLT5kZWJ1Zy0+dXNhZ2VfY291bnQrKykg
ewoJCS4uLgoJfQoJc3Bpbl91bmxvY2soJnVuY29yZS0+ZGVidWctPmxvY2spOwp9Ci4uLgpzcGlu
X3VubG9ja19pcnEoJnVuY29yZS0+bG9jayk7Cj8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
