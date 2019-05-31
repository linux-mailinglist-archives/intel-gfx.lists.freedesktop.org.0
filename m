Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AB830BCE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 11:40:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 114D4891DC;
	Fri, 31 May 2019 09:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3290891DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 09:40:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 02:40:08 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.251.94.174])
 by orsmga008.jf.intel.com with ESMTP; 31 May 2019 02:40:06 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190506134801.28751-1-jani.nikula@intel.com>
References: <20190506134801.28751-1-jani.nikula@intel.com>
Message-ID: <155929560569.5971.3554732541404085304@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Fri, 31 May 2019 12:40:05 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add force_probe module parameter
 to replace alpha_support
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNS0wNiAxNjo0ODowMSkKPiBUaGUgaTkxNS5hbHBo
YV9zdXBwb3J0IG1vZHVsZSBwYXJhbWV0ZXIgaGFzIGNhdXNlZCBzb21lIGNvbmZ1c2lvbiBhbG9u
Zwo+IHRoZSB3YXkuIEFkZCBuZXcgaTkxNS5mb3JjZV9wcm9iZSBwYXJhbWV0ZXIgdG8gc3BlY2lm
eSBQQ0kgSURzIG9mCj4gZGV2aWNlcyB0byBwcm9iZSwgd2hlbiB0aGUgZGV2aWNlcyBhcmUgcmVj
b2duaXplZCBidXQgbm90IGF1dG9tYXRpY2FsbHkKPiBwcm9iZWQgYnkgdGhlIGRyaXZlci4gVGhl
IG5hbWUgaXMgaW50ZW5kZWQgdG8gcmVmbGVjdCB3aGF0IHRoZSBwYXJhbWV0ZXIKPiBlZmZlY3Rp
dmVseSBkb2VzLCBhdm9pZGluZyBhbnkgb3ZlcmxvYWRlZCBzZW1hbnRpY3Mgb2YgImFscGhhIiBh
bmQKPiAic3VwcG9ydCIuCj4gCj4gVGhlIHBhcmFtZXRlciBzdXBwb3J0cyAiIiB0byBkaXNhYmxl
LCAiPHBjaS1pZD4sWzxwY2ktaWQ+LC4uLl0iIHRvCj4gZW5hYmxlIGZvcmNlIHByb2JlIGZvciBv
bmUgb3IgbW9yZSBkZXZpY2VzLCBhbmQgIioiIHRvIGVuYWJsZSBmb3JjZQo+IHByb2JlIGZvciBh
bGwga25vd24gZGV2aWNlcy4KPiAKPiBBbHNvIGFkZCBuZXcgQ09ORklHX0RSTV9JOTE1X0ZPUkNF
X1BST0JFIGNvbmZpZyBvcHRpb24gdG8gcmVwbGFjZSB0aGUKPiBEUk1fSTkxNV9BTFBIQV9TVVBQ
T1JUIG9wdGlvbi4gVGhpcyBkZWZhdWx0cyB0byAiKiIgaWYKPiBEUk1fSTkxNV9BTFBIQV9TVVBQ
T1JUPXkuCj4gCj4gSW5zdGVhZCBvZiByZXBsYWNpbmcgaTkxNS5hbHBoYV9zdXBwb3J0IGltbWVk
aWF0ZWx5LCBsZXQgdGhlIHR3byBjb2V4aXN0Cj4gZm9yIGEgd2hpbGUsIHdpdGggYSBkZXByZWNh
dGlvbiBtZXNzYWdlLCBmb3IgYSB0cmFuc2l0aW9uIHBlcmlvZC4KPiAKPiBDYzogSm9vbmFzIExh
aHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KCkRlZmluaXRlbHkgaW4gZmF2b3Igb2YgdGhpczoKCkFj
a2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
CgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
