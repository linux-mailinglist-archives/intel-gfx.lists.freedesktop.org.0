Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1D02B34A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:36:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED1CA8967B;
	Mon, 27 May 2019 11:36:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CE0898C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 11:36:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 04:36:33 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.19.234])
 by orsmga007.jf.intel.com with ESMTP; 27 May 2019 04:36:29 -0700
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190523233049.28020-2-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
 <20190523233049.28020-2-michal.wajdeczko@intel.com>
Message-ID: <155895698842.4287.17471153968882187958@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Mon, 27 May 2019 14:36:28 +0300
Subject: Re: [Intel-gfx] [PATCH v4 01/22] drm/i915/guc: Change platform
 default GuC mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA1LTI0IDAyOjMwOjI4KQo+IFRvZGF5IG91
ciBtb3N0IGRlc2lyZWQgR3VDIGNvbmZpZ3VyYXRpb24gaXMgdG8gb25seSBlbmFibGUgSHVDCj4g
aWYgaXQgaXMgYXZhaWxhYmxlIGFuZCB3ZSByZWFsbHkgZG9uJ3QgY2FyZSBhYm91dCBHdUMgc3Vi
bWlzc2lvbi4KPiBDaGFuZ2UgcGxhdGZvcm0gZGVmYXVsdCBHdUMgbW9kZSB0byBtYXRjaCBvdXIg
ZGVzaXJlLgoKWW91IHNob3VsZCBhbWVuZCBoZXJlIHRoYXQgdGhlIEh1QyBhdXRoZW50aWNhdGlv
biBpcyBuZWVkZWQgdG8gZW5hYmxlCmFsbCBtZWRpYSBjb2RlY3Mgb24gdGhlIGhhcmR3YXJlLgoK
PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwu
Y29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBKb2huIFNw
b3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+Cj4gQ2M6IFZpbmF5IEJlbGdhdW1r
YXIgPHZpbmF5LmJlbGdhdW1rYXJAaW50ZWwuY29tPgo+IENjOiBUb255IFllIDx0b255LnllQGlu
dGVsLmNvbT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29t
Pgo+IENjOiBKZWZmIE1jZ2VlIDxqZWZmLm1jZ2VlQGludGVsLmNvbT4KPiBDYzogQW50b25pbyBB
cmdlbnppYW5vIDxhbnRvbmlvLmFyZ2Vuemlhbm9AaW50ZWwuY29tPgo+IENjOiBTdWphcml0aGEg
U3VuZGFyZXNhbiA8c3VqYXJpdGhhLnN1bmRhcmVzYW5AaW50ZWwuY29tPgo+IEFja2VkLWJ5OiBU
b255IFllIDx0b255LnllQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogU3VqYXJpdGhhIFN1bmRh
cmVzYW4gPHN1amFyaXRoYS5zdW5kYXJlc2FuQGludGVsLmNvbT4KCldpdGggdGhlIHBhdGNoIG1l
c3NhZ2UgYW1lbmRlZCwgdGhpcyBpczoKClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
