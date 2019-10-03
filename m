Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D59CAF83
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D613E6EA73;
	Thu,  3 Oct 2019 19:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BCAE6EA73
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:47:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18714669-1500050 for multiple; Thu, 03 Oct 2019 20:46:59 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191003192444.10113-7-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
 <20191003192444.10113-7-matthew.auld@intel.com>
Message-ID: <157013201654.12925.2587590785917814753@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 03 Oct 2019 20:46:56 +0100
Subject: Re: [Intel-gfx] [PATCH v2 06/22] drm/i915: support creating LMEM
 objects
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMTAtMDMgMjA6MjQ6MjgpCj4gK2NvbnN0IHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0X29wcyBpOTE1X2dlbV9sbWVtX29ial9vcHMgPSB7Cj4gKyAg
ICAgICAuZ2V0X3BhZ2VzID0gaTkxNV9nZW1fb2JqZWN0X2dldF9wYWdlc19idWRkeSwKPiArICAg
ICAgIC5wdXRfcGFnZXMgPSBpOTE1X2dlbV9vYmplY3RfcHV0X3BhZ2VzX2J1ZGR5LAo+ICsgICAg
ICAgLnJlbGVhc2UgPSBpOTE1X2dlbV9vYmplY3RfcmVsZWFzZV9tZW1vcnlfcmVnaW9uLAo+ICt9
Owo+ICsKPiArYm9vbCBpOTE1X2dlbV9vYmplY3RfaXNfbG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqb2JqKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAq
cmVnaW9uID0gb2JqLT5tbS5yZWdpb247Cj4gKwo+ICsgICAgICAgcmV0dXJuIHJlZ2lvbiAmJiBy
ZWdpb24tPnR5cGUgPT0gSU5URUxfTE1FTTsKCkhtbSwgYSBtb3JlIGNsYXNzaWMgYXBwcm9hY2gg
d291bGQgYmUKCglyZXR1cm4gb2JqLT5vcHMgPT0gJmxtZW1fb2JqX29wczsKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
