Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B62C38142E
	for <lists+intel-gfx@lfdr.de>; Sat, 15 May 2021 01:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81CF26F4B3;
	Fri, 14 May 2021 23:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E6D6F4B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 23:19:44 +0000 (UTC)
IronPort-SDR: pEIVTh2bGjbPFtdMq4qQhYaOQlcTYi2TxD20eK1i07bgqXXP4V+eu5inDpyvy3OqwWgzk/i/qo
 bz5N4qUq2P+Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="199938032"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="199938032"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:19:43 -0700
IronPort-SDR: 0DjfNuyjyGKSL8bN7CumVztX8nQ+tUaTDqJSFrBXQhByJdW2PGsM27tY8gNMqbv6N2ic+zkk56
 rBO4JlZU270g==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="627453933"
Received: from rmjoslin-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.1.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 16:19:41 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 16:22:45 -0700
Message-Id: <20210514232247.144542-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210514232247.144542-1-jose.souza@intel.com>
References: <20210514232247.144542-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/display: Allow fastsets when
 DP_SDP_VSC infoframe do not match with PSR enabled
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

V2hlbiBQU1IgaXMgZW5hYmxlZCBpdCBoYW5kbGVzIERQX1NEUF9WU0MsIGNoYW5naW5nIHJldmlz
aW9uIGFuZCBhbGwKdGhlIG90aGVyIGZpZWxkcyBhcyBuZWNlc3NhcnkuCkl0IGNhbiBhbHNvIGVu
YWJsZWQgYW5kIGRpc2FibGUgdGhpcyBTRFAgYXMgbmVlZGVkIHdpdGhvdXQgYSBmdWxsCm1vZGVz
ZXQuCgpTbyBoZXJlIG1hc2tpbmcgRFBfU0RQX1ZTQyBiaXQgd2hlbiBwcmV2aW91cyBhbmQgZnV0
dXJlIHN0YXRlIFBTUgplbmFibGVkLCBpdCB3aWxsIHN0aWxsIGJlIGNoZWNrZWQgd2hlbiBjb21w
YXJpbmcgdGhlIGFza2VkIHN0YXRlCnRvIHdoYXQgd2FzIHByb2dyYW1tZWQgdG8gaGFyZHdhcmUu
CgpDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgpDYzogUmFk
aGFrcmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KUmVwb3J0
ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkZp
eGVzOiA3OGI3NzJlMWEwMWYgKCJkcm0vaTkxNS9kaXNwbGF5OiBGaWxsIFBTUiBzdGF0ZSBkdXJp
bmcgaGFyZHdhcmUgY29uZmlndXJhdGlvbiByZWFkIG91dCIKU2lnbmVkLW9mZi1ieTogSm9zw6kg
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAxNyArKysrKysrKysrKysrKysrLQog
MSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDUxZjQ5OTI3MWNj
OC4uZWJhYzFiZDVjZmU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwpAQCAtODI2MCw2ICs4MjYwLDE2IEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBh
cmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLAogCX0gXAog
fSB3aGlsZSAoMCkKIAorI2RlZmluZSBQSVBFX0NPTkZfQ0hFQ0tfWF9XSVRIX01BU0sobmFtZSwg
bWFzaykgZG8geyBcCisJaWYgKChjdXJyZW50X2NvbmZpZy0+bmFtZSAmIChtYXNrKSkgIT0gKHBp
cGVfY29uZmlnLT5uYW1lICYgKG1hc2spKSkgeyBcCisJCXBpcGVfY29uZmlnX21pc21hdGNoKGZh
c3RzZXQsIGNydGMsIF9fc3RyaW5naWZ5KG5hbWUpLCBcCisJCQkJICAgICAiKGV4cGVjdGVkIDB4
JTA4eCwgZm91bmQgMHglMDh4KSIsIFwKKwkJCQkgICAgIGN1cnJlbnRfY29uZmlnLT5uYW1lICYg
KG1hc2spLCBcCisJCQkJICAgICBwaXBlX2NvbmZpZy0+bmFtZSAmIChtYXNrKSk7IFwKKwkJcmV0
ID0gZmFsc2U7IFwKKwl9IFwKK30gd2hpbGUgKDApCisKICNkZWZpbmUgUElQRV9DT05GX0NIRUNL
X0kobmFtZSkgZG8geyBcCiAJaWYgKGN1cnJlbnRfY29uZmlnLT5uYW1lICE9IHBpcGVfY29uZmln
LT5uYW1lKSB7IFwKIAkJcGlwZV9jb25maWdfbWlzbWF0Y2goZmFzdHNldCwgY3J0YywgX19zdHJp
bmdpZnkobmFtZSksIFwKQEAgLTg2MDYsNyArODYxNiwxMiBAQCBpbnRlbF9waXBlX2NvbmZpZ19j
b21wYXJlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywKIAkJ
UElQRV9DT05GX0NIRUNLX0kobWluX3ZvbHRhZ2VfbGV2ZWwpOwogCX0KIAotCVBJUEVfQ09ORl9D
SEVDS19YKGluZm9mcmFtZXMuZW5hYmxlKTsKKwlpZiAoZmFzdHNldCAmJiAoY3VycmVudF9jb25m
aWctPmhhc19wc3IgfHwgcGlwZV9jb25maWctPmhhc19wc3IpKQorCQlQSVBFX0NPTkZfQ0hFQ0tf
WF9XSVRIX01BU0soaW5mb2ZyYW1lcy5lbmFibGUsCisJCQkJCSAgICB+aW50ZWxfaGRtaV9pbmZv
ZnJhbWVfZW5hYmxlKERQX1NEUF9WU0MpKTsKKwllbHNlCisJCVBJUEVfQ09ORl9DSEVDS19YKGlu
Zm9mcmFtZXMuZW5hYmxlKTsKKwogCVBJUEVfQ09ORl9DSEVDS19YKGluZm9mcmFtZXMuZ2NwKTsK
IAlQSVBFX0NPTkZfQ0hFQ0tfSU5GT0ZSQU1FKGF2aSk7CiAJUElQRV9DT05GX0NIRUNLX0lORk9G
UkFNRShzcGQpOwotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
