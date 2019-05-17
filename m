Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11BB21B83
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:22:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 652E889938;
	Fri, 17 May 2019 16:22:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B929A8991C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:22:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:22:34 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 17 May 2019 09:22:32 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HGMT7F016212; Fri, 17 May 2019 17:22:31 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 16:22:25 +0000
Message-Id: <20190517162227.6436-6-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190517162227.6436-1-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/uc: Skip reset preparation if GuC
 is already dead
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgbWF5IHNraXAgcmVzZXQgcHJlcGFyYXRpb24gc3RlcHMgaWYgR3VDIGlzIGFscmVhZHkgc2Fu
aXRpemVkLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyB8IDMgKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggODZl
ZGZhNWFkNzJlLi4zNmM1M2E0MjkyN2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtNDk5
LDYgKzQ5OSw5IEBAIHZvaWQgaW50ZWxfdWNfcmVzZXRfcHJlcGFyZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAlpZiAoIVVTRVNfR1VDKGk5MTUpKQogCQlyZXR1cm47CiAKKwlpZiAo
IWludGVsX2d1Y19pc19hbGl2ZShndWMpKQorCQlyZXR1cm47CisKIAlndWNfc3RvcF9jb21tdW5p
Y2F0aW9uKGd1Yyk7CiAJX191Y19zYW5pdGl6ZShpOTE1KTsKIH0KLS0gCjIuMTkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
