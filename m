Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B282F38F595
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 00:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 106166E213;
	Mon, 24 May 2021 22:25:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6776E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 22:25:40 +0000 (UTC)
IronPort-SDR: wlVpGnEAIw1BSGkILTYaNZmDV/LbXswOX90paGLQO0pNfiD+A9eAlYJ+Q35Jq52Zbk/evTqzE+
 8Ly4/6rq7jpA==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="287617152"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="287617152"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 15:25:39 -0700
IronPort-SDR: dzmaVK8Y640GOG0VXu1xL6WVWfv/ai4LZ9DFEq6RZw0xGfIczzO2EWyQb+POkNoKGZpdevYYOy
 q1/MaNXcIEOQ==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="470899511"
Received: from lpnguyen-mobl2.amr.corp.intel.com (HELO [10.209.115.31])
 ([10.209.115.31])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 15:25:37 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210524214805.259692-1-jose.souza@intel.com>
 <20210524214805.259692-3-jose.souza@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <9d6c0aa0-71de-1c0d-620e-f7db86d8be15@intel.com>
Date: Mon, 24 May 2021 15:25:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210524214805.259692-3-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915: WA for zero memory channel
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

Ck9uIDUvMjQvMjEgMjo0OCBQTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBDb21t
aXQgYzQ1N2Q5Y2YyNTZlICgiZHJtL2k5MTU6IE1ha2Ugc3VyZSB3ZSBoYXZlIGVub3VnaCBtZW1v
cnkKPiBiYW5kd2lkdGggb24gSUNMIikgYXNzdW1lcyB0aGF0IHdlIGFsd2F5cyBoYXZlIGEgbm9u
LXplcm8KPiBkcmFtX2luZm8tPmNoYW5uZWxzIGFuZCB1c2VzIGl0IGFzIGEgZGl2aXNvci4KPiBX
ZSBuZWVkIG51bSBtZW1vcnkgY2hhbm5lbHMgdG8gYmUgYXQgbGVhc3QgMSBmb3Igc2FuZSBidyBs
aW1pdHMKPiBjaGVja2luZywgZXZlbiB3aGVuIFBDb2RlIHJldHVybnMgMCBvciB0aGVyZSBpcyBh
IGVycm9yIHJlYWRpbmcgaXQsIHNvCj4gbGV0cyBmb3JjZSBpdCB0byAxIGluIHRoaXMgY2FzZS4K
Pgo+IENjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNv
bT4KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiBpbmRleCAz
YTFiYTUyMjY2YTcuLmJmYjM5OGYwNDMyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2J3LmMKPiBAQCAtMTYyLDcgKzE2Miw3IEBAIHN0YXRpYyBpbnQgaWNsX2dldF9i
d19pbmZvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgY29uc3Qgc3RydWN0IGlu
dGVsCj4gICB7Cj4gICAJc3RydWN0IGludGVsX3Fndl9pbmZvIHFpID0ge307Cj4gICAJYm9vbCBp
c195X3RpbGUgPSB0cnVlOyAvKiBhc3N1bWUgeSB0aWxlIG1heSBiZSB1c2VkICovCj4gLQlpbnQg
bnVtX2NoYW5uZWxzID0gZGV2X3ByaXYtPmRyYW1faW5mby5udW1fY2hhbm5lbHM7Cj4gKwlpbnQg
bnVtX2NoYW5uZWxzID0gbWF4X3QodTgsIDEsIGRldl9wcml2LT5kcmFtX2luZm8ubnVtX2NoYW5u
ZWxzKTsKPiAgIAlpbnQgZGVpbnRlcmxlYXZlOwo+ICAgCWludCBpcHFkZXB0aCwgaXBxZGVwdGhw
Y2g7Cj4gICAJaW50IGRjbGtfbWF4OwoKUmV2aWV3ZWQtYnk6IENsaW50IFRheWxvciA8Q2xpbnRv
bi5BLlRheWxvckBpbnRlbC5jb20+CgotQ2xpbnQKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
