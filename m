Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FBB9620D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:11:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D956E808;
	Tue, 20 Aug 2019 14:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBB856E808
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:11:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 07:11:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195778439"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 07:11:21 -0700
Date: Tue, 20 Aug 2019 19:40:48 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190820141048.GG7668@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
 <20190820134019.13229-4-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820134019.13229-4-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/hdmi: stylistic cleanup around
 hdcp2_msg_data
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

T24gMjAxOS0wOC0yMCBhdCAxNjo0MDoxOCArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gU3Bs
aXQgc3RydWN0IGRlY2xhcmF0aW9uIGFuZCBhcnJheSBkZWZpbml0aW9uLiBGaXggaW5kZW50cyBh
bmQKPiB3aGl0ZXNwYWNlLiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gCj4gQ2M6IFJhbWFsaW5n
YW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFt
YWxpbmdhbS5jQGludGVsLmNvbT4KCi1SYW0KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZG1pLmMgfCAzOSArKysrKysrKysrKy0tLS0tLS0tLS0tLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBpbmRleCBiMWNhOGU1YmRiNTYu
LmQzMGM4MzE0ZWFhZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRtaS5jCj4gQEAgLTE1MTQsMjkgKzE1MTQsMjggQEAgYm9vbCBpbnRlbF9oZG1pX2hkY3BfY2hl
Y2tfbGluayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCkKPiAgCXJl
dHVybiB0cnVlOwo+ICB9Cj4gIAo+IC1zdGF0aWMgc3RydWN0IGhkY3AyX2hkbWlfbXNnX2RhdGEg
ewo+ICtzdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfZGF0YSB7Cj4gIAl1OCBtc2dfaWQ7Cj4gIAl1MzIg
dGltZW91dDsKPiAgCXUzMiB0aW1lb3V0MjsKPiAtCX0gaGRjcDJfbXNnX2RhdGFbXSA9IHsKPiAt
CQl7SERDUF8yXzJfQUtFX0lOSVQsIDAsIDB9LAo+IC0JCXtIRENQXzJfMl9BS0VfU0VORF9DRVJU
LCBIRENQXzJfMl9DRVJUX1RJTUVPVVRfTVMsIDB9LAo+IC0JCXtIRENQXzJfMl9BS0VfTk9fU1RP
UkVEX0tNLCAwLCAwfSwKPiAtCQl7SERDUF8yXzJfQUtFX1NUT1JFRF9LTSwgMCwgMH0sCj4gLQkJ
e0hEQ1BfMl8yX0FLRV9TRU5EX0hQUklNRSwgSERDUF8yXzJfSFBSSU1FX1BBSVJFRF9USU1FT1VU
X01TLAo+IC0JCQkJSERDUF8yXzJfSFBSSU1FX05PX1BBSVJFRF9USU1FT1VUX01TfSwKPiAtCQl7
SERDUF8yXzJfQUtFX1NFTkRfUEFJUklOR19JTkZPLCBIRENQXzJfMl9QQUlSSU5HX1RJTUVPVVRf
TVMsCj4gLQkJCQkwfSwKPiAtCQl7SERDUF8yXzJfTENfSU5JVCwgMCwgMH0sCj4gLQkJe0hEQ1Bf
Ml8yX0xDX1NFTkRfTFBSSU1FLCBIRENQXzJfMl9IRE1JX0xQUklNRV9USU1FT1VUX01TLCAwfSwK
PiAtCQl7SERDUF8yXzJfU0tFX1NFTkRfRUtTLCAwLCAwfSwKPiAtCQl7SERDUF8yXzJfUkVQX1NF
TkRfUkVDVklEX0xJU1QsCj4gLQkJCQlIRENQXzJfMl9SRUNWSURfTElTVF9USU1FT1VUX01TLCAw
fSwKPiAtCQl7SERDUF8yXzJfUkVQX1NFTkRfQUNLLCAwLCAwfSwKPiAtCQl7SERDUF8yXzJfUkVQ
X1NUUkVBTV9NQU5BR0UsIDAsIDB9LAo+IC0JCXtIRENQXzJfMl9SRVBfU1RSRUFNX1JFQURZLCBI
RENQXzJfMl9TVFJFQU1fUkVBRFlfVElNRU9VVF9NUywKPiAtCQkJCTB9LAo+IC0JfTsKPiArfTsK
PiArCj4gK3N0YXRpYyBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2dfZGF0YSBoZGNwMl9tc2dfZGF0YVtd
ID0gewo+ICsJeyBIRENQXzJfMl9BS0VfSU5JVCwgMCwgMCB9LAo+ICsJeyBIRENQXzJfMl9BS0Vf
U0VORF9DRVJULCBIRENQXzJfMl9DRVJUX1RJTUVPVVRfTVMsIDAgfSwKPiArCXsgSERDUF8yXzJf
QUtFX05PX1NUT1JFRF9LTSwgMCwgMCB9LAo+ICsJeyBIRENQXzJfMl9BS0VfU1RPUkVEX0tNLCAw
LCAwIH0sCj4gKwl7IEhEQ1BfMl8yX0FLRV9TRU5EX0hQUklNRSwgSERDUF8yXzJfSFBSSU1FX1BB
SVJFRF9USU1FT1VUX01TLAo+ICsJICBIRENQXzJfMl9IUFJJTUVfTk9fUEFJUkVEX1RJTUVPVVRf
TVMgfSwKPiArCXsgSERDUF8yXzJfQUtFX1NFTkRfUEFJUklOR19JTkZPLCBIRENQXzJfMl9QQUlS
SU5HX1RJTUVPVVRfTVMsIDAgfSwKPiArCXsgSERDUF8yXzJfTENfSU5JVCwgMCwgMCB9LAo+ICsJ
eyBIRENQXzJfMl9MQ19TRU5EX0xQUklNRSwgSERDUF8yXzJfSERNSV9MUFJJTUVfVElNRU9VVF9N
UywgMCB9LAo+ICsJeyBIRENQXzJfMl9TS0VfU0VORF9FS1MsIDAsIDAgfSwKPiArCXsgSERDUF8y
XzJfUkVQX1NFTkRfUkVDVklEX0xJU1QsIEhEQ1BfMl8yX1JFQ1ZJRF9MSVNUX1RJTUVPVVRfTVMs
IDAgfSwKPiArCXsgSERDUF8yXzJfUkVQX1NFTkRfQUNLLCAwLCAwIH0sCj4gKwl7IEhEQ1BfMl8y
X1JFUF9TVFJFQU1fTUFOQUdFLCAwLCAwIH0sCj4gKwl7IEhEQ1BfMl8yX1JFUF9TVFJFQU1fUkVB
RFksIEhEQ1BfMl8yX1NUUkVBTV9SRUFEWV9USU1FT1VUX01TLCAwIH0sCj4gK307Cj4gIAo+ICBz
dGF0aWMKPiAgaW50IGludGVsX2hkbWlfaGRjcDJfcmVhZF9yeF9zdGF0dXMoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gLS0gCj4gMi4yMC4xCj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
