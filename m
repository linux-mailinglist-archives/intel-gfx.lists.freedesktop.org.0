Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34819AB977
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 15:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 757276E29B;
	Fri,  6 Sep 2019 13:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B732C6E29C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 13:41:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18398880-1500050 for multiple; Fri, 06 Sep 2019 14:41:06 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190906133145.3366-1-mika.kuoppala@linux.intel.com>
References: <20190906122314.2146-1-mika.kuoppala@linux.intel.com>
 <20190906133145.3366-1-mika.kuoppala@linux.intel.com>
Message-ID: <156777726319.2967.13027401829827121229@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 06 Sep 2019 14:41:03 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Use engine relative LRIs on
 context setup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTA2IDE0OjMxOjQ1KQo+IEBAIC0yOTM5LDYg
KzI5NDIsMTAgQEAgdm9pZCBpbnRlbF9leGVjbGlzdHNfc2V0X2RlZmF1bHRfc3VibWlzc2lvbihz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAgICAgICAgICAgICAgIGlmIChIQVNf
TE9HSUNBTF9SSU5HX1BSRUVNUFRJT04oZW5naW5lLT5pOTE1KSkKPiAgICAgICAgICAgICAgICAg
ICAgICAgICBlbmdpbmUtPmZsYWdzIHw9IEk5MTVfRU5HSU5FX0hBU19QUkVFTVBUSU9OOwo+ICAg
ICAgICAgfQo+ICsKPiArICAgICAgIGVuZ2luZS0+ZmxhZ3MgfD0gKGVuZ2luZS0+Y2xhc3MgIT0g
Q09QWV9FTkdJTkVfQ0xBU1MgJiYKPiArICAgICAgICAgICAgICAgICAgICAgICAgIElOVEVMX0dF
TihlbmdpbmUtPmk5MTUpID49IDEyKSA/Cj4gKyAgICAgICAgICAgICAgIEk5MTVfRU5HSU5FX0hB
U19SRUxBVElWRV9NTUlPIDogMDsKClN0eWxlIG5pdCwgSSB3b3VsZCBoYXZlIHN0dWNrIHdpdGgg
YSBwbGFpbgoJaWYgKGNsYXNzICE9IENPUFkgJiYgR0VOID49IDEyKQoJCWVuZ2luZS0+ZmxhZ3Mg
fD0gSTkxNV9FTkdJTkVfSEFTX1JFTEFUSVZFX01NSU87CgpUaGUgZmxhZyB0YWtlcyBjYXJlIG9m
IHRoZSB2aXJ0dWFsIGVuZ2luZSBzd2l0Y2hpbmcgbmljZWx5LgoKUmV2aWV3ZWQtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
