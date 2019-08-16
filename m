Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CEE903F2
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 16:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BEA6E435;
	Fri, 16 Aug 2019 14:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E366E435
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 14:28:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 07:28:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="188827808"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 16 Aug 2019 07:28:57 -0700
Date: Fri, 16 Aug 2019 08:26:48 -0600
From: Keith Busch <keith.busch@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190816142648.GA6849@localhost.localdomain>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
 <20190816123850.GA22923@lst.de>
 <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
 <156596473180.11610.10618280744615593681@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156596473180.11610.10618280744615593681@skylake-alporthouse-com>
User-Agent: Mutt/1.9.1 (2017-09-22)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, Keith Busch <keith.busch@gmail.com>,
 Jens Axboe <axboe@fb.com>, linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMTYsIDIwMTkgYXQgMDc6MTI6MTFBTSAtMDcwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgS2VpdGggQnVzY2ggKDIwMTktMDgtMTYgMTM6NDY6NDEpCj4gPiBDb3Vs
ZCB5b3UgcGxlYXNlIHRyeSBSYWZhZWwncyBzb2x1dGlvbj8gVGhlc2UgdHdvIGNvbW1pdHMgaGVy
ZToKPiA+IAo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvcmFmYWVsL2xpbnV4LXBtLmdpdC9jb21taXQvP2g9eHBzMTMtOTM4MC0yMDE5MDgxMiZpZD1h
Y2NkMmRkNzJjOGYwODc0NDFkNzI1ZGQ5MTY2ODgxNzE1MTllNGU2Cj4gPiBodHRwczovL2dpdC5r
ZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9yYWZhZWwvbGludXgtcG0uZ2l0L2Nv
bW1pdC8/aD14cHMxMy05MzgwLTIwMTkwODEyJmlkPTRlYWVmZThjNjIxYzYxOTVjOTEwNDQzOTZl
ZDgwNjBjMTc5ZjdhYWUKPiAKPiBXaGljaCBpbmRlZWQgd29yaywgdGhhbmsgeW91LgoKR3JlYXQh
IEEgcHVsbCByZXF1ZXN0IGlubGN1ZGluZyB0aGVzZSBmaXhlcyB3YXMgc2VudCB0byBMaW51cyBl
YXJsaWVyCnRvZGF5LiBXZSBzaG91bGQgZXhwZWN0IHRvIHNlZSBpdHMgaW5jbHVzaW9uIGluIHRo
ZSBuZXh0IC1yYy4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
