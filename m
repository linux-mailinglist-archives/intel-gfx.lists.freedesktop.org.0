Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F73AC2AD
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 00:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 360176E158;
	Fri,  6 Sep 2019 22:46:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF8FB6E158
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 22:46:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 15:46:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="183279250"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2019 15:46:57 -0700
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <70e23298-611d-ff33-b892-b57cacd1b983@intel.com>
Date: Fri, 6 Sep 2019 15:46:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Implement Wa_1409142259
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

CgpPbiA5LzYvMTkgMzo0MSBQTSwgUmFkaGFrcmlzaG5hIFNyaXBhZGEgd3JvdGU6Cj4gRGlzYWJs
ZSBDUFMgYXdhcmUgY29sb3IgcGlwZSBieSBzZXR0aW5nIGNoaWNrZW4gYml0Lgo+IAo+IEJTcGVj
OiA1Mjg5MAo+IEhTREVTOiAxNDA5MTQyMjU5Cj4gCj4gQ2M6IFN0dWFydCBTdW1tZXJzIDxzdHVh
cnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jp
c2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3dvcmthcm91bmRzLmMgfCA1ICsrKysrCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oICAgICAgICAgICAgIHwgMSArCj4gICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+IGluZGV4IDI0M2QzZjc3YmUxMy4uMTRlM2Y5Njc3YjA2IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTg5NCw2ICs4OTQsMTEgQEAg
aWNsX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHN0
cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgIHN0YXRpYyB2b2lkCj4gICB0Z2xfZ3Rfd29ya2Fy
b3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2Ff
bGlzdCAqd2FsKQo+ICAgewo+ICsJd2FfaW5pdF9tY3IoaTkxNSwgd2FsKTsKCnRoaXMgaXMgbm90
IHBhcnQgb2YgdGhlIFdBIHlvdSdyZSB0cnlpbmcgdG8gYXBwbHksIHJpZ2h0PwoKPiArCj4gKwkv
KiBXYV8xNDA5MTQyMjU5ICovCj4gKwlXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJ
Q0VfQ0hJQ0tFTjMsCj4gKwkJCSAgR0VOMTJfRElTQUJMRV9DUFNfQVdBUkVfQ09MT1JfUElQRSk7
CgpBRkFJQ1MgdGhlIHJlZ2lzdGVyIGlzIHBhcnQgb2YgdGhlIHJlbmRlciBjb250ZXh0LCBzbyBz
aG91bGRuJ3Qgd2Ugc2V0IAp0aGlzIGFzIHBhcnQgb2YgdGhlIGN0eF93b3JrYXJvdW5kcz8gdGhh
dCdzIHdoYXQgd2UgZG8gZm9yIGFub3RoZXIgV0Egb24gCnRoZSBzYW1lIHJlZ2lzdGVyIG9uIElD
TC4KCkRhbmllbGUKCj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4gaW5kZXggMDA2Y2ZmZDU2YmUyLi41M2UwNzg4MmVmYjcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPiBAQCAtNzY2OCw2ICs3NjY4LDcgQEAgZW51bSB7Cj4gICAKPiAgICNk
ZWZpbmUgR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4zCQlfTU1JTygweDczMDQpCj4gICAgICNk
ZWZpbmUgR0VOMTFfQkxFTkRfRU1CX0ZJWF9ESVNBQkxFX0lOX1JDQwkoMSA8PCAxMSkKPiArICAj
ZGVmaW5lIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUJKDEgPDwgOSkKPiAgIAo+
ICAgI2RlZmluZSBISVpfQ0hJQ0tFTgkJCQkJX01NSU8oMHg3MDE4KQo+ICAgIyBkZWZpbmUgQ0hW
X0haXzhYOF9NT0RFX0lOXzFYCQkJCSgxIDw8IDE1KQo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
