Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE8E3887F3
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 09:05:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC4A6EBD0;
	Wed, 19 May 2021 07:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A386EBD0
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 07:05:49 +0000 (UTC)
IronPort-SDR: U7i7ZrGHmAeG3tAY1SowjClTQyAPKJE0Hwy5IV9nV9mWsDT2tV+s76US8Bu55TeZurPTxEHgGN
 Alm5dizZDfwA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="181185963"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="181185963"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 00:05:45 -0700
IronPort-SDR: 3bWI5PK/JY5RrYLNrnNLixw6AVmLrli6bc7an8ZVLpq0RT+WWgGsPafJaFXZGp3ebG+I15Rbkc
 5lxr3k5hVM0w==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="395173326"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 00:05:41 -0700
Date: Wed, 19 May 2021 12:19:59 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210519064958.GA8620@intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-17-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-17-matthew.d.roper@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v4 16/23] drm/i915/display: Remove a
 redundant function argument from intel_psr_enable_source()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMS0wNS0xNSBhdCAwODo0MDoyOCArMDUzMCwgTWF0dCBSb3BlciB3cm90ZToKPiBGcm9t
OiBHd2FuLWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Cj4gCj4gSXQgcmVt
b3ZlcyBpbnRlbF9jcnRjX3N0YXRlIGZyb20gZnVuY3Rpb24gYXJndW1lbnQgb2YKPiBpbnRlbF9w
c3JfZW5hYmxlX3NvdXJjZSgpIGluIG9yZGVyIHRvIHVzZSBpbnRlbF9wc3JfZW5hYmxlX3NvdXJj
ZSgpCj4gd2l0aG91dCBpbnRlbF9jcnRjX3N0YXRlIG9uIG90aGVyIHBzciBpbnRlcm5hbCBmdW5j
dGlvbnMuCj4gQW5kIHdlIGNhbiBnZXQgY3B1X3RyYW5jb2RlciBmcm9tIGludGVsX3BzciwgdGhl
cmVmb3JlIHdlIGRvbid0IG5lZWQgdG8KPiBwYXNzIGludGVsX2NydGNfc3RhdGUgdG8gdGhpcyBm
dW5jdGlvbi4KPiAKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
IHwgNyArKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gaW5k
ZXggNWJhZmQwZGU2YWQ5Li5jYzg1MDgzZGNkMjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtOTY5LDExICs5NjksMTAgQEAgc3RhdGljIHZvaWQg
aW50ZWxfcHNyX2FjdGl2YXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIAlpbnRlbF9k
cC0+cHNyLmFjdGl2ZSA9IHRydWU7Cj4gIH0KPiAgCj4gLXN0YXRpYyB2b2lkIGludGVsX3Bzcl9l
bmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gLQkJCQkgICAgY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gK3N0YXRpYyB2b2lkIGludGVs
X3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHsKPiAgCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwo+
IC0JZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0+Y3B1X3RyYW5z
Y29kZXI7Cj4gKwllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNy
LnRyYW5zY29kZXI7Cj4gIAl1MzIgbWFzazsKPiAgCj4gIAkvKiBPbmx5IEhTVyBhbmQgQkRXIGhh
dmUgUFNSIEFVWCByZWdpc3RlcnMgdGhhdCBuZWVkIHRvIGJlIHNldHVwLiBTS0wrCj4gQEAgLTEw
ODAsNyArMTA3OSw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gIAkJCQkgICAgICZpbnRlbF9kcC0+cHNyLnZzYyk7Cj4g
IAlpbnRlbF93cml0ZV9kcF92c2Nfc2RwKGVuY29kZXIsIGNydGNfc3RhdGUsICZpbnRlbF9kcC0+
cHNyLnZzYyk7Cj4gIAlpbnRlbF9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHApOwo+IC0JaW50ZWxf
cHNyX2VuYWJsZV9zb3VyY2UoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwo+ICsJaW50ZWxfcHNyX2Vu
YWJsZV9zb3VyY2UoaW50ZWxfZHApOwo+ICAJaW50ZWxfZHAtPnBzci5lbmFibGVkID0gdHJ1ZTsK
PiAgCj4gIAlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOwo+IC0tIAo+IDIuMjUuNAo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
