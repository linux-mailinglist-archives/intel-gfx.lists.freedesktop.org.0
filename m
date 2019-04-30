Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E014FFB7D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 16:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5858891E2;
	Tue, 30 Apr 2019 14:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F35D8891E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 14:29:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 07:29:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="153582198"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 30 Apr 2019 07:29:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Apr 2019 17:29:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 17:29:00 +0300
Message-Id: <20190430142901.7302-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Don't skip audio enable if ELD is
 bogus
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3ZlIGFscmVhZHkgY29tbWl0dGVkIHRvIGVuYWJsaW5nIGF1ZGlvIHdoZW4gaW50ZWxfYXVkaW9f
Y29kZWNfZW5hYmxlKCkKaXMgY2FsbGVkLiBXZSBjYW4ndCBiYWNrIG91dCBldmVuIGlmIHRoZSBF
TEQgaGFzIHR1cm5lZCBzb3VyIGluIHRoZQptZWFudGltZS4gU28ganVzdCBzcGV3IHNvbWUgZGVi
dWcgbG9nIGFuZCBwbG93IGFoZWFkLiBPdGhlcndpc2UgdGhlCnN0YXRlIGNoZWNrZXIgZ2V0cyB1
bmhhcHB5IHdoZW4gYXVkaW8gaXNuJ3QgZW5hYmxlZCB3aGVuIGl0IGlzCmV4cGVjdGVkIHRvIGJl
LgoKSSBzdXBwb3NlIHdlIHJlYWxseSBvdWdodCB0byBwcmVjb21wdXRlIHRoZSBFTEQgYXMgd2Vs
bCwgYnV0CmxldCdzIGp1c3QgdG9zcyBpbiBhIEZJWE1FIGZvciB0aGUgZnV0dXJlLgoKQnVnemls
bGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwMzg0MQpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2F1ZGlvLmMgfCA0ICsrKy0KIDEg
ZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9hdWRpby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfYXVkaW8uYwppbmRleCBiY2E0Y2MwMjVkM2QuLjY4YTI0ZGFkYTQ0YyAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfYXVkaW8uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9hdWRpby5jCkBAIC02NDQsOCArNjQ0LDEwIEBAIHZvaWQgaW50ZWxf
YXVkaW9fY29kZWNfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWVudW0g
cG9ydCBwb3J0ID0gZW5jb2Rlci0+cG9ydDsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7
CiAKKwkvKiBGSVhNRSBwcmVjb21wdXRlIHRoZSBFTEQgaW4gLmNvbXB1dGVfY29uZmlnKCkgKi8K
IAlpZiAoIWNvbm5lY3Rvci0+ZWxkWzBdKQotCQlyZXR1cm47CisJCURSTV9ERUJVR19LTVMoIkJv
Z3VzIEVMRCBvbiBbQ09OTkVDVE9SOiVkOiVzXVxuIiwKKwkJCSAgICAgIGNvbm5lY3Rvci0+YmFz
ZS5pZCwgY29ubmVjdG9yLT5uYW1lKTsKIAogCURSTV9ERUJVR19EUklWRVIoIkVMRCBvbiBbQ09O
TkVDVE9SOiVkOiVzXSwgW0VOQ09ERVI6JWQ6JXNdXG4iLAogCQkJIGNvbm5lY3Rvci0+YmFzZS5p
ZCwKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
