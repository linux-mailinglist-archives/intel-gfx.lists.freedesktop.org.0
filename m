Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B35B9604A0
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 12:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69516E479;
	Fri,  5 Jul 2019 10:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B9306E479
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 10:38:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17140598-1500050 for multiple; Fri, 05 Jul 2019 11:37:01 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190705074604.16496-1-chris@chris-wilson.co.uk>
References: <20190705074604.16496-1-chris@chris-wilson.co.uk>
Message-ID: <156232301963.19568.4265324362236577841@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 05 Jul 2019 11:36:59 +0100
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Order assert forcewake test
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDUgMDg6NDU6NTcpCj4gUmVhZCB0aGUgY3Vy
cmVudCB2YWx1ZSBiZWZvcmUgY29tcHV0aW5nIHRoZSBleHBlY3RlZCB0byBlbnN1cmUgdGhhdCBp
Zgo+IHRoZSB0aW1lciBkb2VzIGNvbXBsZXRlIGVhcmx5IChhZ2FpbnN0IG91ciB3aWxsKSwgaXQg
c2hvdWxkIG5vdCBjYXVzZSBhCj4gZmFsc2UgcG9zaXRpdmUuCj4gCj4gdjI6IFRoZSBsb2NhbCBp
cnEgZGlzYWJsZSBkaWQgbm90IHByZXZlbnQgdGhlIHRpbWVyIGZyb20gcnVubmluZy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCmlyYyByLWIsClJl
dmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
