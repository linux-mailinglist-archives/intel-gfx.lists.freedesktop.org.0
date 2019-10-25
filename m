Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FA0E5006
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 17:22:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2158D6EA88;
	Fri, 25 Oct 2019 15:22:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA2556EA88
 for <Intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 15:22:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 08:22:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,229,1569308400"; d="scan'208";a="228932833"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.66.122.10])
 ([10.66.122.10])
 by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2019 08:22:25 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20191017155810.21654-1-tvrtko.ursulin@linux.intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <a936adad-0172-8f6d-106b-9548315b971a@intel.com>
Date: Fri, 25 Oct 2019 20:52:24 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <20191017155810.21654-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: Remove PIN_MAPPABLE from the
 DSB object VMA
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

Ck9uIDEwLzE3LzIwMTkgOToyOCBQTSwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4gRnJvbTogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPgo+IEl0IHNvdW5kcyBsaWtl
IHRoZSBoYXJkd2FyZSBvbmx5IG5lZWRzIHRoZSBEU0Igb2JqZWN0IHRvIGJlIGluIGdsb2JhbCBH
VFQKPiBhbmQgbm90IGluIHRoZSBtYXBwYWJsZSByZWdpb24uCgpDdXJyZW50bHkgdGVzdGVkIGFu
ZCB3b3JraW5nIHdpdGhvdXQgYW55IHJlZ3Jlc3Npb24sIHdhaXRpbmcgZm9yIApjb25maXJtYXRp
b24gZnJvbSBoL3cgdGVhbSwgd2lsbCB1cGRhdGUgc29vbi4KClJlZ2FyZHMsCkFuaW1lc2gKPgo+
IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gQ2M6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDIgKy0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4gaW5kZXggYmI1YTBlOTFiMzcwLi5kOGFkNWZl
MWVmZWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPiBA
QCAtMTE5LDcgKzExOSw3IEBAIGludGVsX2RzYl9nZXQoc3RydWN0IGludGVsX2NydGMgKmNydGMp
Cj4gICAJCWdvdG8gZXJyOwo+ICAgCX0KPiAgIAo+IC0Jdm1hID0gaTkxNV9nZW1fb2JqZWN0X2dn
dHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgUElOX01BUFBBQkxFKTsKPiArCXZtYSA9IGk5MTVfZ2Vt
X29iamVjdF9nZ3R0X3BpbihvYmosIE5VTEwsIDAsIDAsIDApOwo+ICAgCWlmIChJU19FUlIodm1h
KSkgewo+ICAgCQlEUk1fRVJST1IoIlZtYSBjcmVhdGlvbiBmYWlsZWRcbiIpOwo+ICAgCQlpOTE1
X2dlbV9vYmplY3RfcHV0KG9iaik7CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
