Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CC19ABEA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 11:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A5CD6EC53;
	Fri, 23 Aug 2019 09:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0896F6EC53;
 Fri, 23 Aug 2019 09:52:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 02:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="330673473"
Received: from helsinki.fi.intel.com ([10.237.66.174])
 by orsmga004.jf.intel.com with ESMTP; 23 Aug 2019 02:52:38 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 12:52:30 +0300
Message-Id: <20190823095232.28908-5-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
References: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/6] drm/i915/dp: Attach colorspace property
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQgYXR0YWNoZXMgdGhlIGNvbG9yc3BhY2UgY29ubmVjdG9yIHByb3BlcnR5IHRvIGEgRGlzcGxh
eVBvcnQgY29ubmVjdG9yLgpCYXNlZCBvbiBjb2xvcnNwYWNlIGNoYW5nZSwgbW9kZXNldCB3aWxs
IGJlIHRyaWdnZXJlZCB0byBzd2l0Y2ggdG8gYSBuZXcKY29sb3JzcGFjZS4KCkJhc2VkIG9uIGNv
bG9yc3BhY2UgcHJvcGVydHkgdmFsdWUgY3JlYXRlIGEgVlNDIFNEUCBwYWNrZXQgd2l0aCBhcHBy
b3ByaWF0ZQpjb2xvcnNwYWNlLiBUaGlzIHdvdWxkIGhlbHAgdG8gZW5hYmxlIHdpZGVyIGNvbG9y
IGdhbXV0IGxpa2UgQlQyMDIwIG9uIGEKc2luayBkZXZpY2UuCgpTaWduZWQtb2ZmLWJ5OiBHd2Fu
LWd5ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCAy
OTVkNWVkMmJlOTYuLjcyMThlMTU5ZjU1ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwpAQCAtNjQwMiw2ICs2NDAyLDggQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QK
IAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDUpCiAJCWRybV9jb25uZWN0b3JfYXR0
YWNoX21heF9icGNfcHJvcGVydHkoY29ubmVjdG9yLCA2LCAxMik7CiAKKwlpbnRlbF9hdHRhY2hf
Y29sb3JzcGFjZV9wcm9wZXJ0eShjb25uZWN0b3IpOworCiAJaWYgKGludGVsX2RwX2lzX2VkcChp
bnRlbF9kcCkpIHsKIAkJdTMyIGFsbG93ZWRfc2NhbGVyczsKIAotLSAKMi4yMi4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
