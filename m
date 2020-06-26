Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEFC20ADCA
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 10:04:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7356EC2A;
	Fri, 26 Jun 2020 08:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAAF6EC2A;
 Fri, 26 Jun 2020 08:04:31 +0000 (UTC)
IronPort-SDR: Y5Vu0Y9AD0utB8T2vf/2c9eg+4L68YziB2cXMOCct3kA0yOZXaHVsOI4aw2Z/mp75ua5MUnClc
 nXLzsNxUtqtg==
X-IronPort-AV: E=McAfee;i="6000,8403,9663"; a="124885309"
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="124885309"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:04:23 -0700
IronPort-SDR: 25jnYDp/6YNDHszqElUL9qhklXlXR50ObfkqgGcK0p3YiWIISqmWZQxYCGss/IskN9Vvd+SBUf
 Rrzu3PqDqacQ==
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="479928163"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 01:04:22 -0700
Message-ID: <59b682f41b6779da22bbfe55ffec3cfda4e62729.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: =?UTF-8?Q?Micha=C5=82?= Winiarski <michal@hardline.pl>, 
 igt-dev@lists.freedesktop.org
Date: Fri, 26 Jun 2020 10:04:20 +0200
In-Reply-To: <159311416692.202818.5204035808205731710@macragge.hardline.pl>
References: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
 <20200622164415.30352-6-janusz.krzysztofik@linux.intel.com>
 <159311416692.202818.5204035808205731710@macragge.hardline.pl>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [RFC PATCH i-g-t v2 5/8]
 tests/core_hotunplug: Add 'GEM address space' variant
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

SGkgTWljaGHFgiwKCnRoYW5rcyBmb3IgcmV2aWV3LgoKT24gVGh1LCAyMDIwLTA2LTI1IGF0IDIx
OjQyICswMjAwLCBNaWNoYcWCIFdpbmlhcnNraSB3cm90ZToKPiBRdW90aW5nIEphbnVzeiBLcnp5
c3p0b2ZpayAoMjAyMC0wNi0yMiAxODo0NDoxMikKPiA+IFZlcmlmeSBpZiBhbiBhZGRpdGlvbmFs
IGFkZHJlc3Mgc3BhY2UgYXNzb2NpYXRlZCB3aXRoIGFuIG9wZW4gZGV2aWNlCj4gPiBmaWxlIGRl
c2NyaXB0b3IgaXMgY2xlYW5lZCB1cCBjb3JyZWN0bHkgb24gZGV2aWNlIGhvdHVucGx1Zy4KPiA+
IAo+ID4gdjI6IHJlYmFzZSBvbiB1cHN0cmVhbSwgdXBkYXRlIGluY2x1ZGVzIG9yZGVyCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlr
QGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCAz
MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMx
IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVn
LmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCj4gPiBpbmRleCAwODkyZTE5MjcuLjE4YTk2MzU2
NCAxMDA2NDQKPiA+IC0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+ICsrKyBiL3Rlc3Rz
L2NvcmVfaG90dW5wbHVnLmMKPiA+IEBAIC0zMCw2ICszMCw3IEBACj4gPiAgI2luY2x1ZGUgPHVu
aXN0ZC5oPgo+ID4gIAo+ID4gICNpbmNsdWRlICJpOTE1L2dlbS5oIgo+ID4gKyNpbmNsdWRlICJp
OTE1L2dlbV92bS5oIgo+ID4gICNpbmNsdWRlICJpZ3QuaCIKPiA+ICAjaW5jbHVkZSAiaWd0X2Rl
dmljZV9zY2FuLmgiCj4gPiAgI2luY2x1ZGUgImlndF9rbW9kLmgiCj4gPiBAQCAtMzMyLDYgKzMz
MywyOSBAQCBzdGF0aWMgdm9pZCBob3RyZXBsdWdfbGF0ZWNsb3NlKHZvaWQpCj4gPiAgICAgICAg
IGhlYWx0aGNoZWNrKCk7Cj4gPiAgfQo+ID4gIAo+ID4gK3N0YXRpYyB2b2lkIHZtX2hvdHVucGx1
Z19sYXRlY2xvc2Uodm9pZCkKPiA+ICt7Cj4gPiArICAgICAgIHN0cnVjdCBob3R1bnBsdWcgcHJp
djsKPiA+ICsKPiA+ICsgICAgICAgcHJlcGFyZV9mb3JfcmVzY2FuKCZwcml2KTsKPiA+ICsKPiA+
ICsgICAgICAgZ2VtX3JlcXVpcmVfdm0ocHJpdi5mZC5kcm0pOwo+ID4gKwo+ID4gKyAgICAgICBs
b2NhbF9kZWJ1ZygiY3JlYXRpbmcgYWRkaXRpb25hbCBHRU0gdXNlciBhZGRyZXNzIHNwYWNlIik7
Cj4gPiArICAgICAgIGlndF9pZ25vcmVfd2FybihnZW1fdm1fY3JlYXRlKHByaXYuZmQuZHJtKSk7
Cj4gCj4gV2h5IHRoZSAiaWdub3JlX3dhcm4iPyAgVGhpcyBkZXNlcnZlcyBhIGNvbW1lbnQuIAo+
IEFuZCBwZXJoYXBzIGEgd29yZCBvZiBpbmZvcm1hdGlvbiBhYm91dCB3aHkgd2UgcGlja2VkCj4g
dGhpcyBwYXJ0dWN1bGFyIG9wZXJhdGlvbiBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgKHZtX2NyZWF0
ZSkuCj4gVGhpcyBpcyBhIHJlZ3Jlc3Npb24gdGVzdCwgcmlnaHQ/CgpIbW0sIEkgZGlkbid0IGlu
dGVuZCBpdCB0byBiZSBhIHJlZ3Jlc3Npb24gdGVzdC4gIFRoZSBwdXJwb3NlIHdhcwpnZW5lcmFs
bHkgdGhlIHNhbWUgYXMgb2Ygb3RoZXIgaG90dW5wbHVnLWxhdGVjbG9zZSBzdWJ0ZXN0cyAtIGV4
ZXJjaXNlCnRoZSBkcml2ZXIgYmVoYXZpb3VyIG9uIGhvdHVucGx1ZyBhbmQgbGF0ZWNsb3NlLiAg
VGhpcyBzdWJ0ZXN0IHdhcwppbnRlbmRlZCB0byBwZXJmb3JtIHN0aWxsIHRoZSBzYW1lIGV4ZXJj
aXNlLCBvbmx5IHVuZGVyIGRpZmZlcmVudApjb25kaXRpb25zLCBvciBkaWZmZXJlbnQgdXNlIGNh
c2Ugb2YgdGhlIGRyaXZlci4gIEluIHBhcnRpY3VsYXIsCmhvdHVucGx1ZyBpcyBwZXJmb3JtZWQg
aGVyZSB3aXRoIGFuIGFkZGl0aW9uYWwgYWRkcmVzcyBzcGFjZSBhc3NvY2lhdGVkCndpdGggYW4g
b3BlbiBmaWxlIGRlc2NyaXB0b3IuICBXZSBhcmUgbm90IGludGVyZXN0ZWQgaW4gZXhlcmNpc2lu
ZyB0aGF0CmFkZHJlc3Mgc3BhY2UgKHRoYXQncyB3aHkgaWd0X2lnbm9yZV93YXJuKSwgb25seSBp
biBjaGVja2luZyBpZiBpdCBpcwpjbGVhbmVkIHVwIG9uIHRpbWUgc28gaG90dW5wbHVnLWxhdGVj
bG9zZSBvcGVyYXRpb25zIGFyZSBzdGlsbCBzYWZlCmZyb20gbGF0ZSBkbWFfdW5tYXAgaXNzdWVz
LgoKTGV0IG1lIHRyeSB0byByZXdvcmQgdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBzbyBpdCBiZXR0
ZXIgcmVmbGVjdHMgdGhpcwppZGVhLgoKVGhhbmtzLApKYW51c3oKCj4gCj4gTEdUTSBvdGhlcndp
c2UgKGJ1dCBhZ2FpbiAtIHNlZSBwcmV2aW91cyBwYXRjaGVzKToKPiAKPiBSZXZpZXdlZC1ieTog
TWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgo+IAo+IC1NaWNo
YcWCCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
