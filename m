Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC067D8054
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 21:31:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334FD6E88E;
	Tue, 15 Oct 2019 19:31:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D206E88E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 19:31:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 12:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="208241982"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 15 Oct 2019 12:31:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Oct 2019 22:31:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 22:30:32 +0300
Message-Id: <20191015193035.25982-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
References: <20191015193035.25982-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/13] drm/i915: Add support for half float
 framebuffers on snb sprites
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNu
YiBzdXBwb3J0cyBmcDE2IHBpeGVsIGZvcm1hdHMgb24gdGhlIHNwcml0ZSBwbGFuZXMuIEV4cG9z
ZSB0aGF0CmNhcGFiaWxpdHkuIE5vdGhpbmcgc3BlY2lhbCBuZWVkcyB0byBiZSBkb25lLCBpdCBq
dXN0IHdvcmtzLgoKdjI6IFJlYmFzZSBvbiB0b3Agb2YgaWNsIGZwMTYKICAgIFNwbGl0IHNuYisg
c3ByaXRlIGJpdHMgaW50byBhIHNlcGFyYXRlIHBhdGNoCgpSZXZpZXdlZC1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIHwgMTAgKysrKysrKysr
LQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCmluZGV4IGRiMWUyZGNlNjYz
Ni4uZWRjNDFmYzQwNzI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Nwcml0ZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMKQEAgLTE2NTMsNiArMTY1MywxMiBAQCBzdGF0aWMgdTMyIGc0eF9zcHJpdGVfY3Rs
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWNhc2UgRFJNX0ZP
Uk1BVF9YUkdCODg4ODoKIAkJZHZzY250ciB8PSBEVlNfRk9STUFUX1JHQlg4ODg7CiAJCWJyZWFr
OworCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGOgorCQlkdnNjbnRyIHw9IERWU19GT1JN
QVRfUkdCWDE2MTYxNiB8IERWU19SR0JfT1JERVJfWEJHUjsKKwkJYnJlYWs7CisJY2FzZSBEUk1f
Rk9STUFUX1hSR0IxNjE2MTYxNkY6CisJCWR2c2NudHIgfD0gRFZTX0ZPUk1BVF9SR0JYMTYxNjE2
OworCQlicmVhazsKIAljYXNlIERSTV9GT1JNQVRfWVVZVjoKIAkJZHZzY250ciB8PSBEVlNfRk9S
TUFUX1lVVjQyMiB8IERWU19ZVVZfT1JERVJfWVVZVjsKIAkJYnJlYWs7CkBAIC0yMzY3LDggKzIz
NzMsMTAgQEAgc3RhdGljIGNvbnN0IHU2NCBpOXh4X3BsYW5lX2Zvcm1hdF9tb2RpZmllcnNbXSA9
IHsKIH07CiAKIHN0YXRpYyBjb25zdCB1MzIgc25iX3BsYW5lX2Zvcm1hdHNbXSA9IHsKLQlEUk1f
Rk9STUFUX1hCR1I4ODg4LAogCURSTV9GT1JNQVRfWFJHQjg4ODgsCisJRFJNX0ZPUk1BVF9YQkdS
ODg4OCwKKwlEUk1fRk9STUFUX1hSR0IxNjE2MTYxNkYsCisJRFJNX0ZPUk1BVF9YQkdSMTYxNjE2
MTZGLAogCURSTV9GT1JNQVRfWVVZViwKIAlEUk1fRk9STUFUX1lWWVUsCiAJRFJNX0ZPUk1BVF9V
WVZZLAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
