Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D27B222989
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B676EC92;
	Thu, 16 Jul 2020 17:21:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D0F16EC93
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:13 +0000 (UTC)
IronPort-SDR: e8iP7/Io49u/is1LaRdQoX/urEXd9BVtvm0v96O4m9v/HxWxE7dHfaU7oXBa6PVZHJWRgPXK/b
 VAhGT+c4DJrw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="150832960"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="150832960"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:12 -0700
IronPort-SDR: n2498UB/1km+dejAnd5Ot71o/5WzPsUHX49k1q08TLqyd0WMQaMNcW/A6BVFgiGVZwJDN+Y5/A
 udQZd2ogPjRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="326587965"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 16 Jul 2020 10:21:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:53 +0300
Message-Id: <20200716172106.2656-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/14] drm/i915: Update Haswell PCI IDs
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

RnJvbTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+CgpSZWNsYXNz
aWZ5IDB4MDQyNiBhcyBHVDMgKEdUMispIGFjY29yZGluZyB0byBzcGVjaWZpY2F0aW9ucyBhbmQg
dGhlIHNlY29uZApsZWFzdCBzaWduaWZpY2FudCBkaWdpdC4KClNpZ25lZC1vZmYtYnk6IEFsZXhl
aSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRlbGVAZ21haWwuY29tPgpbdnN5cmphbGE6IHMvR1QyL0dU
My8gaW4gdGhlIGNvbW1lbnRdClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oCmluZGV4IDhlN2FlMzBlYmNiYi4uNTE4MzFjNmY2MDNjIDEwMDY0NAotLS0gYS9pbmNs
dWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAg
LTIyMSw3ICsyMjEsNiBAQAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwRDFCLCBpbmZvKSwgLyogQ1JX
IEdUMiByZXNlcnZlZCAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDBEMUUsIGluZm8pLCAvKiBD
UlcgR1QyIHJlc2VydmVkICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MDQxNiwgaW5mbyksIC8q
IEdUMiBtb2JpbGUgKi8gXAotCUlOVEVMX1ZHQV9ERVZJQ0UoMHgwNDI2LCBpbmZvKSwgLyogR1Qy
IG1vYmlsZSAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDBDMTYsIGluZm8pLCAvKiBTRFYgR1Qy
IG1vYmlsZSAqLyBcCiAJSU5URUxfVkdBX0RFVklDRSgweDBEMTYsIGluZm8pICAvKiBDUlcgR1Qy
IG1vYmlsZSAqLwogCkBAIC0yNDYsNiArMjQ1LDcgQEAKIAlJTlRFTF9WR0FfREVWSUNFKDB4MEQy
QSwgaW5mbyksIC8qIENSVyBHVDMgc2VydmVyICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MEQy
QiwgaW5mbyksIC8qIENSVyBHVDMgcmVzZXJ2ZWQgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgw
RDJFLCBpbmZvKSwgLyogQ1JXIEdUMyByZXNlcnZlZCAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgw
eDA0MjYsIGluZm8pLCAvKiBHVDMgbW9iaWxlICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MEMy
NiwgaW5mbyksIC8qIFNEViBHVDMgbW9iaWxlICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MEQy
NiwgaW5mbykgIC8qIENSVyBHVDMgbW9iaWxlICovCiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
