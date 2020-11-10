Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4167B2AD461
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 12:03:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A7C899B0;
	Tue, 10 Nov 2020 11:03:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31FF0899A5;
 Tue, 10 Nov 2020 11:03:35 +0000 (UTC)
IronPort-SDR: rT86Pd35W7qvwumCojc2ntVkwqD19rDrGp7sOnsCDK11+6QP5LM63JJG2BhXGCAjTFyC+L6oQZ
 GURwNahcUMlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="169171045"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="169171045"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:03:32 -0800
IronPort-SDR: Yh7lq8yGyRsIF6QNNgscoRt0s6P7+JVoXx+fT4uLa3ktjFwAO6dnveS4YMZWHlWFvVDNybM076
 0lzJxlsvY+wQ==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="473381845"
Received: from aperzano-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.17.110])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:03:30 -0800
Date: Tue, 10 Nov 2020 12:03:27 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201110110327.GC5736@zkempczy-mobl2>
References: <20201109104811.3773962-1-tvrtko.ursulin@linux.intel.com>
 <20201109104811.3773962-3-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109104811.3773962-3-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 2/3] lsgpu: User friendly device listing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBOb3YgMDksIDIwMjAgYXQgMTA6NDg6MTBBTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBOZXcgZGVmYXVsdCB1c2VyIGZyaW5kbHkgZGV2aWNlIGxpc3RpbmcgbW9kZSB3aGljaCBy
ZXBsYWNlczoKPiAKPiBzeXM6L3N5cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowMi4wL2Ry
bS9jYXJkMAo+ICAgICBzdWJzeXN0ZW0gICAgICAgOiBkcm0KPiAgICAgZHJtIGNhcmQgICAgICAg
IDogL2Rldi9kcmkvY2FyZDAKPiAgICAgcGFyZW50ICAgICAgICAgIDogc3lzOi9zeXMvZGV2aWNl
cy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMAo+IAo+IHN5czovc3lzL2RldmljZXMvcGNpMDAwMDow
MC8wMDAwOjAwOjAyLjAvZHJtL3JlbmRlckQxMjgKPiAgICBzdWJzeXN0ZW0gICAgICAgOiBkcm0K
PiAgICBkcm0gcmVuZGVyICAgICAgOiAvZGV2L2RyaS9yZW5kZXJEMTI4Cj4gICAgcGFyZW50ICAg
ICAgICAgIDogc3lzOi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDIuMAo+IAo+IHN5
czovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAyLjAKPiAgICBzdWJzeXN0ZW0gICAg
ICAgOiBwY2kKPiAgICAgZHJtIGNhcmQgICAgICAgIDogL2Rldi9kcmkvY2FyZDAKPiAgICAgZHJt
IHJlbmRlciAgICAgIDogL2Rldi9kcmkvcmVuZGVyRDEyOAo+ICAgICB2ZW5kb3IgICAgICAgICAg
OiA4MDg2Cj4gICAgIGRldmljZSAgICAgICAgICA6IDE5M0IKPiAKPiBXaXRoOgo+IAo+IGNhcmQw
ICAgICAgICAgICAgICAgICAgIDgwODY6MTkzQiAgICBkcm06L2Rldi9kcmkvY2FyZDAKPiDilJTi
lIByZW5kZXJEMTI4ICAgICAgICAgICAgICAgICAgICAgICAgIGRybTovZGV2L2RyaS9yZW5kZXJE
MTI4Cj4gCj4gQWR2YW50YWdlcyBhcmUgbW9yZSBjb21wYWN0LCBtb3JlIHJlYWRhYmxlLCBvbmUg
ZW50cnkgcGVyIEdQVS4KPiAKPiBMZWdhY3kgZm9ybWF0IGNhbiBiZSBjaG9zZSB1c2luZyB0aGUg
LXMgLyAtLXByaW50LXNpbXBsZSBjb21tYW5kIGxpbmUKPiBzd2l0Y2hlcy4KPiAKPiBTaWduZWQt
b2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBQ
ZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KPiBDYzogWmJpZ25pZXcgS2Vt
cGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gLS0tCj4gIHRvb2xz
L2xzZ3B1LmMgfCAxMCArKysrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xzZ3B1LmMgYi90b29s
cy9sc2dwdS5jCj4gaW5kZXggMjU0MWQxYzI0ZTY2Li4zYjIzNGI3MzM2MWEgMTAwNjQ0Cj4gLS0t
IGEvdG9vbHMvbHNncHUuYwo+ICsrKyBiL3Rvb2xzL2xzZ3B1LmMKPiBAQCAtNzAsNiArNzAsNyBA
QAo+ICAgKi8KPiAgCj4gIGVudW0gewo+ICsJT1BUX1BSSU5UX1NJTVBMRSAgID0gJ3MnLAo+ICAJ
T1BUX1BSSU5UX0RFVEFJTCAgID0gJ3AnLAo+ICAJT1BUX0xJU1RfVkVORE9SUyAgID0gJ3YnLAo+
ICAJT1BUX0xJU1RfRklMVEVSUyAgID0gJ2wnLAo+IEBAIC04NSw2ICs4Niw3IEBAIHN0YXRpYyBj
aGFyICppZ3RfZGV2aWNlOwo+ICBzdGF0aWMgY29uc3QgY2hhciAqdXNhZ2Vfc3RyID0KPiAgCSJ1
c2FnZTogbHNncHUgW29wdGlvbnNdXG5cbiIKPiAgCSJPcHRpb25zOlxuIgo+ICsJIiAgLXMsIC0t
cHJpbnQtc2ltcGxlICAgICAgICAgIFByaW50IHNpbXBsZSAobGVnYWN5KSBkZXZpY2UgZGV0YWls
c1xuIgo+ICAJIiAgLXAsIC0tcHJpbnQtZGV0YWlscyAgICAgICAgIFByaW50IGRldmljZXMgd2l0
aCBkZXRhaWxzXG4iCj4gIAkiICAtdiwgLS1saXN0LXZlbmRvcnMgICAgICAgICAgTGlzdCByZWNv
Z25pemVkIHZlbmRvcnNcbiIKPiAgCSIgIC1sLCAtLWxpc3QtZmlsdGVyLXR5cGVzICAgICBMaXN0
IHJlZ2lzdGVyZWQgZGV2aWNlIGZpbHRlcnMgdHlwZXNcbiIKPiBAQCAtMTUxLDYgKzE1Myw3IEBA
IHN0YXRpYyBjaGFyICpnZXRfZGV2aWNlX2Zyb21fcmModm9pZCkKPiAgaW50IG1haW4oaW50IGFy
Z2MsIGNoYXIgKmFyZ3ZbXSkKPiAgewo+ICAJc3RhdGljIHN0cnVjdCBvcHRpb24gbG9uZ19vcHRp
b25zW10gPSB7Cj4gKwkJeyJwcmludC1zaW1wbGUiLCAgICAgIG5vX2FyZ3VtZW50LCAgICAgICBO
VUxMLCBPUFRfUFJJTlRfU0lNUExFfSwKPiAgCQl7InByaW50LWRldGFpbCIsICAgICAgbm9fYXJn
dW1lbnQsICAgICAgIE5VTEwsIE9QVF9QUklOVF9ERVRBSUx9LAo+ICAJCXsibGlzdC12ZW5kb3Jz
IiwgICAgICBub19hcmd1bWVudCwgICAgICAgTlVMTCwgT1BUX0xJU1RfVkVORE9SU30sCj4gIAkJ
eyJsaXN0LWZpbHRlci10eXBlcyIsIG5vX2FyZ3VtZW50LCAgICAgICBOVUxMLCBPUFRfTElTVF9G
SUxURVJTfSwKPiBAQCAtMTYwLDEyICsxNjMsMTUgQEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIg
KmFyZ3ZbXSkKPiAgCX07Cj4gIAlpbnQgYywgaW5kZXggPSAwOwo+ICAJY2hhciAqZW52X2Rldmlj
ZSA9IE5VTEwsICpvcHRfZGV2aWNlID0gTlVMTCwgKnJjX2RldmljZSA9IE5VTEw7Cj4gLQllbnVt
IGlndF9kZXZpY2VzX3ByaW50X3R5cGUgcHJpbnR0eXBlID0gSUdUX1BSSU5UX1NJTVBMRTsKPiAr
CWVudW0gaWd0X2RldmljZXNfcHJpbnRfdHlwZSBwcmludHR5cGUgPSBJR1RfUFJJTlRfVVNFUjsK
PiAgCj4gLQl3aGlsZSAoKGMgPSBnZXRvcHRfbG9uZyhhcmdjLCBhcmd2LCAicHZsZDpoIiwKPiAr
CXdoaWxlICgoYyA9IGdldG9wdF9sb25nKGFyZ2MsIGFyZ3YsICJzcHZsZDpoIiwKPiAgCQkJCWxv
bmdfb3B0aW9ucywgJmluZGV4KSkgIT0gLTEpIHsKPiAgCQlzd2l0Y2goYykgewo+ICAKPiArCQlj
YXNlIE9QVF9QUklOVF9TSU1QTEU6Cj4gKwkJCXByaW50dHlwZSA9IElHVF9QUklOVF9TSU1QTEU7
Cj4gKwkJCWJyZWFrOwo+ICAJCWNhc2UgT1BUX1BSSU5UX0RFVEFJTDoKPiAgCQkJcHJpbnR0eXBl
ID0gSUdUX1BSSU5UX0RFVEFJTDsKPiAgCQkJYnJlYWs7Cj4gLS0gCj4gMi4yNS4xCj4gCgpMb29r
cyBvazoKClJldmlld2VkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBj
enluc2tpQGludGVsLmNvbT4KCi0tClpiaWduaWV3Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
