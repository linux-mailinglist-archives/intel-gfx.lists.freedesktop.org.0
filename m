Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C503B592
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DFEE89135;
	Mon, 10 Jun 2019 13:00:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E1D68911F;
 Mon, 10 Jun 2019 13:00:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 06:00:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,575,1557212400"; d="scan'208";a="183420452"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jun 2019 06:00:00 -0700
Received: from [10.237.72.73] (mperes-desk.fi.intel.com [10.237.72.73])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6E44458049E;
 Mon, 10 Jun 2019 05:59:59 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190610125550.20870-1-chris@chris-wilson.co.uk>
From: Martin Peres <martin.peres@linux.intel.com>
Message-ID: <5e1a5c92-3342-16f8-b72e-7f1cf9c366f4@linux.intel.com>
Date: Mon, 10 Jun 2019 15:59:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610125550.20870-1-chris@chris-wilson.co.uk>
Content-Language: en-PH
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Disregard forked
 subtests on ICL for reasons
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMDYvMjAxOSAxNTo1NSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IE5vdGhpbmcgdG8gc2Vl
IGhlcmUsIHBsZWFzZSBtb3ZlIGFsb25nLgo+IAo+IFhYWDogVXBkYXRlIHdpdGggYmV0dGVyIGJ1
Z3ppbGxhCgpodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4
ODIKCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNzcxMyNjMTI1Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgo+IENjOiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRl
bC5jb20+Cj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgfCAzICsrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUv
Z2VtX21tYXBfZ3R0LmMgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCj4gaW5kZXggMDM0NjU4
ZTY0Li5jM2NiNWRiMmQgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYwo+
ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiBAQCAtNjU2LDYgKzY1Niw5IEBAIHRl
c3RfaHVnZV9jb3B5KGludCBmZCwgaW50IGh1Z2UsIGludCB0aWxpbmdfYSwgaW50IHRpbGluZ19i
LCBpbnQgbmNwdXMpCj4gIAl1aW50NjRfdCBodWdlX29iamVjdF9zaXplLCBpOwo+ICAJdW5zaWdu
ZWQgbW9kZSA9IENIRUNLX1JBTTsKPiAgCj4gKwlpZ3RfZmFpbF9vbl9mKGludGVsX2dlbihkZXZp
ZCkgPj0gMTEgJiYgbmNwdXMgPiAxLAo+ICsJCSAgICAgICJQbGVhc2UgYWRqdXN0IHlvdXIgZXhw
ZWN0YXRpb25zLCBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MDc3MTMjYzEyNVxuIik7Cj4gKwo+ICAJc3dpdGNoIChodWdlKSB7Cj4gIAljYXNlIC0yOgo+ICAJ
CWh1Z2Vfb2JqZWN0X3NpemUgPSBnZW1fbWFwcGFibGVfYXBlcnR1cmVfc2l6ZSgpIC8gNDsKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
