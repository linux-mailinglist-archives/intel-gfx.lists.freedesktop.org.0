Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC01D36C40D
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 12:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00476E06E;
	Tue, 27 Apr 2021 10:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1E2D6E06E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 10:33:54 +0000 (UTC)
IronPort-SDR: mhRuUvPvrRyrkVfw4DIQi1lnW82Qi2glP8+Zl1yf2XMbOH/kI8gilbYmlVeZhn/ITFSutYXpYR
 UR1YLgsi6Law==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="260439072"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="260439072"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 03:33:53 -0700
IronPort-SDR: yUcOsOfLBKiMqCqSwsjRq0Y2MyeCzoAp8fwgzC/7DEGv72ly+b9x9k/KB0B6FUmraaQxAE+Ykw
 RDGJd0GwY7dg==
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="429763532"
Received: from aalbarra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.41.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 03:33:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210426185612.13223-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210426185612.13223-1-ville.syrjala@linux.intel.com>
Date: Tue, 27 Apr 2021 13:33:48 +0300
Message-ID: <87y2d43tkj.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop using crtc->index as the pipe
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyNiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgcGlwZSBjcmMgY29kZSBzbGlwcGVkIHRoZW91Z2ggdGhl
IG5ldCB3aGVuIHdlIHRyaWVkIHRvCj4gZWxpbWluYXRlIGFsbCBjcnRjLT5pbmRleD09cGlwZSBh
YnVzZXMuIFJlbWVkeSB0aGF0Lgo+Cj4gQW5kIHdoaWxlIGF0IGl0IGdldCByaWQgb2YgdGhvc2Ug
bmFzdHkgaW50ZWxfY3J0Yytkcm1fY3J0Ywo+IHBvaW50ZXIgYWxpYXNlcy4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGlwZV9jcmMuYyB8IDUxICsrKysr
KysrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDI1IGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcGlwZV9jcmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGlw
ZV9jcmMuYwo+IGluZGV4IDBmNmRlOTZlNmQ0My4uYWNjNjRiODdkMjlmIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGlwZV9jcmMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGlwZV9jcmMuYwo+IEBAIC01ODAsMTMg
KzU4MCwxNCBAQCBpbnQgaW50ZWxfY3J0Y192ZXJpZnlfY3JjX3NvdXJjZShzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMsIGNvbnN0IGNoYXIgKnNvdXJjZV9uYW1lLAo+ICAJcmV0dXJuIC1FSU5WQUw7Cj4g
IH0KPiAgCj4gLWludCBpbnRlbF9jcnRjX3NldF9jcmNfc291cmNlKHN0cnVjdCBkcm1fY3J0YyAq
Y3J0YywgY29uc3QgY2hhciAqc291cmNlX25hbWUpCj4gK2ludCBpbnRlbF9jcnRjX3NldF9jcmNf
c291cmNlKHN0cnVjdCBkcm1fY3J0YyAqX2NydGMsIGNvbnN0IGNoYXIgKnNvdXJjZV9uYW1lKQo+
ICB7Cj4gLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmRldik7Cj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YyA9IHRvX2ludGVsX2NydGMo
Y3J0Yyk7Cj4gLQlzdHJ1Y3QgaW50ZWxfcGlwZV9jcmMgKnBpcGVfY3JjID0gJmludGVsX2NydGMt
PnBpcGVfY3JjOwo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKF9j
cnRjKTsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Yy0+YmFzZS5kZXYpOwo+ICsJc3RydWN0IGludGVsX3BpcGVfY3JjICpwaXBlX2NyYyA9ICZjcnRj
LT5waXBlX2NyYzsKPiAgCWVudW0gaW50ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gcG93ZXJfZG9t
YWluOwo+ICAJZW51bSBpbnRlbF9waXBlX2NyY19zb3VyY2Ugc291cmNlOwo+ICsJZW51bSBwaXBl
IHBpcGUgPSBjcnRjLT5waXBlOwo+ICAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gIAl1MzIg
dmFsID0gMDsgLyogc2h1dCB1cCBnY2MgKi8KPiAgCWludCByZXQgPSAwOwo+IEBAIC01OTcsNyAr
NTk4LDcgQEAgaW50IGludGVsX2NydGNfc2V0X2NyY19zb3VyY2Uoc3RydWN0IGRybV9jcnRjICpj
cnRjLCBjb25zdCBjaGFyICpzb3VyY2VfbmFtZSkKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCX0K
PiAgCj4gLQlwb3dlcl9kb21haW4gPSBQT1dFUl9ET01BSU5fUElQRShjcnRjLT5pbmRleCk7Cj4g
Kwlwb3dlcl9kb21haW4gPSBQT1dFUl9ET01BSU5fUElQRShwaXBlKTsKPiAgCXdha2VyZWYgPSBp
bnRlbF9kaXNwbGF5X3Bvd2VyX2dldF9pZl9lbmFibGVkKGRldl9wcml2LCBwb3dlcl9kb21haW4p
Owo+ICAJaWYgKCF3YWtlcmVmKSB7Cj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCj4g
QEAgLTYwNyw2NCArNjA4LDY0IEBAIGludCBpbnRlbF9jcnRjX3NldF9jcmNfc291cmNlKHN0cnVj
dCBkcm1fY3J0YyAqY3J0YywgY29uc3QgY2hhciAqc291cmNlX25hbWUpCj4gIAo+ICAJZW5hYmxl
ID0gc291cmNlICE9IElOVEVMX1BJUEVfQ1JDX1NPVVJDRV9OT05FOwo+ICAJaWYgKGVuYWJsZSkK
PiAtCQlpbnRlbF9jcnRjX2NyY19zZXR1cF93b3JrYXJvdW5kcyh0b19pbnRlbF9jcnRjKGNydGMp
LCB0cnVlKTsKPiArCQlpbnRlbF9jcnRjX2NyY19zZXR1cF93b3JrYXJvdW5kcyhjcnRjLCB0cnVl
KTsKPiAgCj4gLQlyZXQgPSBnZXRfbmV3X2NyY19jdGxfcmVnKGRldl9wcml2LCBjcnRjLT5pbmRl
eCwgJnNvdXJjZSwgJnZhbCk7Cj4gKwlyZXQgPSBnZXRfbmV3X2NyY19jdGxfcmVnKGRldl9wcml2
LCBwaXBlLCAmc291cmNlLCAmdmFsKTsKPiAgCWlmIChyZXQgIT0gMCkKPiAgCQlnb3RvIG91dDsK
PiAgCj4gIAlwaXBlX2NyYy0+c291cmNlID0gc291cmNlOwo+IC0JaW50ZWxfZGVfd3JpdGUoZGV2
X3ByaXYsIFBJUEVfQ1JDX0NUTChjcnRjLT5pbmRleCksIHZhbCk7Cj4gLQlpbnRlbF9kZV9wb3N0
aW5nX3JlYWQoZGV2X3ByaXYsIFBJUEVfQ1JDX0NUTChjcnRjLT5pbmRleCkpOwo+ICsJaW50ZWxf
ZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVfQ1JDX0NUTChwaXBlKSwgdmFsKTsKPiArCWludGVsX2Rl
X3Bvc3RpbmdfcmVhZChkZXZfcHJpdiwgUElQRV9DUkNfQ1RMKHBpcGUpKTsKPiAgCj4gIAlpZiAo
IXNvdXJjZSkgewo+ICAJCWlmIChJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8fCBJU19DSEVSUllW
SUVXKGRldl9wcml2KSkKPiAtCQkJdmx2X3VuZG9fcGlwZV9zY3JhbWJsZV9yZXNldChkZXZfcHJp
diwgY3J0Yy0+aW5kZXgpOwo+ICsJCQl2bHZfdW5kb19waXBlX3NjcmFtYmxlX3Jlc2V0KGRldl9w
cml2LCBwaXBlKTsKPiAgCX0KPiAgCj4gIAlwaXBlX2NyYy0+c2tpcHBlZCA9IDA7Cj4gIAo+ICBv
dXQ6Cj4gIAlpZiAoIWVuYWJsZSkKPiAtCQlpbnRlbF9jcnRjX2NyY19zZXR1cF93b3JrYXJvdW5k
cyh0b19pbnRlbF9jcnRjKGNydGMpLCBmYWxzZSk7Cj4gKwkJaW50ZWxfY3J0Y19jcmNfc2V0dXBf
d29ya2Fyb3VuZHMoY3J0YywgZmFsc2UpOwo+ICAKPiAgCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0
KGRldl9wcml2LCBwb3dlcl9kb21haW4sIHdha2VyZWYpOwo+ICAKPiAgCXJldHVybiByZXQ7Cj4g
IH0KPiAgCj4gLXZvaWQgaW50ZWxfY3J0Y19lbmFibGVfcGlwZV9jcmMoc3RydWN0IGludGVsX2Ny
dGMgKmludGVsX2NydGMpCj4gK3ZvaWQgaW50ZWxfY3J0Y19lbmFibGVfcGlwZV9jcmMoc3RydWN0
IGludGVsX2NydGMgKmNydGMpCj4gIHsKPiAtCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9ICZpbnRl
bF9jcnRjLT5iYXNlOwo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9f
aTkxNShjcnRjLT5kZXYpOwo+IC0Jc3RydWN0IGludGVsX3BpcGVfY3JjICpwaXBlX2NyYyA9ICZp
bnRlbF9jcnRjLT5waXBlX2NyYzsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICsJc3RydWN0IGludGVsX3BpcGVfY3JjICpw
aXBlX2NyYyA9ICZjcnRjLT5waXBlX2NyYzsKPiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlw
ZTsKPiAgCXUzMiB2YWwgPSAwOwo+ICAKPiAtCWlmICghY3J0Yy0+Y3JjLm9wZW5lZCkKPiArCWlm
ICghY3J0Yy0+YmFzZS5jcmMub3BlbmVkKQo+ICAJCXJldHVybjsKPiAgCj4gLQlpZiAoZ2V0X25l
d19jcmNfY3RsX3JlZyhkZXZfcHJpdiwgY3J0Yy0+aW5kZXgsICZwaXBlX2NyYy0+c291cmNlLCAm
dmFsKSA8IDApCj4gKwlpZiAoZ2V0X25ld19jcmNfY3RsX3JlZyhkZXZfcHJpdiwgcGlwZSwgJnBp
cGVfY3JjLT5zb3VyY2UsICZ2YWwpIDwgMCkKPiAgCQlyZXR1cm47Cj4gIAo+ICAJLyogRG9uJ3Qg
bmVlZCBwaXBlX2NyYy0+bG9jayBoZXJlLCBJUlFzIGFyZSBub3QgZ2VuZXJhdGVkLiAqLwo+ICAJ
cGlwZV9jcmMtPnNraXBwZWQgPSAwOwo+ICAKPiAtCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQ
SVBFX0NSQ19DVEwoY3J0Yy0+aW5kZXgpLCB2YWwpOwo+IC0JaW50ZWxfZGVfcG9zdGluZ19yZWFk
KGRldl9wcml2LCBQSVBFX0NSQ19DVEwoY3J0Yy0+aW5kZXgpKTsKPiArCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBQSVBFX0NSQ19DVEwocGlwZSksIHZhbCk7Cj4gKwlpbnRlbF9kZV9wb3N0aW5n
X3JlYWQoZGV2X3ByaXYsIFBJUEVfQ1JDX0NUTChwaXBlKSk7Cj4gIH0KPiAgCj4gLXZvaWQgaW50
ZWxfY3J0Y19kaXNhYmxlX3BpcGVfY3JjKHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9jcnRjKQo+
ICt2b2lkIGludGVsX2NydGNfZGlzYWJsZV9waXBlX2NyYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YykKPiAgewo+IC0Jc3RydWN0IGRybV9jcnRjICpjcnRjID0gJmludGVsX2NydGMtPmJhc2U7Cj4g
LQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmRldik7
Cj4gLQlzdHJ1Y3QgaW50ZWxfcGlwZV9jcmMgKnBpcGVfY3JjID0gJmludGVsX2NydGMtPnBpcGVf
Y3JjOwo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRj
LT5iYXNlLmRldik7Cj4gKwlzdHJ1Y3QgaW50ZWxfcGlwZV9jcmMgKnBpcGVfY3JjID0gJmNydGMt
PnBpcGVfY3JjOwo+ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+ICAKPiAgCS8qIFN3
YWxsb3cgY3JjJ3MgdW50aWwgd2Ugc3RvcCBnZW5lcmF0aW5nIHRoZW0uICovCj4gIAlzcGluX2xv
Y2tfaXJxKCZwaXBlX2NyYy0+bG9jayk7Cj4gIAlwaXBlX2NyYy0+c2tpcHBlZCA9IElOVF9NSU47
Cj4gIAlzcGluX3VubG9ja19pcnEoJnBpcGVfY3JjLT5sb2NrKTsKPiAgCj4gLQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgUElQRV9DUkNfQ1RMKGNydGMtPmluZGV4KSwgMCk7Cj4gLQlpbnRlbF9k
ZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIFBJUEVfQ1JDX0NUTChjcnRjLT5pbmRleCkpOwo+ICsJ
aW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIFBJUEVfQ1JDX0NUTChwaXBlKSwgMCk7Cj4gKwlpbnRl
bF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIFBJUEVfQ1JDX0NUTChwaXBlKSk7Cj4gIAlpbnRl
bF9zeW5jaHJvbml6ZV9pcnEoZGV2X3ByaXYpOwo+ICB9CgotLSAKSmFuaSBOaWt1bGEsIEludGVs
IE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
