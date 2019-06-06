Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C559A37632
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 16:17:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4E658961E;
	Thu,  6 Jun 2019 14:17:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D02892C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 14:17:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 07:17:18 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga007.fm.intel.com with ESMTP; 06 Jun 2019 07:17:17 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id B10BC5C1F31; Thu,  6 Jun 2019 17:17:15 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155982190941.19464.9612763812107224043@skylake-alporthouse-com>
References: <20190531113245.30042-1-chris@chris-wilson.co.uk>
 <155982190941.19464.9612763812107224043@skylake-alporthouse-com>
Date: Thu, 06 Jun 2019 17:17:15 +0300
Message-ID: <87muiuajdg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Report an earlier wedged event
 when suspending the engines
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMzEgMTI6MzI6NDUpCj4+IE9uIGk5MTVfZ2VtX2xvYWRf
cG93ZXJfY29udGV4dCgpIHdlIGRvIGNhcmUgd2hldGhlciBvciBub3Qgd2Ugc3VjY2VlZCBpbgo+
PiBjb21wbGV0aW5nIHRoZSBzd2l0Y2ggYmFjayB0byB0aGUga2VybmVsIGNvbnRleHQgKHZpYSBp
ZGxpbmcgdGhlCj4+IGVuZ2luZXMpLiBDdXJyZW50bHksIHdlIGRldGVjdCBpZiBhbiBlcnJvciBv
Y2N1cnMgd2hpbGUgd2Ugd2FpdCwgYnV0IHdlCj4+IGRvIG5vdCByZXBvcnQgb25lIGlmIGl0IG9j
Y3VycmVkIGJlZm9yZWhhbmQgKGFuZCB0aGUgc3RhdHVzIG9mIHRoZQo+PiBzd2l0Y2ggaXMgdW5k
ZWZpbmVkKS4gQ2hlY2sgdGhlIGN1cnJlbnQgdGVybWluYWxseSB3ZWRnZWQgc3RhdHVzIG9uCj4+
IGVudGVyaW5nIHRoZSB3YWl0LCBhbmQgcmVwb3J0IGl0IGFmdGVyIGZsdXNoaW5nIHRoZSByZXF1
ZXN0cywgYXMgaWYgaXQKPj4gaGFkIG9jY3VycmVkIGR1cmluZyBvdXIgb3duIHdhaXQuCj4KPiBC
dWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEw
ODI0Cj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgoKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
