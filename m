Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4FBBF3FE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 15:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D16C89D52;
	Thu, 26 Sep 2019 13:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12FC089D52
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 13:24:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 06:24:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="183620531"
Received: from ipoitasu-mobl.ger.corp.intel.com (HELO [10.252.53.239])
 ([10.252.53.239])
 by orsmga008.jf.intel.com with ESMTP; 26 Sep 2019 06:24:55 -0700
To: Anna Karas <anna.karas@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190926122158.13028-1-anna.karas@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <ce3d8c3e-6a1e-110e-20f8-cfeffa591164@intel.com>
Date: Thu, 26 Sep 2019 16:24:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190926122158.13028-1-anna.karas@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Fix use of kernel-doc format
 in structure members
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

T24gMjYvMDkvMjAxOSAxNToyMSwgQW5uYSBLYXJhcyB3cm90ZToKPiBJbnNlcnQgc3RydWN0dXJl
IG1lbWJlcnMgbmFtZXMgaW50byB0aGVpciBkZXNjcmlwdGlvbnMgdG8gZm9sbG93Cj4ga2VybmVs
LWRvYyBmb3JtYXQuCj4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Cj4gU2lnbmVkLW9mZi1ieTogQW5uYSBLYXJhcyA8YW5uYS5rYXJhc0BpbnRlbC5jb20+CgoK
U3RpbGwKCkFja2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBp
bnRlbC5jb20+CgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggfCAx
NCArKysrKysrLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IGZjZjc0MjMwNzVl
Zi4uYjNjN2RiYzE4MzJhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTExMzQs
NyArMTEzNCw3IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKPiAgIAlzdHJ1Y3QgaTkxNV9v
YV9jb25maWcgKm9hX2NvbmZpZzsKPiAgIAo+ICAgCS8qKgo+IC0JICogVGhlIE9BIGNvbnRleHQg
c3BlY2lmaWMgaW5mb3JtYXRpb24uCj4gKwkgKiBAcGlubmVkX2N0eDogVGhlIE9BIGNvbnRleHQg
c3BlY2lmaWMgaW5mb3JtYXRpb24uCj4gICAJICovCj4gICAJc3RydWN0IGludGVsX2NvbnRleHQg
KnBpbm5lZF9jdHg7Cj4gICAJdTMyIHNwZWNpZmljX2N0eF9pZDsKPiBAQCAtMTE0OCw3ICsxMTQ4
LDcgQEAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gewo+ICAgCWludCBwZXJpb2RfZXhwb25lbnQ7
Cj4gICAKPiAgIAkvKioKPiAtCSAqIFN0YXRlIG9mIHRoZSBPQSBidWZmZXIuCj4gKwkgKiBAb2Ff
YnVmZmVyOiBTdGF0ZSBvZiB0aGUgT0EgYnVmZmVyLgo+ICAgCSAqLwo+ICAgCXN0cnVjdCB7Cj4g
ICAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+IEBAIC0xMTU5LDcgKzExNTksNyBAQCBzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSB7Cj4gICAJCWludCBzaXplX2V4cG9uZW50Owo+ICAgCj4gICAJCS8q
Kgo+IC0JCSAqIExvY2tzIHJlYWRzIGFuZCB3cml0ZXMgdG8gYWxsIGhlYWQvdGFpbCBzdGF0ZQo+
ICsJCSAqIEBwdHJfbG9jazogTG9ja3MgcmVhZHMgYW5kIHdyaXRlcyB0byBhbGwgaGVhZC90YWls
IHN0YXRlCj4gICAJCSAqCj4gICAJCSAqIENvbnNpZGVyOiB0aGUgaGVhZCBhbmQgdGFpbCBwb2lu
dGVyIHN0YXRlIG5lZWRzIHRvIGJlIHJlYWQKPiAgIAkJICogY29uc2lzdGVudGx5IGZyb20gYSBo
cnRpbWVyIGNhbGxiYWNrIChhdG9taWMgY29udGV4dCkgYW5kCj4gQEAgLTExODEsNyArMTE4MSw3
IEBAIHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtIHsKPiAgIAkJc3BpbmxvY2tfdCBwdHJfbG9jazsK
PiAgIAo+ICAgCQkvKioKPiAtCQkgKiBPbmUgJ2FnaW5nJyB0YWlsIHBvaW50ZXIgYW5kIG9uZSAn
YWdlZCcgdGFpbCBwb2ludGVyIHJlYWR5IHRvCj4gKwkJICogQHRhaWxzOiBPbmUgJ2FnaW5nJyB0
YWlsIHBvaW50ZXIgYW5kIG9uZSAnYWdlZCcgdGFpbCBwb2ludGVyIHJlYWR5IHRvCj4gICAJCSAq
IHVzZWQgZm9yIHJlYWRpbmcuCj4gICAJCSAqCj4gICAJCSAqIEluaXRpYWwgdmFsdWVzIG9mIDB4
ZmZmZmZmZmYgYXJlIGludmFsaWQgYW5kIGltcGx5IHRoYXQgYW4KPiBAQCAtMTE5MywxOCArMTE5
MywxOCBAQCBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSB7Cj4gICAJCX0gdGFpbHNbMl07Cj4gICAK
PiAgIAkJLyoqCj4gLQkJICogSW5kZXggZm9yIHRoZSBhZ2VkIHRhaWwgcmVhZHkgdG8gcmVhZCgp
IGRhdGEgdXAgdG8uCj4gKwkJICogQGFnZWRfdGFpbF9pZHg6IEluZGV4IGZvciB0aGUgYWdlZCB0
YWlsIHJlYWR5IHRvIHJlYWQoKSBkYXRhIHVwIHRvLgo+ICAgCQkgKi8KPiAgIAkJdW5zaWduZWQg
aW50IGFnZWRfdGFpbF9pZHg7Cj4gICAKPiAgIAkJLyoqCj4gLQkJICogQSBtb25vdG9uaWMgdGlt
ZXN0YW1wIGZvciB3aGVuIHRoZSBjdXJyZW50IGFnaW5nIHRhaWwgcG9pbnRlcgo+ICsJCSAqIEBh
Z2luZ190aW1lc3RhbXA6IEEgbW9ub3RvbmljIHRpbWVzdGFtcCBmb3Igd2hlbiB0aGUgY3VycmVu
dCBhZ2luZyB0YWlsIHBvaW50ZXIKPiAgIAkJICogd2FzIHJlYWQ7IHVzZWQgdG8gZGV0ZXJtaW5l
IHdoZW4gaXQgaXMgb2xkIGVub3VnaCB0byB0cnVzdC4KPiAgIAkJICovCj4gICAJCXU2NCBhZ2lu
Z190aW1lc3RhbXA7Cj4gICAKPiAgIAkJLyoqCj4gLQkJICogQWx0aG91Z2ggd2UgY2FuIGFsd2F5
cyByZWFkIGJhY2sgdGhlIGhlYWQgcG9pbnRlciByZWdpc3RlciwKPiArCQkgKiBAaGVhZDogQWx0
aG91Z2ggd2UgY2FuIGFsd2F5cyByZWFkIGJhY2sgdGhlIGhlYWQgcG9pbnRlciByZWdpc3RlciwK
PiAgIAkJICogd2UgcHJlZmVyIHRvIGF2b2lkIHRydXN0aW5nIHRoZSBIVyBzdGF0ZSwganVzdCB0
byBhdm9pZCBhbnkKPiAgIAkJICogcmlzayB0aGF0IHNvbWUgaGFyZHdhcmUgY29uZGl0aW9uIGNv
dWxkICogc29tZWhvdyBidW1wIHRoZQo+ICAgCQkgKiBoZWFkIHBvaW50ZXIgdW5wcmVkaWN0YWJs
eSBhbmQgY2F1c2UgdXMgdG8gZm9yd2FyZCB0aGUgd3JvbmcKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
