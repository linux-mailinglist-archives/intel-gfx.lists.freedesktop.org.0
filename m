Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E52C2B3B3E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 15:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51841899B7;
	Mon, 16 Sep 2019 13:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF3A088071
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 13:24:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 06:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,512,1559545200"; d="scan'208";a="386198566"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.121.189])
 ([10.66.121.189])
 by fmsmga005.fm.intel.com with ESMTP; 16 Sep 2019 06:24:46 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190913082339.1785-1-anshuman.gupta@intel.com>
 <20190913082339.1785-2-anshuman.gupta@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <a594daaf-6298-2e5b-41f3-70683af9a2c2@intel.com>
Date: Mon, 16 Sep 2019 18:54:45 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20190913082339.1785-2-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 1/7] drm/i915/tgl: Add DC3CO required
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

CgpPbiA5LzEzLzIwMTkgMTo1MyBQTSwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4gQWRkaW5nIGZv
bGxvd2luZyBkZWZpbml0aW9uIHRvIGk5MTVfcmVnLmgKPiAxLiBEQ19TVEFURV9FTiByZWdpc3Rl
ciBEQzNDTyBiaXQgZmllbGRzIGFuZCBtYXNrcy4KPiAyLiBUcmFuc2NvZGVyIEVYSVRMSU5FIHJl
Z2lzdGVyIGFuZCBpdHMgYml0IGZpZWxkcyBhbmQgbWFzay4KPgo+IHYxOiBVc2Ugb2YgUkVHX0JJ
VCBhbmQgdXNpbmcgZXh0cmEgc3BhY2UgZm9yIEVYSVRMSU5FXyBtYWNybwo+ICAgICAgZGVmaW5p
dGlvbi4gW0FuaW1lc2hdCj4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IENjOiBBbmltZXNoIE1h
bm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBH
dXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaCB8IDggKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2Vy
dGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGJmMzdlY2ViYzgyZi4u
NmJmZWJhYjlhNDQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTQxMzgsNiAr
NDEzOCw3IEBAIGVudW0gewo+ICAgI2RlZmluZSBfVlRPVEFMX0EJMHg2MDAwYwo+ICAgI2RlZmlu
ZSBfVkJMQU5LX0EJMHg2MDAxMAo+ICAgI2RlZmluZSBfVlNZTkNfQQkweDYwMDE0Cj4gKyNkZWZp
bmUgX0VYSVRMSU5FX0EJMHg2MDAxOAo+ICAgI2RlZmluZSBfUElQRUFTUkMJMHg2MDAxYwo+ICAg
I2RlZmluZSBfQkNMUlBBVF9BCTB4NjAwMjAKPiAgICNkZWZpbmUgX1ZTWU5DU0hJRlRfQQkweDYw
MDI4Cj4gQEAgLTQxODQsMTEgKzQxODUsMTYgQEAgZW51bSB7Cj4gICAjZGVmaW5lIFZUT1RBTCh0
cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX1ZUT1RBTF9BKQo+ICAgI2RlZmluZSBWQkxBTkso
dHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WQkxBTktfQSkKPiAgICNkZWZpbmUgVlNZTkMo
dHJhbnMpCQlfTU1JT19UUkFOUzIodHJhbnMsIF9WU1lOQ19BKQo+ICsjZGVmaW5lIEVYSVRMSU5F
KHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfRVhJVExJTkVfQSkKPiAgICNkZWZpbmUgQkNM
UlBBVCh0cmFucykJCV9NTUlPX1RSQU5TMih0cmFucywgX0JDTFJQQVRfQSkKPiAgICNkZWZpbmUg
VlNZTkNTSElGVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfVlNZTkNTSElGVF9BKQo+ICAg
I2RlZmluZSBQSVBFU1JDKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQRUFTUkMpCj4g
ICAjZGVmaW5lIFBJUEVfTVVMVCh0cmFucykJX01NSU9fVFJBTlMyKHRyYW5zLCBfUElQRV9NVUxU
X0EpCj4gICAKPiArI2RlZmluZSAgIEVYSVRMSU5FX0VOQUJMRQlSRUdfQklUKDMxKQo+ICsjZGVm
aW5lICAgRVhJVExJTkVfTUFTSwkJUkVHX0dFTk1BU0soMTIsIDApCj4gKyNkZWZpbmUgICBFWElU
TElORV9TSElGVAkwCj4gKwo+ICAgLyoKPiAgICAqIEhTVysgZURQIFBTUiByZWdpc3RlcnMKPiAg
ICAqCj4gQEAgLTEwMTE4LDYgKzEwMTI0LDggQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gICAv
KiBHRU45IERDICovCj4gICAjZGVmaW5lIERDX1NUQVRFX0VOCQkJX01NSU8oMHg0NTUwNCkKPiAg
ICNkZWZpbmUgIERDX1NUQVRFX0RJU0FCTEUJCTAKPiArI2RlZmluZSAgRENfU1RBVEVfRU5fREMz
Q08JCVJFR19CSVQoMzApCj4gKyNkZWZpbmUgIERDX1NUQVRFX0RDM0NPX1NUQVRVUwkJUkVHX0JJ
VCgyOSkKPiAgICNkZWZpbmUgIERDX1NUQVRFX0VOX1VQVE9fREM1CQkoMSA8PCAwKQo+ICAgI2Rl
ZmluZSAgRENfU1RBVEVfRU5fREM5CQkoMSA8PCAzKQo+ICAgI2RlZmluZSAgRENfU1RBVEVfRU5f
VVBUT19EQzYJCSgyIDw8IDApClRoZSBwdXJwb3NlIG9mIGFkZGluZyB0aGUgcmVnaXN0ZXIgaXMg
bm90IGNsZWFyIGJ5IGxvb2tpbmcgYXQgdGhpcyBwYXRjaC4KQ29tbWl0IGRlc2NyaXB0aW9uIGNh
biBiZSBpbXByb3ZlZCBpZiByZWdpc3RlciBkZWZpbml0aW9uIHdhbnQgdG8ga2VlcCAKYXMgc2Vw
YXJhdGUgcGF0Y2guCldpdGggaW1wcm92ZWQgY29tbWl0IGRlc2NyaXB0aW9uLApDYW4gYWRkIFJl
dmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
