Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF8D83429
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 16:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E3C6E3B0;
	Tue,  6 Aug 2019 14:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FDBA6E3B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 14:44:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17906771-1500050 for multiple; Tue, 06 Aug 2019 15:44:17 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <874l2uid5e.fsf@gaia.fi.intel.com>
In-Reply-To: <874l2uid5e.fsf@gaia.fi.intel.com>
Message-ID: <156510265490.2892.17549220754582380880@skylake-alporthouse-com>
Date: Tue, 06 Aug 2019 15:44:14 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Only enqueue already
 completed requests
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA2IDE1OjI1OjQ5KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB3ZSBhcmUgYXNr
ZWQgdG8gc3VibWl0IGEgY29tcGxldGVkIHJlcXVlc3QsIGp1c3QgbW92ZSBpdCBvbnRvIHRoZQo+
ID4gYWN0aXZlLWxpc3Qgd2l0aG91dCBtb2RpZnlpbmcgaXQncyBwYXlsb2FkLgo+ID4KPiAKPiBJ
ZiB0aGUgc2Vxbm8gaXMgdGhlcmUgdGhlbiB0aGVyZSBpcyBubyBuZWVkIHRvIHdyaXRlCj4gaXQg
eWVzLgo+IAo+IEJ1dCBJIGFtIG5vdCBhdCBhbGwgY2VydGFpbiB0aGF0IEkgZGVkdWNlZCB0aGUg
J3doeScKPiBwYXJ0IGNvcnJlY3RseSBzbyBwbGVhc2Ugc3BlbGwgaXQgb3V0LgoKQmVjYXVzZSBp
ZiB0aGUgcmVxdWVzdCBpcyBjb21wbGV0ZSwgd2UgbWF5IGhhdmUgbW92ZWQgdGhlIHJpbmctPmhl
YWQKZHVyaW5nIHJldGlyZW1lbnQgKG9yIGluIHRoZSBuZXcgcmVzZXQtb24tY29tcGxldGlvbikg
cGFzdCB0aGUgYnJlYWRjcnVtYgphbmQgZ2VuZXJhdGUgd2FybmluZ3MgZm9yIGFwcGVhcmluZyB0
byBnbyBiYWNrd2FyZHMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
