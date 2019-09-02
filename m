Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA2AA58AB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 15:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 212BD89BA3;
	Mon,  2 Sep 2019 13:59:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51FFC89BA3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 13:59:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 06:59:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="382804295"
Received: from ekalugin-mobl2.ger.corp.intel.com (HELO [10.252.3.143])
 ([10.252.3.143])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2019 06:59:17 -0700
To: Andi Shyti <andi.shyti@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-10-chris@chris-wilson.co.uk>
 <20190805170844.GC19007@intel.intel>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3835b0af-734f-4bd5-538e-7a46b6227ffa@linux.intel.com>
Date: Mon, 2 Sep 2019 14:59:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805170844.GC19007@intel.intel>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 09/17] drm/i915: Push the ring creation
 flags to the backend
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA1LzA4LzIwMTkgMTg6MDgsIEFuZGkgU2h5dGkgd3JvdGU6Cj4gSGkgQ2hyaXMsCj4gCj4g
T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMDI6MzA6MjdQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+PiBQdXNoIHRoZSByaW5nIGNyZWF0aW9uIGZsYWdzIGZyb20gdGhlIG91dGVyIEdFTSBj
b250ZXh0IHRvIHRoZSBpbm5lcgo+PiBpbnRlbF9jb3RuZXh0IHRvIGF2b2lkIGFuIHVuc2lnaHRs
eSBiYWNrLXJlZmVyZW5jZSBmcm9tIGluc2lkZSB0aGUKPj4gYmFja2VuZC4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gCj4gbG9v
a3MgbmljZSEKPiAKPiBSZXZpZXdlZC1ieTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5j
b20+CgpJIHdpc2ggbXkgY29tcGxhaW50cyBvbiB0aGlzIHBhdGNoIHdlcmVuJ3QganVzdCBpZ25v
cmVkLgoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
