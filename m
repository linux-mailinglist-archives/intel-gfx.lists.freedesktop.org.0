Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 936A3F284C
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 08:45:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 025C26EEB4;
	Thu,  7 Nov 2019 07:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27A666EEB4
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 07:45:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 23:45:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,277,1569308400"; d="scan'208";a="285921776"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 06 Nov 2019 23:45:14 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 5CFD15C02E1; Thu,  7 Nov 2019 09:45:08 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191106223410.30334-1-chris@chris-wilson.co.uk>
References: <20191106223410.30334-1-chris@chris-wilson.co.uk>
Date: Thu, 07 Nov 2019 09:45:08 +0200
Message-ID: <87a798nn97.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Cleanup heartbeat systole first
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQmVmb3Jl
IHdlIGdyYWIgdGhlIGVuZ2luZSB3YWtlcmVmLCB0aWR5IHVwIHRoZSBwcmV2aW91cyBoZWFydGJl
YXQKPiByZXF1ZXN0LiBJZiB3ZSB0aGVuIGFib3J0IGJlY2F1c2UgdGhlIGVuZ2luZSBwb3dlcndl
bGwgaXMgb2ZmLCB3ZSBlbnN1cmUKPiB0aGUgcmVxdWVzdCBpcyBmcmVlZCBhcyB3ZSBrbm93IHdl
IHdpbGwgbm90IGhhdmUgZnJlZWQgaXQgd2hlbgo+IGNhbmNlbGxpbmcgdGhlIHdvcmsgKGFzIHRo
ZSB3b3JrIGlzIHJ1bm5pbmchKS4KPgo+IEZpeGVzOiA4NDFlODY3Mjg2MTUgKCJkcm0vaTkxNS9n
dDogT25seSBkcm9wIGhlYXJ0YmVhdC5zeXN0b2xlIGlmIHRoZSBzb2xlIG93bmVyIikKPiBSZWZl
cmVuY2VzOiAwNTgxNzllNzJlMDkgKCJkcm0vaTkxNS9ndDogUmVwbGFjZSBoYW5nY2hlY2sgYnkg
aGVhcnRiZWF0cyIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2hlYXJ0YmVhdC5jIHwgNiArKystLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfaGVhcnRiZWF0LmMKPiBpbmRleCAwNmFhMTRjN2FhOGMuLmM5MWZkNGU0YWYyOSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRi
ZWF0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfaGVhcnRi
ZWF0LmMKPiBAQCAtNjMsMTUgKzYzLDE1IEBAIHN0YXRpYyB2b2lkIGhlYXJ0YmVhdChzdHJ1Y3Qg
d29ya19zdHJ1Y3QgKndyaykKPiAgCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGVuZ2luZS0+
a2VybmVsX2NvbnRleHQ7Cj4gIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiAgCj4gLQlpZiAo
IWludGVsX2VuZ2luZV9wbV9nZXRfaWZfYXdha2UoZW5naW5lKSkKPiAtCQlyZXR1cm47Cj4gLQo+
ICAJcnEgPSBlbmdpbmUtPmhlYXJ0YmVhdC5zeXN0b2xlOwo+ICAJaWYgKHJxICYmIGk5MTVfcmVx
dWVzdF9jb21wbGV0ZWQocnEpKSB7Cj4gIAkJaTkxNV9yZXF1ZXN0X3B1dChycSk7Cj4gIAkJZW5n
aW5lLT5oZWFydGJlYXQuc3lzdG9sZSA9IE5VTEw7Cj4gIAl9Cj4gIAo+ICsJaWYgKCFpbnRlbF9l
bmdpbmVfcG1fZ2V0X2lmX2F3YWtlKGVuZ2luZSkpCj4gKwkJcmV0dXJuOwo+ICsKPiAgCWlmIChp
bnRlbF9ndF9pc193ZWRnZWQoZW5naW5lLT5ndCkpCj4gIAkJZ290byBvdXQ7Cj4gIAo+IC0tIAo+
IDIuMjQuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
