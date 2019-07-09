Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ED5634F7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 13:33:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D00F6E054;
	Tue,  9 Jul 2019 11:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFDEB6E054
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 11:33:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:33:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="170567923"
Received: from unknown (HELO [10.252.37.9]) ([10.252.37.9])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2019 04:33:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-13-lionel.g.landwerlin@intel.com>
 <156266687143.9375.1534457969796318438@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <9cfc99bc-2589-e71e-3df0-24971c46144e@intel.com>
Date: Tue, 9 Jul 2019 14:33:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156266687143.9375.1534457969796318438@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v7 12/12] drm/i915: add support for perf
 configuration queries
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

T24gMDkvMDcvMjAxOSAxMzowNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDctMDkgMTA6MzI6MDgpCj4+ICtzdGF0aWMgaW50IHF1ZXJ5X3Bl
cmZfY29uZmlnX2RhdGEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcXVlcnlfaXRlbSAqcXVl
cnlfaXRlbSwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgdXNlX3V1
aWQpCj4+ICt7Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3F1ZXJ5X3BlcmZfY29uZmlnIF9f
dXNlciAqdXNlcl9xdWVyeV9jb25maWdfcHRyID0KPj4gKyAgICAgICAgICAgICAgIHU2NF90b191
c2VyX3B0cihxdWVyeV9pdGVtLT5kYXRhX3B0cik7Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1
X3BlcmZfb2FfY29uZmlnIF9fdXNlciAqdXNlcl9jb25maWdfcHRyID0KPj4gKyAgICAgICAgICAg
ICAgIHU2NF90b191c2VyX3B0cihxdWVyeV9pdGVtLT5kYXRhX3B0ciArCj4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgc2l6ZW9mKHN0cnVjdCBkcm1faTkxNV9xdWVyeV9wZXJmX2Nv
bmZpZykpOwo+PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wZXJmX29hX2NvbmZpZyB1c2VyX2Nv
bmZpZzsKPj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IE5VTEw7
Cj4+ICsgICAgICAgdTMyIGZsYWdzLCB0b3RhbF9zaXplOwo+PiArICAgICAgIGludCByZXQ7Cj4+
ICsKPj4gKyAgICAgICBpZiAoIWk5MTUtPnBlcmYuaW5pdGlhbGl6ZWQpCj4+ICsgICAgICAgICAg
ICAgICByZXR1cm4gLUVOT0RFVjsKPj4gKwo+PiArICAgICAgIHRvdGFsX3NpemUgPSBzaXplb2Yo
c3RydWN0IGRybV9pOTE1X3F1ZXJ5X3BlcmZfY29uZmlnKSArCj4+ICsgICAgICAgICAgICAgICBz
aXplb2Yoc3RydWN0IGRybV9pOTE1X3BlcmZfb2FfY29uZmlnKTsKPj4gKwo+PiArICAgICAgIGlm
IChxdWVyeV9pdGVtLT5sZW5ndGggPT0gMCkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiB0b3Rh
bF9zaXplOwo+PiArCj4+ICsgICAgICAgaWYgKHF1ZXJ5X2l0ZW0tPmxlbmd0aCA8IHRvdGFsX3Np
emUpIHsKPj4gKyAgICAgICAgICAgICAgIERSTV9ERUJVRygiSW52YWxpZCBxdWVyeSBjb25maWcg
ZGF0YSBpdGVtIHNpemU9JXUgZXhwZWN0ZWQ9JXVcbiIsCj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgcXVlcnlfaXRlbS0+bGVuZ3RoLCB0b3RhbF9zaXplKTsKPj4gKyAgICAgICAgICAgICAg
IHJldHVybiAtRUlOVkFMOwo+PiArICAgICAgIH0KPj4gKwo+PiArICAgICAgIGlmICghYWNjZXNz
X29rKHVzZXJfcXVlcnlfY29uZmlnX3B0ciwgdG90YWxfc2l6ZSkpCj4+ICsgICAgICAgICAgICAg
ICByZXR1cm4gLUVGQVVMVDsKPj4gKwo+PiArICAgICAgIGlmIChfX2dldF91c2VyKGZsYWdzLCAm
dXNlcl9xdWVyeV9jb25maWdfcHRyLT5mbGFncykpCj4+ICsgICAgICAgICAgICAgICByZXR1cm4g
LUVGQVVMVDsKPj4gKwo+PiArICAgICAgIGlmIChmbGFncyAhPSAwKQo+PiArICAgICAgICAgICAg
ICAgcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKyAgICAgICByZXQgPSBtdXRleF9sb2NrX2ludGVy
cnVwdGlibGUoJmk5MTUtPnBlcmYubWV0cmljc19sb2NrKTsKPj4gKyAgICAgICBpZiAocmV0KQo+
PiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPj4gKwo+PiArICAgICAgIGlmICh1c2VfdXVp
ZCkgewo+PiArICAgICAgICAgICAgICAgY2hhciB1dWlkW1VVSURfU1RSSU5HX0xFTiArIDFdID0g
eyAwLCB9Owo+PiArICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfb2FfY29uZmlnICp0bXA7Cj4+
ICsgICAgICAgICAgICAgICBpbnQgaWQ7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgIEJVSUxEX0JV
R19PTihzaXplb2YodXNlcl9xdWVyeV9jb25maWdfcHRyLT51dWlkKSA+PSBzaXplb2YodXVpZCkp
Owo+PiArCj4+ICsgICAgICAgICAgICAgICBpZiAoX19jb3B5X2Zyb21fdXNlcih1dWlkLCB1c2Vy
X3F1ZXJ5X2NvbmZpZ19wdHItPnV1aWQsCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBzaXplb2YodXNlcl9xdWVyeV9jb25maWdfcHRyLT51dWlkKSkpIHsKPiBfX2NvcHlf
ZnJvbV91c2VyKCkgZnJvbSBpbnNpZGUgYSBtdXRleCBicmluZ3MgYmFjayBuaWdodG1hcmVzLiBJ
IHRoaW5rCj4geW91IGFyZSBvaywgYnV0IHlvdSBhcmUgdGFybmlzaGluZyB0aGlzIGxvY2sgd2l0
aCBtbWFwX3NlbSwgd2hpY2ggaXMKPiBodWdlIGFuZCBtYXkgYml0ZSBpbiBmdXR1cmUuIEFuZCBp
dCBsb29rcyBzdXBlcmZsdW91cywgbm8/IFlvdSBjb3VsZCBkbwo+IHRoZSBjb3B5IGZvcm0gdXNl
ciBiZWZvcmUgdGFraW5nIHRoZSBsb2NrLCBhbmQgdGhlbiBvbmNlIHlvdSBoYXZlIHRoZQo+IGNv
bmZpZyBwaW5uZWQsIHlvdSBjYW4gZHJvcCB0aGUgbG9jayBhZ2Fpbi4KPiAtQ2hyaXMKPgpTb3Vu
ZHMgZ29vZCwgdXBkYXRpbmcuCgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
