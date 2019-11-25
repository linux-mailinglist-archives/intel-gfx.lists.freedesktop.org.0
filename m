Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F5D108C49
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 11:51:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2FEC6E112;
	Mon, 25 Nov 2019 10:51:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 610256E112
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 10:51:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 02:51:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="210990513"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.158])
 by orsmga003.jf.intel.com with ESMTP; 25 Nov 2019 02:51:30 -0800
Date: Mon, 25 Nov 2019 12:51:31 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191125105131.GA1815@intel.intel>
References: <20191123110330.874616-1-chris@chris-wilson.co.uk>
 <20191123174946.891350-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123174946.891350-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mark the execlists->active as
 the primary volatile access
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

SGkgQ2hyaXMsCgpPbiBTYXQsIE5vdiAyMywgMjAxOSBhdCAwNTo0OTo0NlBNICswMDAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gU2luY2Ugd2Ugd2FudCB0byBkbyBhIGxvY2tsZXNzIHJlYWQgb2Yg
dGhlIGN1cnJlbnQgYWN0aXZlIHJlcXVlc3QsIGFuZAo+IHRoYXQgcmVxdWVzdCBpcyB3cml0dGVu
IHRvIGJ5IHByb2Nlc3NfY3NiIGFsc28gd2l0aG91dCBzZXJpYWxpc2F0aW9uLCB3ZQo+IG5lZWQg
dG8gaW5zdHJ1Y3QgZ2NjIHRvIHRha2UgY2FyZSBpbiByZWFkaW5nIHRoZSBwb2ludGVyIGl0c2Vs
Zi4KPiAKPiBPdGhlcndpc2UsIHdlIGhhdmUgb2JzZXJ2ZWQgZXhlY2xpc3RzX2FjdGl2ZSgpIHRv
IHJlcG9ydCAweDQwLgo+IAo+IFsgMjQwMC43NjAzODFdIGlndC9wYXJhLTQwOTggICAgMS4ucy4g
MjM3NjQ3OTMwMHVzIDogcHJvY2Vzc19jc2I6IHJjczAgY3MtaXJxIGhlYWQ9MywgdGFpbD00Cj4g
WyAyNDAwLjc2MDgyNl0gaWd0L3BhcmEtNDA5OCAgICAxLi5zLiAyMzc2NDc5MzAzdXMgOiBwcm9j
ZXNzX2NzYjogcmNzMCBjc2JbNF06IHN0YXR1cz0weDAwMDAwMDAxOjB4MDAwMDAwMDAKPiBbIDI0
MDAuNzYxMjcxXSBpZ3QvcGFyYS00MDk4ICAgIDEuLnMuIDIzNzY0NzkzMDZ1cyA6IHRyYWNlX3Bv
cnRzOiByY3MwOiBwcm9tb3RlIHsgYjljNTk6MjYyMiwgYjljNTU6MjYyNCB9Cj4gWyAyNDAwLjc2
MTcyNl0gaWd0L3BhcmEtNDA5NyAgICAwZC4uLiAyMzc2NDc5MzExdXMgOiBfX2k5MTVfc2NoZWR1
bGU6IHJjczA6IC0yMTQ3NDgzNjQ4LT4zLCBpbmZsaWdodDowMDAwMDAwMDAwMDAwMDQwLCBycTpm
ZmZmODg4MjA4YzFlOTQwCj4gCj4gd2hpY2ggaXMgaW1wb3NzaWJsZSEKPiAKPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClRlc3RlZC1ieTog
QW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBBbmRpIFNoeXRp
IDxhbmRpLnNoeXRpQGludGVsLmNvbT4KCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
