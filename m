Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6D8EB5B0
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 18:00:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633596E06B;
	Thu, 31 Oct 2019 17:00:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D99B6F3C5;
 Thu, 31 Oct 2019 17:00:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 10:00:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="375304835"
Received: from vrkonda-desk.ra.intel.com ([134.134.244.70])
 by orsmga005.jf.intel.com with ESMTP; 31 Oct 2019 10:00:28 -0700
Date: Thu, 31 Oct 2019 10:00:28 -0700
From: Vanshidhar Konda <vanshidhar.r.konda@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20191031170028.lc252aac722phfdq@vrkonda-desk.ra.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
 <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v4 4/4] tests/gem_ctx_shared:
 Align objects using minimum GTT alignment
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMDQ6Mjg6NTdQTSArMDEwMCwgSmFudXN6IEtyenlzenRv
ZmlrIHdyb3RlOgo+ZXhlYy1zaGFyZWQtZ3R0LSogc3VidGVzdHMgdXNlIGhhcmRjb2RlZCB2YWx1
ZXMgZm9yIG9iamVjdCBzaXplIGFuZAo+c29mdHBpbiBvZmZzZXQsIGJhc2VkIG9uIDRrQiBHVFQg
YWxpZ25tZW50IGFzc3VtcHRpb24uICBUaGF0IG1heSByZXN1bHQKPmluIHRob3NlIHN1YnRlc3Rz
IGZhaWxpbmcgd2hlbiBydW4gb24gZnV0dXJlIGJhY2tpbmcgc3RvcmVzIHdpdGgKPnBvc3NpYmx5
IGxhcmdlciBtaW5pbXVtIHBhZ2Ugc2l6ZXMuCj4KPlJlcGxhY2UgaGFyZGNvZGVkIGNvbnN0YW50
cyB3aXRoIHZhbHVlcyBjYWxjdWxhdGVkIGZyb20gbWluaW11bSBHVFQKPmFsaWdubWVudCBvZiBh
Y3R1YWwgYmFja2luZyBzdG9yZSB0aGUgdGVzdCBpcyBydW5uaW5nIG9uLgo+Cj52MjogVXBkYXRl
IGhlbHBlciBuYW1lLCB1c2UgJ21pbmltdW0gR1RUIGFsaWdubWVudCcgdGVybSBhY3Jvc3MgdGhl
Cj4gICAgY2hhbmdlLCBhZGp1c3QgdmFyaWFibGUgbmFtZS4KPgo+U2lnbmVkLW9mZi1ieTogSmFu
dXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+Q2M6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+LS0tCj4gdGVzdHMvaTkx
NS9nZW1fY3R4X3NoYXJlZC5jIHwgNiArKysrLS0KPiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj5kaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fY3R4
X3NoYXJlZC5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCj5pbmRleCA2ZDhjYmNjZS4u
MWU5YzdmNzggMTAwNjQ0Cj4tLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKPisrKyBi
L3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwo+QEAgLTE5NSw2ICsxOTUsNyBAQCBzdGF0aWMg
dm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQo+IAl1aW50
MzJfdCBzY3JhdGNoLCAqczsKPiAJdWludDMyX3QgYmF0Y2gsIGNzWzE2XTsKPiAJdWludDY0X3Qg
b2Zmc2V0Owo+Kwl1aW50NjRfdCBhbGlnbm1lbnQ7Cj4gCWludCBpOwo+Cj4gCWdlbV9yZXF1aXJl
X3JpbmcoaTkxNSwgcmluZyk7Cj5AQCAtMjAzLDcgKzIwNCw4IEBAIHN0YXRpYyB2b2lkIGV4ZWNf
c2hhcmVkX2d0dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCj4gCWNsb25lID0gZ2VtX2Nv
bnRleHRfY2xvbmUoaTkxNSwgMCwgSTkxNV9DT05URVhUX0NMT05FX1ZNLCAwKTsKPgo+IAkvKiBG
aW5kIGEgaG9sZSBiaWcgZW5vdWdoIGZvciBib3RoIG9iamVjdHMgbGF0ZXIgKi8KPi0Jc2NyYXRj
aCA9IGdlbV9jcmVhdGUoaTkxNSwgMTYzODQpOwo+KwlhbGlnbm1lbnQgPSAyICogZ2VtX2d0dF9t
aW5fYWxpZ25tZW50KGk5MTUpOwo+KwlzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCAyICogYWxp
Z25tZW50KTsKPiAJZ2VtX3dyaXRlKGk5MTUsIHNjcmF0Y2gsIDAsICZiYmUsIHNpemVvZihiYmUp
KTsKPiAJb2JqLmhhbmRsZSA9IHNjcmF0Y2g7Cj4gCWdlbV9leGVjYnVmKGk5MTUsICZleGVjYnVm
KTsKPkBAIC0yNDYsNyArMjQ4LDcgQEAgc3RhdGljIHZvaWQgZXhlY19zaGFyZWRfZ3R0KGludCBp
OTE1LCB1bnNpZ25lZCBpbnQgcmluZykKPiAJZ2VtX3dyaXRlKGk5MTUsIGJhdGNoLCAwLCBjcywg
c2l6ZW9mKGNzKSk7Cj4KPiAJb2JqLmhhbmRsZSA9IGJhdGNoOwo+LQlvYmoub2Zmc2V0ICs9IDgx
OTI7IC8qIG1ha2Ugc3VyZSB3ZSBkb24ndCBjYXVzZSBhbiBldmljdGlvbiEgKi8KPisJb2JqLm9m
ZnNldCArPSBhbGlnbm1lbnQ7IC8qIG1ha2Ugc3VyZSB3ZSBkb24ndCBjYXVzZSBhbiBldmljdGlv
biEgKi8KPiAJZXhlY2J1Zi5yc3ZkMSA9IGNsb25lOwo+IAlpZiAoZ2VuID4gMyAmJiBnZW4gPCA2
KQo+IAkJZXhlY2J1Zi5mbGFncyB8PSBJOTE1X0VYRUNfU0VDVVJFOwo+LS0gCj4yLjIxLjAKCkxv
b2tzIGdvb2QgdG8gbWUuCgpWYW5zaGkKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
