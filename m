Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF118241D8D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 17:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7AF86E5B2;
	Tue, 11 Aug 2020 15:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F7D96E5B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Aug 2020 15:47:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22097537-1500050 for multiple; Tue, 11 Aug 2020 16:47:50 +0100
MIME-Version: 1.0
In-Reply-To: <4bab4649-c8b8-45c5-41f5-0f172db79667@intel.com>
References: <20200811091726.21784-1-chris@chris-wilson.co.uk>
 <4bab4649-c8b8-45c5-41f5-0f172db79667@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 11 Aug 2020 16:47:50 +0100
Message-ID: <159716087083.14054.13900226781053798555@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Confirm RING_TIMESTAMP
 / CTX_TIMESTAMP share a clock
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAyMC0wOC0xMSAxNjozNzoxMCkKPiBPbiAxMS8w
OC8yMDIwIDEyOjE3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBhc3N1bWUgdGhhdCBib3Ro
IHRpbWVzdGFtcHMgYXJlIGRyaXZlbiBvZmYgdGhlIHNhbWUgY2xvY2sgW3JlcG9ydGVkCj4gPiB0
byB1c2Vyc3BhY2UgYXMgSTkxNV9QQVJBTV9DU19USU1FU1RBTVBfRlJFUVVFTkNZXS4gVmVyaWZ5
IHRoYXQgdGhpcyBpcwo+ID4gc28gYnkgcmVhZGluZyB0aGUgdGltZXN0YW1wIHJlZ2lzdGVycyBh
cm91bmQgYSBidXN5d2FpdCAob24gYW4gb3RoZXJ3aXNlCj4gPiBpZGxlIGVuZ2luZSBzbyB0aGVy
ZSBzaG91bGQgYmUgbm8gcHJlZW1wdGlvbnMpLgo+ID4KPiA+IHYyOiBJY2VsYWtlIChub3QgZWhs
LCBub3IgdGdsKSBzZWVtcyB0byBiZSB1c2luZyBhIGZpeGVkIDgwbnMgaW50ZXJ2YWwKPiA+IGZv
ciwgYW5kIG9ubHkgZm9yLCBDVFhfVElNRVNUQU1QLiBBcyBmYXIgYXMgSSBjYW4gdGVsbCwgdGhp
cyBiZWhhdmlvdXIKPiA+IGlzIHVuZG9jdW1lbnRlZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiAKPiBJIHJlYWxseSB0aG91
Z2h0IHRoZSBDVFhfVElNRVNUQU1QIHdhcyBydW5uaW5nIDggdGltZXMgc2xvd2VyIDoKPiAKPiAK
PiBGb3IgdGhlIDIwMTUgLSAyMDE2IEludGVsIENvcmVUTSBQcm9jZXNzb3JzLCBDZWxlcm9uVE0g
UHJvY2Vzc29ycywKPiBhbmQgUGVudGl1bVRNIFByb2Nlc3NvcnMgYmFzZWQgb24gdGhlICJTa3ls
YWtlIiBQbGF0Zm9ybQo+IAo+IFZvbHVtZSAyYzogQ29tbWFuZCBSZWZlcmVuY2U6IFJlZ2lzdGVy
cwo+IFBhcnQgMSDigJMgUmVnaXN0ZXJzIEEgdGhyb3VnaCBMCj4gCj4gTWF5IDIwMTYsIFJldmlz
aW9uIDEuMAo+IAo+IENUWF9USU1FU1RBTVAgLSBDb250ZXh0IFRpbWVzdGFtcCBDb3VudDoKPiAK
PiBUaGUgZ3JhbnVsYXJpdHkgb2YgdGhpcyB0b2dnbGUgaXMgYXQgdGhlIHJhdGUgb2YgdGhlIGJp
dCAzIGluIHRoZSAKPiAiUmVwb3J0ZWQgVGltZXN0YW1wIENvdW50Igo+IHJlZ2lzdGVyKDB4MjM1
OCkuLiBUaGUgdG9nZ2xlIHdpbGwgYmUgOCB0aW1lcyBzbG93ZXIgdGhhdCAiUmVwb3J0ZWQgCj4g
VGltZXN0YW1wIENvdW50Ii4gVGhlCj4gZ3JhbnVsYXJpdHkgb2YgdGhlIHRpbWUgc3RhbXAgYmFz
ZSB1bml0IGZvciAiUmVwb3J0ZWQgVGltZXN0YW1wIENvdW50IiAKPiBpcyBkZWZpbmVkIGluIHRo
ZQo+IOKAnFRpbWVzdGFtcCBCYXNlc+KAnSBzdWJzZWN0aW9uIGluIFBvd2VyIE1hbmFnZW1lbnQg
Y2hhcHRlci4KCkkgcmVhZCB0aGF0IHBhcmFncmFwaCBpbiB0aGUgc2FtZSB3YXksIHRoYXQgdGhl
IENUWF9USU1FU1RBTVAgaXMgb25seQpiZWluZyBhZHZhbmNlZCBbYnkgMSB0aWNrXSBvbiBldmVy
eSA4dGggdGljayBvZiBDU19USU1FU1RBTVAuCgpUaGF0IHR1cm5zIG91dCB0byBiZSBub3Qgd2hh
dCBoYXBwZW5zLi4uIFNvIEkgZ3Vlc3MgdGhleSBtZWFuIHRoYXQKQ1RYX1RJTUVTVEFNUCBpbmNy
ZW1lbnRzIGJ5IDggZXZlcnkgOHRoIHRpY2suIEkgaGF2ZW4ndCBib3RoZXJlZCB0bwpjaGVjayB0
byBzZWUgaWYgdGhlcmUncyBhbnl0aGluZyBpbiB0aGUgbG93IDIgYml0cyBvZiBDVFhfVElNRVNU
QU1QLgoKU3RpbGwgbm90aGluZyBtZW50aW9ucyB0aGF0IEljZWxha2UgaGFzIGEgY29tcGxldGVs
eSBkaWZmZXJlbnQKYmVoYXZpb3VyIGFmYWljdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
