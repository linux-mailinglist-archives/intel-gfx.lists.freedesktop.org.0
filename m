Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A8EA06BD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 17:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F054089CD8;
	Wed, 28 Aug 2019 15:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223D789CD8
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 15:55:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 08:55:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="210210923"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 28 Aug 2019 08:55:58 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 08:55:58 -0700
Received: from bgsmsx151.gar.corp.intel.com (10.224.48.42) by
 FMSMSX112.amr.corp.intel.com (10.18.116.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 08:55:57 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX151.gar.corp.intel.com ([169.254.3.99]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 21:25:55 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 05/10] drm/i915/display: Extract i9xx_read_luts()
Thread-Index: AQHVW9itREA1EEbK7Uui3TwWcqod0acQthKw
Date: Wed, 28 Aug 2019 15:55:54 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D39B9@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-6-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-6-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWRlYjYzN2ItZjhjMi00ZjRkLWIzMTQtOTUzMmY2NzVhOTYyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicGpXUWhMT1hGdXIrTTNnaHdOQjJnYnhcL2hDdjNJWjNrUEVcLytxVGp4eGUrMmF1UEkrbWxsZ1lCbVBJcmx6UlBvIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 05/10] drm/i915/display: Extract
 i9xx_read_luts()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFNoYXJtYSwgU3dhdGkyCj5TZW50
OiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMTo1NiBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNoYXJtYSwgU2hhc2hhbmsKPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsKPk5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7Cj52aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+OyBTaGFybWEsCj5Td2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+U3ViamVjdDog
W3Y4XVtQQVRDSCAwNS8xMF0gZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBpOXh4X3JlYWRfbHV0
cygpCj4KPkZvciB0aGUgbGVnYWN5IGdhbW1hLCBoYXZlIGh3IHJlYWQgb3V0IHRvIGNyZWF0ZSBo
dyBibG9iIG9mIGdhbW1hIGx1dCB2YWx1ZXMuCgpXb3VsZCBiZSBiZXR0ZXIgaWYgd2UgZGVmaW5l
IHBsYXRmb3JtcyBmb3Igd2hpY2ggdGhpcyBpcyBhcHBsaWNhYmxlIChJIG1lYW4gd2hhdCBhbGwg
aXMKY29uc2lkZXJlZCBsZWdhY3kgaGVyZSkKCj5BbHNvLCBhZGQgZnVuY3Rpb24gaW50ZWxfY29s
b3JfbHV0X3BhY2sgdG8gY29udmVydCBodyB2YWx1ZSB3aXRoIGdpdmVuIGJpdF9wcmVjaXNpb24K
CldyYXAgdGhpcyB1cCB3aXRoaW4gNzUgY2hhcmFjdGVycy4KCj50byBsdXQgcHJvcGVydHkgdmFs
LgoKS2VlcCB0aGUgdmVyc2lvbiBoaXN0b3J5LCBkb24ndCBkcm9wIHRoYXQuCgo+U2lnbmVkLW9m
Zi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPi0tLQo+IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDUxICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKwo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICB8ICAzICsrCj4gMiBmaWxlcyBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspCj4KPmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPmIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj5pbmRleCAyNzcyN2ExLi40
NWUwZWU4IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMK
PkBAIC0xNTIxLDYgKzE1MjEsNTYgQEAgYm9vbCBpbnRlbF9jb2xvcl9sdXRfZXF1YWwoc3RydWN0
IGRybV9wcm9wZXJ0eV9ibG9iCj4qYmxvYjEsCj4gCXJldHVybiB0cnVlOwo+IH0KPgo+Ky8qIGNv
bnZlcnQgaHcgdmFsdWUgd2l0aCBnaXZlbiBiaXRfcHJlY2lzaW9uIHRvIGx1dCBwcm9wZXJ0eSB2
YWwgKi8KPitzdGF0aWMgdTMyIGludGVsX2NvbG9yX2x1dF9wYWNrKHUzMiB2YWwsIHUzMiBiaXRf
cHJlY2lzaW9uKSB7Cj4rCXUzMiBtYXggPSAweGZmZmYgPj4gKDE2IC0gYml0X3ByZWNpc2lvbik7
Cj4rCj4rCXZhbCA9IGNsYW1wX3ZhbCh2YWwsIDAsIG1heCk7Cj4rCj4rCWlmIChiaXRfcHJlY2lz
aW9uIDwgMTYpCj4rCQl2YWwgPDw9IDE2IC0gYml0X3ByZWNpc2lvbjsKPisKPisJcmV0dXJuIHZh
bDsKPit9Cj4rCj4rc3RhdGljIHN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqCj4raTl4eF9yZWFk
X2x1dF84KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7CgpXb3VsZCBiZSBn
b29kIHRvIGFkZCBzb21lIGNvbW1lbnRzIGRlc2NyaWJpbmcgdGhlIHJhdGlvbmFsZSBvZiB0aGlz
CmZ1bmN0aW9uLiBXaHkgOCBldGMuCgo+KwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2lu
dGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsKPisJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7Cj4rCWVudW0gcGlwZSBwaXBl
ID0gY3J0Yy0+cGlwZTsKPisJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOwo+KwlzdHJ1
Y3QgZHJtX2NvbG9yX2x1dCAqYmxvYl9kYXRhOwo+Kwl1MzIgaSwgdmFsOwo+Kwo+KwlibG9iID0g
ZHJtX3Byb3BlcnR5X2NyZWF0ZV9ibG9iKCZkZXZfcHJpdi0+ZHJtLAo+KwkJCQkJc2l6ZW9mKHN0
cnVjdCBkcm1fY29sb3JfbHV0KSAqIDI1NiwKCkhhdmUgYSBtYWNybyBmb3IgMjU2LiBFeHBsYWlu
IHdoeSAyNTYsIGFkZCBjb21tZW50cy4KCj4rCQkJCQlOVUxMKTsKPisJaWYgKElTX0VSUihibG9i
KSkKPisJCXJldHVybiBOVUxMOwo+Kwo+KwlibG9iX2RhdGEgPSBibG9iLT5kYXRhOwo+Kwo+Kwlm
b3IgKGkgPSAwOyBpIDwgMjU2OyBpKyspIHsKCkFkZCB0aGUgbWFjcm8gZm9yIDI1Ni4KCj4rCQlp
ZiAoSEFTX0dNQ0goZGV2X3ByaXYpKQo+KwkJCXZhbCA9IEk5MTVfUkVBRChQQUxFVFRFKHBpcGUs
IGkpKTsKPisJCWVsc2UKPisJCQl2YWwgPSBJOTE1X1JFQUQoTEdDX1BBTEVUVEUocGlwZSwgaSkp
Owo+Kwo+KwkJYmxvYl9kYXRhW2ldLnJlZCA9Cj5pbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklF
TERfR0VUKExHQ19QQUxFVFRFX1JFRF9NQVNLLCB2YWwpLCA4KTsKPisJCWJsb2JfZGF0YVtpXS5n
cmVlbiA9Cj5pbnRlbF9jb2xvcl9sdXRfcGFjayhSRUdfRklFTERfR0VUKExHQ19QQUxFVFRFX0dS
RUVOX01BU0ssIHZhbCksIDgpOwo+KwkJYmxvYl9kYXRhW2ldLmJsdWUgPQo+aW50ZWxfY29sb3Jf
bHV0X3BhY2soUkVHX0ZJRUxEX0dFVChMR0NfUEFMRVRURV9CTFVFX01BU0ssIHZhbCksIDgpOwo+
Kwl9Cj4rCj4rCXJldHVybiBibG9iOwo+K30KPisKPit2b2lkIGk5eHhfcmVhZF9sdXRzKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7Cj4rCWNydGNfc3RhdGUtPmJhc2UuZ2Ft
bWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3RhdGUpOyB9Cj4rCj4gdm9pZCBpbnRlbF9j
b2xvcl9pbml0KHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKSAgewo+IAlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsgQEAgLTE1NDEsNgo+
KzE1OTEsNyBAQCB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMp
Cj4gCQkJZGV2X3ByaXYtPmRpc3BsYXkuY29sb3JfY2hlY2sgPSBpOXh4X2NvbG9yX2NoZWNrOwo+
IAkJCWRldl9wcml2LT5kaXNwbGF5LmNvbG9yX2NvbW1pdCA9IGk5eHhfY29sb3JfY29tbWl0Owo+
IAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0cyA9IGk5eHhfbG9hZF9sdXRzOwo+KwkJCWRl
dl9wcml2LT5kaXNwbGF5LnJlYWRfbHV0cyA9IGk5eHhfcmVhZF9sdXRzOwo+IAkJfQo+IAl9IGVs
c2Ugewo+IAkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj5kaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggaW5kZXgKPmEwOTJiMzQuLmI2ODdmYWEgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj5AQCAtNzE5Miw2ICs3MTkyLDkgQEAgZW51bSB7Cj4gLyogbGVnYWN5IHBhbGV0dGUgKi8KPiAj
ZGVmaW5lIF9MR0NfUEFMRVRURV9BICAgICAgICAgICAweDRhMDAwCj4gI2RlZmluZSBfTEdDX1BB
TEVUVEVfQiAgICAgICAgICAgMHg0YTgwMAo+KyNkZWZpbmUgTEdDX1BBTEVUVEVfUkVEX01BU0sg
ICAgIFJFR19HRU5NQVNLKDIzLCAxNikKPisjZGVmaW5lIExHQ19QQUxFVFRFX0dSRUVOX01BU0sg
ICBSRUdfR0VOTUFTSygxNSwgOCkKPisjZGVmaW5lIExHQ19QQUxFVFRFX0JMVUVfTUFTSyAgICBS
RUdfR0VOTUFTSyg3LCAwKQo+ICNkZWZpbmUgTEdDX1BBTEVUVEUocGlwZSwgaSkgX01NSU8oX1BJ
UEUocGlwZSwgX0xHQ19QQUxFVFRFX0EsCj5fTEdDX1BBTEVUVEVfQikgKyAoaSkgKiA0KQo+Cj4g
LyogaWxrL3NuYiBwcmVjaXNpb24gcGFsZXR0ZSAqLwo+LS0KPjEuOS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
