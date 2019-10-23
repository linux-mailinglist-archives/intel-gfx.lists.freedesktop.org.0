Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9D9E1CAA
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A9836EAC8;
	Wed, 23 Oct 2019 13:33:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F996EACA
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:33:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:33:04 -0700
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="191830701"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:33:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20191022172456.GB2533@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191022133414.8293-1-jani.nikula@intel.com>
 <20191022133414.8293-2-jani.nikula@intel.com>
 <20191022172456.GB2533@intel.com>
Date: Wed, 23 Oct 2019 16:33:00 +0300
Message-ID: <87eez3egdv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dsc: move crtc state
 dp_dsc_cfg member under dsc as config
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMiBPY3QgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBPY3QgMjIsIDIwMTkgYXQgMDQ6MzQ6MTRQTSArMDMwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IERTQyBpc24ndCBEUCBzcGVjaWZpYywgc28gcmVtb3ZlIHRo
ZSBkcF8gcHJlZml4IGZyb20gdGhlIGNydGMgc3RhdGUKPj4gbWVtYmVyIG5hbWUuIEFsc28gbW92
aW5nIHRoZSBtZW1iZXIgdW5kZXIgdGhlIGRzYyBzdWItc3RydWN0IGdpdmVzIHVzCj4+IGVub3Vn
aCBjb250ZXh0IHRvIGFsbG93IHNob3J0ZW5pbmcgdGhlIG5hbWUgdG8ganVzdCBjb25maWcuIE5v
Cj4+IGZ1bmN0aW9uYWwgY2hhbmdlcy4KPj4gCj4+IENjOiBNYW5hc2kgTmF2YXJlIDxtYW5hc2ku
ZC5uYXZhcmVAaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgo+Cj4gU291bmRzIGdvb2QgdG8gbWUgYW5kIEkgZ3Vlc3Mgd29ya3Mg
YmV0dGVyIHdpdGggZXhwYW5kaW5nIHRoaXMgY29kZQo+IHRvIG90aGVyIGNvbm5lY3RvcnMKPgo+
IFJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgoK
VGhhbmtzIGZvciB0aGUgcmV2aWV3LCBwdXNoZWQgYm90aC4KCkJSLApKYW5pLgoKPgo+IE1hbmFz
aQo+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmggfCAyICstCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zk
c2MuYyAgICAgICAgICB8IDYgKysrLS0tCj4+ICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4+IGluZGV4IGRiNjZmOWQ2MjNmOC4uYmFj
NDA0ODJhMmFhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+PiBAQCAtOTg2LDggKzk4Niw4IEBAIHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlIHsKPj4gIAkJYm9vbCBkc2Nfc3BsaXQ7Cj4+ICAJCXUxNiBjb21wcmVzc2Vk
X2JwcDsKPj4gIAkJdTggc2xpY2VfY291bnQ7Cj4+ICsJCXN0cnVjdCBkcm1fZHNjX2NvbmZpZyBj
b25maWc7Cj4+ICAJfSBkc2M7Cj4+IC0Jc3RydWN0IGRybV9kc2NfY29uZmlnIGRwX2RzY19jZmc7
Cj4+ICAKPj4gIAkvKiBGb3J3YXJkIEVycm9yIGNvcnJlY3Rpb24gU3RhdGUgKi8KPj4gIAlib29s
IGZlY19lbmFibGU7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5j
Cj4+IGluZGV4IGY0MWE5MzM2NDc2Yi4uODk2YjBjMzM0ZjVlIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYwo+PiBAQCAtMzIyLDcgKzMyMiw3IEBAIHN0
YXRpYyBpbnQgZ2V0X2NvbHVtbl9pbmRleF9mb3JfcmNfcGFyYW1zKHU4IGJpdHNfcGVyX2NvbXBv
bmVudCkKPj4gIGludCBpbnRlbF9kcF9jb21wdXRlX2RzY19wYXJhbXMoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCwKPj4gIAkJCQlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcp
Cj4+ICB7Cj4+IC0Jc3RydWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZwaXBlX2NvbmZp
Zy0+ZHBfZHNjX2NmZzsKPj4gKwlzdHJ1Y3QgZHJtX2RzY19jb25maWcgKnZkc2NfY2ZnID0gJnBp
cGVfY29uZmlnLT5kc2MuY29uZmlnOwo+PiAgCXUxNiBjb21wcmVzc2VkX2JwcCA9IHBpcGVfY29u
ZmlnLT5kc2MuY29tcHJlc3NlZF9icHA7Cj4+ICAJdTggaSA9IDA7Cj4+ICAJaW50IHJvd19pbmRl
eCA9IDA7Cj4+IEBAIC00ODUsNyArNDg1LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29uZmlndXJl
X3Bwc19mb3JfZHNjX2VuY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+ICB7
Cj4+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PmJhc2UuY3J0Yyk7Cj4+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4+IC0JY29uc3Qgc3RydWN0IGRybV9kc2NfY29uZmln
ICp2ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLT5kcF9kc2NfY2ZnOwo+PiArCWNvbnN0IHN0cnVjdCBk
cm1fZHNjX2NvbmZpZyAqdmRzY19jZmcgPSAmY3J0Y19zdGF0ZS0+ZHNjLmNvbmZpZzsKPj4gIAll
bnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4+ICAJZW51bSB0cmFuc2NvZGVyIGNwdV90cmFu
c2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXI7Cj4+ICAJdTMyIHBwc192YWwgPSAw
Owo+PiBAQCAtODg1LDcgKzg4NSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX3dyaXRlX2RzY19w
cHNfc2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+PiAgewo+PiAgCXN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmVuY29kZXItPmJhc2UpOwo+PiAg
CXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0ID0gZHBfdG9fZGlnX3Bv
cnQoaW50ZWxfZHApOwo+PiAtCWNvbnN0IHN0cnVjdCBkcm1fZHNjX2NvbmZpZyAqdmRzY19jZmcg
PSAmY3J0Y19zdGF0ZS0+ZHBfZHNjX2NmZzsKPj4gKwljb25zdCBzdHJ1Y3QgZHJtX2RzY19jb25m
aWcgKnZkc2NfY2ZnID0gJmNydGNfc3RhdGUtPmRzYy5jb25maWc7Cj4+ICAJc3RydWN0IGRybV9k
c2NfcHBzX2luZm9mcmFtZSBkcF9kc2NfcHBzX3NkcDsKPj4gIAo+PiAgCS8qIFByZXBhcmUgRFAg
U0RQIFBQUyBoZWFkZXIgYXMgcGVyIERQIDEuNCBzcGVjLCBUYWJsZSAyLTEyMyAqLwo+PiAtLSAK
Pj4gMi4yMC4xCj4+IAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGlj
cyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
