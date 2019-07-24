Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F22672BCA
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 11:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE8B89261;
	Wed, 24 Jul 2019 09:54:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF1C6E4ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 09:54:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 02:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="368738458"
Received: from jsartini-mobl.ger.corp.intel.com (HELO [10.252.0.141])
 ([10.252.0.141])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jul 2019 02:54:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190723183842.20372-1-chris@chris-wilson.co.uk>
 <47e0d7f4-71ac-ebb4-41b6-76a71fe59156@linux.intel.com>
 <156396045850.31349.7075365521794770626@skylake-alporthouse-com>
 <156396103953.31349.6435944267611610210@skylake-alporthouse-com>
 <156396166522.31349.11458519596519696428@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <dd6d7ab1-0814-5708-e7e0-0f307469cf88@linux.intel.com>
Date: Wed, 24 Jul 2019 10:54:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156396166522.31349.11458519596519696428@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915: Move aliasing_ppgtt
 underneath its i915_ggtt
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

Ck9uIDI0LzA3LzIwMTkgMTA6NDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wNy0yNCAxMDozNzoxOSkKPj4gUXVvdGluZyBDaHJpcyBXaWxzb24gKDIw
MTktMDctMjQgMTA6Mjc6MzgpCj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTI0
IDA5OjU2OjM0KQo+Pj4+Cj4+Pj4gT24gMjMvMDcvMjAxOSAxOTozOCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+Pj4+PiArc3RhdGljIGludCBfX2NvbnRleHRfcGluX3BwZ3R0KHN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZSkKPj4+Pj4gICAgewo+Pj4+PiAgICAgICAgc3RydWN0IGk5MTVfYWRkcmVzc19z
cGFjZSAqdm07Cj4+Pj4+ICAgICAgICBpbnQgZXJyID0gMDsKPj4+Pj4gICAgCj4+Pj4+IC0gICAg
IHZtID0gY3R4LT52bSA/OiAmY3R4LT5pOTE1LT5tbS5hbGlhc2luZ19wcGd0dC0+dm07Cj4+Pj4+
ICsgICAgIHZtID0gdm1fYWxpYXMoY2UpOwo+Pj4+PiAgICAgICAgaWYgKHZtKQo+Pj4+Cj4+Pj4g
Q2FuJ3QgcmV0dXJuIE5VTEwgaXQgc2VlbXMuIChTYW1lIGJlbG93LikKPj4+Cj4+PiBBcmUgeW91
IHNvIHN1cmU/Cj4+Pgo+Pj4gY2UtPmdlbV9jb250ZXh0LT52bSBpcyBvbmx5ICFOVUxMIGlmIHRo
ZXJlIGlzIGEgZnVsbC1wcGd0dAo+Pj4gJmdndHQtPmFsaWFzLT52bSBpcyBvbmx5ICFOVUxMIGlm
IHRoZXJlIGlzIGFuIGFsaWFzaW5nLXBwZ3R0Cj4+Pgo+Pj4gVGhlcmUgbWF5IGJlIGNvbnRleHRz
IHdpdGggbmVpdGhlciAoZ2VuNCwgZ2VuNSkuCj4+Cj4+IEl0J3Mgbm90IHVudGlsIHRoZSBuZXh0
IHBhdGNoIHdoZXJlIHdlIGFsd2F5cyBzZXQgY2UtPnZtIHdpbGwgaXQgYmUKPj4gbm9uLU5VTEwu
IFBvaW50IHRha2VuLgo+IAo+IEV4Y2VwdCwgd2UgcHVycG9zZWx5IHJlcGxhY2UgdGhlIGk5MTVf
Z2d0dCBjZS0+dm0gd2l0aCBpdHMgYWxpYXMsIHdoaWNoCj4gbWF5IHN0aWxsIGJlIE5VTEwuIChX
aGljaCBpcyBmaW5lIGFzIHRoYXQgaXMgcGVybWEtcGlubmVkIGFuZCB3ZSBkb24ndAo+IG5lZWQg
dG8gZmlkZGxlLikKCkkgc2F3IGFkZHJlc3Mgb2YgYW5kIHRob3VnaCAiaXQgY2FuJ3QgYmUgTlVM
TCIsIGJ1dCBmb3Jnb3QgYWJvdXQgdHJpY2tzIAp3aXRoIG1lbWJlciBhdCBvZmZzZXQgemVyby4u
IG52bS4uIERyb3AgYSBjb21tZW50IGlmIHlvdSBmZWVsIGxpa2UgaXQuIApBdCBsZWFzdCBpdCBp
cyBub3cgY29uc29saWRhdGVkIHNvIHRoZXJlIGlzIGEgcGxhY2UuCgpSZXZpZXdlZC1ieTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
