Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 282419B09B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 15:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 920866EC89;
	Fri, 23 Aug 2019 13:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E1CA6EC89
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 13:18:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 06:18:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,421,1559545200"; d="scan'208";a="263192693"
Received: from kmolchan-mobl1.ccr.corp.intel.com (HELO [10.252.3.177])
 ([10.252.3.177])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2019 06:18:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190823110147.31082-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <5991f61f-114a-382c-5cc9-b256c65d3d95@intel.com>
Date: Fri, 23 Aug 2019 14:18:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190823110147.31082-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Teach igt_gpu_fill_dw()
 to take intel_context
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjMvMDgvMjAxOSAxMjowMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEF2b2lkIGhhdmluZyB0
byBwYXNzIGFyb3VuZCAoY3R4LCBlbmdpbmUpIGV2ZXJ5d2hlcmUgYnkgcGFzc2luZyB0aGUKPiBh
Y3R1YWwgaW50ZWxfY29udGV4dCB3ZSBpbnRlbmQgdG8gdXNlLiBUb2RheSB3ZSBwcmVhY2ggdGhp
cyBsZXNzb24gdG8KPiBpZ3RfZ3B1X2ZpbGxfZHcgYW5kIGl0cyBjYWxsZXJzJyBjYWxsZXJzLgo+
IAo+IFRoZSBpbW1lZGlhdGUgYmVuZWZpdCBmb3IgdGhlIEdFTSBzZWxmdGVzdHMgaXMgdGhhdCB3
ZSBhaW0gdG8gdXNlIHRoZQo+IEdFTSBjb250ZXh0IGFzIHRoZSBjb250cm9sLCB0aGUgc291cmNl
IG9mIHRoZSBlbmdpbmVzIG9uIHdoaWNoIHRvIHRlc3QKPiB0aGUgR0VNIGNvbnRleHQuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1h
dHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
