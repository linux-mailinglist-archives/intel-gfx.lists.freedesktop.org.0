Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA25F2511C2
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 07:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889E56E861;
	Tue, 25 Aug 2020 05:53:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4AC96E861
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 05:52:59 +0000 (UTC)
IronPort-SDR: AUqPQmA9t1J1lalIOVpReb0T6WHYqrc6YKREH2N7hWLZ3xILNde3NW5OHrdHGK72SXYsRdNOEs
 HZiokCbMBQyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="136111427"
X-IronPort-AV: E=Sophos;i="5.76,351,1592895600"; d="scan'208";a="136111427"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 22:52:58 -0700
IronPort-SDR: 3AUQpJzRUOzR9CgpEWfrjJtDb/3a5INUFupnecoDjGfbI3qCJKVB3YlWKJ0GCP4q8W0Nhq/j/h
 4qRHty9m5AUA==
X-IronPort-AV: E=Sophos;i="5.76,351,1592895600"; d="scan'208";a="281405513"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 22:52:56 -0700
Date: Tue, 25 Aug 2020 11:11:32 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200825054131.GG25390@intel.com>
References: <20200824174345.87553-1-jose.souza@intel.com>
 <20200824174345.87553-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824174345.87553-3-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: Fix DRRS debugfs
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
Cc: intel-gfx@lists.freedesktop.org, Hariom Pandey <hariom.pandey@intel.com>,
 Srinivas K <srinivasx.k@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wOC0yNCBhdCAxMDo0Mzo0NSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPiBTdXBwb3J0ZWQgYW5kIGVuYWJsZWQgYXJlIGRpZmZlcmVudCB0aGluZ3Mgc28gcHJp
bnRpbmcgYm90aC4KPiAKPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4KPiBDYzogU3Jpbml2YXMgSyA8c3Jpbml2YXN4LmtAaW50ZWwuY29tPgo+IENjOiBIYXJp
b20gUGFuZGV5IDxoYXJpb20ucGFuZGV5QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYyB8IDEyICsrKysr
KysrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZWJ1Z2ZzLmMKPiBpbmRleCBmNTQ5MzgxMDQ4YjMuLjRiNGNhYmYzNGQyNCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdm
cy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2Rl
YnVnZnMuYwo+IEBAIC0xMDY5LDEwICsxMDY5LDE4IEBAIHN0YXRpYyB2b2lkIGRycnNfc3RhdHVz
X3Blcl9jcnRjKHN0cnVjdCBzZXFfZmlsZSAqbSwKPiAgCj4gIAlkcm1fY29ubmVjdG9yX2xpc3Rf
aXRlcl9iZWdpbihkZXYsICZjb25uX2l0ZXIpOwo+ICAJZHJtX2Zvcl9lYWNoX2Nvbm5lY3Rvcl9p
dGVyKGNvbm5lY3RvciwgJmNvbm5faXRlcikgewo+ICsJCWJvb2wgc3VwcG9ydGVkID0gZmFsc2U7
Cj4gKwo+ICAJCWlmIChjb25uZWN0b3ItPnN0YXRlLT5jcnRjICE9ICZpbnRlbF9jcnRjLT5iYXNl
KQo+ICAJCQljb250aW51ZTsKPiAgCj4gIAkJc2VxX3ByaW50ZihtLCAiJXM6XG4iLCBjb25uZWN0
b3ItPm5hbWUpOwo+ICsKPiArCQlpZiAoY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1f
TU9ERV9DT05ORUNUT1JfZURQICYmCj4gKwkJICAgIGRldl9wcml2LT52YnQuZHJyc190eXBlID09
IFNFQU1MRVNTX0RSUlNfU1VQUE9SVCkKSU1PIHVzZSBkZXZfcHJpdi0+ZHJycy50eXBlIGhlcmUs
IGJlY3Vhc2UgRFJSUyBpcyBub3Qgc3VwcG9ydGVkIGluIGNhc2UKaW50ZWxfcGFuZWxfZWRpZF9k
b3duY2xvY2tfbW9kZSgpIHJldHVybiBhIE5VTEwgZG93bmNsb2NrIG1vZGUgaW4gCmludGVsX2Rw
X2RycnNfaW5pdCgpLgoKVGhhbmtzLApBbnNodW1hbiBHdXB0YQo+ICsJCQlzdXBwb3J0ZWQgPSB0
cnVlOwo+ICsKPiArCQlzZXFfcHJpbnRmKG0sICJcdERSUlMgU3VwcG9ydGVkOiAlc1xuIiwgeWVz
bm8oc3VwcG9ydGVkKSk7Cj4gIAl9Cj4gIAlkcm1fY29ubmVjdG9yX2xpc3RfaXRlcl9lbmQoJmNv
bm5faXRlcik7Cj4gIAo+IEBAIC0xMDgzLDcgKzEwOTEsNyBAQCBzdGF0aWMgdm9pZCBkcnJzX3N0
YXR1c19wZXJfY3J0YyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gIAo+ICAJCW11dGV4X2xvY2soJmRy
cnMtPm11dGV4KTsKPiAgCQkvKiBEUlJTIFN1cHBvcnRlZCAqLwo+IC0JCXNlcV9wdXRzKG0sICJc
dERSUlMgU3VwcG9ydGVkOiBZZXNcbiIpOwo+ICsJCXNlcV9wdXRzKG0sICJcdERSUlMgRW5hYmxl
ZDogWWVzXG4iKTsKPiAgCj4gIAkJLyogZGlzYWJsZV9kcnJzKCkgd2lsbCBtYWtlIGRycnMtPmRw
IE5VTEwgKi8KPiAgCQlpZiAoIWRycnMtPmRwKSB7Cj4gQEAgLTExMTgsNyArMTEyNiw3IEBAIHN0
YXRpYyB2b2lkIGRycnNfc3RhdHVzX3Blcl9jcnRjKHN0cnVjdCBzZXFfZmlsZSAqbSwKPiAgCQlt
dXRleF91bmxvY2soJmRycnMtPm11dGV4KTsKPiAgCX0gZWxzZSB7Cj4gIAkJLyogRFJSUyBub3Qg
c3VwcG9ydGVkLiBQcmludCB0aGUgVkJUIHBhcmFtZXRlciovCj4gLQkJc2VxX3B1dHMobSwgIlx0
RFJSUyBTdXBwb3J0ZWQgOiBObyIpOwo+ICsJCXNlcV9wdXRzKG0sICJcdERSUlMgRW5hYmxlZCA6
IE5vIik7Cj4gIAl9Cj4gIAlzZXFfcHV0cyhtLCAiXG4iKTsKPiAgfQo+IC0tIAo+IDIuMjguMAo+
IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
