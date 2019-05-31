Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17227309F7
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 10:15:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1997C89259;
	Fri, 31 May 2019 08:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6A4589259
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 08:15:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 01:15:41 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.94.174])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2019 01:15:39 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190530121311.6794-1-chris@chris-wilson.co.uk>
References: <20190530121311.6794-1-chris@chris-wilson.co.uk>
Message-ID: <155929053870.5971.7969680708128962601@gepeat-mobl.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 31 May 2019 11:15:38 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Always enable mmio debugging for
 CI
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
Cc: matthew.auld@intel.com, Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMzAgMTU6MTM6MTEpCj4gVGhlIGRlZmF1bHQg
YmVoYXZpb3VyIGlzIHRvIHBlcmlvZGljYWxseSBjaGVjayBmb3IgYSBtbWlvIGFjY2VzcyBlcnJv
ciwKPiBhbmQgb25jZSBkZXRlY3RlZCBlbmFibGUgbW1pbyBhY2Nlc3MgY2hlY2tpbmcuIEhvd2V2
ZXIgdGhpcyBpcyB1c2VsZXNzCj4gaWYgdGhlIGVycm9yIG9ubHkgb2NjdXJzIG9uY2UuCj4gCj4g
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAaW50ZWwuY29tPgoKPFNOSVA+Cgo+IEBA
IC00MSw2ICs0MiwxNyBAQCBjb25maWcgRFJNX0k5MTVfREVCVUcKPiAgCj4gICAgICAgICAgICBJ
ZiBpbiBkb3VidCwgc2F5ICJOIi4KPiAgCj4gK2NvbmZpZyBEUk1fSTkxNV9ERUJVR19NTUlPCj4g
KyAgICAgICAgYm9vbCAiQWx3YXlzIGluc2VydCBleHRyYSBjaGVja3MgYXJvdW5kIG1taW8gYWNj
ZXNzIgo+ICsgICAgICAgIGRlZmF1bHQgbgo+ICsgICAgICAgIGhlbHAKPiArICAgICAgICAgQWx3
YXlzIGVuYWJsZXMgdGhlIGV4dHJhIHNhbml0eSBjaGVja3MgKGV4dHJhIHJlZ2lzdGVyIHJlYWRz
KQo+ICsgICAgICAgICBhcm91bmQgZXZlcnkgbW1pbyAocmVnaXN0ZXIpIGFjY2VzcyB0aGF0IHdp
bGwgc2xvdyB0aGUgc3lzdGVtIGRvd24uCgpJbmRlbnQgb2ZmIGJ5IG9uZSBzcGFjZS4gTWF5YmUg
YWxzbyB3b3J0aCBtZW50aW9uaW5nIHRoYXQgdGhpcyBjYW4gc3RpbGwgYmUKZGlzYWJsZWQgd2l0
aCAubW1pb19kZWJ1Zz0wPwoKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFt
cy5oCj4gQEAgLTMzLDYgKzMzLDEyIEBAIHN0cnVjdCBkcm1fcHJpbnRlcjsKPiAgI2RlZmluZSBF
TkFCTEVfR1VDX1NVQk1JU1NJT04gICAgICAgICAgQklUKDApCj4gICNkZWZpbmUgRU5BQkxFX0dV
Q19MT0FEX0hVQyAgICAgICAgICAgIEJJVCgxKQo+ICAKPiArI2lmIElTX0VOQUJMRUQoQ09ORklH
X0RSTV9JOTE1X0RFQlVHX01NSU8pCj4gKyNkZWZpbmUgTU1JT19ERUJVR19ERkwgLTEKPiArI2Vs
c2UKPiArI2RlZmluZSBNTUlPX0RFQlVHX0RGTCAwCj4gKyNlbmRpZgoKSnVzdCBjYWxsIGl0IF9E
RUZBVUxUIGZvciBjbGFyaXR5LgoKV2l0aCBhYm92ZSBmaXhlZDoKClJldmlld2VkLWJ5OiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBK
b29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
