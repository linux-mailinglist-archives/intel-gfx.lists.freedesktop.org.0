Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D2C3B3B7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 13:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1519989124;
	Mon, 10 Jun 2019 11:04:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075DD89122;
 Mon, 10 Jun 2019 11:04:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 04:04:45 -0700
X-ExtLoop1: 1
Received: from jwwillia-mobl1.amr.corp.intel.com (HELO [10.252.8.43])
 ([10.252.8.43])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2019 04:04:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190610104654.20130-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e6e9d079-8da7-9cdd-cd72-e78501ea557c@linux.intel.com>
Date: Mon, 10 Jun 2019 12:04:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190610104654.20130-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engines: Skip trying to
 read a non-existent TIMESTAMP
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

Ck9uIDEwLzA2LzIwMTkgMTE6NDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgcGVyLWVuZ2lu
ZSBUSU1FU1RBTVAgKGF0IGxlYXN0IGF0IHRoZSBvZmZzZXQgSSBrbm93IGFib3V0KSBvbmx5IGNh
bWUKPiBpbnRvIGJlaW5nIHdpdGggZ2VuNi4gU28gc2tpcCB0aGUgdGVzdCBvbiBvbGRlciBnZW4g
YXMgdGhlIHJlc3VsdHMgYXJlCj4gZ2FyYmFnZS4KPiAKPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdz
LmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODc0Cj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICB0ZXN0cy9p
OTE1L2dlbV9jdHhfZW5naW5lcy5jIHwgMiArKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jIGIv
dGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYwo+IGluZGV4IDM4ZWEzNGQyMS4uM2VjYWRlNDE3
IDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMKPiArKysgYi90ZXN0
cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCj4gQEAgLTQxOSw2ICs0MTksOCBAQCBzdGF0aWMgdm9p
ZCBpbmRlcGVuZGVudChpbnQgaTkxNSkKPiAgIAlpbnQgdGltZWxpbmUgPSBzd19zeW5jX3RpbWVs
aW5lX2NyZWF0ZSgpOwo+ICAgCXVpbnQzMl90IGxhc3QsICptYXA7Cj4gICAKPiArCWlndF9yZXF1
aXJlKGdlbiA+PSA2KTsgLyogTm8gcGVyLWVuZ2luZSBUSU1FU1RBTVAgb24gb2xkZXIgZ2VuICov
Cj4gKwo+ICAgCXsKPiAgIAkJc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyMiBleGVjYnVm
ID0gewo+ICAgCQkJLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZyZXN1bHRzKSwKPiAK
ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoK
UmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
