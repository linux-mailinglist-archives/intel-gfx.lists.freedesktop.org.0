Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 536333264BF
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 16:32:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA5C96EE06;
	Fri, 26 Feb 2021 15:32:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 508FE6EE06
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Feb 2021 15:32:18 +0000 (UTC)
IronPort-SDR: 3EO8S+F/bk2lrcfo/Z5D9SGjEeMKwXNfp+uZmIOS9Pf0w0O1azL6UTYh3u1rgjE/kbU//SUFuL
 fyj+inaPQg+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="249965815"
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="249965815"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 07:32:16 -0800
IronPort-SDR: axKWZSHewxAarLsAjESgZqRC4ssz4Psq8YPg3plY/tmEtn1osXealDNH/VBT9DmVuJANRslRko
 6oqW4UZb37Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,208,1610438400"; d="scan'208";a="382043197"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 26 Feb 2021 07:32:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Feb 2021 17:32:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Feb 2021 17:32:00 +0200
Message-Id: <20210226153204.1270-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
References: <20210226153204.1270-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] drm/i915: Print wm changes if sagv_wm0
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkxl
dCdzIGNvbnNpZGVyIHNhZ3Zfd20wIGFzIHdlbGwgd2hlbiBkZWNpZGluZyB3aGV0aGVyIHRvIGR1
bXAKb3V0IHRoZSB3YXRlcm1hcmsgY2hhbmdlcy4KCkNjOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxz
dGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBjMzQxZmE5NTc4ODQu
LjA2YzU0YWRjNjA5YSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC01NjQ3LDcgKzU2NDcs
OCBAQCBzdGF0aWMgYm9vbCBza2xfcGxhbmVfd21fZXF1YWxzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAkJCXJldHVybiBmYWxzZTsKIAl9CiAKLQlyZXR1cm4gc2tsX3dtX2xl
dmVsX2VxdWFscygmd20xLT50cmFuc193bSwgJndtMi0+dHJhbnNfd20pOworCXJldHVybiBza2xf
d21fbGV2ZWxfZXF1YWxzKCZ3bTEtPnRyYW5zX3dtLCAmd20yLT50cmFuc193bSkgJiYKKwkJc2ts
X3dtX2xldmVsX2VxdWFscygmd20xLT5zYWd2X3dtMCwgJndtMi0+c2Fndl93bTApOwogfQogCiBz
dGF0aWMgYm9vbCBza2xfZGRiX2VudHJpZXNfb3ZlcmxhcChjb25zdCBzdHJ1Y3Qgc2tsX2RkYl9l
bnRyeSAqYSwKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
