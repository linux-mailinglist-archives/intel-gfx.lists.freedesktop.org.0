Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C20998314A
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 14:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185346E36F;
	Tue,  6 Aug 2019 12:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 293C16E370
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 12:25:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 05:25:23 -0700
X-IronPort-AV: E=Sophos;i="5.64,353,1559545200"; d="scan'208";a="325620171"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Aug 2019 05:25:20 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Tue,  6 Aug 2019 14:24:57 +0200
Message-Id: <20190806122458.15237-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190806122458.15237-1-janusz.krzysztofik@linux.intel.com>
References: <20190806122458.15237-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 1/2] drm/i915: Fix NULL pointer dereference
 in execlists' trace_ports()
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgaXQgZXZlciBoYXBwZW5zIHRyYWNlX3BvcnQoKSBoZWxwZXIgaXMgY2FsbGVkIHdpdGggTlVM
TCBwb3J0IDAsCmtlcm5lbCBwYW5pYyBvY2N1cnMuICBGaXggaXQuCgpTaWduZWQtb2ZmLWJ5OiBK
YW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA4ICsrKystLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggZDkwNjFkOTM0OGNiLi5hYTEzOGFhZjg3NDMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC02NTYsMTAgKzY1NiwxMCBAQCB0cmFjZV9w
b3J0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzLAogCiAJ
R0VNX1RSQUNFKCIlczogJXMgeyAlbGx4OiVsbGQlcywgJWxseDolbGxkIH1cbiIsCiAJCSAgZW5n
aW5lLT5uYW1lLCBtc2csCi0JCSAgcG9ydHNbMF0tPmZlbmNlLmNvbnRleHQsCi0JCSAgcG9ydHNb
MF0tPmZlbmNlLnNlcW5vLAotCQkgIGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQocG9ydHNbMF0pID8g
IiEiIDoKLQkJICBpOTE1X3JlcXVlc3Rfc3RhcnRlZChwb3J0c1swXSkgPyAiKiIgOgorCQkgIHBv
cnRzWzBdID8gcG9ydHNbMF0tPmZlbmNlLmNvbnRleHQgOiAwLAorCQkgIHBvcnRzWzBdID8gcG9y
dHNbMF0tPmZlbmNlLnNlcW5vIDogMCwKKwkJICBwb3J0c1swXSAmJiBpOTE1X3JlcXVlc3RfY29t
cGxldGVkKHBvcnRzWzBdKSA/ICIhIiA6CisJCSAgcG9ydHNbMF0gJiYgaTkxNV9yZXF1ZXN0X3N0
YXJ0ZWQocG9ydHNbMF0pID8gIioiIDoKIAkJICAiIiwKIAkJICBwb3J0c1sxXSA/IHBvcnRzWzFd
LT5mZW5jZS5jb250ZXh0IDogMCwKIAkJICBwb3J0c1sxXSA/IHBvcnRzWzFdLT5mZW5jZS5zZXFu
byA6IDApOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
