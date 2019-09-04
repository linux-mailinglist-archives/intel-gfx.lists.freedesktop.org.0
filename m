Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 737F5A80BA
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 13:00:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062ED89207;
	Wed,  4 Sep 2019 11:00:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37EA89154
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 11:00:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 04:00:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="173542759"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 04 Sep 2019 04:00:00 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9BAB85C1E29; Wed,  4 Sep 2019 13:59:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190904100707.7377-1-chris@chris-wilson.co.uk>
References: <20190904100707.7377-1-chris@chris-wilson.co.uk>
Date: Wed, 04 Sep 2019 13:59:52 +0300
Message-ID: <87tv9stjh3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Restore relaxed padding
 (OCL_OOB_SUPPRES_ENABLE) for skl+
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
Cc: denys.kostin@globallogic.com, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhpcyBi
aXQgd2FzIGZsaXBlZCBvbiBmb3IgInN5bmNpbmcgZGVwZW5kZW5jaWVzIGJldHdlZW4gY2FtZXJh
IGFuZAo+IGdyYXBoaWNzIi4gQlNwZWMgaGFzIG5vIHJlY29sbGVjdGlvbiB3aHksIGFuZCBpdCBp
cyBjYXVzaW5nCj4gdW5yZWNvdmVyYWJsZSBHUFUgaGFuZ3Mgd2l0aCBWdWxrYW4gY29tcHV0ZSB3
b3JrbG9hZHMuCj4KPiBGcm9tIEJTcGVjLCBzZXR0aW5nIGJpdDUgdG8gMCBlbmFibGVzIHJlbGF4
ZWQgcGFkZGluZyByZXF1aXJlbWV0cyBmb3IKPiBidWZmZXJzLCAxRCBhbmQgMkQgbm9uLWFycmF5
LCBub24tTVNBQSwgbm9uLW1pcC1tYXBwZWQgbGluZWFyIHN1cmZhY2VzOwo+IGFuZCAqbXVzdCog
YmUgc2V0IHRvIDBoIG9uIHNrbCsgdG8gZW5zdXJlICJPdXQgb2YgQm91bmRzIiBjYXNlIGlzCj4g
c3VwcHJlc3NlZC4KPgo+IFJlcG9ydGVkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0
cmFuZC5uZXQ+Cj4gU3VnZ2VzdGVkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFu
ZC5uZXQ+Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTExMDk5OAo+IEZpeGVzOiA4NDI0MTcxZTEzNWMgKCJkcm0vaTkxNS9nZW45OiBoL3cg
dy9hOiBzeW5jaW5nIGRlcGVuZGVuY2llcyBiZXR3ZWVuIGNhbWVyYSBhbmQgZ3JhcGhpY3MiKQo+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
IFRlc3RlZC1ieTogZGVueXMua29zdGluQGdsb2JhbGxvZ2ljLmNvbQo+IENjOiBKYXNvbiBFa3N0
cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgo+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4gIyB2
NC4xKwoKVGhlIGJ1ZyBhbmQgZXNwZWNpYWxseSAjMTEwMjI4IHdhcyBsaWtlIGEgZ29vZCBkZXRl
Y3RpdmUgc3RvcnkuCkJ1dCBvbmUgc3RlcCBsZWZ0IHRoZSByZWFkZXIgY3VyaW91czogZnJvbSB0
aGUgY29tcHV0ZSBzaGFkZXIKcmVwcm9kdWNlciB0aGUgdGVycml0b3J5IHRvIHNlYXJjaCBmb3Ig
d2FzIHNocnVuayB0byBncGdwdQp3b3JrYXJvdW5kcy4gV2FzIHRoZSByZXN0IGJydXRlIGZvcmNl
IG9yIGhvdyBkaWQgeW91IGVuZCB1cAp3aXRoIHRoaXMgcGFydGljdWxhciBvbmU/CgpHcmVhdCB0
aGF0IGl0IGdvdCBuYWlsZWQhIFRoYW5rcyBldmVyeW9uZSwKClJldmlld2VkLWJ5OiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA1IC0tLS0tCj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jCj4gaW5kZXggODYzOWZjY2NkYjQyLi4yNDNkM2Y3N2JlMTMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtMjk3
LDExICsyOTcsNiBAQCBzdGF0aWMgdm9pZCBnZW45X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVj
dCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgCQkJICBGTE9XX0NPTlRST0xfRU5BQkxFIHwK
PiAgCQkJICBQQVJUSUFMX0lOU1RSVUNUSU9OX1NIT09URE9XTl9ESVNBQkxFKTsKPiAgCj4gLQkv
KiBTeW5jaW5nIGRlcGVuZGVuY2llcyBiZXR3ZWVuIGNhbWVyYSBhbmQgZ3JhcGhpY3M6c2tsLGJ4
dCxrYmwgKi8KPiAtCWlmICghSVNfQ09GRkVFTEFLRShpOTE1KSkKPiAtCQlXQV9TRVRfQklUX01B
U0tFRChIQUxGX1NMSUNFX0NISUNLRU4zLAo+IC0JCQkJICBHRU45X0RJU0FCTEVfT0NMX09PQl9T
VVBQUkVTU19MT0dJQyk7Cj4gLQo+ICAJLyogV2FFbmFibGVZVjEyQnVnRml4SW5IYWxmU2xpY2VD
aGlja2VuNzpza2wsYnh0LGtibCxnbGssY2ZsICovCj4gIAkvKiBXYUVuYWJsZVNhbXBsZXJHUEdQ
VVByZWVtcHRpb25TdXBwb3J0OnNrbCxieHQsa2JsLGNmbCAqLwo+ICAJV0FfU0VUX0JJVF9NQVNL
RUQoR0VOOV9IQUxGX1NMSUNFX0NISUNLRU43LAo+IC0tIAo+IDIuMjMuMApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
