Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACD11C665
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 11:48:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B072B89260;
	Tue, 14 May 2019 09:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC7C5892D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 09:48:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 02:48:15 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga008.jf.intel.com with ESMTP; 14 May 2019 02:48:13 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 15:13:30 +0530
Message-Id: <1557827010-24239-13-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
References: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v6][PATCH 12/12] FOR_TESTING_ONLY: Print rgb values of
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
Cc: jani.nikula@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgMiArKwogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCmluZGV4IDZi
YmM5OWEuLjNkOWUzNzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nv
bG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwpAQCAtMTMwMyw2
ICsxMzAzLDggQEAgdm9pZCBpbnRlbF9jb2xvcl9nZXRfYml0X3ByZWNpc2lvbihzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwgaW50ICpicF8KIHN0YXRpYyBpbmxpbmUgYm9vbCBl
cnJfY2hlY2soc3RydWN0IGRybV9jb2xvcl9sdXQgKnN3X2x1dCwKIAkgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqaHdfbHV0LCB1MzIgZXJyKQogeworCURSTV9ERUJV
R19LTVMoImh3X2x1dC0+cmVkPTB4JXggc3dfbHV0LT5yZWQ9MHgleCBod19sdXQtPmJsdWU9MHgl
eCBzd19sdXQtPmJsdWU9MHgleCBod19sdXQtPmdyZWVuPTB4JXggc3dfbHV0LT5ncmVlbj0weCV4
IiwgaHdfbHV0LT5yZWQsIHN3X2x1dC0+cmVkLCBod19sdXQtPmJsdWUsIHN3X2x1dC0+Ymx1ZSwg
aHdfbHV0LT5ncmVlbiwgc3dfbHV0LT5ncmVlbik7CisKIAkgcmV0dXJuICgoYWJzKChsb25nKWh3
X2x1dC0+cmVkIC0gc3dfbHV0LT5yZWQpKSA8PSBlcnIpICYmCiAJICAgICAgICAoKGFicygobG9u
Zylod19sdXQtPmJsdWUgLSBzd19sdXQtPmJsdWUpKSA8PSBlcnIpICYmCiAJICAgICAgICAoKGFi
cygobG9uZylod19sdXQtPmdyZWVuIC0gc3dfbHV0LT5ncmVlbikpIDw9IGVycik7Ci0tIAoxLjku
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
