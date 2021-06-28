Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 674DE3B6951
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 21:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C55936E544;
	Mon, 28 Jun 2021 19:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56ECC6E544;
 Mon, 28 Jun 2021 19:51:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="229644651"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="229644651"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 12:51:46 -0700
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="641032325"
Received: from danielmi-mobl2.ger.corp.intel.com (HELO [10.249.254.242])
 ([10.249.254.242])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 12:51:44 -0700
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
References: <20210628144626.76126-1-thomas.hellstrom@linux.intel.com>
 <20210628144626.76126-6-thomas.hellstrom@linux.intel.com>
 <1e17b84df802428197e348afa460cdb7@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <eb284e98-ade2-39bb-6473-424e03038b41@linux.intel.com>
Date: Mon, 28 Jun 2021 21:51:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <1e17b84df802428197e348afa460cdb7@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/gem: Migrate to system at
 dma-buf map time
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMjgvMjEgOTo0NSBQTSwgUnVobCwgTWljaGFlbCBKIHdyb3RlOgo+PiAtLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9tOiBkcmktZGV2ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mCj4+IFRob21hcyBIZWxsc3Ryw7ZtCj4+
IFNlbnQ6IE1vbmRheSwgSnVuZSAyOCwgMjAyMSAxMDo0NiBBTQo+PiBUbzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBD
YzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPjsg
QXVsZCwgTWF0dGhldwo+PiA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4gU3ViamVjdDogW1BB
VENIIHYzIDUvNV0gZHJtL2k5MTUvZ2VtOiBNaWdyYXRlIHRvIHN5c3RlbSBhdCBkbWEtYnVmIG1h
cAo+PiB0aW1lCj4+Cj4+IFVudGlsIHdlIHN1cHBvcnQgcDJwIGRtYSBvciBhcyBhIGNvbXBsZW1l
bnQgdG8gdGhhdCwgbWlncmF0ZSBkYXRhCj4+IHRvIHN5c3RlbSBtZW1vcnkgYXQgZG1hLWJ1ZiBt
YXAgdGltZSBpZiBwb3NzaWJsZS4KPj4KPj4gdjI6Cj4+IC0gUmViYXNlIG9uIGR5bmFtaWMgZXhw
b3J0ZXIuIFVwZGF0ZSB0aGUgaWd0X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIKPj4gICBzZWxm
dGVzdCB0byBtaWdyYXRlIGlmIHdlIGFyZSBMTUVNIGNhcGFibGUuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4K
Pj4gLS0tCj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYyAgICAg
ICAgICAgfCA3ICsrKysrKy0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9kbWFidWYuYyB8IDQgKysrLQo+PiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9kbWFidWYuYwo+PiBpbmRleCAxZDFlZWIxNjdkMjguLjUyMDdhYTNhZjAwOSAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYwo+PiBAQCAt
MjksNyArMjksMTIgQEAgc3RhdGljIHN0cnVjdCBzZ190YWJsZSAqaTkxNV9nZW1fbWFwX2RtYV9i
dWYoc3RydWN0Cj4+IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNobWUKPj4KPj4gCWFzc2VydF9v
YmplY3RfaGVsZChvYmopOwo+Pgo+PiAtCXJldCA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMo
b2JqKTsKPj4gKwlpZiAoIWk5MTVfZ2VtX29iamVjdF9jYW5fbWlncmF0ZShvYmosIElOVEVMX1JF
R0lPTl9TTUVNKSkKPj4gKwkJcmV0dXJuIEVSUl9QVFIoLUVPUE5PVFNVUFApOwo+PiArCj4+ICsJ
cmV0ID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCBOVUxMLCBJTlRFTF9SRUdJT05fU01F
TSk7Cj4+ICsJaWYgKCFyZXQpCj4+ICsJCXJldCA9IGk5MTVfZ2VtX29iamVjdF9waW5fcGFnZXMo
b2JqKTsKPj4gCWlmIChyZXQpCj4+IAkJZ290byBlcnI7Cj4gV2l0aCB0aGUgY2F2ZWF0cyBvZiB0
aGUgcHJldmlvdXMgcGF0Y2hlcyB0aGlzIGxvb2tzIGdvb2QuClllcywgdGhpcyBzb3J0IG9mIHN1
Y2tzLCBidXQga25vd2luZyB0aGF0IHdlIGhhdmUgYSBjb3JyZWN0IAppbXBsZW1lbnRhdGlvbiBp
biB0aGUgd29ya3MuLi4KPgo+IFJldmlld2VkLWJ5OiBNaWNoYWVsIEouIFJ1aGwgPG1pY2hhZWwu
ai5ydWhsQGludGVsLmNvbT4KPgo+IE1pa2UKClRoYW5rcyBmb3IgdGhlIHJldmlld3MhCgpUaG9t
YXMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
