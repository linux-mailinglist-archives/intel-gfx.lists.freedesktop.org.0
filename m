Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD38B5D0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 12:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D086E101;
	Tue, 13 Aug 2019 10:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD6F6E0FF;
 Tue, 13 Aug 2019 10:44:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 03:44:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="176168419"
Received: from chongyic-mobl.gar.corp.intel.com ([10.252.6.35])
 by fmsmga008.fm.intel.com with ESMTP; 13 Aug 2019 03:44:12 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190810123821.24009-1-chris@chris-wilson.co.uk>
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
Message-ID: <673f6878-1ac1-1d09-d9f8-ce8ce4ee7812@linux.intel.com>
Date: Tue, 13 Aug 2019 13:44:11 +0300
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190810123821.24009-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Test mmap_offset
 lifetime
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxMC8wOC8yMDE5IDE1LjM4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gQ2xvc2luZyB0aGUg
b2JqZWN0IG9uIGFub3RoZXIgZmlsZSBzaG91bGQgbm90IGFmZmVjdCB0aGUgbG9jYWwKPiBtbWFw
X29mZnNldC4KPiAKClRoYW5rcyBmb3IgdGhpcyEgSXQgaGVscGVkIHNxdWVlemVkIHRoZSBidWcg
b3V0IG9mIG1tYXBfb2Zmc2V0LgoKUmV2aWV3ZWQtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVs
LmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KCgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBBYmRpZWwgSmFudWxndWUgPGFiZGll
bC5qYW51bGd1ZUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX21tYXBf
Z3R0LmMgfCA0MCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDQwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkx
NS9nZW1fbW1hcF9ndHQuYyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiBpbmRleCA2ZjNh
OWMzNmUuLjhlZmY5MTg1MCAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5j
Cj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYwo+IEBAIC0zMjIsNiArMzIyLDQ0IEBA
IHRlc3RfcGZfbm9uYmxvY2soaW50IGk5MTUpCj4gIAlpZ3Rfc3Bpbl9mcmVlKGk5MTUsIHNwaW4p
Owo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZAo+ICt0ZXN0X2lzb2xhdGlvbihpbnQgaTkxNSkKPiAr
ewo+ICsJc3RydWN0IGRybV9pOTE1X2dlbV9tbWFwX2d0dCBtbWFwX2FyZzsKPiArCWludCBBID0g
Z2VtX3Jlb3Blbl9kcml2ZXIoaTkxNSk7Cj4gKwlpbnQgQiA9IGdlbV9yZW9wZW5fZHJpdmVyKGk5
MTUpOwo+ICsJdWludDY0X3Qgb2Zmc2V0X2EsIG9mZnNldF9iOwo+ICsJdWludDMyX3QgYSwgYjsK
PiArCXZvaWQgKnB0cjsKPiArCj4gKwlhID0gZ2VtX2NyZWF0ZShBLCA0MDk2KTsKPiArCWIgPSBn
ZW1fb3BlbihCLCBnZW1fZmxpbmsoQSwgYSkpOwo+ICsKPiArCW1tYXBfYXJnLmhhbmRsZSA9IGE7
Cj4gKwlkb19pb2N0bChBLCBEUk1fSU9DVExfSTkxNV9HRU1fTU1BUF9HVFQsICZtbWFwX2FyZyk7
Cj4gKwlvZmZzZXRfYSA9IG1tYXBfYXJnLm9mZnNldDsKPiArCj4gKwltbWFwX2FyZy5oYW5kbGUg
PSBiOwo+ICsJZG9faW9jdGwoQiwgRFJNX0lPQ1RMX0k5MTVfR0VNX01NQVBfR1RULCAmbW1hcF9h
cmcpOwo+ICsJb2Zmc2V0X2IgPSBtbWFwX2FyZy5vZmZzZXQ7Cj4gKwo+ICsJaWd0X2luZm8oIkE6
IHtmZDolZCwgaGFuZGxlOiVkLCBvZmZzZXQ6JSJQUkl4NjQifVxuIiwKPiArCQkgQSwgYSwgb2Zm
c2V0X2EpOwo+ICsJaWd0X2luZm8oIkI6IHtmZDolZCwgaGFuZGxlOiVkLCBvZmZzZXQ6JSJQUkl4
NjQifVxuIiwKPiArCQkgQiwgYiwgb2Zmc2V0X2IpOwo+ICsKPiArCWNsb3NlKEIpOwo+ICsKPiAr
CXB0ciA9IG1tYXA2NCgwLCA0MDk2LCBQUk9UX1JFQUQsIE1BUF9TSEFSRUQsIEEsIG9mZnNldF9h
KTsKPiArCWlndF9hc3NlcnQocHRyICE9IE1BUF9GQUlMRUQpOwo+ICsJbXVubWFwKHB0ciwgNDA5
Nik7Cj4gKwo+ICsJY2xvc2UoQSk7Cj4gKwo+ICsJcHRyID0gbW1hcDY0KDAsIDQwOTYsIFBST1Rf
UkVBRCwgTUFQX1NIQVJFRCwgQSwgb2Zmc2V0X2EpOwo+ICsJaWd0X2Fzc2VydChwdHIgPT0gTUFQ
X0ZBSUxFRCk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkCj4gIHRlc3Rfd3JpdGVfZ3R0KGludCBm
ZCkKPiAgewo+IEBAIC05NDUsNiArOTgzLDggQEAgaWd0X21haW4KPiAgCQl0ZXN0X3dyaXRlX2Nw
dV9yZWFkX2d0dChmZCk7Cj4gIAlpZ3Rfc3VidGVzdCgiYmFzaWMtd2MiKQo+ICAJCXRlc3Rfd2Mo
ZmQpOwo+ICsJaWd0X3N1YnRlc3QoImlzb2xhdGlvbiIpCj4gKwkJdGVzdF9pc29sYXRpb24oZmQp
Owo+ICAJaWd0X3N1YnRlc3QoInBmLW5vbmJsb2NrIikKPiAgCQl0ZXN0X3BmX25vbmJsb2NrKGZk
KTsKPiAgCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
