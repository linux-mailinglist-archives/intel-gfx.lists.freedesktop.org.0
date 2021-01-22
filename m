Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEA83010F0
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DB16EA83;
	Fri, 22 Jan 2021 23:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51DB76EA7A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:32 +0000 (UTC)
IronPort-SDR: GVoHJmLI/4obu7qKUi/2WEjPSSvQ6DnKRpXFFxDPBcs6cET48SFvlaVtKtL4RFZICm+zaOJQoR
 IFUVBFA4YfnQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344458"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344458"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:31 -0800
IronPort-SDR: YdK1mPVG4ehkGL6n0Q39LFTGOoXHlPvMrRWZGFowGAG6J3tEwTPIQC2jZkL9NlC/AOd3ofizCE
 rkOkqLDbfMow==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466033"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:45 -0800
Message-Id: <20210122232647.22688-16-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 16/18] drm/i915: Add vrr state dump
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkR1
bXAgdnJyIHN0YXRlIGFsb25nc2lkZSBldmVyeXRoaW5nIGVsc2UuCgpTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDcgKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMTM3MmNiMDQyMzE3Li5iM2EwZTVlODFkMmUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMDMyNyw2
ICsxMDMyNywxMyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkgICAgaW50ZWxfaGRtaV9pbmZv
ZnJhbWVfZW5hYmxlKERQX1NEUF9WU0MpKQogCQlpbnRlbF9kdW1wX2RwX3ZzY19zZHAoZGV2X3By
aXYsICZwaXBlX2NvbmZpZy0+aW5mb2ZyYW1lcy52c2MpOwogCisJZHJtX2RiZ19rbXMoJmRldl9w
cml2LT5kcm0sICJ2cnI6ICVzLCB2bWluOiAlZCwgdm1heDogJWQsIHBpcGVsaW5lIGZ1bGw6ICVk
LCBmbGlwbGluZTogJWQsIHZtaW4gdmJsYW5rOiAlZCwgdm1heCB2Ymxhbms6ICVkXG4iLAorCQkg
ICAgeWVzbm8ocGlwZV9jb25maWctPnZyci5lbmFibGUpLAorCQkgICAgcGlwZV9jb25maWctPnZy
ci52bWluLCBwaXBlX2NvbmZpZy0+dnJyLnZtYXgsCisJCSAgICBwaXBlX2NvbmZpZy0+dnJyLnBp
cGVsaW5lX2Z1bGwsIHBpcGVfY29uZmlnLT52cnIuZmxpcGxpbmUsCisJCSAgICBpbnRlbF92cnJf
dm1pbl92Ymxhbmtfc3RhcnQocGlwZV9jb25maWcpLAorCQkgICAgaW50ZWxfdnJyX3ZtYXhfdmJs
YW5rX3N0YXJ0KHBpcGVfY29uZmlnKSk7CisKIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwg
InJlcXVlc3RlZCBtb2RlOlxuIik7CiAJZHJtX21vZGVfZGVidWdfcHJpbnRtb2RlbGluZSgmcGlw
ZV9jb25maWctPmh3Lm1vZGUpOwogCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiYWRqdXN0
ZWQgbW9kZTpcbiIpOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
