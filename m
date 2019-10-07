Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80807CE6C6
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AA36E063;
	Mon,  7 Oct 2019 15:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAD66E063
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:09:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:43 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="187012666"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:25 +0300
Message-Id: <cover.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 00/11] drm/i915: modeset probe/remove cleanup
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

QW5vdGhlciBhdHRlbXB0IGF0IHRyeWluZyB0byBjbGVhbnVwIHRoZSBwcm9iZS9yZW1vdmUgd3J0
CmRpc3BsYXkuIFRMO0RSOiBJdCdzIGEgbWVzcy4KCkknbSB0cnlpbmcgdG8gY2hvcCB1cCB0aGUg
aW50ZWxfbW9kZXNldF8qKCkgZnVuY3Rpb25zIGluIGludGVsX2Rpc3BsYXkuYwp0byBzbWFsbGVy
IHBpZWNlcywgYW5kIGV2ZW50dWFsbHkgcmVtb3ZlIHRoZSBleHRyYQppOTE1X2RyaXZlcl9tb2Rl
c2V0XyooKSBsYXllciBmcm9tIGk5MTVfZHJ2LmMuCgpUaGUgaW50ZXJtZWRpYXRlIHN0ZXBzIGFy
ZW4ndCB0aGUgcHJldHRpZXN0LiBUaGUgZXJyb3IgcGF0aHMgaW4KcGFydGljdWxhciBhcmUgaGlk
ZW91cy4gKE5vdCB0aGF0IHRoZXkgYXJlIGdyZWF0IG5vdy4pCgpCdXQgSSdtIHRyeWluZyB0byBw
cm9iZSAoZWgpIGlmIHRoaXMgd291bGQgYmUgYSB3b3JrYWJsZSBkaXJlY3Rpb24uCgpCUiwKSmFu
aS4KCgpKYW5pIE5pa3VsYSAoMTEpOgogIGRybS9pOTE1OiByZWdpc3RlciB2Z2Egc3dpdGNoZXJv
byBsYXRlciwgdW5yZWdpc3RlciBlYXJsaWVyCiAgZHJtL2k5MTU6IHN3aXRjaCBpOTE1X2RyaXZl
cl9wcm9iZSgpIHRvIHVzZSBpOTE1IGxvY2FsIHZhcmlhYmxlCiAgZHJtL2k5MTU6IGtlZXAgcG93
ZXIgZG9tYWlucyBpbml0L3JlbW92ZSBjYWxscyBhdCB0aGUgc2FtZSBsZXZlbAogIGRybS9pOTE1
OiBzcGxpdCBpbnRlbF9tb2Rlc2V0X2RyaXZlcl9yZW1vdmUoKSB0byBwcmUvcG9zdCBpcnEKICAg
IHVuaW5zdGFsbAogIGRybS9pOTE1OiBzcGxpdCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZSgp
IHRvIHByZS9wb3N0IGlycSB1bmluc3RhbGwKICBkcm0vaTkxNTogc3BsaXQgaTkxNV9kcml2ZXJf
bW9kZXNldF9wcm9iZSgpIHRvIHByZS9wb3N0IGlycSBpbnN0YWxsCiAgZHJtL2k5MTU6IHNwbGl0
IGludGVsX21vZGVzZXRfaW5pdCgpIHRvIHByZS9wb3N0IGlycSBpbnN0YWxsCiAgZHJtL2k5MTU6
IHNwbGl0IGludGVsX21vZGVzZXRfaW5pdCgpIHByZS9wb3N0IGdlbSBpbml0CiAgZHJtL2k5MTU6
IG1vdmUgbW9yZSBkaXNwbGF5IHJlbGF0ZWQgcHJvYmUvcmVtb3ZlIHN0dWZmIHRvIGRpc3BsYXkK
ICBkcm0vaTkxNTogbW92ZSBtb2Rlc2V0IHByb2JlIGZhaWx1cmVzIGRvd24gdG8gaW50ZWxfZGlz
cGxheS5jCiAgZHJtL2k5MTU6IHJlbW92ZSB0aGUgbm93IHJlZHVuZGFudCBpOTE1X2RyaXZlcl9t
b2Rlc2V0XyogY2FsbCBsYXllcgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgIDgyICsrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmggfCAgIDMgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAg
ICAgICAgICAgICAgfCAxODMgKysrKysrKy0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAx
NDEgaW5zZXJ0aW9ucygrKSwgMTI3IGRlbGV0aW9ucygtKQoKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
