Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAE013450D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 15:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA496E301;
	Wed,  8 Jan 2020 14:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83876E301
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 14:33:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 06:33:27 -0800
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="215967356"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 06:33:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Souza\,
 Jose" <jose.souza@intel.com>
In-Reply-To: <157840592663.2273.15929240102084093971@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200107130322.gdk5b6jurifr26c2@kili.mountain>
 <04c2960a11f5361288d7d3a8a3bd16301b05c5e5.camel@intel.com>
 <157840592663.2273.15929240102084093971@skylake-alporthouse-com>
Date: Wed, 08 Jan 2020 16:33:22 +0200
Message-ID: <87y2uiow5p.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix an error code in
 intel_modeset_all_tiles()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 martin.peres@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwNyBKYW4gMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgU291emEsIEpvc2UgKDIwMjAtMDEtMDcgMTQ6MDE6NDApCj4+
IE9uIFR1ZSwgMjAyMC0wMS0wNyBhdCAxNjowMyArMDMwMCwgRGFuIENhcnBlbnRlciB3cm90ZToK
Pj4gPiBUaGVyZSBpcyBhIGN1dCBhbmQgcGFzdGUgYnVnIHNvIHdlIHJldHVybiB0aGUgd3Jvbmcg
ZXJyb3IgY29kZS4KPj4gPiAKPj4gPiBGaXhlczogYTYwM2Y1YmQxNjkxICgiZHJtL2k5MTUvZHA6
IE1ha2Ugc3VyZSBhbGwgdGlsZWQgY29ubmVjdG9ycyBnZXQKPj4gPiBhZGRlZCB0byB0aGUgc3Rh
dGUgd2l0aCBmdWxsIG1vZGVzZXQiKQo+PiAKPj4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+PiAKPj4gPiBTaWduZWQtb2ZmLWJ5OiBE
YW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4KPiBQdXNoZWQuIFRoYW5r
cyBmb3IgdGhlIHBhdGNoLAoKSHJtaCwgd2UgYXJlIHN0aWxsIHN1cHBvc2VkIHRvIHdhaXQgZm9y
IENJIHJlc3VsdHMgZm9yIGV2ZXJ5IHBhdGNoLCBubwpleGNlcHRpb25zLgoKSWYgaXQncyBub3Qg
ImV2ZXJ5IHBhdGNoIiwgaXQncyBnb2luZyB0byBiZSBhIHN1YmplY3RpdmUgYXNzZXNzbWVudCwg
YW5kCkkgcmVhbGx5IGRvbid0IGxpa2Ugd2hlcmUgdGhhdCB3b3VsZCBsZWFkLiBXaG8ncyBnb2lu
ZyB0byBzYXkgd2hhdCdzCmdvaW5nIHRvIGJlIGp1c3QgZmluZS4gRXZlbiBpZiBpdCdzICJvYnZp
b3VzbHkgY29ycmVjdCIuCgpBcyBpdCBpcywgdGhpcyBwYXRjaCB3b24ndCBnZXQgdGhlIENJIHJl
c3VsdHMgYXQgYWxsIG5vdyBiZWNhdXNlIEJBVApmYWlscyB3aXRoICJwYXRjaCBhbHJlYWR5IGFw
cGxpZWQiLiBUcmFjaW5nIGFueSBpc3N1ZXMgYmFjayB0byB0aGlzCnBhdGNoIHdvdWxkIG1lYW4g
YmlzZWN0aW5nIHRoZSByZXN1bHRzIGZyb20gZHJtLXRpcCBydW5zLgoKLS0tCgpJZiB0aGUgcHJv
YmxlbSBpcyB0aGF0IENJIGlzIHRvbyBoZWF2eSwgc2xvdyBhbmQgaXRzZWxmIGVycm9yIHByb25l
IGZvcgpzbWFsbCBwYXRjaGVzLCB0aGVuIHRoYXQncyB3aGF0IHdlIG5lZWQgdG8gYWRkcmVzcyBp
bnN0ZWFkIG9mIGp1c3QKYnlwYXNzaW5nIENJLgoKSSBhbHNvIGRvbid0IGxpa2UgdGhlIHByb3Nw
ZWN0IG9mIHNwZW5kaW5nIHRpbWUgb24gaGFja2luZyBkaW0gdG8KZG91YmxlLWNoZWNrIHRoZSBw
YXRjaGVzIHBhc3NlZCBDSSBiZWZvcmUgcHVzaGluZy4KCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
