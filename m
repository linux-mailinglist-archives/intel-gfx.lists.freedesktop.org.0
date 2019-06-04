Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61729345F9
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 13:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9EB289718;
	Tue,  4 Jun 2019 11:55:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB1389718
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 11:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 04:55:02 -0700
X-ExtLoop1: 1
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.2.154])
 by orsmga008.jf.intel.com with ESMTP; 04 Jun 2019 04:55:01 -0700
MIME-Version: 1.0
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190531161130.28347-2-chris@chris-wilson.co.uk>
References: <20190531161130.28347-1-chris@chris-wilson.co.uk>
 <20190531161130.28347-2-chris@chris-wilson.co.uk>
Message-ID: <155964929987.11771.2398931013197411633@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 04 Jun 2019 14:55:00 +0300
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Use unchecked writes for
 setting up the fences
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMzEgMTk6MTE6MjkpCj4gQXMgdGhlIGZlbmNl
IHJlZ2lzdGVycyBhcmUgbm90IHBhcnQgb2YgdGhlIGVuZ2luZSBwb3dlcndlbGxzLCB3ZSBkbyBu
b3QKPiBuZWVkIHRvIGZpZGRsZSB3aXRoIGZvcmNld2FrZSBpbiBvcmRlciB0byB1cGRhdGUgYSBm
ZW5jZS4gQXZvaWQgdXNpbmcKPiB0aGUgaGVhdnl3ZWlnaHQgZGVidWcgY2hlY2tpbmcgbm9ybWFs
IG1taW8gd3JpdGVzIGFzIHRoZSBjaGVja2luZwo+IGRvbWluYXRlcyB0aGUgc2VsZnRlc3QgcnVu
dGltZSBhbmQgaXMgc3VwZXJmbHVvdXMhCj4gCj4gSW4gdGhlIHByb2Nlc3MsIHJldGlyZSB0aGUg
STkxNV9XUklURSgpIGltcGxpY2l0IG1hY3JvIHdpdGggdGhlIG5ldwo+IGludGVsX3VuY29yZV93
cml0ZSBpbnRlcmZhY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CgpJIHRoaW5rICd1bmNvcmUnIGlzbid0IHRvbyBsb25nIHRvIHdy
aXRlIGZ1bGx5LiBBc3N1bWluZyBJCm5vdGljZWQgYWxsIHRoZSBjb2RlIGNoYW5nZXMgZnJvbSB0
aGUgcmVuYW1lcywgdGhpcyBpczoKClJldmlld2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25h
cy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CgpJIHN0aWxsIGNhbid0IGJ1dCB0aGluayBvZiB0
aGUgX2Z3IHByZWZpeGVkIGZ1bmN0aW9ucyBhcyBzb21ldGhpbmcgdGhhdApzcGVjaWZpY2FsbHkg
X2ZvcmNld2FrZXtfZGV2aWNlX3VwfSwgYnV0IG1heWJlIGl0J3MganVzdCBtZSB3aG8gaXMKY29u
ZnVzZWQuCgpSZWdhcmRzLCBKb29uYXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
