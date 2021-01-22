Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 198E33010EB
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB39B6EA7E;
	Fri, 22 Jan 2021 23:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9A876E900
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:31 +0000 (UTC)
IronPort-SDR: Ag4wMpkanCfeAzGbag1pHJEsY2tupfpR7h7BF2HtRviK5YhAGGRBVfrKPVDRyM0Hu8g7n7QB+5
 /de+6gd9UlaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="158703310"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="158703310"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:30 -0800
IronPort-SDR: AvLjyMl0t05H/mMACihyXgCQVOnkWUeImdqr66NyPtI9Pvj352+6vbtymYTFIoXW70KwVh2oWV
 PF4+YLSuwwIw==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466020"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:38 -0800
Message-Id: <20210122232647.22688-9-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 09/18] drm/i915: Rename VRR_CTL reg fields
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdp
dmUgdGhlIHBpcGVsaW5lIGZ1bGwgbGluZSBjb3VudCBiaXRzIG1vcmUgZGVzY3JpcHRpdmUgbmFt
ZXMKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAxNCArKysrKysr
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCA4YjliYmM2YmFjYjEuLmU3ZTQxYTNjNDY3ZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC00MzQ2LDEzICs0MzQ2LDEzIEBAIGVudW0gewog
I2RlZmluZSBfVFJBTlNfVlJSX0NUTF9CCQkweDYxNDIwCiAjZGVmaW5lIF9UUkFOU19WUlJfQ1RM
X0MJCTB4NjI0MjAKICNkZWZpbmUgX1RSQU5TX1ZSUl9DVExfRAkJMHg2MzQyMAotI2RlZmluZSBU
UkFOU19WUlJfQ1RMKHRyYW5zKQkJX01NSU9fVFJBTlMyKHRyYW5zLCBfVFJBTlNfVlJSX0NUTF9B
KQotI2RlZmluZSAgIFZSUl9DVExfVlJSX0VOQUJMRQkJUkVHX0JJVCgzMSkKLSNkZWZpbmUgICBW
UlJfQ1RMX0lHTl9NQVhfU0hJRlQJCVJFR19CSVQoMzApCi0jZGVmaW5lICAgVlJSX0NUTF9GTElQ
X0xJTkVfRU4JCVJFR19CSVQoMjkpCi0jZGVmaW5lICAgVlJSX0NUTF9MSU5FX0NPVU5UX01BU0sJ
UkVHX0dFTk1BU0soMTAsIDMpCi0jZGVmaW5lICAgVlJSX0NUTF9MSU5FX0NPVU5UKHgpCQlSRUdf
RklFTERfUFJFUChWUlJfQ1RMX0xJTkVfQ09VTlRfTUFTSywgKHgpKQotI2RlZmluZSAgIFZSUl9D
VExfU1dfRlVMTExJTkVfQ09VTlQJUkVHX0JJVCgwKQorI2RlZmluZSBUUkFOU19WUlJfQ1RMKHRy
YW5zKQkJCV9NTUlPX1RSQU5TMih0cmFucywgX1RSQU5TX1ZSUl9DVExfQSkKKyNkZWZpbmUgICBW
UlJfQ1RMX1ZSUl9FTkFCTEUJCQlSRUdfQklUKDMxKQorI2RlZmluZSAgIFZSUl9DVExfSUdOX01B
WF9TSElGVAkJCVJFR19CSVQoMzApCisjZGVmaW5lICAgVlJSX0NUTF9GTElQX0xJTkVfRU4JCQlS
RUdfQklUKDI5KQorI2RlZmluZSAgIFZSUl9DVExfUElQRUxJTkVfRlVMTF9NQVNLCQlSRUdfR0VO
TUFTSygxMCwgMykKKyNkZWZpbmUgICBWUlJfQ1RMX1BJUEVMSU5FX0ZVTEwoeCkJCVJFR19GSUVM
RF9QUkVQKFZSUl9DVExfUElQRUxJTkVfRlVMTF9NQVNLLCAoeCkpCisjZGVmaW5lICAgVlJSX0NU
TF9QSVBFTElORV9GVUxMX09WRVJSSURFCVJFR19CSVQoMCkKIAogI2RlZmluZSBfVFJBTlNfVlJS
X1ZNQVhfQQkJMHg2MDQyNAogI2RlZmluZSBfVFJBTlNfVlJSX1ZNQVhfQgkJMHg2MTQyNAotLSAK
Mi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
