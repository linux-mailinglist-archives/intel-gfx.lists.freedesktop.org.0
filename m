Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3682D675C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 18:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5218F6E550;
	Mon, 14 Oct 2019 16:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D1C6E54C
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 16:32:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 09:32:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,296,1566889200"; d="scan'208";a="185534857"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by orsmga007.jf.intel.com with ESMTP; 14 Oct 2019 09:32:34 -0700
Date: Mon, 14 Oct 2019 09:33:32 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@intel.com>
Message-ID: <20191014163332.GE19531@jausmus-gentoo-dev6.jf.intel.com>
References: <20190925121737.29670-1-stanislav.lisovskiy@intel.com>
 <20191011234953.GC19531@jausmus-gentoo-dev6.jf.intel.com>
 <dd75af7e26d67fa4fb160cf58ab6d71ae53cfa10.camel@intel.com>
 <20191014145018.GV1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014145018.GV1208@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Restrict qgv points which
 don't have enough bandwidth.
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMTQsIDIwMTkgYXQgMDU6NTA6MThQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIE1vbiwgT2N0IDE0LCAyMDE5IGF0IDAyOjEzOjMxUE0gKzAzMDAsIExpc292
c2tpeSwgU3RhbmlzbGF2IHdyb3RlOgo+ID4gT24gRnJpLCAyMDE5LTEwLTExIGF0IDE2OjQ5IC0w
NzAwLCBKYW1lcyBBdXNtdXMgd3JvdGU6Cj4gPiA+ID4gKwkJCQluZXdfcWd2X3BvaW50c19tYXNr
IHw9IG5ld19tYXNrX2JpdDsKPiA+ID4gPiArCX0KPiA+ID4gPiArCj4gPiA+ID4gKwlyZXQgPSBp
Y2xfcGNvZGVfcmVzdHJpY3RfcWd2X3BvaW50cyhkZXZfcHJpdiwKPiA+ID4gPiBuZXdfcWd2X3Bv
aW50c19tYXNrKTsKPiA+ID4gPiArCWlmIChyZXQgPCAwKQo+ID4gPiA+ICsJCURSTV9ERUJVR19L
TVMoIkNvdWxkIG5vdCByZXN0cmljdCByZXF1aXJlZCBncXYKPiA+ID4gPiBwb2ludHMoJWQpXG4i
LCByZXQpOwo+ID4gPiAKPiA+ID4gcy9ncXYvcWd2Lwo+ID4gPiAKPiA+ID4gCj4gPiA+IEFsc28s
IGlmIHdlIGZhaWwgbWFza2luZyBvZmYgdGhlIHFndiBwb2ludHMgdGhhdCBjYW4ndCBzdXBwb3J0
IG91ciBCVwo+ID4gPiByZXEsIHNob3VsZG4ndCB3ZSBoYW5kbGUgdGhhdCBmYWlsdXJlIHNvbWVo
b3cgLSBtYXliZSBqdXN0IGRpc2FibGUKPiA+ID4gU0FHVgo+ID4gPiBlbnRpcmVseT8gIEJldHRl
ciB3ZSBsb3NlIHBvd2VyIHRoYW4gaGF2ZSBmbGlja2VyaW5nIHNjcmVlbnMuLi4KPiAKPiBTb3Vu
ZHMgbGlrZSBkZWFkIGNvZGUgdG8gbWUuIE15IGFwcHJvYWNoIGlzOiBkb24ndCBkZWFsIHdpdGgg
aHcvZmlybXdhcmUKPiBmYWlsdXJlcyB1bnRpbCB0aGV5IGFyZSBwcm92ZW4gdG8gZXhpc3QuCj4g
Cj4gVGhlIGRlYnVnIG1zZyBzaG91bGQgYmUgYW4gZXJyb3Igc28gdGhhdCB3ZSBnZXQgYSBidWcg
cmVwb3J0IGlmIHRoaXMKPiBldmVyIGhhcHBlbnMuCgpUaGF0IHdvcmtzIC0gaG93ZXZlciwgSSB0
aGluayB3ZSBzaG91bGQgcmV0dXJuIHRoZSBlcnJvciByYXRoZXIgdGhhbgpjb250aW51aW5nLgoK
LUphbWVzCgo+IAo+IC0tIAo+IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
