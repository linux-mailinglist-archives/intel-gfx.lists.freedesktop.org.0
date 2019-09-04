Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6F8A8072
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 12:38:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4CD89AAE;
	Wed,  4 Sep 2019 10:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B065489B01
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 10:38:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 03:38:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="176900154"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.66.116.93])
 ([10.66.116.93])
 by orsmga008.jf.intel.com with ESMTP; 04 Sep 2019 03:38:06 -0700
To: Ramalingam C <ramalingam.c@intel.com>
References: <20190903165227.6056-1-shashank.sharma@intel.com>
 <20190903165227.6056-2-shashank.sharma@intel.com>
 <20190904073853.GA12577@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <193be651-781b-8d99-9634-e04b063e2d32@intel.com>
Date: Wed, 4 Sep 2019 16:08:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190904073853.GA12577@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Indicate integer up-scaling
 ratios
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>, intel-gfx@lists.freedesktop.org,
 Vivi@freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDkvNC8yMDE5IDE6MDggUE0sIFJhbWFsaW5nYW0gQyB3cm90ZToKPiBPbiAyMDE5LTA5LTAz
IGF0IDIyOjIyOjI2ICswNTMwLCBTaGFzaGFuayBTaGFybWEgd3JvdGU6Cj4+IElmIHRoZSB1cHNj
YWxpbmcgcmF0aW8gaXMgYSBjb21wbGV0ZSBpbnRlZ2VyLCBJbnRlbCBkaXNwbGF5IEhXIGNhbgo+
PiBwaWNrdXAgc3BlY2lhbCBzY2FsaW5nIG1vZGUsIHdoaWNoIGNhbiBwcm9kdWNlIGJldHRlciBu
b24tYmx1cnJ5Cj4+IG91dHB1dHMuIFRoaXMgcGF0Y2ggYWRkcyBhIGNoZWNrIHRvIGluZGljYXRl
IGlmIHRoaXMgaXMgc3VjaCBhbiB1cHNjYWxpbmcKPj4gb3Bwb3J0dW5pdHksIHdoaWxlIGNhbGN1
bGF0aW5nIHRoZSBzY2FsZXIgY29uZmlnLCBhbmQgc3RvcmVzIGl0IGludG8gc2NhbGVyCj4+IHN0
YXRlLgo+Pgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4gQ2M6IFZpdmksIFJvZHJp
Z28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNo
YXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMjEgKysrKysrKysrKysrKysrKysr
Kwo+PiAgIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA3
ICsrKysrKysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPj4gaW5kZXggZWU1
NGQ5NjU5Yzk5Li42MTMxMzBkYjNjMDUgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4+IEBAIC01Mzg4LDYgKzUzODgsMTkgQEAgdTE2IHNr
bF9zY2FsZXJfY2FsY19waGFzZShpbnQgc3ViLCBpbnQgc2NhbGUsIGJvb2wgY2hyb21hX2Nvc2l0
ZWQpCj4+ICAgI2RlZmluZSBTS0xfTUlOX1lVVl80MjBfU1JDX1cgMTYKPj4gICAjZGVmaW5lIFNL
TF9NSU5fWVVWXzQyMF9TUkNfSCAxNgo+PiAgIAo+PiArc3RhdGljIGlubGluZSBib29sCj4+ICtz
Y2FsaW5nX3JhdGlvX2ludGVnZXIoaW50IHNyY193LCBpbnQgZHN0X3csIGludCBzcmNfaCwgaW50
IGRzdF9oKQo+IEp1c3QgYSBzdWdnZXN0aW9uOiBzY2FsaW5nX3JhdGlvX2lzX2ludGVnZXIoKSBt
aWdodCBzb3VuZCBiZXR0ZXIgaGVyZSE/CkFncmVlLCBjZXJ0YWlubHkgc291bmRzIGJldHRlci4K
Pj4gK3sKPj4gKwkvKiBJbnRlZ2VyIG1vZGUgc2NhbGluZyBpcyBhcHBsaWNhYmxlIG9ubHkgZm9y
IHVwc2NhbGluZyBzY2VuYXJpb3MgKi8KPj4gKwlpZiAoZHN0X3cgPCBzcmNfdyB8fCBkc3RfaCA8
IHNyY19oKQo+PiArCQlyZXR1cm4gZmFsc2U7Cj4+ICsKPj4gKwlpZiAoZHN0X3cgJSBzcmNfdyA9
PSAwICYmIGRzdF9oICUgc3JjX2ggPT0gMCkKPj4gKwkJcmV0dXJuIHRydWU7Cj4+ICsKPj4gKwly
ZXR1cm4gZmFsc2U7Cj4+ICt9Cj4+ICsKPj4gICBzdGF0aWMgaW50Cj4+ICAgc2tsX3VwZGF0ZV9z
Y2FsZXIoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsIGJvb2wgZm9yY2VfZGV0
YWNoLAo+PiAgIAkJICB1bnNpZ25lZCBpbnQgc2NhbGVyX3VzZXIsIGludCAqc2NhbGVyX2lkLAo+
PiBAQCAtNTQyMiw2ICs1NDM1LDE0IEBAIHNrbF91cGRhdGVfc2NhbGVyKHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlLCBib29sIGZvcmNlX2RldGFjaCwKPj4gICAJCXJldHVybiAt
RUlOVkFMOwo+PiAgIAl9Cj4+ICAgCj4+ICsJLyoKPj4gKwkgKiBJZiB3ZSBhcmUgdXBzY2FsaW5n
LCBhbmQgdGhlIHNjYWxpbmcgcmF0aW9zIGFyZSBpbnRlZ2VyLCB3ZSBjYW4KPj4gKwkgKiBwaWNr
IG5lYXJlc3QtbmVpZ2hib3VyIG1ldGhvZCBpbiBIVyBmb3Igc2NhbGluZywgd2hpY2ggcHJvZHVj
ZXMKPj4gKwkgKiBibHVybGVzcyBvdXRwdXRzIGluIHN1Y2ggc2NlbmFyaW9zLgo+PiArCSAqLwo+
PiArCWlmIChzY2FsaW5nX3JhdGlvX2ludGVnZXIoc3JjX3csIGRzdF93LCBzcmNfaCwgZHN0X2gp
KQo+PiArCQlzY2FsZXJfc3RhdGUtPmludGVnZXJfc2NhbGluZyA9IHRydWU7Cj4+ICsKPj4gICAJ
LyoKPj4gICAJICogaWYgcGxhbmUgaXMgYmVpbmcgZGlzYWJsZWQgb3Igc2NhbGVyIGlzIG5vIG1v
cmUgcmVxdWlyZWQgb3IgZm9yY2UgZGV0YWNoCj4+ICAgCSAqICAtIGZyZWUgc2NhbGVyIGJpbmRl
ZCB0byB0aGlzIHBsYW5lL2NydGMKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPj4gaW5kZXggM2MxYTVmM2UxZDIyLi42YmIzMmZi
ZjMxNTMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oCj4+IEBAIC02MTMsNiArNjEzLDEzIEBAIHN0cnVjdCBpbnRlbF9j
cnRjX3NjYWxlcl9zdGF0ZSB7Cj4+ICAgCj4+ICAgCS8qIHNjYWxlciB1c2VkIGJ5IGNydGMgZm9y
IHBhbmVsIGZpdHRpbmcgcHVycG9zZSAqLwo+PiAgIAlpbnQgc2NhbGVyX2lkOwo+PiArCj4+ICsJ
LyoKPj4gKwkgKiBOZWFyZXN0LW5laWdoYm9yIG1ldGhvZCBvZiB1cHNjYWxpbmcgZ2lldmVzIGJs
dXJsZXNzIG91dHB1dCBpZgo+IFR5cG86IEdpdmVzLgpnb3QgaXQuCj4KPiAtUmFtCj4+ICsJICog
dGhlIHVwc2NhbGluZyByYXRpbyBpcyBhIGNvbXBsZXRlIGludGVnZXIuIFRoaXMgYm9vbCBpcyB0
byBpbmRpY2F0ZQo+PiArCSAqIHN1Y2ggYW4gb3Bwb3J0dW5pdHkuCj4+ICsJICovCj4+ICsJYm9v
bCBpbnRlZ2VyX3NjYWxpbmc7Cj4+ICAgfTsKPj4gICAKPj4gICAvKiBkcm1fbW9kZS0+cHJpdmF0
ZV9mbGFncyAqLwo+PiAtLSAKPj4gMi4xNy4xCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
