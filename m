Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3433710251E
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 14:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320B66E8E0;
	Tue, 19 Nov 2019 13:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 518556E8AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 13:04:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 05:04:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,324,1569308400"; d="scan'208";a="209189506"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 19 Nov 2019 05:04:20 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 19 Nov 2019 18:03:13 +0530
Message-Id: <20191119123316.5094-6-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191119123316.5094-1-vandita.kulkarni@intel.com>
References: <20191119123316.5094-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V3 5/8] drm/i915/dsi: Use private flags to indicate TE
 in cmd mode
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

T24gZHNpIGNtZCBtb2RlIHdlIGRvIG5vdCByZWNlaXZlIHZibGFua3MgaW5zdGVhZAp3ZSB3b3Vs
ZCBnZXQgVEUgYW5kIHRoZXNlIGZsYWdzIGluZGljYXRlIFRFIGlzIGV4cGVjdGVkIG9uCndoaWNo
IHBvcnQuCgpTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5p
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyB8
IDE1ICsrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IDViYmFhYzU5ODBjYS4uOGRi
M2EwZjQ4YzM5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9k
c2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtMTM3
Niw2ICsxMzc2LDIxIEBAIHN0YXRpYyBpbnQgZ2VuMTFfZHNpX2NvbXB1dGVfY29uZmlnKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCS8qIFdlIHdvdWxkIG5vdCBvcGVyZWF0ZSBpbiBw
ZXJpZG9jIGNvbW1hbmQgbW9kZSAqLwogCXBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLnBy
aXZhdGVfZmxhZ3MgJj0KIAkJCQkJfkk5MTVfTU9ERV9GTEFHX0RTSV9QRVJJT0RJQ19DTURfTU9E
RTsKKworCS8qCisJICogSW4gY2FzZSBvZiBURSBHQVRFIGNtZCBtb2RlLCB3ZQorCSAqIHJlY2Vp
dmUgVEUgZnJvbSB0aGUgc2xhdmUgaWYKKwkgKiBkdWFsIGxpbmsgaXMgZW5hYmxlZAorCSAqLwor
CWlmIChpc19jbWRfbW9kZShpbnRlbF9kc2kpKSB7CisJCWlmIChpbnRlbF9kc2ktPnBvcnRzID09
IEJJVChQT1JUX0IpKQorCQkJcGlwZV9jb25maWctPmh3LmFkanVzdGVkX21vZGUucHJpdmF0ZV9m
bGFncyB8PQorCQkJCQkJSTkxNV9NT0RFX0ZMQUdfRFNJX1VTRV9URTE7CisJCWVsc2UKKwkJCXBp
cGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2RlLnByaXZhdGVfZmxhZ3MgfD0KKwkJCQkJCUk5MTVf
TU9ERV9GTEFHX0RTSV9VU0VfVEUwOworCX0KKwogCXJldHVybiAwOwogfQogCi0tIAoyLjIxLjAu
NS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
