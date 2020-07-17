Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD8D2245A7
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05E46E0AD;
	Fri, 17 Jul 2020 21:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E11A56E0AD
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:13:54 +0000 (UTC)
IronPort-SDR: OxPn0lVkeGW3ESKycsrIDovTdESbqbd+zooKPXJ3Zaur2KJeam5VskrjIP0czZqeqa57uh9DOC
 8vdAAwSXp7Xw==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="214380527"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="214380527"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:13:54 -0700
IronPort-SDR: jlEfQpyUmXuCcYsaoi+5IKnD7qBft6orOsIa/KqzUx1VMt6OqVic5NilmOk0EwXrp2f2N/UnK4
 50freLRxvRMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="300687363"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 17 Jul 2020 14:13:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:13:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:27 +0300
Message-Id: <20200717211345.26851-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/20] drm/i915: Move MST master transcoder dump
 earlier
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgdGhlIE1TVCBtYXN0ZXIgdHJhbnNjb2RlciBkdW1wIG5leHQgdG8gdGhlIG90aGVyIHRyYW5z
Y29kZXIKYml0cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCmluZGV4IGFlMGFmNDUyZDc3Ni4uYzM2Mzc5Y2YwN2ZjIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTMwMzEsNiArMTMwMzEsOSBA
QCBzdGF0aWMgdm9pZCBpbnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAkJICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZp
Zy0+Y3B1X3RyYW5zY29kZXIpLAogCQkgICAgcGlwZV9jb25maWctPnBpcGVfYnBwLCBwaXBlX2Nv
bmZpZy0+ZGl0aGVyKTsKIAorCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiTVNUIG1hc3Rl
ciB0cmFuc2NvZGVyOiAlc1xuIiwKKwkJICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZpZy0+
bXN0X21hc3Rlcl90cmFuc2NvZGVyKSk7CisKIAlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwK
IAkJICAgICJwb3J0IHN5bmM6IG1hc3RlciB0cmFuc2NvZGVyOiAlcywgc2xhdmUgdHJhbnNjb2Rl
ciBiaXRtYXNrID0gMHgleFxuIiwKIAkJICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZpZy0+
bWFzdGVyX3RyYW5zY29kZXIpLApAQCAtMTMxMjgsOSArMTMxMzEsNiBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9kdW1wX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBl
X2NvbmZpZywKIAkJCSAgICBwaXBlX2NvbmZpZy0+Y3NjX21vZGUsIHBpcGVfY29uZmlnLT5nYW1t
YV9tb2RlLAogCQkJICAgIHBpcGVfY29uZmlnLT5nYW1tYV9lbmFibGUsIHBpcGVfY29uZmlnLT5j
c2NfZW5hYmxlKTsKIAotCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLCAiTVNUIG1hc3RlciB0
cmFuc2NvZGVyOiAlc1xuIiwKLQkJICAgIHRyYW5zY29kZXJfbmFtZShwaXBlX2NvbmZpZy0+bXN0
X21hc3Rlcl90cmFuc2NvZGVyKSk7Ci0KIGR1bXBfcGxhbmVzOgogCWlmICghc3RhdGUpCiAJCXJl
dHVybjsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
