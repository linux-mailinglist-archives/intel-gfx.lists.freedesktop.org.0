Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DACA6104585
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 22:12:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8FD6E7EA;
	Wed, 20 Nov 2019 21:12:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC686E7EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 21:12:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 13:12:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="381503202"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga005.jf.intel.com with ESMTP; 20 Nov 2019 13:12:22 -0800
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 13:13:21 -0800
Message-Id: <20191120211321.88021-1-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use intel_gt_pm_put_async in GuC
 submission path
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

R3VDIHN1Ym1pc3Npb24gcGF0aCBjYW4gYmUgY2FsbGVkIGZyb20gYW4gaW50ZXJydXB0IGNvbnRl
eHQKYW5kIHNvIHNob3VsZCB1c2UgYSB3b3JrZXIgdG8gYXZvaWQgaG9sZGluZyBhIG11dGV4LgoK
UmVmZXJlbmNlczogMDc3NzlhNzZlZTFmICgiZHJtL2k5MTU6IE1hcmsgdXAgdGhlIGNhbGxpbmcg
Y29udGV4dCBmb3IgaW50ZWxfd2FrZXJlZl9wdXQoKSIpCgpTaWduZWQtb2ZmLWJ5OiBTdHVhcnQg
U3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjX3N1Ym1pc3Npb24uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2d1Y19zdWJtaXNzaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9ndWNfc3VibWlzc2lvbi5jCmluZGV4IDkwMmUyNWViNmI5ZC4uZGNjY2JkNjQwODA5IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfc3VibWlzc2lvbi5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19zdWJtaXNzaW9uLmMK
QEAgLTUzNyw3ICs1MzcsNyBAQCBzdGF0aWMgdm9pZCBzY2hlZHVsZV9vdXQoc3RydWN0IGk5MTVf
cmVxdWVzdCAqcnEpCiB7CiAJdHJhY2VfaTkxNV9yZXF1ZXN0X291dChycSk7CiAKLQlpbnRlbF9n
dF9wbV9wdXQocnEtPmVuZ2luZS0+Z3QpOworCWludGVsX2d0X3BtX3B1dF9hc3luYyhycS0+ZW5n
aW5lLT5ndCk7CiAJaTkxNV9yZXF1ZXN0X3B1dChycSk7CiB9CiAKLS0gCjIuMjIuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
