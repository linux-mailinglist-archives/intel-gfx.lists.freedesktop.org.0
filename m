Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474C920B014
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 12:56:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 212936EC66;
	Fri, 26 Jun 2020 10:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84DE86E456;
 Fri, 26 Jun 2020 10:56:52 +0000 (UTC)
IronPort-SDR: zNAFm17bOvckF8z4Vu2qotpuaxQR/ZI/HkSJBapu45+8rLE7h647qcnNnjMT6CBMoD/0XBiMJT
 C52x9DUq9agA==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="206794026"
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="206794026"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 03:56:51 -0700
IronPort-SDR: cJd+SKOrMtdh410N1dqzUrU6SQfXOqLf42KaJ4comy+nsKHPlVM0BM/nVVzhoJT6Clf4t80hNV
 dsR4KZp9WejA==
X-IronPort-AV: E=Sophos;i="5.75,283,1589266800"; d="scan'208";a="453328059"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 03:56:50 -0700
Message-ID: <03623ba15cb02bc6edba5d333a95b51baf59f4cd.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: =?UTF-8?Q?Micha=C5=82?= Winiarski <michal@hardline.pl>, 
 igt-dev@lists.freedesktop.org
Date: Fri, 26 Jun 2020 12:56:48 +0200
In-Reply-To: <159311502818.202818.9312691111674456282@macragge.hardline.pl>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-8-janusz.krzysztofik@linux.intel.com>
 <159311502818.202818.9312691111674456282@macragge.hardline.pl>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 7/8]
 tests/core_hotunplug: Add 'PRIME handle' variant
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWljaGHFgiwKCk9uIFRodSwgMjAyMC0wNi0yNSBhdCAyMTo1NyArMDIwMCwgTWljaGHFgiBX
aW5pYXJza2kgd3JvdGU6Cj4gUXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMjAtMDYtMjIg
MTg6NDQ6MTQpCj4gPiBFdmVuIGlmIGFsbCBkZXZpY2UgZmlsZSBkZXNjcmlwdG9ycyBhcmUgY2xv
c2VkIG9uIGRldmljZSBob3R1bnBsdWcsCj4gPiBQUklNRSBleHBvcnRlZCBvYmplY3RzIG1heSBz
dGlsbCBleGlzdHMsIHJlZmVyZW5jZWQgYnkgc3RpbGwgb3Blbgo+ID4gZG1hLWJ1ZiBmaWxlIGhh
bmRsZXMuICBBZGQgYSBzdWJ0ZXN0IHRoYXQga2VlcHMgc3VjaCBoYW5kbGUgb3BlbiBvbgo+ID4g
ZGV2aWNlIGhvdHVucGx1Zy4KPiA+IAo+ID4gdjI6IHJlYmFzZSBvbiB1cHN0cmVhbQo+IAo+IFdv
dWxkIGJlIGludGVyZXN0aW5nIHRvIHNlZSB3aGF0IGhhcHBlbnMgd2hlbiBzb21lb25lIGFjdHVh
bGx5IGltcG9ydHMgYW4KPiBvYmplY3QgZnJvbSB1bnBsdWdnZWQgZGV2aWNlIChvciB0aGUgZGV2
aWNlIGlzIHVucGx1Z2dlZCBhZnRlciBpdCB3YXMgaW1wb3J0ZWQpLgo+IEJ1dCBwZXJoYXBzIHRo
YXQncyBzb21ldGhpbmcgZm9yIHRoZSBmdXR1cmUuCgpZZXMsIGxldCdzIGtlZXAgaXQgcmVsYXRp
dmVseSBzaW1wbGUgZm9yIG5vdy4gIFRoZXJlIHNlZW1zIHRvIGJlIHF1aXRlCmEgZmV3IHBvc3Np
YmxlIHNjZW5hcmlvcyB0byBjb3Zlci4gICBIb3dldmVyLCBJJ20gZ29pbmcgdG8gYWRkIGEgdmVy
eQpiYXNpYyB1c2UtYWZ0ZXItaG90dW5wbHVnIGNoZWNrLCBzaW1pbGFyIHRvIHdoYXQgd2UgaGF2
ZSAoaG9wZWZ1bGx5KQphZ3JlZWQgZm9yIGNvbnRleHQgYW5kIGFkZHJlc3Mgc3BhY2UgdmFyaWFu
dHMuCgo+IAo+IEFsc28gLSB0aGUgbmFtaW5nIHNob3VsZCBwcm9iYWJseSBiZSBrZXB0IGRpc3Rp
bmN0IGZyb20gdGhlIG90aGVyICJsYXRlY2xvc2UiCj4gdGVzdHMsIHNpbmNlIGhlcmUgd2UncmUg
Y2xvc2luZyB0aGUgZGV2aWNlIEZEIGJlZm9yZSB0aGUgdW5wbHVnLgo+IE1heWJlIGp1c3QgInBy
aW1lLWhvdHVucGx1ZyI/IAoKU2luY2Ugd2UgYXJlIHN0aWxsIGludGVyZXN0ZWQgaW4gZXhlcmNp
c2luZyB0aGUgZHJpdmVyIGJlaGF2aW91ciBvbgpsYXRlIGNsb3NpbmcgdGhlIHByaW1lIGhhbmRs
ZSAobm93IHRoaXMgY2FzZSBhbHNvIGV4cGxvZGVzIGluc2lkZQppbnRlbC1pb21tdSksIGxldCdz
IGtlZXAgdGhhdCBuYW1pZyBldmVuIGlmIHdlIGNsb3NlIHRoZSBkZXZpY2UgYW5kCm9ubHkga2Vl
cCB0aGUgcHJpbWUgZmlsZSBvcGVuLgoKVGhhbmtzLApKYW51c3oKCgo+IEJ1dCB0aGF0J3MgdXAg
dG8geW91IC0gZWl0aGVyIHdheToKPiAKPiBSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5pYXJza2kg
PG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IAo+IC1NaWNoYcWCCj4gCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRl
bC5jb20+Cj4gPiAtLS0KPiA+ICB0ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIHwgMzYgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDM2IGluc2Vy
dGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMgYi90
ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCj4gPiBpbmRleCBjMzBkOThhNjkuLjdjYjY5OWNjMiAxMDA2
NDQKPiA+IC0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+ICsrKyBiL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMKPiA+IEBAIC0zNzksNiArMzc5LDM1IEBAIHN0YXRpYyB2b2lkIGdlbV9ob3R1
bnBsdWdfbGF0ZWNsb3NlKHZvaWQpCj4gPiAgICAgICAgIGhlYWx0aGNoZWNrKCk7Cj4gPiAgfQo+
ID4gIAo+ID4gK3N0YXRpYyB2b2lkIHByaW1lX2hvdHVucGx1Z19sYXRlY2xvc2Uodm9pZCkKPiA+
ICt7Cj4gPiArICAgICAgIHN0cnVjdCBob3R1bnBsdWcgcHJpdjsKPiA+ICsgICAgICAgdWludDMy
X3QgaGFuZGxlOwo+ID4gKyAgICAgICBpbnQgZG1hYnVmOwo+ID4gKwo+ID4gKyAgICAgICBwcmVw
YXJlX2Zvcl9yZXNjYW4oJnByaXYpOwo+ID4gKwo+ID4gKyAgICAgICBpZ3RfcmVxdWlyZV9nZW0o
cHJpdi5mZC5kcm0pOwo+ID4gKwo+ID4gKyAgICAgICBsb2NhbF9kZWJ1ZygiY3JlYXRpbmcgYW5k
IFBSSU1FLWV4cG9ydGluZyBhIEdFTSBvYmplY3QiKTsKPiA+ICsgICAgICAgaGFuZGxlID0gZ2Vt
X2NyZWF0ZShwcml2LmZkLmRybSwgNDA5Nik7Cj4gPiArICAgICAgIGRtYWJ1ZiA9IHByaW1lX2hh
bmRsZV90b19mZChwcml2LmZkLmRybSwgaGFuZGxlKTsKPiA+ICsKPiA+ICsgICAgICAgbG9jYWxf
ZGVidWcoImNsb3NpbmcgdGhlIGRldmljZSIpOwo+ID4gKyAgICAgICBjbG9zZShwcml2LmZkLmRy
bSk7Cj4gPiArCj4gPiArICAgICAgIGxvY2FsX2RlYnVnKCJob3QgdW5wbHVnZ2luZyB0aGUgZGV2
aWNlIik7Cj4gPiArICAgICAgIGRldmljZV91bnBsdWcocHJpdi5mZC5zeXNmc19kZXYpOwo+ID4g
Kwo+ID4gKyAgICAgICBsb2NhbF9kZWJ1ZygibGF0ZSBjbG9zaW5nIHRoZSBQUklNRSBmaWxlIGhh
bmRsZSIpOwo+ID4gKyAgICAgICBjbG9zZShkbWFidWYpOwo+ID4gKwo+ID4gKyAgICAgICBsb2Nh
bF9kZWJ1ZygicmVjb3ZlcmluZyB0aGUgZGV2aWNlIik7Cj4gPiArICAgICAgIGJ1c19yZXNjYW4o
cHJpdi5mZC5zeXNmc19idXMpOwo+ID4gKwo+ID4gKyAgICAgICBoZWFsdGhjaGVjaygpOwo+ID4g
K30KPiA+ICsKPiA+ICAvKiBNYWluICovCj4gPiAgCj4gPiAgaWd0X21haW4KPiA+IEBAIC00NjUs
NCArNDk0LDExIEBAIGlndF9tYWluCj4gPiAgCj4gPiAgICAgICAgIGlndF9maXh0dXJlCj4gPiAg
ICAgICAgICAgICAgICAgaWd0X2Fib3J0X29uX2YoZmFpbHVyZSwgIiVzXG4iLCBmYWlsdXJlKTsK
PiA+ICsKPiA+ICsgICAgICAgaWd0X2Rlc2NyaWJlKCJDaGVjayBpZiBhIGRldmljZSB3aXRoIGEg
c3RpbGwgb3BlbiBQUklNRS1leHBvcnRlZCBvYmplY3QgY2FuIGJlIGNsZWFubHkgdW5wbHVnZ2Vk
LCB0aGVuIHJlbGVhc2VkIGFuZCByZWNvdmVyZWQiKTsKPiA+ICsgICAgICAgaWd0X3N1YnRlc3Qo
InByaW1lLWhvdHVucGx1Zy1sYXRlY2xvc2UiKQo+ID4gKyAgICAgICAgICAgICAgIHByaW1lX2hv
dHVucGx1Z19sYXRlY2xvc2UoKTsKPiA+ICsKPiA+ICsgICAgICAgaWd0X2ZpeHR1cmUKPiA+ICsg
ICAgICAgICAgICAgICBpZ3RfYWJvcnRfb25fZihmYWlsdXJlLCAiJXNcbiIsIGZhaWx1cmUpOwo+
ID4gIH0KPiA+IC0tIAo+ID4gMi4yMS4xCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBpZ3QtZGV2IG1haWxpbmcgbGlzdAo+ID4gaWd0
LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
