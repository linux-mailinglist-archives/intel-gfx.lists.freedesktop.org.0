Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A6D109F35
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 457766E182;
	Tue, 26 Nov 2019 13:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39ADE6E182
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:22:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19344407-1500050 for multiple; Tue, 26 Nov 2019 13:21:56 +0000
MIME-Version: 1.0
To: Ankit Navik <ankit.p.navik@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
References: <1574743899-17638-1-git-send-email-ankit.p.navik@intel.com>
 <1574743899-17638-4-git-send-email-ankit.p.navik@intel.com>
 <6b39bcc7-ac78-49ef-c1b1-3741458f548f@linux.intel.com>
 <157476657941.15944.5831614278996048894@skylake-alporthouse-com>
 <b3800d8f-d5cf-1dc4-4733-dbd9d7aa9248@linux.intel.com>
Message-ID: <157477450982.15944.11339107642008525313@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 26 Nov 2019 13:21:49 +0000
Subject: Re: [Intel-gfx] [PATCH v6 3/3] drm/i915: Predictive governor to
 control slice/subslice/eu
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
Cc: vipin.anand@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yNiAxMTozMToxNCkKPiAKPiBPbiAyNi8x
MS8yMDE5IDExOjA5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBbHNvIGdpdmVuIFR2cnRrbydz
IHN0YXRzLCB0aGlzIGNvdWxkIGFsbCBiZSBkb25lIGZyb20gdXNlcnNwYWNlIHdpdGggYW4KPiA+
IGV4dGVuZGVkIENPTlRFWFRfUEFSQU1fU1NFVSwgc28gd2h5IHdvdWxkIHdlIG5vdCBkbyBpdCB0
aGF0IHdheT8KPiAKPiBZb3UgbWVhbiBwYXRjaGluZyBhbmQgcmVjb21waWxpbmcgdXNlcnNwYWNl
PyBJIGRvbid0IHRoaW5rIHRoYXQgd291bGQgCj4gd29yayBmb3IgdGhlbS4KCk5vLiBJIHdhcyB0
aGlua2luZyBhYm91dCBzb21lIHByb29mLW9mLWNvbmNlcHQgdXNlcnNwYWNlIGRhZW1vbiB1c2lu
ZwpwZXItY29udGV4dCBzdGF0cyBhbmQgdHVuaW5nIGVhY2ggY29udGV4dCBmcm9tIGEgdGltZXIu
IEFsbW9zdCBleGFjdGx5CmFzIHByb3Bvc2VkIGhlcmUsIGJ1dCBpdCB3b3VsZCBiZSB2ZXJ5IG5p
Y2UgdmFsaWRhdGlvbiB0aGF0IG91ciBrZXJuZWwKQVBJIGFyZSBub3QgZ2V0dGluZyBpbiB0aGUg
d2F5IG9mIHVzZXJzcGFjZSBjcmVhdGl2aXR5LiA6KQoKQnV0IHdobyBhbSBJIHRvIHRhbGssIEkg
dGhpbmsgQyBpcyBhIHNjcmlwdGluZyBsYW5ndWFnZSA7KQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
