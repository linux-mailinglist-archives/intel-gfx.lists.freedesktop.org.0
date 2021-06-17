Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACAC3AB137
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 12:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8A76E8DD;
	Thu, 17 Jun 2021 10:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2E66E8DD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 10:19:34 +0000 (UTC)
IronPort-SDR: 3IcNCIhEjOOEboJoIrqrQIF1GGd5MXCiSjzA5+FoQzQ6UD5VWYEVaLfaOS0YgvaI3jc/XybyUA
 aWrqyux1HdyA==
X-IronPort-AV: E=McAfee;i="6200,9189,10017"; a="227854435"
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="227854435"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 03:19:34 -0700
IronPort-SDR: +dm16lE4Sc3cD/2YqohZZo0RqdtttRMRcZl8V3jr5To+pOOatfMarp597QqvCQKEf0JsnEsAqS
 kYT17S7BBPag==
X-IronPort-AV: E=Sophos;i="5.83,280,1616482800"; d="scan'208";a="485244237"
Received: from psisaudi-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.213.183.116])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2021 03:19:32 -0700
Date: Thu, 17 Jun 2021 06:19:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Message-ID: <YMshsMsTOTlTCKsT@intel.com>
References: <20210617054418.6094-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210617054418.6094-1-zbigniew.kempczynski@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMTcsIDIwMjEgYXQgMDc6NDQ6MThBTSArMDIwMCwgWmJpZ25pZXcgS2VtcGN6
ecWEc2tpIHdyb3RlOgo+IEZvciB0b3BpYy9pbnRlbC1mb3ItQ0kgYnJhbmNoIG9ubHkuCgpwdXNo
ZWQgdG8gdG9waWMvY29yZS1mb3ItQ0kuCgpUaGFua3MgZm9yIHRoZSBwYXRjaC4KCj4gCj4gV2Ug
aGF2ZSBlc3RhYmxpc2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMgc3Rh
cnRpbmcKPiBmcm9tIGdlbjEyIHBsYXRmb3JtcyB3aXRoIFRpZ2VybGFrZSBhcyBhbiBleGNlcHRp
b24uIFdlIGtlZXAgdGhpcwo+IHN0YXRlbWVudCBidXQgd2Ugd2FudCB0byBlbmFibGUgcmVsb2Nh
dGlvbnMgY29uZGl0aW9uYWxseSBmb3IKPiBBbGRlcmxha2UgUytQIHVuZGVyIHJlcXVpcmVfZm9y
Y2VfcHJvYmUgZmxhZyBzZXQuCj4gCj4gS2VlcGluZyByZWxvY2F0aW9ucyB1bmRlciByZXF1aXJl
X2ZvcmNlX3Byb2JlIGZsYWcgaXMgaW50ZXJpbSBzb2x1dGlvbgo+IHVudGlsIElHVHMgd2lsbCBi
ZSByZXdyaXR0ZW4gdG8gdXNlIHNvZnRwaW4uCj4gCj4gdjI6IC0gcmVtb3ZlIGlubGluZSBmcm9t
IGZ1bmN0aW9uIGRlZmluaXRpb24gKEphbmkpCj4gICAgIC0gZml4IGluZGVudGF0aW9uCj4gCj4g
djM6IGNoYW5nZSB0byBHUkFQSElDU19WRVIoKSAoWmJpZ25pZXcpCj4gCj4gdjQ6IHJlbW92ZSBS
S0wgZnJvbSBmbGFnIGFzIGl0IGlzIGFscmVhZHkgc2hpcHBlZCAoUm9kcmlnbykKPiAKPiB2NTog
cHJlcGFyZSBwYXRjaCB0byBiZSB1c2VkIHdpdGhpbiB0b3BpYy9pbnRlbC1mb3ItQ0kgYnJhbmNo
IG9ubHkKPiAKPiB2NjogY2hhbmdlIGNvbW1lbnQgKFJvZHJpZ28pCj4gCj4gU2lnbmVkLW9mZi1i
eTogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+
Cj4gQ2M6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0
ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBKYXNvbiBFa3N0cmFuZCA8amFzb25A
amxla3N0cmFuZC5uZXQ+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4KPiBBY2tlZC1ieTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAcmVkaGF0LmNvbT4KPiBBY2tlZC1i
eTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IC0tLQo+ICAuLi4vZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAyMSArKysrKysrKysrKysr
Ky0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygt
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
Ywo+IGluZGV4IDc2MGM4YWVmZWEzYS4uOGYxNWZhODhjYWM2IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCj4gQEAgLTQ5MSwxNiArNDkx
LDI3IEBAIGViX3VucmVzZXJ2ZV92bWEoc3RydWN0IGViX3ZtYSAqZXYpCj4gIAlldi0+ZmxhZ3Mg
Jj0gfl9fRVhFQ19PQkpFQ1RfUkVTRVJWRUQ7Cj4gIH0KPiAgCj4gK3N0YXRpYyBib29sIHBsYXRm
b3JtX2hhc19yZWxvY3NfZW5hYmxlZChjb25zdCBzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikK
PiArewo+ICsJLyoKPiArCSAqIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIHN0YXJ0aW5nIGZy
b20gZ2VuMTIgd2l0aCBUaWdlcmxha2UKPiArCSAqIGFzIGFuIGV4Y2VwdGlvbi4gVG8gdW5ibG9j
ayBDSSwgd2UgYXJlIHRlbXBvcmFyaWx5IGFsbG93aW5nIGl0Cj4gKwkgKiBmb3IgUm9ja2V0bGFr
ZSBhbmQgQWxkZXJsYWtlLgo+ICsJICovCj4gKwlpZiAoR1JBUEhJQ1NfVkVSKGViLT5pOTE1KSA8
IDEyIHx8IElTX1RJR0VSTEFLRShlYi0+aTkxNSkgfHwKPiArCSAgICBJU19ST0NLRVRMQUtFKGVi
LT5pOTE1KSB8fCBJU19BTERFUkxBS0VfUyhlYi0+aTkxNSkgfHwKPiArCSAgICBJU19BTERFUkxB
S0VfUChlYi0+aTkxNSkpCj4gKwkJcmV0dXJuIHRydWU7Cj4gKwo+ICsJcmV0dXJuIGZhbHNlOwo+
ICt9Cj4gKwo+ICBzdGF0aWMgaW50Cj4gIGViX3ZhbGlkYXRlX3ZtYShzdHJ1Y3QgaTkxNV9leGVj
YnVmZmVyICplYiwKPiAgCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiAqZW50cnks
Cj4gIAkJc3RydWN0IGk5MTVfdm1hICp2bWEpCj4gIHsKPiAtCS8qIFJlbG9jYXRpb25zIGFyZSBk
aXNhbGxvd2VkIGZvciBhbGwgcGxhdGZvcm1zIGFmdGVyIFRHTC1MUC4gIFRoaXMKPiAtCSAqIGFs
c28gY292ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCj4gLQkgKi8KPiAtCWlm
IChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgo+IC0JICAgIEdSQVBISUNTX1ZFUihlYi0+aTkx
NSkgPj0gMTIgJiYgIUlTX1RJR0VSTEFLRShlYi0+aTkxNSkpCj4gKwlpZiAoZW50cnktPnJlbG9j
YXRpb25fY291bnQgJiYgIXBsYXRmb3JtX2hhc19yZWxvY3NfZW5hYmxlZChlYikpCj4gIAkJcmV0
dXJuIC1FSU5WQUw7Cj4gIAo+ICAJaWYgKHVubGlrZWx5KGVudHJ5LT5mbGFncyAmIGViLT5pbnZh
bGlkX2ZsYWdzKSkKPiAtLSAKPiAyLjI2LjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
