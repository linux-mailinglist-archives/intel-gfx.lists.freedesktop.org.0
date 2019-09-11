Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82999AFFAB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 17:10:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3ACD6EB2F;
	Wed, 11 Sep 2019 15:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F106EB2F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 15:10:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 08:10:16 -0700
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="179046557"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 08:10:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
In-Reply-To: <20190911150044.GB27222@mdroper-desk.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190911133129.27466-1-ville.syrjala@linux.intel.com>
 <20190911133129.27466-2-ville.syrjala@linux.intel.com>
 <20190911150044.GB27222@mdroper-desk.amr.corp.intel.com>
Date: Wed, 11 Sep 2019 18:10:12 +0300
Message-ID: <874l1i27jf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Fix CD2X pipe select masking
 during cdclk sanitation
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAxMSBTZXAgMjAxOSwgTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4gd3JvdGU6Cj4gSSdtIGNvbmZ1c2VkIHdoeSBwcmUtbWVyZ2UgQ0kgZmxhZ2dlZCB0aGUgcmVz
dWx0cyBhcyBhIHN1Y2Nlc3MgaWYgVEdMCj4gd2FzIGhpdHRpbmcgdGhpcz8KCkkgZGlkbid0IGNo
ZWNrIHRoZSBzcGVjaWZpY3MsIGJ1dCB0aGUgZnVsbCBzZXQgb2YgSUdUIHRlc3RzIGlzIG9ubHkg
cnVuCm9uIGEgbGltaXRlZCBudW1iZXIgb2YgcGxhdGZvcm1zLCBhbmQgVEdMIGlzIG5vdCB5ZXQg
b25lIG9mIHRoZW0uIFlvdQpnZXQgdGhlIG5hcnJvdyByYW5nZSBvZiB0ZXN0cyBvbiBhIHdpZGUg
cmFuZ2Ugb2YgcGxhdGZvcm1zIGFuZCB0aGUgd2lkZQpyYW5nZSBvZiB0ZXN0cyBvbiBhIG5hcnJv
dyByYW5nZSBvZiBwbGF0Zm9ybXMuCgpCUiwKSmFuaS4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwg
T3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
