Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37028962AA
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:42:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 303E189ED6;
	Tue, 20 Aug 2019 14:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF9189ED6
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:42:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 07:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195784114"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 07:42:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <16108ca4-8bc5-cd7f-4cdc-bd22406a00fa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190813195917.30679-1-animesh.manna@intel.com>
 <20190813195917.30679-2-animesh.manna@intel.com> <87d0h7erk9.fsf@intel.com>
 <16108ca4-8bc5-cd7f-4cdc-bd22406a00fa@intel.com>
Date: Tue, 20 Aug 2019 17:42:16 +0300
Message-ID: <87ftlvew53.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/15] drm/i915/dsb: DSB context creation.
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNCBBdWcgMjAxOSwgQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+IHdyb3RlOgo+IFllcywgaGF2ZSBtaXNzZWQgYW5kIGxvY2FsIGJ1aWxkIGFsc28gY291bGQg
bm90IGNhdGNoIGFzIG1heWJlIG9iamVjdCAKPiBmaWxlcyB3ZXJlIHByZXNlbnQgaW4gdGhhdCBk
aXJlY3RvcnkuCj4gRml4ZWQgdGhlIGlzc3VlIGFuZCBsYXRlc3QgdHJ5Ym90IGxpbmsgLSAKPiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1MTYxLwoKSSBkb24ndCBo
YXZlIHRoZSBwYXRjaGVzLiBJJ20gbm90IHN1YnNjcmliZWQgdG8gdGhlIHRyeWJvdCBsaXN0LCBy
ZWFsbHkKbW9zdCBwZW9wbGUgc2hvdWxkbid0IGJlLCBhbmQgdHJ5Ym90IGlzIG5vdCBmb3IgcmV2
aWV3IGFueXdheS4gUGF0Y2hlcwp3b24ndCBiZSBhcHBsaWVkIGZyb20gdHJ5Ym90IGxpc3QgZWl0
aGVyLCBpbnRlbC1nZnggb25seS4KCllvdSBjYW4gdXNlIHRyeWJvdCBpZiB5b3UgbmVlZCB0byBk
ZWJ1ZyBhbiBpc3N1ZSBvciB0ZXN0IHNvbWV0aGluZyBvdXQsCmJ1dCBpdCBzaG91bGRuJ3QgYmUg
cGFydCBvZiB5b3VyIHVzdWFsIHVwc3RyZWFtIHdvcmtmbG93LiBJZiB5b3Ugd2FudCB0bwpnZXQg
YW55dGhpbmcgcmV2aWV3ZWQgb3IgbWVyZ2VkIHVwc3RyZWFtLCB0aGF0J3Mgbm90IGl0LgoKQlIs
CkphbmkuCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRl
cgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
