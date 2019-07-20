Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 833916EF1D
	for <lists+intel-gfx@lfdr.de>; Sat, 20 Jul 2019 12:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E6136E892;
	Sat, 20 Jul 2019 10:49:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E0D6E892
 for <intel-gfx@lists.freedesktop.org>; Sat, 20 Jul 2019 10:49:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17452576-1500050 for multiple; Sat, 20 Jul 2019 11:49:23 +0100
MIME-Version: 1.0
To: Jason Ekstrand <jason@jlekstrand.net>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAOFGe94HiMuuauogvemDhfaoOD_jkracT4bJX6q28L32jUYYCA@mail.gmail.com>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-3-chris@chris-wilson.co.uk>
 <29f36349-0c1a-3af6-d707-632685f80929@intel.com>
 <156353167467.24728.15340645557688634881@skylake-alporthouse-com>
 <CAOFGe94HiMuuauogvemDhfaoOD_jkracT4bJX6q28L32jUYYCA@mail.gmail.com>
Message-ID: <156361976192.24728.12555142067859007832@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 20 Jul 2019 11:49:21 +0100
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Flush all user surfaces prior
 to first use
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYXNvbiBFa3N0cmFuZCAoMjAxOS0wNy0xOSAyMzo1NTowMykKPiBKdXN0IHRvIGJl
IGNsZWFyLCBpcyB0aGlzIGp1c3QgYWRkaW5nIGEgQ0xGTFVTSCBvciBpcyBpdCBhY3R1YWxseSBj
aGFuZ2luZyB0aGUKPiBkZWZhdWx0IGNhY2hpbmcgc3RhdGUgb2YgYnVmZmVycyBmcm9tIENBQ0hF
RCB0byBOT05FP8KgIElmIGl0J3MgYWN0dWFsbHkKPiBjaGFuZ2luZyB0aGUgZGVmYXVsdCBzdGF0
ZSwgdGhhdCdzIGdvaW5nIHRvIGJyZWFrIHVzZXJzcGFjZSBiYWRseS4KCldoYXQgdXNlcnNwYWNl
IGlzIGFjdHVhbGx5IGJyb2tlbj8gWW91IGRvbid0IHVzZSBzZXQtZG9tYWluLCBwcmVmZXJyaW5n
CnRvIGRvIHlvdXIgb3duIGNhY2hlIG1hbmFnZW1lbnQgYW5kIE1PQ1M7IHdoZXJlIHlvdSBkbyBk
ZWZhdWx0IHRvIFBURSBpcwp3aGVyZSB3ZSBleHBlY3QgdGhlIGJ1ZmZlcnMgdG8gYmUgdW5jYWNo
ZWQgYW55d2F5LiBJbiBlZmZlY3QsIGl0IGlzIG9ubHkKc3dhcCBpbiBvZiB0aGUgb2JqZWN0cyB0
aGF0IHRoZSBrZXJuZWwgd2lsbCBpbnNlcnQgYW4gZXh0cmEgY2xmbHVzaCBmb3IKeW91LgoKSSdt
IGxvb2tpbmcgZm9yIHRoZSBuZWdhdGl2ZSBpbXBhY3Qgb2YgdGhpcywgYW5kIG5vdCBmaW5kaW5n
IG11Y2gKcmVwZXJjdXNzaW9uIGF0IGFsbC4gQXQgdGhlIGVuZCBvZiB0aGUgZGF5LCB3ZSBoYXZl
IG5vIGNob2ljZSBidXQgdG8KY2xvc2Ugc3VjaCBhIGhvbGU7IHRoZSBvbmx5IHF1ZXN0aW9uIGlz
IGhvdyBtdWNoIGxlZXdheSB0byBnaXZlIGFuZCBob3cKdG8gbWl0aWdhdGUgc3VjaCBpc3N1ZXMg
aW4gZnV0dXJlIGludGVyZmFjZXMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
