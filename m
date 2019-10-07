Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DEFCE9FC
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 19:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13DC89E86;
	Mon,  7 Oct 2019 17:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B864D89E86
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 17:00:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 10:00:33 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344788152"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Oct 2019 10:00:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191006165002.30312-1-chris@chris-wilson.co.uk>
 <20191006165002.30312-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6ae55e8a-acc3-3ef6-77d9-2fc9e66dd758@linux.intel.com>
Date: Mon, 7 Oct 2019 18:00:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191006165002.30312-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915/gt: Treat a busy timeline as
 'active' while waiting
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

Ck9uIDA2LzEwLzIwMTkgMTc6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB3ZSBjYW5ub3Qg
Y2xhaW0gdGhlIHRpbWVsaW5lLT5tdXRleCB3aGlsZSBwcmVwYXJpbmcgZm9yIGEgd2FpdCBvbiBp
dCwKPiB3ZSBoYXZlIHRvIHNraXAgdGhlIHRpbWVsaW5lLiBJbiBkb2luZyBzbywgdHJlYXQgaXQg
YXMgYWN0aXZlIHNvIHRoYXQKPiB1bmRlciBhIGludGVsX2d0X3dhaXRfZm9yX2lkbGUoKSBsb29w
LCB3ZSByZXBlYXQgdGhlIHdhaXQgYWZ0ZXIKPiBzY2hlZHVsaW5nIGF3YXkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jIHwgNCArKystCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZXF1ZXN0cy5jCj4gaW5kZXggZDY5ZTc4NDc4ZWVhLi5j
YTYwNmI3OWZkNWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcmVxdWVzdHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3Jl
cXVlc3RzLmMKPiBAQCAtMzQsOCArMzQsMTAgQEAgbG9uZyBpbnRlbF9ndF9yZXRpcmVfcmVxdWVz
dHNfdGltZW91dChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBsb25nIHRpbWVvdXQpCj4gICAKPiAgIAlz
cGluX2xvY2tfaXJxc2F2ZSgmdGltZWxpbmVzLT5sb2NrLCBmbGFncyk7Cj4gICAJbGlzdF9mb3Jf
ZWFjaF9lbnRyeV9zYWZlKHRsLCB0biwgJnRpbWVsaW5lcy0+YWN0aXZlX2xpc3QsIGxpbmspIHsK
PiAtCQlpZiAoIW11dGV4X3RyeWxvY2soJnRsLT5tdXRleCkpCj4gKwkJaWYgKCFtdXRleF90cnls
b2NrKCZ0bC0+bXV0ZXgpKSB7Cj4gKwkJCWFjdGl2ZV9jb3VudCsrOyAvKiByZXBvcnQgYnVzeSB0
byBjYWxsZXIsIHRyeSBhZ2Fpbj8gKi8KPiAgIAkJCWNvbnRpbnVlOwo+ICsJCX0KPiAgIAo+ICAg
CQlpbnRlbF90aW1lbGluZV9nZXQodGwpOwo+ICAgCQlHRU1fQlVHX09OKCF0bC0+YWN0aXZlX2Nv
dW50KTsKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
