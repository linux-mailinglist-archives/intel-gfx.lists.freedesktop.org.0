Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF66FDEDC
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 14:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C06B6E5EF;
	Fri, 15 Nov 2019 13:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A9B6E5EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 13:22:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19212881-1500050 for multiple; Fri, 15 Nov 2019 13:22:07 +0000
MIME-Version: 1.0
To: Imre Deak <imre.deak@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115131530.GD22793@ideak-desk.fi.intel.com>
References: <20191115122343.821331-1-chris@chris-wilson.co.uk>
 <20191115131143.GC22793@ideak-desk.fi.intel.com>
 <20191115131530.GD22793@ideak-desk.fi.intel.com>
Message-ID: <157382412443.11997.4083022821574405859@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 15 Nov 2019 13:22:04 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mention which device failed
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMTEtMTUgMTM6MTU6MzApCj4gT24gRnJpLCBOb3YgMTUs
IDIwMTkgYXQgMDM6MTE6NDNQTSArMDIwMCwgSW1yZSBEZWFrIHdyb3RlOgo+ID4gT24gRnJpLCBO
b3YgMTUsIDIwMTkgYXQgMTI6MjM6NDNQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
PiBXaGVuIHRlbGxpbmcgdGhlIHVzZXIgdGhhdCBkZXZpY2UgcG93ZXIgbWFuYWdlbWVudCBpcyBk
aXNhYmxlZCwgaXQgaXMKPiA+ID4gaGVscGZ1bCB0byBzYXkgd2hpY2ggZGV2aWNlIHRoYXQgd2Fz
LiBBdCB0aGUgc2FtZSB0aW1lLCB3aGlsZSBpdCBpcyBhCj4gPiA+IG1lcmUgaW5jb252ZW5pZW5j
ZSB0byB0aGUgdXNlciwgaXQgaXMgZGV2YXN0YXRpbmcgdG8gQ0kgYXMgdGhpcyBhbmQKPiA+ID4g
ZnV0dXJlIHRlc3RzIG1heSBmYWlsIG91dCBvZiB0aGUgYmx1ZS4KPiA+ID4gCj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiBD
YzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4g
PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+ID4gCj4gPiBSZXZpZXdlZC1i
eTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IAo+IEFsdGhvdWdoIHdlIHdvdWxk
IG5lZWQgYSB3YXkgdG8gdGVzdCByZWNvdmVyeSAtIHdoaWNoIHdlIGEgaGF2ZSBhCj4gdGVzdGNh
c2UgZm9yIC0gc28gdGFpbnRpbmcgZm9yIHRoYXQgY2FzZSBpcyBub3Qgb2suCgpZb3UgcHV0IHRo
YXQgdGVzdCBhdCB0aGUgZW5kIG9mIHRoZSBxdWV1ZS4gRndpdywgd2UgZG9uJ3Qgc2VlbSB0byBz
ZWUKdGhlIGNvcnJ1cHQgc3RhdGUgYWNyb3NzIGEgbW9kdWxlIHJlbG9hZDsgZWl0aGVyIHRoYXQg
b3IgSSBhbSBibGluZC4KCldlIHByb2JhYmx5IHNob3VsZCBhZGQgdGhlIHJlZ2lzdGVyICsga25v
d24gc3RhdGUgdG8gdGhlIGVycm9yIGR1bXAuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
