Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25287AC3BB
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Sep 2019 02:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2EE6E118;
	Sat,  7 Sep 2019 00:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F706E118
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Sep 2019 00:44:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 17:44:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="199644846"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2019 17:44:44 -0700
Date: Fri, 6 Sep 2019 17:44:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20190907004444.GY13677@mdroper-desk.amr.corp.intel.com>
References: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906224142.6963-1-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBTZXAgMDYsIDIwMTkgYXQgMDM6NDE6NDJQTSAtMDcwMCwgUmFkaGFrcmlzaG5hIFNy
aXBhZGEgd3JvdGU6Cj4gRGlzYWJsZSBDUFMgYXdhcmUgY29sb3IgcGlwZSBieSBzZXR0aW5nIGNo
aWNrZW4gYml0Lgo+IAo+IEJTcGVjOiA1Mjg5MAoKQlNwZWM6IDQ1ODI5CgphcyB3ZWxsICgiVGhp
cyBiaXQgbXVzdCBiZSBwcm9ncmFtbWVkIHRvIDEiKS4gIAoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9w
ZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cgo+IEhTREVTOiAxNDA5MTQyMjU5Cj4gCj4g
Q2M6IFN0dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gQ2M6IE1hdHQg
Um9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUmFkaGFr
cmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDUgKysrKysKPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDEgKwo+ICAyIGZp
bGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IDI0M2QzZjc3YmUxMy4uMTRlM2Y5Njc3YjA2
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4g
QEAgLTg5NCw2ICs4OTQsMTEgQEAgaWNsX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgc3RhdGljIHZv
aWQKPiAgdGdsX2d0X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsIHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCkKPiAgewo+ICsJd2FfaW5pdF9tY3IoaTkxNSwg
d2FsKTsKPiArCj4gKwkvKiBXYV8xNDA5MTQyMjU5ICovCj4gKwlXQV9TRVRfQklUX01BU0tFRChH
RU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsCj4gKwkJCSAgR0VOMTJfRElTQUJMRV9DUFNfQVdB
UkVfQ09MT1JfUElQRSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4gaW5kZXggMDA2Y2ZmZDU2YmUyLi41M2UwNzg4MmVmYjcgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPiBAQCAtNzY2OCw2ICs3NjY4LDcgQEAgZW51bSB7Cj4gIAo+ICAjZGVm
aW5lIEdFTjExX0NPTU1PTl9TTElDRV9DSElDS0VOMwkJX01NSU8oMHg3MzA0KQo+ICAgICNkZWZp
bmUgR0VOMTFfQkxFTkRfRU1CX0ZJWF9ESVNBQkxFX0lOX1JDQwkoMSA8PCAxMSkKPiArICAjZGVm
aW5lIEdFTjEyX0RJU0FCTEVfQ1BTX0FXQVJFX0NPTE9SX1BJUEUJKDEgPDwgOSkKPiAgCj4gICNk
ZWZpbmUgSElaX0NISUNLRU4JCQkJCV9NTUlPKDB4NzAxOCkKPiAgIyBkZWZpbmUgQ0hWX0haXzhY
OF9NT0RFX0lOXzFYCQkJCSgxIDw8IDE1KQo+IC0tIAo+IDIuMjAuMQo+IAoKLS0gCk1hdHQgUm9w
ZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVu
dApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
