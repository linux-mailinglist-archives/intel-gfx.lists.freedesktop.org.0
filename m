Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A77510D43C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 11:35:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD5C6E8CD;
	Fri, 29 Nov 2019 10:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EC56E8CD;
 Fri, 29 Nov 2019 10:35:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:35:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,257,1571727600"; d="scan'208";a="199774627"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 02:35:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org
In-Reply-To: <c89c23a4393566c09c2372c4d69c851eb2724866.1575022735.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1575022735.git.jani.nikula@intel.com>
 <c89c23a4393566c09c2372c4d69c851eb2724866.1575022735.git.jani.nikula@intel.com>
Date: Fri, 29 Nov 2019 12:35:24 +0200
Message-ID: <87k17jkm1f.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 10/14] video: constify fb ops across all
 drivers
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyOSBOb3YgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gTm93IHRoYXQgdGhlIGZib3BzIG1lbWJlciBvZiBzdHJ1Y3QgZmJfaW5mbyBpcyBj
b25zdCwgd2UgY2FuIHN0YXJ0Cj4gbWFraW5nIHRoZSBvcHMgY29uc3QgYXMgd2VsbC4KPgo+IFRo
aXMgZG9lcyBub3QgY292ZXIgYWxsIGRyaXZlcnM7IHNvbWUgYWN0dWFsbHkgbW9kaWZ5IHRoZSBm
Ym9wcyBzdHJ1Y3QsCj4gZm9yIGV4YW1wbGUgdG8gYWRqdXN0IGZvciBkaWZmZXJlbnQgY29uZmln
dXJhdGlvbnMsIGFuZCBvdGhlcnMgZG8gbW9yZQo+IGludm9sdmVkIHRoaW5ncyB0aGF0IEknZCBy
YXRoZXIgbm90IHRvdWNoIGluIHByYWN0aWNhbGx5IG9ic29sZXRlCj4gZHJpdmVycy4gTW9zdGx5
IHRoaXMgaXMgdGhlIGxvdyBoYW5naW5nIGZydWl0IHdoZXJlIHdlIGNhbiBhZGQgImNvbnN0Igo+
IGFuZCBiZSBkb25lIHdpdGggaXQuCj4KPiB2MjoKPiAtIGZpeCB0eXBvIChDaHJpc3RvcGhlIGRl
IERpbmVjaGluKQo+IC0gdXNlICJzdGF0aWMgY29uc3QiIGluc3RlYWQgb2YgImNvbnN0IHN0YXRp
YyIgaW4gbXgzZmIuYwo+IC0gYWxzbyBjb25zdGlmeSBzbXNjdWZ4LmMKPgo+IENjOiBsaW51eC1m
YmRldkB2Z2VyLmtlcm5lbC5vcmcKPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVs
LnZldHRlckBmZndsbC5jaD4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+Cj4gZml4dXAgdG8gdmlkZW8gZHJpdmVycwoKUmViYXNlIGFydGVmYWN0
LCB0byBiZSByZW1vdmVkIGJlZm9yZSBhcHBseWluZy4uLgoKQlIsCkphbmkuCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
