Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BA5CF2FD
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 08:52:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA9B6E1B1;
	Tue,  8 Oct 2019 06:52:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0A346E1B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 06:52:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 23:52:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="206584113"
Received: from wpross-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.86])
 by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2019 23:51:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20191007192756.14083.71406@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191007173346.9379-1-krzk@kernel.org>
 <20191007192756.14083.71406@emeril.freedesktop.org>
Date: Tue, 08 Oct 2019 09:52:40 +0300
Message-ID: <87pnj7d8zr.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Fix_Kconfig_indentation?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAwNyBPY3QgMjAxOSwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNr
dG9wLm9yZz4gd3JvdGU6Cj4gPT0gU2VyaWVzIERldGFpbHMgPT0KPgo+IFNlcmllczogZHJtL2k5
MTU6IEZpeCBLY29uZmlnIGluZGVudGF0aW9uCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3NzA3Lwo+IFN0YXRlIDogZmFpbHVyZQo+Cj4gPT0gU3Vt
bWFyeSA9PQo+Cj4gQXBwbHlpbmc6IGRybS9pOTE1OiBGaXggS2NvbmZpZyBpbmRlbnRhdGlvbgo+
IFVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KPiBNCWRyaXZl
cnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPiBGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcg
YmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KPiBBdXRvLW1lcmdpbmcgZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZy5kZWJ1Zwo+IENPTkZMSUNUIChjb250ZW50KTogTWVyZ2UgY29uZmxpY3QgaW4g
ZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+IGVycm9yOiBGYWlsZWQgdG8gbWVy
Z2UgaW4gdGhlIGNoYW5nZXMuCj4gaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0
Y2gnIHRvIHNlZSB0aGUgZmFpbGVkIHBhdGNoCj4gUGF0Y2ggZmFpbGVkIGF0IDAwMDEgZHJtL2k5
MTU6IEZpeCBLY29uZmlnIGluZGVudGF0aW9uCj4gV2hlbiB5b3UgaGF2ZSByZXNvbHZlZCB0aGlz
IHByb2JsZW0sIHJ1biAiZ2l0IGFtIC0tY29udGludWUiLgo+IElmIHlvdSBwcmVmZXIgdG8gc2tp
cCB0aGlzIHBhdGNoLCBydW4gImdpdCBhbSAtLXNraXAiIGluc3RlYWQuCj4gVG8gcmVzdG9yZSB0
aGUgb3JpZ2luYWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0
Ii4KClRoaXMgY29uZmxpY3QgaXMgZHVlIHRvIGEgQ0ktb25seSBjb21taXQgaW4gZHJtLXRpcCB0
aGF0J3Mgbm90IGhlYWRlZApmb3IgdXBzdHJlYW0uIEV5ZWJhbGxlZCB0aGUgcGF0Y2gsIGdpdCBz
aG93IC13IGluZGljYXRlcyBubyBjaGFuZ2VzLCBzbwphcHBsaWVkIHRvIGRybS1pbnRlbC1uZXh0
LXF1ZXVlZC4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCgpCUiwKSmFuaS4KCgoKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlr
dWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
