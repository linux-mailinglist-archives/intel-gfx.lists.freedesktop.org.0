Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F7C391254
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 10:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD996E49A;
	Wed, 26 May 2021 08:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13C5A6E49A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 08:29:13 +0000 (UTC)
IronPort-SDR: /0QV7HNzifXmI/82qcDmsqymZyh9wRRVja309mi9tNC0Yh5b+Jewzy76ZhxY3rqVrbtBCBZ3UT
 Ig3ZwrQMK3dQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="287988485"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="287988485"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 01:29:10 -0700
IronPort-SDR: wnnqf9/+CtPYVw2kRWo7vh9VyN4nW3DbRGuZyEVcfTzkx19TG3Vu1KIzlI7zIAEDF7/ZaBlSbf
 5PmzDRcfhsxQ==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="476829964"
Received: from astiegle-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.54.167])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 01:29:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 May 2021 11:29:03 +0300
Message-Id: <20210526082903.26395-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: enable MSO on pipe B
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gQURMLVAsIGl0J3MgcG9zc2libGUgdG8gZW5hYmxlIHRoZSBzdHJlYW0gc3BsaXR0ZXIgb24g
cGlwZSBCIGluCmFkZGl0aW9uIHRvIHBpcGUgQS4KCkJzcGVjOiA1MDE3NApDYzogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAz
ZDg5MTg2NzQxNTMuLjRkNmYxYTIwNmY1NiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCkBAIC00NzI5LDkgKzQ3MjksMTIgQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQogCiAJCWRp
Z19wb3J0LT5ocGRfcHVsc2UgPSBpbnRlbF9kcF9ocGRfcHVsc2U7CiAKLQkJLyogU3BsaXR0ZXIg
ZW5hYmxlIGZvciBlRFAgTVNPIGlzIHN1cHBvcnRlZCBmb3IgcGlwZSBBIG9ubHkuICovCi0JCWlm
IChkaWdfcG9ydC0+ZHAubXNvX2xpbmtfY291bnQpCisJCS8qIFNwbGl0dGVyIGVuYWJsZSBmb3Ig
ZURQIE1TTyBpcyBsaW1pdGVkIHRvIGNlcnRhaW4gcGlwZXMuICovCisJCWlmIChkaWdfcG9ydC0+
ZHAubXNvX2xpbmtfY291bnQpIHsKIAkJCWVuY29kZXItPnBpcGVfbWFzayA9IEJJVChQSVBFX0Ep
OworCQkJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkKKwkJCQllbmNvZGVyLT5waXBlX21h
c2sgfD0gQklUKFBJUEVfQik7CisJCX0KIAl9CiAKIAkvKiBJbiB0aGVvcnkgd2UgZG9uJ3QgbmVl
ZCB0aGUgZW5jb2Rlci0+dHlwZSBjaGVjaywgYnV0IGxlYXZlIGl0IGp1c3QgaW4KLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
