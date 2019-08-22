Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0600598DFF
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 10:42:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 260716EAAF;
	Thu, 22 Aug 2019 08:42:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 904966E48A
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 08:42:51 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id k18so4753217otr.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 01:42:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NfCKuFdEeNBAgpgY3GQU9evNY2kKtJpvRWsNwL+v9LE=;
 b=fMYzA5EzDzhSAWKOj12oYDLmQvWSCcgES57Y+f7DNuBTnEK9M6k8exZBNVhw7MndvD
 YBD74Af/x1qXncdrizAfAzW3XWiG8pRWXPlBEArll0j57A/sgHpunKR54cmrNDCQjo7J
 uOTcyWJq/CMH+Dzf41sowHgEowegKPbwQmdxPj+p6dwrm5XNezl3HtYrdUHUzbdQdLMn
 gQGzEl0w2VExa7HOb6wHAHc6Ix0T+plbj/Eyec2cU0Epqn7UIEITRDZ2MtWZsNWVtbZV
 0BpGHAsa2kWtIG+xja4qQqqTKKA0SVCIQSAyrrXWZF5odSQmm2HHaOG/heSzxOevnXca
 fABQ==
X-Gm-Message-State: APjAAAUQk4kIXB9e4MK1lx4rQpnXbUHGhObgM6z3rd6wVqIdz/VoNBQz
 vKKF3mMIzyous9RYNX/M3K1RvdnlM0iw0D9Qr8/1qHx2/r4=
X-Google-Smtp-Source: APXvYqxpz8kgbP+ugs1KUhnBtoipkM40G0JFM2B8mwDRWFu9+c1XE/VWtgoMVi8Vtvm95XZX33AsAYp4bMyumd0+MLk=
X-Received: by 2002:a9d:7cc9:: with SMTP id r9mr31457513otn.188.1566463370802; 
 Thu, 22 Aug 2019 01:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190820081902.24815-1-daniel.vetter@ffwll.ch>
 <20190820081902.24815-5-daniel.vetter@ffwll.ch>
 <20190820133418.GG29246@ziepe.ca>
 <20190820151810.GG11147@phenom.ffwll.local>
 <20190821154151.GK11147@phenom.ffwll.local>
 <20190821161635.GC8653@ziepe.ca>
In-Reply-To: <20190821161635.GC8653@ziepe.ca>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 22 Aug 2019 10:42:39 +0200
Message-ID: <CAKMK7uERsmgFqDVHMCWs=4s_3fHM0eRr7MV6A8Mdv7xVouyxJw@mail.gmail.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=NfCKuFdEeNBAgpgY3GQU9evNY2kKtJpvRWsNwL+v9LE=;
 b=cbZ/eIqa3UOnq5kZcw9ViWpQlwY6IoHQWwYFtH4j5KLaJRU0py33AbPiPiAJVlbc/Y
 BKVPPwYWmhbkGDR1ys452Hfk/wY38q87dT/NiRbDk43nh9KoZQCtcGVi2a+huvT45BW1
 DTkTcnHBZzI/xbpSr6wkE8INN5L/ml6Sq3+ak=
Subject: Re: [Intel-gfx] [PATCH 4/4] mm,
 notifier: Catch sleeping/blocking for !blockable
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
Cc: Michal Hocko <mhocko@suse.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Linux MM <linux-mm@kvack.org>,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMTA6MTYgQU0gSmFzb24gR3VudGhvcnBlIDxqZ2dAemll
cGUuY2E+IHdyb3RlOgo+Cj4gT24gV2VkLCBBdWcgMjEsIDIwMTkgYXQgMDU6NDE6NTFQTSArMDIw
MCwgRGFuaWVsIFZldHRlciB3cm90ZToKPgo+ID4gPiBIbSwgSSB0aG91Z2h0IHRoZSBwYWdlIHRh
YmxlIGxvY2tzIHdlJ3JlIGhvbGRpbmcgdGhlcmUgYWxyZWFkeSBwcmV2ZW50IGFueQo+ID4gPiBz
bGVlcGluZywgc28gd291bGQgYmUgcmVkdW5kYW50PyBCdXQgcmVhZGluZyB0aHJvdWdoIGNvZGUg
SSB0aGluayB0aGF0J3MKPiA+ID4gbm90IGd1YXJhbnRlZWQsIHNvIHllYWggbWFrZXMgc2Vuc2Ug
dG8gYWRkIGl0IGZvciBpbnZhbGlkYXRlX3JhbmdlX2VuZAo+ID4gPiB0b28uIEknbGwgcmVzcGlu
IG9uY2UgSSBoYXZlIHRoZSBhY2svbmFjayBmcm9tIHNjaGVkdWxlciBwZW9wbGUuCj4gPgo+ID4g
U28gSSBzdGFydGVkIHRvIGxvb2sgaW50byB0aGlzLCBhbmQgSSdtIGEgYml0IGNvbmZ1c2VkLiBU
aGVyZSdzIG5vCj4gPiBfbm9uYmxvY2sgdmVyc2lvbiBvZiB0aGlzLCBzbyBkb2VzIHRoaXMgbWVh
bnMgYmxvY2tpbmcgaXMgbmV2ZXIgYWxsb3dlZCwKPiA+IG9yIGFsd2F5cyBhbGxvd2VkPwo+Cj4g
UkRNQSBoYXMgYSBtdXRleDoKPgo+IGliX3VtZW1fbm90aWZpZXJfaW52YWxpZGF0ZV9yYW5nZV9l
bmQKPiAgIHJidF9pYl91bWVtX2Zvcl9lYWNoX2luX3JhbmdlCj4gICAgaW52YWxpZGF0ZV9yYW5n
ZV9zdGFydF90cmFtcG9saW5lCj4gICAgIGliX3VtZW1fbm90aWZpZXJfZW5kX2FjY291bnQKPiAg
ICAgICBtdXRleF9sb2NrKCZ1bWVtX29kcC0+dW1lbV9tdXRleCk7Cj4KPiBJJ20gd29ya2luZyB0
byBkZWxldGUgdGhpcyBwYXRoIHRob3VnaCEKPgo+IG5vbmJsb2NraW5nIG9yIG5vdCBmb2xsb3dz
IHRoZSBzdGFydCwgdGhlIHNhbWUgZmxhZyBnZXRzIHBsYWNlZCBpbnRvCj4gdGhlIG1tdV9ub3Rp
Zmllcl9yYW5nZSBzdHJ1Y3QgcGFzc2VkIHRvIGVuZC4KCk9rLCBtYWtlcyBzZW5zZS4KCkkgZ3Vl
c3MgdGhhdCBhbHNvIG1lYW5zIHRoZSBtaWdodF9zbGVlcCAoSSBzdGFydGVkIG9uIHRoYXQpIGlu
CmludmFsaWRhdGVfcmFuZ2VfZW5kIGFsc28gbmVlZHMgdG8gYmUgY29uZGl0aW9uYWw/IE9yIG5v
dCBib3RoZXIgd2l0aAphIG1pZ2h0X3NsZWVwIGluIGludmFsaWRhdGVfcmFuZ2VfZW5kIHNpbmNl
IHlvdSdyZSB3b3JraW5nIG9uIHJlbW92aW5nCnRoZSBsYXN0IHNsZWVwIGluIHRoZXJlPwoKPiA+
IEZyb20gYSBxdWljayBsb29rIHRocm91Z2ggaW1wbGVtZW50YXRpb25zIEkndmUgb25seSBzZWVu
IHNwaW5sb2NrcywgYW5kCj4gPiBvbmUgdXBfcmVhZC4gU28gSSBndWVzcyBJIHNob3VsZCB3cmFw
ZSB0aGlzIGNhbGxiYWNrIGluIHNvbWUgdW5jb25kaXRpb25hbAo+ID4gbm9uX2Jsb2NrX3N0YXJ0
L2VuZCwgYnV0IEknbSBub3Qgc3VyZS4KPgo+IEZvciBub3csIHdlIHNob3VsZCBrZWVwIGl0IHRo
ZSBzYW1lIGFzIHN0YXJ0LCBjb25kaXRpb25hbGx5IGJsb2NraW5nLgo+Cj4gSG9wZWZ1bGx5IGJl
Zm9yZSBMUEMgSSBjYW4gc2VuZCBhIFJGQyBzZXJpZXMgdGhhdCBlbGltaW5hdGVzIG1vc3QKPiBp
bnZhbGlkYXRlX3JhbmdlX2VuZCB1c2VycyBpbiBmYXZvciBvZiBjb21tb24gbG9ja2luZy4uCgpU
aGFua3MsIERhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
