Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE42D882FF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 20:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B986EE84;
	Fri,  9 Aug 2019 18:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942E66EE83
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 18:52:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17947255-1500050 for multiple; Fri, 09 Aug 2019 19:52:26 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHP0BZJyJO3JeMqPDK=eYhS-Az6i6fGFz1tUQgaErA7mfA@mail.gmail.com>
References: <20190808172226.18306-1-chris@chris-wilson.co.uk>
 <CAM0jSHP0BZJyJO3JeMqPDK=eYhS-Az6i6fGFz1tUQgaErA7mfA@mail.gmail.com>
Message-ID: <156537674371.32306.7527004745489566049@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 09 Aug 2019 19:52:23 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop reconfiguring our shmemfs
 mountpoint
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>, kernel list <linux-kernel@vger.kernel.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMDkgMTk6NDc6MDIpCj4gT24gVGh1LCA4IEF1
ZyAyMDE5IGF0IDE4OjIzLCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPgo+ID4gVGhlIGZpbGVzeXN0ZW0gcmVjb25maWd1cmUgQVBJIGlzIHVuZGVyZ29p
bmcgYSB0cmFuc2l0aW9uLCBicmVha2luZyBvdXIKPiA+IGN1cnJlbnQgY29kZS4gQXMgd2Ugb25s
eSBzZXQgdGhlIGRlZmF1bHQgb3B0aW9ucywgd2UgY2FuIHNpbXBseSByZW1vdmUKPiA+IHRoZSBj
YWxsIHRvIHNfb3AtPnJlbW91bnRfZnMoKS4gSW4gdGhlIGZ1dHVyZSwgd2hlbiBIVyBwZXJtaXRz
LCB3ZSBjYW4KPiA+IHRyeSByZS1lbmFibGluZyBodWdlIHBhZ2Ugc3VwcG9ydCwgYWxiZWl0IGFz
IHN1Z2dlc3RlZCB3aXRoIG5ldyBwZXItZmlsZQo+ID4gY29udHJvbHMuCj4gPgo+ID4gUmVwb3J0
ZWQtYnk6IFNlcmdleSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0c2t5QGdtYWlsLmNvbT4K
PiA+IFJlcG9ydGVkLWJ5OiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtAZ21haWwuY29tPgo+ID4g
U3VnZ2VzdGVkLWJ5OiBIdWdoIERpY2tpbnMgPGh1Z2hkQGdvb2dsZS5jb20+Cj4gPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBN
YXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gPiBDYzogSHVnaCBEaWNraW5z
IDxodWdoZEBnb29nbGUuY29tPgo+ID4gQ2M6IEFsIFZpcm8gPHZpcm9AemVuaXYubGludXgub3Jn
LnVrPgo+ID4gQ2M6IFNlcmdleSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0c2t5QGdtYWls
LmNvbT4KPiBSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29t
PgoKVGhhbmtzLCBwaWNrZWQgdXAgd2l0aCB0aGUgcy93aXRoaW4vd2l0aGluX3NpemUvIGZpeC4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
