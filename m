Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3009028492F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 11:15:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9A989C60;
	Tue,  6 Oct 2020 09:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A644989C60
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 09:15:09 +0000 (UTC)
IronPort-SDR: pgsyysjGaCIfbygjuaoC2qkhpAxezgrB8WXgDOla19/3YjudM/ujX6iugxryCY4DKWTlyqU34x
 TO2mqJ4V0rnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="228556968"
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="228556968"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:15:08 -0700
IronPort-SDR: eh5tpqghDeRNY9HR48GEijT54Ey6oF3PIF8d4Uoqe40uiP+8AWz3H0ssyg+/8/syL2Fv9rKB8h
 zAr3PmV9K8ng==
X-IronPort-AV: E=Sophos;i="5.77,342,1596524400"; d="scan'208";a="518200339"
Received: from kchandar-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.35])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 02:15:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20201001151640.14590-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201001151640.14590-1-ville.syrjala@linux.intel.com>
 <20201001151640.14590-2-ville.syrjala@linux.intel.com>
Date: Tue, 06 Oct 2020 12:15:30 +0300
Message-ID: <87r1qbk959.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915: Add an encoder .shutdown()
 hook
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

T24gVGh1LCAwMSBPY3QgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBBZGQgYSBuZXcgZW5jb2RlciBob29rIC5zaHV0ZG93bigpIHdo
aWNoIHdpbGwgZ2V0IGNhbGxlZCBhdCB0aGUgZW5kCj4gb2YgdGhlIHBjaSAuc2h1dGRvd24oKSBo
b29rLiBXZSBzaGFsbCB1c2UgdGhpcyB0byBkZWFsIHdpdGggdGhlCj4gcGFuZWwgcG93ZXIgY3lj
bGUgZGVsYXkgaXNzdWVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCAgNSArKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jICAgICAgICAgICAgICAgICAgICB8IDEzICsrKysrKysrKysrKysKPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+IGluZGV4IGQ1ZGMxOGNiOGMz
OS4uNmYzZTNkNzU2MzgzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiBAQCAtMTk5LDYgKzE5OSwxMSBAQCBzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciB7Cj4gIAkgKiBkZXZpY2UgaW50ZXJydXB0cyBhcmUgZGlzYWJsZWQuCj4g
IAkgKi8KPiAgCXZvaWQgKCpzdXNwZW5kKShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqKTsKPiArCS8q
Cj4gKwkgKiBDYWxsZWQgZHVyaW5nIHN5c3RlbSByZWJvb3Qvc2h1dGRvd24gYWZ0ZXIgYWxsIHRo
ZQo+ICsJICogZW5jb2RlcnMgaGF2ZSBiZWVuIGRpc2FibGVkIGFuZCBzdXNwZW5kZWQuCj4gKwkg
Ki8KPiArCXZvaWQgKCpzaHV0ZG93bikoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOwo+
ICAJZW51bSBocGRfcGluIGhwZF9waW47Cj4gIAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9t
YWluIHBvd2VyX2RvbWFpbjsKPiAgCS8qIGZvciBjb21tdW5pY2F0aW9uIHdpdGggYXVkaW8gY29t
cG9uZW50OyBwcm90ZWN0ZWQgYnkgYXZfbXV0ZXggKi8KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
PiBpbmRleCAwNjJiNjFlYmQ5YzQuLmQzOGZjZWIyMzlhYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYwo+IEBAIC0xMDM2LDYgKzEwMzYsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfc3VzcGVu
ZF9lbmNvZGVycyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlkcm1fbW9k
ZXNldF91bmxvY2tfYWxsKGRldik7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGludGVsX3NodXRk
b3duX2VuY29kZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiArewo+ICsJ
c3RydWN0IGRybV9kZXZpY2UgKmRldiA9ICZkZXZfcHJpdi0+ZHJtOwo+ICsJc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXI7Cj4gKwo+ICsJZHJtX21vZGVzZXRfbG9ja19hbGwoZGV2KTsKPiAr
CWZvcl9lYWNoX2ludGVsX2VuY29kZXIoZGV2LCBlbmNvZGVyKQo+ICsJCWlmIChlbmNvZGVyLT5z
aHV0ZG93bikKPiArCQkJZW5jb2Rlci0+c2h1dGRvd24oZW5jb2Rlcik7Cj4gKwlkcm1fbW9kZXNl
dF91bmxvY2tfYWxsKGRldik7Cj4gK30KPiArCj4gIHZvaWQgaTkxNV9kcml2ZXJfc2h1dGRvd24o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAgCWk5MTVfZ2VtX3N1c3BlbmQo
aTkxNSk7Cj4gQEAgLTEwNTAsNiArMTA2Miw3IEBAIHZvaWQgaTkxNV9kcml2ZXJfc2h1dGRvd24o
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAlpbnRlbF9ocGRfY2FuY2VsX3dvcmso
aTkxNSk7Cj4gIAo+ICAJaW50ZWxfc3VzcGVuZF9lbmNvZGVycyhpOTE1KTsKPiArCWludGVsX3No
dXRkb3duX2VuY29kZXJzKGk5MTUpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgYm9vbCBzdXNwZW5kX3Rv
X2lkbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
