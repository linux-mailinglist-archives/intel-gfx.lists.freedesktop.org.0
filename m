Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB05B3304D
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 14:53:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CCC088AA1;
	Mon,  3 Jun 2019 12:53:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E290788AA1;
 Mon,  3 Jun 2019 12:53:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:53:25 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO [10.251.93.246])
 ([10.251.93.246])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2019 05:53:24 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190527094611.31948-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <10a079f3-6f97-e414-ff34-5470d405ca87@linux.intel.com>
Date: Mon, 3 Jun 2019 13:53:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190527094611.31948-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] benchmarks/gem_wsim: Tidy
 manual sizeof VLA calculations
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI3LzA1LzIwMTkgMTA6NDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBjYW4gdXNlIG9m
ZnNldG9mIGZvciB0aGUgc2FtZSBlZmZlY3QsIG11Y2ggdGlkaWVyIHdpdGggbm8gZHVtbXkKPiBs
b2NhbHMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gLS0tCj4gICBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCAxNSArKysrKystLS0tLS0tLS0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+
IGluZGV4IGRiMTk5MjViMS4uYTc2ZmRiZmUyIDEwMDY0NAo+IC0tLSBhL2JlbmNobWFya3MvZ2Vt
X3dzaW0uYwo+ICsrKyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+IEBAIC0xNDQzLDIzICsxNDQz
LDIwIEBAIHNldF9jdHhfc3NldShzdHJ1Y3QgY3R4ICpjdHgsIHVpbnQ2NF90IHNsaWNlX21hc2sp
Cj4gICAKPiAgIHN0YXRpYyBzaXplX3Qgc2l6ZW9mX2xvYWRfYmFsYW5jZShpbnQgY291bnQpCj4g
ICB7Cj4gLQlzdHJ1Y3QgaTkxNV9jb250ZXh0X2VuZ2luZXNfbG9hZF9iYWxhbmNlICpwdHI7Cj4g
LQo+IC0JcmV0dXJuIHNpemVvZigqcHRyKSArIGNvdW50ICogc2l6ZW9mKHB0ci0+ZW5naW5lc1sw
XSk7Cj4gKwlyZXR1cm4gb2Zmc2V0b2Yoc3RydWN0IGk5MTVfY29udGV4dF9lbmdpbmVzX2xvYWRf
YmFsYW5jZSwKPiArCQkJZW5naW5lc1tjb3VudF0pOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgc2l6
ZV90IHNpemVvZl9wYXJhbV9lbmdpbmVzKGludCBjb3VudCkKPiAgIHsKPiAtCXN0cnVjdCBpOTE1
X2NvbnRleHRfcGFyYW1fZW5naW5lcyAqcHRyOwo+IC0KPiAtCXJldHVybiBzaXplb2YoKnB0cikg
KyBjb3VudCAqIHNpemVvZihwdHItPmVuZ2luZXNbMF0pOwo+ICsJcmV0dXJuIG9mZnNldG9mKHN0
cnVjdCBpOTE1X2NvbnRleHRfcGFyYW1fZW5naW5lcywKPiArCQkJZW5naW5lc1tjb3VudF0pOwo+
ICAgfQo+ICAgCj4gICBzdGF0aWMgc2l6ZV90IHNpemVvZl9lbmdpbmVzX2JvbmQoaW50IGNvdW50
KQo+ICAgewo+IC0Jc3RydWN0IGk5MTVfY29udGV4dF9lbmdpbmVzX2JvbmQgKnB0cjsKPiAtCj4g
LQlyZXR1cm4gc2l6ZW9mKCpwdHIpICsgY291bnQgKiBzaXplb2YocHRyLT5lbmdpbmVzWzBdKTsK
PiArCXJldHVybiBvZmZzZXRvZihzdHJ1Y3QgaTkxNV9jb250ZXh0X2VuZ2luZXNfYm9uZCwKPiAr
CQkJZW5naW5lc1tjb3VudF0pOwo+ICAgfQo+ICAgCj4gICAjZGVmaW5lIGFsbG9jYTAoc3opICh7
IHNpemVfdCBzel9fID0gKHN6KTsgbWVtc2V0KGFsbG9jYShzel9fKSwgMCwgc3pfXyk7IH0pCj4g
CgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
ClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
