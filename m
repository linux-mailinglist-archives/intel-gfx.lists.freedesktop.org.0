Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22486116CD2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 13:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 327E689CF8;
	Mon,  9 Dec 2019 12:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6CF989CDF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 12:03:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19512007-1500050 for multiple; Mon, 09 Dec 2019 12:03:22 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191209115701.GA22862@intel.com>
References: <20191202065458.9477-1-ramalingam.c@intel.com>
 <20191202065458.9477-2-ramalingam.c@intel.com>
 <CAM0jSHMP37vD_sz8HMiA7T2A_J08vD4VmvkC-L7WcyBoxTsCaA@mail.gmail.com>
 <157554841226.22727.12524170364084626029@skylake-alporthouse-com>
 <20191205130240.GG25793@intel.com>
 <157555148978.22727.11669212602896257587@skylake-alporthouse-com>
 <20191209115701.GA22862@intel.com>
Message-ID: <157589300200.2308.4242946026887562657@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 09 Dec 2019 12:03:22 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: Create dumb buffer from
 LMEM
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTItMDkgMTE6NTc6MDEpCj4gT24gMjAxOS0xMi0w
NSBhdCAxMzoxMToyOSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBSYW1h
bGluZ2FtIEMgKDIwMTktMTItMDUgMTM6MDI6NDApCj4gPiA+IE9uIDIwMTktMTItMDUgYXQgMTI6
MjA6MTIgKzAwMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gPiBRdW90aW5nIE1hdHRoZXcg
QXVsZCAoMjAxOS0xMi0wNSAxMjoxMjoxOSkKPiA+ID4gPiA+IFdlIHdvdWxkIHN0aWxsIG5lZWQg
dG8gY2xlYXIgdGhlIG9iamVjdChtYXliZSBJOTE1X0JPX0FMTE9DX0NMRUFSRUQ/KQo+ID4gPiA+
ID4gaW4gb3JkZXIgdG8gcGFzcyB0aGUgSUdUcy4gV2UgYWxzbyBuZWVkIHRvIGFkanVzdCBkdW1i
X2J1ZmZlci5jLCBzaW5jZQo+ID4gPiA+ID4gdGhhdCB1c2VzIGdldF9hdmFpbF9yYW1fbWIoKSBm
b3IgYWx3YXlzX2NsZWFyLCBidXQgbWF5YmUgd2UgbmVlZCB0aGUKPiA+ID4gPiA+IHF1ZXJ5IHJl
Z2lvbiB1YXBpIGZvciB0aGF0Pwo+ID4gPiA+IAo+ID4gPiA+IEhtbS4gUXVlc3Rpb25zIG92ZXIg
dGhlIG1heGltdW0gc2l6ZSBmb3IgZHVtYiBidWZmZXIsIG1heGltdW0gbnVtYmVyIG9mCj4gPiA+
ID4gZHVtYiBidWZmZXJzLCBldGMsIHNob3VsZCBiZSBhZGRyZXNzZWQgdG8gdGhlIGR1bWIgQVBJ
LiBTbyBzb21lIGZvcm0gb2YKPiA+ID4gPiBkcm1HZXRDYXAoKSA/Cj4gPiA+IENocmlzLCBJcyB0
aGlzIHN1Z2dlc3Rpb24gdG8gYWRkIHRoaXMgY2FwYWJpbGl0eSBwcm9iaW5nIHRocm91Z2ggYSBu
ZXcgSU9DVEwgZm9yCj4gPiA+IGR1bWIgQVBJcz8gUGxlYXNlIGNsYXJpZnkuCj4gPiAKPiA+IEkg
ZG9uJ3QgdGhpbmsgd2UgbmVlZCBhIG5ldyBpb2N0bCwgYXMgZHJtX2dldGNhcCBhbHJlYWR5IGNv
dmVycyB0aGUgZHVtYgo+ID4gYnVmZmVyIEFQSS4gV2UganVzdCBuZWVkIHRvIGV4cG9zZSB0aGUg
bGltaXRzIG9mIHRoZSBkdW1iIGJ1ZmZlciBBUEkKPiA+IHRocm91Z2ggaXQuCj4gPiAKPiA+IFRo
ZSAyIHRoYXQgc3ByaW5nIHRvIG1pbmQgYXJlIG1heGltdW0gc2l6ZSBvZiBpbmRpdmlkdWFsIGJ1
ZmZlciBhbmQKPiA+IG1heGltdW0gc2l6ZSBvZiB0b3RhbCBkdW1iIGJ1ZmZlcnMuCj4gCj4gV2ls
bCB0aGVyZSBiZSBxdWVzdGlvbiBmb3IgdXNlcnNwYWNlIGZvciB0aGlzIGV4dGVuc2lvbiBvciBu
bz8KPiBBRkFJSyBUaGVyZSBpcyBubyBjb25zdW1lciBleGNlcHQgSUdULgoKVGhlcmUgd2FzIHNv
bWVvbmUgZWxzZSBhc2tpbmcgZm9yIG1heGltdW0gZHVtYiBidWZmZXIgc2l6ZSBvbiBpcmMgZnJv
bQphbiBhcHBsaWNhdGlvbiBwZXJzcGVjdGl2ZS4KCkJ1dCBJIHN0cm9uZ2x5IGJlbGlldmUgdGhh
dCBkaXNjb3ZlcmFiaWxpdHkgYW5kIHRlc3RhYmlsaXR5IG9mIGFuIEFQSQpzaG91bGQgYmUgYSBj
ZW50cmFsIHRlbmV0IG9mIEFQSSBkZXNpZ24uIDopCi1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
