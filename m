Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 119671582CE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 19:41:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FA3E6ED0B;
	Mon, 10 Feb 2020 18:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 730A26ED0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 18:40:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 10:40:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="433415615"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.101])
 by fmsmga006.fm.intel.com with ESMTP; 10 Feb 2020 10:40:58 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 10:40:57 -0800
Message-Id: <20200210184057.296698-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/mst: Set intel_dp_set_m_n() for MST
 slaves
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDFjOWQyZWIyNDE1MyAoImRybS9pOTE1OiBtb3ZlIGludGVsX2RwX3NldF9tX24oKSB0
byBlbmNvZGVyIGZvcgpEREkgcGxhdGZvcm1zIikgbW92ZWQgdGhlIGludGVsX2RwX3NldF9tX24o
KSBmcm9tIGhzd19jcnRjX2VuYWJsZSgpCnRvIGludGVsX2RkaV9wcmVfZW5hYmxlX2RwKCkgYnV0
IGl0IG1pc3NlZCBhZGQgaXQgdG8KaW50ZWxfbXN0X3ByZV9lbmFibGVfZHAoKSBjYXVzaW5nIE1T
VCBzbGF2ZXMgdG8gbm90IHdvcmsuCgpGaXhlczogMWM5ZDJlYjI0MTUzICgiZHJtL2k5MTU6IG1v
dmUgaW50ZWxfZHBfc2V0X21fbigpIHRvIGVuY29kZXIgZm9yIERESSBwbGF0Zm9ybXMiKQpDYzog
VmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbXN0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmlu
ZGV4IDljZDU5MTQxOTUzZC4uZDdiZmE3YzM1MGU5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKQEAgLTQ4MCw2ICs0ODAsOCBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9tc3RfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJ
aW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2NrKHBpcGVfY29uZmlnKTsKIAogCWludGVsX2RkaV9z
ZXRfZHBfbXNhKHBpcGVfY29uZmlnLCBjb25uX3N0YXRlKTsKKworCWludGVsX2RwX3NldF9tX24o
cGlwZV9jb25maWcsIE0xX04xKTsKIH0KIAogc3RhdGljIHZvaWQgaW50ZWxfbXN0X2VuYWJsZV9k
cChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKLS0gCjIuMjUuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
