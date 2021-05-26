Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE2E39184B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 15:01:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617376ED01;
	Wed, 26 May 2021 13:00:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B61956ED06;
 Wed, 26 May 2021 13:00:53 +0000 (UTC)
IronPort-SDR: 5L+/esqkykU6EeADABK11uinlrLknGX/n1+DTNHHejcBNFvhF7VQSXhjKEUOHGeRJwkCDrIUub
 zWzfgx7Q7dSA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="182101786"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="182101786"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:00:53 -0700
IronPort-SDR: MPmboBBEpo8rtnMiImFnEUi0Bbod8R0zQj6TetDIbaIsFyYU/LjE956zRlzlA4B4tcAgf/BNNp
 DnahLjErkVIw==
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="614942220"
Received: from mschan-mobl1.amr.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.212.100.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 06:00:49 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 26 May 2021 14:00:25 +0100
Message-Id: <20210526130025.249629-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210526130025.249629-1-matthew.auld@intel.com>
References: <20210526130025.249629-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 9/9] tests/i915/gem_exec_basic: Iterate
 over all memory regions
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
Cc: Vanshidhar Konda <vanshidhar.r.konda@intel.com>,
 Dominik Grzegorzek <dominik.grzegorzek@intel.com>,
 Janulgue Abdiel <abdiel.janulgue@intel.com>, intel-gfx@lists.freedesktop.org,
 "Kalamarz, Lukasz" <lukasz.kalamarz@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogIkthbGFtYXJ6LCBMdWthc3oiIDxsdWthc3oua2FsYW1hcnpAaW50ZWwuY29tPgoKQXMg
YSBwYXJ0IG9mIGxvY2FsIG1lbW9yeSBlZmZvcnQgd2UgbmVlZCB0byBtYWtlIHN1cmUsIHRoYXQK
ZXZlcnkgYXZhaWxhYmxlIG1lbW9yeSByZWdpb24gaXMgY292ZXJlZC4gVGhpcyBwYXRjaCBpcyBh
biBhdHRlbXB0CmZvciB0aGlzIHByb2JsZW0uIElmIGl0IHdpbGwgYmUgYWNjZXB0ZWQgaXQgd2ls
bCBiZSByZXBsaWNhdGVkIG9uCmVhY2ggdGVzdCB0aGF0IGNhbiBhY3R1YWxseSBiZW5lZml0IGZy
b20gaXQuCgpTaWduZWQtb2ZmLWJ5OiBEb21pbmlrIEdyemVnb3J6ZWsgPGRvbWluaWsuZ3J6ZWdv
cnpla0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1a2FzeiBLYWxhbWFyeiA8bHVrYXN6Lmth
bGFtYXJ6QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmluYXkgQmVsZ2F1bWthciA8dmluYXku
YmVsZ2F1bWthckBpbnRlbC5jb20+CkNjOiBKYW51bGd1ZSBBYmRpZWwgPGFiZGllbC5qYW51bGd1
ZUBpbnRlbC5jb20+CkNjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNj
OiBLYXRhcnp5bmEgRGVjIDxrYXRhcnp5bmEuZGVjQGludGVsLmNvbT4KQ2M6IFZhbnNoaWRoYXIg
S29uZGEgPHZhbnNoaWRoYXIuci5rb25kYUBpbnRlbC5jb20+CkNjOiBTdHVhcnQgU3VtbWVycyA8
c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgpDYzogWmJpZ25pZXcgS2VtcGN6ecWEc2tpIDx6Ymln
bmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4KQWNrZWQtYnk6IFBldHJpIExhdHZhbGEgPHBldHJpLmxh
dHZhbGFAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFzaWMuYyB8IDMgKyst
CiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYXNpYy5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19i
YXNpYy5jCmluZGV4IDhiYzRkYzUyLi44NzJiMWQzYiAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9n
ZW1fZXhlY19iYXNpYy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFzaWMuYwpAQCAtNTYs
NyArNTYsOCBAQCBpZ3RfbWFpbgogCQlpZ3RfYXNzZXJ0KHF1ZXJ5X2luZm8pOwogCiAJCXNldCA9
IGdldF9tZW1vcnlfcmVnaW9uX3NldChxdWVyeV9pbmZvLAotCQkJCQkgICAgSTkxNV9TWVNURU1f
TUVNT1JZKTsKKwkJCQkJICAgIEk5MTVfU1lTVEVNX01FTU9SWSwKKwkJCQkJICAgIEk5MTVfREVW
SUNFX01FTU9SWSk7CiAJfQogCiAJaWd0X3N1YnRlc3Rfd2l0aF9keW5hbWljKCJiYXNpYyIpIHsK
LS0gCjIuMjYuMwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
