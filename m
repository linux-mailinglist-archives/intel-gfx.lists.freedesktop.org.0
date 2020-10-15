Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8936828FB8A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC9706E28A;
	Thu, 15 Oct 2020 23:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3858D6E2B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:16 +0000 (UTC)
IronPort-SDR: P08e+FjhPVT3cLqApcUrKGugX2EZKjZBd68xwj4U3IEDvZYIlCSUNfFNUcfciIYrdp6ZtBfATr
 Y7Sp+rRoRupA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010301"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010301"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:15 -0700
IronPort-SDR: th6zGMcn2bea6xp6hc7C9+FClpIRWH+5XfRGYdCKn20Xy3pdai9LOyxRpys4KpmLQFtn+IGkRm
 x+f1PVYrYgng==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450384"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:14 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:55 +0530
Message-Id: <20201015234902.7134-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
References: <20201015234902.7134-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 05/12] drm/i915/display: Nuke bogus lspcon check
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

RHJvcHBlZCBhIGlycmVsZXZhbnQgbHNwY29uIGNoZWNrIGZyb20gaW50ZWxfaGRtaV9hZGRfcHJv
cGVydGllcwpmdW5jdGlvbi4KClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIiAgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaGRtaS5jIHwgMTAgKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMKaW5kZXggOGU0YjgyMGI3MTVhLi5mMWE5MjdjZGY3OTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0yOTUwLDIwICsyOTUwLDEyIEBAIHN0YXRpYyB2
b2lkCiBpbnRlbF9oZG1pX2FkZF9wcm9wZXJ0aWVzKHN0cnVjdCBpbnRlbF9oZG1pICppbnRlbF9o
ZG1pLCBzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogewogCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5kZXYpOwotCXN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0KLQkJCQloZG1pX3RvX2RpZ19wb3J0KGludGVs
X2hkbWkpOwogCiAJaW50ZWxfYXR0YWNoX2ZvcmNlX2F1ZGlvX3Byb3BlcnR5KGNvbm5lY3Rvcik7
CiAJaW50ZWxfYXR0YWNoX2Jyb2FkY2FzdF9yZ2JfcHJvcGVydHkoY29ubmVjdG9yKTsKIAlpbnRl
bF9hdHRhY2hfYXNwZWN0X3JhdGlvX3Byb3BlcnR5KGNvbm5lY3Rvcik7CiAKLQkvKgotCSAqIEF0
dGFjaCBDb2xvcnNwYWNlIHByb3BlcnR5IGZvciBOb24gTFNQQ09OIGJhc2VkIGRldmljZQotCSAq
IFRvRG86IFRoaXMgbmVlZHMgdG8gYmUgZXh0ZW5kZWQgZm9yIExTUENPTiBpbXBsZW1lbnRhdGlv
bgotCSAqIGFzIHdlbGwuIFdpbGwgYmUgaW1wbGVtZW50ZWQgc2VwYXJhdGVseS4KLQkgKi8KLQlp
ZiAoIWRpZ19wb3J0LT5sc3Bjb24uYWN0aXZlKQotCQlpbnRlbF9hdHRhY2hfY29sb3JzcGFjZV9w
cm9wZXJ0eShjb25uZWN0b3IpOworCWludGVsX2F0dGFjaF9jb2xvcnNwYWNlX3Byb3BlcnR5KGNv
bm5lY3Rvcik7CiAKIAlkcm1fY29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3R5cGVfcHJvcGVydHko
Y29ubmVjdG9yKTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
