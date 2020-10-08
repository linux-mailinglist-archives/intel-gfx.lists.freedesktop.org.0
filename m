Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A0128724A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 12:12:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098DF6E12E;
	Thu,  8 Oct 2020 10:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60166E12E
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 10:12:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22655289-1500050 for multiple; Thu, 08 Oct 2020 11:12:38 +0100
MIME-Version: 1.0
In-Reply-To: <20201008100422.GI6112@intel.com>
References: <20201008095436.27743-1-chris@chris-wilson.co.uk>
 <20201008100422.GI6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Thu, 08 Oct 2020 11:12:37 +0100
Message-ID: <160215195782.27361.8014008642581322158@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Exclude low pages (128KiB) of
 stolen from use
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTAtMDggMTE6MDQ6MjIpCj4gT24gVGh1LCBP
Y3QgMDgsIDIwMjAgYXQgMTA6NTQ6MzZBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
VGhlIEdQVSBpcyB0cmFzaGluZyB0aGUgbG93IHBhZ2VzIG9mIGl0cyByZXNlcnZlZCBtZW1vcnkg
dXBvbiByZXNldC4gSWYKPiA+IHdlIGFyZSB1c2luZyB0aGlzIG1lbW9yeSBmb3IgcmluZ2J1ZmZl
cnMsIHRoZW4gd2Ugd2lsbCBkdXRpZnVsIHJlc3VibWl0Cj4gPiB0aGUgdHJhc2hlZCByaW5ncyBh
ZnRlciB0aGUgcmVzZXQgY2F1c2luZyBmdXJ0aGVyIHJlc2V0cywgYW5kIHdvcnNlLiBXZQo+ID4g
bXVzdCBleGNsdWRlIHRoaXMgcmFuZ2UgZnJvbSBvdXIgb3duIHVzZS4gVGhlIHZhbHVlIG9mIDEy
OEtpQiB3YXMgZm91bmQKPiA+IGJ5IGVtcGlyaWNhbCBtZWFzdXJlbWVudCBvbiBnZW45Lgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gPiAtLS0KPiA+IHYyIGNvbWVzIHdp
dGggYSBzZWxmdGVzdCB0byBzZWUgaG93IHdpZGVzcHJlYWQgdGhlIGlzc3VlIGlzCj4gCj4gRG8g
d2UgbmVlZCBzb21ldGhpbmcgdG8gbWFrZSBzdXJlIEZCQyBpc24ndCBzY3JpYmJsaW5nIGludG8K
PiBzdG9sZW4gZHVyaW5nIHRoZSB0ZXN0PwoKaWd0IHJ1bnMgdGhlIHRlc3RzIHdpdGggZGlzYWJs
ZV9kaXNwbGF5PTEsIHRoYXQgaXMgc3RpbGwgYmVpbmcgaG9ub3VyZWQKcmlnaHQ/CgpJIGRpZCB0
aGluayBhYm91dCBsb29raW5nIHVwIHRoZSBhZGRyZXNzIHRvIHNlZSBpZiB0aGUgZHJtX21tX25v
ZGUgaXMgaW4KdXNlIHRvIHRyeSBhbmQgZmlsdGVyIG91dCBzdWNoIHVzZXJzLiBGb3Igc3RhcnRl
cnMsIEkganVzdCB3YW50IHRvCmNvbmZpcm0gdGhhdCBDSSBpcyBzZWVpbmcgd2hhdCBJJ20gc2Vl
aW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
