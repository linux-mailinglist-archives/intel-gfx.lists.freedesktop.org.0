Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FA448529
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 16:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A198921E;
	Mon, 17 Jun 2019 14:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E918921E
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 14:21:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 07:21:56 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2019 07:21:55 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190617100917.13110-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <85dae10c-428f-eabf-93ca-4eded1253f12@linux.intel.com>
Date: Mon, 17 Jun 2019 15:21:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617100917.13110-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Reduce verbosity on log
 overflows
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

Ck9uIDE3LzA2LzIwMTkgMTE6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB0aGUgdXNlciBp
cyBjbGVhcmluZyB0aGUgbG9nIGJ1ZmZlciB0b28gc2xvd2x5LCB3ZSBvdmVyZmxvdy4gQXMgdGhp
cwo+IGlzIGFuIGV4cGVjdGVkIGNvbmRpdGlvbiwgYW5kIHRoZSBkcml2ZXIgdHJpZXMgdG8gaGFu
ZGxlIGl0LCByZWR1Y2UgdGhlCj4gZXJyb3IgbWVzc2FnZSBkb3duIHRvIGEgbm90aWNlLgo+IAo+
IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0x
MTA4MTcKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+
Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfbG9nLmMgfCA0ICsrKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3VjX2xvZy5jCj4gaW5kZXggYmYxNDQ2NjI5NzAzLi5lM2I4M2VjYjkwYjUg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2xvZy5jCj4gQEAgLTIwOCw3ICsyMDgs
OSBAQCBzdGF0aWMgYm9vbCBndWNfY2hlY2tfbG9nX2J1Zl9vdmVyZmxvdyhzdHJ1Y3QgaW50ZWxf
Z3VjX2xvZyAqbG9nLAo+ICAgCQkJLyogYnVmZmVyX2Z1bGxfY250IGlzIGEgNCBiaXQgY291bnRl
ciAqLwo+ICAgCQkJbG9nLT5zdGF0c1t0eXBlXS5zYW1wbGVkX292ZXJmbG93ICs9IDE2Owo+ICAg
CQl9Cj4gLQkJRFJNX0VSUk9SX1JBVEVMSU1JVEVEKCJHdUMgbG9nIGJ1ZmZlciBvdmVyZmxvd1xu
Iik7Cj4gKwo+ICsJCWRldl9ub3RpY2VfcmF0ZWxpbWl0ZWQoZ3VjX3RvX2k5MTUobG9nX3RvX2d1
Yyhsb2cpKS0+ZHJtLmRldiwKPiArCQkJCSAgICAgICAiR3VDIGxvZyBidWZmZXIgb3ZlcmZsb3dc
biIpOwo+ICAgCX0KPiAgIAo+ICAgCXJldHVybiBvdmVyZmxvdzsKPiAKClJldmlld2VkLWJ5OiBU
dnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKTWF5YmUgd2UgY291bGQg
ZXZlbiBnbyBkZWJ1ZywgYWx0aG91Z2ggSSBub3Qgc3VyZSBpZiB1c2Vyc3BhY2UgaXMgCmV4cGVj
dGVkIHRvIGxvb2sgYXQgZG1lc2cgdG8gZGV0ZWN0IG92ZXJmbG93cyBvciBpZiB0aGUgdGhpbmcg
aGFzIHNvbWUgCm1hcmtlciBpdCB3cml0ZXMgaW50byB0aGUgZmlsZSBpbiB0aGF0IGNhc2UuIEkg
ZG9uJ3Qgc2VlIGl0IHNvIHRoYXQncyAKcHJvYmFibHkgYSBzbGlnaHQgZmxhdy4KClJlZ2FyZHMs
CgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
