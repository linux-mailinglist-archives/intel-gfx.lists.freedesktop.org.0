Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE5CD5F3C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A25589760;
	Mon, 14 Oct 2019 09:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2272789733
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:45:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18829229-1500050 for multiple; Mon, 14 Oct 2019 10:45:21 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191014092817.GA26556@intel.com>
References: <20191013203012.25208-1-chris@chris-wilson.co.uk>
 <20191014092817.GA26556@intel.com>
Message-ID: <157104631897.18859.10661106190188014271@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 14 Oct 2019 10:45:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Tweak virtual
 unsubmission
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTAtMTQgMTA6Mjg6MTgpCj4gT24gMjAxOS0xMC0x
MyBhdCAyMTozMDoxMiArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gU2luY2UgY29tbWl0
IGUyMTQ0NTAzYmYzYiAoImRybS9pOTE1OiBQcmV2ZW50IGJvbmRlZCByZXF1ZXN0cyBmcm9tCj4g
PiBvdmVydGFraW5nIGVhY2ggb3RoZXIgb24gcHJlZW1wdGlvbiIpIHdlIGhhdmUgcmVzdHJpY3Rl
ZCByZXF1ZXN0cyB0byBydW4KPiA+IG9uIHRoZWlyIGNob3NlbiBlbmdpbmUgYWNyb3NzIHByZWVt
cHRpb24gZXZlbnRzLiBXZSBjYW4gdGFrZSB0aGlzCj4gPiByZXN0cmljdGlvbiBpbnRvIGFjY291
bnQgdG8ga25vdyB0aGF0IHdlIHdpbGwgd2FudCB0byByZXN1Ym1pdCB0aG9zZQo+ID4gcmVxdWVz
dHMgb250byB0aGUgc2FtZSBwaHlzaWNhbCBlbmdpbmUsIGFuZCBzbyBjYW4gc2hvcnRjaXJjdWl0
IHRoZQo+ID4gdmlydHVhbCBlbmdpbmUgc2VsZWN0aW9uIHByb2Nlc3MgYW5kIGtlZXAgdGhlIHJl
cXVlc3Qgb24gdGhlIHNhbWUKPiA+IGVuZ2luZSBkdXJpbmcgdW53aW5kLgo+ID4gCj4gPiBSZWZl
cmVuY2VzOiBlMjE0NDUwM2JmM2IgKCJkcm0vaTkxNTogUHJldmVudCBib25kZWQgcmVxdWVzdHMg
ZnJvbSBvdmVydGFraW5nIGVhY2ggb3RoZXIgb24gcHJlZW1wdGlvbiIpCj4gQ2hyaXMsCj4gCj4g
QmFzZWQgb24gd2hhdCBpIHVuZGVyc3Rvb2QgaGVyZSwgY2hhbmdlIGxvb2tzIGdvb2QgdG8gbWUu
Cj4gCj4gSWYgaXQgaGVscHMsIHBsZWFzZSB1c2UKPiBSZXZpZXdlZC1ieTogUmFtbGluZ2FtIEMg
PHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+CgpXZWxjb21lIQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
