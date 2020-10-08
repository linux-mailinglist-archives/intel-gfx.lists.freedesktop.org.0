Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD240287DBA
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 23:16:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82EFE6EB20;
	Thu,  8 Oct 2020 21:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB3A6EB16
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 21:16:27 +0000 (UTC)
IronPort-SDR: 5vy5Lx41LHl7yvCaJwUlDZCBPhdNFcBIcY1+f+jlU5/9jFpMyZY99jzZDMiNAgIrkcJ6GOpg2t
 iYINqDHU+kJA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="152326169"
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="152326169"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:16:25 -0700
IronPort-SDR: tFOTy/aQWH7gbdj/o9n0LQFvlV2c+ae4j+rGg6yaQ8REL4gOcOoj8gGLgMNJGYGu6rV0ayJYsV
 q2pawBF5rrow==
X-IronPort-AV: E=Sophos;i="5.77,352,1596524400"; d="scan'208";a="355521399"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.14.55])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 14:16:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Oct 2020 14:19:32 -0700
Message-Id: <20201008211932.24989-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201008211932.24989-1-jose.souza@intel.com>
References: <20201008211932.24989-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915/vbt: Add VRR VBT toggle
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

VGhpcyB3aWxsIGJlIHVzZWQgaW4gZnV0dXJlIGJ1dCBhbHJlYWR5IGFkZGluZyB0byBWQlQgc28g
d2UgYXJlCnVwZGF0ZWQgd2l0aCBWQlQgY2hhbmdlcy4KClJldmlld2VkLWJ5OiBNYXR0IFJvcGVy
IDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRv
IGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
dmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMu
aAppbmRleCA1ZGYyM2UxODQ4YTYuLjQ5YjRiNWZjYTk0MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaApAQCAtODM1LDYgKzgzNSw3IEBAIHN0cnVj
dCBiZGJfbGZwX3Bvd2VyIHsKIAl1MTYgbGFjZV9lbmFibGVkX3N0YXR1czsKIAlzdHJ1Y3QgYWdy
ZXNzaXZlbmVzc19wcm9maWxlX2VudHJ5IGFnZ3Jlc3NpdmVuZXNbMTZdOwogCXUxNiBob2JsOyAv
KiAyMzIrICovCisJdTE2IHZycl9mZWF0dXJlX2VuYWJsZWQ7IC8qIDIzMysgKi8KIH0gX19wYWNr
ZWQ7CiAKIC8qCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
