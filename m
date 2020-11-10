Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCEE2AD49F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 12:20:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DC98899B5;
	Tue, 10 Nov 2020 11:20:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7720D899B5;
 Tue, 10 Nov 2020 11:20:50 +0000 (UTC)
IronPort-SDR: 6wbXWlj91iaH+WQArDvAT2CMPAVCc25YNx/H6puEJjMFwdfI6nA7MNkiDbjmuKYXi6JWVBBvS5
 O/LqG8BnlCEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="187920906"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="187920906"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:20:50 -0800
IronPort-SDR: UMbLtaNrFfhmO2ly1ENH5dniMOqIBPrbF27tT2/Y1GXXy77d9k7mYk/lky/zVg0vY5VebBWZdu
 m7QA2UjfCOhg==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="541287986"
Received: from stadlerw-mobl2.ger.corp.intel.com (HELO [10.252.50.177])
 ([10.252.50.177])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:20:48 -0800
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20201109104811.3773962-1-tvrtko.ursulin@linux.intel.com>
 <20201109104811.3773962-3-tvrtko.ursulin@linux.intel.com>
 <20201110110327.GC5736@zkempczy-mobl2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <85814a79-dbb8-fbde-e280-9c334655e6db@linux.intel.com>
Date: Tue, 10 Nov 2020 11:20:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110110327.GC5736@zkempczy-mobl2>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzExLzIwMjAgMTE6MDMsIFpiaWduaWV3IEtlbXBjennFhHNraSB3cm90ZToKPiBPbiBN
b24sIE5vdiAwOSwgMjAyMCBhdCAxMDo0ODoxMEFNICswMDAwLCBUdnJ0a28gVXJzdWxpbiB3cm90
ZToKPj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4K
Pj4gTmV3IGRlZmF1bHQgdXNlciBmcmluZGx5IGRldmljZSBsaXN0aW5nIG1vZGUgd2hpY2ggcmVw
bGFjZXM6Cj4+Cj4+IHN5czovc3lzL2RldmljZXMvcGNpMDAwMDowMC8wMDAwOjAwOjAyLjAvZHJt
L2NhcmQwCj4+ICAgICAgc3Vic3lzdGVtICAgICAgIDogZHJtCj4+ICAgICAgZHJtIGNhcmQgICAg
ICAgIDogL2Rldi9kcmkvY2FyZDAKPj4gICAgICBwYXJlbnQgICAgICAgICAgOiBzeXM6L3N5cy9k
ZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowMi4wCj4+Cj4+IHN5czovc3lzL2RldmljZXMvcGNp
MDAwMDowMC8wMDAwOjAwOjAyLjAvZHJtL3JlbmRlckQxMjgKPj4gICAgIHN1YnN5c3RlbSAgICAg
ICA6IGRybQo+PiAgICAgZHJtIHJlbmRlciAgICAgIDogL2Rldi9kcmkvcmVuZGVyRDEyOAo+PiAg
ICAgcGFyZW50ICAgICAgICAgIDogc3lzOi9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6
MDIuMAo+Pgo+PiBzeXM6L3N5cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowMi4wCj4+ICAg
ICBzdWJzeXN0ZW0gICAgICAgOiBwY2kKPj4gICAgICBkcm0gY2FyZCAgICAgICAgOiAvZGV2L2Ry
aS9jYXJkMAo+PiAgICAgIGRybSByZW5kZXIgICAgICA6IC9kZXYvZHJpL3JlbmRlckQxMjgKPj4g
ICAgICB2ZW5kb3IgICAgICAgICAgOiA4MDg2Cj4+ICAgICAgZGV2aWNlICAgICAgICAgIDogMTkz
Qgo+Pgo+PiBXaXRoOgo+Pgo+PiBjYXJkMCAgICAgICAgICAgICAgICAgICA4MDg2OjE5M0IgICAg
ZHJtOi9kZXYvZHJpL2NhcmQwCj4+IOKUlOKUgHJlbmRlckQxMjggICAgICAgICAgICAgICAgICAg
ICAgICAgZHJtOi9kZXYvZHJpL3JlbmRlckQxMjgKPj4KPj4gQWR2YW50YWdlcyBhcmUgbW9yZSBj
b21wYWN0LCBtb3JlIHJlYWRhYmxlLCBvbmUgZW50cnkgcGVyIEdQVS4KPj4KPj4gTGVnYWN5IGZv
cm1hdCBjYW4gYmUgY2hvc2UgdXNpbmcgdGhlIC1zIC8gLS1wcmludC1zaW1wbGUgY29tbWFuZCBs
aW5lCj4+IHN3aXRjaGVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiBDYzogUGV0cmkgTGF0dmFsYSA8cGV0cmkubGF0dmFs
YUBpbnRlbC5jb20+Cj4+IENjOiBaYmlnbmlldyBLZW1wY3p5xYRza2kgPHpiaWduaWV3LmtlbXBj
enluc2tpQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgdG9vbHMvbHNncHUuYyB8IDEwICsrKysrKysr
LS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvbHNncHUuYyBiL3Rvb2xzL2xzZ3B1LmMKPj4gaW5kZXgg
MjU0MWQxYzI0ZTY2Li4zYjIzNGI3MzM2MWEgMTAwNjQ0Cj4+IC0tLSBhL3Rvb2xzL2xzZ3B1LmMK
Pj4gKysrIGIvdG9vbHMvbHNncHUuYwo+PiBAQCAtNzAsNiArNzAsNyBAQAo+PiAgICAqLwo+PiAg
IAo+PiAgIGVudW0gewo+PiArCU9QVF9QUklOVF9TSU1QTEUgICA9ICdzJywKPj4gICAJT1BUX1BS
SU5UX0RFVEFJTCAgID0gJ3AnLAo+PiAgIAlPUFRfTElTVF9WRU5ET1JTICAgPSAndicsCj4+ICAg
CU9QVF9MSVNUX0ZJTFRFUlMgICA9ICdsJywKPj4gQEAgLTg1LDYgKzg2LDcgQEAgc3RhdGljIGNo
YXIgKmlndF9kZXZpY2U7Cj4+ICAgc3RhdGljIGNvbnN0IGNoYXIgKnVzYWdlX3N0ciA9Cj4+ICAg
CSJ1c2FnZTogbHNncHUgW29wdGlvbnNdXG5cbiIKPj4gICAJIk9wdGlvbnM6XG4iCj4+ICsJIiAg
LXMsIC0tcHJpbnQtc2ltcGxlICAgICAgICAgIFByaW50IHNpbXBsZSAobGVnYWN5KSBkZXZpY2Ug
ZGV0YWlsc1xuIgo+PiAgIAkiICAtcCwgLS1wcmludC1kZXRhaWxzICAgICAgICAgUHJpbnQgZGV2
aWNlcyB3aXRoIGRldGFpbHNcbiIKPj4gICAJIiAgLXYsIC0tbGlzdC12ZW5kb3JzICAgICAgICAg
IExpc3QgcmVjb2duaXplZCB2ZW5kb3JzXG4iCj4+ICAgCSIgIC1sLCAtLWxpc3QtZmlsdGVyLXR5
cGVzICAgICBMaXN0IHJlZ2lzdGVyZWQgZGV2aWNlIGZpbHRlcnMgdHlwZXNcbiIKPj4gQEAgLTE1
MSw2ICsxNTMsNyBAQCBzdGF0aWMgY2hhciAqZ2V0X2RldmljZV9mcm9tX3JjKHZvaWQpCj4+ICAg
aW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPj4gICB7Cj4+ICAgCXN0YXRpYyBzdHJ1
Y3Qgb3B0aW9uIGxvbmdfb3B0aW9uc1tdID0gewo+PiArCQl7InByaW50LXNpbXBsZSIsICAgICAg
bm9fYXJndW1lbnQsICAgICAgIE5VTEwsIE9QVF9QUklOVF9TSU1QTEV9LAo+PiAgIAkJeyJwcmlu
dC1kZXRhaWwiLCAgICAgIG5vX2FyZ3VtZW50LCAgICAgICBOVUxMLCBPUFRfUFJJTlRfREVUQUlM
fSwKPj4gICAJCXsibGlzdC12ZW5kb3JzIiwgICAgICBub19hcmd1bWVudCwgICAgICAgTlVMTCwg
T1BUX0xJU1RfVkVORE9SU30sCj4+ICAgCQl7Imxpc3QtZmlsdGVyLXR5cGVzIiwgbm9fYXJndW1l
bnQsICAgICAgIE5VTEwsIE9QVF9MSVNUX0ZJTFRFUlN9LAo+PiBAQCAtMTYwLDEyICsxNjMsMTUg
QEAgaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKmFyZ3ZbXSkKPj4gICAJfTsKPj4gICAJaW50IGMs
IGluZGV4ID0gMDsKPj4gICAJY2hhciAqZW52X2RldmljZSA9IE5VTEwsICpvcHRfZGV2aWNlID0g
TlVMTCwgKnJjX2RldmljZSA9IE5VTEw7Cj4+IC0JZW51bSBpZ3RfZGV2aWNlc19wcmludF90eXBl
IHByaW50dHlwZSA9IElHVF9QUklOVF9TSU1QTEU7Cj4+ICsJZW51bSBpZ3RfZGV2aWNlc19wcmlu
dF90eXBlIHByaW50dHlwZSA9IElHVF9QUklOVF9VU0VSOwo+PiAgIAo+PiAtCXdoaWxlICgoYyA9
IGdldG9wdF9sb25nKGFyZ2MsIGFyZ3YsICJwdmxkOmgiLAo+PiArCXdoaWxlICgoYyA9IGdldG9w
dF9sb25nKGFyZ2MsIGFyZ3YsICJzcHZsZDpoIiwKPj4gICAJCQkJbG9uZ19vcHRpb25zLCAmaW5k
ZXgpKSAhPSAtMSkgewo+PiAgIAkJc3dpdGNoKGMpIHsKPj4gICAKPj4gKwkJY2FzZSBPUFRfUFJJ
TlRfU0lNUExFOgo+PiArCQkJcHJpbnR0eXBlID0gSUdUX1BSSU5UX1NJTVBMRTsKPj4gKwkJCWJy
ZWFrOwo+PiAgIAkJY2FzZSBPUFRfUFJJTlRfREVUQUlMOgo+PiAgIAkJCXByaW50dHlwZSA9IElH
VF9QUklOVF9ERVRBSUw7Cj4+ICAgCQkJYnJlYWs7Cj4+IC0tIAo+PiAyLjI1LjEKPj4KPiAKPiBM
b29rcyBvazoKPiAKPiBSZXZpZXdlZC1ieTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmll
dy5rZW1wY3p5bnNraUBpbnRlbC5jb20+CgpUaGFua3MuCgpBbnkgY29uY2VybnMgYWJvdXQgcG90
ZW50aWFsIGV4aXN0ZW5jZSBvZiB0b29scyB3aGljaCBwYXJzZSBsc2dwdSBvdXRwdXQgCmFuZCBt
YXkgZGVwZW5kIG9uIHRoZSBkZWZhdWx0IGZvcm1hdD8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
