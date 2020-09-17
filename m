Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B273A26D07F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Sep 2020 03:19:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EEE36EB72;
	Thu, 17 Sep 2020 01:19:14 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C546EB72
 for <Intel-GFX@lists.freedesktop.org>; Thu, 17 Sep 2020 01:19:13 +0000 (UTC)
IronPort-SDR: L80pObNCBQzxYltpXjDzhlCFl5wA7ShzOwkSfS+aKU8QyIhUnqDBB9xq4x+piD3p/8/YwjEtW/
 9IoOnzjyYnDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="244435772"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="244435772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 18:19:12 -0700
IronPort-SDR: t8takP9UzJZAWZ8QSFfs0tstUU9ZKBzKeM7YDmS3l2AMWYak+zkPHvf8YtqJT0zKs7sgAib19M
 d6CrEkgTDWbA==
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="380363243"
Received: from johnharr-mobl1.amr.corp.intel.com (HELO [10.254.63.12])
 ([10.254.63.12])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 18:19:12 -0700
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
References: <20200916171653.2021483-1-John.C.Harrison@Intel.com>
 <20200916171653.2021483-3-John.C.Harrison@Intel.com>
 <973cb6c0-3286-0c72-216d-2bd32e5d98f9@intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <e12da086-1f4c-d915-f16b-30c8fb7b04e6@Intel.com>
Date: Wed, 16 Sep 2020 18:19:11 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <973cb6c0-3286-0c72-216d-2bd32e5d98f9@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 02/12] drm/i915/guc: Support logical engine
 mapping table in ADS
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gOS8xNi8yMDIwIDE2OjI3LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+IE9uIDkv
MTYvMjAyMCAxMDoxNiBBTSwgSm9obi5DLkhhcnJpc29uQEludGVsLmNvbSB3cm90ZToKPj4gRnJv
bTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+Cj4+Cj4+IFRoZSBuZXcg
R3VDIEZXIGludHJvZHVjZXMgYSBwaHlzaWNhbCB0byBsb2dpY2FsIGVuZ2luZSBtYXBwaW5nIHRh
YmxlIGluCj4+IHRoZSBHdUMgYWRkaXRpb25hbCBkYXRhIHN0cnVjdHVyZXMgd2hpY2ggbmVlZHMg
dG8gYmUgY29uZmlndXJlZCBpbiBvcmRlcgo+PiBmb3IgdGhlIGZpcm13YXJlIHRvIGxvYWQuIFRo
aXMgcGF0Y2ggaW5pdGlhbGl6ZXMgdGhlIHRhYmxlIHdpdGggYSAxIHRvIDEKPj4gbWFwcGluZy4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5j
b20+Cj4+IENDOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+PiAt
LS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Fkcy5jwqAgfCAy
MyArKysrKysrKysrKysrKysrKysrKysKPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX2Z3aWYuaCB8wqAgNCArKystCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMjYgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Fkcy5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19hZHMuYwo+PiBpbmRleCBkNDQwNjEwMzNmMjMuLjU3OTU0YzYzNjBl
MCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Fk
cy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19hZHMuYwo+
PiBAQCAtNDgsNiArNDgsMjcgQEAgc3RhdGljIHZvaWQgZ3VjX2N0X3Bvb2xfZW50cmllc19pbml0
KHN0cnVjdCAKPj4gZ3VjX2N0X3Bvb2xfZW50cnkgKnBvb2wsIHUzMiBudW0pCj4+IMKgwqDCoMKg
wqAgbWVtc2V0KHBvb2wsIDAsIG51bSAqIHNpemVvZigqcG9vbCkpOwo+PiDCoCB9Cj4+IMKgICtz
dGF0aWMgdm9pZCBndWNfbWFwcGluZ190YWJsZV9pbml0KHN0cnVjdCBpbnRlbF9ndCAqZ3QsCj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGd1Y19ndF9zeXN0
ZW1faW5mbyAqc3lzdGVtX2luZm8pCj4+ICt7Cj4+ICvCoMKgwqAgdW5zaWduZWQgaW50IGksIGo7
Cj4+ICvCoMKgwqAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+PiArwqDCoMKgIGVu
dW0gaW50ZWxfZW5naW5lX2lkIGlkOwo+PiArCj4+ICvCoMKgwqAgLyogVGFibGUgbXVzdCBiZSBz
ZXQgdG8gaW52YWxpZCB2YWx1ZXMgZm9yIGVudHJpZXMgbm90IHVzZWQgKi8KPj4gK8KgwqDCoCBm
b3IgKGkgPSAwOyBpIDwgR1VDX01BWF9FTkdJTkVfQ0xBU1NFUzsgKytpKQo+PiArwqDCoMKgwqDC
oMKgwqAgZm9yIChqID0gMDsgaiA8IEdVQ19NQVhfSU5TVEFOQ0VTX1BFUl9DTEFTUzsgKytqKQo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzeXN0ZW1faW5mby0+bWFwcGluZ190YWJsZVtpXVtq
XSA9Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgR1VDX01BWF9JTlNUQU5DRVNf
UEVSX0NMQVNTOwo+PiArCj4+ICvCoMKgwqAgZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlk
KSB7Cj4+ICvCoMKgwqDCoMKgwqDCoCB1OCBndWNfY2xhc3MgPSBlbmdpbmUtPmNsYXNzOwo+PiAr
Cj4+ICsgc3lzdGVtX2luZm8tPm1hcHBpbmdfdGFibGVbZ3VjX2NsYXNzXVtlbmdpbmUtPmluc3Rh
bmNlXSA9Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGVuZ2luZS0+aW5zdGFuY2U7Cj4+ICvC
oMKgwqAgfQo+PiArfQo+PiArCj4+IMKgIC8qCj4+IMKgwqAgKiBUaGUgZmlyc3QgODAgZHdvcmRz
IG9mIHRoZSByZWdpc3RlciBzdGF0ZSBjb250ZXh0LCBjb250YWluaW5nIHRoZQo+PiDCoMKgICog
ZXhlY2xpc3RzIGFuZCBwcGd0dCByZWdpc3RlcnMuCj4+IEBAIC0xMDcsNiArMTI4LDggQEAgc3Rh
dGljIHZvaWQgX19ndWNfYWRzX2luaXQoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+PiDCoMKgwqDC
oMKgIGJsb2ItPnN5c3RlbV9pbmZvLnZlYm94X2VuYWJsZV9tYXNrID0gVkVCT1hfTUFTSyhndCk7
Cj4+IMKgwqDCoMKgwqAgYmxvYi0+c3lzdGVtX2luZm8udmRib3hfc2ZjX3N1cHBvcnRfbWFzayA9
IAo+PiBndC0+aW5mby52ZGJveF9zZmNfYWNjZXNzOwo+PiDCoCArwqDCoMKgIGd1Y19tYXBwaW5n
X3RhYmxlX2luaXQoZ3VjX3RvX2d0KGd1YyksICZibG9iLT5zeXN0ZW1faW5mbyk7Cj4+ICsKPj4g
wqDCoMKgwqDCoCBiYXNlID0gaW50ZWxfZ3VjX2dndHRfb2Zmc2V0KGd1YywgZ3VjLT5hZHNfdm1h
KTsKPj4gwqAgwqDCoMKgwqDCoCAvKiBDbGllbnRzIGluZm/CoCAqLwo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2Z3aWYuaCAKPj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCj4+IGluZGV4IDhiMzY4NGM2YTlh
MS4uZTI4MzE1NjYyNGI1IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9ndWNfZndpZi5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2lu
dGVsX2d1Y19md2lmLmgKPj4gQEAgLTM4OCw3ICszODgsOSBAQCBzdHJ1Y3QgZ3VjX2d0X3N5c3Rl
bV9pbmZvIHsKPj4gwqDCoMKgwqDCoCB1MzIgdmRib3hfZW5hYmxlX21hc2s7Cj4+IMKgwqDCoMKg
wqAgdTMyIHZkYm94X3NmY19zdXBwb3J0X21hc2s7Cj4+IMKgwqDCoMKgwqAgdTMyIHZlYm94X2Vu
YWJsZV9tYXNrOwo+PiAtwqDCoMKgIHUzMiByZXNlcnZlZFs5XTsKPj4gK8KgwqDCoCB1MzIgcmVz
ZXJ2ZWQxOwo+PiArwqDCoMKgIHU4IAo+PiBtYXBwaW5nX3RhYmxlW0dVQ19NQVhfRU5HSU5FX0NM
QVNTRVNdW0dVQ19NQVhfSU5TVEFOQ0VTX1BFUl9DTEFTU107Cj4+ICvCoMKgwqAgdTMyIHJlc2Vy
dmVkMls4XTsKPgo+IEkgdGhpbmsgdGhpcyBwYXRjaCBzaG91bGQgYmUgc3F1YXNoZWQgd2l0aCBw
YXRjaCA4IHRvIG1vdmUgZGlyZWN0bHkgdG8gCj4gdGhlIHY0OSB2ZXJzaW9uIG9mIGd1Y19ndF9z
eXN0ZW1faW5mby4KPiBBcGFydCBmcm9tIHRoaXMgdGhlIHBhdGNoIExHVE0uCj4KPiBEYW5pZWxl
ClRoZSB3aG9sZSBzZXQgaXMgZ29pbmcgdG8gYmUgc3F1YXNoZWQgaW50byBhIHNpbmdsZSBwYXRj
aCBmb3IgbWVyZ2luZy4gCkZvciByZXZpZXcgcHVycG9zZXMsIHRoZSBkaXNjdXNzaW9uIHdhcyB0
aGF0IGl0IG1ha2VzIHNlbnNlIHRvIGtlZXAgZWFjaCAKYXMgYSBzZXBhcmF0ZSBmdW5jdGlvbmFs
IGNoYW5nZS4gVGhpcyBwYXRjaCBhZGRzIGxvZ2ljYWwgZW5naW5lIAptYXBwaW5ncy4gUGF0Y2gg
IzggYWRkcyBleHRyYSBlbmdpbmUgY2xhc3Nlcy4gVGhlc2UgYXJlIGRpZmZlcmVudCAKZnVuY3Rp
b25hbCBjaGFuZ2VzLgoKSm9obi4KCgoKPgo+PiDCoCB9IF9fcGFja2VkOwo+PiDCoCDCoCAvKiBD
bGllbnRzIGluZm8gKi8KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
