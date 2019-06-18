Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1D1498E5
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 08:30:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A0BD6E0DD;
	Tue, 18 Jun 2019 06:30:03 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69EFE6E0DD
 for <Intel-GFX@lists.freedesktop.org>; Tue, 18 Jun 2019 06:30:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 23:30:02 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 17 Jun 2019 23:30:00 -0700
To: John.C.Harrison@Intel.com, Intel-GFX@Lists.FreeDesktop.Org
References: <20190618010108.27499-1-John.C.Harrison@Intel.com>
 <20190618010108.27499-4-John.C.Harrison@Intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b859156f-aa86-a721-6f08-9d5f53a2716c@linux.intel.com>
Date: Tue, 18 Jun 2019 07:30:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618010108.27499-4-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Add whitelist workarounds for
 ICL
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzA2LzIwMTkgMDI6MDEsIEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20gd3JvdGU6Cj4g
RnJvbTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPiAKPiBVcGRh
dGVkIHdoaXRlbGlzdCB0YWJsZSBmb3IgSUNMLgo+IAo+IHYyOiBSZWR1Y2UgY2hhbmdlcyB0byBq
dXN0IHRob3NlIHJlcXVpcmVkIGZvciBtZWRpYSBkcml2ZXIgdW50aWwKPiB0aGUgc2VsZnRlc3Qg
Y2FuIGJlIHVwZGF0ZWQgdG8gc3VwcG9ydCB0aGUgbmV3IGZlYXR1cmVzIG9mIHRoZQo+IG90aGVy
IGVudHJpZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9obi5DLkhhcnJp
c29uQEludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEgPHJvYmVydC5t
LmZvc2hhQGludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMzgg
KysrKysrKysrKysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygr
KSwgMTEgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jCj4gaW5kZXggNTMwOGEwODY0ZTc4Li5kMzdlYmNkZGI5NjMgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBAQCAtMTExMywx
NyArMTExMywzMyBAQCBzdGF0aWMgdm9pZCBpY2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKPiAgIHsKPiAgIAlzdHJ1Y3QgaTkxNV93YV9saXN0ICp3ID0g
JmVuZ2luZS0+d2hpdGVsaXN0Owo+ICAgCj4gLQlpZiAoZW5naW5lLT5jbGFzcyAhPSBSRU5ERVJf
Q0xBU1MpCj4gLQkJcmV0dXJuOwo+IC0KPiAtCS8qIFdhQWxsb3dVTURUb01vZGlmeUhhbGZTbGlj
ZUNoaWNrZW43OmljbCAqLwo+IC0Jd2hpdGVsaXN0X3JlZyh3LCBHRU45X0hBTEZfU0xJQ0VfQ0hJ
Q0tFTjcpOwo+IC0KPiAtCS8qIFdhQWxsb3dVTURUb01vZGlmeVNhbXBsZXJNb2RlOmljbCAqLwo+
IC0Jd2hpdGVsaXN0X3JlZyh3LCBHRU4xMF9TQU1QTEVSX01PREUpOwo+IC0KPiAtCS8qIFdhRW5h
YmxlU3RhdGVDYWNoZVJlZGlyZWN0VG9DUzppY2wgKi8KPiAtCXdoaXRlbGlzdF9yZWcodywgR0VO
OV9TTElDRV9DT01NT05fRUNPX0NISUNLRU4xKTsKPiArCXN3aXRjaCAoZW5naW5lLT5jbGFzcykg
ewo+ICsJY2FzZSBSRU5ERVJfQ0xBU1M6Cj4gKwkJLyogV2FBbGxvd1VNRFRvTW9kaWZ5SGFsZlNs
aWNlQ2hpY2tlbjc6aWNsICovCj4gKwkJd2hpdGVsaXN0X3JlZyh3LCBHRU45X0hBTEZfU0xJQ0Vf
Q0hJQ0tFTjcpOwo+ICsKPiArCQkvKiBXYUFsbG93VU1EVG9Nb2RpZnlTYW1wbGVyTW9kZTppY2wg
Ki8KPiArCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjEwX1NBTVBMRVJfTU9ERSk7Cj4gKwo+ICsJCS8q
IFdhRW5hYmxlU3RhdGVDYWNoZVJlZGlyZWN0VG9DUzppY2wgKi8KPiArCQl3aGl0ZWxpc3RfcmVn
KHcsIEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSk7Cj4gKwkJYnJlYWs7Cj4gKwo+ICsJ
Y2FzZSBWSURFT19ERUNPREVfQ0xBU1M6Cj4gKwkJLyogaHVjU3RhdHVzUmVnT2Zmc2V0ICovCj4g
KwkJd2hpdGVsaXN0X3JlZ19leHQodywgX01NSU8oMHgyMDAwICsgZW5naW5lLT5tbWlvX2Jhc2Up
LAo+ICsJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQpOwo+ICsJCS8qIGh1Y1VLZXJuZWxI
ZHJJbmZvUmVnT2Zmc2V0ICovCj4gKwkJd2hpdGVsaXN0X3JlZ19leHQodywgX01NSU8oMHgyMDE0
ICsgZW5naW5lLT5tbWlvX2Jhc2UpLAo+ICsJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQp
Owo+ICsJCS8qIGh1Y1N0YXR1czJSZWdPZmZzZXQgKi8KPiArCQl3aGl0ZWxpc3RfcmVnX2V4dCh3
LCBfTU1JTygweDIzQjAgKyBlbmdpbmUtPm1taW9fYmFzZSksCj4gKwkJCQkgIFJJTkdfRk9SQ0Vf
VE9fTk9OUFJJVl9SRCk7Cj4gKwkJYnJlYWs7Cj4gKwo+ICsJZGVmYXVsdDoKPiArCQlicmVhazsK
PiArCX0KPiAgIH0KPiAgIAo+ICAgdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF93aGl0ZWxpc3Qoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
