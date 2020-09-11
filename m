Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A182C26681D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 20:13:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B389889DAB;
	Fri, 11 Sep 2020 18:13:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9CE89DAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 18:13:18 +0000 (UTC)
IronPort-SDR: t+J6ikvA1qSV28ns1eFKRw20SAwNFYnhIq8NFwnW5Mhjv/58SuIVNfsalmjNEcQ58H3mEXk2kl
 vSe5lUNj1EcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="146556466"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="146556466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 11:13:17 -0700
IronPort-SDR: UkD2075F7o8lHZ7EUKhmb3FIDqEdlbQYNE4b9Wh6WPQVorGC4y5TZt3iV0TXsHz7I/2DbwcUd7
 49yp4idZa4Zw==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="481412515"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 11:13:16 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200206201204.31704-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
 <20200206201204.31704-2-ville.syrjala@linux.intel.com>
Date: Fri, 11 Sep 2020 21:13:18 +0300
Message-ID: <87d02syyf5.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use fb->format->is_yuv for
 the g4x+ sprite RGB vs. YUV check
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

T24gVGh1LCAwNiBGZWIgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBnNHgrIHNwcml0ZXMgaGF2ZSBhbiBleHRyYSBjZGNsayBsaW1p
dGF0aW9uIGxpc3RlZCBmb3IgUkdCIGZvcm1hdHMuCj4gRm9yIHNvbWUgcmFuZG9tIHJlYXNvbiBJ
IGNob3NlIHRvIHVzZSBjcHA+PTQgYXMgdGhlIGNoZWNrIGZvciB0aGF0Lgo+IFdoaWxlIHRoYXQg
ZG9lcyBhY3R1YWxseSB3b3JrIGxldCdzIGRlb2JmdXNjYXRlIGl0IGJ5IGNoZWNraW5nCj4gZm9y
ICFpc195dXYgaW5zdGVhZC4gSSBzdXNwZWN0IGlzX3l1diBkaWRuJ3QgZXhpc3Qgd2F5IGJhY2sg
d2hlbgo+IEkgb3JpZ2luYWxseSB3cml0ZSB0aGUgY29kZS4KCk1taCwgdGhlcmUgYXJlIGZvcm1h
dHMgd2l0aCBjcHAgPj0gNCAmJiBpc195dXYgPT0gdHJ1ZSBtYWtpbmcgdGhpcyBsb29rCmxpa2Ug
YSBmdW5jdGlvbmFsIGNoYW5nZS4uLiBidXQgSSBwcmVzdW1lIHRob3NlIGFyZSBub3QgcmVsZXZh
bnQgYW5kL29yCnRoaXMgY2hhbmdlIGlzIHRoZSByaWdodCB0aGluZyB0byBkbyBhbnl3YXkuCgpB
Y2tlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4KPiBBbHNvIGRy
b3AgdGhlIGR1cGxpY2F0ZSBjb21tZW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gaW5kZXggNmUyZTIyZDliYmFhLi5mOTVmZTJj
OTk0NjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMKPiBAQCAtMTYyNCw4ICsxNjI0LDggQEAgc3RhdGljIGludCBnNHhfc3ByaXRlX21pbl9jZGNs
ayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgCWxpbWl0IC09
IGRlY2ltYXRlOwo+ICAKPiAgCS8qIC0xMCUgZm9yIFJHQiAqLwo+IC0JaWYgKGZiLT5mb3JtYXQt
PmNwcFswXSA+PSA0KQo+IC0JCWxpbWl0LS07IC8qIC0xMCUgZm9yIFJHQiAqLwo+ICsJaWYgKCFm
Yi0+Zm9ybWF0LT5pc195dXYpCj4gKwkJbGltaXQtLTsKPiAgCj4gIAkvKgo+ICAJICogV2Ugc2hv
dWxkIGFsc28gZG8gLTEwJSBpZiBzcHJpdGUgc2NhbGluZyBpcyBlbmFibGVkCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
