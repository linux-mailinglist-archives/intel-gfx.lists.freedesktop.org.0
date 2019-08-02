Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F9F7F730
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 14:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55EF56E030;
	Fri,  2 Aug 2019 12:47:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA51D6E030
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 12:47:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 05:47:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,338,1559545200"; d="scan'208";a="372352619"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga005.fm.intel.com with ESMTP; 02 Aug 2019 05:47:47 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x72Clk75025949; Fri, 2 Aug 2019 13:47:46 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 12:47:39 +0000
Message-Id: <20190802124739.12548-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix documentation for
 __intel_wait_for_register_fw*
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

VXNlIHNlY3Rpb24gbmFtZSAiUmV0dXJuIiBhbmQgcHJvcGVyIGVycm9yIGNvZGUgLUVUSU1FRE9V
VAoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgfCA0ICsrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF91bmNvcmUuYwppbmRleCAyYjgzOWFjZmEwZjYuLjRlOWMxNWI2MGU5MyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKQEAgLTE4NjAsNyArMTg2MCw3IEBAIGlu
dCBpOTE1X3JlZ19yZWFkX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAgKiB3aXNoIHRv
IHdhaXQgd2l0aG91dCBob2xkaW5nIGZvcmNld2FrZSBmb3IgdGhlIGR1cmF0aW9uIChpLmUuIHlv
dSBleHBlY3QKICAqIHRoZSB3YWl0IHRvIGJlIHNsb3cpLgogICoKLSAqIFJldHVybnMgMCBpZiB0
aGUgcmVnaXN0ZXIgbWF0Y2hlcyB0aGUgZGVzaXJlZCBjb25kaXRpb24sIG9yIC1FVElNRU9VVC4K
KyAqIFJldHVybjogMCBpZiB0aGUgcmVnaXN0ZXIgbWF0Y2hlcyB0aGUgZGVzaXJlZCBjb25kaXRp
b24sIG9yIC1FVElNRURPVVQuCiAgKi8KIGludCBfX2ludGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3
KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIAkJCQkgaTkxNV9yZWdfdCByZWcsCkBAIC0x
OTA4LDcgKzE5MDgsNyBAQCBpbnQgX19pbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcl9mdyhzdHJ1Y3Qg
aW50ZWxfdW5jb3JlICp1bmNvcmUsCiAgKgogICogT3RoZXJ3aXNlLCB0aGUgd2FpdCB3aWxsIHRp
bWVvdXQgYWZ0ZXIgQHRpbWVvdXRfbXMgbWlsbGlzZWNvbmRzLgogICoKLSAqIFJldHVybnMgMCBp
ZiB0aGUgcmVnaXN0ZXIgbWF0Y2hlcyB0aGUgZGVzaXJlZCBjb25kaXRpb24sIG9yIC1FVElNRU9V
VC4KKyAqIFJldHVybjogMCBpZiB0aGUgcmVnaXN0ZXIgbWF0Y2hlcyB0aGUgZGVzaXJlZCBjb25k
aXRpb24sIG9yIC1FVElNRURPVVQuCiAgKi8KIGludCBfX2ludGVsX3dhaXRfZm9yX3JlZ2lzdGVy
KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwKIAkJCSAgICAgIGk5MTVfcmVnX3QgcmVnLAot
LSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
