Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E54372DC011
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 13:18:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E47F6E1A7;
	Wed, 16 Dec 2020 12:18:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB256E1A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Dec 2020 12:18:08 +0000 (UTC)
IronPort-SDR: A1hYrNlSBflxZmtuYiB4ik94IyAiRshIqCRtosE5QF2PJRGwGcQghw/jgYwVrWVjj4p42e6oVv
 0j4W5yzitfDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="259778650"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="259778650"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:18:08 -0800
IronPort-SDR: FGrswm6E5BZEfcTSklr42i4bnanm9PD6cK4T7uiM0D0jTH5V/sXnPuDg+0/ottoBIyGfYBvmLq
 Dl8oyW+UTKMg==
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="369003551"
Received: from slevy-mobl.ger.corp.intel.com (HELO localhost)
 ([10.214.192.176])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 04:18:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@intel.com>
In-Reply-To: <X9nzGCAqpRWDCMh5@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201211072922.19101-1-airlied@gmail.com>
 <20201211072922.19101-6-airlied@gmail.com> <87czza5apy.fsf@intel.com>
 <X9nzGCAqpRWDCMh5@intel.com>
Date: Wed, 16 Dec 2020 14:18:01 +0200
Message-ID: <87v9d23pxi.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: refactor some crtc code out
 of intel display.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxNiBEZWMgMjAyMCwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBEZWMgMTYsIDIwMjAgYXQgMTI6MDM6MzdQTSArMDIwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE9uIEZyaSwgMTEgRGVjIDIwMjAsIERhdmUgQWlybGllIDxh
aXJsaWVkQGdtYWlsLmNvbT4gd3JvdGU6Cj4+ID4gRnJvbTogRGF2ZSBBaXJsaWUgPGFpcmxpZWRA
cmVkaGF0LmNvbT4KPj4gPgo+PiA+IFRoZXJlIG1heSBiZSBtb3JlIGNydGMgY29kZSB0aGF0IGNh
biBiZSBwdWxsZWQgb3V0LCBidXQgdGhpcwo+PiA+IGlzIGEgZ29vZCBzdGFydC4KPj4gPgo+PiA+
IFJGQzogbWF5YmUgY2FsbCB0aGUgbmV3IGZpbGUgc29tZXRoaW5nIGRpZmZlcmVudAo+PiAKPj4g
SSBjaGVja2VkIHRoaXMgaXMganVzdCBjb2RlIG1vdmVtZW50LiBJIGRpZCBjbGVhbiB1cCBpbnRl
bF9jcnRjLmgKPj4gbG9jYWxseSBhIGJpdCB0aG91Z2guIChJJ2xsIHByb2JhYmx5IHJlLXNlbmQg
dGhlIHNlcmllcyB3aXRoIGEgZmV3IGZpeGVzCj4+IHRvIHBhc3MgQ0kuKQo+PiAKPj4gSSdtIG5v
dCBhdmVyc2UgdG8gcmVuYW1pbmcgdGhlIGZpbGUgbGF0ZXIgaWYgbmVlZGVkLCBJJ20gbW9yZSBj
b25jZXJuZWQKPj4gYWJvdXQgY2hvb3NpbmcgYSBtZWFuaW5nZnVsIGJ1bmNoIG9mIGZ1bmN0aW9u
cyB0byB0YWtlIG91dCBhbmQgcHV0IGluCj4+IHRoZSBuZXcgZmlsZS4KPj4gCj4+IFZpbGxlLCBJ
IHNhdyB5b3UgaGFkIHNvbWUgY29tbWVudHMgYWJvdXQgdGhpcyAtIGlzIHRoaXMgbWFraW5nIHNl
bnNpYmxlCj4+IHByb2dyZXNzIG9yIG1ha2luZyBmdXJ0aGVyIHJlZmFjdG9yaW5nIGhhcmRlcj8K
Pgo+IEp1c3QgbWVhbnMgd2UgaGF2ZSB0byBtb3ZlIDkwJSBvZiB0aGUgcHJvcG9zZWQgaW50ZWxf
Y3J0Yy5jCj4gaW50byBpOXh4X3BsYW5lLmMgYWdhaW4uIFNvIHRoZSBwbGFuZSBiaXRzIGhlcmUg
YXJlIGp1c3QKPiBwb2ludGxlc3MgY2h1cm4gSU1PLgoKRmFpciBlbm91Z2guIEkganVzdCBkb24n
dCB3YW50IHRvIHN0YWxsIG9uIHRoaXMgYWdhaW4gbGlrZSB3ZSd2ZSBzdGFsbGVkCmV2ZXJ5IHRp
bWUgdGhlcmUncyBiZWVuIHByb3Bvc2FscyB0byBjbGVhbiB1cCBpbnRlbF9kaXNwbGF5LmMuIEFu
ZCBpdCdzCmFsd2F5cyBhYm91dCBzb21lIHRoaW5ncyB0aGF0IGNvdWxkIGJlIG1vdmVkIHRvIGEg
ZGlmZmVyZW50IGZpbGUgb3IKZ3JvdXBlZCBkaWZmZXJlbnRseSBvciBzb21ldGhpbmcuIEknbSBw
cmV0dHkgY2xvc2UgdG8gYSBwb2ludCB3aGVyZSBJJ2xsCnRha2UgKmFueXRoaW5nKiB0byBjaG9w
IHVwIHRoZSBmaWxlLCBhbmQgdGhlbiB3ZSdsbCBoYXZlIGJldHRlciBjbGFyaXR5CndpdGggc21h
bGxlciBmaWxlcyB3aGVuIHRoZSBkdXN0IHNldHRsZXMuCgpCUiwKSmFuaS4KCgotLSAKSmFuaSBO
aWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
