Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CD4DC428
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 13:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 648CE6EB22;
	Fri, 18 Oct 2019 11:44:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17EEE6EB22
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 11:44:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18881520-1500050 for multiple; Fri, 18 Oct 2019 12:44:24 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191018104450.19100-3-matthew.auld@intel.com>
References: <20191018104450.19100-1-matthew.auld@intel.com>
 <20191018104450.19100-3-matthew.auld@intel.com>
Message-ID: <157139906210.10597.1998428401475041917@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 18 Oct 2019 12:44:22 +0100
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915: treat stolen as a region
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMTggMTE6NDQ6NTApCj4gQ29udmVydCBzdG9s
ZW4gbWVtb3J5IG92ZXIgdG8gYSByZWdpb24gb2JqZWN0LiBTdGlsbCBsZWF2ZXMgb3BlbiB0aGUK
PiBxdWVzdGlvbiB3aXRoIHdoYXQgdG8gZG8gd2l0aCBwcmUtYWxsb2NhdGVkIG9iamVjdHMuLi4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+
Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4K
PiBDYzogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgo+
IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCkJs
YXN0LiBJIGdvdCBjb25mdXNlZCBieSBwYXRjaHdvcmsgYW5kIHB1c2hlZCB0aGUgd3Jvbmcgc2Vy
aWVzLiA6KApPaCB3ZWxsLCBteSBhcG9sb2dpZXMgZm9yIG1lc3NpbmcgdXAgdGhlIGZsb3cuCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
