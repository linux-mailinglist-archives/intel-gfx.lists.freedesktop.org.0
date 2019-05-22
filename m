Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A2F26C16
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6052089BFF;
	Wed, 22 May 2019 19:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A29289BD2
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:32:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:32:08 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 22 May 2019 12:32:07 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJW5Gk020993; Wed, 22 May 2019 20:32:06 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:31:57 +0000
Message-Id: <20190522193203.23932-4-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190522193203.23932-1-michal.wajdeczko@intel.com>
References: <20190522193203.23932-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH v2 3/9] drm/i915/selftests: Use prepare/finish
 during atomic reset test
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

V2Ugd2VyZSB0ZXN0aW5nIGZ1bGwgR1BVIHJlc2V0IGluIGF0b21pYyBjb250ZXh0IHdpdGhvdXQg
Y29ycmVjdGx5CndyYXBwaW5nIGl0IGJ5IHByZXBhcmUvZmluaXNoIHN0ZXBzLiBUaGlzIGNvdWxk
IGNvbmZ1c2Ugb3VyIEd1QwpyZXNldCBoYW5kbGluZyBjb2RlLgoKU2lnbmVkLW9mZi1ieTogTWlj
aGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9yZXNldC5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jlc2V0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9yZXNldC5jCmluZGV4IDBmOGNjZDg4
NDVhYi4uOTM4NjBkOTg1NmFlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3Jl
c2V0LmMKQEAgLTc0LDcgKzc0LDkgQEAgc3RhdGljIGludCBpZ3RfYXRvbWljX3Jlc2V0KHZvaWQg
KmFyZykKIAkJR0VNX1RSQUNFKCJpbnRlbF9ncHVfcmVzZXQgdW5kZXIgJXNcbiIsIHAtPm5hbWUp
OwogCiAJCXAtPmNyaXRpY2FsX3NlY3Rpb25fYmVnaW4oKTsKKwkJcmVzZXRfcHJlcGFyZShpOTE1
KTsKIAkJZXJyID0gaW50ZWxfZ3B1X3Jlc2V0KGk5MTUsIEFMTF9FTkdJTkVTKTsKKwkJcmVzZXRf
ZmluaXNoKGk5MTUpOwogCQlwLT5jcml0aWNhbF9zZWN0aW9uX2VuZCgpOwogCiAJCWlmIChlcnIp
IHsKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
