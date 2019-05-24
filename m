Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ECB29897
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 15:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C936E0BB;
	Fri, 24 May 2019 13:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A8C6E0BB
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 13:11:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 06:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,507,1549958400"; d="scan'208";a="177662565"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.95.8])
 by fmsmga002.fm.intel.com with ESMTP; 24 May 2019 06:10:59 -0700
MIME-Version: 1.0
To: "Ye, Tony" <tony.ye@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <e49543a1-fce9-25a8-e9cc-08899fbb20f7@intel.com>
References: <20190519215043.10712-1-michal.wajdeczko@intel.com>
 <155834492612.6928.8334805033823811349@skylake-alporthouse-com>
 <op.z1227bxfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155834908381.6928.7399827371611888241@skylake-alporthouse-com>
 <op.z128ecw7xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <16ec65cf-f64a-497c-768a-451384c21d36@intel.com>
 <op.z14zw2dzxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <e49543a1-fce9-25a8-e9cc-08899fbb20f7@intel.com>
Message-ID: <155870345816.2664.10432704458968406046@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 24 May 2019 16:10:58 +0300
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/huc: Don't try to check HuC
 status if it's not loaded
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

UXVvdGluZyBZZSwgVG9ueSAoMjAxOS0wNS0yMiAxNDozMjo0MSkKPiAgRnJvbSBVTUQgcGVyc3Bl
Y3RpdmUsIHdoZW4gSHVDIGlzIG5vdCB3b3JraW5nIGFzIGV4cGVjdGVkLCB1c3VhbGx5IHdlIAo+
IGxvb2sgaW50byB0aGUga2VybmVsIGxvZyBhbmQgaTkxNV9odWNfbG9hZF9zdGF0dXMgZGVidWdm
cyB0byBmaW5kIG91dCAKPiB3aHkgaXQncyBub3Qgd29ya2luZy4gSXQgd2lsbCBiZSBoZWxwZnVs
IHRvIGtub3cgdGhlIHJlYXNvbiBvZiB0aGUgCj4gZmFpbHVyZSBmcm9tIHRoZSBlcnJvciBjb2Rl
LiBUaGUgdHlwaWNhbGx5IGZhaWx1cmVzIHdlIGVuY291bnRlcmVkIGFyZSAKPiAiSHVDIEZXIG5v
dCBsb2FkZWQgKEZXIG5vdCBidWlsdCBpbnRvIGluaXRyYW1mcykiIGFuZCAiSHVDIEZXIAo+IGF1
dGhlbnRpY2F0aW9uIGZhaWxlZCIuCj4gCj4gQW5kIGl0IGxvb2tzIGNsZWFyZXIgdG8gbWUgaWYg
d2UgY2FuIGRlZmluZSAwIGFzICJkaXNhYmxlZCBieSB1c2VyIiB0byAKPiBkaXN0aW5ndWlzaCBp
dCBmcm9tIG90aGVyIGVycm9ycyBsaWtlIEVOT0RFViwgRU5PUEtHIGFuZCAibm90IAo+IGF1dGhl
bnRpY2F0ZWQiLgoKU3VnZ2VzdGlvbiBieSBDaHJpcyBmb3IgMC8xIGZvciBodWNfc3RhdHVzIG1h
a2VzIHNlbnNlIHRvIG1lIHRvIHJlZmxlY3QgaWYKSHVDIGF1dGhlbnRpY2F0aW9uIHdhcyBzdWNj
ZXNmdWwgb3Igbm90LiBNb3N0bHkgYmVjYXVzZSB0aGUgbmFtZSBvZiB0aGUKZGVidWdmcyBhbmQg
ZnVuYyBpcyBodWNfc3RhdHVzLiBJdCBhbHNvIG5pY2VseSBtYXBzIHRvIGEgcmVnaXN0ZXIuCgpP
bmUgY291bGQgaGF2ZSBodWNfZW5hYmxlZCB3aGljaCB3b3VsZCB0aGVuIGNvbGxhcHNlIHRvIGVh
c3kgMC8xLCBidXQgdGhhdCdkCmJlIGJpdCByZWR1bmRhbnQuCgpSZWdhcmRzLCBKb29uYXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
