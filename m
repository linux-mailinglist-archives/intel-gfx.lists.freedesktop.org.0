Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C138510A8A9
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 03:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B04D6E095;
	Wed, 27 Nov 2019 02:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597786E095
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 02:16:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 18:16:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="408856986"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.98.40.66])
 by fmsmga005.fm.intel.com with ESMTP; 26 Nov 2019 18:16:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 18:16:09 -0800
Message-Id: <20191127021609.162700-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Suspend MST topology manager
 before destroy fbdev
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

TVNUIGRvIHRvcG9sb2d5IHByb2JlIGluIHRocmVhZHMsIHNvIHRoaXMgcnVubmluZyB0aHJlYWRz
IG5lZWRzIHRvIGJlCmZsdXNoZWQgYmVmb3JlIGZiZGV2IGlzIGRlc3Ryb3llZCBhcyB3aGVuIGEg
bmV3IE1TVCBub2RlIGlzIGZvdW5kIGl0CmNhbGxzIGRybV9rbXNfaGVscGVyX2hvdHBsdWdfZXZl
bnQoKSB0aGF0IGNhbGxzIGZiZGV2IGZ1bmN0aW9ucwoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwOTk2NApTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDcgKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggOGYyNzcwOTUxNDU5Li4zNzJkZDQ4NjkxY2YgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNzk4OSw2ICsx
Nzk4OSwxMyBAQCB2b2lkIGludGVsX21vZGVzZXRfZHJpdmVyX3JlbW92ZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSkKIAkgKi8KIAlpbnRlbF9ocGRfcG9sbF9maW5pKGk5MTUpOwogCisJ
LyoKKwkgKiBNU1QgZG8gdG9wb2xvZ3kgcHJvYmUgaW4gdGhyZWFkcywgc28gdGhpcyBydW5uaW5n
IHRocmVhZHMgbmVlZHMgdG8KKwkgKiBiZSBmbHVzaGVkIGJlZm9yZSBmYmRldiBpcyBkZXN0cm95
ZWQgYXMgd2hlbiBhIG5ldyBNU1Qgbm9kZSBpcyBmb3VuZAorCSAqIGl0IGNhbGwgZHJtX2ttc19o
ZWxwZXJfaG90cGx1Z19ldmVudCgpIHRoYXQgY2FsbHMgZmJkZXYgZnVuY3Rpb25zCisJICovCisJ
aW50ZWxfZHBfbXN0X3N1c3BlbmQoaTkxNSk7CisKIAkvKiBwb2xsIHdvcmsgY2FuIGNhbGwgaW50
byBmYmRldiwgaGVuY2UgY2xlYW4gdGhhdCB1cCBhZnRlcndhcmRzICovCiAJaW50ZWxfZmJkZXZf
ZmluaShpOTE1KTsKIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
