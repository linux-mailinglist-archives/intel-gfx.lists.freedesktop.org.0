Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 793529E4B5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 11:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F6689906;
	Tue, 27 Aug 2019 09:45:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D111A89906
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 09:45:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18275181-1500050 for multiple; Tue, 27 Aug 2019 10:45:25 +0100
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190827094016.GC8443@mwanda>
References: <20190827094016.GC8443@mwanda>
Message-ID: <156689912309.15406.17431343356634848346@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 27 Aug 2019 10:45:23 +0100
Subject: Re: [Intel-gfx] [bug report] drm/i915/selftests: Teach
 igt_gpu_fill_dw() to take intel_context
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTA4LTI3IDEwOjQwOjE2KQo+IEhlbGxvIENocmlz
IFdpbHNvbiwKPiAKPiBUaGUgcGF0Y2ggNzViOTc0YTg1OWU1OiAiZHJtL2k5MTUvc2VsZnRlc3Rz
OiBUZWFjaCBpZ3RfZ3B1X2ZpbGxfZHcoKQo+IHRvIHRha2UgaW50ZWxfY29udGV4dCIgZnJvbSBB
dWcgMjQsIDIwMTksIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcKPiBzdGF0aWMgY2hlY2tlciB3YXJu
aW5nOgo+IAo+ICAgICAgICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1
X2dlbV9jb250ZXh0LmM6NDAyIGlndF9jdHhfZXhlYygpCj4gICAgICAgICBlcnJvcjogJ2NlJyBk
ZXJlZmVyZW5jaW5nIHBvc3NpYmxlIEVSUl9QVFIoKQo+IAo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gICAgMzg4ICAgICAgICAgICAgICAg
ICAgZHcgPSAwOwo+ICAgIDM4OSAgICAgICAgICAgICAgICAgIHdoaWxlICghdGltZV9hZnRlcihq
aWZmaWVzLCBlbmRfdGltZSkpIHsKPiAgICAzOTAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0
cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHg7Cj4gICAgMzkxICAgICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gICAgMzkyICAKPiAgICAzOTMgICAgICAg
ICAgICAgICAgICAgICAgICAgIGN0eCA9IGxpdmVfY29udGV4dChpOTE1LCBmaWxlKTsKPiAgICAz
OTQgICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19FUlIoY3R4KSkgewo+ICAgIDM5NSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlcnIgPSBQVFJfRVJSKGN0eCk7Cj4gICAg
Mzk2ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0X3VubG9jazsKPiAg
ICAzOTcgICAgICAgICAgICAgICAgICAgICAgICAgIH0KPiAgICAzOTggIAo+ICAgIDM5OSAgICAg
ICAgICAgICAgICAgICAgICAgICAgY2UgPSBpOTE1X2dlbV9jb250ZXh0X2dldF9lbmdpbmUoY3R4
LCBlbmdpbmUtPmxlZ2FjeV9pZHgpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Xl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl4K
PiBOZXcgYXNzaWdubWVudC4gIFNtYXRjaCB0aGlua3MgaXQgY2FuIGJlIEVSUl9QVFIoLUVJTlZB
TCkKCkl0IGNhbid0IGJlIGZyb20gc3VjY2Vzc2Z1bCBjb25zdHJ1Y3Rpb24gb2YgdGhlIGxpdmVf
Y29udGV4dCgpLgoKR0VNX0JVR19PTihJU19FUlIoY2UpKSBJIGd1ZXNzLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
