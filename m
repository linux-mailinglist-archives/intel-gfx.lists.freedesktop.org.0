Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D6089184CD9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 17:49:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECF816EC32;
	Fri, 13 Mar 2020 16:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9BE6EC2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 16:48:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 09:48:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="354402950"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 Mar 2020 09:48:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 18:48:50 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 18:48:24 +0200
Message-Id: <20200313164831.5980-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/13] drm/i915: Include port sync state in the
 state dump
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
bXAgdGhlIHBvcnQgc3luYyBzdGF0IGluIGludGVsX2R1bXBfcGlwZV9jb25maWcoKS4KClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1ICsr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1YzVhMTMxZGI4YjQuLjQ4NDA5ODhk
YzU4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTEyOTQ3LDYgKzEyOTQ3LDExIEBAIHN0YXRpYyB2b2lkIGludGVsX2R1bXBfcGlwZV9jb25m
aWcoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnLAogCQkgICAgdHJh
bnNjb2Rlcl9uYW1lKHBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciksCiAJCSAgICBwaXBlX2Nv
bmZpZy0+cGlwZV9icHAsIHBpcGVfY29uZmlnLT5kaXRoZXIpOwogCisJZHJtX2RiZ19rbXMoJmRl
dl9wcml2LT5kcm0sCisJCSAgICAicG9ydCBzeW5jOiBtYXN0ZXIgdHJhbnNjb2RlcjogJXMsIHNs
YXZlIHRyYW5zY29kZXIgYml0bWFzayA9IDB4JXhcbiIsCisJCSAgICB0cmFuc2NvZGVyX25hbWUo
cGlwZV9jb25maWctPm1hc3Rlcl90cmFuc2NvZGVyKSwKKwkJICAgIHBpcGVfY29uZmlnLT5zeW5j
X21vZGVfc2xhdmVzX21hc2spOworCiAJaWYgKHBpcGVfY29uZmlnLT5oYXNfcGNoX2VuY29kZXIp
CiAJCWludGVsX2R1bXBfbV9uX2NvbmZpZyhwaXBlX2NvbmZpZywgImZkaSIsCiAJCQkJICAgICAg
cGlwZV9jb25maWctPmZkaV9sYW5lcywKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
