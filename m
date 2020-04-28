Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC761BC66F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 19:20:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 544236E864;
	Tue, 28 Apr 2020 17:20:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 509AB6E883;
 Tue, 28 Apr 2020 17:20:30 +0000 (UTC)
IronPort-SDR: MNllnS/W5Sym+rdQTwjWyjY4aoCqok4SJYapdQUwhH2GK0FGQKOs3e8rkM45nLNi//dHBhS5te
 E5v9zGT/wCsQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 10:20:29 -0700
IronPort-SDR: 7YfEopIelYahvq7ES6JIzwXBkq2A2iuPYVUZ+5ti702dCRUWZNmCGVKNUv5zznvsl+lc772NvX
 l3qwbtRDGu5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="246570604"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Apr 2020 10:20:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 20:20:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 28 Apr 2020 20:19:35 +0300
Message-Id: <20200428171940.19552-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
References: <20200428171940.19552-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 11/16] drm/mcde: Use mode->clock instead of
 reverse calculating it from the vrefresh
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Sam Ravnborg <sam@ravnborg.org>, Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmh0
b3RhbCp2dG90YWwqdnJlZnJlc2ggfj0gY2xvY2suIFNvIGp1c3Qgc2F5ICJjbG9jayIgd2hlbiB3
ZSBtZWFuIGl0LgoKQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4K
Q2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KUmV2aWV3ZWQtYnk6IERhbmllbCBW
ZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+ClJldmlld2VkLWJ5OiBTYW0gUmF2bmJvcmcg
PHNhbUByYXZuYm9yZy5vcmc+ClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxs
ZWlqQGxpbmFyby5vcmc+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL21jZGUvbWNkZV9kc2ku
YyB8IDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21jZGUvbWNkZV9kc2kuYyBiL2RyaXZlcnMv
Z3B1L2RybS9tY2RlL21jZGVfZHNpLmMKaW5kZXggOGI2OTNiMjA2OTIxLi44MTg1Mjg1M2U4OTMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tY2RlL21jZGVfZHNpLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL21jZGUvbWNkZV9kc2kuYwpAQCAtNTM3LDggKzUzNyw3IEBAIHN0YXRpYyB2b2lk
IG1jZGVfZHNpX3NldHVwX3ZpZGVvX21vZGUoc3RydWN0IG1jZGVfZHNpICpkLAogCSAqIHBvcmNo
ZXMgYW5kIHN5bmMuCiAJICovCiAJLyogKHBzL3MpIC8gKHBpeGVscy9zKSA9IHBzL3BpeGVscyAq
LwotCXBjbGsgPSBESVZfUk9VTkRfVVBfVUxMKDEwMDAwMDAwMDAwMDAsCi0JCQkJKGRybV9tb2Rl
X3ZyZWZyZXNoKG1vZGUpICogbW9kZS0+aHRvdGFsICogbW9kZS0+dnRvdGFsKSk7CisJcGNsayA9
IERJVl9ST1VORF9VUF9VTEwoMTAwMDAwMDAwMDAwMCwgbW9kZS0+Y2xvY2spOwogCWRldl9kYmco
ZC0+ZGV2LCAicGljb3NlY29uZHMgYmV0d2VlbiB0d28gcGl4ZWxzOiAlbGx1XG4iLAogCQlwY2xr
KTsKIAotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
