Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706263733EF
	for <lists+intel-gfx@lfdr.de>; Wed,  5 May 2021 05:37:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435976E40A;
	Wed,  5 May 2021 03:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 721B46E40A;
 Wed,  5 May 2021 03:37:48 +0000 (UTC)
IronPort-SDR: B3oO7FJXXY8eWCHFEOXI9D2RqiTJjU7dee0TLFijXFM15rHjrxEGpDvbIv0gJvyEj920r+7JUQ
 ulMGs4t62zaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="196080427"
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; d="scan'208";a="196080427"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 20:37:47 -0700
IronPort-SDR: RRkdKy+ckiIauACqzCOPaYhrEMtArGKVheHBa3UotahxT8ckoBUWNlbT4m5TO9jATlnBeFE/TR
 TyDG4FupUgjg==
X-IronPort-AV: E=Sophos;i="5.82,273,1613462400"; d="scan'208";a="433601761"
Received: from tassilo.jf.intel.com ([10.54.74.11])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2021 20:37:47 -0700
From: Andi Kleen <ak@linux.intel.com>
To: jani.nikula@linux.intel.com
Date: Tue,  4 May 2021 20:37:37 -0700
Message-Id: <20210505033737.1282652-1-ak@linux.intel.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] i915: Increase *_latency array size
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Andi Kleen <andi@firstfloor.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW5kaSBLbGVlbiA8YW5kaUBmaXJzdGZsb29yLm9yZz4KCk5ld2VyIGdjYyBwcmludHMg
dGhlIGZvbGxvd2luZyB3YXJuaW5nOgoKZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYzoz
MDU3Ojk6IHdhcm5pbmc6IOKAmGludGVsX3ByaW50X3dtX2xhdGVuY3nigJkgcmVhZGluZyAxNiBi
eXRlcyBmcm9tIGEgcmVnaW9uIG9mIHNpemUgMTAgWy1Xc3RyaW5nb3Atb3ZlcnJlYWRdCmFuZCBz
b21lIG90aGVyIHJlbGF0ZWQgd2FybmluZ3MgaW4gc2ltaWxhciBmdW5jdGlvbnMuCgpnY2MgaGFz
IGEgcG9pbnQgaGVyZS4gU29tZSBvZiB0aGUgbGF0ZW5jeSBhcnJheXMgb25seSBoYXZlIDUgbWVt
YmVycywKYnV0IHByaW50X3dtX2xhdGVuY3kgbWF5IHJlYWQgdXAgdG8gbWF4X2xldmVsIHJldHVy
bmVkIGJ5IGlsa193bV9tYXhfbGV2ZWwsCndoaWNoIGNhbiBiZSB1cHRvIDcgZm9yIHRoZSA+PSBH
RU45IGNhc2UuCgpTbyBpdCB3aWxsIHJlYWQgc29tZSBmaWVsZHMgYmV5b25kIHRoZSBhcnJheS4K
CkluY3JlYXNlIGFsbCB0aGUgbGF0ZW5jeSBmaWVsZHMgdG8gOCBtZW1iZXJzLCB3aGljaCBpcyBl
bm91Z2ggZm9yIFNLTC4KCkkgZG9uJ3Qga25vdyBpZiB0aGV5IGFyZSBjb3JyZWN0bHkgaW5pdGlh
bGl6ZWQgdXB0byA4LCBidXQgZGV2X3ByaXYKc2hvdWxkIHN0YXJ0IG91dCBhcyB6ZXJvLCBzbyBw
cmVzdW1hYmx5IHRoZXkgd2lsbCBiZSB6ZXJvLgoKU2lnbmVkLW9mZi1ieTogQW5kaSBLbGVlbiA8
YW5kaUBmaXJzdGZsb29yLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
IHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggY2I2MmRkYmEyMDM1Li5jODBhZGQ1ZjZk
MzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTA5NSwxMSArMTA5NSwxMSBAQCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAJCSAqIGluIDAuNXVzIHVuaXRzIGZvciBXTTErLgogCQkg
Ki8KIAkJLyogcHJpbWFyeSAqLwotCQl1MTYgcHJpX2xhdGVuY3lbNV07CisJCXUxNiBwcmlfbGF0
ZW5jeVs4XTsKIAkJLyogc3ByaXRlICovCi0JCXUxNiBzcHJfbGF0ZW5jeVs1XTsKKwkJdTE2IHNw
cl9sYXRlbmN5WzhdOwogCQkvKiBjdXJzb3IgKi8KLQkJdTE2IGN1cl9sYXRlbmN5WzVdOworCQl1
MTYgY3VyX2xhdGVuY3lbOF07CiAJCS8qCiAJCSAqIFJhdyB3YXRlcm1hcmsgbWVtb3J5IGxhdGVu
Y3kgdmFsdWVzCiAJCSAqIGZvciBTS0wgZm9yIGFsbCA4IGxldmVscwotLSAKMi4yNS40CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
