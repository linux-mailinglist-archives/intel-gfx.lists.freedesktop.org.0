Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4281C8768A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352A36ED59;
	Fri,  9 Aug 2019 09:49:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C9126ED59
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 09:48:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 02:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="193358860"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 09 Aug 2019 02:48:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156527245351.22627.15346937144273849701@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1565271681.git.jani.nikula@intel.com>
 <156527245351.22627.15346937144273849701@skylake-alporthouse-com>
Date: Fri, 09 Aug 2019 12:53:11 +0300
Message-ID: <87sgqahdh4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/10] drm/i915: header cleanup of the day
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

T24gVGh1LCAwOCBBdWcgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDgtMDggMTQ6NDI6MzkpCj4+
IFRoZSBkYWlseSBkb3NlIG9mIGhlYWRlciBjbGVhbnVwLiBJIHRoaW5rIEknbGwgc2V0dGxlIGRv
d24gZm9yIGEgd2hpbGUgYWZ0ZXIKPj4gdGhpcyBvbmUuIDspCj4+IAo+PiBCUiwKPj4gSmFuaS4K
Pj4gCj4+IEphbmkgTmlrdWxhICgxMCk6Cj4+ICAgZHJtL2k5MTU6IHJlbW92ZSB1bnVzZWQgZGV2
X3ByaXYtPm5vX2F1eF9oYW5kc2hha2UKPj4gICBkcm0vaTkxNTogbW92ZSBhZGRfdGFpbnRfZm9y
X0NJKCkgdG8gaTkxNV91dGlscy5oCj4+ICAgZHJtL2k5MTU6IG1vdmUgSTkxNV9TVEFURV9XQVJO
KCkgYW5kIF9PTigpIHRvIGludGVsX2Rpc3BsYXkuaAo+PiAgIGRybS9pOTE1OiBtb3ZlIHByaW50
aW5nIGFuZCBsb2FkIGVycm9yIGluamVjdCB0byBpOTE1X3V0aWxzLltjaF0KPj4gICBkcm0vaTkx
NTogZXh0cmFjdCBpOTE1X3BlcmYuaCBmcm9tIGk5MTVfZHJ2LmgKPj4gICBkcm0vaTkxNTogZXh0
cmFjdCBpOTE1X3N5c2ZzLmggZnJvbSBpOTE1X2Rydi5oCj4+ICAgZHJtL2k5MTU6IGV4dHJhY3Qg
aTkxNV9zdXNwZW5kLmggZnJvbSBpOTE1X2Rydi5oCj4+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaTkx
NV9tZW1jcHkuaCBmcm9tIGk5MTVfZHJ2LmgKPj4gICBkcm0vaTkxNTogZXh0cmFjdCBnZW0vaTkx
NV9nZW1fc3RvbGVuLmggZnJvbSBpOTE1X2Rydi5oCj4+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaTkx
NV9nZW1fc2hyaW5rZXIuaCBmcm9tIGk5MTVfZHJ2LmgKPgo+IE5vIGNvbXBsYWludHMsCj4gUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVGhhbmtz
IGFnYWluLCBwdXNoZWQuCgo+IEkgdGhvdWdodCBJIGhhZCBkb25lIGEgYmV0dGVyIGpvYiBvZiBn
cmFiYmluZyB0aGUgR0VNIHN0dWZmIGFuZCBwdXR0aW5nCj4gaW4gaXRzIGR1bmdlb24uIE9idmlv
dXNseSBJIG5lZWQgdG8gam9pbiBpdCBpbiB0aGUgZHVuZ2VvbiBhbmQgdGhyb3cgYXdheQo+IHRo
ZSBrZXkuCgpZZXMsIHRoZXJlJ3Mgc3RpbGwgYSBidW5jaCBvZiBnZW0gc3R1ZmYgbGVmdCBpbiBp
OTE1X2Rydi5oLiBJIGp1c3QKZ3JhYmJlZCBzb21lIG9mIHRoZSBsb3cgaGFuZ2luZyBmcnVpdCBo
ZXJlOyBJIHJlYWxseSB3b3VsZG4ndCBtaW5kIGlmCnlvdSBmaW5pc2hlZCB0aGUgam9iIQoKQlIs
CkphbmkuCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRl
cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
