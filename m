Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3D5D3F71
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628D96EC30;
	Fri, 11 Oct 2019 12:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 219F76EC30
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:25:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 05:25:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="194319878"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 11 Oct 2019 05:25:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 15:25:03 +0300
Date: Fri, 11 Oct 2019 15:25:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191011122503.GO1208@intel.com>
References: <20191010193241.101401-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010193241.101401-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Handle fused off
 display correctly
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMTI6MzI6MzhQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBJZiBhbGwgcGlwZXMgYXJlIGZ1c2VkIG9mZiBpdCBtZWFucyB0aGF0
IGRpc3BsYXkgaXMgZGlzYWJsZWQsIHNpbWlsYXIKPiBsaWtlIHdlIGhhbmRsZSBmb3IgR0VOIDcg
YW5kIDggcmlnaHQgYWJvdmUuCj4gCj4gT24gR0VOIDkgdGhlIGJpdCAzMSBpcyAiSW50ZXJuYWwg
R3JhcGhpY3MgRGlzYWJsZSIgYW5kIG9uIG5ld2VyIEdFTnMKPiBpdCBoYXMgYW5vdGhlciBmdW5j
dGlvbiwgcHJvYmFibHkgb24gR0VOIDkgd2hlbiBiaXQgMzEgaXMgc2V0IGFsbAo+IHRoZSAzIHBp
cGVzIGRpc2FibGUgYml0IGFyZSBzZXQsIHNvIHdlIGNhbiB1bmlmeSB0aGUgaGFuZGxpbmcuCgpJ
J20gbm90IHN1cmUgdGhpcyBpcyByZWFsbHkgY29ycmVjdC4gVGhlIGRlc2NyaXB0aW9uIHNheXMg
dGhlIHBpcGUgd2lsbApqdXN0IG91dHB1dCBhIHNvbGlkIGNvbG9yLCBzbyB0aGUgZGlzcGxheSBo
YXJkd2FyZSBtYXkgYmUgdGhlcmUgdG8gc29tZQpkZWdyZWUgYW5kIGlmIHdlIGRvbid0IHdhbnQg
dG8gd2FzdGUgcG93ZXIgd2UgbWF5IGhhdmUgdG8gcG93ZXIgbWFuYWdlCnNvbWUgb2YgaXQgc3Rp
bGwuCgpOb3Qgc3VyZSBob3cgaGlnaCB1cCB3ZSd2ZSBwbHVnZ2VkIGluIHRoZSAncGlwZV9tYXNr
PT0wIC0+IGRpc3BsYXkgbm90CnRoZXJlJyBsb2dpYy4gSWYgaXQncyB0b28gaGlnaCB1cCB3ZSBt
YXkgbGVhdmUgc29tZSBwb3dlciBvbiB0aGUgZmxvb3IuCgpCdXQgYWxsIHRoYXQgaXMganVzdCBz
cGVjdWxhdGlvbiBvbiBteSBwYXJ0LiBXb3VsZCBwcm9iYWJseSBiZSBnb29kCnRvIGdldCBzb21l
IGNsYXJpZmljYXRpb24gdG8gdGhlIHNwZWMgYWJvdXQgdGhpcyBzdHVmZi4KCj4gCj4gQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMTEgKysrKystLS0tLS0KPiAg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiBpbmRleCA4NWU0ODBiZGM2NzMu
LmMwMWZjY2ZlM2NjYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
ZXZpY2VfaW5mby5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYwo+IEBAIC05NzIsMTUgKzk3MiwxNCBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRp
bWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAkJCWVuYWJsZWRf
bWFzayAmPSB+QklUKFBJUEVfRCk7Cj4gIAo+ICAJCS8qCj4gLQkJICogQXQgbGVhc3Qgb25lIHBp
cGUgc2hvdWxkIGJlIGVuYWJsZWQgYW5kIGlmIHRoZXJlIGFyZQo+IC0JCSAqIGRpc2FibGVkIHBp
cGVzLCB0aGV5IHNob3VsZCBiZSB0aGUgbGFzdCBvbmVzLCB3aXRoIG5vIGhvbGVzCj4gLQkJICog
aW4gdGhlIG1hc2suCj4gKwkJICogSWYgdGhlcmUgYXJlIGRpc2FibGVkIHBpcGVzLCB0aGV5IHNo
b3VsZCBiZSB0aGUgbGFzdCBvbmVzLAo+ICsJCSAqIHdpdGggbm8gaG9sZXMgaW4gdGhlIG1hc2su
Cj4gIAkJICovCj4gLQkJaWYgKGVuYWJsZWRfbWFzayA9PSAwIHx8ICFpc19wb3dlcl9vZl8yKGVu
YWJsZWRfbWFzayArIDEpKQo+ICsJCWlmIChlbmFibGVkX21hc2sgJiYgIWlzX3Bvd2VyX29mXzIo
ZW5hYmxlZF9tYXNrICsgMSkpCj4gIAkJCURSTV9FUlJPUigiaW52YWxpZCBwaXBlIGZ1c2UgY29u
ZmlndXJhdGlvbjogZW5hYmxlZF9tYXNrPTB4JXhcbiIsCj4gIAkJCQkgIGVuYWJsZWRfbWFzayk7
Cj4gLQkJZWxzZQo+IC0JCQlpbmZvLT5waXBlX21hc2sgPSBlbmFibGVkX21hc2s7Cj4gKwo+ICsJ
CWluZm8tPnBpcGVfbWFzayA9IGVuYWJsZWRfbWFzazsKPiAgCX0KPiAgCj4gIAkvKiBJbml0aWFs
aXplIHNsaWNlL3N1YnNsaWNlL0VVIGluZm8gKi8KPiAtLSAKPiAyLjIzLjAKCi0tIApWaWxsZSBT
eXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
