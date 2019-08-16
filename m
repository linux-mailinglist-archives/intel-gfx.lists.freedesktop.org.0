Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0348FCFA
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 936C66EB12;
	Fri, 16 Aug 2019 08:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15BE66EB04
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851371"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:30 -0700
Message-Id: <20190816080503.28594-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/39] drm/i915/bdw+: Enable PSR in any eDP port
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpGcm9t
IEJEVysgdGhlIFBTUiByZWdpc3RlcnMgbW92ZWQgZnJvbSBERElBIHRvIHRyYW5zY29kZXIsIHNv
IGFueSBwb3J0CndpdGggYSBlRFAgcGFuZWwgY29ubmVjdGVkIGNhbiBoYXZlIFBTUiwgc28gbGV0
cyByZW1vdmUgdGhpcyBsaW1pdGF0aW9uLgoKQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5h
a2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDcgKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCAz
NmJkYzE2ZmI0M2IuLjZlZWRkODI4MWU3MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCkBAIC01NzgsMTEgKzU3OCwxMCBAQCB2b2lkIGludGVsX3Bzcl9jb21wdXRl
X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCiAJLyoKIAkgKiBIU1cgc3BlYyBl
eHBsaWNpdGx5IHNheXMgUFNSIGlzIHRpZWQgdG8gcG9ydCBBLgotCSAqIEJEVysgcGxhdGZvcm1z
IGhhdmUgYSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlciB0cmFuc2NvZGVyIGJ1dAotCSAq
IGZvciBub3cgaXQgb25seSBzdXBwb3J0cyBvbmUgaW5zdGFuY2Ugb2YgUFNSLCBzbyBsZXRzIGtl
ZXAgaXQKLQkgKiBoYXJkY29kZWQgdG8gUE9SVF9BCisgICAgICAgICAqIEJEVysgcGxhdGZvcm1z
IHdpdGggRERJIGltcGxlbWVudGF0aW9uIG9mIFBTUiBoYXZlIGRpZmZlcmVudAorCSAqIFBTUiBy
ZWdpc3RlcnMgcGVyIHRyYW5zY29kZXIuCiAJICovCi0JaWYgKGRpZ19wb3J0LT5iYXNlLnBvcnQg
IT0gUE9SVF9BKSB7CisJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpICYmIGRpZ19wb3J0LT5iYXNl
LnBvcnQgIT0gUE9SVF9BKSB7CiAJCURSTV9ERUJVR19LTVMoIlBTUiBjb25kaXRpb24gZmFpbGVk
OiBQb3J0IG5vdCBzdXBwb3J0ZWRcbiIpOwogCQlyZXR1cm47CiAJfQotLSAKMi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
