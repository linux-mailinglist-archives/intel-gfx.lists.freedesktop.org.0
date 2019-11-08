Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC1EF44B8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:37:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182AA6F929;
	Fri,  8 Nov 2019 10:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7121A6F929
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:37:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 02:37:40 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="206428478"
Received: from cstylian-mobl.ger.corp.intel.com (HELO [10.251.95.7])
 ([10.251.95.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 08 Nov 2019 02:37:39 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <15789d91-2a7d-373e-fefc-a0e5e09e1857@linux.intel.com>
Date: Fri, 8 Nov 2019 10:37:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191106154810.5843-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Handle
 i915_active_fence_set() with the same fence
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

Ck9uIDA2LzExLzIwMTkgMTU6NDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJZiB0aGUgY2FsbGVy
IHdhbnRzIHRvIG92ZXJ3cml0ZSB0aGUgY3VycmVudGx5IHRyYWNrZWQgZmVuY2UsIHdpdGgKPiBp
dHNlbGYsIGFzIGZhciBhcyB0aGUgdHJhY2tpbmcgaXMgY29uY2VybmVkIGl0IGlzIGEgbm8tb3As
IHNvIHNpbXBseQo+IGFsbG93IGl0LgoKVGhpcyBpcyBuZWVkZWQgZm9yIHNvbWUgb2YgdGhlIGZv
bGxvd2luZyBwYXRjaGVzIGluIHRoaXMgc2VyaWVzPwoKUmVnYXJkcywKClR2cnRrbwoKPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgfCA1ICsrKystCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2FjdGl2ZS5jCj4gaW5kZXggMjA3MzgzZGRhODRkLi5jZGU5ODQ3NDRmMjAgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKPiBAQCAtNzU5LDcgKzc1OSw5IEBAIF9faTkxNV9hY3Rp
dmVfZmVuY2Vfc2V0KHN0cnVjdCBpOTE1X2FjdGl2ZV9mZW5jZSAqYWN0aXZlLAo+ICAgCj4gICAJ
cHJldiA9IHJjdV9kZXJlZmVyZW5jZV9wcm90ZWN0ZWQoYWN0aXZlLT5mZW5jZSwgYWN0aXZlX2lz
X2hlbGQoYWN0aXZlKSk7Cj4gICAJaWYgKHByZXYpIHsKPiAtCQlHRU1fQlVHX09OKHByZXYgPT0g
ZmVuY2UpOwo+ICsJCWlmICh1bmxpa2VseShwcmV2ID09IGZlbmNlKSkKPiArCQkJZ290byB1bmxv
Y2s7Cj4gKwo+ICAgCQlzcGluX2xvY2tfbmVzdGVkKHByZXYtPmxvY2ssIFNJTkdMRV9ERVBUSF9O
RVNUSU5HKTsKPiAgIAkJX19saXN0X2RlbF9lbnRyeSgmYWN0aXZlLT5jYi5ub2RlKTsKPiAgIAkJ
c3Bpbl91bmxvY2socHJldi0+bG9jayk7IC8qIHNlcmlhbGlzZSB3aXRoIHByZXYtPmNiX2xpc3Qg
Ki8KPiBAQCAtNzgxLDYgKzc4Myw3IEBAIF9faTkxNV9hY3RpdmVfZmVuY2Vfc2V0KHN0cnVjdCBp
OTE1X2FjdGl2ZV9mZW5jZSAqYWN0aXZlLAo+ICAgCXJjdV9hc3NpZ25fcG9pbnRlcihhY3RpdmUt
PmZlbmNlLCBmZW5jZSk7Cj4gICAJbGlzdF9hZGRfdGFpbCgmYWN0aXZlLT5jYi5ub2RlLCAmZmVu
Y2UtPmNiX2xpc3QpOwo+ICAgCj4gK3VubG9jazoKPiAgIAlzcGluX3VubG9ja19pcnFyZXN0b3Jl
KGZlbmNlLT5sb2NrLCBmbGFncyk7Cj4gICAKPiAgIAlyZXR1cm4gcHJldjsKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
