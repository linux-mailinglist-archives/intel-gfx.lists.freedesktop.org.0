Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3CD2D02E4
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Dec 2020 11:43:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A2E388EF0;
	Sun,  6 Dec 2020 10:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFEBB88EF0
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Dec 2020 10:43:13 +0000 (UTC)
IronPort-SDR: 8LG85QY8T66cS0wBO8NAxzkwHJpfTOs71nlo9cxUiHZ1QAjrHs/ON8nliLyXOJ1AeCObPqCQK0
 xhClk2g3GR8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9826"; a="191836750"
X-IronPort-AV: E=Sophos;i="5.78,397,1599548400"; d="scan'208";a="191836750"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 02:43:12 -0800
IronPort-SDR: P3xwWDLjEtkZsxIKqYdlhDFFX130ZcayyPcZ6YpQucjfTYQi4QyG/adxIL2Rbh9AwaHU03Xbl7
 5bwvMnI7pO7w==
X-IronPort-AV: E=Sophos;i="5.78,397,1599548400"; d="scan'208";a="362722028"
Received: from bmaguire-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.87.137])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 02:43:10 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201204171529.6417-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201204171455.6276-1-chris@chris-wilson.co.uk>
 <20201204171529.6417-1-chris@chris-wilson.co.uk>
Date: Sun, 06 Dec 2020 12:43:07 +0200
Message-ID: <877dpvb4g4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Inject a failure into the
 initial modeset
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAwNCBEZWMgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IEV4cGVyaW1lbnQgd2l0aCBob3cgZmF1bHQgdG9sZXJhbnQgd2UgYXJlIGlm
IHRoZSBpbml0aWFsIG1vZGVzZXQgZmFpbHMKPiBhbmQgd2UgbmVlZCB0byBhYm9ydCB0aGUgZHJp
dmVyIGxvYWQuCj4KPiBTdWdnZXN0ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCj4gaW5kZXggNmU1YjkzZjZhMjVlLi44NjEyNGI4ZDE1NmQgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xODQ1Niw3ICsxODQ1
Niw5IEBAIHN0YXRpYyBpbnQgaW50ZWxfaW5pdGlhbF9jb21taXQoc3RydWN0IGRybV9kZXZpY2Ug
KmRldikKPiAgCQl9Cj4gIAl9Cj4gIAo+IC0JcmV0ID0gZHJtX2F0b21pY19jb21taXQoc3RhdGUp
Owo+ICsJcmV0ID0gLUVOT0RFVjsKPiArCWlmICghaTkxNV9pbmplY3RfcHJvYmVfZmFpbHVyZSh0
b19pOTE1KGRldikpKQo+ICsJCXJldCA9IGRybV9hdG9taWNfY29tbWl0KHN0YXRlKTsKCklmIHRo
aXMgaXMganVzdCBmb3IgQ0kgdGVzdGluZywgZmluZS4gQnV0IGZvciBhY3R1YWwgbWVyZ2luZywg
cGxlYXNlCmRvbid0IGhpZGUgdGhlIGhhcHB5IGRheSBzY2VuYXJpbyBpbiB0aGUgcHJvYmUgZmFp
bHVyZSBpZiBicmFuY2guCgpCUiwKSmFuaS4KCgo+ICAKPiAgb3V0Ogo+ICAJaWYgKHJldCA9PSAt
RURFQURMSykgewoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBD
ZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
