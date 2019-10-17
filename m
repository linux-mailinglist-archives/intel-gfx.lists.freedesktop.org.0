Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C0EDAE90
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 15:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880506EA9F;
	Thu, 17 Oct 2019 13:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0846EA9D;
 Thu, 17 Oct 2019 13:38:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 06:38:30 -0700
X-IronPort-AV: E=Sophos;i="5.67,307,1566889200"; d="scan'208";a="186490856"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 17 Oct 2019 06:38:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191016185642.16181-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cdfe6069-d178-a448-72f2-a87a786f8cc8@linux.intel.com>
Date: Thu, 17 Oct 2019 14:38:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191016185642.16181-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_persistent_relocs:
 Manage the domain for the GGTT access
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

Ck9uIDE2LzEwLzIwMTkgMTk6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTaW5jZSB0aGUgR0dU
VCBmYXVsdCB3aWxsIG92ZXJsYXAgd2l0aCB0aGUgcHdyaXRlIGFjY2VzcywgdGhlcmUgaXMgbm8K
PiBpbXBsaWNpdCBtb21lbnQgYXQgd2hpY2ggdGhlIGtlcm5lbCB3aWxsIGF1dG9tYWdpY2FsbHkg
Zmx1c2ggdGhlIGJhY2tpbmcKPiBzdG9yZS4gVXNlcnNwYWNlIGhhcyB0byBiZSBleHBsaWNpdCBp
biBpdHMgZG9tYWluIGNvbnRyb2wsIG9yIGRvIGl0c2VsZi4KPiAKPiBCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMDM3Cj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICB0
ZXN0cy9pOTE1L2dlbV9wZXJzaXN0ZW50X3JlbG9jcy5jIHwgMyArKysKPiAgIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fcGVy
c2lzdGVudF9yZWxvY3MuYyBiL3Rlc3RzL2k5MTUvZ2VtX3BlcnNpc3RlbnRfcmVsb2NzLmMKPiBp
bmRleCAyYWI3MDkxYWQuLjIwZWUwMzAyNyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9w
ZXJzaXN0ZW50X3JlbG9jcy5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fcGVyc2lzdGVudF9yZWxv
Y3MuYwo+IEBAIC0yMjQsOCArMjI0LDExIEBAIHN0YXRpYyB2b2lkIGRvX3Rlc3QoaW50IGZkLCBi
b29sIGZhdWx0aW5nX3JlbG9jKQo+ICAgCj4gICAJCXJlbG9jc19ib19oYW5kbGVbaV0gPSBnZW1f
Y3JlYXRlKGZkLCA0MDk2KTsKPiAgIAkJZ2VtX3dyaXRlKGZkLCByZWxvY3NfYm9faGFuZGxlW2ld
LCAwLCByZWxvYywgc2l6ZW9mKHJlbG9jKSk7Cj4gKwo+ICAgCQlndHRfcmVsb2NzX3B0cltpXSA9
IGdlbV9tbWFwX19ndHQoZmQsIHJlbG9jc19ib19oYW5kbGVbaV0sIDQwOTYsCj4gICAJCQkJCQkg
IFBST1RfUkVBRCB8IFBST1RfV1JJVEUpOwo+ICsJCWdlbV9zZXRfZG9tYWluKGZkLCByZWxvY3Nf
Ym9faGFuZGxlW2ldLAo+ICsJCQkgICAgICAgSTkxNV9HRU1fRE9NQUlOX0dUVCwgSTkxNV9HRU1f
RE9NQUlOX0dUVCk7Cj4gICAJfQo+ICAgCj4gICAJLyogcmVwZWF0IG11c3QgYmUgc21hbGxlciB0
aGFuIDQwOTYvc21hbGxfcGl0Y2ggKi8KPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
