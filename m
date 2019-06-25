Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 372905581A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 21:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141766E0AB;
	Tue, 25 Jun 2019 19:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 810AE6E0AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 19:47:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17022943-1500050 for multiple; Tue, 25 Jun 2019 20:47:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: "Robert M. Fosha" <robert.m.fosha@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190621200940.32665-1-robert.m.fosha@intel.com>
 <20190625164107.21512-1-robert.m.fosha@intel.com>
 <op.z3ybp5u5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z3ybp5u5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156149207077.2637.18088418622690703426@skylake-alporthouse-com>
Date: Tue, 25 Jun 2019 20:47:50 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/guc: Add debug capture of GuC
 exception
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA2LTI1IDE4OjQ3OjU1KQo+IE9uIFR1ZSwg
MjUgSnVuIDIwMTkgMTg6NDE6MDcgKzAyMDAsIFJvYmVydCBNLiBGb3NoYSAgCj4gPHJvYmVydC5t
LmZvc2hhQGludGVsLmNvbT4gd3JvdGU6Cj4gCj4gPiBEZXRlY3QgR3VDIGZpcm13YXJlIGxvYWQg
ZmFpbHVyZSBkdWUgdG8gYW4gZXhjZXB0aW9uIGR1cmluZyBleGVjdXRpb24KPiA+IGluIEd1QyBm
aXJtd2FyZS4gT3V0cHV0IHRoZSBHdUMgRUlQIHdoZXJlIGV4Y2VwdGlvbiBvY2N1cnJlZCB0byBk
bWVzZwo+ID4gZm9yIEd1QyBkZWJ1ZyBpbmZvcm1hdGlvbi4KPiA+Cj4gPiB2MjogY29ycmVjdCB0
eXBvcywgY2hhbmdlIGRlYnVnIG1lc3NhZ2UgYW5kIGVycm9yIGNvZGUgcmV0dXJuZWQgZm9yCj4g
PiBHdUMgZXhjZXB0aW9uIChNaWNoYWwpCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0u
IEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRlbC5jb20+Cj4gPiBDYzogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiA+IENjOiBNaWNoYWwg
V2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAKPiBsZXQncyBob3BlIGl0
IHdpbGwgbmV2ZXIgc2hvdyB1cAo+IAo+IFJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KCkFuZCBwdXNoZWQsIGJlY2F1c2Ugc29tZSBwZW9w
bGUganVzdCBsaWtlIHRvIHdhdGNoIHRoZSB3b3JsZCBidXJuLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
