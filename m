Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4678BFBA
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 19:40:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07EA06E1D2;
	Tue, 13 Aug 2019 17:40:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BD356E1D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 17:40:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 10:40:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="178738066"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga003.jf.intel.com with ESMTP; 13 Aug 2019 10:40:27 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 10:41:20 -0700
Message-Id: <20190813174121.129593-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190813174121.129593-1-stuart.summers@intel.com>
References: <20190813174121.129593-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Print CCID for all renderCS
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

VXNlIHJlbmRlciBjbGFzcyBpbnN0ZWFkIG9mIFJDUzAgd2hlbiBwcmludGluZyBDQ0lELgoKU2ln
bmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggYzdiMjQxNDE3ZWUxLi41MGIxM2NhMjk4
NzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCkBAIC0xMjAy
LDcgKzEyMDIsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9lbmdpbmVfcHJpbnRfcmVnaXN0ZXJzKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAl1bnNpZ25lZCBsb25nIGZsYWdzOwogCXU2
NCBhZGRyOwogCi0JaWYgKGVuZ2luZS0+aWQgPT0gUkNTMCAmJiBJU19HRU5fUkFOR0UoZGV2X3By
aXYsIDQsIDcpKQorCWlmIChlbmdpbmUtPmlkID09IFJFTkRFUl9DTEFTUyAmJiBJU19HRU5fUkFO
R0UoZGV2X3ByaXYsIDQsIDcpKQogCQlkcm1fcHJpbnRmKG0sICJcdENDSUQ6IDB4JTA4eFxuIiwg
RU5HSU5FX1JFQUQoZW5naW5lLCBDQ0lEKSk7CiAJZHJtX3ByaW50ZihtLCAiXHRSSU5HX1NUQVJU
OiAweCUwOHhcbiIsCiAJCSAgIEVOR0lORV9SRUFEKGVuZ2luZSwgUklOR19TVEFSVCkpOwotLSAK
Mi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
