Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8308475115
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 16:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE1426E663;
	Thu, 25 Jul 2019 14:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82DB26E663
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 14:27:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 07:27:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; 
 d="scan'208,223";a="189330181"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jul 2019 07:27:51 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6PERodb012295; Thu, 25 Jul 2019 15:27:50 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 14:27:46 +0000
Message-Id: <20190725142746.25688-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Define GuC firmware version for
 Comet Lake
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

RnJvbSBHVCBwZXJzcGVjdGl2ZSwgQ29tZXQgTGFrZSBpcyBqdXN0IENvZmZlIExha2UgcmV2IDUs
CmJ1dCB0aGVyZSBpcyBkZWRpY2F0ZWQgR3VDIGZpcm13YXJlIGZvciBpdC4KClNpZ25lZC1vZmYt
Ynk6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFu
aWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6
IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwpp
bmRleCA3ODliM2Q3MjI4YTQuLjM1MTk0MThiMTdjZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jCkBAIC0zNSw2ICszNSw3IEBACiAgKi8KICNkZWZpbmUgSU5URUxf
VUNfRklSTVdBUkVfREVGUyhmd19kZWYsIGd1Y19kZWYsIGh1Y19kZWYpIFwKIAlmd19kZWYoSUNF
TEFLRSwgICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwgaHVjX2RlZihpY2wsICA4LCAgNCwg
MzIzOCkpIFwKKwlmd19kZWYoQ09GRkVFTEFLRSwgNSwgZ3VjX2RlZihjbWwsIDMzLCAwLCAwKSwg
aHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwKIAlmd19kZWYoQ09GRkVFTEFLRSwgMCwgZ3Vj
X2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwKIAlmd19k
ZWYoR0VNSU5JTEFLRSwgMCwgZ3VjX2RlZihnbGssIDMzLCAwLCAwKSwgaHVjX2RlZihnbGssIDAz
LCAwMSwgMjg5MykpIFwKIAlmd19kZWYoS0FCWUxBS0UsICAgMCwgZ3VjX2RlZihrYmwsIDMzLCAw
LCAwKSwgaHVjX2RlZihrYmwsIDAyLCAwMCwgMTgxMCkpIFwKLS0gCjIuMTkuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
