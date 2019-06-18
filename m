Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EBAC4A782
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 18:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C96F06E1E8;
	Tue, 18 Jun 2019 16:49:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 292BB6E1E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 16:49:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 09:49:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="357916538"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 09:49:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190618161951.28820-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ff62244c-4925-7f63-02eb-f8f5b2f0b88b@linux.intel.com>
Date: Tue, 18 Jun 2019 17:49:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618161951.28820-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Flush live_evict
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

Ck9uIDE4LzA2LzIwMTkgMTc6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBCZSBzdXJlIHRvIGNs
ZWFudXAgYWZ0ZXIgbGl2ZV9ldmljdCBieSBmbHVzaGluZyBhbnkgcmVzaWR1YWwgc3RhdGUgb2Zm
Cj4gdGhlIEdQVSB1c2luZyBpZ3RfZmx1c2hfdGVzdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5jIHwgMyArKysKPiAgIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2V2aWN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwo+IGluZGV4IDhjNjkxOThjN2U0ZS4uYTNjYjBhYWRl
NmYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dl
bV9ldmljdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
X2V2aWN0LmMKPiBAQCAtMjgsNiArMjgsNyBAQAo+ICAgCj4gICAjaW5jbHVkZSAiaTkxNV9zZWxm
dGVzdC5oIgo+ICAgCj4gKyNpbmNsdWRlICJpZ3RfZmx1c2hfdGVzdC5oIgo+ICAgI2luY2x1ZGUg
ImxpYl9zd19mZW5jZS5oIgo+ICAgI2luY2x1ZGUgIm1vY2tfZHJtLmgiCj4gICAjaW5jbHVkZSAi
bW9ja19nZW1fZGV2aWNlLmgiCj4gQEAgLTUwNSw2ICs1MDYsOCBAQCBzdGF0aWMgaW50IGlndF9l
dmljdF9jb250ZXh0cyh2b2lkICphcmcpCj4gICAKPiAgIAltdXRleF9sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKPiAgIG91dF9sb2NrZWQ6Cj4gKwlpZiAoaWd0X2ZsdXNoX3Rlc3QoaTkx
NSwgSTkxNV9XQUlUX0xPQ0tFRCkpCj4gKwkJZXJyID0gLUVJTzsKPiAgIAl3aGlsZSAocmVzZXJ2
ZWQpIHsKPiAgIAkJc3RydWN0IHJlc2VydmVkICpuZXh0ID0gcmVzZXJ2ZWQtPm5leHQ7Cj4gICAK
PiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
