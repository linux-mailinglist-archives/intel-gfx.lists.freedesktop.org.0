Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 753C6903BD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 16:13:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D5C6E33D;
	Fri, 16 Aug 2019 14:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B8816E33D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 14:13:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18163882-1500050 for multiple; Fri, 16 Aug 2019 15:12:13 +0100
MIME-Version: 1.0
To: Christoph Hellwig <hch@lst.de>, Keith Busch <keith.busch@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
 <20190816123850.GA22923@lst.de>
 <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
Message-ID: <156596473180.11610.10618280744615593681@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 16 Aug 2019 15:12:11 +0100
Subject: Re: [Intel-gfx] [PATCH] Revert "nvme-pci: use host managed power
 state for suspend"
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBLZWl0aCBCdXNjaCAoMjAxOS0wOC0xNiAxMzo0Njo0MSkKPiBPbiBGcmksIEF1ZyAx
NiwgMjAxOSBhdCA2OjM4IEFNIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToK
PiA+IE9uIEZyaSwgQXVnIDE2LCAyMDE5IGF0IDAxOjMwOjI5UE0gKzAxMDAsIENocmlzIFdpbHNv
biB3cm90ZToKPiA+ID4gUXVvdGluZyBDaHJpc3RvcGggSGVsbHdpZyAoMjAxOS0wOC0xNiAxMzoy
Njo0NCkKPiA+ID4gPiBQbGVhc2UsIHJlcG9ydCB0aGUgYWN0dWFsIHByb2JsZW0uICBCbGluZGx5
IHJldmVydGluZyBhIHBhdGNoIHdpdGhvdXQKPiA+ID4gPiBldmVuIGFuIGV4cGxhbmF0aW9uIG9m
IHlvdXIgcmVncmVzc2lvbnMgaXMgbm90IHRoZSB3YXkgdG8gZG8gaXQuCj4gPiA+Cj4gPiA+IEFz
IHN0YXRlZCwgdGhlIHN5c3RlbSBkb2Vzbid0IHN1c3BlbmQuCj4gPiA+Cj4gPiA+IElmIHlvdSB3
b3VsZCBsaWtlIHRvIHdhaXQsIHlvdSB3aWxsIGdldCB0ZXN0IHJlc3VsdHMgZnJvbSBvdXIgQ0kK
PiA+ID4gZ2l2aW5nIHRoZSBjdXJyZW50IGZhaWxlZCBzdGF0ZSBhbmQgdGhlIG91dGNvbWUgb2Yg
dGhlIHBhdGNoLgo+ID4KPiA+IFBsYXRmb3JtIHR5cGUsIFNTRCB2ZW5kb3IgYW5kIHR5cGUsIGZp
cm13YXJlIHZlcnNpb24/CgpXaGljaCBwbGF0Zm9ybSB3ZXJlIHlvdSBpbnRlcmVzdGVkIGluLCBh
bmQgaXMgdGhhdCBpbmZvcm1hdGlvbiBub3QKcHJlc2VudCBpbiB0aGUgZGVidWcgbG9nPyBUaGUg
aXNzdWUgaXMgb2JzZXJ2ZWQgYWNyb3NzIG11bHRpcGxlIGRpZmZlcmVudApTU0QgYW5kIHZlbmRv
cnMuCiAKPiBBbHNvIG5vdCBhIGZhbiBvZiBrbmVlLWplcmsgcmV2ZXJ0cy4gRXZlbiBpZiBpdCBt
YXkgdHVybiBvdXQgdG8gYmUKPiBuZWNlc3NhcnksIGxldCdzIGF0IGxlYXN0IHN0YXJ0IHdpdGgg
YSBidWcgcmVwb3J0IGZvciBhbiBvcHBvcnR1bml0eQo+IHRvIGZpeCBmaXJzdCEKCkkganVzdCBk
aWQgcmVwb3J0IHRoYXQgd2Ugc3VjY2Vzc2Z1bGx5IGJpc2VjdGVkIHRoZSBlYXJsaWVyIGJ1ZyB3
ZQpyZXBvcnRlZCwgYW5kIHdhcyB0ZXN0aW5nIGEgcmV2ZXJ0IGZvciBvdXIgQ0kuCgo+IENvdWxk
IHlvdSBwbGVhc2UgdHJ5IFJhZmFlbCdzIHNvbHV0aW9uPyBUaGVzZSB0d28gY29tbWl0cyBoZXJl
Ogo+IAo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Jh
ZmFlbC9saW51eC1wbS5naXQvY29tbWl0Lz9oPXhwczEzLTkzODAtMjAxOTA4MTImaWQ9YWNjZDJk
ZDcyYzhmMDg3NDQxZDcyNWRkOTE2Njg4MTcxNTE5ZTRlNgo+IGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3JhZmFlbC9saW51eC1wbS5naXQvY29tbWl0Lz9o
PXhwczEzLTkzODAtMjAxOTA4MTImaWQ9NGVhZWZlOGM2MjFjNjE5NWM5MTA0NDM5NmVkODA2MGMx
NzlmN2FhZQoKV2hpY2ggaW5kZWVkIHdvcmssIHRoYW5rIHlvdS4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
