Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D97254CFF7
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 16:06:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2286E595;
	Thu, 20 Jun 2019 14:06:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8976E6E598
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 14:06:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 07:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="162531235"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 20 Jun 2019 07:06:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:05:47 +0300
Message-Id: <20190620140600.11357-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620140600.11357-1-imre.deak@intel.com>
References: <20190620140600.11357-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 10/23] drm/i915: Wait for TypeC PHY complete
 flag to clear in safe mode
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

VGhlIFBIWSBzdGF0dXMgY29tcGxldGUgZmxhZyBub3JtYWxseSBjbGVhcnMgd2hlbiBkaXNjb25u
ZWN0aW5nIHRoZSBQSFkKaW4gRFAtYWx0IG1vZGUgKGFjaGlldmVkIGJ5IHN3aXRjaGluZyB0byBz
YWZlIG1vZGUpLCBzbyB3YWl0IGZvciB0aGUKZmxhZyB0byBjbGVhci4KCnYyOgotIFVzZSBEUk1f
REVCVUdfS01TIGluc3RlYWQgb2YgRFJNX0RFQlVHX0RSSVZFUi4gKEpvc8OpKQoKQ2M6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZp
IDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKaW5kZXggZmJmMGE4YzkzNjFmLi5hMDI1MTM4
MTQzOTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKQEAgLTEyNyw2
ICsxMjcsMTAgQEAgc3RhdGljIHZvaWQgaWNsX3RjX3BoeV9zZXRfc2FmZV9tb2RlKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCQl2YWwgfD0gRFBfUEhZX01PREVfU1RBVFVT
X05PVF9TQUZFKHRjX3BvcnQpOwogCiAJSTkxNV9XUklURShQT1JUX1RYX0RGTEVYRFBDU1NTLCB2
YWwpOworCisJaWYgKGVuYWJsZSAmJiB3YWl0X2ZvcighaWNsX3RjX3BoeV9zdGF0dXNfY29tcGxl
dGUoZGlnX3BvcnQpLCAxMCkpCisJCURSTV9ERUJVR19LTVMoIlBvcnQgJXM6IFBIWSBjb21wbGV0
ZSBjbGVhciB0aW1lZCBvdXRcbiIsCisJCQkgICAgICBkaWdfcG9ydC0+dGNfcG9ydF9uYW1lKTsK
IH0KIAogLyoKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
