Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C0CA125A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 09:10:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D459891B9;
	Thu, 29 Aug 2019 07:10:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819B8891B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 07:10:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 00:10:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="356367722"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by orsmga005.jf.intel.com with ESMTP; 29 Aug 2019 00:10:44 -0700
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190827191026.26175-1-animesh.manna@intel.com>
 <20190827191026.26175-2-animesh.manna@intel.com>
 <97c6dcc4-c5ef-cdbe-6013-8d4efa47bcaf@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <80f4f489-24fa-52b0-735c-f47e88dab6d1@intel.com>
Date: Thu, 29 Aug 2019 12:40:43 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <97c6dcc4-c5ef-cdbe-6013-8d4efa47bcaf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 01/11] drm/i915/dsb: feature flag added
 for display state buffer.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzI4LzIwMTkgNzozMSBQTSwgU2hhcm1hLCBTaGFzaGFuayB3cm90ZToKPiBIZWxsbyBB
bmltZXNoCj4KPiBPbiA4LzI4LzIwMTkgMTI6NDAgQU0sIEFuaW1lc2ggTWFubmEgd3JvdGU6Cj4+
ICBGcm9tIGdlbjEyIG9ud2FyZHMgRGlzcGxheSBTdGF0ZSBCdWZmZXIoRFNCKSBpcyBoYXJkd2Fy
ZSBjYXBhYmlsaXR5Cj4+IGFkZGVkIHdoaWNoIGFsbG93cyBkcml2ZXIgdG8gYmF0Y2ggc3VibWl0
IGRpc3BsYXkgSFcgcHJvZ3JhbW1pbmcuCj4KPiBMZXQncyByZXBocmFzZSB0aGlzIGxpbmUgYSBi
aXQsIGhvdyBhYm91dDoKPgo+IERTQiBpcyBhIG5ldyBoYXJkd2FyZSBjYXBhYmlsaXR5LCBpbnRy
b2R1Y2VkIGluIEdFTjEyIGRpc3BsYXkuCj4KPiBJdCBhbGxvd3MgYSBkcml2ZXIgdG8gYmF0Y2gt
cHJvZ3JhbSBkaXNwbGF5IEhXIHJlZ2lzdGVycy4KCm9rLgoKPgo+Cj4+IEZlYXR1cmUgZmxhZyBo
YXNfZHNiIGFkZGVkIHRvIGlkZW50aWZ5IHRoZSBkcml2ZXIvcGxhdGZvcm0gc3VwcG9ydAo+PiBh
dCBydW50aW1lLgo+Pgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
Pj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAyICsrCj4+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDEgKwo+PiAgIDIgZmlsZXMg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5oIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
Pj4gaW5kZXggYjQyNjUxYTM4N2Q5Li5kMzJjZmRiNzhiNzQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaAo+PiBAQCAtMTg1Niw2ICsxODU2LDggQEAgc3RhdGljIGlubGluZSBzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAKPj4gKnBkZXZfdG9faTkxNShzdHJ1Y3QgcGNpX2RldiAqcGRldikK
Pj4gICAgICAgKEJVSUxEX0JVR19PTl9aRVJPKCFfX2J1aWx0aW5fY29uc3RhbnRfcChuKSkgKyBc
Cj4+ICAgICAgICBJTlRFTF9JTkZPKGRldl9wcml2KS0+Z2VuID09IChuKSkKPj4gICArI2RlZmlu
ZSBIQVNfRFNCKGRldl9wcml2KSAoSU5URUxfSU5GTyhkZXZfcHJpdiktPmRpc3BsYXkuaGFzX2Rz
YikKPj4gKwo+PiAgIC8qCj4+ICAgICogUmV0dXJuIHRydWUgaWYgcmV2aXNpb24gaXMgaW4gcmFu
Z2UgW3NpbmNlLHVudGlsXSBpbmNsdXNpdmUuCj4+ICAgICoKPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggCj4+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaAo+PiBpbmRleCA5MmUwYzJlMDk1NGMuLmUyMDZmMjk4
ZjQ4ZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCj4+
IEBAIC0xMzUsNiArMTM1LDcgQEAgZW51bSBpbnRlbF9wcGd0dF90eXBlIHsKPj4gICAgICAgZnVu
YyhoYXNfY3NyKTsgXAo+PiAgICAgICBmdW5jKGhhc19kZGkpOyBcCj4+ICAgICAgIGZ1bmMoaGFz
X2RwX21zdCk7IFwKPj4gKyAgICBmdW5jKGhhc19kc2IpOyBcCj4+ICAgICAgIGZ1bmMoaGFzX2Zi
Yyk7IFwKPj4gICAgICAgZnVuYyhoYXNfZ21jaCk7IFwKPj4gICAgICAgZnVuYyhoYXNfaG90cGx1
Zyk7IFwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
