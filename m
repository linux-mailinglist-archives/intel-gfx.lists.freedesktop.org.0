Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FE194C17
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 19:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF93B6E25A;
	Mon, 19 Aug 2019 17:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A0706E25A
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 17:55:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 10:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="179490661"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by fmsmga007.fm.intel.com with ESMTP; 19 Aug 2019 10:55:56 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.49]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.170]) with mapi id 14.03.0439.000;
 Mon, 19 Aug 2019 10:55:56 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 04/40] drm/i915/tgl: update DMC firmware to 2.04
Thread-Index: AQHVVN+nyHcchU27W065ZaVKxP1CT6cCxH/g
Date: Mon, 19 Aug 2019 17:55:56 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B07348120643@ORSMSX108.amr.corp.intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-5-lucas.demarchi@intel.com>
In-Reply-To: <20190817093902.2171-5-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNjI0ZDNmNTktMDY4NC00ZDc4LTg2YzQtMmZlMTZlMjQ2YTkwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWWNzRGE2RHJleXhYam5yRmEyTlNuSGxjZHJ0dVA1MFdTSXRiU2E0QnBKMUxIVmhSZG11Y29iN1pIWEgxVHlKbyJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 04/40] drm/i915/tgl: update DMC firmware
 to 2.04
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogRGUgTWFyY2hpLCBMdWNhcwo+
IFNlbnQ6IFNhdHVyZGF5LCBBdWd1c3QgMTcsIDIwMTkgMjozOCBBTQo+IFRvOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gQ2M6IFNvdXphLCBKb3NlIDxqb3NlLnNvdXphQGludGVs
LmNvbT47IFNyaXZhdHNhLCBBbnVzaGEKPiA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPiBT
dWJqZWN0OiBbUEFUQ0ggdjIgMDQvNDBdIGRybS9pOTE1L3RnbDogdXBkYXRlIERNQyBmaXJtd2Fy
ZSB0byAyLjA0Cj4gCj4gMiBpbXBvcnRhbnQgZml4ZXM6Cj4gICAtIHZibGFuayBjb3VudGVyIGlz
IG5vdyB3b3JraW5nCj4gICAtIFBTUjEgaXMgd29ya2luZwo+IAo+IENjOiBKb3NlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0
c2FAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNy
aXZhdHNhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3Ny
LmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+IGluZGV4IDgyNzllNzJlZGY0Yy4u
NTQ2NTc3ZTM5YjRlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nz
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPiBAQCAtMzksOCAr
MzksOCBAQAo+IAo+ICAjZGVmaW5lIEdFTjEyX0NTUl9NQVhfRldfU0laRQkJSUNMX0NTUl9NQVhf
RldfU0laRQo+IAo+IC0jZGVmaW5lIFRHTF9DU1JfUEFUSAkJCSJpOTE1L3RnbF9kbWNfdmVyMl8w
My5iaW4iCj4gLSNkZWZpbmUgVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVECUNTUl9WRVJTSU9OKDIs
IDMpCj4gKyNkZWZpbmUgVEdMX0NTUl9QQVRICQkJImk5MTUvdGdsX2RtY192ZXIyXzA0LmJpbiIK
PiArI2RlZmluZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgNCkKPiAg
I2RlZmluZSBUR0xfQ1NSX01BWF9GV19TSVpFCQkweDYwMDAKPiAgTU9EVUxFX0ZJUk1XQVJFKFRH
TF9DU1JfUEFUSCk7Cj4gCj4gLS0KPiAyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
