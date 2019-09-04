Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E0DA7F69
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 11:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA3389100;
	Wed,  4 Sep 2019 09:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C87C89100
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2019 09:30:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 02:30:53 -0700
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="176877929"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 02:30:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Swati Sharma <swati2.sharma@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1567538578-4489-1-git-send-email-swati2.sharma@intel.com>
Date: Wed, 04 Sep 2019 12:30:45 +0300
Message-ID: <87ef0w4ddm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v10][PATCH 0/8] drm/i915: adding state checker for
 gamma lut values
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
Cc: daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNCBTZXAgMjAxOSwgU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNv
bT4gd3JvdGU6Cj4gSW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8g
dmFsaWRhdGUgZ2FtbWEKPiAoOEJJVCBhbmQgMTBCSVQpLlRoaXMgcmVhZHMgaGFyZHdhcmUgc3Rh
dGUsIGFuZCBjb21wYXJlcyB0aGUgb3JpZ2luYWxseQo+IHJlcXVlc3RlZCBzdGF0ZShzL3cpIHRv
IHRoZSBzdGF0ZSByZWFkIGZyb20gdGhlIGhhcmR3YXJlLgo+IFRoaXMgaXMgZG9uZSBmb3IgbGVn
YWN5LCBpbGssIGdsayBhbmQgdGhlaXIgdmFyaWFudCBwbGF0Zm9ybXMuIFJlc3Qgb2YKPiB0aGUg
cGxhdGZvcm1zIHdpbGwgYmUgZW5hYmxlZCBvbiB0b3Agb2YgdGhpcyBsYXRlci4KPgo+IEludGVu
dGlvbmFsbHksIGV4Y2x1ZGVkIGJkdyBhbmQgaXZiIHNpbmNlIHRoZXkgaGF2ZSBzcGlsdCBnYW1t
YSBtb2RlOwo+IGZvciB3aGljaCBkZWdhbW1hIHJlYWQgb3V0cyBhcmUgcmVxdWlyZWQgKHdoaWNo
IEkgdGhpbmsgc2hvdWxkbid0IGJlCj4gaW5jbHVkZWQgaW4gdGhpcyBwYXRjaCBzZXJpZXMpLiBX
aWxsIGluY2x1ZGUgYWZ0ZXIgZGVnYW1tYSBzdGF0ZSBjaGVja2VyCj4gaXMgY29tcGxldGVkLgoK
UHVzaGVkIHRoZSBzZXJpZXMsIHRoYW5rcyBmb3IgdGhlIHBhdGNoZXMgYW5kIHJldmlldyEKClBs
ZWFzZSBwcm9jZWVkIHdpdGggdGhlIG5leHQgc3RlcHMhIEl0IHNob3VsZCBiZSBlYXNpZXIgbm93
IHRoYXQgeW91IGNhbgpmb2N1cyBvbiBlbmFibGluZyB0aGUgY2hlY2tzIGZvciBvbmUgZmVhdHVy
ZSBvciBwbGF0Zm9ybSwgYW5kIGlmIG5lZWRlZCwKb25lIHBhdGNoLCBhdCBhIHRpbWUuIDopCgpC
UiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
