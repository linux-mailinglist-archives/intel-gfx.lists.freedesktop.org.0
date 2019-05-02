Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3EE11A43
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6205389622;
	Thu,  2 May 2019 13:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622E289622
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:34:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 06:34:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,421,1549958400"; d="scan'208";a="140672024"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 02 May 2019 06:34:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8c7b0892-d100-f64b-37c0-e601471708a8@linux.intel.com>
Date: Thu, 2 May 2019 14:34:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501114541.10077-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915: Stop spinning for DROP_IDLE
 (debugfs/i915_drop_caches)
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

Ck9uIDAxLzA1LzIwMTkgMTI6NDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB0aGUgdXNlciBp
cyByYWNpbmcgYSBjYWxsIHRvIGRlYnVnZnMvaTkxNV9kcm9wX2NhY2hlcyB3aXRoIG9uZ29pbmcK
PiBzdWJtaXNzaW9uIGZyb20gYW5vdGhlciB0aHJlYWQvcHJvY2Vzcywgd2UgbWF5IG5ldmVyIGVu
ZCB1cCBpZGxpbmcgdGhlCj4gR1BVIGFuZCBiZSB1bmludGVycnVwdGlibHkgc3Bpbm5pbmcgaW4g
ZGVidWdmcy9pOTE1X2Ryb3BfY2FjaGVzIHRyeWluZwo+IHRvIGNhdGNoIGFuIGlkbGUgbW9tZW50
Lgo+IAo+IEp1c3QgZmx1c2ggdGhlIHdvcmsgb25jZSwgdGhhdCBzaG91bGQgYmUgZW5vdWdoIHRv
IHBhcmsgdGhlIHN5c3RlbSB1bmRlcgo+IGNvcnJlY3QgY29uZGl0aW9ucy4gT3V0c2lkZSBvZiB0
aG9zZSB3ZSBlaXRoZXIgaGF2ZSBhIGRyaXZlciBidWcgb3IgdGhlCj4gdXNlciBpcyByYWNpbmcg
dGhlbXNlbHZlcy4gU2FkbHksIGJlY2F1c2UgdGhlIHVzZXIgbWF5IGJlIHByb3Zva2luZyB0aGUK
PiB1bndhbnRlZCBzaXR1YXRpb24gd2UgY2FuJ3QgcHV0IGEgd2FybiBoZXJlIHRvIGF0dHJhY3Qg
YXR0ZW50aW9uIHRvIGEKPiBwcm9iYWJsZSBidWcuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDQgKy0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCj4gaW5kZXggN2U4ODk4ZDBiNzhiLi4yZWNlZmFjYjFlNjYgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0zOTMzLDkgKzM5MzMsNyBAQCBpOTE1X2Ryb3BfY2Fj
aGVzX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQo+ICAgCWZzX3JlY2xhaW1fcmVsZWFzZShHRlBf
S0VSTkVMKTsKPiAgIAo+ICAgCWlmICh2YWwgJiBEUk9QX0lETEUpIHsKPiAtCQlkbyB7Cj4gLQkJ
CWZsdXNoX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93b3JrKTsKPiAtCQl9IHdoaWxl
IChSRUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKTsKPiArCQlmbHVzaF9kZWxheWVkX3dvcmsoJmk5
MTUtPmdlbS5yZXRpcmVfd29yayk7Cj4gICAJCWZsdXNoX3dvcmsoJmk5MTUtPmdlbS5pZGxlX3dv
cmspOwo+ICAgCX0KPiAgIAo+IAoKV2hhdCB3ZXJlIHN1cHBvc2VkIHRvIGJlIHNlbWFudGljcyBv
ZiBEUk9QX0lETEU/IE5vdyBpdCBzZWVtcyByYXRoZXIgCndlYWsuIFNob3VsZCBpdCBmb3IgaW5z
dGFuY2UgYWxzbyBpbXBseSBEUk9QX0FDVElWRT8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
