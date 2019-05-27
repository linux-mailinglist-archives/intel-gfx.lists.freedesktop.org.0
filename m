Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 511412B1E0
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 12:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1FE589786;
	Mon, 27 May 2019 10:13:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A83D889786;
 Mon, 27 May 2019 10:13:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16693005-1500050 for multiple; Mon, 27 May 2019 11:13:11 +0100
MIME-Version: 1.0
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Simon Ser <simon.ser@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190527011951.h2adglmq2g24exov@smtp.gmail.com>
References: <20190527011951.h2adglmq2g24exov@smtp.gmail.com>
Message-ID: <155895198890.6190.3140856123443499779@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 27 May 2019 11:13:08 +0100
Subject: Re: [Intel-gfx] [PATCH V3 i-g-t] lib: Drop __kms_addfb() wrapper
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFNpcXVlaXJhICgyMDE5LTA1LTI3IDAyOjE5OjUxKQo+IFRoZSBmdW5j
dGlvbiBfX2ttc19hZGRmYigpIGFuZCBkcm1Nb2RlQWRkRkIyV2l0aE1vZGlmaWVycygpIGhhdmUg
YQo+IHNpbWlsYXIgY29kZS4gRHVlIHRvIHRoaXMgc2ltaWxhcml0eSwgdGhpcyBjb21taXQgcmVw
bGFjZXMgYWxsIHRoZQo+IG9jY3VycmVuY2VzIG9mICBfX2ttc19hZGRmYigpIGJ5IGRybU1vZGVB
ZGRGQjJXaXRoTW9kaWZpZXJzKCkgYW5kIGFkZHMKPiB0aGUgcmVxdWlyZWQgYWRhcHRhdGlvbnMu
CgpOby4gVGhlcmUgaXMgYSBjcml0aWNhbCBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIHR3bzogaWd0
X2lvY3RsLiBUaGF0CmFsbG93cyB1cyB0byBjb250cm9sIHRoZSBpb2N0bCBmb3IgZXJyb3IgaW5q
ZWN0aW9uIGludG8gdGhlIGtlcm5lbC4KCklmIHlvdSB3YW50IHRvIHRlc3QgbGliZHJtIEFQSSBh
bmQgbm90IHRoZSBrZXJuZWwsIHBsZWFzZSBhZGQgdGVzdHMKdG8gbGliZHJtLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
