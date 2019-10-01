Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A77C3679
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 15:58:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD776E7AD;
	Tue,  1 Oct 2019 13:58:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3926E7AD
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 13:57:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18680538-1500050 for multiple; Tue, 01 Oct 2019 14:57:32 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001134534.14747-3-janusz.krzysztofik@linux.intel.com>
References: <20191001134534.14747-1-janusz.krzysztofik@linux.intel.com>
 <20191001134534.14747-3-janusz.krzysztofik@linux.intel.com>
Message-ID: <156993824708.1880.2431212252491268454@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 14:57:27 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Rename "inject_load_failure"
 module parameter
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMDEgMTQ6NDU6MzQpCj4gQ29tbWl0
IGYyZGI1M2YxNGQzZCAoImRybS9pOTE1OiBSZXBsYWNlICJfbG9hZCIgd2l0aCAiX3Byb2JlIgo+
IGNvbnNlcXVlbnRseSIpIGRlbGliZXJhdGVseSBsZWZ0IHRoZSBuYW1lIG9mIHRoZSBtb2R1bGUg
cGFyYW1ldGVyCj4gdW5jaGFuZ2VkIGFzIHRoYXQgd291bGQgcmVxdWlyZSBhIGNvcnJlc3BvbmRp
bmcgY2hhbmdlIG9uIElHVCBzaXplLgo+IE5vdyBhcyB0aGUgSUdUIHNpZGUgY2hhbmdlIGhhcyBi
ZWVuIHN1Ym1pdHRlZCwgY29tcGxldGUgdGhlIHN3aXRjaCB0bwo+IHRoZSAicHJvYmUiIG5vbWVu
Y2xhdHVyZS4KPiAKPiBNYXkgYWZmZWN0IGN1c3RvbSB1c2VyIGFwcGxpY2F0aW9ucyB1dGlsaXpp
bmcgdGhlIG9sZCBuYW1lLgoKSXQncyBhbiB1bnNhZmUgbW9kcGFyYW0gdGhhdCBvbmx5IGlzIGNv
bXBpbGVkIGluIGZvciBkZWJ1Z2dpbmcsIHdpdGggbm8KbG9uZyB0ZXJtIGVmZmVjdCBhZnRlciBt
b2Rwcm9iZS4gVGhlcmUgYXJlIG5vIHVzZXIgYXBwbGljYXRpb25zIGZvcgp0aGlzLgotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
