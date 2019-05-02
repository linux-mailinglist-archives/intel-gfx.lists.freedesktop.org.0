Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4D311BFF
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:00:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A829893C0;
	Thu,  2 May 2019 15:00:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DC2896E4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:00:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963646"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:00:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:38 +0300
Message-Id: <963ba7fa0111135c3e796bfc9f86d6e33724758e.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 04/13] drm/i915: remove unused/stale macros and
 comments from intel_drv.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVkdWNlIGNsdXR0ZXIgZnJvbSBpbnRlbF9kcnYuaC4KClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHJ2LmggfCA5IC0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcnYuaAppbmRleCA3MDk2NDcuLmFkZGY2ZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHJ2LmgKQEAgLTE1OCwxNSArMTU4LDYgQEAgc3RydWN0IGRybV9wcmludGVyOwog
ICogRGlzcGxheSByZWxhdGVkIHN0dWZmCiAgKi8KIAotLyogc3RvcmUgaW5mb3JtYXRpb24gYWJv
dXQgYW4gSXh4eCBEVk8gKi8KLS8qIFRoZSBpODMwLT5pODY1IHVzZSBtdWx0aXBsZSBEVk9zIHdp
dGggbXVsdGlwbGUgaTJjcyAqLwotLyogdGhlIGk5MTUsIGk5NDUgaGF2ZSBhIHNpbmdsZSBzRFZP
IGkyYyBidXMgLSB3aGljaCBpcyBkaWZmZXJlbnQgKi8KLSNkZWZpbmUgTUFYX09VVFBVVFMgNgot
LyogbWF4aW11bSBjb25uZWN0b3JzIHBlciBjcnRjcyBpbiB0aGUgbW9kZSBzZXQgKi8KLQotI2Rl
ZmluZSBJTlRFTF9JMkNfQlVTX0RWTyAxCi0jZGVmaW5lIElOVEVMX0kyQ19CVVNfU0RWTyAyCi0K
IC8qIHRoZXNlIGFyZSBvdXRwdXRzIGZyb20gdGhlIGNoaXAgLSBpbnRlZ3JhdGVkIG9ubHkKICAg
IGV4dGVybmFsIGNoaXBzIGFyZSB2aWEgRFZPIG9yIFNEVk8gb3V0cHV0ICovCiBlbnVtIGludGVs
X291dHB1dF90eXBlIHsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
