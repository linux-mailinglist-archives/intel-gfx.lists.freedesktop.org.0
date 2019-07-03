Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDF95ED32
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 22:08:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 568E86E1D3;
	Wed,  3 Jul 2019 20:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379916E1D3
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 20:08:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 13:08:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="175044922"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 03 Jul 2019 13:08:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2019 23:08:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jul 2019 23:08:18 +0300
Message-Id: <20190703200824.5971-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Random plane stuff
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cG9zdGluZyB0aGUgZmlyc3Qgc2l4IHJldmlld2VkIHBhdGNoZXMgZnJvbSBteSBmcDE2IHNlcmll
cyBqdXN0CnRvIGdldCBhIGNsZWFuIGNpIHJ1biBmb3IgdGhlbS4gTm90aGluZyBoYXMgY2hhbmdl
ZCBzaW5jZSB0aGUgbGFzdAp0aW1lIEkgcG9zdGVkIHRoZXNlLgoKVmlsbGUgU3lyasOkbMOkICg2
KToKICBkcm0vaTkxNTogQWRkIHdpbmRvd2luZyBmb3IgcHJpbWFyeSBwbGFuZXMgb24gZ2VuMi8z
IGFuZCBjaHYKICBkcm0vaTkxNTogRGlzYWJsZSBzcHJpdGUgZ2FtbWEgb24gaXZiLWJkdwogIGRy
bS9pOTE1OiBQcm9ncmFtIHBsYW5lIGdhbW1hIHJhbXBzCiAgZHJtL2k5MTU6IERlYWwgd2l0aCBj
cHA9PTggZm9yIGc0eCB3YXRlcm1hcmtzCiAgZHJtL2k5MTU6IENvc21ldGljIGZpeCBmb3Igc2ts
KyBwbGFuZSBzd2l0Y2ggc3RhdGVtZW50CiAgZHJtL2k5MTU6IENsZWFuIHVwIHNrbCB2cy4gaWNs
IHBsYW5lIGZvcm1hdHMKCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyB8ICA0NCArKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRl
LmMgIHwgMjc3ICsrKysrKysrKysrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgIHwgIDMzICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyAgICAgICAgICAgICAgfCAgIDYgKy0KIDQgZmlsZXMgY2hhbmdlZCwgMjcxIGluc2VydGlv
bnMoKyksIDg5IGRlbGV0aW9ucygtKQoKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
