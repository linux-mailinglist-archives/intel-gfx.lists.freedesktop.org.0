Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DA5CE087
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 13:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A1E6E581;
	Mon,  7 Oct 2019 11:33:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE3F6E581
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 11:33:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 04:33:55 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="186958852"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 04:33:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191002192258.1013-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191002192258.1013-1-matthew.d.roper@intel.com>
Date: Mon, 07 Oct 2019 14:33:51 +0300
Message-ID: <87y2xwhjs0.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Child device size remains
 unchanged through VBT 229
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

T24gV2VkLCAwMiBPY3QgMjAxOSwgTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4gd3JvdGU6Cj4gVGhlIGxhdGVzdCBkb2N1bWVudGVkIHZlcnNpb24gb2YgdGhlIFZCVCBpcyAy
MjksIGJ1dCBubyBmdXJ0aGVyIGRhdGEgaGFzCj4gYmVlbiBhZGRlZCB0byB0aGUgY2hpbGQgZGV2
aWNlIGRlZmluaXRpb24gaW4gYmxvY2sgMi4gIFVwZGF0ZSB0aGUgY2hpbGQKPiBkZXZpY2UgdmVy
c2lvbiB0ZXN0IHRvIGVsaW1pbmF0ZSB0aGUgIkV4cGVjdGVkIGNoaWxkIGRldmljZSBjb25maWcg
c2l6ZQo+IGZvciBWQlQgdmVyc2lvbiBYWFggbm90IGtub3duOyBhc3N1bWluZyAzOSIgZGVidWcg
bWVzc2FnZXMgZnJvbSB0aGUKPiBsb2dzLgo+Cj4gQnNwZWM6IDIwMTI0Cj4gQnNwZWM6IDIwMTU3
Cj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
ClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMiArLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gaW5kZXggMWRlZjU1MGM2OGM4Li45
NjI4YjQ4NWIxNzkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYwo+IEBAIC0xNjE1LDcgKzE2MTUsNyBAQCBwYXJzZV9nZW5lcmFsX2RlZmluaXRpb25zKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQlleHBlY3RlZF9zaXplID0gMzc7
Cj4gIAl9IGVsc2UgaWYgKGJkYi0+dmVyc2lvbiA8PSAyMTUpIHsKPiAgCQlleHBlY3RlZF9zaXpl
ID0gMzg7Cj4gLQl9IGVsc2UgaWYgKGJkYi0+dmVyc2lvbiA8PSAyMTYpIHsKPiArCX0gZWxzZSBp
ZiAoYmRiLT52ZXJzaW9uIDw9IDIyOSkgewo+ICAJCWV4cGVjdGVkX3NpemUgPSAzOTsKPiAgCX0g
ZWxzZSB7Cj4gIAkJZXhwZWN0ZWRfc2l6ZSA9IHNpemVvZigqY2hpbGQpOwoKLS0gCkphbmkgTmlr
dWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
