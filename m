Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F874AF883
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 11:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BEF6EA66;
	Wed, 11 Sep 2019 09:08:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2DD6EA66
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 09:08:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 02:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="192068034"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Sep 2019 02:08:10 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190907171443.16181-1-anshuman.gupta@intel.com>
 <20190907171443.16181-2-anshuman.gupta@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <d2d71530-7237-2fb2-5582-48c6503b1e1e@intel.com>
Date: Wed, 11 Sep 2019 14:38:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190907171443.16181-2-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v7 1/7] drm/i915/tgl: Add DC3CO required
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

CgpPbiA5LzcvMjAxOSAxMDo0NCBQTSwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4gQWRkaW5nIGZv
bGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKPiAxLiBEQ19TVEFURV9FTiByZWdpc3Rl
ciBEQzNDTyBiaXQgZmllbGRzIGFuZCBtYXNrcy4KPiAyLiBUcmFuc2NvZGVyIEVYSVRMSU5FIHJl
Z2lzdGVyIGFuZCBpdHMgYml0IGZpZWxkcyBhbmQgbWFzay4KPgo+IENjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5j
b20+Cj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gLS0t
Cj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgOCArKysrKysrKwo+ICAgMSBm
aWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4g
aW5kZXggMDA2Y2ZmZDU2YmUyLi4yNzNhNGVkOGIzZTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPiBAQCAtNDEzNSw2ICs0MTM1LDcgQEAgZW51bSB7Cj4gICAjZGVmaW5lIF9WVE9UQUxf
QQkweDYwMDBjCj4gICAjZGVmaW5lIF9WQkxBTktfQQkweDYwMDEwCj4gICAjZGVmaW5lIF9WU1lO
Q19BCTB4NjAwMTQKPiArI2RlZmluZSBfRVhJVExJTkVfQQkweDYwMDE4Cj4gICAjZGVmaW5lIF9Q
SVBFQVNSQwkweDYwMDFjCj4gICAjZGVmaW5lIF9CQ0xSUEFUX0EJMHg2MDAyMAo+ICAgI2RlZmlu
ZSBfVlNZTkNTSElGVF9BCTB4NjAwMjgKPiBAQCAtNDE4MSwxMSArNDE4MiwxNiBAQCBlbnVtIHsK
PiAgICNkZWZpbmUgVlRPVEFMKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVlRPVEFMX0Ep
Cj4gICAjZGVmaW5lIFZCTEFOSyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZCTEFOS19B
KQo+ICAgI2RlZmluZSBWU1lOQyh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZTWU5DX0Ep
Cj4gKyNkZWZpbmUgRVhJVExJTkUodHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9FWElUTElO
RV9BKQo+ICAgI2RlZmluZSBCQ0xSUEFUKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfQkNM
UlBBVF9BKQo+ICAgI2RlZmluZSBWU1lOQ1NISUZUKHRyYW5zKQlfTU1JT19UUkFOUzIodHJhbnMs
IF9WU1lOQ1NISUZUX0EpCj4gICAjZGVmaW5lIFBJUEVTUkModHJhbnMpCQlfTU1JT19UUkFOUzIo
dHJhbnMsIF9QSVBFQVNSQykKPiAgICNkZWZpbmUgUElQRV9NVUxUKHRyYW5zKQlfTU1JT19UUkFO
UzIodHJhbnMsIF9QSVBFX01VTFRfQSkKPiAgIAo+ICsjZGVmaW5lICBFWElUTElORV9FTkFCTEUJ
KDEgPDwgMzEpCgpOZWVkIG9uZSBleHRyYSBzcGFjZSBhbmQgc2FtZSBhcHBsaWNhYmxlIGJlbG93
LgpSRUdfQklUIGNhbiBiZSB1c2VkLiBQbGVhc2UgcmVmZXIga2VybmVsIGRvYyBhZGRlZCBhcyBo
ZWFkZXIgb2YgdGhpcyBmaWxlLgoKUmVnYXJkcywKQW5pbWVzaAo+ICsjZGVmaW5lICBFWElUTElO
RV9NQVNLCQkoMHgxZmZmKQo+ICsjZGVmaW5lICBFWElUTElORV9TSElGVAkJMAo+ICsKPiAgIC8q
Cj4gICAgKiBIU1crIGVEUCBQU1IgcmVnaXN0ZXJzCj4gICAgKgo+IEBAIC0xMDExNCw2ICsxMDEy
MCw4IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ICAgLyogR0VOOSBEQyAqLwo+ICAgI2RlZmlu
ZSBEQ19TVEFURV9FTgkJCV9NTUlPKDB4NDU1MDQpCj4gICAjZGVmaW5lICBEQ19TVEFURV9ESVNB
QkxFCQkwCj4gKyNkZWZpbmUgIERDX1NUQVRFX0VOX0RDM0NPCQkoMSA8PCAzMCkKPiArI2RlZmlu
ZSAgRENfU1RBVEVfREMzQ09fU1RBVFVTCQkoMSA8PCAyOSkKPiAgICNkZWZpbmUgIERDX1NUQVRF
X0VOX1VQVE9fREM1CQkoMSA8PCAwKQo+ICAgI2RlZmluZSAgRENfU1RBVEVfRU5fREM5CQkoMSA8
PCAzKQo+ICAgI2RlZmluZSAgRENfU1RBVEVfRU5fVVBUT19EQzYJCSgyIDw8IDApCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
