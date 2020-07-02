Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BEB212490
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 15:26:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD626EAE1;
	Thu,  2 Jul 2020 13:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D826B6EAE1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 13:26:19 +0000 (UTC)
IronPort-SDR: dmtxsaW/agVxytnfIAjHc3jAYH4uEYrUoxq1Bqv0n7qUD4o12OPyYsaEm1fi1v1pv2I123Nlge
 K1uhvm/F5I8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="146891475"
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="146891475"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 06:26:19 -0700
IronPort-SDR: lsA6HaiLEVRCcOdH91ZIjuVYbnO6+MxW+4BFdJ0jV0zBwt8EUvrJaii6cwwYqFoMB6JDqU8e2J
 hJsKBDf8+8EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,304,1589266800"; d="scan'208";a="267074776"
Received: from lcoutoda-mobl1.ger.corp.intel.com (HELO [10.252.39.18])
 ([10.252.39.18])
 by fmsmga008.fm.intel.com with ESMTP; 02 Jul 2020 06:26:18 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-26-maarten.lankhorst@linux.intel.com>
 <20200624110515.454665-1-maarten.lankhorst@linux.intel.com>
 <b32f5114-8268-c03c-967d-0348f3bdab4b@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <5dcfeaeb-7c6c-36be-b01e-a69ec5627fb8@linux.intel.com>
Date: Thu, 2 Jul 2020 15:26:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <b32f5114-8268-c03c-967d-0348f3bdab4b@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill context before taking
 ctx->mutex
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMzAtMDYtMjAyMCBvbSAxNjoxNiBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMjQv
MDYvMjAyMCAxMjowNSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IEtpbGxpbmcgY29udGV4
dCBiZWZvcmUgdGFraW5nIGN0eC0+bXV0ZXggZml4ZXMgYSBoYW5nIGluCj4+IGdlbV9jdHhfcGVy
c2lzdGVuY2UuY2xvc2UtcmVwbGFjZS1yYWNlLCB3aGVyZSBsdXRfY2xvc2UKPj4gdGFrZXMgb2Jq
LT5yZXN2LmxvY2sgd2hpY2ggaXMgYWxyZWFkeSBoZWxkIGJ5IGV4ZWNidWYsCj4+IGNhdXNpbmcg
YSBzdGFsbGluZyBpbmRlZmluaXRlbHkuCj4KPiBJZiB0aGlzIGlzIHRoZSBjb25zZXF1ZW5jZSBv
ZiBpbnZlcnRpbmcgdGhlIGxvY2tpbmcgb3JkZXIgSSB0aGluayB5b3UgbmVlZCB0byBtb3ZlIHRo
ZSBmaXggZWFybGllciBpbiB0aGUgc2VyaWVzLCB0byBwcmVjZWRlIHRoZSBwYXRjaCB3aGljaCBj
cmVhdGVzIHRoZSBpbnZlcnNpb24uIE90aGVyd2lzZSBBRkFJQ1QgdGhlIHJlLW9yZGVyIG9mIGtp
bGxfY29udGV4dCB2cyBsdXRfY2xvc2Ugc2VlbXMgZmluZS4gCgpZZWFoLCBpdCB3YXMganVzdCBh
IGJ1Z2ZpeCBJIGZvdW5kIHdoZW4gbG9va2luZyBhdCB0aGUgY29kZSwgaWYgeW91IHJldmlldyBp
dCBJIGNhbiBwdXNoIGl0IG5vdyBzbyBJIGRvbid0IGhhdmUgdG8gcmVzZW5kLsKgIDopCgp+TWFh
cnRlbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
