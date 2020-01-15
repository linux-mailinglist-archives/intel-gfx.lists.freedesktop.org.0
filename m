Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FF513CCCB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 20:08:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6777E6EA86;
	Wed, 15 Jan 2020 19:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F182B6EA86
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 19:08:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 11:08:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,323,1574150400"; d="scan'208";a="213806667"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2020 11:08:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2020 21:08:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Jan 2020 21:08:12 +0200
Message-Id: <20200115190813.17971-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Use PIPE_CONF_CHECK_X() for
 sync_mode_slaves_mask
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnN5
bmNfbW9kZV9zbGF2ZXNfbWFzayBpcyBhIGJpdG1hc2sgc28gdXNlIFBJUEVfQ09ORl9DSEVDS19Y
KCkgZm9yIGl0CnNvIHdlIGdldCB0aGUgbWlzbWF0Y2ggcHJpbnRlZCBpbiBoZXggaW5zdGVhZCBv
ZiBkZWNpbWFsLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
aW5kZXggNjRhMzc3ZDYxY2UwLi45N2NmODQ1N2M5NTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xMzY5NSw3ICsxMzY5NSw3IEBAIGludGVs
X3BpcGVfY29uZmlnX2NvbXBhcmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJl
bnRfY29uZmlnLAogCVBJUEVfQ09ORl9DSEVDS19JTkZPRlJBTUUoaGRtaSk7CiAJUElQRV9DT05G
X0NIRUNLX0lORk9GUkFNRShkcm0pOwogCi0JUElQRV9DT05GX0NIRUNLX0koc3luY19tb2RlX3Ns
YXZlc19tYXNrKTsKKwlQSVBFX0NPTkZfQ0hFQ0tfWChzeW5jX21vZGVfc2xhdmVzX21hc2spOwog
CVBJUEVfQ09ORl9DSEVDS19JKG1hc3Rlcl90cmFuc2NvZGVyKTsKIAogCVBJUEVfQ09ORl9DSEVD
S19JKGRzYy5jb21wcmVzc2lvbl9lbmFibGUpOwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
