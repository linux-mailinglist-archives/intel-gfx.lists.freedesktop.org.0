Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD59ECAF87
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ECCD6EA70;
	Thu,  3 Oct 2019 19:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28096EA70
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:48:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714687-1500050 for multiple; Thu, 03 Oct 2019 20:48:36 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191003192444.10113-9-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-9-matthew.auld@intel.com>
Message-ID: <157013211311.12925.6295467715757750609@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 03 Oct 2019 20:48:33 +0100
Subject: Re: [Intel-gfx] [PATCH v2 08/22] drm/i915/lmem: support kernel
 mapping
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6MzApCj4gK3ZvaWQgX19pb21l
bSAqaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0
ICpvYmosCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5zaWdu
ZWQgbG9uZyBuLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVu
c2lnbmVkIGxvbmcgc2l6ZSkKPiArewo+ICsgICAgICAgcmVzb3VyY2Vfc2l6ZV90IG9mZnNldDsK
PiArCj4gKyAgICAgICBHRU1fQlVHX09OKCEob2JqLT5mbGFncyAmIEk5MTVfQk9fQUxMT0NfQ09O
VElHVU9VUykpOwoKCUdFTV9CVUdfT04oIWk5MTVfZ2VtX29iamVjdF9pc19jb250aWd1b3VzKG9i
aikpOwoKSnVzdCByZWFkcyBtb3JlIGNsZWFybHkgZm9yIG1lLiBNaWdodCBqdXN0IGJlIG1lLgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
