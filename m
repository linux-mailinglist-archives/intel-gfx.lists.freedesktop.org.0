Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8D7B3C9B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 16:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DE256E99B;
	Mon, 16 Sep 2019 14:33:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E196E99B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 14:33:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18508083-1500050 for multiple; Mon, 16 Sep 2019 15:33:16 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>,
 =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190916142740.GG1208@intel.com>
References: <20190916092901.31440-1-jani.nikula@intel.com>
 <156864044362.5729.13317954023510986629@skylake-alporthouse-com>
 <87impsxrop.fsf@intel.com> <20190916142740.GG1208@intel.com>
Message-ID: <156864439445.5729.6271296069309317283@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 16 Sep 2019 15:33:14 +0100
Subject: Re: [Intel-gfx] [RESEND] drm/i915: stop conflating HAS_DISPLAY()
 and disabled display
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

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTYgMTU6Mjc6NDApCj4gT24gTW9uLCBT
ZXAgMTYsIDIwMTkgYXQgMDU6MDU6MTBQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gPiBU
aGUgbWFpbiBnb2FsIGhlcmUgKGluIHRoaXMgc3BlY2lmaWMgcGF0Y2gpIGlzIHRvIGRlY291cGxl
IGRpc2FibGVkIGJ1dAo+ID4gZXhpc3RpbmcgZGlzcGxheSBmcm9tIG5vbi1leGlzdGluZyBkaXNw
bGF5LiBUaGF0IGxldHMgdXMgZGV2ZWxvcCB0aGUgdHdvCj4gPiBjYXNlcyBpbmRlcGVuZGVudGx5
LCBhbmQgSSBhY2tub3dsZWRnZSBJIG1heSBoYXZlIGJlZW4gc2ltcGxlIG1pbmRlZAo+ID4gZW5v
dWdoIGF0IHNvbWUgcG9pbnQgdG8gYmVsaWV2ZSB0aGV5IGNvdWxkIGJlIHB1dCBpbiB0aGUgc2Ft
ZSBidWNrZXQuCj4gCj4gV2hhdCdzIHRoZSBhY3R1YWwgdXNlIGNhc2UgZm9yIHRoZSAiZGlzYWJs
ZWQgYnV0IGV4aXN0aW5nIGRpc3BsYXkiPwoKVGhlcmUgYXJlIDIgcmVhc29ucyB3aHkgSSBoYXZl
IGl0IGVuYWJsZWQgZm9yIHRoZSBsaXZlIGdlbSBzZWxmdGVzdHMuIE5vdApzZXR0aW5nIHVwIHRo
ZSBkaXNwbGF5IG1ha2VzIG1vZHVsZSByZWxvYWQgZmFzdGVyLCBhbmQgdGhlIG90aGVyIHJlYXNv
bgppcyB0aGF0IEkgaG9wZWQgdG8gYXZvaWQgYW55IHNwdXJpb3VzIGludGVyYWN0aW9ucyAocmFu
ZG9tIGhvdHBsdWcKZXZlbnRzKSBpbiB0aGUgbWlkZGxlIG9mIHRoZSBzdHJlc3MgdGVzdHMuCgpU
aGUgbGF0dGVyIHVzZWNhc2UgSSB3b3VsZCBzdWdnZXN0IGFwcGxpZXMgdG8gaGVhZGxlc3Mgc2Vy
dmVycywgd2hlcmUgd2UKd2FudCB0byBtaW5pbWlzZSByYW5kb20gZXZlbnRzLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
