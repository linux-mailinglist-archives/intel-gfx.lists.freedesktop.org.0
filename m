Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5F54D3AF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 18:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE626E5CE;
	Thu, 20 Jun 2019 16:26:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DF56E5CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 16:26:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:26:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="358587895"
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by fmsmga005.fm.intel.com with ESMTP; 20 Jun 2019 09:26:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190619203504.4220-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <79da5528-4423-db3e-62f5-ad7f77552335@linux.intel.com>
Date: Thu, 20 Jun 2019 17:26:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619203504.4220-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Rings are always flushed
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

Ck9uIDE5LzA2LzIwMTkgMjE6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBPdXIgaW50ZWxfcmlu
Z3MgYXJlIGFsd2F5cyBmbHVzaGVkIGFzIHRoZXkgYXJlIGNvbnRpbnVhbGx5IHVzZWQgdG8gc3Vi
bWl0Cj4gY29tbWFuZHMgdG8gdGhlIEdQVSwgYW5kIHNvIGRvIG5vdCBuZWVkIHRvIGJlIGZsdXNo
ZWQgb24gdW5waW5uaW5nLiBUaGlzCj4gYXZvaWRzIHB1bGxpbmcgaW4gdGhlIGZsdXNoX2dndHRf
d3JpdGVzIGxvY2tpbmcgaW50b3Ugb3VyIGNvbnRleHQKPiB1bnBpbiwgd2hpY2ggd2Ugd2FudCB0
byBhbGxvdyBmcm9tIGF0b21pYyBjb250ZXh0IChmb3Igc2ltcGxpY2l0eSkuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgfCAxICsKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yaW5nYnVmZmVyLmMKPiBpbmRleCAxMjAxMGU3OTg4NjguLjhiMWRhNTdjMzc2NCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiBAQCAt
MTIxOSw2ICsxMjE5LDcgQEAgdm9pZCBpbnRlbF9yaW5nX3VucGluKHN0cnVjdCBpbnRlbF9yaW5n
ICpyaW5nKQo+ICAgCWludGVsX3JpbmdfcmVzZXQocmluZywgcmluZy0+dGFpbCk7Cj4gICAKPiAg
IAlHRU1fQlVHX09OKCFyaW5nLT52bWEpOwo+ICsJaTkxNV92bWFfdW5zZXRfZ2d0dF93cml0ZShy
aW5nLT52bWEpOwo+ICAgCWlmIChpOTE1X3ZtYV9pc19tYXBfYW5kX2ZlbmNlYWJsZShyaW5nLT52
bWEpKQo+ICAgCQlpOTE1X3ZtYV91bnBpbl9pb21hcChyaW5nLT52bWEpOwo+ICAgCWVsc2UKPiAK
ClNhZmUgYnV0IGZvciBkb2N1bWVudGF0aW9uIHB1cnBvc2VzIEkgd291bGQgcHJlZmVyIHNvbWV0
aGluZyBsaWtlOgoKaTkxNV92bWFfcGluX2lvbWFwKHZtYSwgZmxhZ3MgPSAuLi5fRkxBR19ESVJF
Q1QvQVNZTkMvSUtOT1dCRVRURVIpCnsKCS4uLgoJaWYgKCEoZmxhZ3MgJiBGTEFHX0RJUkVDVCkp
CgkJaTkxNV92bWFfc2V0X2dndHRfd3JpdGUodm1hKTsKCS4uLgp9CgoKUmV2aWV3ZWQtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
