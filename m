Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE53217C117
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 16:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196626E48C;
	Fri,  6 Mar 2020 15:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9ABF6ED32
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 15:00:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 07:00:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="234829416"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.66.115.214])
 ([10.66.115.214])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2020 07:00:29 -0800
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
 <20200303173313.28117-4-ville.syrjala@linux.intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <ba32ae21-d9cb-8f2c-d4d8-329abb06ea4c@intel.com>
Date: Fri, 6 Mar 2020 20:30:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200303173313.28117-4-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915: Split i9xx_read_lut_8() to
 gmch vs. ilk variants
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAwMy1NYXItMjAgMTE6MDMgUE0sIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBUbyBtaXJy
b3IgdGhlIGxvYWRfbHV0cyBwYXRoIGxldCdzIGNsb25lIGFuIGlsaysgdmVyc2lvbgo+IGZyb20g
aTl4eF9yZWFkX2x1dF84KCkuIEkgZ3Vlc3MgdGhlIGV4dHJhIGJyYW5jaCBpc24ndCBhIGh1Z2UK
PiBpc3N1ZSBidXQgZmVlbHMgYmV0dGVyIHRvIG1ha2UgYSBjbGVhbiBzcGxpdC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgoKUmV2aWV3ZWQtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Cgo+
IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNDEg
KysrKysrKysrKysrKysrKysrLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDM1IGluc2VydGlvbnMo
KyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29sb3IuYwo+IGluZGV4IGNmOGVkNGUyYWUxMy4uZTNhYmFhMTkwOGE5IDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+IEBAIC0xNzA2LDEwICsx
NzA2LDcgQEAgaTl4eF9yZWFkX2x1dF84KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ICAgCWJsb2JfZGF0YSA9IGJsb2ItPmRhdGE7Cj4gICAKPiAgIAlmb3IgKGkg
PSAwOyBpIDwgTEVHQUNZX0xVVF9MRU5HVEg7IGkrKykgewo+IC0JCWlmIChIQVNfR01DSChkZXZf
cHJpdikpCj4gLQkJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBBTEVUVEUocGlwZSwg
aSkpOwo+IC0JCWVsc2UKPiAtCQkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgTEdDX1BB
TEVUVEUocGlwZSwgaSkpOwo+ICsJCXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIFBBTEVU
VEUocGlwZSwgaSkpOwo+ICAgCj4gICAJCWJsb2JfZGF0YVtpXS5yZWQgPSBpbnRlbF9jb2xvcl9s
dXRfcGFjayhSRUdfRklFTERfR0VUKAo+ICAgCQkJCQkJCUxHQ19QQUxFVFRFX1JFRF9NQVNLLCB2
YWwpLCA4KTsKPiBAQCAtMTgyNCw2ICsxODIxLDM4IEBAIHN0YXRpYyB2b2lkIGNodl9yZWFkX2x1
dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gICAJCWk5NjVfcmVhZF9s
dXRzKGNydGNfc3RhdGUpOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5
X2Jsb2IgKgo+ICtpbGtfcmVhZF9sdXRfOChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkKPiArewo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9j
cnRjKGNydGNfc3RhdGUtPnVhcGkuY3J0Yyk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArCWVudW0gcGlwZSBwaXBlID0g
Y3J0Yy0+cGlwZTsKPiArCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsKPiArCXN0cnVj
dCBkcm1fY29sb3JfbHV0ICpibG9iX2RhdGE7Cj4gKwl1MzIgaSwgdmFsOwo+ICsKPiArCWJsb2Ig
PSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5kcm0sCj4gKwkJCQkJc2l6ZW9m
KHN0cnVjdCBkcm1fY29sb3JfbHV0KSAqIExFR0FDWV9MVVRfTEVOR1RILAo+ICsJCQkJCU5VTEwp
Owo+ICsJaWYgKElTX0VSUihibG9iKSkKPiArCQlyZXR1cm4gTlVMTDsKPiArCj4gKwlibG9iX2Rh
dGEgPSBibG9iLT5kYXRhOwo+ICsKPiArCWZvciAoaSA9IDA7IGkgPCBMRUdBQ1lfTFVUX0xFTkdU
SDsgaSsrKSB7Cj4gKwkJdmFsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgTEdDX1BBTEVUVEUo
cGlwZSwgaSkpOwo+ICsKPiArCQlibG9iX2RhdGFbaV0ucmVkID0gaW50ZWxfY29sb3JfbHV0X3Bh
Y2soUkVHX0ZJRUxEX0dFVCgKPiArCQkJCQkJCUxHQ19QQUxFVFRFX1JFRF9NQVNLLCB2YWwpLCA4
KTsKPiArCQlibG9iX2RhdGFbaV0uZ3JlZW4gPSBpbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklF
TERfR0VUKAo+ICsJCQkJCQkJICBMR0NfUEFMRVRURV9HUkVFTl9NQVNLLCB2YWwpLCA4KTsKPiAr
CQlibG9iX2RhdGFbaV0uYmx1ZSA9IGludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQo
Cj4gKwkJCQkJCQkgTEdDX1BBTEVUVEVfQkxVRV9NQVNLLCB2YWwpLCA4KTsKPiArCX0KPiArCj4g
KwlyZXR1cm4gYmxvYjsKPiArfQo+ICsKPiAgIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Js
b2IgKgo+ICAgaWxrX3JlYWRfbHV0XzEwKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ICAgewo+IEBAIC0xODY2LDcgKzE4OTUsNyBAQCBzdGF0aWMgdm9pZCBpbGtf
cmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+ICAgCQlyZXR1
cm47Cj4gICAKPiAgIAlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01P
REVfOEJJVCkKPiAtCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQgPSBpOXh4X3JlYWRfbHV0Xzgo
Y3J0Y19zdGF0ZSk7Cj4gKwkJY3J0Y19zdGF0ZS0+aHcuZ2FtbWFfbHV0ID0gaWxrX3JlYWRfbHV0
XzgoY3J0Y19zdGF0ZSk7Cj4gICAJZWxzZQo+ICAgCQljcnRjX3N0YXRlLT5ody5nYW1tYV9sdXQg
PSBpbGtfcmVhZF9sdXRfMTAoY3J0Y19zdGF0ZSk7Cj4gICB9Cj4gQEAgLTE5MTUsNyArMTk0NCw3
IEBAIHN0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpCj4gICAJCXJldHVybjsKPiAgIAo+ICAgCWlmIChjcnRjX3N0YXRlLT5nYW1tYV9t
b2RlID09IEdBTU1BX01PREVfTU9ERV84QklUKQo+IC0JCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1
dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKPiArCQljcnRjX3N0YXRlLT5ody5nYW1t
YV9sdXQgPSBpbGtfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKPiAgIAllbHNlCj4gICAJCWNydGNf
c3RhdGUtPmh3LmdhbW1hX2x1dCA9IGdsa19yZWFkX2x1dF8xMChjcnRjX3N0YXRlLCBQQUxfUFJF
Q19JTkRFWF9WQUxVRSgwKSk7Cj4gICB9Cj4gCgotLSAKflN3YXRpIFNoYXJtYQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
