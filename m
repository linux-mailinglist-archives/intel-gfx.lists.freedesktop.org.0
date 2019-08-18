Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A52091601
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 11:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D99CD6E055;
	Sun, 18 Aug 2019 09:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2866E053
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 09:52:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 02:52:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,400,1559545200"; d="scan'208";a="377148547"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 18 Aug 2019 02:52:12 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7I9qBYk001582; Sun, 18 Aug 2019 10:52:11 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 09:52:01 +0000
Message-Id: <20190818095204.31568-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Don't fail on GuC failure
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

V2l0aCB0aGlzIHNlcmllcyB3ZSBhcmUgYWJsZSB0byBsb2FkIHRoZSBkcml2ZXIgZXZlbiBpZgp3
ZSBmYWlsIHRvIGluaXRpYWxpemUgR3VDIChpZS4gZHVlIHRvIG1pc3NpbmcgZmlybXdhcmUpCgpO
b3RlIHRoYXQgc3RpbGwgc29tZSBody9mdyByZXN0cmljdGlvbnMgbWF5IGFwcGx5LgoKU2lnbmVk
LW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNj
OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+CkNjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4KCk1pY2hhbCBXYWpkZWN6a28gKDMpOgogIGRybS9pOTE1
L2d1YzogRG9uJ3Qgb3BlbiBsb2cgcmVsYXkgaWYgR3VDIGlzIG5vdCBydW5uaW5nCiAgZHJtL2k5
MTUvdWM6IERvbid0IGFsd2F5cyBmYWlsIG9uIHVuYXZhaWxhYmxlIEd1QyBmaXJtd2FyZQogIGRy
bS9pOTE1L3VjOiBOZXZlciBmYWlsIG9uIEh1QyBmaXJtd2FyZSBlcnJvcnMKCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9nLmMgfCAgNCArKysKIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jICAgICB8ICA0ICsrLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgIHwgNDAgKysrKysrKysrKysrKysrLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgIHwgMTcgKysrKy0tLS0tCiA0
IGZpbGVzIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKLS0gCjIu
MTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
