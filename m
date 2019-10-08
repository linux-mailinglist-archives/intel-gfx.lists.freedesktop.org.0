Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49330CFEAC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 18:15:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AEF36E856;
	Tue,  8 Oct 2019 16:15:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC986E855
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 16:15:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 09:14:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="206668910"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 08 Oct 2019 09:14:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Oct 2019 19:14:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 19:14:38 +0300
Message-Id: <20191008161441.12721-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
References: <20191008161441.12721-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: Sort format arrays consistently
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
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jICB8IDIwICsrKysrKysrKystLS0tLS0tLS0tCiAyIGZpbGVz
IGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMWNkY2QwZWEwNTY0Li5h
ODEyNGYwMWJkYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC04Myw4ICs4Myw4IEBACiAvKiBQcmltYXJ5IHBsYW5lIGZvcm1hdHMgZm9yIGdl
biA8PSAzICovCiBzdGF0aWMgY29uc3QgdTMyIGk4eHhfcHJpbWFyeV9mb3JtYXRzW10gPSB7CiAJ
RFJNX0ZPUk1BVF9DOCwKLQlEUk1fRk9STUFUX1JHQjU2NSwKIAlEUk1fRk9STUFUX1hSR0IxNTU1
LAorCURSTV9GT1JNQVRfUkdCNTY1LAogCURSTV9GT1JNQVRfWFJHQjg4ODgsCiB9OwogCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCBhYWFiZWFmMTFh
ZTkuLmNjOWU1Yzk2NjhiMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jCkBAIC0yMDAyLDEwICsyMDAyLDEwIEBAIHN0YXRpYyBjb25zdCB1NjQgaTl4eF9w
bGFuZV9mb3JtYXRfbW9kaWZpZXJzW10gPSB7CiB9OwogCiBzdGF0aWMgY29uc3QgdTMyIHNuYl9w
bGFuZV9mb3JtYXRzW10gPSB7Ci0JRFJNX0ZPUk1BVF9YQkdSODg4OCwKIAlEUk1fRk9STUFUX1hS
R0I4ODg4LAotCURSTV9GT1JNQVRfWFJHQjIxMDEwMTAsCisJRFJNX0ZPUk1BVF9YQkdSODg4OCwK
IAlEUk1fRk9STUFUX1hCR1IyMTAxMDEwLAorCURSTV9GT1JNQVRfWFJHQjIxMDEwMTAsCiAJRFJN
X0ZPUk1BVF9ZVVlWLAogCURSTV9GT1JNQVRfWVZZVSwKIAlEUk1fRk9STUFUX1VZVlksCkBAIC0y
MDE1LDEwICsyMDE1LDEwIEBAIHN0YXRpYyBjb25zdCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9
IHsKIHN0YXRpYyBjb25zdCB1MzIgdmx2X3BsYW5lX2Zvcm1hdHNbXSA9IHsKIAlEUk1fRk9STUFU
X0M4LAogCURSTV9GT1JNQVRfUkdCNTY1LAotCURSTV9GT1JNQVRfQUJHUjg4ODgsCi0JRFJNX0ZP
Uk1BVF9BUkdCODg4OCwKLQlEUk1fRk9STUFUX1hCR1I4ODg4LAogCURSTV9GT1JNQVRfWFJHQjg4
ODgsCisJRFJNX0ZPUk1BVF9YQkdSODg4OCwKKwlEUk1fRk9STUFUX0FSR0I4ODg4LAorCURSTV9G
T1JNQVRfQUJHUjg4ODgsCiAJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwKIAlEUk1fRk9STUFUX0FC
R1IyMTAxMDEwLAogCURSTV9GT1JNQVRfWVVZViwKQEAgLTIwMzAsMTQgKzIwMzAsMTQgQEAgc3Rh
dGljIGNvbnN0IHUzMiB2bHZfcGxhbmVfZm9ybWF0c1tdID0gewogc3RhdGljIGNvbnN0IHUzMiBj
aHZfcGlwZV9iX3Nwcml0ZV9mb3JtYXRzW10gPSB7CiAJRFJNX0ZPUk1BVF9DOCwKIAlEUk1fRk9S
TUFUX1JHQjU2NSwKLQlEUk1fRk9STUFUX0FCR1I4ODg4LAotCURSTV9GT1JNQVRfQVJHQjg4ODgs
Ci0JRFJNX0ZPUk1BVF9YQkdSODg4OCwKIAlEUk1fRk9STUFUX1hSR0I4ODg4LAotCURSTV9GT1JN
QVRfWEJHUjIxMDEwMTAsCi0JRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMCwKKwlEUk1fRk9STUFUX1hC
R1I4ODg4LAorCURSTV9GT1JNQVRfQVJHQjg4ODgsCisJRFJNX0ZPUk1BVF9BQkdSODg4OCwKIAlE
Uk1fRk9STUFUX1hSR0IyMTAxMDEwLAorCURSTV9GT1JNQVRfWEJHUjIxMDEwMTAsCiAJRFJNX0ZP
Uk1BVF9BUkdCMjEwMTAxMCwKKwlEUk1fRk9STUFUX0FCR1IyMTAxMDEwLAogCURSTV9GT1JNQVRf
WVVZViwKIAlEUk1fRk9STUFUX1lWWVUsCiAJRFJNX0ZPUk1BVF9VWVZZLAotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
