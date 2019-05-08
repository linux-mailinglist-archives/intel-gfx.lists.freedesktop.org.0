Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAE8180CD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 22:03:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC84C89870;
	Wed,  8 May 2019 20:03:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D261289870
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 20:03:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 13:03:36 -0700
X-ExtLoop1: 1
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.81])
 ([10.66.116.81])
 by fmsmga006.fm.intel.com with ESMTP; 08 May 2019 13:03:34 -0700
From: "Sharma, Shashank" <shashank.sharma@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190507135644.23882-1-shashank.sharma@intel.com>
 <20190507135644.23882-5-shashank.sharma@intel.com>
 <20190507142750.GP24299@intel.com>
 <8ff6a780-2181-ae03-0320-cac1720b7e2b@intel.com>
Message-ID: <bed36b21-fa96-4713-be2d-e224442b7509@intel.com>
Date: Thu, 9 May 2019 01:33:33 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8ff6a780-2181-ae03-0320-cac1720b7e2b@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 4/4] drm/i915/icl: Add Multi-segmented
 gamma support
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgKE1lIGFuZCBVbWEpIGNvbmZpcm1lZCB0aGUgSUNMIHJlZ2lzdGVyIHByb2dyYW1taW5nIHNl
cXVlbmNlLCBieSAKZHVtcGluZyB0aGUgcmVnaXN0ZXJzLgoKVGhlIGNvcnJlY3Qgc2VxdWVuY2Ug
c2hvdWxkIGJlOgoKaWxrX2x1dF8xMnA0X3VkdwoKaWxrX2x1dF8xMnA0X2xkdwoKV2UgcGFzc2Vk
IG1heGltdW0gdmFsdWUgTFVUICgxLjApIGFuZCBzYXcgb25seSBibHVlIG91dHB1dCwgaWYgCnBy
b2dyYW1tZWQgaW4gb3Bwb3NpdGUgc2VxdWVuY2UuCgpQcm9ncmFtbWluZyBpbiBhYm92ZSBtZW50
aW9uZWQgc2VxdWVuY2UgZ2l2ZXMgYSBwcm9wZXIgd2hpdGUgb3V0cHV0LgoKUmVnYXJkcwpTaGFz
aGFuawpPbiA1LzgvMjAxOSA2OjM1IFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+IE9uIDUv
Ny8yMDE5IDc6NTcgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPj4gT24gVHVlLCBNYXkgMDcs
IDIwMTkgYXQgMDc6MjY6NDRQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1hIHdyb3RlOgo+Pj4gSUNM
IGludHJvZHVjZXMgYSBuZXcgZ2FtbWEgY29ycmVjdGlvbiBtb2RlIGluIGRpc3BsYXkgZW5naW5l
LCBjYWxsZWQKPj4+IG11bHRpLXNlZ21lbnRlZC1nYW1tYSBtb2RlLiBUaGlzIG1vZGUgYWxsb3dz
IHVzZXJzIHRvIHByb2dyYW0gdGhlCj4+PiBkYXJrZXIgcmVnaW9uIG9mIHRoZSBnYW1tYSBjdXJ2
ZSB3aXRoIHN1ZXByZmluZSBwcmVjaXNpb24uIEFuCj4+PiBleGFtcGxlIHVzZSBjYXNlIGZvciB0
aGlzIGlzIEhEUiBjdXJ2ZXMgKGxpa2UgUFEgU1QtMjA4NCkuCj4+Pgo+Pj4gSWYgd2UgcGxvdCBh
IGdhbW1hIGNvcnJlY3Rpb24gY3VydmUgZnJvbSB2YWx1ZSByYW5nZSBiZXR3ZWVuIDAuMCB0byAK
Pj4+IDEuMCwKPj4+IElDTCdzIG11bHRpLXNlZ21lbnQgaGFzIDMgZGlmZmVyZW50IHNlY3Rpb25z
Ogo+Pj4gLSBzdXBlcmZpbmUgc2VnbWVudDogOSB2YWx1ZXMsIHJhbmdlcyBiZXR3ZWVuIDAgLSAx
LygxMjggKiAyNTYpCj4+PiAtIGZpbmUgc2VnbWVudDogMjU3IHZhbHVlcywgcmFuZ2VzIGJldHdl
ZW4gMCAtIDEvKDEyOCkKPj4+IC0gY29yYXNlIHNlZ21lbnQ6IDI1NyB2YWx1ZXMsIHJhbmdlcyBi
ZXR3ZWVuIDAgLSAxCj4+Pgo+Pj4gVGhpcyBwYXRjaDoKPj4+IC0gQ2hhbmdlcyBnYW1tYSBMVVRz
IHNpemUgZm9yIElDTC9HRU4xMSB0byAyNjIxNDQgZW50cmllcyAoOCAqIDEyOCAqIAo+Pj4gMjU2
KSwKPj4+IMKgwqAgc28gdGhhdCB1c2Vyc3BhY2UgY2FuIHByb2dyYW0gd2l0aCBoaWdoZXN0IHBy
ZWNpc2lvbiBzdXBwb3J0ZWQuCj4+PiAtIENoYW5nZXMgZGVmYXVsdCBnYW1tYSBtb2RlIChub24t
bGVnYWN5KSB0byBtdWx0aS1zZWdtZW50ZWQtZ2FtbWEgCj4+PiBtb2RlLgo+Pj4gLSBBZGRzIGZ1
bmN0aW9ucyB0byBwcm9ncmFtL2RldGVjdCBtdWx0aS1zZWdtZW50IGdhbW1hLgo+Pj4KPj4+IFYy
OiBBZGRyZXNzZWQgcmV2aWV3IGNvbW1lbnRzIGZyb20gVmlsbGUKPj4+IMKgwqDCoMKgIC0gc2Vw
YXJhdGUgZnVuY3Rpb24gZm9yIHN1cGVyZmluZSBhbmQgZmluZSBzZWdtZW50cy4KPj4+IMKgwqDC
oMKgIC0gcmVtb3ZlIGVudW0gZm9yIHNlZ21lbnRzLgo+Pj4gwqDCoMKgwqAgLSByZXVzZSBsYXN0
IGVudHJ5IG9mIHRoZSBMVVQgYXMgZ2NfbWF4IHZhbHVlLgo+Pj4gwqDCoMKgwqAgLSByZXBsYWNl
IGlmKCkgLi4uLmNvbmQgd2l0aCBzd2l0Y2guLi5jYXNlIGluIGljbF9sb2FkX2x1dHMuCj4+PiDC
oMKgwqDCoCAtIGFkZCBhbiBlbnRyeSB2YXJpYWJsZSwgaW5zdGVhZCBvZiAnd29yZCcKPj4+Cj4+
PiBWMzogQWRkcmVzc2VkIHJldmlldyBjb21tZW50cyBmcm9tIFZpbGxlCj4+PiDCoMKgwqDCoCAt
IGV4dHJhIG5ld2xpbmUKPj4+IMKgwqDCoMKgIC0gcy9lbnRyeS9jb2xvci8KPj4+IMKgwqDCoMKg
IC0gcmVtb3ZlIExVVCBzaXplIGNoZWNrcwo+Pj4gwqDCoMKgwqAgLSBwcm9ncmFtIGlsa19sdXRf
MTJwNF9sZHcgdmFsdWUgYmVmb3JlIGlsa19sdXRfMTJwNF91ZHcKPj4+IMKgwqDCoMKgIC0gQ2hh
bmdlIHRoZSBjb21tZW50cyBpbiBkZXNjcmlwdGlvbiBvZiBmaW5lIGFuZCBjb2Fyc2Ugc2VnbWVu
dHMsCj4+PiDCoMKgwqDCoMKgwqAgYW5kIHRyeSB0byBtYWtlIG1vcmUgc2Vuc2UuCj4+PiDCoMKg
wqDCoCAtIHVzZSA4ICogMTI4IGluc3RlYWQgb2YgMTAyNAo+Pj4gwqDCoMKgwqAgLSBhZGQgMSBl
bnRyeSBpbiBMVVQgZm9yIEdDTUFYCj4+Pgo+Pj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+PiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPj4+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgo+Pj4KPj4+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFNoYXNo
YW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6
IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmPCoMKgwqAgfMKgwqAgMiArLQo+Pj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyB8IDEyNyAKPj4+ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKystCj4+PiDCoCAyIGZpbGVzIGNoYW5nZWQsIDEyNCBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jIAo+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4+PiBpbmRl
eCBmZmEyZWU3MGEwM2QuLjJmOTliNTg1ZDQ0YiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMKPj4+IEBAIC03NDksNyArNzQ5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9k
ZXZpY2VfaW5mbyAKPj4+IGludGVsX2Nhbm5vbmxha2VfaW5mbyA9IHsKPj4+IMKgwqDCoMKgwqAg
R0VOKDExKSwgXAo+Pj4gwqDCoMKgwqDCoCAuZGRiX3NpemUgPSAyMDQ4LCBcCj4+PiDCoMKgwqDC
oMKgIC5oYXNfbG9naWNhbF9yaW5nX2Vsc3EgPSAxLCBcCj4+PiAtwqDCoMKgIC5jb2xvciA9IHsg
LmRlZ2FtbWFfbHV0X3NpemUgPSAzMywgLmdhbW1hX2x1dF9zaXplID0gMTAyNCB9Cj4+PiArwqDC
oMKgIC5jb2xvciA9IHsgLmRlZ2FtbWFfbHV0X3NpemUgPSAzMywgLmdhbW1hX2x1dF9zaXplID0g
MjYyMTQ1IH0KPj4+IMKgIMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8g
aW50ZWxfaWNlbGFrZV8xMV9pbmZvID0gewo+Pj4gwqDCoMKgwqDCoCBHRU4xMV9GRUFUVVJFUywK
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIAo+Pj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4+PiBpbmRleCA2YzM0MWJlYTUx
NGMuLmMxYTk1MDZmZDA2OSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMK
Pj4+IEBAIC00MSw2ICs0MSw4IEBACj4+PiDCoCAjZGVmaW5lIENUTV9DT0VGRl9BQlMoY29lZmYp
wqDCoMKgwqDCoMKgwqAgKChjb2VmZikgJiAoQ1RNX0NPRUZGX1NJR04gLSAxKSkKPj4+IMKgIMKg
ICNkZWZpbmUgTEVHQUNZX0xVVF9MRU5HVEjCoMKgwqDCoMKgwqDCoCAyNTYKPj4+ICsjZGVmaW5l
IElDTF9HQU1NQV9NVUxUSVNFR19MVVRfTEVOR1RIwqDCoMKgwqDCoMKgwqAgKDI1NiAqIDEyOCAq
IDgpCj4+IFVudXNlZC4KPiBHb3QgaXQKPj4+ICsKPj4+IMKgIC8qCj4+PiDCoMKgICogRXh0cmFj
dCB0aGUgQ1NDIGNvZWZmaWNpZW50IGZyb20gYSBDVE0gY29lZmZpY2llbnQgKGluIFUzMi4zMiAK
Pj4+IGZpeGVkIHBvaW50Cj4+PiDCoMKgICogZm9ybWF0KS4gVGhpcyBtYWNybyB0YWtlcyB0aGUg
Y29lZmZpY2llbnQgd2Ugd2FudCB0cmFuc2Zvcm1lZCAKPj4+IGFuZCB0aGUKPj4+IEBAIC03Njcs
NiArNzY5LDExNiBAQCBzdGF0aWMgdm9pZCBnbGtfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCAKPj4+
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIH0K
Pj4+IMKgICsvKiBpbGsrICIxMi40IiBpbnRlcnBvbGF0ZWQgZm9ybWF0IChoaWdoIDEwIGJpdHMp
ICovCj4+PiArc3RhdGljIHUzMiBpbGtfbHV0XzEycDRfbGR3KGNvbnN0IHN0cnVjdCBkcm1fY29s
b3JfbHV0ICpjb2xvcikKPj4+ICt7Cj4+PiArwqDCoMKgIHJldHVybiAoY29sb3ItPnJlZCA+PiA2
KSA8PCAyMCB8IChjb2xvci0+Z3JlZW4gPj4gNikgPDwgMTAgfAo+Pj4gK8KgwqDCoMKgwqDCoMKg
IChjb2xvci0+Ymx1ZSA+PiA2KTsKPj4+ICt9Cj4+PiArCj4+PiArLyogaWxrKyAiMTIuNCIgaW50
ZXJwb2xhdGVkIGZvcm1hdCAobG93IDYgYml0cykgKi8KPj4+ICtzdGF0aWMgdTMyIGlsa19sdXRf
MTJwNF91ZHcoY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmNvbG9yKQo+Pj4gK3sKPj4+ICvC
oMKgwqAgcmV0dXJuIChjb2xvci0+cmVkICYgMHgzZikgPDwgMjQgfCAoY29sb3ItPmdyZWVuICYg
MHgzZikgPDwgMTQgfAo+Pj4gK8KgwqDCoMKgwqDCoMKgIChjb2xvci0+Ymx1ZSAmIDB4M2YpOwo+
PiBCbHVlIGlzIG1pc3NpbmcgdGhlIHNoaWZ0Lgo+IE9rLAo+PiBJJ20gbm90IDEwMCUgc3VyZSBp
ZiB0aGUgbGR3IHZzLiB1ZHcgYXJlIHRoZSByaWdodCB3YXkgYXJvdW5kLiBUaGUgc3BlYwo+PiBo
YXMgYXQgdGltZXMgYmVlbiBpbmNvbnNpc3RlbnQgd2l0aCB0aGUgb2RkIHZzLiBldmVuIGRlc2Ny
aXB0aW9ucywKPj4gc29tZXRpbWVzIGV2ZW4gY29udHJhZGljdGluZyBpdHNlbGYuIEFsc28gaXQg
bmV2ZXIgcmVhbGx5IGRlZmluZXMKPj4gd2hldGhlciBpdCBzdGFydHMgY291bnRpbmcgZHdvcmRz
IGZyb20gZnJvbSAwIG9yIDEsIHNvIG5vdCBzdXJlIHdoYXQKPj4gb2RkIGFuZCBldmVuIGFjdHVh
bGx5IG1lYW4uIENhbiBJIHByZXN1bWUgc29tZW9uZSBoYXMgY2hlY2tlZCB0aGlzCj4+IG9uIGFj
dHVhbCBoYXJkd2FyZT8KPiBXZWxsLCB0aGUgcHJvcGVydHkgd2FzIGdldHRpbmcgc2V0IHByb3Bl
cmx5LCBhbmQgdGhlIGRpc3BsYXkgbG9va2VkIAo+IG9rLCBidXQgZGludCBkdW1wIHRoZSB2YWx1
ZXMgaW4gcmVnaXN0ZXJzLiBDYW4gY2hlY2sgaXQgbm93Lgo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0
aWMgdm9pZAo+Pj4gK2ljbF9sb2FkX2djbWF4KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBkcm1f
Y29sb3JfbHV0ICpjb2xvcikKPj4+ICt7Cj4+PiArwqDCoMKgIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+Pj4gK8KgwqDCoCBz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2
KTsKPj4+ICvCoMKgwqAgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCAvKiBGaXhtZTogTFVUIGVudHJpZXMgYXJlIDE2IGJpdCBvbmx5LCBzbyB3ZSBjYW4gcHJv
ZyAweEZGRkYgCj4+PiBtYXggKi8KPj4+ICvCoMKgwqAgSTkxNV9XUklURShQUkVDX1BBTF9HQ19N
QVgocGlwZSwgMCksIGNvbG9yLT5yZWQpOwo+Pj4gK8KgwqDCoCBJOTE1X1dSSVRFKFBSRUNfUEFM
X0dDX01BWChwaXBlLCAxKSwgY29sb3ItPmdyZWVuKTsKPj4+ICvCoMKgwqAgSTkxNV9XUklURShQ
UkVDX1BBTF9HQ19NQVgocGlwZSwgMiksIGNvbG9yLT5ibHVlKTsKPj4+ICt9Cj4+PiArCj4+PiAr
c3RhdGljIHZvaWQKPj4+ICtpY2xfcHJvZ3JhbV9nYW1tYV9zdXBlcmZpbmVfc2VnbWVudChjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAKPj4+ICpjcnRjX3N0YXRlKQo+Pj4gK3sKPj4+ICvC
oMKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUt
PmJhc2UuY3J0Yyk7Cj4+PiArwqDCoMKgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+Pj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZHJt
X3Byb3BlcnR5X2Jsb2IgKmJsb2IgPSBjcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dDsKPj4+ICvC
oMKgwqAgY29uc3Qgc3RydWN0IGRybV9jb2xvcl9sdXQgKmx1dCA9IGJsb2ItPmRhdGE7Cj4+PiAr
wqDCoMKgIGVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKPj4+ICvCoMKgwqAgdTMyIGk7Cj4+
PiArCj4+PiArwqDCoMKgIC8qCj4+PiArwqDCoMKgwqAgKiBFdmVyeSBlbnRyeSBpbiB0aGUgbXVs
dGktc2VnbWVudCBMVVQgaXMgY29ycmVzcG9uZGluZyB0byBhIAo+Pj4gc3VwZXJmaW5lCj4+PiAr
wqDCoMKgwqAgKiBzZWdtZW50IHN0ZXAgd2hpY2ggaXMgMS8oOCAqIDEyOCAqIDI1NikuCj4+PiAr
wqDCoMKgwqAgKgo+Pj4gK8KgwqDCoMKgICogU3VwZXJmaW5lIHNlZ21lbnQgaGFzIDkgZW50cmll
cywgY29ycmVzcG9uZGluZyB0byB2YWx1ZXMKPj4+ICvCoMKgwqDCoCAqIDAsIDEvKDggKiAxMjgg
KiAyNTYpLCAyLyg4ICogMTI4ICogMjU2KSAuLi4uIDgvKDggKiAxMjggKiAyNTYpLgo+Pj4gK8Kg
wqDCoMKgICovCj4+PiArwqDCoMKgIEk5MTVfV1JJVEUoUFJFQ19QQUxfTVVMVElfU0VHX0lOREVY
KHBpcGUpLCAKPj4+IFBBTF9QUkVDX0FVVE9fSU5DUkVNRU5UKTsKPj4+ICsKPj4+ICvCoMKgwqAg
Zm9yIChpID0gMDsgaSA8IDk7IGkrKykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVj
dCBkcm1fY29sb3JfbHV0ICplbnRyeSA9ICZsdXRbaV07Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKg
wqAgSTkxNV9XUklURShQUkVDX1BBTF9NVUxUSV9TRUdfREFUQShwaXBlKSwKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlsa19sdXRfMTJwNF9sZHcoZW50cnkpKTsKPj4+ICvCoMKg
wqDCoMKgwqDCoCBJOTE1X1dSSVRFKFBSRUNfUEFMX01VTFRJX1NFR19EQVRBKHBpcGUpLAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWxrX2x1dF8xMnA0X3VkdyhlbnRyeSkpOwo+
Pj4gK8KgwqDCoCB9Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyB2b2lkCj4+PiAraWNsX3Byb2dy
YW1fZ2FtbWFfbXVsdGlfc2VnbWVudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAKPj4+
ICpjcnRjX3N0YXRlKQo+Pj4gK3sKPj4+ICvCoMKgwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMg
PSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4+PiArwqDCoMKgIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+
Pj4gK8KgwqDCoCBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmJsb2IgPSBjcnRjX3N0
YXRlLT5iYXNlLmdhbW1hX2x1dDsKPj4+ICvCoMKgwqAgY29uc3Qgc3RydWN0IGRybV9jb2xvcl9s
dXQgKmx1dCA9IGJsb2ItPmRhdGE7Cj4+PiArwqDCoMKgIGNvbnN0IHN0cnVjdCBkcm1fY29sb3Jf
bHV0ICplbnRyeTsKPj4+ICvCoMKgwqAgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+Pj4g
K8KgwqDCoCB1MzIgaTsKPj4+ICsKPj4+ICvCoMKgwqAgLyoKPj4+ICvCoMKgwqDCoCAqCj4+PiAr
wqDCoMKgwqAgKiBQcm9ncmFtIEZpbmUgc2VnbWVudCAobGV0J3MgY2FsbCBpdCBzZWcyKS4uLgo+
Pj4gK8KgwqDCoMKgICoKPj4+ICvCoMKgwqDCoCAqIEZpbmUgc2VnbWVudCdzIHN0ZXAgaXMgMS8o
MTI4ICogMjU2KSBpZSAxLygxMjggKiAyNTYpLMKgIAo+Pj4gMi8oMTI4KjI1NikKPj4+ICvCoMKg
wqDCoCAqIC4uLiAyNTYvKDEyOCoyNTYpLiBTbyBpbiBvcmRlciB0byBwcm9ncmFtIGZpbmUgc2Vn
bWVudCBvZiAKPj4+IExVVCB3ZQo+Pj4gK8KgwqDCoMKgICogbmVlZCB0byBwaWNrIGV2ZXJ5IDgn
dGggZW50cnkgaW4gTFVULCBhbmQgcHJvZ3JhbSAyNTYgaW5kZXhlcy4KPj4+ICvCoMKgwqDCoCAq
Cj4+PiArwqDCoMKgwqAgKiBQQUxfUFJFQ19JTkRFWFswXSBhbmQgUEFMX1BSRUNfSU5ERVhbMV0g
bWFwIHRvIHNlZzJbMV0sCj4+PiArwqDCoMKgwqAgKiB3aXRoIHNlZzJbMF0gYmVpbmcgdW51c2Vk
IGJ5IHRoZSBoYXJkd2FyZS4KPj4+ICvCoMKgwqDCoCAqLwo+Pj4gK8KgwqDCoCBJOTE1X1dSSVRF
KFBSRUNfUEFMX0lOREVYKHBpcGUpLCBQQUxfUFJFQ19BVVRPX0lOQ1JFTUVOVCk7Cj4+PiArwqDC
oMKgIGZvciAoaSA9IDE7IGkgPCAyNTc7IGkrKykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGVudHJ5
ID0gJmx1dFtpICogOF07Cj4+PiArwqDCoMKgwqDCoMKgwqAgSTkxNV9XUklURShQUkVDX1BBTF9E
QVRBKHBpcGUpLCBpbGtfbHV0XzEycDRfbGR3KGVudHJ5KSk7Cj4+PiArwqDCoMKgwqDCoMKgwqAg
STkxNV9XUklURShQUkVDX1BBTF9EQVRBKHBpcGUpLCBpbGtfbHV0XzEycDRfdWR3KGVudHJ5KSk7
Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgLyoKPj4+ICvCoMKgwqDCoCAqIFByb2dy
YW0gQ29hcnNlIHNlZ21lbnQgKGxldCdzIGNhbGwgaXQgc2VnMykuLi4KPj4+ICvCoMKgwqDCoCAq
Cj4+PiArwqDCoMKgwqAgKiBDb2Fyc2Ugc2VnbWVudCdzIHN0YXJ0cyBmcm9tIGluZGV4IDAgYW5k
IGl0J3Mgc3RlcCBpcyAxLzI1NiAKPj4+IGllIDAsCj4+PiArwqDCoMKgwqAgKiAxLzI1NiwgMi8y
NTYgLi4uMjU2LzI1Ni4gQXMgcGVyIHRoZSBkZXNjcmlwdGlvbiBvZiBlYWNoIAo+Pj4gZW50cnkg
aW4gTFVUCj4+PiArwqDCoMKgwqAgKiBhYm92ZSwgd2UgbmVlZCB0byBwaWNrIGV2ZXJ5ICg4ICog
MTI4KXRoIGVudHJ5IGluIExVVCwgYW5kCj4+PiArwqDCoMKgwqAgKiBwcm9ncmFtIDI1NiBvZiB0
aG9zZS4KPj4+ICvCoMKgwqDCoCAqCj4+PiArwqDCoMKgwqAgKiBTcGVjIGlzIG5vdCB2ZXJ5IGNs
ZWFyIGFib3V0IGlmIGVudHJpZXMgc2VnM1swXSBhbmQgc2VnM1sxXSBhcmUKPj4+ICvCoMKgwqDC
oCAqIGJlaW5nIHVzZWQgb3Igbm90LCBidXQgd2Ugc3RpbGwgbmVlZCB0byBwcm9ncmFtIHRoZXNl
IHRvIAo+Pj4gYWR2YW5jZQo+Pj4gK8KgwqDCoMKgICogdGhlIGluZGV4Lgo+Pj4gK8KgwqDCoMKg
ICovCj4+PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCAyNTY7IGkrKykgewo+Pj4gK8KgwqDCoMKg
wqDCoMKgIGVudHJ5ID0gJmx1dFtpICogOCAqIDEyOF07Cj4+PiArwqDCoMKgwqDCoMKgwqAgSTkx
NV9XUklURShQUkVDX1BBTF9EQVRBKHBpcGUpLCBpbGtfbHV0XzEycDRfbGR3KGVudHJ5KSk7Cj4+
PiArwqDCoMKgwqDCoMKgwqAgSTkxNV9XUklURShQUkVDX1BBTF9EQVRBKHBpcGUpLCBpbGtfbHV0
XzEycDRfdWR3KGVudHJ5KSk7Cj4+PiArwqDCoMKgIH0KPj4+ICsKPj4+ICvCoMKgwqAgLyogVGhl
IGxhc3QgZW50cnkgaW4gdGhlIExVVCBpcyB0byBiZSBwcm9ncmFtbWVkIGluIEdDTUFYICovCj4+
PiArwqDCoMKgIGVudHJ5ID0gJmx1dFsyNTYgKiA4ICogMTI4ICsgMV07Cj4+IFRoZSArMSBzaG91
bGRuJ3QgYmUgaGVyZS4KPiBvawo+PiBPSywgbW9zdGx5IGxvb2tzIGdvb2QuIFdpdGggdGhlIG1p
bm9yIGlzc3VlcyBhZGRyZXNzZWQgdGhpcyBpcwo+PiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFRoYW5rcyBmb3IgdGhlIHJl
dmlldywgSSB3aWxsIHB1Ymxpc2ggVjQgd2l0aCBjb21tZW50cyBhZGRyZXNzZWQuCj4KPiAtIFNo
YXNoYW5rCj4KPj4+ICvCoMKgwqAgaWNsX2xvYWRfZ2NtYXgoY3J0Y19zdGF0ZSwgZW50cnkpOwo+
Pj4gK8KgwqDCoCBpdmJfbG9hZF9sdXRfZXh0X21heChjcnRjKTsKPj4+ICt9Cj4+PiArCj4+PiDC
oCBzdGF0aWMgdm9pZCBpY2xfbG9hZF9sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQo+Pj4gwqAgewo+Pj4gwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgZHJtX3By
b3BlcnR5X2Jsb2IgKmdhbW1hX2x1dCA9IAo+Pj4gY3J0Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQ7
Cj4+PiBAQCAtNzc1LDEwICs4ODcsMTcgQEAgc3RhdGljIHZvaWQgaWNsX2xvYWRfbHV0cyhjb25z
dCBzdHJ1Y3QgCj4+PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+Pj4gwqDCoMKgwqDC
oCBpZiAoY3J0Y19zdGF0ZS0+YmFzZS5kZWdhbW1hX2x1dCkKPj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCBnbGtfbG9hZF9kZWdhbW1hX2x1dChjcnRjX3N0YXRlKTsKPj4+IMKgIC3CoMKgwqAgaWYgKChj
cnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0spID09Cj4+PiAtwqDC
oMKgwqDCoMKgwqAgR0FNTUFfTU9ERV9NT0RFXzhCSVQpIHsKPj4+ICvCoMKgwqAgc3dpdGNoIChj
cnRjX3N0YXRlLT5nYW1tYV9tb2RlICYgR0FNTUFfTU9ERV9NT0RFX01BU0spIHsKPj4+ICvCoMKg
wqAgY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpOXh4
X2xvYWRfbHV0cyhjcnRjX3N0YXRlKTsKPj4+IC3CoMKgwqAgfSBlbHNlIHsKPj4+ICvCoMKgwqDC
oMKgwqDCoCBicmVhazsKPj4+ICsKPj4+ICvCoMKgwqAgY2FzZSBHQU1NQV9NT0RFX01PREVfMTJC
SVRfTVVMVElfU0VHTUVOVEVEOgo+Pj4gK8KgwqDCoMKgwqDCoMKgIGljbF9wcm9ncmFtX2dhbW1h
X3N1cGVyZmluZV9zZWdtZW50KGNydGNfc3RhdGUpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGljbF9w
cm9ncmFtX2dhbW1hX211bHRpX3NlZ21lbnQoY3J0Y19zdGF0ZSk7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgYnJlYWs7Cj4+PiArCj4+PiArwqDCoMKgIGRlZmF1bHQ6Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgYmR3X2xvYWRfbHV0XzEwKGNydGMsIGdhbW1hX2x1dCwgUEFMX1BSRUNfSU5ERVhfVkFMVUUo
MCkpOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGl2Yl9sb2FkX2x1dF9leHRfbWF4KGNydGMpOwo+
Pj4gwqDCoMKgwqDCoCB9Cj4+PiBAQCAtMTIwOSw3ICsxMzI4LDcgQEAgc3RhdGljIHUzMiBpY2xf
Z2FtbWFfbW9kZShjb25zdCBzdHJ1Y3QgCj4+PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGVfaXNfbGVnYWN5X2dhbW1hKGNydGNf
c3RhdGUpKQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIGdhbW1hX21vZGUgfD0gR0FNTUFfTU9ERV9N
T0RFXzhCSVQ7Cj4+PiDCoMKgwqDCoMKgIGVsc2UKPj4+IC3CoMKgwqDCoMKgwqDCoCBnYW1tYV9t
b2RlIHw9IEdBTU1BX01PREVfTU9ERV8xMEJJVDsKPj4+ICvCoMKgwqDCoMKgwqDCoCBnYW1tYV9t
b2RlIHw9IEdBTU1BX01PREVfTU9ERV8xMkJJVF9NVUxUSV9TRUdNRU5URUQ7Cj4+PiDCoCDCoMKg
wqDCoMKgIHJldHVybiBnYW1tYV9tb2RlOwo+Pj4gwqAgfQo+Pj4gLS0gCj4+PiAyLjE3LjEKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
