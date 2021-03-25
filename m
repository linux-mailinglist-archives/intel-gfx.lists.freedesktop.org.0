Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EE3349BD7
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 819AC6EE55;
	Thu, 25 Mar 2021 21:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5240F6EE4F
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 21:48:17 +0000 (UTC)
IronPort-SDR: D4hxxLyK9QVNgeBn4Wln2EoPR/QCBO4QC3AqAdbl48k9KJKf05LcwFOieb9LXda8YyHaX7Tpps
 ZIRavrNPrcQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="171004998"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="171004998"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:17 -0700
IronPort-SDR: drmvdQdDrxpypVDESURJ/x8oFPsq3msKlIN8tlRlD2dFabUSjiBJdRJZ3Y9IX6eyK56yOyd+KR
 EoY3ZFVrdRDQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="375235638"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 14:48:16 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 23:47:47 +0200
Message-Id: <20210325214808.2071517-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/25] drm/i915: Make sure i915_ggtt_view is
 inited when creating an FB
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

VGhpcyBwcm9iYWJseSBkb2Vzbid0IGNhdXNlIGFuIGlzc3VlLCBzaW5jZSB0aGUgY29kZSBjaGVj
a3MgdGhlIHZpZXcKdHlwZSBkZXBlbmRlbnQgc2l6ZSBvZiB0aGUgdmlld3MgYmVmb3JlIGNvbXBh
cmluZyB0aGVtLCBidXQgbGV0J3MgZm9sbG93CnRoZSBwcmFjdGljZSB0byBiemVybyB0aGUgd2hv
bGUgc3RydWN0IHdoZW4gaW5pdGlhbGl6aW5nIGl0LgoKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IGUzNDVlNjQ1YTE1NmUuLmMwNmY1MWNmM2QwMmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMDA1LDYgKzEwMDUsOCBAQCBpbnRlbF9maWxs
X2ZiX2dndHRfdmlldyhzdHJ1Y3QgaTkxNV9nZ3R0X3ZpZXcgKnZpZXcsCiAJCQljb25zdCBzdHJ1
Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKIAkJCXVuc2lnbmVkIGludCByb3RhdGlvbikKIHsKKwlt
ZW1zZXQodmlldywgMCwgc2l6ZW9mKCp2aWV3KSk7CisKIAl2aWV3LT50eXBlID0gSTkxNV9HR1RU
X1ZJRVdfTk9STUFMOwogCWlmIChkcm1fcm90YXRpb25fOTBfb3JfMjcwKHJvdGF0aW9uKSkgewog
CQl2aWV3LT50eXBlID0gSTkxNV9HR1RUX1ZJRVdfUk9UQVRFRDsKLS0gCjIuMjUuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
