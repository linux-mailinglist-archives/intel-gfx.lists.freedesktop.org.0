Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2119D587
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 20:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AAB6E288;
	Mon, 26 Aug 2019 18:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E9416E288
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 18:10:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18269089-1500050 for multiple; Mon, 26 Aug 2019 19:10:05 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190824002022.27636-1-daniele.ceraolospurio@intel.com>
 <156663686100.4019.14965894015444211333@skylake-alporthouse-com>
 <5d107937-9939-a3b0-945f-820f4db344ea@intel.com>
In-Reply-To: <5d107937-9939-a3b0-945f-820f4db344ea@intel.com>
Message-ID: <156684300251.15406.2123066162667016551@skylake-alporthouse-com>
Date: Mon, 26 Aug 2019 19:10:02 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use a separate context for gpu
 relocs
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA4LTI2IDE4OjU2OjUzKQo+IAo+
IAo+IE9uIDgvMjQvMjAxOSAxOjU0IEFNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBOb3RlIHRo
YXQgdGhpcyByZXF1aXJlcyB1cyB0byBmaXggdGhlIHRhZ2dpbmcgc28gdGhhdCB3ZSBkb24ndCBw
ZXJmb3JtIGEKPiA+IGxpdGUtcmVzdG9yZSBmcm9tIHRoZSByZWxvYyBpbnN0YW5jZSB0byB0aGUg
dXNlciBpbnN0YW5jZS4KPiAKPiBXaGF0J3Mgd3Jvbmcgd2l0aCBsaXRlLXJlc3RvcmluZyBpbiB0
aGlzIGNhc2U/IEl0J3Mgbm90IHNvbWV0aGluZyB3ZSAKPiBzdG9wIG5vdyBBRkFJQ1MuCgpJIGhh
dmUgcGF0Y2hlcyB0byBmaXggdGhlIHJlZ3Jlc3Npb24uIEJ1dCB0aGUgcXVlc3Rpb24gaXMgd2hl
dGhlciBvciBub3QKdGhlIHByZS1wYXJzZXIgaXMgaGFwcHkgdG8gY3Jvc3MgdGhlIGxpdGUtcmVz
dG9yZSBib3VuZGFyeS4gSWYgaXQgaXMgYQpsaWdodCBsaXRlLXJlc3RvcmUgYW5kIHRoZXJlIGlz
IG5vIGNhY2hlIGludmFsaWRhdGlvbi4uLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
