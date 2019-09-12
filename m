Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B05B0BBE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 11:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6ED6EC91;
	Thu, 12 Sep 2019 09:43:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3786A6EC91;
 Thu, 12 Sep 2019 09:43:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18461536-1500050 for multiple; Thu, 12 Sep 2019 10:43:42 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Patchwork <patchwork@emeril.freedesktop.org>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190912093649.12409.76031@emeril.freedesktop.org>
References: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
 <20190912093649.12409.76031@emeril.freedesktop.org>
Message-ID: <156828142067.4926.3648771865761422258@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 12 Sep 2019 10:43:40 +0100
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Fix_cdclk_bypass_freq_r?=
 =?utf-8?q?eadout_for_tgl/bxt/glk_=28rev2=29?=
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

UXVvdGluZyBQYXRjaHdvcmsgKDIwMTktMDktMTIgMTA6MzY6NDkpCj4gPT0gU2VyaWVzIERldGFp
bHMgPT0KPiAKPiBTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFsxLzRdIGRybS9pOTE1OiBG
aXggY2RjbGsgYnlwYXNzIGZyZXEgcmVhZG91dCBmb3IgdGdsL2J4dC9nbGsgKHJldjIpCj4gVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NTM3Lwo+IFN0
YXRlIDogc3VjY2Vzcwo+IAo+ID09IFN1bW1hcnkgPT0KPiAKPiBDSSBCdWcgTG9nIC0gY2hhbmdl
cyBmcm9tIENJX0RSTV82ODc1IC0+IFBhdGNod29ya18xNDM3NAo+ID09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiAKPiBTdW1tYXJ5Cj4gLS0tLS0t
LQo+IAo+ICAgKipTVUNDRVNTKioKPiAKPiAgIE5vIHJlZ3Jlc3Npb25zIGZvdW5kLgo+IAo+ICAg
RXh0ZXJuYWwgVVJMOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1Bh
dGNod29ya18xNDM3NC8KCklnbm9yYW5jZSBpcyBibGlzcy4gUHVzaGVkLCBzbyB0aGUgb251cyBm
YWxscyBiYWNrIG9udG8gdGhlIEdFTQpmYWlsdXJlcy4gVGhhbmtzIGZvciB0aGUgZml4ZXMsCi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
