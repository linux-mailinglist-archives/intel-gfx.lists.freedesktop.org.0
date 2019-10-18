Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E053DC5EA
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 15:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569936EB43;
	Fri, 18 Oct 2019 13:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83CC56EB43
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 13:22:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 06:22:42 -0700
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="186826037"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Oct 2019 06:22:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191018130703.31125-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <33e779c8-1085-6edd-7136-d8213ec30711@linux.intel.com>
Date: Fri, 18 Oct 2019 14:22:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191018130703.31125-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Add the mock engine to
 the gt->engine[]
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

Ck9uIDE4LzEwLzIwMTkgMTQ6MDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSZW1lbWJlciB0byBp
bmNsdWRlIHRoZSBuZXdseSBjcmVhdGVkIG1vY2sgZW5naW5lIGluIHRoZSBsaXN0IG9mCj4gYXZh
aWxhYmxlIGVuZ2luZXMgaW5zaWRlIHRoZSBndC4KPiAKPiBGaXhlczogYTUwMTM0YjE5ODNiICgi
ZHJtL2k5MTU6IE1ha2UgZm9yX2VhY2hfZW5naW5lX21hc2tlZCB3b3JrIG9uIGludGVsX2d0IikK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpSZXZpZXdlZC1i
eTogQ2hyaXMgV2kuLm9oIHdhaXQhXldeV15XIDopCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jIHwgNCArKysrCj4gICAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2Nr
X2VuZ2luZS5jCj4gaW5kZXggNzQ3ZjdjNzc5MGViLi4xMjNkYjJjM2Y5NTYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMKPiBAQCAtMjUzLDYgKzI1Myw3IEBAIHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKm1vY2tfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpp
OTE1LAo+ICAgCXNucHJpbnRmKGVuZ2luZS0+YmFzZS5uYW1lLCBzaXplb2YoZW5naW5lLT5iYXNl
Lm5hbWUpLCAiJXMiLCBuYW1lKTsKPiAgIAllbmdpbmUtPmJhc2UuaWQgPSBpZDsKPiAgIAllbmdp
bmUtPmJhc2UubWFzayA9IEJJVChpZCk7Cj4gKwllbmdpbmUtPmJhc2UubGVnYWN5X2lkeCA9IElO
VkFMSURfRU5HSU5FOwo+ICAgCWVuZ2luZS0+YmFzZS5pbnN0YW5jZSA9IGlkOwo+ICAgCWVuZ2lu
ZS0+YmFzZS5zdGF0dXNfcGFnZS5hZGRyID0gKHZvaWQgKikoZW5naW5lICsgMSk7Cj4gICAKPiBA
QCAtMjY3LDYgKzI2OCw5IEBAIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKm1vY2tfZW5naW5lKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+ICAgCWVuZ2luZS0+YmFzZS5yZXNldC5maW5p
c2ggPSBtb2NrX3Jlc2V0X2ZpbmlzaDsKPiAgIAllbmdpbmUtPmJhc2UuY2FuY2VsX3JlcXVlc3Rz
ID0gbW9ja19jYW5jZWxfcmVxdWVzdHM7Cj4gICAKPiArCWk5MTUtPmd0LmVuZ2luZVtpZF0gPSAm
ZW5naW5lLT5iYXNlOwo+ICsJaTkxNS0+Z3QuZW5naW5lX2NsYXNzWzBdW2lkXSA9ICZlbmdpbmUt
PmJhc2U7Cj4gKwo+ICAgCS8qIGZha2UgaHcgcXVldWUgKi8KPiAgIAlzcGluX2xvY2tfaW5pdCgm
ZW5naW5lLT5od19sb2NrKTsKPiAgIAl0aW1lcl9zZXR1cCgmZW5naW5lLT5od19kZWxheSwgaHdf
ZGVsYXlfY29tcGxldGUsIDApOwo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
