Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEBD397380
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 14:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE206EA45;
	Tue,  1 Jun 2021 12:48:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835096EA48
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 12:48:01 +0000 (UTC)
IronPort-SDR: LdBBbwFMhb6JYM56K51ZwrcTcnA8dW6rvqlUcA2HUmKozUoUEiWvgBDl1l/iVHH5zOEoHECTdP
 An0rSiZP4VxQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="267413634"
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="267413634"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 05:48:01 -0700
IronPort-SDR: xwSdpwjtwTSFZr3S6f0aTWKz7XyDwUpPYliXWqPmCfLNaArkhoISIlg3sILPu97Jy+sHMWN2jZ
 hUoJe9vXs3Rw==
X-IronPort-AV: E=Sophos;i="5.83,239,1616482800"; d="scan'208";a="399286435"
Received: from unknown (HELO helsinki.fi.intel.com) ([10.237.66.162])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2021 05:47:58 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Jun 2021 15:47:49 +0300
Message-Id: <20210601124749.89989-2-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210601124749.89989-1-gwan-gyeong.mun@intel.com>
References: <20210601124749.89989-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: Disable PSR around cdclk
 changes
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFV
WCBsb2dpYyBpcyBvZnRlbiBjbG9ja2VkIGZyb20gY2RjbGsuIERpc2FibGUgUFNSIHRvIG1ha2Ug
c3VyZQp0aGVyZSBhcmUgbm8gaHcgaW5pdGlhdGVkIEFVWCB0cmFuc2FjdGlvbnMgaW4gZmxpZ2h0
IHdoaWxlIHdlCmNoYW5nZSB0aGUgY2RjbGsgZnJlcXVlbmN5LgoKQ2M6IE1pa2EgS2Fob2xhIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEd3YW4tZ3llb25nIE11
biA8Z3dhbi1neWVvbmcubXVuQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxMyArKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwg
MTMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYwppbmRleCA0NjU2YTZlZGMzYmUuLjYxOGE5ZTFlMmIwYyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMjgsNiArMjgsNyBAQAogI2luY2x1ZGUg
ImludGVsX2NkY2xrLmgiCiAjaW5jbHVkZSAiaW50ZWxfZGUuaCIKICNpbmNsdWRlICJpbnRlbF9k
aXNwbGF5X3R5cGVzLmgiCisjaW5jbHVkZSAiaW50ZWxfcHNyLmgiCiAjaW5jbHVkZSAiaW50ZWxf
c2lkZWJhbmQuaCIKIAogLyoqCkBAIC0xOTA4LDYgKzE5MDksMTIgQEAgc3RhdGljIHZvaWQgaW50
ZWxfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogCWludGVs
X2R1bXBfY2RjbGtfY29uZmlnKGNkY2xrX2NvbmZpZywgIkNoYW5naW5nIENEQ0xLIHRvIik7CiAK
Kwlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX3dpdGhfcHNyKCZkZXZfcHJpdi0+ZHJtLCBlbmNvZGVy
KSB7CisJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rl
cik7CisKKwkJaW50ZWxfcHNyX3BhdXNlKGludGVsX2RwKTsKKwl9CisKIAkvKgogCSAqIExvY2sg
YXV4L2dtYnVzIHdoaWxlIHdlIGNoYW5nZSBjZGNsayBpbiBjYXNlIHRob3NlCiAJICogZnVuY3Rp
b25zIHVzZSBjZGNsay4gTm90IGFsbCBwbGF0Zm9ybXMvcG9ydHMgZG8sCkBAIC0xOTMwLDYgKzE5
MzcsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2V0X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAl9CiAJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+Z21idXNfbXV0ZXgp
OwogCisJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRoX3BzcigmZGV2X3ByaXYtPmRybSwgZW5j
b2RlcikgeworCQlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gZW5jX3RvX2ludGVsX2RwKGVu
Y29kZXIpOworCisJCWludGVsX3Bzcl9yZXN1bWUoaW50ZWxfZHApOworCX0KKwogCWlmIChkcm1f
V0FSTigmZGV2X3ByaXYtPmRybSwKIAkJICAgICBpbnRlbF9jZGNsa19jaGFuZ2VkKCZkZXZfcHJp
di0+Y2RjbGsuaHcsIGNkY2xrX2NvbmZpZyksCiAJCSAgICAgImNkY2xrIHN0YXRlIGRvZXNuJ3Qg
bWF0Y2ghXG4iKSkgewotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
