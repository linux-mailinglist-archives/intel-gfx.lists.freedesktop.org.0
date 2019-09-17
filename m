Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3896B526B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 18:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4FD6ECF4;
	Tue, 17 Sep 2019 16:06:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB9BB6ECF4
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 16:06:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18522185-1500050 for multiple; Tue, 17 Sep 2019 17:06:13 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
References: <20190916214104.27881-1-daniele.ceraolospurio@intel.com>
Message-ID: <156873637130.5729.12180403902153033147@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 17:06:11 +0100
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTE2IDIyOjQxOjA0KQo+IEBA
IC00MDEsNyArNDA3LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjExX3VubG9ja19zZmMoc3RydWN0IGlu
dGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gICAgICAg
ICB9Cj4gIAo+IC0gICAgICAgcm13X2NsZWFyX2Z3KHVuY29yZSwgc2ZjX2ZvcmNlZF9sb2NrLCBz
ZmNfZm9yY2VkX2xvY2tfYml0KTsKPiArICAgICAgIGxvY2sgPSBpbnRlbF91bmNvcmVfcmVhZF9m
dyh1bmNvcmUsIHNmY19mb3JjZWRfbG9jayk7Cj4gKyAgICAgICBpZiAobG9jayAmIHNmY19mb3Jj
ZWRfbG9ja19iaXQpCj4gKyAgICAgICAgICAgICAgIGludGVsX3VuY29yZV93cml0ZV9mdyh1bmNv
cmUsIHNmY19mb3JjZWRfbG9jaywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGxvY2sgJiB+c2ZjX2ZvcmNlZF9sb2NrX2JpdCk7CgpUaGlzIGlzIGhhbmRsZWQgYnkgcm13
X2NsZWFyX2Z3KCkgaXRzZWxmIG5vdywKODBmYTY0ZDYyMDY3ICgiZHJtL2k5MTU6IE9ubHkgYXBw
bHkgYSBybXcgbW1pbyB1cGRhdGUgaWYgdGhlIHZhbHVlIGNoYW5nZXMiKQotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
