Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 768D46D623
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 22:58:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D5A688B2B;
	Thu, 18 Jul 2019 20:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E46888B2B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 20:58:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17410007-1500050 for multiple; Thu, 18 Jul 2019 21:58:18 +0100
MIME-Version: 1.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718204912.24149-1-rodrigo.vivi@intel.com>
References: <20190718204912.24149-1-rodrigo.vivi@intel.com>
Message-ID: <156348349623.6999.4776587555290794879@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 18 Jul 2019 21:58:16 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: We don't need display's
 suspend/resume operations when !HAS_DISPLAY
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMDctMTggMjE6NDk6MTIpCj4gK3ZvaWQgaW50ZWxf
ZGlzcGxheV9wb3dlcl9yZXN1bWVfZWFybHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4gK3sKPiArICAgICAgIGlmICghSEFTX0RJU1BMQVkoaTkxNSkpCj4gKyAgICAgICAgICAgICAg
IHJldHVybjsKPiArCj4gKyAgICAgICBpZiAoSU5URUxfR0VOKGk5MTUpID49IDExIHx8IElTX0dF
TjlfTFAoaTkxNSkpIHsKPiArICAgICAgICAgICAgICAgZ2VuOV9zYW5pdGl6ZV9kY19zdGF0ZShp
OTE1KTsKCkFyZSB5b3Ugc3VyZSB0aGF0IHdoYXRldmVyIHN0YXRlIHlvdSBhcmUgcmVzdW1pbmcg
ZnJvbSBhZ3JlZXMgd2l0aCB5b3VyCm5vdGlvbiBvZiAhZGlzcGxheT8gVGhlIHNhbml0aXplIHJv
dXRpbmVzIGFyZSBzdXBwb3NlZCB0byBiZSBhYm91dApjbGVhbmluZyB1cCBhZnRlciB0aGlyZCBw
YXJ0aWVzIHdobyBkb24ndCBwbGF5IGJ5IHRoZSBzYW1lIHJ1bGVzLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
