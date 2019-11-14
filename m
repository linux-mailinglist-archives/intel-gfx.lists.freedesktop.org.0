Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9BCFC09F
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 08:18:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5906E071;
	Thu, 14 Nov 2019 07:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52676E071
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 07:18:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19196011-1500050 for multiple; Thu, 14 Nov 2019 07:17:56 +0000
MIME-Version: 1.0
To: Dan Carpenter <dan.carpenter@oracle.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191114065437.l5twwdf7cqmitlw6@kili.mountain>
References: <20191114065437.l5twwdf7cqmitlw6@kili.mountain>
Message-ID: <157371587499.2850.12040289530321146585@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 14 Nov 2019 07:17:55 +0000
Subject: Re: [Intel-gfx] [bug report] drm/i915: Initial selftests for
 exercising eviction
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

UXVvdGluZyBEYW4gQ2FycGVudGVyICgyMDE5LTExLTE0IDA2OjU0OjM3KQo+IEhlbGxvIENocmlz
IFdpbHNvbiwKPiAKPiBUaGUgcGF0Y2ggZjQwYTdiNzU1OGVmOiAiZHJtL2k5MTU6IEluaXRpYWwg
c2VsZnRlc3RzIGZvciBleGVyY2lzaW5nCj4gZXZpY3Rpb24iIGZyb20gRmViIDEzLCAyMDE3LCBs
ZWFkcyB0byB0aGUgZm9sbG93aW5nIHN0YXRpYyBjaGVja2VyCj4gd2FybmluZzoKPiAKPiAgICAg
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5jOjIwMiBp
Z3Rfb3ZlcmNvbW1pdCgpCj4gICAgICAgICB3YXJuOiBwYXNzaW5nIHplcm8gdG8gJ1BUUl9FUlIn
Cj4gCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMKPiAg
ICAxOTAgICAgICAgICAgICAgICAgICBnb3RvIGNsZWFudXA7Cj4gICAgMTkxICAKPiAgICAxOTIg
ICAgICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChndC0+aTkxNSwg
STkxNV9HVFRfUEFHRV9TSVpFKTsKPiAgICAxOTMgICAgICAgICAgaWYgKElTX0VSUihvYmopKSB7
Cj4gICAgMTk0ICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihvYmopOwo+ICAgIDE5NSAg
ICAgICAgICAgICAgICAgIGdvdG8gY2xlYW51cDsKPiAgICAxOTYgICAgICAgICAgfQo+ICAgIDE5
NyAgCj4gICAgMTk4ICAgICAgICAgIHF1aXJrX2FkZChvYmosICZvYmplY3RzKTsKPiAgICAxOTkg
IAo+ICAgIDIwMCAgICAgICAgICB2bWEgPSBpOTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBO
VUxMLCAwLCAwLCAwKTsKPiAgICAyMDEgICAgICAgICAgaWYgKCFJU19FUlIodm1hKSB8fCBQVFJf
RVJSKHZtYSkgIT0gLUVOT1NQQykgewo+ICAgICAgICAgICAgICAgICAgICAgXl5eXl5eXl5eXl5e
Cj4gSXMgdGhpcyByZXZlcnNlZD8KCk5vLCB0aGUgc2V0dXAgaXMgc3VwcG9zZWQgdG8gZm9yY2Ug
dGhlIHBpbigpIHRvIGZhaWwgd2l0aCBFTk9TUEMuCgppZiAodm1hICE9IEVSUl9QVFIoLUVOT1NQ
QykpCgp3b3VsZCBiZSBhIGNsZWFyZXIgd2F5IHRvIHdyaXRlIGl0LgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
