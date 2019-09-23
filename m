Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA30BB413
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 14:45:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CED6E8A0;
	Mon, 23 Sep 2019 12:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752B36E8A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 12:45:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 05:45:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="203119353"
Received: from akaras-dev.fi.intel.com ([10.237.72.88])
 by fmsmga001.fm.intel.com with ESMTP; 23 Sep 2019 05:45:17 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 15:44:35 +0300
Message-Id: <20190923124435.21774-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Fix doc not corresponding to code
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVwbGFjZSBQUExzIG5hbWVzIHVzZWQgaW4gZG9jdW1lbnRhdGlvbiB0byB0aGF0IHVzZWQgaW4g
dGhlIGNvZGUuCgpDYzogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5j
b20+CkZpeGVzOiBjb21taXQgZDA1NzA0MTRmM2QxICgiZHJtL2k5MTUvdGdsOiBBZGQgbmV3IHBs
bCBpZHMiKQpTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCA0ICsr
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCmluZGV4IGU3NTg4
Nzk5ZmNlNS4uMTA0Y2Y2ZDQyMzMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5oCkBAIC0xNDcsMTEgKzE0NywxMSBAQCBlbnVtIGludGVsX2RwbGxf
aWQgewogCSAqLwogCURQTExfSURfSUNMX01HUExMNCA9IDYsCiAJLyoqCi0JICogQERQTExfSURf
VEdMX1RDUExMNTogVEdMIFRDIFBMTCBwb3J0IDUgKFRDNSkKKwkgKiBARFBMTF9JRF9UR0xfTUdQ
TEw1OiBUR0wgVEMgUExMIHBvcnQgNSAoVEM1KQogCSAqLwogCURQTExfSURfVEdMX01HUExMNSA9
IDcsCiAJLyoqCi0JICogQERQTExfSURfVEdMX1RDUExMNjogVEdMIFRDIFBMTCBwb3J0IDYgKFRD
NikKKwkgKiBARFBMTF9JRF9UR0xfTUdQTEw2OiBUR0wgVEMgUExMIHBvcnQgNiAoVEM2KQogCSAq
LwogCURQTExfSURfVEdMX01HUExMNiA9IDgsCiB9OwotLSAKMi4xOS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
