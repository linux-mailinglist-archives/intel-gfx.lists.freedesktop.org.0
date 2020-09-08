Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFE1261246
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 16:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991546E82D;
	Tue,  8 Sep 2020 14:02:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C93AB6E82E
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 14:02:13 +0000 (UTC)
IronPort-SDR: ELYd5QstavDrwrrbholPbpK3n2CaU/HS3Hvnmv8yJI7OT/WAanKngwldv1OwgUVIzHiNDy2o3r
 aaDKIEwaO8+Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="176185780"
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="176185780"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 07:02:13 -0700
IronPort-SDR: U7HONlr5TY053G5DQjMrK5rHB3WM2ACajw7lstgOtVWyo02TsSrSJXdTQXfo8RsECtPXcoz9f3
 SNvr+bkBkOXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,405,1592895600"; d="scan'208";a="343539661"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 08 Sep 2020 07:02:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Sep 2020 17:02:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Sep 2020 17:02:07 +0300
Message-Id: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Kill unused savePCH_PORT_HOTPLUG
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGRvbid0IHNhdmUvcmVzdG9yZSBQQ0hfUE9SVF9IT1RQTFVHIHNvIG5vIHBvaW50IGluIHJlc2V2
aW5nCnNwYWNlIGZvciB0aGUgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmggfCAxIC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKaW5kZXggYTQ1NTc1MjIyMWNjLi4yZTQ0MzhlOGUzZWIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaApAQCAtNTQzLDcgKzU0Myw2IEBAIHN0cnVjdCBpOTE1X3N1c3BlbmRf
c2F2ZWRfcmVnaXN0ZXJzIHsKIAl1MzIgc2F2ZVNXRjBbMTZdOwogCXUzMiBzYXZlU1dGMVsxNl07
CiAJdTMyIHNhdmVTV0YzWzNdOwotCXUzMiBzYXZlUENIX1BPUlRfSE9UUExVRzsKIAl1MTYgc2F2
ZUdDREdNQlVTOwogfTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
