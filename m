Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2932D2BA3A
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:37:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973D289A74;
	Mon, 27 May 2019 18:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298E489A74
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:55 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 27 May 2019 11:36:53 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJDL007368; Mon, 27 May 2019 19:36:52 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:36:10 +0000
Message-Id: <20190527183613.17076-15-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 14/17] drm/i915/guc: Enable GuC CTB
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
