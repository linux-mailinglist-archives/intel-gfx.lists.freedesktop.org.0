Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B8EB56E8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 22:27:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F29406ED4A;
	Tue, 17 Sep 2019 20:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DC6F6ED4A
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 20:26:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18524601-1500050 for multiple; Tue, 17 Sep 2019 21:26:25 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <156875178183.5729.5406649815912590129@skylake-alporthouse-com>
References: <20190917194746.26710-1-chris@chris-wilson.co.uk>
 <156875178183.5729.5406649815912590129@skylake-alporthouse-com>
Message-ID: <156875198111.5729.17732213981323794355@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 17 Sep 2019 21:26:21 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend Haswell GT1 PSMI
 workaround to all
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDktMTcgMjE6MjM6MDEpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMDktMTcgMjA6NDc6NDYpCj4gPiBBIGZldyB0aW1lcyBpbiBDSSwgd2Ug
aGF2ZSBkZXRlY3RlZCBhIEdQVSBoYW5nIG9uIG91ciBIYXN3ZWxsIEdUMgo+ID4gc3lzdGVtcyB3
aXRoIHRoZSBjaGFyYWN0ZXJpc3RpYyBJUEVIUiBvZiAweDc4MGMwMDAwLiBXaGVuIHRoZSBQU01J
IHcvYQo+ID4gd2FzIGZpcnN0IGludHJvZHVjdGVkLCBpdCB3YXMgYXBwbGllZCB0byBhbGwgSGFz
d2VsbCwgYnV0IGxhdGVyIG9uIHdlCj4gPiBmb3VuZCBhbiBlcnJhdHVtIHRoYXQgc3VwcG9zZWRs
eSByZXN0cmljdGVkIHRoZSBpc3N1ZSB0byBHVDEgYW5kIHNvCj4gPiBjb25zdHJhaW5lZCBpdCBv
bmx5IGJlIGFwcGxpZWQgb24gR1QxLiBUaGF0IG1heSBoYXZlIGJlZW4gYSBtaXN0YWtlLi4uCj4g
Cj4gU29tZXRoaW5nIGVsc2UgdG8gYmVhciBpbiBtaW5kIGFib3V0IHdoeSB0aGlzIGlzIHNob3dp
bmcgdXAgbm93LCBpcyB0aGF0Cj4gdGhlIGVuYWJsaW5nIG9mIGlvbW11IG9uIHRoZXNlIG1hY2hp
bmVzLiBJdCdzIHRoZSBsYXN0IGluc3RydWN0aW9uIGluCj4gdGhlIGNvbnRleHQgaW1hZ2UuLi4g
Q291bGQgd2UgbmVlZCB0byBleHBhbmQgdGhlIGNvbnRleHQ/CgpGd2l3LCB3ZSBzYXkgdGhlIG1h
eGltdW0gc2l6ZSBmb3IgdGhlIGhhc3dlbGwgY29udGV4dCBpcyA3MDI3MCwgd2hpY2gKZXZlbiBl
eHBhbmRpbmcgZm9yIHByZWZldGNoIGlzIHdlbGwgaW5zaWRlIHRoZSBuZXh0IHBhZ2UgYm91bmRh
cnkgb2YKNzM3MjguIEZ1cnRoZXJtb3JlLCBubyBETUFSIGZhdWx0cy4gVGhlIGNvaW5jaWRlbmNl
IG1heSBiZSBhIHRpbWluZwphcnRpZmFjdCBvZiB0aGUgaW9tbXUgaW5kaXJlY3Rpb24/IE9yIGp1
c3QgYSBtZXJlIGNvaW5jaWRlbmNlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
