Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA94193987
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 08:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C706E2BC;
	Thu, 26 Mar 2020 07:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 949F36E2BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 07:22:07 +0000 (UTC)
IronPort-SDR: 9KX0jSP2C6Qa71BHOTiOPT9Yj8t/xEBIJZigeT3hNgD+v9Q20X8eRNeLQbq7dRPmLiJHMLYBcw
 ymALxZoQbC0Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 00:22:07 -0700
IronPort-SDR: ODwMAbGZE4Zw+7MPQfgPUb9PbW3Y71g7smVMQRSzSHuoRTN6+EvlhY8ZASrDC0pQf3DptQwLzm
 6VTfYIw5ooRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,307,1580803200"; d="scan'208";a="293555201"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Mar 2020 00:22:04 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 13:19:28 +0530
Message-Id: <20200326074928.10395-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
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
Cc: SweeAun Khor <swee.aun.khor@intel.com>, Souza@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBmaXhlcyB0aGUgcHJpdmF0ZV9mbGFncyBvZiBtb2RlIHRvIGJlIGNoZWNrZWQg
YW5kCmNvbXBhcmVkIGFnYWluc3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlz
IGhlbHBzCnByb3Blcmx5IHRyaWdnZXIgbW9kZXNldCBhdCBib290IGlmIGRlc2lyZWQgYnkgZHJp
dmVyLgoKSXQgaGVscHMgcmVzb2x2ZSBhdWRpb19jb2RlYyBpbml0aWFsaXphdGlvbiBpc3N1ZXMg
aWYgZGlzcGxheQppcyBjb25uZWN0ZWQgYXQgYm9vdC4gSW5pdGlhbCBkaXNjdXNzaW9uIG9uIHRo
aXMgaXNzdWUgaGFzIGhhcHBlbmVkCm9uIGJlbG93IHRocmVhZDoKaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83NDgyOC8KCkZpeGVzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMzYzCgpDYzogVmlsbGUgU3lyasOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBLYWkgVmVobWFuZW4gPGthaS52ZWhtYW5l
bkBsaW51eC5pbnRlbC5jb20+CkNjOiBTb3V6YSwgSm9zZSA8am9zZS5zb3V6YUBpbnRlbC5jb20+
ClN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogU3dlZUF1biBLaG9yIDxzd2VlLmF1bi5raG9yQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGZlNTVjN2M3MTNmMS4u
ZTYzMDQyOWFmMmMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwpAQCAtMTQ3NDcsOCArMTQ3NDcsOCBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19j
aGVjayhzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCS8qIENhdGNoIEk5MTVfTU9ERV9GTEFHX0lO
SEVSSVRFRCAqLwogCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBj
cnRjLCBvbGRfY3J0Y19zdGF0ZSwKIAkJCQkJICAgIG5ld19jcnRjX3N0YXRlLCBpKSB7Ci0JCWlm
IChuZXdfY3J0Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzICE9Ci0JCSAgICBvbGRfY3J0
Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzKQorCQlpZiAobmV3X2NydGNfc3RhdGUtPnVh
cGkubW9kZS5wcml2YXRlX2ZsYWdzICE9CisJCSAgICBvbGRfY3J0Y19zdGF0ZS0+dWFwaS5tb2Rl
LnByaXZhdGVfZmxhZ3MpCiAJCQluZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0
cnVlOwogCX0KIAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
