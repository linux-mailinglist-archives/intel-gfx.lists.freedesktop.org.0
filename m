Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8676E5EECF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 23:50:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE3676E202;
	Wed,  3 Jul 2019 21:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CBCF6E202
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 21:50:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 14:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,448,1557212400"; d="scan'208";a="172270339"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2019 14:50:28 -0700
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190703113640.31100-1-michal.wajdeczko@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <987be86d-15f0-2a02-d5f3-695525204810@intel.com>
Date: Wed, 3 Jul 2019 14:50:17 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190703113640.31100-1-michal.wajdeczko@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Upgrade to GuC 33.0.0
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

CgpPbiA3LzMvMTkgNDozNiBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPiBOZXcgR3VDIGZp
cm13YXJlIGlzIGF2YWlsYWJsZS4gTGV0J3MgdXNlIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKVGhlIG9u
bHkgYXBwbGljYWJsZSBkaWZmIGluIHRoZSBGVyBoZWFkZXIgaXMgaW5kZWVkIHRoZSAKR1VDX01B
WF9JTlNUQU5DRVNfUEVSX0NMQVNTIGRlZmluZS4KClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKRGFuaWVsZQoKPiAt
LS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jICAgfCAyMCArKysrKysr
KysrLS0tLS0tLS0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYuaCB8
ICA3ICstLS0tLS0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTYgZGVs
ZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKPiBpbmRleCA5NzBm
MzllZjI0OGIuLmRiMWUwZGFjYTdkYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19m
dy5jCj4gQEAgLTM4LDM3ICszOCwzNyBAQAo+ICAgCV9fc3RyaW5naWZ5KEtFWSMjX0dVQ19GV19Q
QVRDSCkgIi5iaW4iCj4gICAKPiAgICNkZWZpbmUgU0tMX0dVQ19GV19QUkVGSVggc2tsCj4gLSNk
ZWZpbmUgU0tMX0dVQ19GV19NQUpPUiAzMgo+ICsjZGVmaW5lIFNLTF9HVUNfRldfTUFKT1IgMzMK
PiAgICNkZWZpbmUgU0tMX0dVQ19GV19NSU5PUiAwCj4gLSNkZWZpbmUgU0tMX0dVQ19GV19QQVRD
SCAzCj4gKyNkZWZpbmUgU0tMX0dVQ19GV19QQVRDSCAwCj4gICAjZGVmaW5lIFNLTF9HVUNfRklS
TVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoU0tMKQo+ICAgTU9EVUxFX0ZJUk1XQVJFKFNL
TF9HVUNfRklSTVdBUkVfUEFUSCk7Cj4gICAKPiAgICNkZWZpbmUgQlhUX0dVQ19GV19QUkVGSVgg
Ynh0Cj4gLSNkZWZpbmUgQlhUX0dVQ19GV19NQUpPUiAzMgo+ICsjZGVmaW5lIEJYVF9HVUNfRldf
TUFKT1IgMzMKPiAgICNkZWZpbmUgQlhUX0dVQ19GV19NSU5PUiAwCj4gLSNkZWZpbmUgQlhUX0dV
Q19GV19QQVRDSCAzCj4gKyNkZWZpbmUgQlhUX0dVQ19GV19QQVRDSCAwCj4gICAjZGVmaW5lIEJY
VF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoQlhUKQo+ICAgTU9EVUxFX0ZJ
Uk1XQVJFKEJYVF9HVUNfRklSTVdBUkVfUEFUSCk7Cj4gICAKPiAgICNkZWZpbmUgS0JMX0dVQ19G
V19QUkVGSVgga2JsCj4gLSNkZWZpbmUgS0JMX0dVQ19GV19NQUpPUiAzMgo+ICsjZGVmaW5lIEtC
TF9HVUNfRldfTUFKT1IgMzMKPiAgICNkZWZpbmUgS0JMX0dVQ19GV19NSU5PUiAwCj4gLSNkZWZp
bmUgS0JMX0dVQ19GV19QQVRDSCAzCj4gKyNkZWZpbmUgS0JMX0dVQ19GV19QQVRDSCAwCj4gICAj
ZGVmaW5lIEtCTF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgoS0JMKQo+ICAg
TU9EVUxFX0ZJUk1XQVJFKEtCTF9HVUNfRklSTVdBUkVfUEFUSCk7Cj4gICAKPiAgICNkZWZpbmUg
R0xLX0dVQ19GV19QUkVGSVggZ2xrCj4gLSNkZWZpbmUgR0xLX0dVQ19GV19NQUpPUiAzMgo+ICsj
ZGVmaW5lIEdMS19HVUNfRldfTUFKT1IgMzMKPiAgICNkZWZpbmUgR0xLX0dVQ19GV19NSU5PUiAw
Cj4gLSNkZWZpbmUgR0xLX0dVQ19GV19QQVRDSCAzCj4gKyNkZWZpbmUgR0xLX0dVQ19GV19QQVRD
SCAwCj4gICAjZGVmaW5lIEdMS19HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VDX0ZXX1BBVEgo
R0xLKQo+ICAgTU9EVUxFX0ZJUk1XQVJFKEdMS19HVUNfRklSTVdBUkVfUEFUSCk7Cj4gICAKPiAg
ICNkZWZpbmUgSUNMX0dVQ19GV19QUkVGSVggaWNsCj4gLSNkZWZpbmUgSUNMX0dVQ19GV19NQUpP
UiAzMgo+ICsjZGVmaW5lIElDTF9HVUNfRldfTUFKT1IgMzMKPiAgICNkZWZpbmUgSUNMX0dVQ19G
V19NSU5PUiAwCj4gLSNkZWZpbmUgSUNMX0dVQ19GV19QQVRDSCAzCj4gKyNkZWZpbmUgSUNMX0dV
Q19GV19QQVRDSCAwCj4gICAjZGVmaW5lIElDTF9HVUNfRklSTVdBUkVfUEFUSCBfX01BS0VfR1VD
X0ZXX1BBVEgoSUNMKQo+ICAgTU9EVUxFX0ZJUk1XQVJFKElDTF9HVUNfRklSTVdBUkVfUEFUSCk7
Cj4gICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3aWYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19md2lmLmgKPiBpbmRleCA5MmJkN2Zm
YjViMTAuLjMwY2NhM2EyOTMyMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ndWNfZndpZi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3
aWYuaAo+IEBAIC00MywxMyArNDMsOCBAQAo+ICAgI2RlZmluZSBHVUNfVklERU9fRU5HSU5FMgkJ
NAo+ICAgI2RlZmluZSBHVUNfTUFYX0VOR0lORVNfTlVNCQkoR1VDX1ZJREVPX0VOR0lORTIgKyAx
KQo+ICAgCj4gLS8qCj4gLSAqIFhYWDogQmV3YXJlIHRoYXQgR2VuOSBmaXJtd2FyZSAzMi54IHVz
ZXMgd3JvbmcgZGVmaW5pdGlvbiBmb3IKPiAtICogR1VDX01BWF9JTlNUQU5DRVNfUEVSX0NMQVNT
ICgxKSBidXQgdGhpcyBpcyBoYXJtbGVzcyBmb3IgdXMgbm93Cj4gLSAqIGFzIHdlIGFyZSBub3Qg
ZW5hYmxpbmcgR3VDIHN1Ym1pc3Npb24gbW9kZSB3aGVyZSB0aGlzIHdpbGwgYmUgdXNlZAo+IC0g
Ki8KPiAgICNkZWZpbmUgR1VDX01BWF9FTkdJTkVfQ0xBU1NFUwkJNQo+IC0jZGVmaW5lIEdVQ19N
QVhfSU5TVEFOQ0VTX1BFUl9DTEFTUwk0Cj4gKyNkZWZpbmUgR1VDX01BWF9JTlNUQU5DRVNfUEVS
X0NMQVNTCTE2Cj4gICAKPiAgICNkZWZpbmUgR1VDX0RPT1JCRUxMX0lOVkFMSUQJCTI1Ngo+ICAg
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
