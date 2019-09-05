Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D84AA2B4
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 051B86E095;
	Thu,  5 Sep 2019 12:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1B8D6E095
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 12:08:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="182807038"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 05 Sep 2019 05:08:13 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x85C8C8G003659; Thu, 5 Sep 2019 13:08:12 +0100
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>, "Janusz
 Krzysztofik" <janusz.krzysztofik@linux.intel.com>
References: <20190905111631.23441-1-janusz.krzysztofik@linux.intel.com>
Date: Thu, 05 Sep 2019 14:08:12 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z7m7zyblxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190905111631.23441-1-janusz.krzysztofik@linux.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Fix detection of GuC
 submission in use
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNSBTZXAgMjAxOSAxMzoxNjozMSArMDIwMCwgSmFudXN6IEtyenlzenRvZmlrICAK
PGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+IHdyb3RlOgoKPiBUaGUgZHJpdmVy
IGFsd2F5cyBhc3N1bWVzIGFjdGl2ZSBHdUMgc3VibWlzc2lvbiBtb2RlIGlmIGl0IGlzCj4gc3Vw
cG9ydGVkLiAgVGhhdCdzIG5vdCB0cnVlIGlmIEd1QyBpbml0aWFsaXphdGlvbiBmYWlscyBmb3Ig
c29tZQo+IHJlYXNvbi4gIFRoYXQgbWF5IGxlYWQgdG8ga2VybmVsIHBhbmljcywgY2F1c2VkIGUu
Zy4gYnkgZXhlY2xpc3RzCj4gZmFsbGJhY2sgc3VibWlzc2lvbiBtb2RlIGluY29ycmVjdGx5IGRl
dGVjdGluZyBHdUMgc3VibWlzc2lvbiBpbiB1c2UuCj4KPiBGaXggaXQgYnkgYWxzbyBjaGVja2lu
ZyBmb3IgR3VDIGVuYWJsZWQgc3RhdHVzLgo+Cj4gRml4ZXM6IDM1NmM0ODQ4MjJlNiAoImRybS9p
OTE1L3VjOiBBZGQgZXhwbGljaXQgRElTQUJMRUQgc3RhdGUgZm9yICAKPiBmaXJtd2FyZSIpCj4g
U2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5oIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
LmggIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaAo+IGluZGV4IDUy
Nzk5NWMyMTE5Ni4uYjI4YmFiNjRhMjgwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Yy5oCj4gQEAgLTUxLDcgKzUxLDggQEAgc3RhdGljIGlubGluZSBib29sICAKPiBpbnRl
bF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfdWMgKnVjKQo+IHN0YXRp
YyBpbmxpbmUgYm9vbCBpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF91
YyAqdWMpCj4gIHsKPiAtCXJldHVybiBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9zdXBwb3J0ZWQo
JnVjLT5ndWMpOwo+ICsJcmV0dXJuIGludGVsX2d1Y19pc19lbmFibGVkKCZ1Yy0+Z3VjKSAmJgo+
ICsJICAgICAgIGludGVsX2d1Y19pc19zdWJtaXNzaW9uX3N1cHBvcnRlZCgmdWMtPmd1Yyk7CgpU
aGlzIHdvbnQgZml4IHlvdXIgb3JpZ2luYWwgcHJvYmxlbSAodGhhdCBidHcgaXMgbm90IHBvc3Np
YmxlIHRvCnJlcHJvIG9uIGRybS10aXApIGFzIGFmdGVyIGFueSBHdUMgaW5pdGlhbGl6YXRpb24g
ZmFpbHVyZSB3ZSBzdGlsbAp0cmVhdCBHdUMgYXMgImVuYWJsZWQiOgoKaW50ZWxfZ3VjX2lzX3N1
cHBvcnRlZCA9PiBIL1cgc3VwcG9ydCAoc3RhdGljKQppbnRlbF9ndWNfaXNfZW5hYmxlZCA9PiBh
a2Egbm90IGRpc2FibGVkIGJ5IHRoZSB1c2VyIChjb25maWcpCmludGVsX2d1Y19pc19ydW5uaW5n
ID0+IG5vIG1ham9yIGZ3IGZhaWx1cmUgKHJ1bnRpbWUpCgpOb3RlIHRoYXQgd2UgZXZlbiBzL2lu
dGVsX2d1Y19pc19lbmFibGVkL2ludGVsX2d1Y19pc19ydW5uaW5nCndvbid0IGhlbHAgYXMgR3VD
IG1heSBiZSBydW5uaW5nIGJ1dCB3ZSBtYXkgZmFpbCB0byBjb3JyZWN0bHkKaW5pdGlhbGl6ZSBH
dUMgc3VibWlzc2lvbi4KCkNvcnJlY3QgZml4IHRvIG9yaWdpbmFsIHByb2JsZW0gbXVzdCBiZSBh
bGlnbmVkIHdpdGggbmV3IEd1QwpzdWJtaXNzaW9uIG1vZGVsIChjb21pbmcgc29vbikgYW5kIGl0
IG1heSBsb29rIGFzIHRoaXM6Cgorc3RhdGljIGlubGluZSBib29sIGludGVsX2d1Y19pc19zdWJt
aXNzaW9uX2FjdGl2ZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCit7CisJR0VNX0JVR19PTihndWMt
PnN1Ym1pc3Npb25fYWN0aXZlICYmICFpbnRlbF9ndWNfaXNfcnVubmluZyhndWMpKTsKKwlyZXR1
cm4gZ3VjLT5zdWJtaXNzaW9uX2FjdGl2ZTsKK30KCmFuZCB0aGVuCgogIHN0YXRpYyBpbmxpbmUg
Ym9vbCBpbnRlbF91Y191c2VzX2d1Y19zdWJtaXNzaW9uKHN0cnVjdCBpbnRlbF91YyAqdWMpCiAg
ewotCXJldHVybiBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9zdXBwb3J0ZWQoJnVjLT5ndWMpOwor
CXJldHVybiBpbnRlbF9ndWNfaXNfc3VibWlzc2lvbl9hY3RpdmUoJnVjLT5ndWMpOwogIH0KCldl
IG1heSBuZWVkIHRvIHJldmlzaXQgYWxsIHVzZXMvc3VwcG9ydHMvIG1hY3JvcyB0byBiZXR0ZXIK
cmVmbGVjdCBjb25maWd1cmF0aW9uIHZzIHJ1bnRpbWUgZGlmZmVyZW5jZXMuCgpUaGFua3MsCk1p
Y2hhbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
