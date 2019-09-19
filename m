Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D544B7FE9
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 19:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C576EA03;
	Thu, 19 Sep 2019 17:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 426276EA03
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 17:21:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 10:21:01 -0700
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="181542668"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 10:21:00 -0700
Date: Thu, 19 Sep 2019 20:20:07 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190919172007.GG29039@ideak-desk.fi.intel.com>
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190919000726.267988-2-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 01/13] drm/i915/tgl: Add missing ddi
 clock select during DP init sequence
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDU6MDc6MTRQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBGcm9tOiBDbGludG9uIEEgVGF5bG9yIDxjbGludG9uLmEudGF5bG9y
QGludGVsLmNvbT4KPiAKPiBTdGVwIDQuYiB3YXMgY29tcGxldGUgbWlzc2VkIGJlY2F1c2UgaXQg
aXMgb25seSByZXF1aXJlZCB0byBUQyBhbmQgVEJULgo+IAo+IEJzcGVjOiA0OTE5MAo+IFNpZ25l
ZC1vZmYtYnk6IENsaW50b24gQSBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwg
NSArKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXggM2U2
Mzk0MTM5OTY0Li44MTc5MmEwNGUwYWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKPiBAQCAtMzIyNCwxMSArMzIyNCwxNCBAQCBzdGF0aWMgdm9pZCB0Z2xf
ZGRpX3ByZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlpbnRl
bF9lZHBfcGFuZWxfb24oaW50ZWxfZHApOwo+ICAKPiAgCS8qCj4gLQkgKiAxLmIsIDMuIGFuZCA0
LiBpcyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSBieToKPiArCSAqIDEuYiwg
My4gYW5kIDQuYSBpcyBkb25lIGJlZm9yZSB0Z2xfZGRpX3ByZV9lbmFibGVfZHAoKSBieToKPiAg
CSAqIGhhc3dlbGxfY3J0Y19lbmFibGUoKS0+aW50ZWxfZW5jb2RlcnNfcHJlX3BsbF9lbmFibGUo
KSBhbmQKPiAgCSAqIGhhc3dlbGxfY3J0Y19lbmFibGUoKS0+aW50ZWxfZW5hYmxlX3NoYXJlZF9k
cGxsKCkKPiAgCSAqLwo+ICAKPiArCS8qIDQuYiAqLwo+ICsJaW50ZWxfZGRpX2Nsa19zZWxlY3Qo
ZW5jb2RlciwgY3J0Y19zdGF0ZSk7CgpUaGUgQlNwZWMgNC5iIHN0ZXAgY291bGQgYmUgbW9yZSBz
cGVjaWZpYyBhYm91dCB0aGUgcmVnaXN0ZXIgdG8gcHJvZ3JhbQooYXQgbGVhc3QgSSBoYXZlbid0
IGZvdW5kIHRoZSBtZW50aW9uIGFib3V0IGl0KSBidXQgc2VlbXMgdG8gbWF0Y2g6CgpSZXZpZXdl
ZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKV2hpbGUgcmV2aWV3aW5nIHRo
aXMgSSBub3RpY2VkIHRoYXQgYm90aAppY2xfcGxsX3RvX2RkaV9jbGtfc2VsKCkgICAobWlzc2lu
ZyBjYXNlcyBmb3IgTUdQTEw1LDYpCmFuZCAKaW50ZWxfcGh5X2lzX2NvbWJvKCkgICAobm90IGNv
cnJlY3QgZm9yIHBvcnQvcGh5IEMpCndpbGwgYWxzbyBuZWVkIHRvIGdldCB1cGRhdGVkIGZvciBU
R0wuCgo+ICsKPiAgCS8qIDUuICovCj4gIAlpZiAoIWludGVsX3BoeV9pc190YyhkZXZfcHJpdiwg
cGh5KSB8fAo+ICAJICAgIGRpZ19wb3J0LT50Y19tb2RlICE9IFRDX1BPUlRfVEJUX0FMVCkKPiAt
LSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
