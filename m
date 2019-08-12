Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D01F389AAE
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3489989DFE;
	Mon, 12 Aug 2019 09:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD5C789DFE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17966854-1500050 for multiple; Mon, 12 Aug 2019 10:58:59 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-2-chris@chris-wilson.co.uk>
 <87y2zy7mfe.fsf@gaia.fi.intel.com>
In-Reply-To: <87y2zy7mfe.fsf@gaia.fi.intel.com>
Message-ID: <156560393718.2301.11983694987791177055@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 10:58:57 +0100
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/selftests: Prevent the
 timeslice expiring during suppression tests
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEwOjM5OjAxKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBXaGVuIHRlc3Rpbmcg
d2hldGhlciB3ZSBwcmV2ZW50IHN1cHByZXNzaW5nIHByZWVtcHRpb24sIGl0IGhlbHBzIHRvCj4g
PiBhdm9pZCBhIHRpbWUgc2xpY2UgZXhwaXJpbmcgcHJlbWF0dXJlbHkuCj4gPgo+IAo+IEkgZGlk
IGxvb2sgdGhlIHRlc3QgYW5kIGl0IGRvZXMgY2FsbCBzY2hlZHVsZSBvbiBpdCdzIG93bi4KPiAK
PiBTbyB3aGF0IHdlIHdhbnQgdG8gZG8gaXMgdG8gcG9zdHBvbmUgdGhlIGRlZmFjdG8gc2NoZWR1
bGUgdGljawo+IHByb3ZpZGVkIGJ5IGRyaXZlciBub3QgdG8gbWVzcyBvdXIgb3duIHNjaGVkdWxl
PyAod2hpY2ggd2UKPiB1c2UgdG8gY2hlY2sgdGhhdCBubyBwcmVlbXB0aW9uIGRvZXMgb2NjdXIg
d2l0aCBlcXVhbAo+IHByaW9yaXRpZXM/KQoKVGhlIHRlc3QgaXMgdHJ5aW5nIHRvIGxvb2sgYXQg
b3VyIG1lY2hhbmljcyB0byBlbnN1cmUgdGhhdCB3ZSBkb24ndApjYXVzZSBwcmVlbXB0aW9ucyB3
aGVyZSB3ZSBzaW1wbHkgcHV0IGJhY2sgdGhlIHNhbWUgcmVxdWVzdC4gQXMgc3VjaCwgd2UKaGF2
ZSBhIG1hcmtlciBpbiB0aGUgcHJlZW1wdGlvbiBjb2RlIHRoYXQgd2UgYXJlIHRyeWluZyB0byBh
dm9pZCwgYW5kCm11c3QgY29udHJvbCB0aGUgc2NoZWR1bGluZyB0byBleGNsdWRlIGFsbCBvdGhl
ciBldmVudHMgdGhhbiB0aGUgb25lIHdlCmFyZSBpbmplY3RpbmcuCgpUaGUgdGltZXNsaWNlIGNv
dWxkIGV4cGlyZSBhbmQgcmV2ZXJzZSBBLEIgKHRvIEIsQSkgc3VjaCB0aGF0IG91cgpwcm9tb3Rp
b24gb2YgQSBkb2VzIChjb3JyZWN0bHkpIGNhdXNlIGEgcHJlZW1wdGlvbiB0aGF0IHdlIGV4cGVj
dCBuZXZlcgp0byBuZWVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
