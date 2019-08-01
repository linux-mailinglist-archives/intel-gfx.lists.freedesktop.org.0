Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4965B7D45D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 06:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2CD96E33B;
	Thu,  1 Aug 2019 04:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72FD96E33B
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2019 04:23:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 21:23:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,332,1559545200"; d="scan'208";a="372442037"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.252.74.118])
 ([10.252.74.118])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2019 21:23:06 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190730135024.31765-1-anshuman.gupta@intel.com>
 <20190730135024.31765-2-anshuman.gupta@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <fb236a30-013e-aa88-fe2b-7821b9c1cbc7@intel.com>
Date: Thu, 1 Aug 2019 09:53:05 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190730135024.31765-2-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 1/9] drm/i915/tgl: Add DC3CO required
 register and bits
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
Cc: jani.nikula@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA3LzMwLzIwMTkgNzoyMCBQTSwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4gQWRkaW5nIGZv
bGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKPiAxLiBEQ19TVEFURV9FTiByZWdpc3Rl
ciBEQzNDTyBiaXQgZmllbGRzIGFuZCBtYXNrcy4KPiAyLiBUcmFuc2NvZGVyIEVYSVRMSU5FIHJl
Z2lzdGVyIGFuZCBpdHMgYml0IGZpZWxkcyBhbmQgbWFzay4KPgo+IENjOiBOaWt1bGEsIEphbmkg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogRGVhaywgSW1yZSA8aW1yZS5kZWFrQGludGVs
LmNvbT4KPiBDYzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgoKU2hv
dWxkIGJlIGxpa2UgYmVsb3csCkNjOiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4KCk5lZWQgY2hhbmdlIGV2ZXJ5d2hlcmUgaW4gdGhpcyBwYXRjaCBzZXJpZXMgZm9yIGFs
bC4KCj4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCA4ICsrKysr
KysrCj4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBpbmRleCBkMmI3NjEyMWQ4NjMuLmQ0MmU5NWRhNWIxNCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+IEBAIC00MTk1LDYgKzQxOTUsNyBAQCBlbnVtIHsKPiAgICNkZWZp
bmUgX1ZUT1RBTF9BCTB4NjAwMGMKPiAgICNkZWZpbmUgX1ZCTEFOS19BCTB4NjAwMTAKPiAgICNk
ZWZpbmUgX1ZTWU5DX0EJMHg2MDAxNAo+ICsjZGVmaW5lIF9FWElUTElORV9BCTB4NjAwMTgKPiAg
ICNkZWZpbmUgX1BJUEVBU1JDCTB4NjAwMWMKPiAgICNkZWZpbmUgX0JDTFJQQVRfQQkweDYwMDIw
Cj4gICAjZGVmaW5lIF9WU1lOQ1NISUZUX0EJMHg2MDAyOAo+IEBAIC00MjQxLDExICs0MjQyLDE2
IEBAIGVudW0gewo+ICAgI2RlZmluZSBWVE9UQUwodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMs
IF9WVE9UQUxfQSkKPiAgICNkZWZpbmUgVkJMQU5LKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5z
LCBfVkJMQU5LX0EpCj4gICAjZGVmaW5lIFZTWU5DKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5z
LCBfVlNZTkNfQSkKPiArI2RlZmluZSBFWElUTElORSh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFu
cywgX0VYSVRMSU5FX0EpCj4gICAjZGVmaW5lIEJDTFJQQVQodHJhbnMpCQlfTU1JT19UUkFOUzIo
dHJhbnMsIF9CQ0xSUEFUX0EpCj4gICAjZGVmaW5lIFZTWU5DU0hJRlQodHJhbnMpCV9NTUlPX1RS
QU5TMih0cmFucywgX1ZTWU5DU0hJRlRfQSkKPiAgICNkZWZpbmUgUElQRVNSQyh0cmFucykJCV9N
TUlPX1RSQU5TMih0cmFucywgX1BJUEVBU1JDKQo+ICAgI2RlZmluZSBQSVBFX01VTFQodHJhbnMp
CV9NTUlPX1RSQU5TMih0cmFucywgX1BJUEVfTVVMVF9BKQo+ICAgCj4gKyNkZWZpbmUgIEVYSVRM
SU5FX0VOQUJMRQkoMSA8PCAzMSkKPiArI2RlZmluZSAgRVhJVExJTkVfTUFTSwkJKDB4MWZmZikK
PiArI2RlZmluZSAgRVhJVExJTkVfU0hJRlQJCTAKPiArCj4gICAvKiBIU1crIGVEUCBQU1IgcmVn
aXN0ZXJzICovCj4gICAjZGVmaW5lIEhTV19FRFBfUFNSX0JBU0UJMHg2NDgwMAo+ICAgI2RlZmlu
ZSBCRFdfRURQX1BTUl9CQVNFCTB4NmY4MDAKPiBAQCAtOTk5Niw2ICsxMDAwMiw4IEBAIGVudW0g
c2tsX3Bvd2VyX2dhdGUgewo+ICAgLyogR0VOOSBEQyAqLwo+ICAgI2RlZmluZSBEQ19TVEFURV9F
TgkJCV9NTUlPKDB4NDU1MDQpCj4gICAjZGVmaW5lICBEQ19TVEFURV9ESVNBQkxFCQkwCj4gKyNk
ZWZpbmUgIERDX1NUQVRFX0VOX0RDM0NPCQkoMSA8PCAzMCkKPiArI2RlZmluZSAgRENfU1RBVEVf
REMzQ09fU1RBVFVTCQkoMSA8PCAyOSkKTmVlZCBleHRyYSBzcGFjZS4KClJlZ2FyZHMsCkFuaW1l
c2gKPiAgICNkZWZpbmUgIERDX1NUQVRFX0VOX1VQVE9fREM1CQkoMSA8PCAwKQo+ICAgI2RlZmlu
ZSAgRENfU1RBVEVfRU5fREM5CQkoMSA8PCAzKQo+ICAgI2RlZmluZSAgRENfU1RBVEVfRU5fVVBU
T19EQzYJCSgyIDw8IDApCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
