Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C38AAB716
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 13:23:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE3536E252;
	Fri,  6 Sep 2019 11:23:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEAE6E252
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 11:23:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 04:23:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="213117515"
Received: from aanderso-mobl3.amr.corp.intel.com (HELO [10.252.54.24])
 ([10.252.54.24])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2019 04:23:29 -0700
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190906111413.7738-1-stanislav.lisovskiy@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b550721c-5303-0f07-4126-9d3adfa968c8@intel.com>
Date: Fri, 6 Sep 2019 14:23:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906111413.7738-1-stanislav.lisovskiy@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: List modes,
 regardless of encoder presence
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
Cc: martin.peres@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDYvMDkvMjAxOSAxNDoxNCwgU3RhbmlzbGF2IExpc292c2tpeSB3cm90ZToKPiBJbiBjZXJ0
YWluIHNpdHVhdGlvbnMgZW5jb2RlciBtaWdodCBiZSBub3QgcHJlc2VudCBmb3IgY29ubmVjdG9y
LAo+IGhvd2V2ZXIgbWlnaHQgYmUgdXNlZnVsIHRvIGRpc3BsYXQgcHJvYmVkIG1vZGVzIGZvciB0
aGUgY29ubmVjdG9yLAoKcy9kaXNwbGF0L2Rpc3BsYXkvCgoKPiBpZiBhbnkuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNv
bT4KVGVzdGVkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRl
bC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDgg
KysrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IGluZGV4IDk3OThmMjdhNjk3
YS4uOGZhMDUxMGU4OTdmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBA
QCAtMjU3NCw2ICsyNTc0LDEwIEBAIHN0YXRpYyB2b2lkIGludGVsX2Nvbm5lY3Rvcl9pbmZvKHN0
cnVjdCBzZXFfZmlsZSAqbSwKPiAgIAkJICAgZHJtX2dldF9zdWJwaXhlbF9vcmRlcl9uYW1lKGNv
bm5lY3Rvci0+ZGlzcGxheV9pbmZvLnN1YnBpeGVsX29yZGVyKSk7Cj4gICAJc2VxX3ByaW50Ziht
LCAiXHRDRUEgcmV2OiAlZFxuIiwgY29ubmVjdG9yLT5kaXNwbGF5X2luZm8uY2VhX3Jldik7Cj4g
ICAKPiArCXNlcV9wcmludGYobSwgIlx0bW9kZXM6XG4iKTsKPiArCWxpc3RfZm9yX2VhY2hfZW50
cnkobW9kZSwgJmNvbm5lY3Rvci0+bW9kZXMsIGhlYWQpCj4gKwkJaW50ZWxfc2VxX3ByaW50X21v
ZGUobSwgMiwgbW9kZSk7Cj4gKwo+ICAgCWlmICghaW50ZWxfZW5jb2RlcikKPiAgIAkJcmV0dXJu
Owo+ICAgCj4gQEAgLTI1OTcsMTAgKzI2MDEsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jb25uZWN0
b3JfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gICAJZGVmYXVsdDoKPiAgIAkJYnJlYWs7Cj4g
ICAJfQo+IC0KPiAtCXNlcV9wcmludGYobSwgIlx0bW9kZXM6XG4iKTsKPiAtCWxpc3RfZm9yX2Vh
Y2hfZW50cnkobW9kZSwgJmNvbm5lY3Rvci0+bW9kZXMsIGhlYWQpCj4gLQkJaW50ZWxfc2VxX3By
aW50X21vZGUobSwgMiwgbW9kZSk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBjaGFyICpw
bGFuZV90eXBlKGVudW0gZHJtX3BsYW5lX3R5cGUgdHlwZSkKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
