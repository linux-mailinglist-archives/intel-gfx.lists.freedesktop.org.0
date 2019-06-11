Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681853D3F5
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 19:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC716891CC;
	Tue, 11 Jun 2019 17:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE78B891CC
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 17:23:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 10:23:49 -0700
X-ExtLoop1: 1
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga002.jf.intel.com with ESMTP; 11 Jun 2019 10:23:49 -0700
Date: Tue, 11 Jun 2019 10:24:20 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190611172420.GJ22504@intel.com>
References: <20190610215312.23772-1-jani.nikula@intel.com>
 <20190610215312.23772-2-jani.nikula@intel.com>
 <156023955173.8761.4241155784797676760@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156023955173.8761.4241155784797676760@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915: move modesetting core code
 under display/
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMTEsIDIwMTkgYXQgMDg6NTI6MzFBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDYtMTAgMjI6NTM6MTIpCj4gPiBOb3cg
dGhhdCB3ZSBoYXZlIGEgbmV3IHN1YmRpcmVjdG9yeSBmb3IgZGlzcGxheSBjb2RlLCBjb250aW51
ZSBieSBtb3ZpbmcKPiA+IG1vZGVzZXR0aW5nIGNvcmUgY29kZS4KPiA+IAo+ID4gZGlzcGxheS9p
bnRlbF9mcm9udGJ1ZmZlci5oIHN0aWNrcyBvdXQgbGlrZSBhIHNvcmUgdGh1bWIsIG90aGVyd2lz
ZSB0aGlzCj4gPiBpcywgYWdhaW4sIGEgc3VycHJpc2luZ2x5IGNsZWFuIG9wZXJhdGlvbi4KPiAK
PiBZdXAuIEkndmUgYSBwYXRjaCB0byBkZWNvdXBsZSBpdCBmcm9tIEdFTSBzbGlnaHRseSwgYnV0
IHdlIG1heSB3YW50IHRvCj4gZ28gZnVsbCBvYnNlcnZlciBtb2RlLiBBbHRob3VnaCB0aGF0IHNl
ZW1zIGxpa2Ugb3ZlcmtpbGwgYXMgdGhlCj4gaW50ZW50aW9uIGlzIG1ha2UgdXNlcnNwYWNlIGV4
cGxpY2l0bHkgZ2VuZXJhdGUgc3VjaCBub3RpZmljYXRpb25zIChpLmUuCj4gYWxvbmcgdGhlIGxp
bmVzIG9mIERJUlRZRkIpLiBIb3dldmVyLCB0aGUgaW1wbGljaXQgYmFjay1jaGFubmVsCj4gbm90
aWZpY2F0aW9ucyBhcmUgbXVjaCBlYXNpZXIgdG8gb3JnYW5pc2UuCj4gCj4gPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KCgpBY2tlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgoKCgo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgo+IAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
