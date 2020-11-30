Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A54B2C8ED1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 21:14:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72DCC6E836;
	Mon, 30 Nov 2020 20:14:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF53F6E834
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 20:14:24 +0000 (UTC)
IronPort-SDR: tdhoETV4yA7T22UbRHvmBiq8XdVDJcp3P/cqiSP/WvbEMrgvPL6oSczDO+U303zgwFP/7mzQXU
 cxo+++U/ZGag==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="190892939"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="190892939"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:10 -0800
IronPort-SDR: 1vfSPqnAqsMsDMAo++Pi8HAYP71S9oCKV0GTONZpjmPzNWZQNvyhbC7TKB2bhJ0J4KLzL0BRmn
 ZVSOWsigFNFA==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="372472319"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 12:14:09 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 02:17:28 +0530
Message-Id: <20201130204738.2443-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201130204738.2443-1-uma.shankar@intel.com>
References: <20201130204738.2443-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v14 05/15] drm/i915/display: Add a WARN for invalid
 output range and format
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

QWRkIGEgV0FSTiB0byBydWxlIG91dCBhbiBpbnZhbGlkIG91dHB1dCByYW5nZSBhbmQgZm9ybWF0
CmNvbWJpbmF0aW9uLiBUaGlzIGlzIHRvIGFsaWduIHRoZSBsc3Bjb24gY29kZSB3aXRoCmNvbXB1
dGVfYXZpX2luZm9mcmFtZXMuCgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2xzcGNvbi5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKaW5kZXggN2NiNjVlMGYy
NDFlLi45NTUyZGZjNTVlMjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfbHNwY29uLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9sc3Bjb24uYwpAQCAtNTIzLDYgKzUyMywxMCBAQCB2b2lkIGxzcGNvbl9zZXRfaW5mb2ZyYW1l
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAllbHNlCiAJCWZyYW1lLmF2aS5jb2xv
cnNwYWNlID0gSERNSV9DT0xPUlNQQUNFX1JHQjsKIAorCS8qIG5vbnNlbnNlIGNvbWJpbmF0aW9u
ICovCisJZHJtX1dBUk5fT04oZW5jb2Rlci0+YmFzZS5kZXYsIGNydGNfc3RhdGUtPmxpbWl0ZWRf
Y29sb3JfcmFuZ2UgJiYKKwkJICAgIGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgIT0gSU5URUxf
T1VUUFVUX0ZPUk1BVF9SR0IpOworCiAJaWYgKGNydGNfc3RhdGUtPm91dHB1dF9mb3JtYXQgPT0g
SU5URUxfT1VUUFVUX0ZPUk1BVF9SR0IpIHsKIAkJZHJtX2hkbWlfYXZpX2luZm9mcmFtZV9xdWFu
dF9yYW5nZSgmZnJhbWUuYXZpLAogCQkJCQkJICAgY29ubl9zdGF0ZS0+Y29ubmVjdG9yLAotLSAK
Mi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
