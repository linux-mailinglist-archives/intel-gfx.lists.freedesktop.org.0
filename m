Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDA9F443F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D9A6F902;
	Fri,  8 Nov 2019 10:11:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EBCE6F902
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:11:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19125829-1500050 for multiple; Fri, 08 Nov 2019 10:11:45 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAKMK7uFSfEPYgzeLtZXTOH7o77jDu7ULtvexq-=R6jeXwsLGTQ@mail.gmail.com>
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <20191106154810.5843-2-chris@chris-wilson.co.uk>
 <CAKMK7uFSfEPYgzeLtZXTOH7o77jDu7ULtvexq-=R6jeXwsLGTQ@mail.gmail.com>
Message-ID: <157320790442.9461.15671764737191591137@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 08 Nov 2019 10:11:44 +0000
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Drop inspection of execbuf
 flags during evict
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4IDA5OjU0OjQyKQo+IE9uIFdlZCwgTm92
IDYsIDIwMTkgYXQgNDo0OSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gd3JvdGU6Cj4gPgo+ID4gV2l0aCB0aGUgZ29hbCBvZiByZW1vdmluZyB0aGUgc2VyaWFsaXNh
dGlvbiBmcm9tIGFyb3VuZCBleGVjYnVmLCB3ZSB3aWxsCj4gPiBubyBsb25nZXIgaGF2ZSB0aGUg
cHJpdmlsZWdlIG9mIHRoZXJlIGJlaW5nIGEgc2luZ2xlIGV4ZWNidWYgaW4gZmxpZ2h0Cj4gPiBh
dCBhbnkgdGltZSBhbmQgc28gd2lsbCBvbmx5IGJlIGFibGUgdG8gaW5zcGVjdCB0aGUgdXNlcidz
IGZsYWdzIHdpdGhpbgo+ID4gdGhlIGNhcmVmdWxseSBjb250cm9sbGVkIGV4ZWNidWYgY29udGV4
dC4gaTkxNV9nZW1fZXZpY3RfZm9yX25vZGUoKSBpcwo+ID4gdGhlIG9ubHkgdXNlciBvdXRzaWRl
IG9mIGV4ZWNidWYgdGhhdCBjdXJyZW50bHkgcGVla3MgYXQgdGhlIGZsYWcgdG8KPiA+IGNvbnZl
cnQgYW4gb3ZlcmxhcHBpbmcgc29mdHBpbm5lZCByZXF1ZXN0IGZyb20gRU5PU1BDIHRvIEVJTlZB
TC4gUmV0cmFjdAo+ID4gdGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0IEVOT1NQQyBpZiB0aGUg
bG9jYXRpb24gaXMgaW4gY3VycmVudCB1c2UsCj4gPiBlaXRoZXIgZHVlIHRvIHRoaXMgZXhlY2J1
ZiBvciBhbm90aGVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRp
bmVuQGxpbnV4LmludGVsLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU2FtZSByZWFzb25zIGFzIGZvciBw
YXRjaCAzLCBJIGRvbid0IHRoaW5rIHdlIGhhdmUgdG8gZG8gdGhpcyBhdCBhbGwuCgpUaGlzIGlz
IGFscmVhZHkgdW5kZWZpbmVkIGJlaGF2aW91ci4gVGhhdCBmaWVsZCBpcyBwcm90ZWN0ZWQgYnkK
c3RydWN0X211dGV4IGFuZCBiZWluZyBldmFsdWF0ZWQgb3V0c2lkZSBvZiB0aGF0IGxvY2suCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
