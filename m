Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F97BA62D8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 09:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D42894FE;
	Tue,  3 Sep 2019 07:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E177894FE
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 07:41:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 00:41:47 -0700
X-IronPort-AV: E=Sophos;i="5.64,462,1559545200"; d="scan'208";a="176505229"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 00:41:45 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Date: Tue, 03 Sep 2019 09:41:23 +0200
Message-ID: <2674326.ZPvzKFr69O@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <52fbfac9-c879-4b45-dd74-fafe62c2432b@linux.intel.com>
References: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
 <1769080.0GM3UzqXcv@jkrzyszt-desk.ger.corp.intel.com>
 <52fbfac9-c879-4b45-dd74-fafe62c2432b@linux.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not
 populated on device hot re-plug
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQmFvbHUsCgpPbiBUdWVzZGF5LCBTZXB0ZW1iZXIgMywgMjAxOSAzOjI5OjQwIEFNIENFU1Qg
THUgQmFvbHUgd3JvdGU6Cj4gSGkgSmFudXN6LAo+IAo+IE9uIDkvMi8xOSA0OjM3IFBNLCBKYW51
c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPj4gSSBhbSBub3Qgc2F5aW5nIHRoYXQga2VlcGluZyBk
YXRhIGlzIG5vdCBhY2NlcHRhYmxlLiBJIGp1c3Qgd2FudCB0bwo+ID4+IGNoZWNrIHdoZXRoZXIg
dGhlcmUgYXJlIGFueSBvdGhlciBzb2x1dGlvbnMuCj4gPiBUaGVuIHJldmVydGluZyA0NThiN2M4
ZTBkZGUgYW5kIGFwcGx5aW5nIHRoaXMgcGF0Y2ggc3RpbGwgcmVzb2x2ZXMgdGhlIAppc3N1ZQo+
ID4gZm9yIG1lLiAgTm8gZXJyb3JzIGFwcGVhciB3aGVuIG1hcHBpbmdzIGFyZSB1bm1hcHBlZCBv
biBkZXZpY2UgY2xvc2UgYWZ0ZXIgCnRoZQo+ID4gZGV2aWNlIGhhcyBiZWVuIHJlbW92ZWQsIGFu
ZCBkb21haW4gaW5mbyBwcmVzZXJ2ZWQgb24gZGV2aWNlIHJlbW92YWwgaXMKPiA+IHN1Y2Nlc3Nm
dWxseSByZXVzZWQgb24gZGV2aWNlIHJlLXBsdWcuCj4gCj4gVGhpcyBwYXRjaCBkb2Vzbid0IGxv
b2sgZ29vZCB0byBtZSBhbHRob3VnaCBJIGFncmVlIHRoYXQga2VlcGluZyBkYXRhIGlzCj4gYWNj
ZXB0YWJsZS4gSXQgdXBkYXRlcyBkZXYtPmFyY2hkYXRhLmlvbW11LCBidXQgbGVhdmVzIHRoZSBo
YXJkd2FyZQo+IGNvbnRleHQvcGFzaWQgdGFibGUgdW5jaGFuZ2VkLiBUaGlzIG1pZ2h0IGNhdXNl
IHByb2JsZW1zIHNvbWV3aGVyZS4KPiAKPiA+IAo+ID4gSXMgdGhlcmUgYW55dGhpbmcgZWxzZSBJ
IGNhbiBkbyB0byBoZWxwPwo+IAo+IENhbiB5b3UgcGxlYXNlIHRlbGwgbWUgaG93IHRvIHJlcHJv
ZHVjZSB0aGUgcHJvYmxlbT8gCgpUaGUgbW9zdCBzaW1wbGUgd2F5IHRvIHJlcHJvZHVjZSB0aGUg
aXNzdWUsIGFzc3VtaW5nIHRoZXJlIGFyZSBubyBub24tSW50ZWwgCmdyYXBoaWNzIGFkYXB0ZXJz
IGluc3RhbGxlZCwgaXMgdG8gcnVuIHRoZSBmb2xsb3dpbmcgc2hlbGwgY29tbWFuZHM6CgojIS9i
aW4vc2gKIyBsb2FkIGk5MTUgbW9kdWxlCm1vZHByb2JlIGk5MTUKIyBvcGVuIGFuIGk5MTUgZGV2
aWNlIGFuZCBrZWVwIGl0IG9wZW4gaW4gYmFja2dyb3VuZApjYXQgL2Rldi9kcmkvY2FyZDAgPi9k
ZXYvbnVsbCAmCnNsZWVwIDIKIyBzaW11bGF0ZSBkZXZpY2UgdW5wbHVnCmVjaG8gMSA+L3N5cy9j
bGFzcy9kcm0vY2FyZDAvZGV2aWNlL3JlbW92ZQojIG1ha2UgdGhlIGJhY2tncm91bmQgcHJvY2Vz
cyBjbG9zZSB0aGUgZGV2aWNlIG9uIGV4aXQKa2lsbCAkIQoKVGhhbmtzLApKYW51c3oKCgo+IEtl
ZXBpbmcgdGhlIHBlcgo+IGRldmljZSBkb21haW4gaW5mbyB3aGlsZSBkZXZpY2UgaXMgdW5wbHVn
Z2VkIGlzIGEgYml0IGRhbmdlcm91cyBiZWNhdXNlCj4gaW5mby0+ZGV2IG1pZ2h0IGJlIGEgd2ls
ZCBwb2ludGVyLiBXZSBuZWVkIHRvIHdvcmsgb3V0IGEgY2xlYW4gZml4Lgo+IAo+ID4gCj4gPiBU
aGFua3MsCj4gPiBKYW51c3oKPiA+IAo+IAo+IEJlc3QgcmVnYXJkcywKPiBCYW9sdQo+IAoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
