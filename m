Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D000A91789
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 17:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D86A6E03C;
	Sun, 18 Aug 2019 15:51:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4095E6E03C
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 15:51:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 08:51:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,401,1559545200"; d="scan'208";a="202017414"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 18 Aug 2019 08:51:20 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7IFpJtq025536; Sun, 18 Aug 2019 16:51:19 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 15:51:08 +0000
Message-Id: <20190818155109.31360-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Turn on GuC/HuC auto mode again
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gY29tbWl0IGY3NzRmMDk2NDkxOSAoImRybS9pOTE1L2d1YzogVHVybiBvbiBHdUMvSHVDIGF1
dG8gbW9kZSIpCndlIGFscmVhZHkgZW5hYmxlZCBHdUMvSHVDIGF1dG8tbW9kZSwgaG93ZXZlciBk
dWUgdG8gaG9sZXMgaW4gb3VyCnRlc3QgY292ZXJhZ2Ugd2UgbWlzc2VkIHRvIGNoZWNrIHNjZW5h
cmlvIHdoZW4gR3VDIGZpcm13YXJlIGlzIG5vdApwcmVzZW50IG9uIHRoZSB0YXJnZXQgZmlsZXN5
c3RlbS4KClVuZm9ydHVuYXRlbGx5IHN1Y2ggY2FzZSB3YXMgZmF0YWwgdG8gb3VyIGRyaXZlciBh
bmQgd2UgZGVjaWRlZCB0bwprZWVwIEd1QyBkaXNhYmxlZCBpbiBjb21taXQgOTI1MDhkYTdlM2Rh
ICgiUmV2ZXJ0ICJkcm0vaTkxNS9ndWM6ClR1cm4gb24gR3VDL0h1QyBhdXRvIG1vZGUiIikuCgpT
aW5jZSB0aGVuIHdlIGltcHJvdmVkIGJvdGggb3VyIGRyaXZlciBhbmQgdGVzdCBjb3ZlcmFnZSBh
bmQgd2Ugbm93CmJlbGlldmUgdGhhdCBkcml2ZXIgd29ya3MgZmluZSB3aXRob3V0IEd1Qy9IdUMg
ZmlybXdhcmVzIGF2YWlsYWJsZS4KU2VlIFsxXSBXaXRob3V0IEh1QyBmaXJtd2FyZSBhbmQgWzJd
IFdpdGhvdXQgR3VDL0h1QyBmaXJtd2FyZXMuCgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82NTM3OC8jcmV2MQpbMl0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82NTM3OS8jcmV2MQoKUmVmZXJlbmNlczogY29tbWl0IGY3NzRmMDk2
NDkxOSAoImRybS9pOTE1L2d1YzogVHVybiBvbiBHdUMvSHVDIGF1dG8gbW9kZSIpClJlZmVyZW5j
ZXM6IGNvbW1pdCA5MjUwOGRhN2UzZGEgKCJSZXZlcnQgImRybS9pOTE1L2d1YzogVHVybiBvbiBH
dUMvSHVDIGF1dG8gbW9kZSIiKQoKQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVu
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
CkNjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNl
cmFvbG9zcHVyaW9AaW50ZWwuY29tPiAKCk1pY2hhbCBXYWpkZWN6a28gKDEpOgogIGRybS9pOTE1
L3VjOiBUdXJuIG9uIEd1Qy9IdUMgYXV0byBtb2RlIGFnYWluCgogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wYXJhbXMuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmggfCAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCi0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
