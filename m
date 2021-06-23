Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F123B18D4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 13:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379966E8B1;
	Wed, 23 Jun 2021 11:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4036E6E8B8;
 Wed, 23 Jun 2021 11:26:57 +0000 (UTC)
IronPort-SDR: 37WICaIZ5r7FvWHyFBBkf+5TGDCqkEcGejvhuCBOqVIie3IOZVFYv45tvWN+UEya1VhQBtzv4+
 lbbDkloCm2xw==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="271086590"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="271086590"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:26:56 -0700
IronPort-SDR: vjYspanLSwwRdHk/xlA5ejlFlN16CDRROJxXlh/eB8kbt9uzMEigHHoBrLa0wpISb3+p+ejNkH
 PYp4rScHJinQ==
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="454619210"
Received: from dconnon-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.14.111])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 04:26:55 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 12:26:37 +0100
Message-Id: <20210623112637.266855-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210623112637.266855-1-matthew.auld@intel.com>
References: <20210623112637.266855-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/gtt: ignore min_page_size for
 paging structures
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG1pbl9wYWdlX3NpemUgaXMgb25seSBuZWVkZWQgZm9yIHBhZ2VzIGluc2VydGVkIGludG8g
dGhlIEdUVCwgYW5kCmZvciBvdXIgcGFnaW5nIHN0cnVjdHVyZXMgd2Ugb25seSBuZWVkIGF0IG1v
c3QgNEsgYnl0ZXMsIHNvIHNpbXBseQppZ25vcmUgdGhlIG1pbl9wYWdlX3NpemUgcmVzdHJpY3Rp
b25zIGhlcmUsIG90aGVyd2lzZSB3ZSBtaWdodCBzZWUgc29tZQpzZXZlcmUgb3ZlcmFsbG9jYXRp
b24gb24gc29tZSBkZXZpY2VzLgoKU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgpDYzogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21A
bGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0dC5j
IHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndHQuYwppbmRleCAwODRlYTY1ZDU5YzAuLjYxZThhOGMy
NTM3NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3R0LmMKQEAgLTE2LDcgKzE2LDcgQEAg
c3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKmFsbG9jX3B0X2xtZW0oc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sIGludCBzeikKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqOwogCi0Jb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKHZtLT5pOTE1LCBzeiwg
MCk7CisJb2JqID0gX19pOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xtZW1fd2l0aF9wcyh2bS0+aTkx
NSwgc3osIHN6LCAwKTsKIAkvKgogCSAqIEVuc3VyZSBhbGwgcGFnaW5nIHN0cnVjdHVyZXMgZm9y
IHRoaXMgdm0gc2hhcmUgdGhlIHNhbWUgZG1hLXJlc3YKIAkgKiBvYmplY3QgdW5kZXJuZWF0aCwg
d2l0aCB0aGUgaWRlYSB0aGF0IG9uZSBvYmplY3RfbG9jaygpIHdpbGwgbG9jawotLSAKMi4yNi4z
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
