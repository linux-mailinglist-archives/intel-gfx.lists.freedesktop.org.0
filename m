Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7051357C1
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 12:17:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44C676E3DF;
	Thu,  9 Jan 2020 11:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 697246E3DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 11:17:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:17:13 -0800
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="223255361"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:17:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "Souza\,
 Jose" <jose.souza@intel.com>
In-Reply-To: <157849428827.2273.15167701436088595576@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200107130322.gdk5b6jurifr26c2@kili.mountain>
 <04c2960a11f5361288d7d3a8a3bd16301b05c5e5.camel@intel.com>
 <157840592663.2273.15929240102084093971@skylake-alporthouse-com>
 <87y2uiow5p.fsf@intel.com>
 <157849428827.2273.15167701436088595576@skylake-alporthouse-com>
Date: Thu, 09 Jan 2020 13:17:08 +0200
Message-ID: <87imlkq3pn.fsf@intel.com>
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

T24gV2VkLCAwOCBKYW4gMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjAtMDEtMDggMTQ6MzM6MjIpCj4+
IE9uIFR1ZSwgMDcgSmFuIDIwMjAsIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPiB3cm90ZToKPj4gPiBRdW90aW5nIFNvdXphLCBKb3NlICgyMDIwLTAxLTA3IDE0OjAxOjQw
KQo+PiA+PiBPbiBUdWUsIDIwMjAtMDEtMDcgYXQgMTY6MDMgKzAzMDAsIERhbiBDYXJwZW50ZXIg
d3JvdGU6Cj4+ID4+ID4gVGhlcmUgaXMgYSBjdXQgYW5kIHBhc3RlIGJ1ZyBzbyB3ZSByZXR1cm4g
dGhlIHdyb25nIGVycm9yIGNvZGUuCj4+ID4+ID4gCj4+ID4+ID4gRml4ZXM6IGE2MDNmNWJkMTY5
MSAoImRybS9pOTE1L2RwOiBNYWtlIHN1cmUgYWxsIHRpbGVkIGNvbm5lY3RvcnMgZ2V0Cj4+ID4+
ID4gYWRkZWQgdG8gdGhlIHN0YXRlIHdpdGggZnVsbCBtb2Rlc2V0IikKPj4gPj4gCj4+ID4+IFJl
dmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
Pj4gPj4gCj4+ID4+ID4gU2lnbmVkLW9mZi1ieTogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPgo+PiA+Cj4+ID4gUHVzaGVkLiBUaGFua3MgZm9yIHRoZSBwYXRjaCwKPj4g
Cj4+IEhybWgsIHdlIGFyZSBzdGlsbCBzdXBwb3NlZCB0byB3YWl0IGZvciBDSSByZXN1bHRzIGZv
ciBldmVyeSBwYXRjaCwgbm8KPj4gZXhjZXB0aW9ucy4KPgo+IFRoZXJlIGlzIG5vIGNvdmVyYWdl
IG9mIHRoYXQgcGF0aCBpbiBDSS4KCk1heWJlIG5vdCwgYnV0IG1ha2luZyB0aGF0IGFzc2Vzc21l
bnQgaXMgbm90IG9idmlvdXMgdG8gbWUuCgpJIGRvbid0IHdhbnQgdG8gc3RhcnQgb24gdGhlIHNs
aXBwZXJ5IHNsb3BlIG9mIHBlb3BsZSBwdXNoaW5nIHVudGVzdGVkCnBhdGNoZXMgY2xhaW1pbmcg
Im5vIGNvdmVyYWdlIi4KCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
