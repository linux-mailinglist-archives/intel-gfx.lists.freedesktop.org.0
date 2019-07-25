Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C88FD7427A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 02:18:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347786E2A9;
	Thu, 25 Jul 2019 00:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD986E2A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 00:18:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 17:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,304,1559545200"; d="scan'208";a="177816902"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jul 2019 17:18:34 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 17:18:05 -0700
Message-Id: <20190725001813.4740-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/8] uC fw path unification + misc clean-up
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

SSd2ZSBub3cgdW5pZmllZCB0aGUgbm8gdUMgSFcgYW5kIG5vIHVDIEZXIGNhc2VzIGFzIHdlbGws
IGFzIHJlcXVlc3RlZApieSBNaWNoYWwuIEkndmUgYWxzbyBhZGRlZCBzYW5pdGl6YXRpb24gb2Yg
dGhlIGVuYWJsZV9ndWMgcGFyYW1ldGVyCndoZW4gd2UgZG9uJ3QgaGF2ZSBzdXBwb3J0IGZvciBH
dUMvSHVDIGJlY2F1c2Ugb3RoZXJ3aXNlIHdlIGVuZCB1cCBwYXRocwp3ZSBzaG91bGRuJ3QgYmUg
aW4gb24gYSBwbGF0Zm9ybSB3aXRoIG5vIHVDLgoKQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CgpEYW5pZWxlIENlcmFvbG8gU3B1cmlvICg4KToKICBkcm0vaTkxNS91YzogVW5p
ZnkgdUMgcGxhdGZvcm0gY2hlY2sKICBkcm0vaTkxNTogRml4IGhhbmRsaW5nIG9mIG5vbi1zdXBw
b3J0ZWQgdUMKICBkcm0vaTkxNS91YzogVW5pZnkgdUMgRlcgc2VsZWN0aW9uCiAgZHJtL2k5MTUv
dWM6IFVuaWZ5IHVjX2Z3IHN0YXR1cyB0cmFja2luZwogIGRybS9pOTE1L3VjOiBNb3ZlIHhmZXIg
cnNhIGxvZ2ljIHRvIGNvbW1vbiBmdW5jdGlvbgogIGRybS9pOTE1L2h1YzogQ29weSBodWMgcnNh
IG9ubHkgb25jZQogIGRybS9pOTE1L3VjOiBQbHVtYiB0aGUgZ3QgdGhyb3VnaCBmd191cGxvYWQK
ICBkcm0vaTkxNS91YzogVW5pZnkgdUMgZmlybXdhcmUgdXBsb2FkCgogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9ndWMuaCAgICAgICAgfCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19mdy5jICAgICB8IDIxNyArKy0tLS0tLS0tLQogLi4uL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgICAyICstCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYyAgICAgICAgfCAgMzUgKy0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5oICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjX2Z3LmMgICAgIHwgMTcyICstLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuYyAgICAgICAgIHwgIDQ5ICstLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAgICAgIHwgMzQxICsrKysrKysrKysr
KysrLS0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCAgICAgIHwg
IDg3ICsrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9zZWxmdGVzdF9ndWMuYyAgICAg
fCAgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICAgICAgICB8
ICAgNiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwg
IDE1ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgICAgfCAg
IDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgICB8ICAg
MiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgICA0
ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oICAgICAgfCAgIDIg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgICAgICAgICAgICAgICB8ICAgNCAr
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd29wY20uYyAgICAgICAgICAgIHwgICA0ICst
CiAxOSBmaWxlcyBjaGFuZ2VkLCA0MzMgaW5zZXJ0aW9ucygrKSwgNTI3IGRlbGV0aW9ucygtKQoK
LS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
