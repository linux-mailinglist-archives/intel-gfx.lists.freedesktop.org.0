Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA075FB7C9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 19:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B8486E08C;
	Wed, 13 Nov 2019 18:39:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB546E08C;
 Wed, 13 Nov 2019 18:39:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19191549-1500050 for multiple; Wed, 13 Nov 2019 18:38:52 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191113182808.10780-2-chris@chris-wilson.co.uk>
References: <20191113182808.10780-1-chris@chris-wilson.co.uk>
 <20191113182808.10780-2-chris@chris-wilson.co.uk>
Message-ID: <157367033103.22201.1883489168208001797@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 13 Nov 2019 18:38:51 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] lib/igt_dummyload: Send batch as
 first
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMTMgMTg6Mjg6MDcpCj4gRnJvbTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gVG8gc2ltcGxpZnkg
ZW1pdHRpbmcgdGhlIHJlY3Vyc2l2ZSBiYXRjaCwgbWFrZSBiYXRjaAo+IGFsd2F5cyB0aGUgZmly
c3Qgb2JqZWN0IG9uIHRoZSBleGVjYnVmIGxpc3QuCj4gCj4gVGhpcyB3aWxsIHJlcXVpcmUga2Vy
bmVsIHY0LjEzIG9yIGdyZWF0ZXIuCj4gCj4gdjI6IHNldCBoYW5kbGVzIGVhcmx5LCBwb2xsX3B0
ciBpbmRlY2VuY3kgKENocmlzKQo+IHYzOiBhbGxvdyBkZXAgd2l0aCBwb2xsCj4gdjQ6IGZpeCBn
ZW1fZXhlY19zY2hlZHVsZQo+IHY1OiByZWJhc2UKPiB2NjogcmViYXNlCj4gdjY6IGdlbV9jdHhf
c2hhcmVkCj4gdjc6IGNvbmRpdGlvbmFsIGNsb3NlIG9mIHBvbGwgaGFuZGxlCj4gdjg6IGJ3IGNv
bXBhdCBub3RlIChDaHJpcykKPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBs
aW51eC5pbnRlbC5jb20+CgpEbyB3ZSBzdGlsbCByZXF1aXJlIGl0PwoKUmV2aWV3ZWQtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
