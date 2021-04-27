Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2015D36C06F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 09:53:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB296E03D;
	Tue, 27 Apr 2021 07:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751066E03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 07:53:06 +0000 (UTC)
IronPort-SDR: 0s9pLVhvBLGIv3Fb7DPtfIv7eFZmIK6UrV0RleTt5XQI8TC+Mbpa/CDjiNPYpZXU/OBi0ms5o7
 7iwDDbDOUblQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9966"; a="183604723"
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="183604723"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 00:51:42 -0700
IronPort-SDR: k8ex2d8Xt3Zx/ud95OHyT+S6JgYWWcSfgijZKovcPc649uFQ9jzdkupqO0lVa1x49q7/L3yoOe
 3cHgJG107OBA==
X-IronPort-AV: E=Sophos;i="5.82,254,1613462400"; d="scan'208";a="429716565"
Received: from aalbarra-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.41.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 00:51:41 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Souza\,
 Jose" <jose.souza@intel.com>
In-Reply-To: <YIdxhuyJ2cqxA+DX@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210426185612.13223-1-ville.syrjala@linux.intel.com>
 <1eb44e061b1aa1d6bd2b814d5a4e5520b7bf21db.camel@intel.com>
 <YIdxhuyJ2cqxA+DX@intel.com>
Date: Tue, 27 Apr 2021 10:51:38 +0300
Message-ID: <877dko5fn9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop using crtc->index as the pipe
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyNyBBcHIgMjAyMSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBBcHIgMjcsIDIwMjEgYXQgMTI6MDc6MjFBTSAr
MDAwMCwgU291emEsIEpvc2Ugd3JvdGU6Cj4+IE9uIE1vbiwgMjAyMS0wNC0yNiBhdCAyMTo1NiAr
MDMwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiA+IAo+PiA+IFRoZSBwaXBlIGNyYyBjb2Rl
IHNsaXBwZWQgdGhlb3VnaCB0aGUgbmV0IHdoZW4gd2UgdHJpZWQgdG8KPj4gPiBlbGltaW5hdGUg
YWxsIGNydGMtPmluZGV4PT1waXBlIGFidXNlcy4gUmVtZWR5IHRoYXQuCj4+ID4gCj4+ID4gQW5k
IHdoaWxlIGF0IGl0IGdldCByaWQgb2YgdGhvc2UgbmFzdHkgaW50ZWxfY3J0Yytkcm1fY3J0Ywo+
PiA+IHBvaW50ZXIgYWxpYXNlcy4KPj4gCj4+IGludGVsX2NydGMgaXMgYnJvYWRseSB1c2VkLAo+
Cj4gTm90IGFueW1vcmUuIFdlJ3ZlIGNsZWFuZWQgdXAgYWxtb3N0IGFsbCBvZiBpdC4gTG9va3Mg
bGlrZSBvbmx5IH40MCBsZWZ0Cj4gdnMuIH42MDAgdGhlIG90aGVyIG5hbWUuIFByb2JhYmx5IGEg
Z29vZCB0aW1lIHRvIGNsZWFuIHVwIHRoZSByZXN0Cj4gZmluYWxseS4KCkFjay4KCj4KPj4gYWxz
byB3ZSBoYXZlIHRoZSBzYW1lIGZvciBvdGhlciBzdHJ1Y3RzIGxpa2UgaW50ZWxfY29ubmVjdG9y
LCBpbiBteSBvcHRpb24gdGhhdCBpcyBiZXR0ZXIgdGhhbiBfY3J0YyB4IGNydGMuCj4KPiBUaGUg
X2NydGMgaXMgZXhwbGljaXRseSB1Z2x5IHRvIG1ha2Ugc3VyZSBwZW9wbGUgbGVhdmUgaXQgd2Vs
bAo+IGFsb25lLiBPdGhlcndpc2Ugd2UgY2FuIG5ldmVyIGdldCByaWQgb2YgdGhlc2UgaG9ycmli
bGUgYWxpYXNpbmcKPiBwb2ludGVycy4gSXQgc2hvdWxkIG9ubHkgbWFrZSBhbiBhcHBlYXJhbmNl
IGluIGNvcmUvaGVscGVyIHZmdW5jcwo+IGFuZCBzdWNoLiBBdCBzb21lIHBvaW50IEkgd2FzIGV2
ZW4gcG9uZGVyaW5nIHNvbWUga2luZCBvZiBtYWNybwo+IG1hZ2ljIHRvIGNyZWF0ZSBzZW1pLWF1
dG9tYXRpYyB3cmFwcGVycyBzbyB0aGF0IHdlIGNvdWxkIGFsd2F5cwo+IGp1c3QgdXNlIHRoZSBp
bnRlbF8gdHlwZXMgaW4gb3VyIHZmdW5jIGltcGxlbWVudGF0aW9ucy4KPgo+IGludGVsX2NydGMg
d2UndmUgY2xlYW5lZCB1cCB0aGUgbW9zdCBJIHRoaW5rLCBpbnRlbF9lbmNvZGVyIGEgYml0IGxl
c3MKPiBwZXJoYXBzLCBhbmQgaW50ZWxfY29ubmVjdG9yIG5vdCByZWFsbHkgYXQgYWxsLiBIZW5j
ZSB5b3Ugc2VlIGEgbG90IG1vcmUKPiBvZiBpbnRlbF9jb25uZWN0b3IgZmxvYXRpbmcgYXJvdW5k
LiBXZSBhbHNvIGRvbid0IHVzdWFsbHkgdXNlIHRoZSBpbnRlbF8KPiB0eXBlcyBmb3IgY29ubmVj
dG9yIHN0YXRlcy4gTWFpbmx5IGJlY2F1c2UgbW9zdCBvZiB0aGUgdGltZSB5b3UgZG9uJ3QKPiBu
ZWVkIGFueXRpbmcgZnJvbSB0aGVyZS4KCkFjay4KCgpCUiwKSmFuaS4KCgoKLS0gCkphbmkgTmlr
dWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
