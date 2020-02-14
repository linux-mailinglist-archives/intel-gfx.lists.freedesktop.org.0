Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B191D15E9E1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 18:10:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 131216E83B;
	Fri, 14 Feb 2020 17:10:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE146E83B
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 17:10:39 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 09:10:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="381497606"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 14 Feb 2020 09:10:39 -0800
Date: Fri, 14 Feb 2020 09:10:38 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rafael Antognolli <rafael.antognolli@intel.com>
Message-ID: <20200214171038.GN2014153@mdroper-desk1.amr.corp.intel.com>
References: <20200212191728.25227-1-rafael.antognolli@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212191728.25227-1-rafael.antognolli@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1808121037 to tgl.
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

T24gV2VkLCBGZWIgMTIsIDIwMjAgYXQgMTE6MTc6MjhBTSAtMDgwMCwgUmFmYWVsIEFudG9nbm9s
bGkgd3JvdGU6Cj4gSXQncyBub3QgY2xlYXIgd2hldGhlciB0aGlzIHdvcmthcm91bmQgaXMgZmlu
YWwgeWV0LCBidXQgdGhlIEJTcGVjCj4gaW5kaWNhdGVzIHRoYXQgdXNlcnNwYWNlIG5lZWRzIHRv
IHNldCBiaXQgOSBvZiB0aGlzIHJlZ2lzdGVyIG9uIGRlbWFuZDoKPiAKPiAgICAiVG8gYXZvaWQg
c3BvcmFkaWMgY29ycnVwdGlvbnMg4oCcU2V0IDB4NzAxMFs5XSB3aGVuIERlcHRoIEJ1ZmZlcgo+
ICAgIFN1cmZhY2UgRm9ybWF0IGlzIEQxNl9VTk9STSAsIHN1cmZhY2UgdHlwZSBpcyBub3QgTlVM
TCAmIDFYX01TQUEiCj4gCj4gQnVnTGluazogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3Jn
L21lc2EvbWVzYS9pc3N1ZXMvMjUwMQo+IFNpZ25lZC1vZmYtYnk6IFJhZmFlbCBBbnRvZ25vbGxp
IDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5jb20+CgpTZWVtcyBsaWtlIHRoZSByaWdodCByZWdp
c3RlciB0byB3aGl0ZWxpc3QgdG8gYWxsb3cgdXNlcnNwYWNlIHRvIGFwcGx5CnRoZSB3b3JrYXJv
dW5kLgoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
CgpJIHRoaW5rIHdlIGNhbiBkcm9wIHRoZSAiQWxsb3cgdXNlcnBhY2UgdG8gaW1wbGVtZW50IHRo
aXMgd29ya2Fyb3VuZCIKcGFydCBvZiB0aGUgY29tbWVudDsgdGhhdCBwYXJ0IGlzIHNlbGYtZXhw
bGFuYXRvcnkgZ2l2ZW4gdGhhdCBpdCdzIGEKd2hpdGVsaXN0IGVudHJ5LiAgRG8geW91IG1pbmQg
aWYgd2UganVzdCB0d2VhayB0aGUgY29tbWVudCB3aGlsZQphcHBseWluZz8gIEl0IGxvb2tzIGxp
a2UgdGhlIENJIHNoYXJkcyBxdWV1ZSBpcyBtYXNzaXZlIHJpZ2h0IG5vdyBzbwppdCdzIGFscmVh
ZHkgZ29pbmcgdG8gdGFrZSBhIGxvbmcgdGltZSB0byBnZXQgdGhlIGZ1bGwgcmVzdWx0cyBiYWNr
IGZvcgp0aGlzIHBhdGNoOyBubyBuZWVkIHRvIG1ha2UgaXQgZXZlbiBsb25nZXIgYnkgcmVzdWJt
aXR0aW5nIGZvciBhIHRyaXZpYWwKY29tbWVudCBzaG9ydGVuaW5nLgoKCk1hdHQKCj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggNjJiNDNmNTM4YTU2Li41N2I5Njg1
ZDkzNDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKPiBAQCAtMTI2NCw2ICsxMjY0LDEyIEBAIHN0YXRpYyB2b2lkIHRnbF93aGl0ZWxpc3RfYnVp
bGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAJCXdoaXRlbGlzdF9yZWdfZXh0
KHcsIFBTX0lOVk9DQVRJT05fQ09VTlQsCj4gIAkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9B
Q0NFU1NfUkQgfAo+ICAJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7Cj4gKwo+
ICsJCS8qIFdhXzE4MDgxMjEwMzc6dGdsCj4gKwkJICoKPiArCQkgKiBBbGxvdyB1c2VycGFjZSB0
byBpbXBsZW1lbnQgdGhpcyB3b3JrYXJvdW5kLgo+ICsJCSAqLwo+ICsJCXdoaXRlbGlzdF9yZWco
dywgR0VON19DT01NT05fU0xJQ0VfQ0hJQ0tFTjEpOwo+ICAJCWJyZWFrOwo+ICAJZGVmYXVsdDoK
PiAgCQlicmVhazsKPiAtLSAKPiAyLjI1LjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3
YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRp
b24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
