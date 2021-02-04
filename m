Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5F730FADA
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 19:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C92E36EE1F;
	Thu,  4 Feb 2021 18:11:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31AC96EE1F
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 18:11:22 +0000 (UTC)
IronPort-SDR: yxokiVWOisv9/ViA2SUN3kJz/5rNhweeyevyhPkEF9QzD3eLn8u4QinTVxWr4Tqngek0nj/HhL
 H4l/jf8RRMww==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="161055852"
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="161055852"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 10:11:20 -0800
IronPort-SDR: 4lENjB8awe/z7hvzeGLrpT7MWHnk57gGPLpcZh4/SRUDZLxOGJydrHcVBdj8bhFE/VTKBj4Tc5
 DWtvnmx9oeQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,153,1610438400"; d="scan'208";a="415461602"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 04 Feb 2021 10:11:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Feb 2021 20:11:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 20:10:43 +0200
Message-Id: <20210204181048.24202-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
References: <20210204181048.24202-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 09/14] drm/i915: Sprinkle WARN(!pll) into
 icl/dg1 .clock_enable()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBvdGhlciBEREkgLmVuYWJsZV9jbG9jaygpIGZ1bmN0aW9ucyBhcmUgdHJ5aW5nIHRvIHByb3Rl
Y3QgdXMKYWdhaW5zdCBwbGw9PU5VTEwuIEEgYml0IHRlbXB0ZWQgdG8gdGhyb3cgb3V0IGFsbCB0
aGUgV0FSTnMgYXMKanVzdCB1bm5lY2Vzc2FyeSBub2lzZSwgYnV0IEkgZ3Vlc3MgdGhleSBtaWdo
dCBoYXZlIHNvbWUgdXNlCndoZW4gcG9raW5nIGFyb3VuZCB0aGUgc2hhcmVkX2RwbGwgY29kZSAo
bm90IHN1cmUgaXQgd291bGRuJ3QKb29wcyBlbHNld2hlcmUgdGhvdWdoKS4gU28gbGV0J3MgdW5p
ZnkgaXQgYWxsIGFuZCBzcHJpbmtsZSBpbgp0aGUgbWlzc2luZyBXQVJOcyBmb3IgaWNsL2RnMS4K
ClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgNiAr
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAwYjJhMWUwYzFiOGIuLjBhMmViNDI2NjE2YiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMTM0LDYgKzMx
MzQsOSBAQCBzdGF0aWMgdm9pZCBkZzFfZGRpX2VuYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKIAlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9IGNydGNfc3Rh
dGUtPnNoYXJlZF9kcGxsOwogCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9w
cml2LCBlbmNvZGVyLT5wb3J0KTsKIAorCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
IXBsbCkpCisJCXJldHVybjsKKwogCS8qCiAJICogSWYgd2UgZmFpbCB0aGlzLCBzb21ldGhpbmcg
d2VudCB2ZXJ5IHdyb25nOiBmaXJzdCAyIFBMTHMgc2hvdWxkIGJlCiAJICogdXNlZCBieSBmaXJz
dCAyIHBoeXMgYW5kIGxhc3QgMiBQTExzIGJ5IGxhc3QgcGh5cwpAQCAtMzE5MSw2ICszMTk0LDkg
QEAgc3RhdGljIHZvaWQgaWNsX2RkaV9jb21ib19lbmFibGVfY2xvY2soc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXIsCiAJCXNlbCA9IElDTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBs
bC0+aW5mby0+aWQsIHBoeSk7CiAJfQogCisJaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJt
LCAhcGxsKSkKKwkJcmV0dXJuOworCiAJbXV0ZXhfbG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7
CiAKIAkvKgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
