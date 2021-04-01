Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3933514D9
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 14:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCD276E0BE;
	Thu,  1 Apr 2021 12:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA08E6E0BE
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 12:43:43 +0000 (UTC)
IronPort-SDR: chuD3kz5BotY6x/3+CFbzf3CXQvYw+Aurmvf8K8GQrFcLKLH6mOuysyn0m6YjZ2CLX+4/UPVAJ
 I7hdBM9EOd6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192336963"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="192336963"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:43:42 -0700
IronPort-SDR: pmy91nJdFS9AXEmjTDOMNC8Vzk/CpZMxf14d/YFnmrXIVKVBMuJa2zUUMlnniOMRyoXlOVn6s4
 ejB5vfSqPFGw==
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="419188640"
Received: from shergane-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.188])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 05:43:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
Date: Thu, 01 Apr 2021 15:43:37 +0300
Message-ID: <87mtuimayu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Extract intel_adjusted_rate()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAzMCBNYXIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBFeHRyYWN0IGEgc21hbGwgaGVscGVyIHRvIGNhbGN1bGF0ZSB0
aGUgZG93bnNjYWxpbmcKPiBhZGp1c3RlZCBwaXhlbCByYXRlL2RhdGEgcmF0ZS9ldGMuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IC0tLQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMgfCAyNyArKysrKysrKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gaW5kZXggYzNmMjk2MmFhMWViLi4zZjgzMGI3
MGIwYzEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXRvbWljX3BsYW5lLmMKPiBAQCAtMTMzLDI1ICsxMzMsMzYgQEAgaW50ZWxfcGxhbmVfZGVzdHJv
eV9zdGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwKPiAgCWtmcmVlKHBsYW5lX3N0YXRlKTsK
PiAgfQo+ICAKPiAtdW5zaWduZWQgaW50IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gLQkJCQkgICAgY29uc3Qgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiArc3RhdGljIHVuc2lnbmVkIGludCBp
bnRlbF9hZGp1c3RlZF9yYXRlKGNvbnN0IHN0cnVjdCBkcm1fcmVjdCAqc3JjLAo+ICsJCQkJCWNv
bnN0IHN0cnVjdCBkcm1fcmVjdCAqZHN0LAo+ICsJCQkJCXVuc2lnbmVkIGludCByYXRlKQo+ICB7
Cj4gIAl1bnNpZ25lZCBpbnQgc3JjX3csIHNyY19oLCBkc3RfdywgZHN0X2g7Cj4gLQl1bnNpZ25l
ZCBpbnQgcGl4ZWxfcmF0ZSA9IGNydGNfc3RhdGUtPnBpeGVsX3JhdGU7Cj4gIAo+IC0Jc3JjX3cg
PSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuc3JjKSA+PiAxNjsKPiAtCXNyY19o
ID0gZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5zcmMpID4+IDE2Owo+IC0JZHN0
X3cgPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPnVhcGkuZHN0KTsKPiAtCWRzdF9oID0g
ZHJtX3JlY3RfaGVpZ2h0KCZwbGFuZV9zdGF0ZS0+dWFwaS5kc3QpOwo+ICsJc3JjX3cgPSBkcm1f
cmVjdF93aWR0aChzcmMpID4+IDE2Owo+ICsJc3JjX2ggPSBkcm1fcmVjdF9oZWlnaHQoc3JjKSA+
PiAxNjsKPiArCWRzdF93ID0gZHJtX3JlY3Rfd2lkdGgoZHN0KTsKPiArCWRzdF9oID0gZHJtX3Jl
Y3RfaGVpZ2h0KGRzdCk7Cj4gIAo+ICAJLyogRG93bnNjYWxpbmcgbGltaXRzIHRoZSBtYXhpbXVt
IHBpeGVsIHJhdGUgKi8KPiAgCWRzdF93ID0gbWluKHNyY193LCBkc3Rfdyk7Cj4gIAlkc3RfaCA9
IG1pbihzcmNfaCwgZHN0X2gpOwo+ICAKPiAtCXJldHVybiBESVZfUk9VTkRfVVBfVUxMKG11bF91
MzJfdTMyKHBpeGVsX3JhdGUsIHNyY193ICogc3JjX2gpLAo+ICsJcmV0dXJuIERJVl9ST1VORF9V
UF9VTEwobXVsX3UzMl91MzIocmF0ZSwgc3JjX3cgKiBzcmNfaCksCj4gIAkJCQlkc3RfdyAqIGRz
dF9oKTsKPiAgfQo+ICAKPiArdW5zaWduZWQgaW50IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gKwkJCQkgICAgY29uc3Qg
c3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKPiArewo+ICsJaWYgKCFwbGFu
ZV9zdGF0ZS0+dWFwaS52aXNpYmxlKQoKUG90ZW50aWFsIGZ1bmN0aW9uYWwgY2hhbmdlIG5vdCBj
b3ZlcmVkIGluIHRoZSBjb21taXQgbWVzc2FnZT8gTWFrZXMKc2Vuc2UsIGJ1dCB0aGUgcmFiYml0
IGhvbGUgaXMgdG9vIGRlZXAgdG8gZmluZCBvdXQgaWYgdGhpcyBjb3VsZAphY3R1YWxseSBtYWtl
IGEgZGlmZmVyZW5jZS4KCklmIG1lbnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsCgpSZXZp
ZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCgo+ICsJCXJldHVy
biAwOwo+ICsKPiArCXJldHVybiBpbnRlbF9hZGp1c3RlZF9yYXRlKCZwbGFuZV9zdGF0ZS0+dWFw
aS5zcmMsCj4gKwkJCQkgICAmcGxhbmVfc3RhdGUtPnVhcGkuZHN0LAo+ICsJCQkJICAgY3J0Y19z
dGF0ZS0+cGl4ZWxfcmF0ZSk7Cj4gK30KPiArCj4gIHVuc2lnbmVkIGludCBpbnRlbF9wbGFuZV9k
YXRhX3JhdGUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gIAkJ
CQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQo+ICB7Cgot
LSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
