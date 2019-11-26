Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EF0109D63
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 12:58:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359796E2F9;
	Tue, 26 Nov 2019 11:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBAD6E2F9;
 Tue, 26 Nov 2019 11:58:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19343016-1500050 for multiple; Tue, 26 Nov 2019 11:58:24 +0000
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8736ean98g.fsf@gaia.fi.intel.com>
References: <20191126113826.2642042-1-chris@chris-wilson.co.uk>
 <8736ean98g.fsf@gaia.fi.intel.com>
Message-ID: <157476949789.15944.2132453157493369887@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 11:58:17 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] igt: Add gem_ctx_freq to
 exercise requesting freq via sysfs
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTI2IDExOjU0OjM5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBPbmNlIHByb3Bwb3Nl
ZCBsb25nIGFnbyB3YXMgcGVyLWNvbnRleHQgZnJlcXVlbmN5IGNvbnRyb2xzLiBBcyBwYXJ0IG9m
Cj4gPiB0aGF0IHRoaXMgdGVzdCBzdWl0ZSB3YXMgd3JpdHRlbiwgd2hpY2ggYW1vbmcgaXRzIHRl
c3RzIGNvdmVyZWQgdGhlCj4gPiBpbnRlcmFjdGlvbiBvZiBzeXNmcyB3aXRoIHRoZSBwZXItY29u
dGV4dCBjb250cm9scy4gV2hpbGUgd2Ugd2FpdCBhZ2Fpbgo+ID4gZm9yIGFwcHJvdmFsIG9mIHRo
ZSBwZXItY29udGV4dCBBUEksIHdlIGNhbiBhdCBsZWFzdCBsZXZlcmFnZSB0aGUgc3lzZnMKPiA+
IHRlc3RzIHRvIHByb3ZpZGUgc29yZWx5IGxhY2tpbmcgY292ZXJhZ2Ugb2YgdGhlIHN5c2ZzIGtu
b2JzLgo+IAo+IHMvcHJvcHBvc2VkL3Byb3Bvc2VkLgo+IHMvaXRzL2l0J3MKCkZvciBvbmNlLCBp
dCdzIGl0cy4KCkVuZ2xpc2ggaXMgb2RkOgogIGl0J3M6IGNvbnRyYWN0aW9uIG9mIGl0IGlzCiAg
aXRzOiBwb3NzZXNzaXZlLCBub3JtYWxseSBpbXBsaWVkIGJ5IHRoZSBhcG9zdHJvcGhlLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
