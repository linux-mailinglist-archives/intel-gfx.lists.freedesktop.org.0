Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B3826027
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 11:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C3B08975F;
	Wed, 22 May 2019 09:10:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64E528973E;
 Wed, 22 May 2019 09:10:41 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BF8A6B0CC;
 Wed, 22 May 2019 09:10:39 +0000 (UTC)
Date: Wed, 22 May 2019 11:10:38 +0200
From: Michal Hocko <mhocko@suse.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190522091038.GC32329@dhcp22.suse.cz>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
 <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
 <20190521111151.GS32329@dhcp22.suse.cz>
 <765bdfea-915d-ee86-f885-59b11f4c54db@i-love.sakura.ne.jp>
 <20190521144404.GO21222@phenom.ffwll.local>
 <24951d83-9476-98a6-ee45-484d4de07a52@i-love.sakura.ne.jp>
 <20190522063442.GZ32329@dhcp22.suse.cz>
 <155850923786.23981.16014278588706143879@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155850923786.23981.16014278588706143879@skylake-alporthouse-com>
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
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkIDIyLTA1LTE5IDA4OjEzOjU3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gUXVvdGluZyBN
aWNoYWwgSG9ja28gKDIwMTktMDUtMjIgMDc6MzQ6NDIpCj4gPiBPbiBXZWQgMjItMDUtMTkgMDY6
MDY6MzEsIFRldHN1byBIYW5kYSB3cm90ZToKPiA+IFsuLi5dCj4gPiA+IFNpbmNlIE9PTSBub3Rp
ZmllciB3aWxsIGJlIGNhbGxlZCBhZnRlciBzaHJpbmtlcnMgYXJlIGF0dGVtcHRlZCwKPiA+ID4g
Y2FuIGk5MTUgbW92ZSBmcm9tIE9PTSBub3RpZmllciB0byBzaHJpbmtlcj8KPiA+IAo+ID4gVGhh
dCB3b3VsZCBiZSBpbmRlZWQgcHJlZmVyYWJsZS4gT09NIG5vdGlmaWVyIGlzIGFuIEFQSSBmcm9t
IGhlbGwuCj4gCj4gV2Ugd2VyZV5XIGFyZSBzdGlsbCB0cnlpbmcgdG8gbWFrZSB0aGUgc2hyaW5r
ZXIgbm9uYmxvY2tpbmcgdG8gYXZvaWQKPiBpbmN1cnJpbmcgaG9ycmlibGUgbGF0ZW5jaWVzIGZv
ciBsaWdodCBkaXJlY3QgcmVjbGFpbS4gVGhlIGNvbnNlcXVlbmNlCj4gb2YgYXZvaWRpbmcgaGVh
dnkgd29yayBpbiB0aGUgc2hyaW5rZXIgaXMgdGhhdCB3ZSBtb3ZlZCBpdCB0byB0aGUgb29tCj4g
bm90aWZpZXIgYXMgYmVpbmcgdGhlIGxhc3QgY2hhbmNlIHdlIGhhdmUgdG8gcmV0dXJuIGFsbCAo
Y2FuIGJlIGxpdGVyYWxseQo+IGFsbCkgdGhlIHN5c3RlbSBtZW1vcnkuCj4gCj4gVGhlIGFsdGVy
bmF0aXZlIHRvIHVzaW5nIGEgc2VwYXJhdGUgb29tIG5vdGlmaWVyIHdvdWxkIGJlIG1vcmUKPiBy
ZWNsYWltL3Nocmlua2VyIHBoYXNlcz8KCmRvX3Nocmlua19zbGFiIGFscmVhZHkga25vd3MgdGhl
IHJlY2xhaW0gcHJpb3JpdHkuIFNvIEkgZ3Vlc3Mgd2UgY2FuCnB1c2ggaXQgdG8gc2hyaW5rZXJz
IHZpYSBzaHJpbmtfY29udHJvbCBzbyB0aGV5IGNhbiBhY3QgZGVwZW5kaW5nIG9uIHRoZQpyZWNs
YWltIHByZXNzdXJlLgoKLS0gCk1pY2hhbCBIb2NrbwpTVVNFIExhYnMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
