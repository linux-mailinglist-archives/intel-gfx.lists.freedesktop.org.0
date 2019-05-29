Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADFB2D9AA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 11:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2220F6E0B0;
	Wed, 29 May 2019 09:54:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3D7B6E0AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 09:54:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 02:54:50 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by fmsmga001.fm.intel.com with ESMTP; 29 May 2019 02:54:50 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 15:21:02 +0530
Message-Id: <1559123462-7343-13-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
References: <1559123462-7343-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 12/12] FOR_TESTING_ONLY: Print rgb values of
 hw and sw blobs
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgMiArKwogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCmluZGV4IDc1
NjhiMTMuLmMyNzI4MGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nv
bG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwpAQCAtMTM3Niw2
ICsxMzc2LDggQEAgaW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogc3RhdGljIGlubGluZSBib29sIGVycl9j
aGVjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqc3dfbHV0LAogCQkJICAgICBzdHJ1Y3QgZHJtX2Nv
bG9yX2x1dCAqaHdfbHV0LCB1MzIgZXJyKQogeworCURSTV9ERUJVR19LTVMoImh3X2x1dC0+cmVk
PTB4JXggc3dfbHV0LT5yZWQ9MHgleCBod19sdXQtPmJsdWU9MHgleCBzd19sdXQtPmJsdWU9MHgl
eCBod19sdXQtPmdyZWVuPTB4JXggc3dfbHV0LT5ncmVlbj0weCV4IiwgaHdfbHV0LT5yZWQsIHN3
X2x1dC0+cmVkLCBod19sdXQtPmJsdWUsIHN3X2x1dC0+Ymx1ZSwgaHdfbHV0LT5ncmVlbiwgc3df
bHV0LT5ncmVlbik7CisKIAlyZXR1cm4gKChhYnMoKGxvbmcpaHdfbHV0LT5yZWQgLSBzd19sdXQt
PnJlZCkpIDw9IGVycikgJiYKIAkJKChhYnMoKGxvbmcpaHdfbHV0LT5ibHVlIC0gc3dfbHV0LT5i
bHVlKSkgPD0gZXJyKSAmJgogCQkoKGFicygobG9uZylod19sdXQtPmdyZWVuIC0gc3dfbHV0LT5n
cmVlbikpIDw9IGVycik7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
