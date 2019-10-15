Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 173DFD70EF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 10:28:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB1176E629;
	Tue, 15 Oct 2019 08:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3CAD6E629
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 08:28:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 01:28:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="396735646"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga006.fm.intel.com with ESMTP; 15 Oct 2019 01:28:12 -0700
Received: from fmsmsx153.amr.corp.intel.com (10.18.125.6) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Oct 2019 01:28:11 -0700
Received: from bgsmsx103.gar.corp.intel.com (10.223.4.130) by
 FMSMSX153.amr.corp.intel.com (10.18.125.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 15 Oct 2019 01:28:11 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX103.gar.corp.intel.com ([169.254.4.109]) with mapi id 14.03.0439.000;
 Tue, 15 Oct 2019 13:58:08 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 6/7] drm/i915/dsi: Add TE handler for dsi cmd mode.
Thread-Index: AQHVgoLcK2vG/8e4H06mMdfsTggFHKdbXyjg
Date: Tue, 15 Oct 2019 08:28:08 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B8097FA07@BGSMSX108.gar.corp.intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-7-vandita.kulkarni@intel.com>
In-Reply-To: <20191014110122.31923-7-vandita.kulkarni@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWI0YWRiZjEtNjE0ZC00Y2RlLWE0NTktM2JhZDJlZTIxY2VlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJJY3lsSWxKWGFWNlI3UjlXNWY1dHVzNzM2SXhjQzFRejlpcStLQm5NRUxlTEh6WVZGeml1TjV6amk4YzQyRnluIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 6/7] drm/i915/dsi: Add TE handler for dsi cmd
 mode.
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29ycmVjdGlvbiBpbiB0aGlzIHBhdGNoIGlzIG5lZWRlZCAsIEkgd2lsbCBtYWtlIHRoZSBiZWxv
dyBjaGFuZ2UgaW4gdGhlIG5leHQgdmVyc2lvbi4KCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0KPiBGcm9tOiBLdWxrYXJuaSwgVmFuZGl0YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
Cj4gU2VudDogTW9uZGF5LCBPY3RvYmVyIDE0LCAyMDE5IDQ6MzEgUE0KPiBUbzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tOwo+IFNoYW5rYXIsIFVtYSA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgS3Vsa2FybmksIFZhbmRpdGEKPiA8dmFuZGl0YS5rdWxr
YXJuaUBpbnRlbC5jb20+Cj4gU3ViamVjdDogW1JGQyA2LzddIGRybS9pOTE1L2RzaTogQWRkIFRF
IGhhbmRsZXIgZm9yIGRzaSBjbWQgbW9kZS4KPiAKPiBJbiBjYXNlIG9mIGR1YWwgbGluaywgd2Ug
Z2V0IHRoZSBURSBvbiBzbGF2ZS4KPiBTbyBjbGVhciB0aGUgVEUgb24gc2xhdmUgRFNJIElJUi4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDYxCj4g
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA2MSBp
bnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgaW5kZXggYmZiMmE2MzUw
NGZiLi5kMTJlZmE3Mjk0M2IKPiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IEBAIC0y
NjI4LDYgKzI2MjgsNjEgQEAgZ2VuOF9kZV9taXNjX2lycV9oYW5kbGVyKHN0cnVjdAo+IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgaWlyKQo+ICAJCURSTV9FUlJPUigiVW5leHBlY3Rl
ZCBERSBNaXNjIGludGVycnVwdFxuIik7ICB9Cj4gCj4gK3ZvaWQgZ2VuMTFfZHNpX3RlX2ludGVy
cnVwdF9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJCSAg
ICB1MzIgaWlyX3ZhbHVlKQo+ICt7Cj4gKwllbnVtIHBpcGUgcGlwZSA9IElOVkFMSURfUElQRTsK
PiArCWVudW0gcG9ydCBwb3J0Owo+ICsJZW51bSB0cmFuc2NvZGVyIGRzaV90cmFuczsKPiArCXUz
MiB2YWw7Cj4gKwo+ICsJLyoKPiArCSAqIEluY2FzZSBvZiBkdWFsIGxpbmssIFRFIGNvbWVzIGZy
b20gRFNJXzEKPiArCSAqIHRoaXMgaXMgdG8gY2hlY2sgaWYgZHVhbCBsaW5rIGlzIGVuYWJsZWQK
PiArCSAqLwo+ICsJdmFsID0gSTkxNV9SRUFEKFRSQU5TX0RESV9GVU5DX0NUTDIoVFJBTlNDT0RF
Ul9EU0lfMCkpOwo+ICsJdmFsICY9IFBPUlRfU1lOQ19NT0RFX0VOQUJMRTsKPiArCj4gKwkvKgo+
ICsJICogaWYgZHVhbCBsaW5rIGlzIGVuYWJsZWQsIHRoZW4gcmVhZCBEU0lfMAo+ICsJICogdHJh
bnNjb2RlciByZWdpc3RlcnMKPiArCSAqLwo+ICsJcG9ydCA9ICgoaWlyX3ZhbHVlICYgSUNMX0RT
SV8xKSAmJiB2YWwpIHx8IChpaXJfdmFsdWUgJiBJQ0xfRFNJXzApID8KPiBQT1JUX0EgOiBQT1JU
X0I7Cj4gKwlkc2lfdHJhbnMgPSAocG9ydCA9PSBQT1JUX0EpID8gVFJBTlNDT0RFUl9EU0lfMCA6
Cj4gVFJBTlNDT0RFUl9EU0lfMTsKPiArCj4gKwkvKiBDaGVjayBpZiBEU0kgY29uZmlndXJlZCBp
biBjb21tYW5kIG1vZGUgKi8KPiArCXZhbCA9IEk5MTVfUkVBRChEU0lfVFJBTlNfRlVOQ19DT05G
KGRzaV90cmFucykpOwo+ICsJdmFsID0gKHZhbCAmIE9QX01PREVfTUFTSykgPj4gMjg7Cj4gKwo+
ICsJaWYgKHZhbCkgewo+ICsJCURSTV9FUlJPUigiRFNJIHRyYW5jb2RlciBub3QgY29uZmlndXJl
ZCBpbiBjb21tYW5kCj4gbW9kZVxuIik7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCS8qIEdl
dCBQSVBFIGZvciBoYW5kbGluZyBWQkxBTksgZXZlbnQgKi8KPiArCXZhbCA9IEk5MTVfUkVBRChU
UkFOU19ERElfRlVOQ19DVEwoZHNpX3RyYW5zKSk7Cj4gKwlzd2l0Y2ggKHZhbCAmIFRSQU5TX0RE
SV9FRFBfSU5QVVRfTUFTSykgewo+ICsJY2FzZSBUUkFOU19ERElfRURQX0lOUFVUX0FfT046Cj4g
KwkJcGlwZSA9IFBJUEVfQTsKPiArCQlicmVhazsKPiArCWNhc2UgVFJBTlNfRERJX0VEUF9JTlBV
VF9CX09OT0ZGOgo+ICsJCXBpcGUgPSBQSVBFX0I7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFRSQU5T
X0RESV9FRFBfSU5QVVRfQ19PTk9GRjoKPiArCQlwaXBlID0gUElQRV9DOwo+ICsJCWJyZWFrOwo+
ICsJZGVmYXVsdDoKPiArCQlEUk1fRVJST1IoIkludmFsaWQgUElQRVxuIik7Cj4gKwl9Cj4gKwo+
ICsJLyogY2xlYXIgVEUgaW4gZHNpIElJUiAqLwo+ICsJcG9ydCA9IChpaXJfdmFsdWUgJiBJQ0xf
RFNJXzEpID8gUE9SVF9CIDogUE9SVF9BOwo+ICsJdmFsID0gSTkxNV9SRUFEKElDTF9EU0lfSU5U
Ul9JREVOVF9SRUcocG9ydCkpOwo+ICsJSTkxNV9XUklURSgoSUNMX0RTSV9JTlRSX0lERU5UX1JF
Ryhwb3J0KSksIHZhbCk7Cj4gKwo+ICsJZHJtX2hhbmRsZV92YmxhbmsoJmRldl9wcml2LT5kcm0s
IHBpcGUpOyB9Cj4gKwo+ICBzdGF0aWMgaXJxcmV0dXJuX3QKPiAgZ2VuOF9kZV9pcnFfaGFuZGxl
cihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBtYXN0ZXJfY3RsKSAgewo+
IEBAIC0yNjkyLDYgKzI3NDcsMTIgQEAgZ2VuOF9kZV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZQo+ICpkZXZfcHJpdiwgdTMyIG1hc3Rlcl9jdGwpCj4gIAkJCQlmb3VuZCA9IHRy
dWU7Cj4gIAkJCX0KPiAKPiArCQkJaWYgKChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKSAmJgo+
ICsJCQkJKGlpciAmIChJQ0xfRFNJXzAgfCBJQ0xfRFNJXzEpKSkgewpJbnN0ZWFkIGlmIElDTF9E
U0lfMCBpdCBzaG91bGQgYmUgSUNMX1RFX0RTSV8wIGFuZCBpbnN0ZWFkIG9mIElDTF9EU0lfMSBp
dCBzaG91bGQgYmUgSUNMX1RFX0RTSV8xCgo+ICsJCQkJZ2VuMTFfZHNpX3RlX2ludGVycnVwdF9o
YW5kbGVyKGRldl9wcml2LAo+IGlpcik7Cj4gKwkJCQlmb3VuZCA9IHRydWU7Cj4gKwkJCX0KPiAr
Cj4gIAkJCWlmICghZm91bmQpCj4gIAkJCQlEUk1fRVJST1IoIlVuZXhwZWN0ZWQgREUgUG9ydAo+
IGludGVycnVwdFxuIik7Cj4gIAkJfQo+IC0tCj4gMi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
