Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B1D3F4FED
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 19:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9793389B01;
	Mon, 23 Aug 2021 17:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 467C289B01
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 17:52:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="204291956"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="204291956"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 10:52:52 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="526159366"
Received: from gspitz-mobl1.ger.corp.intel.com (HELO [10.252.37.198])
 ([10.252.37.198])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 10:52:51 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
 <20210702204603.596-9-ville.syrjala@linux.intel.com>
From: =?UTF-8?Q?Juha-Pekka_Heikkil=c3=a4?= <juha-pekka.heikkila@intel.com>
Message-ID: <ca9ef468-6fdb-bf07-ca72-d72061980963@intel.com>
Date: Mon, 23 Aug 2021 20:52:48 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210702204603.596-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/fbc: Allow higher compression
 limits on FBC1
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TG9vayBvayB0byBtZS4KClJldmlld2VkLWJ5OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVr
a2EuaGVpa2tpbGFAZ21haWwuY29tPgoKT24gMi43LjIwMjEgMjMuNDYsIFZpbGxlIFN5cmphbGEg
d3JvdGU6Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiAKPiBPbiBGQkMxIHdlIGNhbiBzcGVjaWZ5IGFuIGFyYml0cmFyeSBjZmIgc3RyaWRl
LiBUaGUgaHcgd2lsbAo+IHNpbXBseSB0aHJvdyBhd2F5IGFueSBjb21wcmVzc2VkIGxpbmUgdGhh
dCB3b3VsZCBleGNlZWQgdGhlCj4gc3BlY2lmaWVkIGxpbWl0IGFuZCBrZWVwIHVzaW5nIHRoZSB1
bmNvbXByZXNzZWQgZGF0YSBpbnN0ZWFkLgo+IFRodXMgd2UgY2FuIGFsbG93IGFyYml0cmFyeSBj
b21wcmVzc2lvbiBsaW1pdHMuCj4gCj4gVGhlIG9uZSB0aGluZyB3ZSBoYXZlIHRvIGtlZXAgaW4g
bWluZCB0aG91Z2ggaXMgdGhhdCB0aGUgY2ZiCj4gc3RyaWRlIGlzIHNwZWNpZmllZCBpbiB1bml0
cyBvZiAzMkIgKGdlbjIpIG9yIDY0QiAoZ2VuMyspLgo+IEZvcnR1bmF0ZWx5IFgtdGlsZSBpcyBh
bHJlYWR5IDEyOEIgKGdlbjIpIG9yIDUxMkIgKGdlbjMrKSB3aWRlCj4gc28gYXMgbG9uZyBhcyB3
ZSBsaW1pdCBvdXRzZWx2ZXMgdG8gdGhlIHNhbWUgNHggY29tcHJlc3Npb24KPiBsaW1pdCB0aGF0
IEZCQzIgaGFzIHdlIGFyZSBndWFyYW50ZWVkIHRvIGhhdmUgYSBzdWZmaWNpZW50bHkKPiBhbGln
bmVkIGNmYiBzdHJpZGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAyMCArKysrKysrLS0tLS0tLS0tLS0tLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gaW5kZXggZGFmMjE5MWRkM2Y2Li5kNDZl
ZTdiNDlkNjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMK
PiBAQCAtMTQ0LDE1ICsxNDQsMTMgQEAgc3RhdGljIHZvaWQgaTh4eF9mYmNfZGVhY3RpdmF0ZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAKPiAgIHN0YXRpYyB2b2lkIGk4
eHhfZmJjX2FjdGl2YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgIHsK
PiAtCXN0cnVjdCBpbnRlbF9mYmNfcmVnX3BhcmFtcyAqcGFyYW1zID0gJmRldl9wcml2LT5mYmMu
cGFyYW1zOwo+ICsJc3RydWN0IGludGVsX2ZiYyAqZmJjID0gJmRldl9wcml2LT5mYmM7Cj4gKwlj
b25zdCBzdHJ1Y3QgaW50ZWxfZmJjX3JlZ19wYXJhbXMgKnBhcmFtcyA9ICZmYmMtPnBhcmFtczsK
PiAgIAlpbnQgY2ZiX3BpdGNoOwo+ICAgCWludCBpOwo+ICAgCXUzMiBmYmNfY3RsOwo+ICAgCj4g
LQkvKiBOb3RlOiBmYmMubGltaXQgPT0gMSBmb3IgaTh4eCAqLwo+IC0JY2ZiX3BpdGNoID0gcGFy
YW1zLT5jZmJfc2l6ZSAvIEZCQ19MTF9TSVpFOwo+IC0JaWYgKHBhcmFtcy0+ZmIuc3RyaWRlIDwg
Y2ZiX3BpdGNoKQo+IC0JCWNmYl9waXRjaCA9IHBhcmFtcy0+ZmIuc3RyaWRlOwo+ICsJY2ZiX3Bp
dGNoID0gcGFyYW1zLT5jZmJfc3RyaWRlIC8gZmJjLT5saW1pdDsKPiAgIAo+ICAgCS8qIEZCQ19D
VEwgd2FudHMgMzJCIG9yIDY0QiB1bml0cyAqLwo+ICAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPT0gMikKPiBAQCAtNDk4LDE4ICs0OTYsMTQgQEAgc3RhdGljIGludCBpbnRlbF9mYmNfbWlu
X2xpbWl0KGludCBmYl9jcHApCj4gICAKPiAgIHN0YXRpYyBpbnQgaW50ZWxfZmJjX21heF9saW1p
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gICB7Cj4gLQkvKgo+IC0JICog
RklYTUU6IEZCQzEgY2FuIGhhdmUgYXJiaXRyYXJ5IGNmYiBzdHJpZGUsCj4gLQkgKiBzbyB3ZSBj
b3VsZCBzdXBwb3J0IGRpZmZlcmVudCBjb21wcmVzc2lvbiByYXRpb3MuCj4gLQkgKi8KPiAtCWlm
IChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCA1ICYmICFJU19HNFgoZGV2X3ByaXYpKQo+IC0JCXJl
dHVybiAxOwo+IC0KPiAgIAkvKiBXYUZiY09ubHkxdG8xUmF0aW86Y3RnICovCj4gICAJaWYgKElT
X0c0WChkZXZfcHJpdikpCj4gICAJCXJldHVybiAxOwo+ICAgCj4gLQkvKiBGQkMyIGNhbiBvbmx5
IGRvIDE6MSwgMToyLCAxOjQgKi8KPiArCS8qCj4gKwkgKiBGQkMyIGNhbiBvbmx5IGRvIDE6MSwg
MToyLCAxOjQsIHdlIGxpbWl0Cj4gKwkgKiBGQkMxIHRvIHRoZSBzYW1lIG91dCBvZiBjb252ZW5p
ZW5jZS4KPiArCSAqLwo+ICAgCXJldHVybiA0Owo+ICAgfQo+ICAgCj4gCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJ
bnRlbCBGaW5sYW5kIE95ClJlZ2lzdGVyZWQgQWRkcmVzczogUEwgMjgxLCAwMDE4MSBIZWxzaW5r
aSAKQnVzaW5lc3MgSWRlbnRpdHkgQ29kZTogMDM1NzYwNiAtIDQgCkRvbWljaWxlZCBpbiBIZWxz
aW5raSAKClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlk
ZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVu
dChzKS4gQW55IHJldmlldyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHBy
b2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBj
b250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgo=

