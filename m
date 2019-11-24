Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB61A10841C
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Nov 2019 17:01:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDE089EA3;
	Sun, 24 Nov 2019 16:01:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABF689EA3
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Nov 2019 16:01:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Nov 2019 08:01:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,238,1571727600"; d="scan'208";a="216757513"
Received: from gksingh.iind.intel.com ([10.66.179.29])
 by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2019 08:01:23 -0800
From: Gaurav K Singh <gaurav.k.singh@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Nov 2019 21:34:28 +0530
Message-Id: <1574611468-3319-1-git-send-email-gaurav.k.singh@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH] drm/i915: Enable PSR2 in next iteration of
 suspend-resume/S0ix cycling
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

SW4gY2FzZSBvZiBDUkMgbWlzbWF0Y2gsIHBhbmVsIGdlbmVyYXRlcyBJUlFfSEQgYW5kClBTUjIg
Z2V0cyBkaXNhYmxlZCBieSBpOTE1IGRyaXZlci4gRHVlIHRvIHRoaXMsIFBTUjIgd2lsbApvbmx5
IGJlIGVuYWJsZWQgYmFjayBvbmx5IGlmIHN5c3RlbSBpcyByZWJvb3RlZCBvciBjb2xkIGJvb3Qu
ClNvLCBpbiBjYXNlcyBvZiBzdXNwZW5kIHJlc3VtZSBzdHJlc3MgdGVzdCBhbmQgUzBpeCBzdHJl
c3MgdGVzdCwKd2hlbiB3ZSBlbmNvdW50ZXIgdGhpcyBDUkMgaXNzdWUgb24gYSBwYXJ0aWN1bGFy
IGl0ZXJhdGlvbiwKb25jZSBQU1IyIGlzIGRpc2FibGVkLGl0IHJlbWFpbnMgZGlzYWJsZWQgdGhy
b3VnaG91dCBhbGwgdGhlCmN5Y2xpbmcgaXRlcmF0aW9ucyB1bnRpbCB0aGUgc3lzdGVtIGlzIHJl
Ym9vdGVkLgoKS2VlcGluZyB0aGlzIGluIG1pbmQsIG1hbnkgdGltZXMgdXNlcnMgZG8gbm90IHJl
Ym9vdCB0aGVpciBzeXN0ZW0gYW5kCnRoZXkganVzdCBrZWVwIGxpZCBvZmYvb24gb3Igc3VzcGVu
ZC9yZXN1bWUuIEluIHRoZXNlIHNjZW5hcmlvcwppbiBjYXNlIG9mIENSQyBpc3N1ZSwgcGFuZWwg
d2lsbCBiZWNvbWUgbm9uLVBTUjIgd2hpY2ggd2lsbCBldmVudHVhbGx5CmRyYWluIG91dCBiYXR0
ZXJ5LgoKSW4gb3JkZXIgdG8gZml4IHRoaXMgYmVoYXZpb3IsIGRpZCBub3Qgc2V0IHRoZSAic2lu
a19ub3RfcmVsaWFibGUiIGZsYWcKdG8gYmUgdHJ1ZSwgc28gdGhhdCBpbnRlbF9wc3JfY29tcHV0
ZV9jb25maWcoKSBjYW4gcGFzcyBpbiBjYXNlIG9mIGEKbm9ybWFsIG1vZGVzZXQgd2hpY2ggd2ls
bCBsZWFkIHRvIGVuYWJsaW5nIFBTUjIgYWdhaW4gaW4gbmV4dCBpdGVyYXRpb24Kb2Ygc3VzcGVu
ZC9yZXN1bWUgb3IgUzBpeCBjeWNsZSh3aXRob3V0IHJlYm9vdCkuCgpUZXN0ZWQgdGhpcyBwYXRj
aCBhbmQgd29ya3MgZmluZSBvbiBHZW45IEludGVsIGNocm9tZWJvb2ssIFBTUjIgd2FzCmVuYWJs
ZWQgYmFjayBpbiBuZXh0IGl0ZXJhdGlvbiwgbm8gb3RoZXIgc2lkZWVmZmVjdHMgb2JzZXJ2ZWQu
CgpTaWduZWQtb2ZmLWJ5OiBHYXVyYXYgSyBTaW5naCA8Z2F1cmF2Lmsuc2luZ2hAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsrLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IGMxZDEzMzM2MmI3Ni4uODQ2
NWQwZmMyMjE0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAg
LTE0MjAsMTAgKzE0MjAsOSBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50
ZWxfZHAgKmludGVsX2RwKQogCWlmICh2YWwgJiB+ZXJyb3JzKQogCQlEUk1fRVJST1IoIlBTUl9F
UlJPUl9TVEFUVVMgdW5oYW5kbGVkIGVycm9ycyAleFxuIiwKIAkJCSAgdmFsICYgfmVycm9ycyk7
Ci0JaWYgKHZhbCAmIGVycm9ycykgeworCWlmICh2YWwgJiBlcnJvcnMpCiAJCWludGVsX3Bzcl9k
aXNhYmxlX2xvY2tlZChpbnRlbF9kcCk7Ci0JCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0cnVl
OwotCX0KKwogCS8qIGNsZWFyIHN0YXR1cyByZWdpc3RlciAqLwogCWRybV9kcF9kcGNkX3dyaXRl
YigmaW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VSUk9SX1NUQVRVUywgdmFsKTsKIGV4aXQ6Ci0tIAox
LjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
