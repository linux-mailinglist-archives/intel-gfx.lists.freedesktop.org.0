Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1F8E33B
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 15:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90371891C3;
	Mon, 29 Apr 2019 13:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E19891C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2019 13:01:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 06:01:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,409,1549958400"; d="scan'208";a="168942372"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 29 Apr 2019 06:01:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155654191148.27886.16635270994402996173@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1556540889.git.jani.nikula@intel.com>
 <770f5f1c2dd99e4d6a314b70184e71b928a6d362.1556540890.git.jani.nikula@intel.com>
 <155654191148.27886.16635270994402996173@skylake-alporthouse-com>
Date: Mon, 29 Apr 2019 16:03:33 +0300
Message-ID: <87a7g9rmje.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 19/21] drm/i915: move some leftovers to
 intel_pm.h from i915_drv.h
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

T24gTW9uLCAyOSBBcHIgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDQtMjkgMTM6Mjk6MzcpCj4+
IENvbW1pdCA2OTYxNzNiMDY0YzYgKCJkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9wbS5oIGZyb20g
aW50ZWxfZHJ2LmgiKQo+PiBtaXNzZWQgdGhlIGRlY2xhcmF0aW9ucyBpbiBpOTE1X2Rydi5oLgo+
Cj4gRndpdywgSSB3YW50IHRvIHB1bGwgdGhlc2UgYWxvbmcgd2l0aCBndCBwb3dlcm1hbmFnZW1l
bnQgYW5kIHJwcyBpbnRvCj4gZ3QvaW50ZWxfZ3RfcG0uYyBhbmQgYSBmZXcgZnJpZW5kcy4KPgo+
IERvZXNuJ3QgbWFrZSBtdWNoIGRpZmZlcmVuY2UgZm9yIHRoaXMgcGF0Y2g7IGp1c3QgcGxhbm5l
ZCBvYnNvbGVzY2VuY2UuCgpJJ20gZmluZSBlaXRoZXIgd2F5LCB2aWEgdGhpcyBwYXRjaCBvciBk
aXJlY3RseS4KCkluIGdlbmVyYWwgSSBsaWtlIGhvdyBpdCdzIGVhc2llciB0byBsb29rIGF0IHRo
ZSBuZXcgaGVhZGVycyBhbmQgd29uZGVyCndoeSBvbiBlYXJ0aCBzb21lIGZ1bmN0aW9ucyBhcmUg
aW4gdGhlIGZpbGVzIHRoZXkgYXJlLCBhbmQgdHJ5IHRvIGNvbWUKdXAgd2l0aCBiZXR0ZXIgZGl2
aXNpb24gaW50byBmaWxlcy4KCi0tLQoKSSdtIGFsc28gdHJ5aW5nIHRvIHByb2JlIGZlZWRiYWNr
IG9uIHNvbWUgc3R5bGUgZ3VpZGVsaW5lcyBJIG1pZ2h0IGxpa2UKdG8gZW5mb3JjZSBpbiB0aGUg
ZnV0dXJlOgoKMSkgQSBmaWxlIGFuZCB0aGUgbm9uLXN0YXRpYyBmdW5jdGlvbnMgaW4gaXQgc2hv
dWxkIGhhdmUgdGhlIHNhbWUKICAgcHJlZml4LCBpLmUuIGludGVsX2Zvby5jIGhhcyBmdW5jdGlv
bnMgcHJlZml4ZWQgaW50ZWxfZm9vXyouCgoyKSBObyBmaWxlIHNob3VsZCBoYXZlIHBsYXRmb3Jt
IHNwZWNpZmljIG5vbi1zdGF0aWMgZnVuY3Rpb25zLCBpLmUuIGFsbAogICB0aGUgbm9uLXN0YXRp
YyBmdW5jdGlvbnMgc2hvdWxkIGJlIGludGVsX2Zvb18qIGFuZCB0aGlzIHNob3VsZAogICBpbnRl
cm5hbGx5IHNwbGl0IHRvIHBsYXRmb3JtX2Zvb18qIGluc3RlYWQgb2YgbGVhdmluZyB0aGUgaWYg
bGFkZGVycwogICBvciBmdW5jdGlvbiBwb2ludGVyIGluaXRpYWxpemF0aW9ucyB0byB0aGUgY2Fs
bGVycy4KClNvLCB0aG91Z2h0cyBvbiBuYW1pbmcgdGhlIGZ1bmN0aW9ucyBpbnRlbF9ndF9wbV8q
IHVwb24gbW92aW5nIHRoZW0/CgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9w
ZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
