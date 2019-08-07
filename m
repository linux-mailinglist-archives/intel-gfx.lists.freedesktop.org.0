Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CE284927
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 12:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC626E6A8;
	Wed,  7 Aug 2019 10:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B236E6A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 10:11:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 03:11:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="192887396"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Aug 2019 03:11:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20190806164713.GA25907@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190806122208.16786-1-jani.nikula@intel.com>
 <20190806164713.GA25907@intel.com>
Date: Wed, 07 Aug 2019 13:15:53 +0300
Message-ID: <87y305i8me.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] drm/i915: always split up refactoring from
 functional changes!
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

T24gVHVlLCAwNiBBdWcgMjAxOSwgUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PiB3cm90ZToKPiBPbiBUdWUsIEF1ZyAwNiwgMjAxOSBhdCAwMzoyMjowN1BNICswMzAwLCBKYW5p
IE5pa3VsYSB3cm90ZToKPj4gCj4+IFJvZHJpZ28ncyBvcmlnaW5hbCBwYXRjaCB3YXMgYXQgdjUg
WzFdLCBhbmQgc3RpbGwgc3R1Y2sgaW4gZGlzY3Vzc2lvbgo+PiBhcm91bmQgdGhlICpmdW5jdGlv
bmFsKiBjaGFuZ2UsIHdoaWxlIDk5JSBvZiB0aGUgcGF0Y2ggaXMKPj4gKm5vbi1mdW5jdGlvbmFs
KiByZWZhY3RvcmluZyB0aGF0IGRvZXMgbm90IHNlZW0gdG8gYmUgY29udGVudGlvdXMuCj4+IAo+
PiBMZXQncyBkbyB0aGUgc2FuZSB0aGluZyBhbmQgbWVyZ2UgdGhlIHJlZmFjdG9yaW5nIGZpcnN0
LCBzaGFsbCB3ZT8KPgo+IE1ha2VzIHNlbnNlLiBUaGFua3MgYSBsb3QgZm9yIHRha2luZyBjYXJl
IG9mIHRoYXQuCgpBbmQgcHVzaGVkLiBUaGFua3MgZm9yIHRoZSBwYXRjaC4gOykKCkJSLApKYW5p
LgoKCj4KPj4gCj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gCj4+IFsxXSBodHRwOi8vcGF0Y2h3b3Jr
LmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dpZC8yMDE5MDcxODIwNDkxMi4yNDE0OS0xLXJvZHJp
Z28udml2aUBpbnRlbC5jb20KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
