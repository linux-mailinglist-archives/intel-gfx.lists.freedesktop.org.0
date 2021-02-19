Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D7731FF3E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 20:14:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72816EB8A;
	Fri, 19 Feb 2021 19:14:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAB416EB8A
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 19:14:50 +0000 (UTC)
IronPort-SDR: /WmtRpwXeL6F6tVVkKDuUk1FRcjP/fxWaMbiG4BTipqq9nWA+72DnTKTxHoVJ2VttR/Yeadp1K
 3t/GFujJH8sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="248002239"
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="248002239"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 11:14:50 -0800
IronPort-SDR: dAWcPgLa0hIpEG7xBQOVOLbMLTHsXTLLk0QXDvaW24eEe1lFIyMUBrzlzEXR7pdy6/cDxtSZdI
 X7JpUuLxmYAQ==
X-IronPort-AV: E=Sophos;i="5.81,189,1610438400"; d="scan'208";a="365303252"
Received: from kkkoney-mobl3.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.251.152.169])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 11:14:48 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Feb 2021 11:16:23 -0800
Message-Id: <20210219191623.163775-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Read planes watermarks during
 initial state readout
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aG91dCB0aGlzIHJlYWRvdXQgYWxsIHBsYW5lIHdhdGVybWFya3Mgd2lsbCBiZSBrZXB0IGF0
IHplcm8gaW4gdGhlCmluaXRpYWwgc3RhdGUgcmVhZG91bnQgY2F1c2luZyB0d28gcHJvYmxlbXMu
CgpBbGwgYWN0aXZlIHBsYW5lcyB3aWxsIGFsd2F5cyBoYXZlIHRoZWlyIHdhdGVybWFya3MgcHJv
Z3JhbW1lZAphZ2FpbiwgZXZlbiBpZiB3aGF0IGZpcm13YXJlIHByb2dyYW1tZWQgbWF0Y2hlcyB3
aXRoIHRoZSBzYW5pdGl6ZWQKc3RhdGUgZHVyaW5nIGRyaXZlciB0YWtlb3Zlci4KClN0YXRlIG1p
c21hdGNoIGVycm9ycyBpbiBkaXNhYmxlZCBwbGFuZXMgYXMgd2F0ZXJtYXJrcyB3aWxsIGVycm9u
ZW91cwptYXRjaCB3aXRoIHRoZSBjYWxjdWxhdGVkIHN0YXRlIGlmIGZpcm13YXJlIGxlZnQgd2F0
ZXJtYXJrIHJlZ2lzdGVycwp3aXRoIG5vbi16ZXJvIHZhbHVlcy4KCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBS
b2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IGQwZGE4ODc1MWM3Mi4uMTRmYmE0NDExYmU3IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM2MjAsNiArMTM2MjAsOCBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9tb2Rlc2V0X3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGRybV9k
ZXZpY2UgKmRldikKIAkJCWRybV9jYWxjX3RpbWVzdGFtcGluZ19jb25zdGFudHMoJnNsYXZlLT5i
YXNlLAogCQkJCQkJCSZzbGF2ZV9jcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlKTsKIAkJfQor
CisJCXNrbF9waXBlX3dtX2dldF9od19zdGF0ZShjcnRjLCAmY3J0Y19zdGF0ZS0+d20uc2tsLm9w
dGltYWwpOwogCX0KIH0KIAotLSAKMi4zMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
