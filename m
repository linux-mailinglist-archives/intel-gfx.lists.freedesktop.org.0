Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 119763C7C8F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C766E157;
	Wed, 14 Jul 2021 03:15:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17FA86E157
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:15:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210256253"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="210256253"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031470"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:15:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:00 -0700
Message-Id: <20210714031540.3539704-11-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/50] drm/i915/xehp: Define multicast
 register ranges
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

U2luY2Ugd2UgY2FuJ3Qgc3RlZXIgbXVsdGljYXN0IHJlZ2lzdGVyIHJlYWRzIGR1cmluZyByaW5n
LWJhc2VkCndvcmthcm91bmQgdmVyaWZpY2F0aW9uLCB3ZSBuZWVkIHRvIGRlZmluZSB0aGUgbXVs
dGljYXN0IHJhbmdlcyB3aGVyZQpmYWlsdXJlIHRvIHN0ZWVyIGNvdWxkIHBvdGVudGlhbGx5IGNh
dXNlIHVzIHRvIHJlYWQgYmFjayBmcm9tIGEKZnVzZWQtb2ZmIHJlZ2lzdGVyIGluc3RhbmNlLgoK
QXMgd2l0aCBnZW4xMiwgd2UgY2FuIGlnbm9yZSB0aGUgbXVsdGljYXN0IHJhbmdlcyB0aGF0IHRo
ZSBic3BlYwpkZXNjcmliZXMgYXMgJ1NRSURJJyBzaW5jZSBhbGwgaW5zdGFuY2VzIG9mIHRob3Nl
IHJlZ2lzdGVycyB3aWxsIGFsd2F5cwpiZSBwcmVzZW50IGFuZCB3ZSdsbCBhbHdheXMgYmUgYWJs
ZSB0byByZWFkIGJhY2sgYSB3b3JrYXJvdW5kIHZhbHVlIHRoYXQKd2FzIHdyaXR0ZW4gd2l0aCBt
dWx0aWNhc3QuCgpCc3BlYzogNjY1MzQKQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91
bmRzLmMgfCAyMCArKysrKysrKysrKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwppbmRleCA3MjU2MmMyMzNhZDIuLjNhYmU0MjRlZjljOSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0yMDk3LDEyICsyMDk3
LDMwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWNyX3JhbmdlIG1jcl9yYW5nZXNfZ2VuMTJbXSA9
IHsKIAl7fSwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgbWNyX3JhbmdlIG1jcl9yYW5nZXNf
eGVocFtdID0geworCXsgLnN0YXJ0ID0gIDB4NDAwMCwgLmVuZCA9ICAweDRhZmYgfSwKKwl7IC5z
dGFydCA9ICAweDUyMDAsIC5lbmQgPSAgMHg1MmZmIH0sCisJeyAuc3RhcnQgPSAgMHg1NDAwLCAu
ZW5kID0gIDB4N2ZmZiB9LAorCXsgLnN0YXJ0ID0gIDB4ODE0MCwgLmVuZCA9ICAweDgxNWYgfSwK
Kwl7IC5zdGFydCA9ICAweDhjODAsIC5lbmQgPSAgMHg4ZGZmIH0sCisJeyAuc3RhcnQgPSAgMHg5
NGQwLCAuZW5kID0gIDB4OTU1ZiB9LAorCXsgLnN0YXJ0ID0gIDB4OTY4MCwgLmVuZCA9ICAweDk2
ZmYgfSwKKwl7IC5zdGFydCA9ICAweGIwMDAsIC5lbmQgPSAgMHhiM2ZmIH0sCisJeyAuc3RhcnQg
PSAgMHhjODAwLCAuZW5kID0gIDB4Y2ZmZiB9LAorCXsgLnN0YXJ0ID0gIDB4ZDgwMCwgLmVuZCA9
ICAweGQ4ZmYgfSwKKwl7IC5zdGFydCA9ICAweGRjMDAsIC5lbmQgPSAgMHhmZmZmIH0sCisJeyAu
c3RhcnQgPSAweDE3MDAwLCAuZW5kID0gMHgxN2ZmZiB9LAorCXsgLnN0YXJ0ID0gMHgyNGEwMCwg
LmVuZCA9IDB4MjRhN2YgfSwKK307CisKIHN0YXRpYyBib29sIG1jcl9yYW5nZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTMyIG9mZnNldCkKIHsKIAljb25zdCBzdHJ1Y3QgbWNyX3Jh
bmdlICptY3JfcmFuZ2VzOwogCWludCBpOwogCi0JaWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSAx
MikKKwlpZiAoR1JBUEhJQ1NfVkVSX0ZVTEwoaTkxNSkgPj0gSVBfVkVSKDEyLCA1MCkpCisJCW1j
cl9yYW5nZXMgPSBtY3JfcmFuZ2VzX3hlaHA7CisJZWxzZSBpZiAoR1JBUEhJQ1NfVkVSKGk5MTUp
ID49IDEyKQogCQltY3JfcmFuZ2VzID0gbWNyX3Jhbmdlc19nZW4xMjsKIAllbHNlIGlmIChHUkFQ
SElDU19WRVIoaTkxNSkgPj0gOCkKIAkJbWNyX3JhbmdlcyA9IG1jcl9yYW5nZXNfZ2VuODsKLS0g
CjIuMjUuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
