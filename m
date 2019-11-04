Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76438EDB76
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 10:17:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A47536E1D6;
	Mon,  4 Nov 2019 09:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F956E1D5;
 Mon,  4 Nov 2019 09:17:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:17:01 -0800
X-IronPort-AV: E=Sophos;i="5.68,266,1569308400"; d="scan'208";a="352768047"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:16:57 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
Date: Mon, 04 Nov 2019 10:16:47 +0100
Message-ID: <2285547.9RcB3xCKy2@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20191031165950.jytjykldypucxksd@vrkonda-desk.ra.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-2-janusz.krzysztofik@linux.intel.com>
 <20191031165950.jytjykldypucxksd@vrkonda-desk.ra.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 1/4] tests/gem_exec_reloc:
 Don't filter out invalid addresses
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmFuc2hpLAoKT24gVGh1cnNkYXksIE9jdG9iZXIgMzEsIDIwMTkgNTo1OTo1MCBQTSBDRVQg
VmFuc2hpZGhhciBLb25kYSB3cm90ZToKPiBNYXkgYmUgdGhpcyBwYXRjaCBjYW4ganVzdCBiZSBt
ZXJnZWQgd2l0aCB0aGUgb3RoZXIgcGF0Y2ggaW4gdGhpcyBzZXJpZXMKPiB0aGF0IGNoYW5nZXMg
Z2VtX2V4ZWNfcmVsb2MuCgpFdmVuIGlmIGJvdGggcGF0Y2hlcyBhcmUgY2xvc2VseSByZWxhdGVk
IHRvIHBvc3NpYmx5IGluY29ycmVjdCBhbGlnbm1lbnQgaW4gCnVzZSwgSSB0aGluayBlYWNoIG9u
ZSByZXNvbHZlcyBpdCBvd24gZGlzdGluY3QgaXNzdWUsIHRoYXQncyB3aHkgSSB0aGluayB0aGV5
IApzaG91bGQgYmUga2VwdCBzZXBhcmF0ZS4KClRoYW5rcywKSmFudXN6CgoKPiBWYW5zaGkKPiAK
PiBPbiBUaHUsIE9jdCAzMSwgMjAxOSBhdCAwNDoyODo1NFBNICswMTAwLCBKYW51c3ogS3J6eXN6
dG9maWsgd3JvdGU6Cj4gPkNvbW1pdCBhMzU1YjJkNmViNDIgKCJpZ3QvZ2VtX2V4ZWNfcmVsb2M6
IEZpbHRlciBvdXQgdW5hdmFpbGFibGUKPiA+YWRkcmVzc2VzIGZvciAhcHBndHQiKSBpbnRyb2R1
Y2VkIGZpbHRlcmluZyBvZiBhZGRyZXNzZXMgcG9zc2libHkKPiA+b2NjdXBpZWQgYnkgb3RoZXIg
dXNlcnMgb2Ygc2hhcmVkIEdUVC4gIFVuZm9ydHVuYXRlbHksIHRoYXQgZmlsdGVyaW5nCj4gPmRv
ZXNuJ3QgZGlzdGluZ3Vpc2ggYmV0d2VlbiBhY3R1YWxseSBvY2N1cGllZCBhZGRyZXNzZXMgYW5k
IG90aGVyd2lzZQo+ID5pbnZhbGlkIHNvZnRwaW4gb2Zmc2V0cy4gIEFzIHNvb24gYXMgaW5jb3Jy
ZWN0IEdUVCBhbGlnbm1lbnQgaXMgYXNzdW1lZAo+ID53aGVuIHJ1bm5pbmcgb24gZnV0dXJlIGJh
Y2tlbmRzIHdpdGggcG9zc2libHkgbGFyZ2VyIG1pbmltdW0gcGFnZQo+ID5zaXplcywgYSBoYWxm
IG9mIGNhbGN1bGF0ZWQgb2Zmc2V0cyB0byBiZSB0ZXN0ZWQgd2lsbCBiZSBpbmNvcnJlY3RseQo+
ID5kZXRlY3RlZCBhcyBvY2N1cGllZCBieSBvdGhlciB1c2VycyBhbmQgc2lsZW50bHkgc2tpcHBl
ZCBpbnN0ZWFkIG9mCj4gPnJlcG9ydGVkIGFzIGEgcHJvYmxlbS4gIFRoYXQgd2lsbCBzaWduaWZp
Y2FudGx5IGRpc3RvcnQgdGhlIGludGVuZGVkCj4gPnRlc3QgcGF0dGVybi4KPiA+Cj4gPkZpbHRl
ciBvdXQgZmFpbGluZyBhZGRyZXNzZXMgb25seSBpZiBub3QgcmVwb3J0ZWQgYXMgaW52YWxpZC4K
PiA+Cj4gPnYyOiBTa2lwIHVuYXZhaWxhYmxlIGFkZHJlc3NlcyBvbmx5IHdoZW4gbm90IHJ1bm5p
bmcgb24gZnVsbCBQUEdUVC4KPiA+djM6IFJlcGxhY2UgdGhlIG5vdCBvbiBmdWxsIFBQR1RUIHJl
cXVpcmVtZW50IGZvciBza2lwcGluZyB3aXRoIGVycm9yCj4gPiAgICBjb2RlIGNoZWNraW5nLgo+
ID4KPiA+U2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9m
aWtAbGludXguaW50ZWwuY29tPgo+ID5DYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPi0tLQo+ID4gdGVzdHMvaTkxNS9nZW1fZXhlY19yZWxvYy5jIHwgMTIgKysr
KysrKysrLS0tCj4gPiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQo+ID4KPiA+ZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYyBiL3Rl
c3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwo+ID5pbmRleCA1ZjU5ZmU5OS4uNDIzZmVkOGIgMTAw
NjQ0Cj4gPi0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcmVsb2MuYwo+ID4rKysgYi90ZXN0cy9p
OTE1L2dlbV9leGVjX3JlbG9jLmMKPiA+QEAgLTUyMCw3ICs1MjAsNyBAQCBzdGF0aWMgdm9pZCBi
YXNpY19yYW5nZShpbnQgZmQsIHVuc2lnbmVkIGZsYWdzKQo+ID4gCXVpbnQ2NF90IGd0dF9zaXpl
ID0gZ2VtX2FwZXJ0dXJlX3NpemUoZmQpOwo+ID4gCWNvbnN0IHVpbnQzMl90IGJiZSA9IE1JX0JB
VENIX0JVRkZFUl9FTkQ7Cj4gPiAJaWd0X3NwaW5fdCAqc3BpbiA9IE5VTEw7Cj4gPi0JaW50IGNv
dW50LCBuOwo+ID4rCWludCBjb3VudCwgbiwgZXJyOwo+ID4KPiA+IAlpZ3RfcmVxdWlyZShnZW1f
aGFzX3NvZnRwaW4oZmQpKTsKPiA+Cj4gPkBAIC01NDIsOCArNTQyLDExIEBAIHN0YXRpYyB2b2lk
IGJhc2ljX3JhbmdlKGludCBmZCwgdW5zaWduZWQgZmxhZ3MpCj4gPiAJCWdlbV93cml0ZShmZCwg
b2JqW25dLmhhbmRsZSwgMCwgJmJiZSwgc2l6ZW9mKGJiZSkpOwo+ID4gCQlleGVjYnVmLmJ1ZmZl
cnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZvYmpbbl0pOwo+ID4gCQlleGVjYnVmLmJ1ZmZlcl9j
b3VudCA9IDE7Cj4gPi0JCWlmIChfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1ZikpCj4gPisJCWVy
ciA9IF9fZ2VtX2V4ZWNidWYoZmQsICZleGVjYnVmKTsKPiA+KwkJaWYgKGVycikgewo+ID4rCQkJ
aWd0X2Fzc2VydChlcnIgIT0gLUVJTlZBTCk7Cj4gPiAJCQljb250aW51ZTsKPiA+KwkJfQo+ID4K
PiA+IAkJaWd0X2RlYnVnKCJvYmpbJWRdIGhhbmRsZT0lZCwgYWRkcmVzcz0lbGx4XG4iLAo+ID4g
CQkJICBuLCBvYmpbbl0uaGFuZGxlLCAobG9uZyBsb25nKW9ialtuXS5vZmZzZXQpOwo+ID5AQCAt
NTYyLDggKzU2NSwxMSBAQCBzdGF0aWMgdm9pZCBiYXNpY19yYW5nZShpbnQgZmQsIHVuc2lnbmVk
IGZsYWdzKQo+ID4gCQlnZW1fd3JpdGUoZmQsIG9ialtuXS5oYW5kbGUsIDAsICZiYmUsIHNpemVv
ZihiYmUpKTsKPiA+IAkJZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcigmb2Jq
W25dKTsKPiA+IAkJZXhlY2J1Zi5idWZmZXJfY291bnQgPSAxOwo+ID4tCQlpZiAoX19nZW1fZXhl
Y2J1ZihmZCwgJmV4ZWNidWYpKQo+ID4rCQllcnIgPSBfX2dlbV9leGVjYnVmKGZkLCAmZXhlY2J1
Zik7Cj4gPisJCWlmIChlcnIpIHsKPiA+KwkJCWlndF9hc3NlcnQoZXJyICE9IC1FSU5WQUwpOwo+
ID4gCQkJY29udGludWU7Cj4gPisJCX0KPiA+Cj4gPiAJCWlndF9kZWJ1Zygib2JqWyVkXSBoYW5k
bGU9JWQsIGFkZHJlc3M9JWxseFxuIiwKPiA+IAkJCSAgbiwgb2JqW25dLmhhbmRsZSwgKGxvbmcg
bG9uZylvYmpbbl0ub2Zmc2V0KTsKPiAKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
