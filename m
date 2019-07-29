Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F69C79D00
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 01:47:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 864BA89F75;
	Mon, 29 Jul 2019 23:47:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF61289F63
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 23:47:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jul 2019 16:47:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,324,1559545200"; d="scan'208";a="195590628"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by fmsmga004.fm.intel.com with ESMTP; 29 Jul 2019 16:47:47 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jul 2019 16:47:21 -0700
Message-Id: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] Call uC functions from GT ones
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

VGhlIHBsYW4gaXMgdG8gY29tcGxldGVseSBoaWRlIGludGVsX3VjIHVuZGVyIGludGVsX2d0IGFu
ZCB0aGlzIHNlcmllcwpzdGFydHMgaW4gdGhhdCBkaXJlY3Rpb24gYnkgbW92aW5nIHRoZSBpbml0
IGVhcmx5IGFuZCBzdXNwZW5kL3Jlc3VtZQpmdW5jdGlvbnMuClRoZSBfaW5pdCBhbmQgaW5pdF9o
dyBoYXZlIGZvciBub3cgYmVlbiBza2lwcGVkIGFzIHRoZXkgc2hvdWxkIGJlCmNvdmVyZWQgd2hl
biBndF9pbml0X2h3IGlzIGludHJvZHVjZWQ7IGhvd2V2ZXIsIHRoZSBpbml0X2h3IHBhdGggaGFz
CmJlZW4gc2ltcGxpZmllZCBhIGJpdCBieSBtb3ZpbmcgdGhlIHdvcGNtIGluaXQgY2FsbCBpbnNp
ZGUgdGhlIHVjIG9uZS4KCkNjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGlu
dGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KCkRhbmllbGUg
Q2VyYW9sbyBTcHVyaW8gKDYpOgogIGRybS9pOTE1L3VjOiBtb3ZlIHVDIFdPUENNIHNldHVwIGlu
IHVjX2luaXRfaHcKICBkcm0vaTkxNTogbW92ZSBndF9jbGVhbnVwX2Vhcmx5IG91dCBvZiBnZW1f
Y2xlYW51cF9lYXJseQogIGRybS9pOTE1L3VjOiBtb3ZlIHVjIGVhcmx5IGZ1bmN0aW9ucyBpbnNp
ZGUgdGhlIGd0IG9uZXMKICBkcm0vaTkxNS9ndDogaW50cm9kdWNlIGludGVsX2d0X3J1bnRpbWVf
c3VzcGVuZC9yZXN1bWUKICBkcm0vaTkxNS91YzogbW92ZSB1Y19yZXN1bWUgdW5kZXIgZ3RfcmVz
dW1lCiAgZHJtL2k5MTUvZ3Q6IGludHJvZHVjZSBpbnRlbF9ndF9zdXNwZW5kCgogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3BtLmMgfCAxMSArLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndC5jICAgICB8ICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3BtLmMgIHwgMjggKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uaCAgfCAgMyArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMu
YyAgfCA3MiArKysrKysrKysrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuaCAgfCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
ICAgICAgICB8IDIxICsrKystLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAg
ICAgICB8IDEwICstLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgICAgIHwg
NjggLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93
b3BjbS5oICAgICB8ICAzIC0tCiAxMCBmaWxlcyBjaGFuZ2VkLCAxMTYgaW5zZXJ0aW9ucygrKSwg
MTA0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
