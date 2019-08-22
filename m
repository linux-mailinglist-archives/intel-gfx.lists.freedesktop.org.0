Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 213B19A9DF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:13:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FFA76EBFA;
	Fri, 23 Aug 2019 08:13:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD446EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:13:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 05:13:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="203390792"
Received: from gnkatsox-mobl1.ger.corp.intel.com (HELO [10.252.53.116])
 ([10.252.53.116])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 05:13:15 -0700
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-34-lucas.demarchi@intel.com>
 <156647063874.10396.5015522475144891007@jlahtine-desk.ger.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <6fde926a-1b65-64e6-08b3-48fda7cbaa7c@intel.com>
Date: Thu, 22 Aug 2019 14:13:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156647063874.10396.5015522475144891007@jlahtine-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 33/39] drm/i915/perf: add a parameter to
 control the size of OA buffer
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjIvMDgvMjAxOSAxMjo0MywgSm9vbmFzIExhaHRpbmVuIHdyb3RlOgo+IFF1b3RpbmcgTHVj
YXMgRGUgTWFyY2hpICgyMDE5LTA4LTE2IDExOjA0OjU3KQo+PiBGcm9tOiBMaW9uZWwgTGFuZHdl
cmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4+Cj4+IFRoZSB3YXkgb3VyIGhh
cmR3YXJlIGlzIGRlc2lnbmVkIGRvZXNuJ3Qgc2VlbSB0byBsZXQgdXMgdXNlIHRoZQo+PiBNSV9S
RUNPUkRfUEVSRl9DT1VOVCBjb21tYW5kIHdpdGhvdXQgc2V0dGluZyB1cCBhIGNpcmN1bGFyIGJ1
ZmZlci4KPj4KPj4gSW4gdGhlIGNhc2Ugd2hlcmUgdGhlIHVzZXIgZGlkbid0IHJlcXVlc3QgT0Eg
cmVwb3J0cyB0byBiZSBhdmFpbGFibGUKPj4gdGhyb3VnaCB0aGUgaTkxNSBwZXJmIHN0cmVhbSwg
d2UgY2FuIHNldCB0aGUgT0EgYnVmZmVyIHRvIHRoZSBtaW5pbXVtCj4+IHNpemUgdG8gYXZvaWQg
Y29uc3VtaW5nIG1lbW9yeSB3aGljaCB3b24ndCBiZSB1c2VkIGJ5IHRoZSBkcml2ZXIuCj4+Cj4+
IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4+
IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYt
Ynk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4g
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgOTggKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oICB8ICAyICsKPj4gICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICB8ICA3
ICsrKwo+IEFueSBwYXRjaCB0b3VjaGluZyBpOTE1X2RybS5oIHNob3VsZCBoYXZlIGEgbGluayB0
byB0aGUgY29ycmVzcG9uZGluZwo+IHVzZXJzcGFjZSBzZXJpZXMuCj4KPiBSZWdhcmRzLCBKb29u
YXMKPgpNaWdodCBiZSB3b3J0aCBkcm9wcGluZyB0aGlzIHBhdGNoIGZyb20gdGhlIHNlcmllcyB0
aGVuLgoKSSBkb24ndCB0aGluayB3ZSBoYXZlIGFueXRoaW5nIHB1YmxpYyBvciBhbnkgY29taW5n
IHVzZXJzcGFjZSByZWxlYXNlIAptYWtpbmcgdXNlIG9mIHRoaXMuCgoKQ2hlZXJzLAoKCi1MaW9u
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
