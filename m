Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE6CEB58A
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:57:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98B4B6F3B1;
	Thu, 31 Oct 2019 16:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201FA6F397
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:57:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:57:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="206160497"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 31 Oct 2019 09:57:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2019 18:57:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Oct 2019 18:56:51 +0200
Message-Id: <20191031165652.10868-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
References: <20191031165652.10868-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Sort format arrays consistently
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIHRyeSB0byBrZWVwIHRoZSBwaXhlbCBmb3JtYXQgYXJyYXlzIHNvbWV3aGF0IHNvcnRlZDoK
MS4gUkdCIGJlZm9yZSBZVVYKMi4gc21hbGxlciBicHAgYmVmb3JlIGxhcmdlciBicHAKMy4gWCBi
ZWZvcmUgQQo0LiBSR0IgYmVmb3JlIEJHUgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEp1aGEtUGVra2Eg
SGVpa2tpbGEgPGp1aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBVbWEg
U2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYyAgfCA2ICsrKy0tLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwppbmRleCBhYmEyMzgxNzE2ZDMuLjljZjZiMTNmNzlmZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTg1LDggKzg1
LDggQEAKIC8qIFByaW1hcnkgcGxhbmUgZm9ybWF0cyBmb3IgZ2VuIDw9IDMgKi8KIHN0YXRpYyBj
b25zdCB1MzIgaTh4eF9wcmltYXJ5X2Zvcm1hdHNbXSA9IHsKIAlEUk1fRk9STUFUX0M4LAotCURS
TV9GT1JNQVRfUkdCNTY1LAogCURSTV9GT1JNQVRfWFJHQjE1NTUsCisJRFJNX0ZPUk1BVF9SR0I1
NjUsCiAJRFJNX0ZPUk1BVF9YUkdCODg4OCwKIH07CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IDczY2IzZTEzNjU3Zi4uOTJjMDRkYzcyYjAwIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKQEAgLTI0MDks
MTAgKzI0MDksMTAgQEAgc3RhdGljIGNvbnN0IHUzMiBzbmJfcGxhbmVfZm9ybWF0c1tdID0gewog
c3RhdGljIGNvbnN0IHUzMiB2bHZfcGxhbmVfZm9ybWF0c1tdID0gewogCURSTV9GT1JNQVRfQzgs
CiAJRFJNX0ZPUk1BVF9SR0I1NjUsCi0JRFJNX0ZPUk1BVF9BQkdSODg4OCwKLQlEUk1fRk9STUFU
X0FSR0I4ODg4LAotCURSTV9GT1JNQVRfWEJHUjg4ODgsCiAJRFJNX0ZPUk1BVF9YUkdCODg4OCwK
KwlEUk1fRk9STUFUX1hCR1I4ODg4LAorCURSTV9GT1JNQVRfQVJHQjg4ODgsCisJRFJNX0ZPUk1B
VF9BQkdSODg4OCwKIAlEUk1fRk9STUFUX1hCR1IyMTAxMDEwLAogCURSTV9GT1JNQVRfQUJHUjIx
MDEwMTAsCiAJRFJNX0ZPUk1BVF9ZVVlWLAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
