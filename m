Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A06B2E307E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 13:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796F76E270;
	Thu, 24 Oct 2019 11:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5D316E270
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 11:37:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 04:37:43 -0700
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="192158074"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 04:37:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191014110122.31923-3-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-3-vandita.kulkarni@intel.com>
Date: Thu, 24 Oct 2019 14:37:38 +0300
Message-ID: <87h83ycr25.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/dsi: Configure transcoder
 operation for command mode.
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

T24gTW9uLCAxNCBPY3QgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+IHdyb3RlOgo+IENvbmZpZ3VyZSB0aGUgdHJhbnNjb2RlciB0byBvcGVyYXRlIGlu
IFRFIEdBVEUgY29tbWFuZCBtb2RlCj4gYW5kICB0YWtlIFRFIGV2ZW50cyBmcm9tIEdQSU8uCj4g
QWxzbyBkaXNhYmxlIHRoZSBwZXJpb2RpYyBjb21tYW5kIG1vZGUsIHRoYXQgR09QIHdvdWxkIGhh
dmUKPiBwcm9ncmFtbWVkLgoKRGlzY3Vzc2luZyB0aGlzIHdpdGggVmlsbGUsIGl0IGp1c3QgbWln
aHQgYmUgYSBnb29kIGlkZWEgdG8gZW5hYmxlCmNvbW1hbmQgbW9kZSAqd2l0aCogdGhlIHBlcmlv
ZGljIHVwZGF0ZSBmaXJzdC4gSXQgZG9kZ2VzIGEgYnVuY2ggb2YKaXNzdWVzIHdydCB2Ymxhbmtz
IGFuZCBzY2FubGluZXMsIHlldCBtb3ZlcyB1cyBmb3J3YXJkIHdpdGggY29tbWFuZAptb2RlLiBT
byBpdCBtaWdodCBiZSBhIHZpYWJsZSBpbnRlcm1lZGlhdGUgc3RlcC4KCkJSLApKYW5pLgoKPgo+
IFNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8IDMy
ICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMiBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xf
ZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwo+IGluZGV4IDZl
Mzk4YzMzYTUyNC4uOGU2YzA5YTFkYjc4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMKPiBAQCAtNzA0LDYgKzcwNCwxMCBAQCBnZW4xMV9kc2lfY29uZmlndXJlX3Ry
YW5zY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJCQl0bXAgfD0gVklE
RU9fTU9ERV9TWU5DX1BVTFNFOwo+ICAJCQkJYnJlYWs7Cj4gIAkJCX0KPiArCQl9IGVsc2Ugewo+
ICsJCQl0bXAgJj0gfk9QX01PREVfTUFTSzsKPiArCQkJdG1wIHw9IENNRF9NT0RFX1RFX0dBVEU7
Cj4gKwkJCXRtcCB8PSBURV9TT1VSQ0VfR1BJTzsKPiAgCQl9Cj4gIAo+ICAJCUk5MTVfV1JJVEUo
RFNJX1RSQU5TX0ZVTkNfQ09ORihkc2lfdHJhbnMpLCB0bXApOwo+IEBAIC05NTMsNiArOTU3LDIy
IEBAIHN0YXRpYyB2b2lkIGdlbjExX2RzaV9zZXR1cF90aW1lb3V0cyhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcikKPiAgCX0KPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2Nv
bmZpZ191dGlsX3BpbihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiArewo+ICsJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7Cj4gKwlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKCZl
bmNvZGVyLT5iYXNlKTsKPiArCXUzMiB0bXA7Cj4gKwo+ICsJLyogdXNlZCBvbmx5IGFzIFRFIGkv
cCBmb3IgRFNJMCBmb3IgZHVhbCBsaW5rIFRFIGlzIGZyb20gc2xhdmUgRFNJMSAqLwo+ICsJaWYg
KGlzX3ZpZF9tb2RlKGludGVsX2RzaSkgfHwgKGludGVsX2RzaS0+ZHVhbF9saW5rKSkKPiArCQly
ZXR1cm47Cj4gKwo+ICsJdG1wID0gSTkxNV9SRUFEKFVUSUxfUElOX0NUTCk7Cj4gKwl0bXAgfD0g
SUNMX1VUSUxfUElOX0RJUkVDVElPTjsKPiArCXRtcCB8PSBVVElMX1BJTl9FTkFCTEU7Cj4gKwlJ
OTE1X1dSSVRFKFVUSUxfUElOX0NUTCwgdG1wKTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQKPiAg
Z2VuMTFfZHNpX2VuYWJsZV9wb3J0X2FuZF9waHkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCj4gIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZp
ZykKPiBAQCAtOTc0LDYgKzk5NCw5IEBAIGdlbjExX2RzaV9lbmFibGVfcG9ydF9hbmRfcGh5KHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICAJLyogc2V0dXAgRC1QSFkgdGltaW5ncyAq
Lwo+ICAJZ2VuMTFfZHNpX3NldHVwX2RwaHlfdGltaW5ncyhlbmNvZGVyKTsKPiAgCj4gKwkvKiBT
aW5jZSB0cmFuc2NvZGVyIGlzIGNvbmZpZ3VyZWQgdG8gdGFrZSBldmVudHMgZnJvbSBHUElPICov
Cj4gKwlnZW4xMV9kc2lfY29uZmlnX3V0aWxfcGluKGVuY29kZXIpOwo+ICsKPiAgCS8qIHN0ZXAg
NGg6IHNldHVwIERTSSBwcm90b2NvbCB0aW1lb3V0cyAqLwo+ICAJZ2VuMTFfZHNpX3NldHVwX3Rp
bWVvdXRzKGVuY29kZXIpOwo+ICAKPiBAQCAtMTEwNCw2ICsxMTI3LDE1IEBAIHN0YXRpYyB2b2lk
IGdlbjExX2RzaV9kZWNvbmZpZ3VyZV90cmFuY29kZXIoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIpCj4gIAllbnVtIHRyYW5zY29kZXIgZHNpX3RyYW5zOwo+ICAJdTMyIHRtcDsKPiAgCj4g
KwkvKiBkaXNhYmxlIHBlcmlvZGljIHVwZGF0ZSBtb2RlICovCj4gKwlpZiAoaXNfY21kX21vZGUo
aW50ZWxfZHNpKSkgewo+ICsJCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9y
dHMpIHsKPiArCQkJdG1wID0gSTkxNV9SRUFEKElDTF9EU0lfQ01EX0ZSTUNUTChwb3J0KSk7Cj4g
KwkJCXRtcCAmPSB+SUNMX1BFUklPRElDX0ZSQU1FX1VQREFURV9FTkFCTEU7Cj4gKwkJCUk5MTVf
V1JJVEUoSUNMX0RTSV9DTURfRlJNQ1RMKHBvcnQpLCB0bXApOwo+ICsJCX0KPiArCX0KPiArCj4g
IAkvKiBwdXQgZHNpIGxpbmsgaW4gVUxQUyAqLwo+ICAJZm9yX2VhY2hfZHNpX3BvcnQocG9ydCwg
aW50ZWxfZHNpLT5wb3J0cykgewo+ICAJCWRzaV90cmFucyA9IGRzaV9wb3J0X3RvX3RyYW5zY29k
ZXIocG9ydCk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
