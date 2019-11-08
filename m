Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCF9F4408
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 10:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E766F8F4;
	Fri,  8 Nov 2019 09:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CA636F8F4;
 Fri,  8 Nov 2019 09:56:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19125519-1500050 for multiple; Fri, 08 Nov 2019 09:55:58 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191108094142.25942-1-yamada.masahiro@socionext.com>
References: <20191108094142.25942-1-yamada.masahiro@socionext.com>
Message-ID: <157320695719.9461.4158455736119200291@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 09:55:57 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: make more headers
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Matthew Auld <matthew.auld@intel.com>, intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXNhaGlybyBZYW1hZGEgKDIwMTktMTEtMDggMDk6NDE6NDIpCj4gVGhlIGhlYWRl
cnMgaW4gdGhlIGdlbS9zZWxmdGVzdHMvLCBndC9zZWxmdGVzdHMsIGd2dC8sIHNlbGZ0ZXN0cy8K
PiBkaXJlY3RvcmllcyBoYXZlIG5ldmVyIGJlZW4gY29tcGlsZS10ZXN0ZWQsIGJ1dCBpdCB3b3Vs
ZCBiZSBwb3NzaWJsZQo+IHRvIG1ha2UgdGhlbSBzZWxmLWNvbnRhaW5lZC4KPiAKPiBUaGlzIGNv
bW1pdCBvbmx5IGFkZHJlc3NlcyBtaXNzaW5nIDxsaW51eC90eXBlcy5oPiBhbmQgZm9yd2FyZAo+
IHN0cnVjdCBkZWNsYXJhdGlvbnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFzYWhpcm8gWWFtYWRh
IDx5YW1hZGEubWFzYWhpcm9Ac29jaW9uZXh0LmNvbT4KClRoYW5rcyBhIGxvdCBmb3IgZG9pbmcg
dGhpcywKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
