Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C112BCBFA
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 17:59:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C746EA46;
	Tue, 24 Sep 2019 15:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9764A6EA46
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 15:59:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 08:59:36 -0700
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="182954887"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 08:59:34 -0700
Date: Tue, 24 Sep 2019 18:58:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190924155837.GC25906@ideak-desk.fi.intel.com>
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923195513.207536-8-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915/tgl: Fix dkl link training
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMTI6NTU6MTFQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBMaW5rIHRyYWluaW5nIGlzIGZhaWxsaW5nIHdoZW4gcnVubmluZyBs
aW5rIGF0IDIuN0dIeiBhbmQgMS42MkdIeiBhbmQKPiBmb2xsb3dpbmcgQlNwZWMgcGxsIGFsZ29y
aXRobS4KPiAKPiBDb21wYXJpbmcgdGhlIHZhbHVlcyBjYWxjdWxhdGVkIGFuZCB0aGUgb25lcyBm
cm9tIHRoZSByZWZlcmVuY2UgdGFibGUKPiBpdCBsb29rcyBsaWtlIE1HX0NMS1RPUDJfQ09SRUNM
S0NUTDFfQV9ESVZSQVRJTyBzaG91bGQgbm90IGFsd2F5cyBzZXQKPiB0byA1LiBGb3IgRFAgcG9y
dHMgSUNMIG1nIHBsbCBhbGdvcml0aG0gc2V0cyBpdCB0byAxMCBvciA1IGJhc2VkIG9uCj4gZGl2
MiB2YWx1ZSwgdGhhdCBtYXRjaGVzIHdpdGggZGtsIGhhcmRjb2RlZCB0YWJsZS4KPiAKPiBTbyBp
bXBsZW1lbnRpbmcgdGhpcyB3YXkgYXMgaXQgcHJvdmVkIHRvIHdvcmsgaW4gSFcgYW5kIGxlYXZp
bmcgYQo+IGNvbW1lbnQgc28gd2Uga25vdyB3aHkgaXQgZG8gbm90IG1hdGNoIEJTcGVjLgo+IAo+
IElzc3VlIHJlcG9ydGVkIG9uIEJTcGVjIDQ5MjA0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCA3ICsrKysrKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiBpbmRleCA0OTZkZjQw
OTVhMjEuLjNjODgxZDRjZjk3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwbGxfbWdyLmMKPiBAQCAtMjYzMSw3ICsyNjMxLDEyIEBAIHN0YXRpYyBib29s
IGljbF9tZ19wbGxfZmluZF9kaXZpc29ycyhpbnQgY2xvY2tfa2h6LCBib29sIGlzX2RwLCBib29s
IHVzZV9zc2MsCj4gIAo+ICAJCQlpZiAoZGl2MiA+PSAyKSB7Cj4gIAkJCQlpZiAoaXNfZGtsKSB7
Cj4gLQkJCQkJYV9kaXZyYXRpbyA9IDU7Cj4gKwkJCQkJLyoKPiArCQkJCQkgKiBOb3RlOiBhX2Rp
dnJhdGlvIG5vdCBtYXRjaGluZyBUR0wKPiArCQkJCQkgKiBCU3BlYyBhbGdvcml0aG0gYnV0IG1h
dGNoaW5nCj4gKwkJCQkJICogaGFyZGNvZGVkIHZhbHVlcyBhbmQgd29ya2luZyBvbiBIVwo+ICsJ
CQkJCSAqLwo+ICsJCQkJCWFfZGl2cmF0aW8gPSAxMDsKClllcywgbWF0Y2hlcyB0aGUgaGFyZGNv
ZGVkIHZhbHVlcyBmb3IgQ0xLVE9QMl9IU0NMS0NUTC9DT1JFQ0xLQ1RMMSwgd2l0aAp0aGUgZXhj
ZXB0aW9uIHRoYXQgdGhlIGhhcmRjb2RlZCB2YWx1ZSBmb3IgQ0xLVE9QMl9IU0NMS0NUTCA1cDQg
aXMgYWxzbwppbmNvcnJlY3Qgd3J0LiBkaXYyIHdpdGhpbiB0aGF0IChzaG91bGQgYmUgMSBidXQg
aXQncyAyKS4KCkhvd2V2ZXIgd2UgZG9uJ3QgaGF2ZSBhbnkgaGFyZGNvZGVkIHZhbHVlcyBpbiBC
c3BlYyBmb3IgSERNSSBleGNlcHQgZm9yCnRoZSA1Ljk0R2Jwcy9kaXYyPTEgY2FzZS4gU28gdW50
aWwgb3RoZXJ3aXNlIHByb3ZlbiwgZm9yIEhETUkvZGl2Mj49MiBJCndvdWxkbid0IGNoYW5nZSB0
aGUgdmFsdWUsIHJhdGhlciBoYXZlIHRoZSBzYW1lIGxvZ2ljIGFzIGZvciBJQ0wgdGhhdCBpcwpp
c19kcCA/IDEwIDogNTsKCj4gIAkJCQkJdGxpbmVkcnYgPSAxOwo+ICAJCQkJfSBlbHNlIHsKPiAg
CQkJCQlhX2RpdnJhdGlvID0gaXNfZHAgPyAxMCA6IDU7Cj4gLS0gCj4gMi4yMy4wCj4gCj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZngg
bWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
