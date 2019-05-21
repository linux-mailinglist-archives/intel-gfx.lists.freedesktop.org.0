Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E0B24DAE
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 13:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D525D8930B;
	Tue, 21 May 2019 11:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 384F78930B;
 Tue, 21 May 2019 11:11:53 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BEF44AF61;
 Tue, 21 May 2019 11:11:51 +0000 (UTC)
Date: Tue, 21 May 2019 13:11:51 +0200
From: Michal Hocko <mhocko@suse.com>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20190521111151.GS32329@dhcp22.suse.cz>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
 <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] kernel.h: Add non_block_start/end()
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlIDIxLTA1LTE5IDIwOjA0OjM0LCBUZXRzdW8gSGFuZGEgd3JvdGU6Cj4gT24gMjAxOS8w
NS8yMSAxOTo1MSwgTWljaGFsIEhvY2tvIHdyb3RlOgo+ID4gT24gVHVlIDIxLTA1LTE5IDE5OjQ0
OjAxLCBUZXRzdW8gSGFuZGEgd3JvdGU6Cj4gPj4gT24gMjAxOS8wNS8yMSAxOTowNiwgRGFuaWVs
IFZldHRlciB3cm90ZToKPiA+Pj4gSW4gc29tZSBzcGVjaWFsIGNhc2VzIHdlIG11c3Qgbm90IGJs
b2NrLCBidXQgdGhlcmUncyBub3QgYQo+ID4+PiBzcGlubG9jaywgcHJlZW1wdC1vZmYsIGlycXMt
b2ZmIG9yIHNpbWlsYXIgY3JpdGljYWwgc2VjdGlvbiBhbHJlYWR5Cj4gPj4+IHRoYXQgYXJtcyB0
aGUgbWlnaHRfc2xlZXAoKSBkZWJ1ZyBjaGVja3MuIEFkZCBhIG5vbl9ibG9ja19zdGFydC9lbmQo
KQo+ID4+PiBwYWlyIHRvIGFubm90YXRlIHRoZXNlLgo+ID4+Pgo+ID4+PiBUaGlzIHdpbGwgYmUg
dXNlZCBpbiB0aGUgb29tIHBhdGhzIG9mIG1tdS1ub3RpZmllcnMsIHdoZXJlIGJsb2NraW5nIGlz
Cj4gPj4+IG5vdCBhbGxvd2VkIHRvIG1ha2Ugc3VyZSB0aGVyZSdzIGZvcndhcmQgcHJvZ3Jlc3Mu
IFF1b3RpbmcgTWljaGFsOgo+ID4+Pgo+ID4+PiAiVGhlIG5vdGlmaWVyIGlzIGNhbGxlZCBmcm9t
IHF1aXRlIGEgcmVzdHJpY3RlZCBjb250ZXh0IC0gb29tX3JlYXBlciAtCj4gPj4+IHdoaWNoIHNo
b3VsZG4ndCBkZXBlbmQgb24gYW55IGxvY2tzIG9yIHNsZWVwYWJsZSBjb25kaXRpb25hbHMuIFRo
ZSBjb2RlCj4gPj4+IHNob3VsZCBiZSBzd2lmdCBhcyB3ZWxsIGJ1dCB3ZSBtb3N0bHkgZG8gY2Fy
ZSBhYm91dCBpdCB0byBtYWtlIGEgZm9yd2FyZAo+ID4+PiBwcm9ncmVzcy4gQ2hlY2tpbmcgZm9y
IHNsZWVwYWJsZSBjb250ZXh0IGlzIHRoZSBiZXN0IHRoaW5nIHdlIGNvdWxkIGNvbWUKPiA+Pj4g
dXAgd2l0aCB0aGF0IHdvdWxkIGRlc2NyaWJlIHRoZXNlIGRlbWFuZHMgYXQgbGVhc3QgcGFydGlh
bGx5LiIKPiA+Pj4KPiA+Pgo+ID4+IENhbiB0aGlzIGJlIGNoZWNrZWQgZm9yIE9PTSBub3RpZmll
ciBhcyB3ZWxsPwo+ID4+Cj4gPj4gIAlpZiAoIWlzX21lbWNnX29vbShvYykpIHsKPiA+PiArCQlu
b25fYmxvY2tfc3RhcnQoKTsKPiA+PiAgCQlibG9ja2luZ19ub3RpZmllcl9jYWxsX2NoYWluKCZv
b21fbm90aWZ5X2xpc3QsIDAsICZmcmVlZCk7Cj4gPj4gKwkJbm9uX2Jsb2NrX2VuZCgpOwo+ID4+
ICAJCWlmIChmcmVlZCA+IDApCj4gPj4gIAkJCS8qIEdvdCBzb21lIG1lbW9yeSBiYWNrIGluIHRo
ZSBsYXN0IHNlY29uZC4gKi8KPiA+PiAgCQkJcmV0dXJuIHRydWU7Cj4gPj4gIAl9Cj4gPj4KPiA+
PiBJdCBpcyBub3QgY2xlYXIgd2hldGhlciBpOTE1J3Mgb29tX25vdGlmaWVyIGZ1bmN0aW9uIGhh
cyBzdWNoIGRlcGVuZGVuY3kuCj4gPiAKPiA+IEl0IGlzIG5vdCBidXQgdGhlbiB3ZSBzaG91bGQg
YmUgdXNpbmcgdGhlIG5vbi1ibG9ja2luZyBBUEkgaWYgdGhpcyBpcwo+ID4gYSByZWFsIHByb2Js
ZW0uIFRoZSBhYm92ZSBjb2RlIGp1c3QgZG9lc24ndCBtYWtlIGFueSBzZW5zZS4gV2UgaGF2ZSBh
Cj4gPiBibG9ja2luZyBBUEkgY2FsbGVkIGFuZCB3cmFwcGVkIGJ5IG5vbi1ibG9ja2luZyBvbmUu
Cj4gCj4gT09NIG5vdGlmaWVycyBzaG91bGQgbm90IGRlcGVuZCBvbiBhbnkgbG9ja3Mgb3Igc2xl
ZXBhYmxlIGNvbmRpdGlvbmFscy4KPiBJZiBzb21lIGxvY2sgZGlyZWN0bHkgb3IgaW5kaXJlY3Rs
eSBkZXBlbmRlZCBvbiBfX0dGUF9ESVJFQ1RfUkVDTEFJTSwKPiBpdCB3aWxsIGRlYWRsb2NrLiBU
aHVzLCBkZXNwaXRlIGJsb2NraW5nIEFQSSwgdGhpcyBzaG91bGQgZWZmZWN0aXZlbHkgYmUKPiBu
b24tYmxvY2tpbmcuIEFsbCBPT00gbm90aWZpZXIgdXNlcnMgZXhjZXB0IGk5MTUgc2VlbXMgdG8g
YmUgYXRvbWljLCBidXQKPiBJIGNhbid0IGV2YWx1YXRlIGk5MTUgcGFydC4uLgoKUmVhZCBhZ2Fp
biB3aGF0IEkndmUgd3JpdHRlbiwgcGxlYXNlCi0tIApNaWNoYWwgSG9ja28KU1VTRSBMYWJzCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
