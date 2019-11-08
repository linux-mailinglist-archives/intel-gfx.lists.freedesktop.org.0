Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DE3F41FC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 09:17:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C12A56F8A4;
	Fri,  8 Nov 2019 08:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 781026F89E;
 Fri,  8 Nov 2019 08:17:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19124236-1500050 for multiple; Fri, 08 Nov 2019 08:17:01 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAK7LNAR_gmkpHojSm-3vooqFqJZUan7ut83MHbxp=4bNTrmuig@mail.gmail.com>
References: <20191108051356.29980-1-yamada.masahiro@socionext.com>
 <20191108051356.29980-2-yamada.masahiro@socionext.com>
 <CAK7LNAR_gmkpHojSm-3vooqFqJZUan7ut83MHbxp=4bNTrmuig@mail.gmail.com>
Message-ID: <157320101945.9461.3647299632092094814@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 08:16:59 +0000
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: make more headers
 self-contained
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>, David Airlie <airlied@linux.ie>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Auld <matthew.auld@intel.com>, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXNhaGlybyBZYW1hZGEgKDIwMTktMTEtMDggMDU6NDI6MzMpCj4gT24gRnJpLCBO
b3YgOCwgMjAxOSBhdCAyOjE1IFBNIE1hc2FoaXJvIFlhbWFkYQo+IDx5YW1hZGEubWFzYWhpcm9A
c29jaW9uZXh0LmNvbT4gd3JvdGU6Cj4gPgo+ID4gVGhlIGhlYWRlcnMgaW4gdGhlIGdlbS9zZWxm
dGVzdHMvLCBndC9zZWxmdGVzdHMsIGd2dC8sIHNlbGZ0ZXN0cy8KPiA+IGRpcmVjdG9yaWVzIGhh
dmUgbmV2ZXIgYmVlbiBjb21waWxlLXRlc3RlZCwgYnV0IGl0IHdvdWxkIGJlIHBvc3NpYmxlCj4g
PiB0byBtYWtlIHRoZW0gc2VsZi1jb250YWluZWQuCj4gPgo+ID4gVGhpcyBjb21taXQgb25seSBh
ZGRyZXNzZXMgbWlzc2luZyA8bGludXgvdHlwZXMuaD4gYW5kIGZvcndhcmQKPiA+IHN0cnVjdCBk
ZWNsYXJhdGlvbnMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRhIDx5YW1h
ZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KPiA+IC0tLQo+IAo+IEkgY29uZmlybWVkIHRoaXMg
cGF0Y2ggaXMgYXBwbGljYWJsZSB0byBuZXh0LTIwMTkxMTA3Cj4gYnV0IENJIGZhaWxzIHRvIGFw
cGx5IGl0LgoKQ0kgaXMgYWhlYWQgb2YgLW5leHQsIGV2ZW4gbW9yZSBzbyBiZWZvcmUgdGhlIG1l
cmdlIHdpbmRvdyB3aGVuIG91ciBNUgp0cmVlcyAodXNlZCBmb3IgLW5leHQpIGFyZSBmcm96ZW4s
IGJ1dCBkZXZlbG9wbWVudCBjb250aW51ZXMuCiAKPiBXaGljaCBicmFuY2ggc2hvdWxkIEkgYmFz
ZSBteSBwYXRjaCBvbj8KCmh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcvZHJtLXRpcC8gI2Ry
bS10aXAKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
