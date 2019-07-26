Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 720CA762E8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 11:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 946D26ECCB;
	Fri, 26 Jul 2019 09:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7036E6ECCB
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 09:33:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17622585-1500050 for multiple; Fri, 26 Jul 2019 10:33:18 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <20190723183842.20372-7-chris@chris-wilson.co.uk>
 <f9893cc8-ae33-c7ba-9e20-467e54cfec85@linux.intel.com>
In-Reply-To: <f9893cc8-ae33-c7ba-9e20-467e54cfec85@linux.intel.com>
Message-ID: <156413359650.30723.4362365063332311124@skylake-alporthouse-com>
Date: Fri, 26 Jul 2019 10:33:16 +0100
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915/gt: Move the [class][inst]
 lookup for engines onto the GT
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0yNiAxMDoyMjowOCkKPiAKPiBPbiAyMy8w
Ny8yMDE5IDE5OjM4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gSSByZWFkIGl0LCByZWxhdGl2ZWx5
IHJ1c2hlZCwgc2luY2UgcHJlc3N1cmUga2VlcHMgZ2V0dGluZyBhcHBsaWVkISA6Lwo+IAo+IFRo
ZXJlIGFyZSBzb21lIGdvb2QgcGFydHMgYW5kIGltcGxlbWVudGF0aW9uIGxvb2tzIG9rYXksIGJ1
dCBJIGFtIG5vdCAKPiBzdXJlIHdlIG5lZWQgYSB0cmVlLiBOb2RlcyBhcmUgYmlnZ2VyIHRoYW4g
cG9pbnRlcnMsIG1hbmFnZW1lbnQgY29kZSBpcyAKPiBiaWdnZXIsIGxvb2t1cCBpcyBzbG93ZXIu
LiBpcyBpdCBhIHdpbiBhbGwgdGhpbmdzIGNvbnNpZGVyZWQ/CgpBIGJpZyB3aW4gaW1vLiBDb25z
aWRlciB0aGF0IHRoaXMgaW50ZXJmYWNlIGlzIHB1cmVseSBkZWJ1ZywgdGhlIHByaW1hcnkKaW50
ZXJmYWNlIHJ1bnRpbWUgd2lsbCBiZSB2aWEgZ3QtPmVuZ2luZXMsIHRoZSBub2RlcyBhcmUgbXVj
aCBzbWFsbGVyCnRoYW4gdGhlIHNwYXJzZSBhcnJheS4KCkkgYW0gYWRhbWFudCB0aGF0IHdlIGFy
ZSBub3QgYWRkaW5nIG1vcmUgc3BhcnNlIGFycmF5cy4gQSAyRCBsb29rdXAKdGFibGUgc2luY2Ug
dGhhdCBtYXRjaGVzIHRoZSBIVywgYnV0IGV2ZW4gdGhlbiB3ZSBtYXkganVzdCBlbmQgdXAgd2l0
aApMVVQgKDEgZXh0cmEgcG9pbnRlciBsb2FkIHRvIHJlcGxhY2UgdGhlIHNwYXJzZSBhcnJheSB3
aXRoIGEgY29tcGFjdD8pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
