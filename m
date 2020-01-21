Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB555143663
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 05:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C60E6E1E6;
	Tue, 21 Jan 2020 04:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B812D6E1E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 04:57:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 20:57:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,344,1574150400"; d="scan'208";a="219829851"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga008.jf.intel.com with ESMTP; 20 Jan 2020 20:57:56 -0800
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 20:56:13 +0800
Message-Id: <20200121125613.21138-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: set fail-safe mode if EDID corrupt
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIGNoYXB0ZXIgNS4xLjEuMiBpbiBEUCBzcGVjLiBXaGVuIHRoZSBTaW5rCmRl
dmljZSBjYXBhYmlsaXR5IGlzIHVua25vd24sIGZvciBleGFtcGxlIGR1ZSB0byBjb3JydXB0aW9u
Cm9mIGFuIEVESUQuIFRoZSBTb3VyY2UgZGV2aWNlIG1heSBmYWxsIGJhY2sgdG8gYSBzZXQgb2YK
ZmFsbC1iYWNrIHZpZGVvIHRpbWluZyBmb3JtYXRzIGl0cyBjaG9pY2UuIFdoZW4gbm9uZSBvZgp0
aGUgZmFsbC1iYWNrIHZpZGVvIHRpbWluZyBmb3JtYXRzIGlzIGFjY2VwdGFibGUsIHRoZQpTb3Vy
Y2UgZGV2aWNlIG11c3QgZmFsbCBiYWNrIHRvIHRoZSBmYWlsIHNhZmUgbW9kZSwKd2hpY2ggaXMg
NjQwIHggNDgwIGF0IDYwSHouCgpUaGlzIGNoYW5nZSBzZXQgc291cmNlIGRyaXZlciBvdXRwdXQg
ZmFpbC1zYWZlIG1vZGUgYXV0b21hdGljYWxseQppZiBFRElEIGNvcnJ1cHQuIEl0IG1heSBhbHNv
IGJlbmVmaXQgbGluayBsYXllciBjb21wbGlhbmNlCnRlc3QgY2FzZSAiNC4yLjIuNiAgRURJRCBD
b3JydXB0aW9uIERldGVjdGlvbiIuCgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJl
QGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpDYzog
Q29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMZWUg
U2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEzICsrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAx
MSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwppbmRleCBjMjdkM2U3YWMyMTkuLjdlMDcyZGI0YTUzMCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNTY1OSw5ICs1NjU5LDE4IEBAIGlu
dGVsX2RwX2dldF9lZGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJCQlyZXR1cm4gTlVM
TDsKIAogCQlyZXR1cm4gZHJtX2VkaWRfZHVwbGljYXRlKGludGVsX2Nvbm5lY3Rvci0+ZWRpZCk7
Ci0JfSBlbHNlCi0JCXJldHVybiBkcm1fZ2V0X2VkaWQoJmludGVsX2Nvbm5lY3Rvci0+YmFzZSwK
Kwl9IGVsc2UgeworCQlzdHJ1Y3QgZWRpZCAqZWRpZDsKKworCQllZGlkID0gZHJtX2dldF9lZGlk
KCZpbnRlbF9jb25uZWN0b3ItPmJhc2UsCiAJCQkJICAgICZpbnRlbF9kcC0+YXV4LmRkYyk7CisK
KwkJaWYgKGludGVsX2Nvbm5lY3Rvci0+YmFzZS5lZGlkX2NvcnJ1cHQgfHwgIWVkaWQpCisJCQlp
ZiAoZHJtX2FkZF9tb2Rlc19ub2VkaWQoJmludGVsX2Nvbm5lY3Rvci0+YmFzZSwgNjQwLCA0ODAp
KQorCQkJCWRybV9zZXRfcHJlZmVycmVkX21vZGUoJmludGVsX2Nvbm5lY3Rvci0+YmFzZSwgNjQw
LCA0ODApOworCisJCXJldHVybiBlZGlkOworCX0KIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMTcu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
