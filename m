Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D21BC6467F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 14:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43DD589708;
	Wed, 10 Jul 2019 12:48:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2898589708;
 Wed, 10 Jul 2019 12:48:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17199471-1500050 for multiple; Wed, 10 Jul 2019 13:47:10 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
References: <20190710123631.26575-1-janusz.krzysztofik@linux.intel.com>
Message-ID: <156276282845.11940.4812142560907762693@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 10 Jul 2019 13:47:08 +0100
Subject: Re: [Intel-gfx] [RFC PATCH 0/6] Rename functions to match their
 entry points
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMDctMTAgMTM6MzY6MjUpCj4gTmVlZCBm
b3IgdGhpcyB3YXMgaWRlbnRpZmllZCB3aGlsZSB3b3JraW5nIG9uIHNwbGl0IG9mIGRyaXZlciB1
bmJpbmQKPiBwYXRoIGludG8gX3JlbW92ZSgpIGFuZCBfcmVsZWFzZSgpIHBhcnRzLiAgQ29uc2lz
dGVuY3kgaW4gZnVuY3Rpb24KPiBuYW1pbmcgaGFzIGJlZW4gcmVjb2duaXplZCBhcyBoZWxwZnVs
IHdoZW4gdHJ5aW5nIHRvIHdvcmsgb3V0IHdoaWNoCj4gcGhhc2UgdGhlIGNvZGUgaXMgaW4uCj4g
Cj4gV2hhdCBJJ20gc3RpbGwgbm90IHN1cmUgYWJvdXQgaXMgZGVzaXJlZCBkZXB0aCBvZiB0aGF0
IG1vZGlmaWNhdGlvbiAtCj4gaG93IGRlZXAgc2hvdWxkIHdlIGdvIGRvd24gd2l0aCByZW5hbWlu
ZyB0byBub3Qgb3ZlcnJpZGUgbWVhbmluZ2Z1bGwKPiBmdW5jdGlvbiBuYW1lcy4gIFBsZWFzZSBh
ZHZpc2UgaWYgeW91IHRoaW5rIHN0aWxsIG1vcmUgZGVlcCByZW5hbWluZwo+IG1ha2VzIHNlbnNl
LgoKSSBkaWQgYSBkb3VibGUgdGFrZSBvdmVyICJkcml2ZXJfcmVsZWFzZSIgYnV0IGJ5IHRoZSBl
bmQgSSB3YXMgaW4KYWdyZWVtZW50LgoKVGhlIGVhcmx5X3JlbGVhc2UgdGhvdWdoLCB0aGF0IGlz
IHdvcnRoIGEgYml0IG9mIGFydGlzdGljIGxpY2Vuc2UgdG8gc2F5CmVhcmx5X3Byb2JlIHBhaXJz
IHdpdGggbGF0ZV9yZWxlYXNlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
