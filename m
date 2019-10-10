Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33404D2D95
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 17:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A6089FEC;
	Thu, 10 Oct 2019 15:22:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0C9389FEC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 15:22:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 08:22:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="207210097"
Received: from creinhar-mobl.ger.corp.intel.com (HELO [10.252.42.40])
 ([10.252.42.40])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2019 08:22:26 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009211947.6815-1-chris@chris-wilson.co.uk>
 <20191009211947.6815-7-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <2b005ce6-97dd-ceee-04aa-72147bfb8e74@intel.com>
Date: Thu, 10 Oct 2019 18:22:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009211947.6815-7-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/perf: Allow dynamic
 reconfiguration of the OA stream
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

T24gMTAvMTAvMjAxOSAwMDoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEZyb206IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPgo+IEludHJvZHVjZSBh
IG5ldyBwZXJmX2lvY3RsIGNvbW1hbmQgdG8gY2hhbmdlIHRoZSBPQSBjb25maWd1cmF0aW9uIG9m
IHRoZQo+IGFjdGl2ZSBzdHJlYW0uIFRoaXMgYWxsb3dzIHRoZSBPQSBzdHJlYW0gdG8gYmUgcmVj
b25maWd1cmVkIGJldHdlZW4KPiBiYXRjaCBidWZmZXJzLCBnaXZpbmcgZ3JlYXRlciBmbGV4aWJp
bGl0eSBpbiBzYW1wbGluZy4gV2UgaW5qZWN0IGEKPiByZXF1ZXN0IGludG8gdGhlIE9BIGNvbnRl
eHQgdG8gcmVjb25maWd1cmUgdGhlIHN0cmVhbSBhc3luY2hyb25vdXNseSBvbgo+IHRoZSBHUFUg
aW4gYmV0d2VlbiBhbmQgb3JkZXJlZCB3aXRoIGV4ZWNidWZmZXIgY2FsbHMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+
CgoKU28gbXVjaCBzaW1wbGVyIDopCgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jIHwgMzQgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiAgIGluY2x1
ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgIHwgMTAgKysrKysrKysrKwo+ICAgMiBmaWxlcyBj
aGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYwo+IGluZGV4IDEyY2M0N2FlY2UyMS4uM2I3N2RiODk5NWYzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMjg1Niw2ICsyODU2LDI4IEBAIHN0YXRpYyB2b2lk
IGk5MTVfcGVyZl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
KQo+ICAgCQlzdHJlYW0tPm9wcy0+ZGlzYWJsZShzdHJlYW0pOwo+ICAgfQo+ICAgCj4gK3N0YXRp
YyBpbnQgaTkxNV9wZXJmX2NvbmZpZ19sb2NrZWQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0
cmVhbSwKPiArCQkJCSAgIHVuc2lnbmVkIGxvbmcgbWV0cmljc19zZXQpCj4gK3sKPiArCXN0cnVj
dCBpOTE1X29hX2NvbmZpZyAqY29uZmlnOwo+ICsJaW50IGVyciA9IDA7Cj4gKwo+ICsJY29uZmln
ID0gaTkxNV9wZXJmX2dldF9vYV9jb25maWcoc3RyZWFtLT5wZXJmLCBtZXRyaWNzX3NldCk7Cj4g
KwlpZiAoIWNvbmZpZykKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlpZiAoY29uZmlnICE9
IHN0cmVhbS0+b2FfY29uZmlnKSB7Cj4gKwkJaWYgKHN0cmVhbS0+cGlubmVkX2N0eCkKPiArCQkJ
ZXJyID0gZW1pdF9vYV9jb25maWcoc3RyZWFtLCBzdHJlYW0tPnBpbm5lZF9jdHgpOwo+ICsJCWlm
IChlcnIgPT0gMCkKPiArCQkJY29uZmlnID0geGNoZygmc3RyZWFtLT5vYV9jb25maWcsIGNvbmZp
Zyk7Cj4gKwl9Cj4gKwo+ICsJaTkxNV9vYV9jb25maWdfcHV0KGNvbmZpZyk7Cj4gKwo+ICsJcmV0
dXJuIGVycjsKPiArfQo+ICsKPiAgIC8qKgo+ICAgICogaTkxNV9wZXJmX2lvY3RsIC0gc3VwcG9y
dCBpb2N0bCgpIHVzYWdlIHdpdGggaTkxNSBwZXJmIHN0cmVhbSBGRHMKPiAgICAqIEBzdHJlYW06
IEFuIGk5MTUgcGVyZiBzdHJlYW0KPiBAQCAtMjg3OSw2ICsyOTAxLDggQEAgc3RhdGljIGxvbmcg
aTkxNV9wZXJmX2lvY3RsX2xvY2tlZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAo+
ICAgCWNhc2UgSTkxNV9QRVJGX0lPQ1RMX0RJU0FCTEU6Cj4gICAJCWk5MTVfcGVyZl9kaXNhYmxl
X2xvY2tlZChzdHJlYW0pOwo+ICAgCQlyZXR1cm4gMDsKPiArCWNhc2UgSTkxNV9QRVJGX0lPQ1RM
X0NPTkZJRzoKPiArCQlyZXR1cm4gaTkxNV9wZXJmX2NvbmZpZ19sb2NrZWQoc3RyZWFtLCBhcmcp
OwoKRm9yIFJFTU9WRV9DT05GSUcgd2UgcGFzc2VkIGEgcG9pbnRlciB0byBhbiB1NjQsIG5vdCBz
dXJlIHdoZXRoZXIgd2UgCnNob3VsZCByZXVzZSB0aGUgc2FtZSBwYXR0ZXJuIGhlcmU/CgpJIGRv
bid0IG1pbmQgdGhlIGN1cnJlbnQgdmVyc2lvbi4KCgotTGlvbmVsCgo+ICAgCX0KPiAgIAo+ICAg
CXJldHVybiAtRUlOVkFMOwo+IEBAIC00MDE3LDcgKzQwNDEsMTUgQEAgdm9pZCBpOTE1X3BlcmZf
ZmluaShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgICAqLwo+ICAgaW50IGk5MTVf
cGVyZl9pb2N0bF92ZXJzaW9uKHZvaWQpCj4gICB7Cj4gLQlyZXR1cm4gMTsKPiArCS8qCj4gKwkg
KiAxOiBJbml0aWFsIHZlcnNpb24KPiArCSAqICAgSTkxNV9QRVJGX0lPQ1RMX0VOQUJMRQo+ICsJ
ICogICBJOTE1X1BFUkZfSU9DVExfRElTQUJMRQo+ICsJICoKPiArCSAqIDI6IEFkZGVkIHJ1bnRp
bWUgbW9kaWZpY2F0aW9uIG9mIE9BIGNvbmZpZy4KPiArCSAqICAgSTkxNV9QRVJGX0lPQ1RMX0NP
TkZJRwo+ICsJICovCj4gKwlyZXR1cm4gMjsKPiAgIH0KPiAgIAo+ICAgI2lmIElTX0VOQUJMRUQo
Q09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJt
L2k5MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiBpbmRleCAwYzdiMjgx
NWZiZjEuLjVlNjZmN2M2MDI2MSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvZHJtL2k5MTVf
ZHJtLmgKPiArKysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKPiBAQCAtMTkzMiw2ICsx
OTMyLDE2IEBAIHN0cnVjdCBkcm1faTkxNV9wZXJmX29wZW5fcGFyYW0gewo+ICAgICovCj4gICAj
ZGVmaW5lIEk5MTVfUEVSRl9JT0NUTF9ESVNBQkxFCV9JTygnaScsIDB4MSkKPiAgIAo+ICsvKioK
PiArICogQ2hhbmdlIG1ldHJpY3Nfc2V0IGNhcHR1cmVkIGJ5IGEgc3RyZWFtLgo+ICsgKgo+ICsg
KiBXaWxsIG5vdCB0YWtlIGVmZmVjdCB1bnRpbCB0aGUgc3RyZWFtIGlzIHJlc3RhcnQsIG9yIHVw
b24gdGhlIG5leHQKPiArICogZXhlY2J1ZiB3aGVuIGF0dGFjaGVkIHRvIGEgc3BlY2lmaWMgY29u
dGV4dC4KPiArICoKPiArICogVGhpcyBpb2N0bCBpcyBhdmFpbGFibGUgaW4gcGVyZiByZXZpc2lv
biAyLgo+ICsgKi8KPiArI2RlZmluZSBJOTE1X1BFUkZfSU9DVExfQ09ORklHCV9JTygnaScsIDB4
MikKPiArCj4gICAvKioKPiAgICAqIENvbW1vbiB0byBhbGwgaTkxNSBwZXJmIHJlY29yZHMKPiAg
ICAqLwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
