Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD5C2B6D1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 15:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A7C26E215;
	Mon, 27 May 2019 13:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69E4D6E216
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 13:46:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 06:46:10 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga001.jf.intel.com with ESMTP; 27 May 2019 06:46:07 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 19:12:02 +0530
Message-Id: <1558964522-7829-13-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
References: <1558964522-7829-1-git-send-email-swati2.sharma@intel.com>
Subject: [Intel-gfx] [v7][PATCH 12/12] FOR_TESTING_ONLY: Print rgb values of
 hw and sw blobs
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgMiArKwogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2NvbG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCmluZGV4IDA2
MWJkYmYuLjMxZTVhNDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nv
bG9yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYwpAQCAtMTM3Niw2
ICsxMzc2LDggQEAgaW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9uKHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogc3RhdGljIGlubGluZSBib29sIGVycl9j
aGVjayhzdHJ1Y3QgZHJtX2NvbG9yX2x1dCAqc3dfbHV0LAogCSAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBkcm1fY29sb3JfbHV0ICpod19sdXQsIHUzMiBlcnIpCiB7CisJRFJNX0RFQlVHX0tN
UygiaHdfbHV0LT5yZWQ9MHgleCBzd19sdXQtPnJlZD0weCV4IGh3X2x1dC0+Ymx1ZT0weCV4IHN3
X2x1dC0+Ymx1ZT0weCV4IGh3X2x1dC0+Z3JlZW49MHgleCBzd19sdXQtPmdyZWVuPTB4JXgiLCBo
d19sdXQtPnJlZCwgc3dfbHV0LT5yZWQsIGh3X2x1dC0+Ymx1ZSwgc3dfbHV0LT5ibHVlLCBod19s
dXQtPmdyZWVuLCBzd19sdXQtPmdyZWVuKTsKKwogCSByZXR1cm4gKChhYnMoKGxvbmcpaHdfbHV0
LT5yZWQgLSBzd19sdXQtPnJlZCkpIDw9IGVycikgJiYKIAkgICAgICAgICgoYWJzKChsb25nKWh3
X2x1dC0+Ymx1ZSAtIHN3X2x1dC0+Ymx1ZSkpIDw9IGVycikgJiYKIAkgICAgICAgICgoYWJzKChs
b25nKWh3X2x1dC0+Z3JlZW4gLSBzd19sdXQtPmdyZWVuKSkgPD0gZXJyKTsKLS0gCjEuOS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
