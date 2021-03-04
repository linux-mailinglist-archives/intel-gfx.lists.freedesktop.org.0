Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FDA32D84A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 18:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7346EA48;
	Thu,  4 Mar 2021 17:05:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C19F6EA48
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 17:05:03 +0000 (UTC)
IronPort-SDR: 9S02OER6sRSNWk6Nx17LVUJ3TOozUR3vaB0bzg3v+6kpIp24v0AzY4NqhEgkm0pdE12HjKxvNT
 NIJxvBlRQpDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9913"; a="166715771"
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="166715771"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2021 09:04:38 -0800
IronPort-SDR: +GiUl0joG54/GiYrUsD/N3mtDh0HXJYv10nXMgzhKec1AWwBg9UOyt+l06+AUlnH07tOAAvFtp
 4j3YrTX0iG8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,222,1610438400"; d="scan'208";a="384540071"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 04 Mar 2021 09:04:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 Mar 2021 19:04:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Mar 2021 19:04:21 +0200
Message-Id: <20210304170421.10901-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
References: <20210304170421.10901-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Fix DSI TE max_vblank_count
 handling
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
Cc: Jani Nikula <jani.nikula@intel.com>, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNv
bW1pdCAzMzI2NzcwM2RmMTUgKCJkcm0vaTkxNS9kc2k6IEVuYWJsZSBzb2Z0d2FyZSB2Ymxhbmsg
Y291bnRlciIpCmNsYWltcyB0byBnZXQgdGhlIG1vZGVfZmxhZ3MgZnJvbSB0aGUgY3J0Y19zdGF0
ZSwgYnV0IGluIGZhY3QgZG9lcwpub3QuIEZpeCBpdCB0byBkbyBpdCByaWdodC4KCkNjOiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CkNjOiBTdGV2ZW4gUm9zdGVkdCA8cm9zdGVkdEBnb29k
bWlzLm9yZz4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Ny
dGMuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
cnRjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYwppbmRleCAz
NGZmNDA4NTJhMzcuLjdkY2JlYzNhM2NhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jcnRjLmMKQEAgLTUzLDggKzUzLDYgQEAgdTMyIGludGVsX2NydGNfZ2V0X3ZibGFu
a19jb3VudGVyKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQogdTMyIGludGVsX2NydGNfbWF4X3Zi
bGFua19jb3VudChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGNfc3RhdGUt
PnVhcGkuY3J0Yy0+ZGV2KTsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2Ny
dGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKLQl1MzIgbW9kZV9mbGFncyA9IGNydGMtPm1vZGVf
ZmxhZ3M7CiAKIAkvKgogCSAqIEZyb20gR2VuIDExLCBJbiBjYXNlIG9mIGRzaSBjbWQgbW9kZSwg
ZnJhbWUgY291bnRlciB3b3VsZG50CkBAIC02Miw3ICs2MCw4IEBAIHUzMiBpbnRlbF9jcnRjX21h
eF92YmxhbmtfY291bnQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
CiAJICogdGhlIGh3IGNvdW50ZXIsIHRoZW4gd2Ugd291bGQgZmluZCBpdCB1cGRhdGVkIGluIG9u
bHkKIAkgKiB0aGUgbmV4dCBURSwgaGVuY2Ugc3dpdGNoaW5nIHRvIHN3IGNvdW50ZXIuCiAJICov
Ci0JaWYgKG1vZGVfZmxhZ3MgJiAoSTkxNV9NT0RFX0ZMQUdfRFNJX1VTRV9URTAgfCBJOTE1X01P
REVfRkxBR19EU0lfVVNFX1RFMSkpCisJaWYgKGNydGNfc3RhdGUtPm1vZGVfZmxhZ3MgJiAoSTkx
NV9NT0RFX0ZMQUdfRFNJX1VTRV9URTAgfAorCQkJCSAgICAgIEk5MTVfTU9ERV9GTEFHX0RTSV9V
U0VfVEUxKSkKIAkJcmV0dXJuIDA7CiAKIAkvKgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
