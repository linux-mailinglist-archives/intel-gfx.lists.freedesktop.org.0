Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F108E884BB
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 23:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D531C6EEA2;
	Fri,  9 Aug 2019 21:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACBDC6EEA2
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 21:36:51 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17948150-1500050 for multiple; Fri, 09 Aug 2019 22:36:49 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190809202926.14545-1-matthew.auld@intel.com>
 <20190809202926.14545-2-matthew.auld@intel.com>
In-Reply-To: <20190809202926.14545-2-matthew.auld@intel.com>
Message-ID: <156538660685.2301.1303824752227521931@skylake-alporthouse-com>
Date: Fri, 09 Aug 2019 22:36:46 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: buddy allocator
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMjE6Mjk6MjQpCj4gK2ludCBpOTE1X2J1
ZGR5X2FsbG9jX3JhbmdlKHN0cnVjdCBpOTE1X2J1ZGR5X21tICptbSwKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICpibG9ja3MsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgdTY0IHN0YXJ0LCB1NjQgc2l6ZSkKPiArewo+ICsgICAgICAgc3RydWN0IGk5
MTVfYnVkZHlfYmxvY2sgKmJsb2NrOwo+ICsgICAgICAgc3RydWN0IGk5MTVfYnVkZHlfYmxvY2sg
KmJ1ZGR5Owo+ICsgICAgICAgTElTVF9IRUFEKGFsbG9jYXRlZCk7Cj4gKyAgICAgICBMSVNUX0hF
QUQoZGZzKTsKPiArICAgICAgIHU2NCBlbmQ7Cj4gKyAgICAgICBpbnQgZXJyOwo+ICsgICAgICAg
aW50IGk7Cj4gKwo+ICsgICAgICAgaWYgKHNpemUgPCBtbS0+Y2h1bmtfc2l6ZSkKPiArICAgICAg
ICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsgICAgICAgaWYgKCFJU19BTElHTkVEKHN0
YXJ0LCBtbS0+Y2h1bmtfc2l6ZSkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+
ICsKPiArICAgICAgIGlmICghc2l6ZSB8fCAhSVNfQUxJR05FRChzaXplLCBtbS0+Y2h1bmtfc2l6
ZSkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwoKY2h1bmtfc2l6ZSBjYW4ndCBi
ZSAwIGFuZCBzaXplIGNhbid0IGJlIGxlc3MgdGhhbiBjaHVua19zaXplLCBlcmdvIHNpemUKaXMg
bm9uLXplcm8uCgppZiAoIUlTX0FMSUdORUQoc3RhcnQgfCBzaXplLCBtbS0+Y2h1bmtfc2l6ZSkp
CglyZXR1cm4gLUVJTlZBTDsKCk15IGxhc3QgYnJhaW4gY2VsbCBkaWVzIGhhcHB5LAotQ2hyaXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
