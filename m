Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00071181CF1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 16:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747B26E9A6;
	Wed, 11 Mar 2020 15:54:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CDB56E9A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 15:54:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 08:54:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="236321742"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 11 Mar 2020 08:54:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Mar 2020 17:54:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 17:54:19 +0200
Message-Id: <20200311155422.3043-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/3] drm/i915: Hotplug cleanups
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
bWFpbmRlciBvZiBteSBob3RwbHVnIGNsZWFudXBzLCByZWJhc2VkIG9uY2UgbW9yZS4KClZpbGxl
IFN5cmrDpGzDpCAoMyk6CiAgZHJtL2k5MTU6IFR1cm4gaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5l
Y3RlZCgpIGluIGEgdmZ1bmMKICBkcm0vaTkxNTogU3Rhc2ggaHBkIHN0YXR1cyBiaXRzIHVuZGVy
IGRldl9wcml2CiAgZHJtL2k5MTU6IFVzZSBzdGFzaGVkIGF3YXkgaHBkIGlzciBiaXRzIGluCiAg
ICBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKCkKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAgNDEgKysrKwogLi4uL2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyAgICAgICB8IDE4OCArKy0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jICAgICAgIHwgICA3ICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggICAgICAgfCAgIDMgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgICB8ICAgMiArCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAgICAgfCAxOTggKysrKysrKysrKy0tLS0tLS0t
CiA3IGZpbGVzIGNoYW5nZWQsIDE3NiBpbnNlcnRpb25zKCspLCAyNjQgZGVsZXRpb25zKC0pCgot
LSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
