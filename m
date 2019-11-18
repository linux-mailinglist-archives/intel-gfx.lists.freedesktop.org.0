Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7834510083B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 16:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD7B76E591;
	Mon, 18 Nov 2019 15:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93CC06E5BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2019 15:26:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 07:26:43 -0800
X-IronPort-AV: E=Sophos;i="5.68,320,1569308400"; d="scan'208";a="200001672"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 07:26:41 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy\, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <5ede07a6173da5f9d7bc63863c11f482f46ef9ae.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191114122449.26409-1-stanislav.lisovskiy@intel.com>
 <87h831z2l4.fsf@intel.com>
 <5ede07a6173da5f9d7bc63863c11f482f46ef9ae.camel@intel.com>
Date: Mon, 18 Nov 2019 17:26:38 +0200
Message-ID: <87blt9yzm9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7] drm/i915: Enable second dbuf slice for
 ICL and TGL
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

T24gTW9uLCAxOCBOb3YgMjAxOSwgIkxpc292c2tpeSwgU3RhbmlzbGF2IiA8c3RhbmlzbGF2Lmxp
c292c2tpeUBpbnRlbC5jb20+IHdyb3RlOgo+IEknbSBmaW5lIHdpdGggZml4aW5nIGNoZWNrcGF0
Y2ggYW5kIHNwYXJzZSBmYWlsdXJlcyhldmVuIHRob3VnaAo+IG1vc3Qgb2YgdGhvc2UgYXJlIGFi
b3V0IDgwIGxpbmUgd2lkdGggbGltaXRhdGlvbiB2aW9sYXRpb24gb3IgbGluZQo+IGNvbnRpbnVh
dGlvbnMsIHdoaWNoIHRiaCBhcmUgYW55d2F5IHF1aXRlIGNvbW1vbiBpbiBvdXIgY29kZSkuIAoK
UGxlYXNlIGxvb2sgdGhyb3VnaCB0aGUgd2FybmluZ3MgYWdhaW4uIE9ubHkgdGhlIENPTU1JVF9M
T0dfTE9OR19MSU5FCm9uZSBpcyB0byBiZSBpZ25vcmVkIGluIHRoaXMgY2FzZS4gVGhlcmUncyBu
b3RoaW5nIGVsc2UgYWJvdXQgODAKY2hhcmFjdGVyIGxpbmUgd2lkdGguIExpbmUgY29udGludWF0
aW9uIGlzIGFib3V0IHVzaW5nIGJhY2tzbGFzaCB0bwpjb250aW51ZSB0byBhbm90aGVyIGxpbmUg
d2hpbGUgdGhhdCdzIG9ubHkgbmVlZGVkIGluIG1hY3Jvcy4KClBsZWFzZSBsZXQncyBqdXN0IHRy
eSB0byBsZWF2ZSB0aGUgY29kZSBpbiBuZWF0ZXIgc2hhcGUgYWZ0ZXIgb3VyCmNoYW5nZXMuIFdl
IGhhdmUgdGhlc2Ugc3RlcHMgaW4gQ0kgc28gcGVvcGxlIHdvdWxkbid0IGhhdmUgdG8gbml0cGlj
awphYm91dCB0aGVtIHNlcGFyYXRlbHkuCgo+IE9uZSB0aGluZyBJIGRvbid0IGdldCBpcyB3aHkg
dGhpcyBzaG91bGQgY2F1c2UgYW55IHJlZ3Jlc3Npb24sIGFzIGJvdGgKPiBCQVQgYW5kIElHVCBh
cmUgZ3JlZW4gaGVyZSBmb3IgdHdvIHJ1bnMgaW4gYSByb3cuCj4KPiBXaGF0IGlzIHRoZSBwb2lu
dCBvZiBoYXZpbmcgYSBDSSB0aGVuLgoKQXJlIHlvdSBzYXlpbmcgdGhlcmUncyBubyBwb2ludCBp
biBoYXZpbmcgQ0kgaWYgaXQgY2FuJ3QgY2F0Y2gKYWJzb2x1dGVseSBldmVyeXRoaW5nPwoKT3Vy
IENJIGlzIGxpa2UgZXZlcnkgb3RoZXIgQ0kgZXZlcnl3aGVyZTsgaW1wZXJmZWN0LiBCb3RoIGlu
IHRlcm1zIG9mCmhhcmR3YXJlIGFuZCBzb2Z0d2FyZSBjb3ZlcmFnZS4gV2Ugd291bGQgaGF2ZSBu
byBidWdzIHJlcG9ydGVkIGJ5IHRoZQpjb21tdW5pdHkgb3RoZXJ3aXNlLgoKCkJSLApKYW5pLgoK
Ci0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
