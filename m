Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D735C1594F9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 17:32:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7995E6EEC0;
	Tue, 11 Feb 2020 16:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBE96EEC0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 16:32:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20189713-1500050 for multiple; Tue, 11 Feb 2020 16:32:09 +0000
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200211162903.GW13686@intel.com>
References: <20200211161451.6867-1-jani.nikula@intel.com>
 <20200211162903.GW13686@intel.com>
Message-ID: <158143872800.3635.7449111689280637403@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 11 Feb 2020 16:32:08 +0000
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: move intel_csr.[ch] under
 display/
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMDItMTEgMTY6Mjk6MDMpCj4gT24gVHVlLCBG
ZWIgMTEsIDIwMjAgYXQgMDY6MTQ6NTBQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiBU
aGUgRE1DIGZpcm13YXJlIGlzIGFib3V0IGRpc3BsYXkuIE1vdmUgdGhlIGhhbmRsaW5nIHVuZGVy
IGRpc3BsYXkuIE5vCj4gPiBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gPiAKPiA+IENjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiAKPiBBY2tlZC1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBJJ20gYWxz
byB0aGlua2luZyBzL2Nzci9kbWMvIG1pZ3RoIGJlIGEgZ29vZCBpZGVhLiBJIGRvbid0IGV2ZW4K
PiByZW1lbWJlciB3aGF0ICJjc3IiIG1lYW5zLi4uCgpJJ3ZlIG5ldmVyIGtub3duIHdoYXQgY3Ny
IG1lYW50IDopCgpTaW5jZSBWaWxsZSB0b29rIHRoZSBhY2ssClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
