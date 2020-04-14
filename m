Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF891A6FEB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 02:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 971686E426;
	Tue, 14 Apr 2020 00:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 062896E426
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 00:07:11 +0000 (UTC)
IronPort-SDR: aDsj752m9BkevM+t2HK1yFHeaLsECbW/pjRCR83u+qYtz5WtEebmzCptqoW1SH/blVv6ac5jkN
 ww7p8cIjVNDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 17:07:12 -0700
IronPort-SDR: 8WRcxdD14HGj+ZOno+lmlILcBJPuRNVn4+hIsKQLiYk2ABNkLfVyQ81BYV7BBCrj9h1b/Ch15U
 g9Ml3P8BBmIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="332001860"
Received: from shandley-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.135.3.40])
 by orsmga001.jf.intel.com with ESMTP; 13 Apr 2020 17:07:11 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Apr 2020 17:08:44 -0700
Message-Id: <20200414000844.101873-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414000844.101873-1-jose.souza@intel.com>
References: <20200414000844.101873-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] Revert "rtc/cmos: Protect rtc_lock from
 interrupts"
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

Rml4IGJ1aWxkLgoKVGhpcyByZXZlcnRzIGNvbW1pdCA1YjM5MDY0ZDQ1MmFjOTczOWQ1OWM1MTgz
YzhhN2M5MGE1OTgyYWNiLgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ydGMvcnRjLWNtb3MuYyB8IDUgKyst
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ydGMvcnRjLWNtb3MuYyBiL2RyaXZlcnMvcnRjL3J0Yy1jbW9zLmMK
aW5kZXggZGY1ZmY3ZTc4YTE0Li4zNzE4Mzg2YTlmMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcnRj
L3J0Yy1jbW9zLmMKKysrIGIvZHJpdmVycy9ydGMvcnRjLWNtb3MuYwpAQCAtNjUyLDkgKzY1Miw4
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBjbW9zX2ludGVycnVwdChpbnQgaXJxLCB2b2lkICpwKQog
CXVuc2lnbmVkIGxvbmcJZmxhZ3M7CiAJdTgJCWlycXN0YXQ7CiAJdTgJCXJ0Y19jb250cm9sOwot
CXVuc2lnbmVkIGxvbmcJZmxhZ3M7CiAKLQlzcGluX2xvY2tfaXJxc2F2ZSgmcnRjX2xvY2ssIGZs
YWdzKTsKKwlzcGluX2xvY2soJnJ0Y19sb2NrKTsKIAogCS8qIFdoZW4gdGhlIEhQRVQgaW50ZXJy
dXB0IGhhbmRsZXIgY2FsbHMgdXMsIHRoZSBpbnRlcnJ1cHQKIAkgKiBzdGF0dXMgaXMgcGFzc2Vk
IGFzIGFyZzEgaW5zdGVhZCBvZiB0aGUgaXJxIG51bWJlci4gIEJ1dApAQCAtNjg4LDcgKzY4Nyw3
IEBAIHN0YXRpYyBpcnFyZXR1cm5fdCBjbW9zX2ludGVycnVwdChpbnQgaXJxLCB2b2lkICpwKQog
CQkJaHBldF9tYXNrX3J0Y19pcnFfYml0KFJUQ19BSUUpOwogCQlDTU9TX1JFQUQoUlRDX0lOVFJf
RkxBR1MpOwogCX0KLQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZydGNfbG9jaywgZmxhZ3MpOwor
CXNwaW5fdW5sb2NrKCZydGNfbG9jayk7CiAKIAlpZiAoaXNfaW50cihpcnFzdGF0KSkgewogCQly
dGNfdXBkYXRlX2lycShwLCAxLCBpcnFzdGF0KTsKLS0gCjIuMjYuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
