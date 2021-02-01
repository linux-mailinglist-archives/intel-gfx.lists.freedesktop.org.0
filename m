Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3402B30AF69
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 19:34:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72EE06E9A2;
	Mon,  1 Feb 2021 18:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE9C6E9A2
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 18:34:15 +0000 (UTC)
IronPort-SDR: /vAEjnlDCsLua8qOQeSG+5OjV7RlIueyKJQq05iIdMp10Bbo9NEyoa4F/Qw3BKeYlfbn3/+5MO
 f3Sm/MzIqSkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="265564099"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="265564099"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 10:34:15 -0800
IronPort-SDR: 9wKl1g/twE0Fjk2K6oaWviDEnornHOjznckohga7HiOyd29OGvAdoHa+EW9gJ19oFe3yYKdlW+
 rcuKnzxC0yLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; d="scan'208";a="432478717"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 01 Feb 2021 10:34:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Feb 2021 20:34:12 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Feb 2021 20:33:38 +0200
Message-Id: <20210201183343.15292-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
References: <20210201183343.15292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/15] drm/i915: Sprinkle a few missing locks
 around shared DDI clock registers
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGNvZGUgYXR0ZW1wdHMgdG8gcHJvdGVjdCB0aGUgUk1XcyBpbnRvIGdsb2JhbApj
bG9jayByb3V0aW5nIHJlZ2lzdGVycyB3aXRoIGEgbXV0ZXgsIGJ1dCBmb3JnZXRzIHRvIGRvIHNv
CmluIGEgZmV3IHBsYWNlcy4gTGV0J3MgcmVtZWR5IHRoYXQuCgpOb3RlIHRoYXQgYXQgdGhlIG1v
bWVudCB3ZSBzZXJpYWxpemUgYWxsIG1vZGVzZXRzIG9udG8gc2luZ2xlCndxLCBzbyB0aGlzIHNo
b3VsZG4ndCBhY3R1YWxseSBtYXR0ZXIuIEJ1dCBtYXliZSBvbmUgZGF5IHdlCndpc2ggdG8gYXR0
ZW1wdCBwYXJhbGxlbCBtb2Rlc2V0cyBhZ2Fpbi4uLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQs
IDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
CmluZGV4IDcxMzc5MjlmNThiZC4uOTM1NTJmM2MyYzQzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKQEAgLTM0NjMsOCArMzQ2MywxMiBAQCBzdGF0aWMgdm9pZCBj
bmxfZGRpX2Rpc2FibGVfY2xvY2soc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCiAJc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7CiAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0OwogCisJbXV0ZXhfbG9jaygmZGV2
X3ByaXYtPmRwbGwubG9jayk7CisKIAlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIERQQ0xLQV9DRkdD
UjAsCiAJCSAgICAgMCwgRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwb3J0KSk7CisKKwltdXRl
eF91bmxvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwogfQogCiBzdGF0aWMgdm9pZCBza2xfZGRp
X2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKQEAgLTM0OTMsOCAr
MzQ5NywxMiBAQCBzdGF0aWMgdm9pZCBza2xfZGRpX2Rpc2FibGVfY2xvY2soc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7CiAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5w
b3J0OwogCisJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7CisKIAlpbnRlbF9kZV9y
bXcoZGV2X3ByaXYsIERQTExfQ1RSTDIsCiAJCSAgICAgMCwgRFBMTF9DVFJMMl9ERElfQ0xLX09G
Rihwb3J0KSk7CisKKwltdXRleF91bmxvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwogfQogCiBz
dGF0aWMgdm9pZCBoc3dfZGRpX2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
