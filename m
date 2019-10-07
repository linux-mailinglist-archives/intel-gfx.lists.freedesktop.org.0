Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5D3CE9EA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 18:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECE0D6E296;
	Mon,  7 Oct 2019 16:57:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9B46E218;
 Mon,  7 Oct 2019 16:57:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 09:57:18 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="344786992"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 07 Oct 2019 09:57:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191005105556.12832-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3bc91e40-297b-f9e8-0ad5-4644248b1211@linux.intel.com>
Date: Mon, 7 Oct 2019 17:57:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191005105556.12832-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 1/3] i915/gem_eio: Retighten
 timeouts for forced reset
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

Ck9uIDA1LzEwLzIwMTkgMTE6NTUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgZm9yY2VkLXJl
c2V0IGl0c2VsZiBzaG91bGQgYmUgaW1tZWRpYXRlOyBpdCdzIGp1c3QgdGhlIHdhaXQgYWZ0ZXIK
PiB0aGUgaGVhbHRoIGNoZWNrIHdoZXJlIHdlIGFwcGVhciB0byBoYXZlIGlzc3VlcyEKPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIHRl
c3RzL2k5MTUvZ2VtX2Vpby5jIHwgNSArKysrLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9l
aW8uYyBiL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCj4gaW5kZXggMDA3YjlmYjcwLi43YzhmZjEwZGYg
MTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMKPiArKysgYi90ZXN0cy9pOTE1L2dl
bV9laW8uYwo+IEBAIC03NiwxMiArNzYsMTUgQEAgc3RhdGljIHZvaWQgdHJpZ2dlcl9yZXNldChp
bnQgZmQpCj4gICAJaWd0X2ttc2coS01TR19ERUJVRyAiRm9yY2luZyBHUFUgcmVzZXRcbiIpOwo+
ICAgCWlndF9mb3JjZV9ncHVfcmVzZXQoZmQpOwo+ICAgCj4gKwkvKiBUaGUgZm9yY2VkIHJlc2V0
IHNob3VsZCBiZSBpbW1lZGlhdGUgKi8KPiArCWlndF9hc3NlcnRfbHRlKGlndF9zZWNvbmRzX2Vs
YXBzZWQoJnRzKSwgMik7Cj4gKwo+ICAgCS8qIEFuZCBqdXN0IGNoZWNrIHRoZSBncHUgaXMgaW5k
ZWVkIHJ1bm5pbmcgYWdhaW4gKi8KPiAgIAlpZ3Rfa21zZyhLTVNHX0RFQlVHICJDaGVja2luZyB0
aGF0IHRoZSBHUFUgcmVjb3ZlcmVkXG4iKTsKPiAgIAlnZW1fdGVzdF9lbmdpbmUoZmQsIEFMTF9F
TkdJTkVTKTsKPiAgIAlpZ3RfZHJvcF9jYWNoZXNfc2V0KGZkLCBEUk9QX0FDVElWRSk7Cj4gICAK
PiAtCS8qIFdlIGV4cGVjdCBmb3JjZWQgcmVzZXQgYW5kIGhlYWx0aCBjaGVjayB0byBiZSBxdWlj
ay4gKi8KPiArCS8qIFdlIGV4cGVjdCBoZWFsdGggY2hlY2sgdG8gYmUgcXVpY2suICovCj4gICAJ
aWd0X2Fzc2VydF9sdGUoaWd0X3NlY29uZHNfZWxhcHNlZCgmdHMpLCAxMCk7Cj4gICB9Cj4gICAK
PiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
