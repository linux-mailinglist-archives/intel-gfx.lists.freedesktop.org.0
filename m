Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E985F1057A2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 17:56:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 588458945A;
	Thu, 21 Nov 2019 16:56:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 123C88945A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 16:56:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 08:56:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="205130225"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga008.fm.intel.com with ESMTP; 21 Nov 2019 08:56:40 -0800
Date: Thu, 21 Nov 2019 08:56:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <20191121165639.GE6381@mdroper-desk1.amr.corp.intel.com>
References: <20191120234020.29887-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120234020.29887-1-clinton.a.taylor@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable display interrupts during
 SDE IRQ handler
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
Cc: Intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMjAsIDIwMTkgYXQgMDM6NDA6MjBQTSAtMDgwMCwgY2xpbnRvbi5hLnRheWxv
ckBpbnRlbC5jb20gd3JvdGU6Cj4gRnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9y
QGludGVsLmNvbT4KPiAKPiBEdXJpbmcgdGhlIERpc3BsYXkgSW50ZXJydXB0IFNlcnZpY2Ugcm91
dGluZSB0aGUgRGlzcGxheSBJbnRlcnJ1cHQKPiBFbmFibGUgYml0IG11c3QgYmUgZGlzYWJsZWQs
IFRoZSBpbnRlcnJ1cHRzIGhhbmRsZWQsIHRoZW4gdGhlCj4gRGlzcGxheSBJbnRlcnJ1cHQgRW5h
YmxlIGJpdCBtdXN0IGJlIHNldCB0byBwcmV2ZW50IHBvc3NpYmxlIG1pc3NlZAo+IGludGVycnVw
dHMuCj4gCj4gQnNwZWM6IDQ5MjEyCj4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgo+IENjOiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50ZWwu
Y29tPgoKZ2VuOF9kZV9pcnFfaGFuZGxlciBkb2VzIG1vcmUgdGhhbiBqdXN0IHNvdXRoIGRpc3Bs
YXkgaW50ZXJydXB0cywgc28gSSdkCnJlcGxhY2Ugcy9TREUvZGlzcGxheS8gaW4gdGhlIHBhdGNo
IGhlYWRsaW5lLiAgQXNpZGUgZnJvbSB0aGF0LAoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIHwgNCArKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiBpbmRleCBkYWUwMGY3ZGQ3ZGYuLjQzNDM0MjczYTA4
YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IEBAIC0yNDg0LDcgKzI0ODQsMTEgQEAg
X19nZW4xMV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqIGNvbnN0IGk5MTUs
Cj4gIAkJICogR0VOMTFfRElTUExBWV9JTlRfQ1RMIGhhcyBzYW1lIGZvcm1hdCBhcyBHRU44X01B
U1RFUl9JUlEKPiAgCQkgKiBmb3IgdGhlIGRpc3BsYXkgcmVsYXRlZCBiaXRzLgo+ICAJCSAqLwo+
ICsJCXJhd19yZWdfd3JpdGUocmVncywgR0VOMTFfRElTUExBWV9JTlRfQ1RMLCAweDApOwo+ICAJ
CWdlbjhfZGVfaXJxX2hhbmRsZXIoaTkxNSwgZGlzcF9jdGwpOwo+ICsJCXJhd19yZWdfd3JpdGUo
cmVncywgR0VOMTFfRElTUExBWV9JTlRfQ1RMLAo+ICsJCQkJCSAgR0VOMTFfRElTUExBWV9JUlFf
RU5BQkxFKTsKPiArCj4gIAkJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMoJmk5MTUtPnJ1bnRp
bWVfcG0pOwo+ICAJfQo+ICAKPiAtLSAKPiAyLjE5LjEKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNz
IFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29y
cG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
