Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0105C13452D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 15:38:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11DCC6E311;
	Wed,  8 Jan 2020 14:38:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79C36E311
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 14:38:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19809945-1500050 for multiple; Wed, 08 Jan 2020 14:38:10 +0000
MIME-Version: 1.0
To: "Souza, Jose" <jose.souza@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87y2uiow5p.fsf@intel.com>
References: <20200107130322.gdk5b6jurifr26c2@kili.mountain>
 <04c2960a11f5361288d7d3a8a3bd16301b05c5e5.camel@intel.com>
 <157840592663.2273.15929240102084093971@skylake-alporthouse-com>
 <87y2uiow5p.fsf@intel.com>
Message-ID: <157849428827.2273.15167701436088595576@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 08 Jan 2020 14:38:08 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix an error code in
 intel_modeset_all_tiles()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAyMC0wMS0wOCAxNDozMzoyMikKPiBPbiBUdWUsIDA3IEph
biAyMDIwLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cj4g
PiBRdW90aW5nIFNvdXphLCBKb3NlICgyMDIwLTAxLTA3IDE0OjAxOjQwKQo+ID4+IE9uIFR1ZSwg
MjAyMC0wMS0wNyBhdCAxNjowMyArMDMwMCwgRGFuIENhcnBlbnRlciB3cm90ZToKPiA+PiA+IFRo
ZXJlIGlzIGEgY3V0IGFuZCBwYXN0ZSBidWcgc28gd2UgcmV0dXJuIHRoZSB3cm9uZyBlcnJvciBj
b2RlLgo+ID4+ID4gCj4gPj4gPiBGaXhlczogYTYwM2Y1YmQxNjkxICgiZHJtL2k5MTUvZHA6IE1h
a2Ugc3VyZSBhbGwgdGlsZWQgY29ubmVjdG9ycyBnZXQKPiA+PiA+IGFkZGVkIHRvIHRoZSBzdGF0
ZSB3aXRoIGZ1bGwgbW9kZXNldCIpCj4gPj4gCj4gPj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVy
dG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4+IAo+ID4+ID4gU2lnbmVkLW9m
Zi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgo+ID4KPiA+IFB1
c2hlZC4gVGhhbmtzIGZvciB0aGUgcGF0Y2gsCj4gCj4gSHJtaCwgd2UgYXJlIHN0aWxsIHN1cHBv
c2VkIHRvIHdhaXQgZm9yIENJIHJlc3VsdHMgZm9yIGV2ZXJ5IHBhdGNoLCBubwo+IGV4Y2VwdGlv
bnMuCgpUaGVyZSBpcyBubyBjb3ZlcmFnZSBvZiB0aGF0IHBhdGggaW4gQ0kuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
