Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4438E3D70C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 21:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC2B891BE;
	Tue, 11 Jun 2019 19:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 990EC891BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 19:42:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16868885-1500050 for multiple; Tue, 11 Jun 2019 20:42:01 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190611172731.19174-2-mika.kuoppala@linux.intel.com>
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
 <20190611172731.19174-2-mika.kuoppala@linux.intel.com>
Message-ID: <156028211967.2193.8722711225416380430@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Jun 2019 20:41:59 +0100
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915/gtt: Use a common type for
 page directories
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTExIDE4OjI3OjI0KQo+ICBzdHJ1Y3QgaTkx
NV9wYWdlX3RhYmxlIHsKPiAgICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfZG1hIGJhc2U7Cj4gLSAg
ICAgICBhdG9taWNfdCB1c2VkX3B0ZXM7Cj4gKyAgICAgICBhdG9taWNfdCB1c2VkOwo+ICB9Owo+
ICAKPiAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3Rvcnkgewo+ICAgICAgICAgc3RydWN0IGk5MTVf
cGFnZV9kbWEgYmFzZTsKPiAtCj4gLSAgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpwYWdl
X3RhYmxlW0k5MTVfUERFU107IC8qIFBERXMgKi8KPiAtICAgICAgIGF0b21pY190IHVzZWRfcGRl
czsKPiAtICAgICAgIHNwaW5sb2NrX3QgbG9jazsKPiAtfTsKPiAtCj4gLXN0cnVjdCBpOTE1X3Bh
Z2VfZGlyZWN0b3J5X3BvaW50ZXIgewo+IC0gICAgICAgc3RydWN0IGk5MTVfcGFnZV9kbWEgYmFz
ZTsKPiAtICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICoqcGFnZV9kaXJlY3Rvcnk7
Cj4gLSAgICAgICBhdG9taWNfdCB1c2VkX3BkcGVzOwo+IC0gICAgICAgc3BpbmxvY2tfdCBsb2Nr
Owo+IC19Owo+IC0KPiAtc3RydWN0IGk5MTVfcG1sNCB7Cj4gLSAgICAgICBzdHJ1Y3QgaTkxNV9w
YWdlX2RtYSBiYXNlOwo+IC0gICAgICAgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnlfcG9pbnRl
ciAqcGRwc1tHRU44X1BNTDRFU19QRVJfUE1MNF07Cj4gKyAgICAgICBhdG9taWNfdCB1c2VkOwo+
ICAgICAgICAgc3BpbmxvY2tfdCBsb2NrOwo+ICsgICAgICAgdm9pZCAqZW50cnlbMF07Cj4gIH07
CgpBbmQgYWx3YXlzIChhbGJlaXQgd2l0aCBhIHNpbmdsZSBic3cgZGlzY3JlcGFuY3kpIDUxMi4g
QXQgdGhlIHZlcnkgbGVhc3QKeW91IGNhbiBhbGlhcyBhIGZpeGVkIHNpemVkIHZhcmlhbnQgb3Zl
ciB0aGUgdG9wIHRvIHJlbW92ZSB0aGUgZXh0cmEKcG9pbnRlciBjaGFzaW5nIHlvdSBhZGRlZC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
