Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2437336845C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 18:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5253E6E3C6;
	Thu, 22 Apr 2021 16:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FD86E3C6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 16:05:51 +0000 (UTC)
IronPort-SDR: 9pSWD+9tS0g4tpKbTs5BX+GVCYXRDTrfCr56ilyRThxJ+JXd+BVIKCWaaWtndTnt8jtsed9Ku3
 0t3n1i6g1LeA==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="175400795"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="175400795"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 09:05:50 -0700
IronPort-SDR: lbIt40l+yLBFubq6gRxINCH46wTT12TYfzDiwd0Zxtv492hAB0V672xaYJfTxNM8c98MDTqKKL
 8RB3yR8IYgJA==
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="421422796"
Received: from asmukose-mobl.ccr.corp.intel.com (HELO helsinki.intel.com)
 ([10.252.37.213])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 09:05:49 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Apr 2021 19:05:44 +0300
Message-Id: <20210422160544.2427123-1-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Disable PSR2 if TGL
 Display stepping is B1 from A0
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

VEdMIFBTUjIgaGFyZHdhcmUgdHJhY2tpbmcgc2hvd3MgbW9tZW50YXJ5IGZsaWNrZXIgYW5kIHNj
cmVlbiBzaGlmdCBpZgpUR0wgRGlzcGxheSBzdGVwcGluZyBpcyBCMSBmcm9tIEEwLgpJdCBoYXMg
YmVlbiBmaXhlZCBmcm9tIFRHTCBEaXNwbGF5IHN0ZXBwaW5nIEMwLgoKSFNERVM6IDE4MDE1OTcw
MDIxCkhTREVTOiAyMjA5MzEzODExCkJTcGVjOiA1NTM3OAoKdjI6IEFkZCBjaGVja2luZyBvZiBQ
U1IyIG1hbnVhbCB0cmFja2luZyAoSm9zZSkKCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2Fu
LWd5ZW9uZy5tdW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA3ICsrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwppbmRleCA0YWQ3NTZlMjM4
YzUuLjE3Y2JkZDc4MDVhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCkBAIC04MTcsNiArODE3LDEzIEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3Zh
bGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCX0KIAl9CiAKKwkvKiBXYV8yMjA5MzEz
ODExICovCisJaWYgKCFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zZWxfZmV0Y2ggJiYKKwkgICAg
SVNfVEdMX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9CMSkpIHsKKwkJZHJt
X2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJQU1IyIEhXIHRyYWNraW5nIGlzIG5vdCBzdXBwb3J0
ZWQgdGhpcyBEaXNwbGF5IHN0ZXBwaW5nXG4iKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKwogCWlm
ICghY3J0Y19zdGF0ZS0+ZW5hYmxlX3BzcjJfc2VsX2ZldGNoICYmCiAJICAgIChjcnRjX2hkaXNw
bGF5ID4gcHNyX21heF9oIHx8IGNydGNfdmRpc3BsYXkgPiBwc3JfbWF4X3YpKSB7CiAJCWRybV9k
Ymdfa21zKCZkZXZfcHJpdi0+ZHJtLAotLSAKMi4zMC4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
