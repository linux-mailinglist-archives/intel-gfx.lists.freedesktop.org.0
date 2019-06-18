Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5798949CD9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 11:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1B3B89FA0;
	Tue, 18 Jun 2019 09:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E31E789FA0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 09:17:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 02:17:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,388,1557212400"; d="scan'208";a="357793194"
Received: from unknown (HELO [10.249.33.40]) ([10.249.33.40])
 by fmsmga005.fm.intel.com with ESMTP; 18 Jun 2019 02:17:20 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190614103941.15399-1-maarten.lankhorst@linux.intel.com>
 <20190617123402.GH5942@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <9aa7d57c-8f9b-eeb9-16a9-718b4c6eae45@linux.intel.com>
Date: Tue, 18 Jun 2019 11:16:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617123402.GH5942@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check visibility in
 icl_build_plane_wm
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

T3AgMTctMDYtMjAxOSBvbSAxNDozNCBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBGcmks
IEp1biAxNCwgMjAxOSBhdCAxMjozOTo0MVBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gV2hlbiBhIHBsYW5hciBZVVYgcGxhbmUgaXMgY29uZmlndXJlZCwgYnV0IHRoZSBjcnRj
IGlzCj4+IG1hcmtlZCBpbmFjdGl2ZSwgd2UgY2FuIGVuZCB1cCB3aXRoIGEgbGlua2VkIHBsYW5l
IHdpdGhvdXQKPj4gdmlzaWJpbGl0eS4KPiBIb3cgaXMgdGhhdCBwb3NzaWJsZT8gSSBkb24ndCB0
aGluayB3ZSBzaG91bGQgYmUgYWRkaW5nIHRoZSBzbGF2ZSBwbGFuZQo+IGlmIHRoZSBtYXN0ZXIg
aXMgbm90IHZpc2libGUuCgoKRFBNUyBvZmYsIHdlIGNhbGN1bGF0ZSB0aGUgdmFyaW91cyBmaWVs
ZHMgYXMgaWYgdGhlIENSVEMgaXMgb24sIHRoZW4gZGlzYWJsZSB2aXNpYmlsaXR5LgoKY3J0Y19z
dGF0ZS0+bnYxMl9wbGFuZXMgZXRjIHN0aWxsIGdldCBzZXQsIHNvIGl0IHdvcmtzIGFzIGlmIHRo
ZSBjcnRjIGlzIG9uLgoKSXQncyBhIHdheSBvZiBub3QgYWxsb3dpbmcgYW4gaW52YWxpZCByZXN1
bHQgd2hlbiBkcG1zIGlzIG9mZiwgdGhlbiBicmVha2luZyBvbiBjcnRjIGVuYWJsZS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
