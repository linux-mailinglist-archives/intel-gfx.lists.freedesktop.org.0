Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B2DEC868
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 19:23:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D84CA6E2A9;
	Fri,  1 Nov 2019 18:23:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D706E2A9
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 18:23:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 11:23:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="402307431"
Received: from hacku-mobl.ger.corp.intel.com (HELO [10.252.57.69])
 ([10.252.57.69])
 by fmsmga006.fm.intel.com with ESMTP; 01 Nov 2019 11:23:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191101181820.12932-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <f32b9817-85b2-aa85-0b6c-db5268fac097@intel.com>
Date: Fri, 1 Nov 2019 20:23:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101181820.12932-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Reverse a ternary to make
 sparse happy
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

T24gMDEvMTEvMjAxOSAyMDoxOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEF2b2lkCj4KPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYzoyNDQyOjg1OiB3YXJuaW5nOiBkdWJpb3VzOiB4
IHwgIXkKPgo+IHNpbXBseSBieSBpbnZlcnRpbmcgdGhlIHByZWRpY2F0ZSBhbmQgcmV2ZXJzaW5n
IHRoZSB0ZXJuYXJ5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+Cj4gQ2M6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGln
ZS5yYW1hcHBhQGludGVsLmNvbT4KPiBDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxh
bmR3ZXJsaW5AaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9u
ZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KCgpUaGFua3MgYSBsb3QsCgoKLUxpb25lbAoKCj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDEwICsrKysrLS0tLS0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IDZlMzViOTI1NTg4Mi4uYWNkNjVkYTUwNjUx
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMjQ0MSwxMiArMjQ0MSwxMiBA
QCBzdGF0aWMgaW50IGdlbjEyX2VuYWJsZV9tZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0pCj4gICAJCQkgICBfTUFTS0VEX0JJVF9FTkFCTEUoR0VOMTJfT0FHX09BX0RF
QlVHX0RJU0FCTEVfQ0xLX1JBVElPX1JFUE9SVFMgfAo+ICAgCQkJCQkgICAgICBHRU4xMl9PQUdf
T0FfREVCVUdfSU5DTFVERV9DTEtfUkFUSU8pIHwKPiAgIAkJCSAgIC8qCj4gLQkJCSAgICAqIElm
IHRoZSB1c2VyIGRpZG4ndCByZXF1aXJlIE9BIHJlcG9ydHMsIGluc3RydWN0IHRoZQo+IC0JCQkg
ICAgKiBoYXJkd2FyZSBub3QgdG8gZW1pdCBjdHggc3dpdGNoIHJlcG9ydHMuCj4gKwkJCSAgICAq
IElmIHRoZSB1c2VyIGRpZG4ndCByZXF1aXJlIE9BIHJlcG9ydHMsIGluc3RydWN0Cj4gKwkJCSAg
ICAqIHRoZSBoYXJkd2FyZSBub3QgdG8gZW1pdCBjdHggc3dpdGNoIHJlcG9ydHMuCj4gICAJCQkg
ICAgKi8KPiAtCQkJICAgIShzdHJlYW0tPnNhbXBsZV9mbGFncyAmIFNBTVBMRV9PQV9SRVBPUlQp
ID8KPiAtCQkJICAgX01BU0tFRF9CSVRfRU5BQkxFKEdFTjEyX09BR19PQV9ERUJVR19ESVNBQkxF
X0NUWF9TV0lUQ0hfUkVQT1JUUykgOgo+IC0JCQkgICBfTUFTS0VEX0JJVF9ESVNBQkxFKEdFTjEy
X09BR19PQV9ERUJVR19ESVNBQkxFX0NUWF9TV0lUQ0hfUkVQT1JUUykpOwo+ICsJCQkgICAoc3Ry
ZWFtLT5zYW1wbGVfZmxhZ3MgJiBTQU1QTEVfT0FfUkVQT1JUKSA/Cj4gKwkJCSAgIF9NQVNLRURf
QklUX0RJU0FCTEUoR0VOMTJfT0FHX09BX0RFQlVHX0RJU0FCTEVfQ1RYX1NXSVRDSF9SRVBPUlRT
KSA6Cj4gKwkJCSAgIF9NQVNLRURfQklUX0VOQUJMRShHRU4xMl9PQUdfT0FfREVCVUdfRElTQUJM
RV9DVFhfU1dJVENIX1JFUE9SVFMpKTsKPiAgIAo+ICAgCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsIEdFTjEyX09BR19PQUdMQkNUWENUUkwsIHBlcmlvZGljID8KPiAgIAkJCSAgIChHRU4xMl9P
QUdfT0FHTEJDVFhDVFJMX0NPVU5URVJfUkVTVU1FIHwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
