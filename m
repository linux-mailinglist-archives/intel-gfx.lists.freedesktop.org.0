Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FD3372B9B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 16:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 551C86EB0E;
	Tue,  4 May 2021 14:05:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16D7C6EB0E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 May 2021 14:05:53 +0000 (UTC)
IronPort-SDR: 9HzZEmCL7f6BgNsIMJEbYjxxyXadiXo3oRWHyrAuJr31cl+wk8D7DuTpCbrenxijDIZjI+EZIz
 Re7we7G0sJsg==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="185454730"
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="185454730"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 07:05:52 -0700
IronPort-SDR: KjBM6+2lcdeOazwmifmb0roD8mt03wgbJkrlk7RwCywtN3TqdzZSd0pj5EdP/I1CzIx14nG7je
 Lz7GY+RzLUJg==
X-IronPort-AV: E=Sophos;i="5.82,272,1613462400"; d="scan'208";a="433296190"
Received: from radwanib-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 07:05:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 May 2021 17:05:43 +0300
Message-ID: <87tuniy4p4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/17] drm/i915: DDI buf trans cleaup and
 fixes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMSBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgRERJIGJ1ZiB0cmFucyBmdW5jdGlvbnMga2VlcCB0dXJu
aW5nIGludG8gYmFkCj4gc3BhZ2hldHRpIGV2ZXJ5IHRpbWUgYSBuZXcgcGxhdGZvcm0gZ2V0cyBh
ZGRlZC4KPiBTcGxpdCB0aGUgcGxhdGZvcm1zIHVwIHByb3Blcmx5IGFuZCB0dXJuIHRoZSB3aG9s
ZSAKPiB0aGluZyBpbnRvIGEgdmZ1bmMgdG8gbWFrZSBpdCBlYXNpZXIgdG8gbWFuYWdlCj4gbXVs
dGlwbGUgcGxhdGZvcm1zLgoKT25lIG9mIHRoZSBtb3N0IHdhbnRlZCByZWZhY3RvcmluZyBzZXJp
ZXMgSSd2ZSBzZWVuIGluIGEgd2hpbGUhCgpJIGhhdmVuJ3QgcmV2aWV3ZWQgaXQsIGJ1dCBJJ3Zl
IGdsYW5jZWQgdGhyb3VnaCBpdCBhbGwuIEFsbW9zdCBzdGFydGVkCm5pdHBpY2tpbmcgYWJvdXQg
c29tZSBmdW5jdGlvbiBuYW1pbmcgZWFybHkgb24sIGJ1dCByZWFsaXplZCB0aGV5IHdlcmUKbWFk
ZSBzdGF0aWMgbGF0ZXIgaW4gdGhlIHNlcmllcy4gT3ZlcmFsbCBsb29rZWQgbGlrZSBnb29kIHN0
dWZmLgoKQWNrZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgoKPgo+
IFZpbGxlIFN5cmrDpGzDpCAoMTcpOgo+ICAgZHJtL2k5MTU6IHMvaW50ZWwvaHN3LyBmb3IgaHN3
L2JkZS9za2wgYnVmIHRyYW5zCj4gICBkcm0vaTkxNTogSW50cm9kdWNlIGhzd19nZXRfYnVmX3Ry
YW5zKCkKPiAgIGRybS9pOTE1OiBXcmFwIHRoZSBwbGF0Zm9ybSBzcGVjaWZpYyBidWYgdHJhbnMg
c3RydWN0cyBpbnRvIGEgdW5pb24KPiAgIGRybS9pOTE1OiBSZW5hbWUgZGtsIHBoeSBidWYgdHJh
bnMgdGFibGVzCj4gICBkcm0vaTkxNTogV3JhcCB0aGUgYnVmIHRyYW5zIHRhYmxlcyBpbnRvIGEg
c3RydWN0Cj4gICBkcm0vaTkxNTogSW50cm9kdWNlIGludGVsX2dldF9idWZfdHJhbnMoKQo+ICAg
ZHJtL2k5MTU7IFJldHVybiB0aGUgd2hvbGUgYnVmX3RyYW5zIHN0cnVjdCBmcm9tIGdldF9idWZf
dHJhbnMoKQogICAgICAgICAgICBeCgpIZXJlJ3Mgb25lIHJldmlldyBjb21tZW50LiA7KQoKPiAg
IGRybS9pOTE1OiBTdG9yZSB0aGUgSERNSSBkZWZhdWx0IGVudHJ5IGluIHRoZSBidWcgdHJhbnMg
c3RydWN0Cj4gICBkcm0vaTkxNTogSW50cm9kdWNlIGVuY29kZXItPmdldF9idWZfdHJhbnMoKQo+
ICAgZHJtL2k5MTU6IENsZWFuIHVwIGhzdy9iZHcvc2tsL2tibCBidWYgdHJhbnMgZnVuY3MKPiAg
IGRybS9pOTE1OiBJbnRyb2R1Y2UgcmtsX2dldF9jb21ib19idWZfdHJhbnMoKQo+ICAgZHJtL2k5
MTU6IEZpeCBkZzEgYnVmIHRyYW5zIHRhYmxlcwo+ICAgZHJtL2k5MTU6IERlZHVwbGljYXRlIGlj
bCBEUCBIQlIyIHZzLiBlRFAgSEJSMyB0YWJsZQo+ICAgZHJtL2k5MTU6IEZpeCBlaGwgZWRwIGhi
cjIgdnN3aW5nIHRhYmxlCj4gICBkcm0vaTkxNTogQ2xlYW4gdXAganNsL2VobCBidWYgdHJhbnMg
ZnVuY3Rpb25zCj4gICBkcm0vaTkxNTogTnVrZSBidWZfdHJhbnMgaGRtaSBmdW5jdGlvbnMKPiAg
IGRybS9pOTE1OiBBZGQgdGhlIG1pc3NpbmcgYWRscyB2c3dpbmcgdGFibGVzCj4KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYyAgICAgIHwgICAgMyArCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8ICAxNjIgKy0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaCAgICAgIHwgICAgNCArLQo+ICAu
Li4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCAyMzU0ICsrKysr
KysrKystLS0tLS0tCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMu
aCAgICB8ICAgNjMgKy0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oICAgIHwgICAgNCArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmRp
LmMgICAgICB8ICAgIDUgKy0KPiAgNyBmaWxlcyBjaGFuZ2VkLCAxNDMyIGluc2VydGlvbnMoKyks
IDExNjMgZGVsZXRpb25zKC0pCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
