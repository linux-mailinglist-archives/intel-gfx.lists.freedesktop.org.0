Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BE0255A53
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 14:37:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4956E49D;
	Fri, 28 Aug 2020 12:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B847A6E49D;
 Fri, 28 Aug 2020 12:37:17 +0000 (UTC)
IronPort-SDR: i2ysk4gQdA5LGkAoXbsctTC880pG3KE685WDPGCBo9oIlmOUPFTENY9UH7313JihMl0mSWYxJG
 +3oGjbgsB2UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="174705272"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="174705272"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 05:37:17 -0700
IronPort-SDR: qzfQwwTk6VSkX2M7blC/WoRBm2MtD6AjYwVM6Y7ZtnzeD8Gapl6RHylgzFpFomxhV4FJ6M2L0x
 pmATCQ4N5Icw==
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="300223528"
Received: from aknap-mobl1.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.9.219])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 05:37:15 -0700
Date: Fri, 28 Aug 2020 14:37:12 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200828123712.GA18225@zkempczy-mobl2>
References: <20200806144529.140512-1-chris@chris-wilson.co.uk>
 <20200810080807.GA3956@zkempczy-mobl2>
 <20200810082242.GH7444@platvala-desk.ger.corp.intel.com>
 <159704979478.6812.5770687018171262759@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159704979478.6812.5770687018171262759@build.alporthouse.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Use unsigned gen for
 forward compatible tests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBBdWcgMTAsIDIwMjAgYXQgMDk6NTY6MzRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgUGV0cmkgTGF0dmFsYSAoMjAyMC0wOC0xMCAwOToyMjo0MikKPiA+IE9u
IE1vbiwgQXVnIDEwLCAyMDIwIGF0IDEwOjA5OjQ2QU0gKzAyMDAsIFpiaWduaWV3IEtlbXBjennF
hHNraSB3cm90ZToKPiA+ID4gT24gVGh1LCBBdWcgMDYsIDIwMjAgYXQgMDM6NDU6MjlQTSArMDEw
MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiA+IFVua25vd24sIHNvIGZ1dHVyZSwgZ2VuIGFy
ZSBtYXJrZWQgYXMgLTEgd2hpY2ggd2Ugd2FudCB0byB0cmVhdCBhcyAtMXUKPiA+ID4gPiBzbyB0
aGF0IGFsd2F5cyBwYXNzID49IGdlbiBjaGVja3MuCj4gPiA+IAo+ID4gPiBEbyB3ZSByZWFsbHkg
d2FudCB0byBlbmFibGUgdGhlIHRlc3RzIHdoZW4gcGxhdGZvcm0gaXMgbm90IGZ1bGx5Cj4gPiA+
IGVuYWJsZWQgaW4gSUdUPwo+ID4gCj4gPiBXaGF0IGRvZXMgImZ1bGx5IGVuYWJsZWQiIG1lYW4/
Cj4gPiAKPiA+IElmIHRoZSB0ZXN0IGlzIGNoZWNraW5nIGZvciBqdXN0ICJnZW4gPiB4IiwgdGhl
IHRlc3Qgc2hvdWxkIHdvcmsKPiA+IGFscmVhZHkuIElmIHRoZSB0ZXN0IGlzIGFsc28gY2hlY2tp
bmcgZm9yICJnZW4gPCB5IiB0aGVuIHdlIGdldCBhCj4gPiBzcHVyaW91cyBmYWlsdXJlLCBidXQg
ZWl0aGVyIHdheSBDSSBpcyBnb2luZyB0byB0ZWxsIHlvdSB0aGF0Cj4gPiBzb21ldGhpbmcgaXMg
bm90IHBhc3NpbmcuIFdpdGhvdXQgdGhpcyBpdCB3aWxsIGJlIGEgc2tpcCwgYWxvbmcgd2l0aAo+
ID4gc2tpcHBpbmcgaW4gdGhlIGNhc2UgdGhhdCBzaG91bGQganVzdCB3b3JrIGFscmVhZHkgd2l0
aG91dCBhY3R1YWwgdGVzdAo+ID4gY2hhbmdlcy4KPiAKPiBBbmQgZm9yIGEgdmVyeSBsYXJnZSBm
cmFjdGlvbiBvZiB0ZXN0cywgdGhlIGJlaGF2aW91ciBvZiBuZXh0IGdlbgo+IGZvbGxvd3MgY3Vy
cmVudCBnZW4uIFRob3NlIHRoYXQgZG8gbm90IGFyZSB2ZXJ5IGludGVyZXN0aW5nLCBhbmQgd2ls
bCBiZQo+IGEgbXVjaCBzbWFsbGVyIG51bWJlciB0aGFuIHRoZSB2b2x1bWUgb2Ygc2tpcHMgd2Ug
aGF2ZSB0byBwcm9jZXNzLgo+IC1DaHJpcwoKU28gcGF0Y2ggb25seSBkZWZlcnMgaW4gdGltZSBh
ZGRpbmcgZXhwbGljaXQgcGxhdGZvcm0gZGVmaW5pdGlvbi4KRm9yIGVhY2ggdGVzdHMgd2hpY2gg
cmVxdWlyZXMgZXhhY3QgZ2VuIHRlc3Qgd2lsbCBmYWlsIGFueXdheSwgYnV0Cm90aGVyIHdpbGwg
bGlrZWx5IHdvcmsuIElmIHRoZXkgd29uJ3Qgd2UnbGwga25vdyBpdCBmcm9tIENJLgoKSSBzZWUg
bm8gYmlnIHJpc2sgYnV0IGxldCBQZXRyaSBkZWNpZGUsIGZyb20gbXkgc2lkZToKCkFja2VkLWJ5
OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
