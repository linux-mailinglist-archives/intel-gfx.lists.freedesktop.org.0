Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 784A34659A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 19:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D034D89AAD;
	Fri, 14 Jun 2019 17:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6686889AAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 17:22:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905802-1500050 for multiple; Fri, 14 Jun 2019 18:22:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614164350.30415-1-mika.kuoppala@linux.intel.com>
 <20190614164350.30415-7-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190614164350.30415-7-mika.kuoppala@linux.intel.com>
Message-ID: <156053293082.7796.12848652502816919786@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 18:22:10 +0100
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/gtt: Check for physical page
 for pd entry always
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTE0IDE3OjQzOjQ3KQo+IENoZWNrIHRoZSBw
aHlzaWNhbCBwYWdlIGJlZm9yZSB3cml0aW5nIHRoZSBlbnRyeSBpbnRvCj4gdGhlIHBoeXNpY2Fs
IHBhZ2UuIFRoaXMgZnVydGhlciBnZW5lcmFsaXplcyB0aGUgcGQgc28gdGhhdAo+IG1hbmlwdWxh
dGlvbiBpbiBjYWxsc2l0ZXMgd2lsbCBiZSBpZGVudGljYWwsIHJlbW92aW5nIHRoZSBuZWVkIHRv
Cj4gaGFuZGxlIHBkcHMgZGlmZmVyZW50bHkgZm9yIGdlbjguCj4gCj4gU2lnbmVkLW9mZi1ieTog
TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpTcXVhc2ggb3Ig
bm90LCBib3RoIGFyZQpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CnRoZW4gOi1wCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
