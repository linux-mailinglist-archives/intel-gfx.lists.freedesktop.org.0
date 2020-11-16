Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E6B2B457D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Nov 2020 15:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66B1789CF2;
	Mon, 16 Nov 2020 14:05:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0FD789CDB;
 Mon, 16 Nov 2020 14:04:58 +0000 (UTC)
IronPort-SDR: RgJYELV0WgD3q6ar58z5Mzlo/zxIygKdv8w0llIC46a7xIj/i7QnOzwKNM1mBUlGuB8zv20Clr
 AaroDYKZyQnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="158524876"
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="158524876"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 06:04:04 -0800
IronPort-SDR: juF5mDrD5VmoJhTnP2Xa/n9VQNd0YqdSzG+1yegSMCmhdgcCnfI5yJxkLw8aILKAOhoKiAdYLJ
 TDHHJyJNyP0g==
X-IronPort-AV: E=Sophos;i="5.77,482,1596524400"; d="scan'208";a="358472417"
Received: from thoscilo-mobl.ger.corp.intel.com (HELO zkempczy-mobl2)
 ([10.213.1.186])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2020 06:04:02 -0800
Date: Mon, 16 Nov 2020 15:03:59 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20201116140359.GA39257@zkempczy-mobl2>
References: <20201113162736.2434791-1-tvrtko.ursulin@linux.intel.com>
 <20201113162736.2434791-4-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113162736.2434791-4-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC i-g-t 3/5] lib/igt_device_scan: Remember PCI
 card index after scanning
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMTMsIDIwMjAgYXQgMDQ6Mjc6MzRQTSArMDAwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiAKPiBBZnRlciBkZXZpY2VzIGFyZSBzb3J0ZWQgcG9zdCBzY2FubmluZywgYXNzaW5nIGEgY2Fy
ZCBpbmRleCB0byBlYWNoIHNvIGl0Cj4gY2FuIGJlIGVhc2lseSBhY2Nlc3NlZCBpZiBQQ0kgZmls
dGVyIGZvciBhIGNhcmQgbmVlZHMgdG8gYmUgcHJpbnRlZCBvdXQuCj4gCj4gU2lnbmVkLW9mZi1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogUGV0cmkg
TGF0dmFsYSA8cGV0cmkubGF0dmFsYUBpbnRlbC5jb20+Cj4gQ2M6IFpiaWduaWV3IEtlbXBjennF
hHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+IC0tLQo+ICBsaWIvaWd0X2Rl
dmljZV9zY2FuLmMgfCA0MyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0t
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9saWIvaWd0X2RldmljZV9zY2FuLmMgYi9saWIvaWd0X2RldmljZV9z
Y2FuLmMKPiBpbmRleCBjMGNkNjc1N2ZjMjcuLjcyNjUzNDAzZjcwNSAxMDA2NDQKPiAtLS0gYS9s
aWIvaWd0X2RldmljZV9zY2FuLmMKPiArKysgYi9saWIvaWd0X2RldmljZV9zY2FuLmMKPiBAQCAt
MTY2LDYgKzE2Niw3IEBAIHN0cnVjdCBpZ3RfZGV2aWNlIHsKPiAgCWNoYXIgKnZlbmRvcjsKPiAg
CWNoYXIgKmRldmljZTsKPiAgCWNoYXIgKnBjaV9zbG90X25hbWU7Cj4gKwlpbnQgcGNpX2luZGV4
Owo+ICAKPiAgCXN0cnVjdCBpZ3RfbGlzdF9oZWFkIGxpbms7Cj4gIH07Cj4gQEAgLTYwMSw2ICs2
MDIsMzMgQEAgc3RhdGljIHZvaWQgc29ydF9hbGxfZGV2aWNlcyh2b2lkKQo+ICAJZnJlZShkZXZz
KTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgaW5kZXhfcGNpX2RldmljZXModm9pZCkKPiArewo+
ICsJc3RydWN0IGlndF9kZXZpY2UgKmRldjsKPiArCj4gKwlpZ3RfbGlzdF9mb3JfZWFjaF9lbnRy
eShkZXYsICZpZ3RfZGV2cy5hbGwsIGxpbmspIHsKPiArCQlzdHJ1Y3QgaWd0X2RldmljZSAqZGV2
MjsKPiArCQlpbnQgaW5kZXggPSAwOwo+ICsKPiArCQlpZiAoIWlzX3BjaV9zdWJzeXN0ZW0oZGV2
KSkKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCWlndF9saXN0X2Zvcl9lYWNoX2VudHJ5KGRldjIs
ICZpZ3RfZGV2cy5hbGwsIGxpbmspIHsKPiArCQkJaWYgKCFpc19wY2lfc3Vic3lzdGVtKGRldjIp
KQo+ICsJCQkJY29udGludWU7Cj4gKwo+ICsJCQlpZiAoZGV2MiA9PSBkZXYpCj4gKwkJCQlicmVh
azsKPiArCj4gKwkJCWlmICghc3RyY2FzZWNtcChkZXYtPnZlbmRvciwgZGV2Mi0+dmVuZG9yKSAm
Jgo+ICsJCQkgICAgIXN0cmNhc2VjbXAoZGV2LT5kZXZpY2UsIGRldjItPmRldmljZSkpCj4gKwkJ
CQlpbmRleCsrOwo+ICsJCX0KPiArCj4gKwkJZGV2LT5wY2lfaW5kZXggPSBpbmRleDsKPiArCX0K
PiArfQo+ICsKPiAgLyogQ29yZSBzY2FubmluZyBmdW5jdGlvbi4KPiAgICoKPiAgICogQWxsIHNj
YW5uZWQgZGV2aWNlcyBhcmUga2VwdCBpbnNpZGUgaWd0X2RldnMuYWxsIHBvaW50ZXIgYXJyYXku
Cj4gQEAgLTY1Nyw2ICs2ODUsNyBAQCBzdGF0aWMgdm9pZCBzY2FuX2RybV9kZXZpY2VzKHZvaWQp
Cj4gIAl1ZGV2X3VucmVmKHVkZXYpOwo+ICAKPiAgCXNvcnRfYWxsX2RldmljZXMoKTsKPiArCWlu
ZGV4X3BjaV9kZXZpY2VzKCk7Cj4gIAo+ICAJaWd0X2xpc3RfZm9yX2VhY2hfZW50cnkoZGV2LCAm
aWd0X2RldnMuYWxsLCBsaW5rKSB7Cj4gIAkJc3RydWN0IGlndF9kZXZpY2UgKmRldl9kdXAgPSBk
dXBsaWNhdGVfZGV2aWNlKGRldik7Cj4gQEAgLTExMDUsMTMgKzExMzQsMTMgQEAgc3RhdGljIHN0
cnVjdCBpZ3RfbGlzdF9oZWFkICpmaWx0ZXJfcGNpKGNvbnN0IHN0cnVjdCBmaWx0ZXJfY2xhc3Mg
KmZjbHMsCj4gIAkJaWYgKGZpbHRlci0+ZGF0YS5kZXZpY2UgJiYgc3RyY2FzZWNtcChmaWx0ZXIt
PmRhdGEuZGV2aWNlLCBkZXYtPmRldmljZSkpCj4gIAkJCWNvbnRpbnVlOwo+ICAKPiAtCQkvKiBX
ZSBnZXQgbi10aCBjYXJkICovCj4gLQkJaWYgKCFjYXJkKSB7Cj4gLQkJCXN0cnVjdCBpZ3RfZGV2
aWNlICpkdXAgPSBkdXBsaWNhdGVfZGV2aWNlKGRldik7Cj4gLQkJCWlndF9saXN0X2FkZF90YWls
KCZkdXAtPmxpbmssICZpZ3RfZGV2cy5maWx0ZXJlZCk7Cj4gLQkJCWJyZWFrOwo+IC0JCX0KPiAt
CQljYXJkLS07Cj4gKwkJLyogU2tpcCBpZiAnY2FyZCcgZG9lc24ndCBtYXRjaCAqLwo+ICsJCWlm
IChjYXJkICE9IGRldi0+cGNpX2luZGV4KQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJZGV2ID0g
ZHVwbGljYXRlX2RldmljZShkZXYpOwo+ICsJCWlndF9saXN0X2FkZF90YWlsKCZkZXYtPmxpbmss
ICZpZ3RfZGV2cy5maWx0ZXJlZCk7Cj4gKwkJYnJlYWs7CgpJIG1heSB3cm9uZyAoSSBnb3Qgbm8g
c3VjaCB0ZXN0aW5nIGVudikgYnV0IGRldnNfY29tcGFyZSgpIGZ1bmN0aW9uIGFsb25nIHdpdGgK
aW5kZXhfcGNpX2RldmljZXMoKSBjYW4gbGVhZCB1cyB0byBzdWNoIChleGFtcGxlKSBzaXR1YXRp
b246CgppZ3RfZGV2cy5hbGwgY29udGFpbnMgZGV2aWNlcyB3aXRoIHN5c3BhdGhzIGFuZCBzdWJz
eXN0ZW0gcGNpOiAKL3N5cy9kZXZpY2VzL3BjaTAwMDA6MDAvMDAwMDowMDowNC4wCS0+IHZlbmRv
ciA4MDg2LCBkZXZpY2UgMTIzNAlwY2lfaW5kZXggPT0gMAovc3lzL2RldmljZXMvcGNpMDAwMDow
MC8wMDAwOjAwOjA1LjAJLT4gdmVuZG9yIDgwODYsIGRldmljZSA0MzIxCXBjaV9pbmRleCA9PSAx
Ci9zeXMvZGV2aWNlcy9wY2kwMDAwOjAwLzAwMDA6MDA6MDYuMAktPiB2ZW5kb3IgODA4NiwgZGV2
aWNlIDEyMzQJcGNpX2luZGV4ID09IDIKCklmIHdvdWxkIHRyeSBmaWx0ZXI6IHBjaT12ZW5kb3I9
ODA4NixkZXZpY2U9MTIzNCxjYXJkPTEgSSB3b3VsZCBleHBlY3QKdG8gc2VsZWN0IChzZWNvbmQg
Y2FyZCBbaW5kZXggPT0gMV0pIGZyb20gZmlsdGVyZWQgZGV2aWNlcyB3aGljaCBtYXRjaApkZXZp
Y2UgMTIzNC4KCi0tClpiaWduaWV3Cgo+ICAJfQo+ICAKPiAgCURCRygiRmlsdGVyIHBjaSBmaWx0
ZXJlZCBzaXplOiAlZFxuIiwgaWd0X2xpc3RfbGVuZ3RoKCZpZ3RfZGV2cy5maWx0ZXJlZCkpOwo+
IC0tIAo+IDIuMjUuMQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
