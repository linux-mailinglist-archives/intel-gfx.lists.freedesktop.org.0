Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DCA92280
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 13:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7026E106;
	Mon, 19 Aug 2019 11:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B016E106
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 11:36:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18188117-1500050 for multiple; Mon, 19 Aug 2019 12:36:45 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-5-chris@chris-wilson.co.uk>
 <87d0h15r6d.fsf@gaia.fi.intel.com>
In-Reply-To: <87d0h15r6d.fsf@gaia.fi.intel.com>
Message-ID: <156621460334.1374.8644494889560556246@skylake-alporthouse-com>
Date: Mon, 19 Aug 2019 12:36:43 +0100
Subject: Re: [Intel-gfx] [PATCH 04/18] drm/i915: Only emit the 'send bug
 report' once for a GPU hang
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE5IDEyOjI5OjQ2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBVc2UgYSBsb2NrZWQg
eGNoZyB0byBlbnN1cmUgdGhhdCB0aGUgZ2xvYmFsIGxvZyBtZXNzYWdlIGdpdmluZwo+ID4gaW5z
dHJ1Y3Rpb25zIG9uIGhvdyB0byBzZW5kIGEgYnVnIHJlcG9ydCBpcyBlbWl0dGVkIHByZWNpc2Vs
eSBvbmNlLgo+ID4KPiAKPiBXZWxsIHlvdSBtdXN0IGhhdmUgcnVuIGludG8gdGhpcyBhcyB0aGlz
IHBhdGNoIGFwcGVhcmVkLgo+IEFyZ3VhYmx5IGJldHRlciB0aGFuIHNvbWUgcmVhZC93cml0ZSBv
bmNlIHRyaWNrZXJ5LgoKTm8uLi4gSnVzdCBhbiBleWUgdG8gdGhlIGZ1dHVyZS4gSSBtYWRlIHRo
aXMgYSBub24tZGV2aWNlIHNwZWNpZmljCm1lc3NhZ2UgYXMgaXQgaXMgcHVyZWx5IGluZm9ybWF0
aXZlLCBidXQgSSBkb24ndCB3YW50IG91ciB1c2VycyBpbmZvcm1lZAptdWx0aXBsZSB0aW1lcyBj
b25jdXJyZW50bHkhCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
