Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7014628DCB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 01:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C7676E09A;
	Thu, 23 May 2019 23:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843876E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 23:31:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:31:46 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 16:31:44 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.139.89])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4NNVN0q023503; Fri, 24 May 2019 00:31:43 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 May 2019 23:30:46 +0000
Message-Id: <20190523233049.28020-20-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190523233049.28020-1-michal.wajdeczko@intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 19/22] drm/i915/guc: Enable GuC CTB
 communication on Gen11
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

R2VuMTEgR3VDIGZpcm13YXJlIGV4cGVjdHMgSDJHIGNvbW1hbmQgbWVzc2FnZXMgdG8gYmUgc2Vu
dCBvdmVyIENUQgooY29tbWFuZCB0cmFuc3BvcnQgYnVmZmVycykuCgpTaWduZWQtb2ZmLWJ5OiBN
aWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KQ2M6IERhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBKb29u
YXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBKb2huIFNw
b3Rzd29vZCA8am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGQ3YzA3YTk0NzQ5Ny4uZmM2
NmQ3ZjM0OGZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTc0Niw2ICs3NDYsNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX2Nhbm5vbmxha2VfaW5m
byA9IHsKIAl9LCBcCiAJR0VOKDExKSwgXAogCS5kZGJfc2l6ZSA9IDIwNDgsIFwKKwkuaGFzX2d1
Y19jdCA9IDEsIFwKIAkuaGFzX2xvZ2ljYWxfcmluZ19lbHNxID0gMSwgXAogCS5jb2xvciA9IHsg
LmRlZ2FtbWFfbHV0X3NpemUgPSAzMywgLmdhbW1hX2x1dF9zaXplID0gMTAyNCB9CiAKLS0gCjIu
MTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
