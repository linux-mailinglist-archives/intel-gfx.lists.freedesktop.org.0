Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDE5F7345
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 12:41:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935376E8C1;
	Mon, 11 Nov 2019 11:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D15D6E8BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 11:41:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 03:41:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="206718524"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga003.jf.intel.com with ESMTP; 11 Nov 2019 03:41:09 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 16:40:24 +0530
Message-Id: <20191111111029.9126-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20191111111029.9126-1-vandita.kulkarni@intel.com>
References: <20191111111029.9126-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC-v2 4/9] drm/i915/dsi: Add cmd mode flags in
 display mode private flags
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
Cc: jani.nikula@intel.com, --cc=uma.shankar@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkaW5nIFRFIGZsYWdzIGFuZCBwZXJpb2RpYyBjb21tYW5kIG1vZGUgZmxhZ3MKYXMgcGFydCBv
ZiBwcml2YXRlIGZsYWdzIHRvIGluZGljYXRlIHdoYXQgVEUgaW50ZXJydXB0cwp3ZSB3b3VsZCBi
ZSBnZXR0aW5nIGluc3RlYWQgb2YgdmJsYW5rcyBpbiBjYXNlIG9mIG1pcGkgZHNpCmNvbW1hbmQg
bW9kZS4KClNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
CmluZGV4IGZhZGQ5ODUzZjk2Ni4uZjM2ZThlNGU1YjU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtNjU2LDYgKzY1Niwx
MiBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zY2FsZXJfc3RhdGUgewogI2RlZmluZSBJOTE1X01PREVf
RkxBR19HRVRfU0NBTkxJTkVfRlJPTV9USU1FU1RBTVAgKDE8PDEpCiAvKiBGbGFnIHRvIHVzZSB0
aGUgc2NhbmxpbmUgY291bnRlciBpbnN0ZWFkIG9mIHRoZSBwaXhlbCBjb3VudGVyICovCiAjZGVm
aW5lIEk5MTVfTU9ERV9GTEFHX1VTRV9TQ0FOTElORV9DT1VOVEVSICgxPDwyKQorLyogRmxhZyB0
byB1c2UgVEUgZnJvbSBEU0kwIGluc3RlYWQgb2YgVkJJIGluIGNvbW1hbmQgbW9kZSAqLworI2Rl
ZmluZSBJOTE1X01PREVfRkxBR19EU0lfVVNFX1RFMCAoMTw8MykKKy8qIEZsYWcgdG8gdXNlIFRF
IGZyb20gRFNJMSBpbnN0ZWFkIG9mIFZCSSBpbiBjb21tYW5kIG1vZGUgKi8KKyNkZWZpbmUgSTkx
NV9NT0RFX0ZMQUdfRFNJX1VTRV9URTEgKDE8PDQpCisvKiBGbGFnIHRvIGluZGljYXRlIG1pcGkg
ZHNpIHBlcmlvZGljIGNvbW1hbmQgbW9kZSB3aGVyZSB3ZSBkbyBub3QgZ2V0IFRFICovCisjZGVm
aW5lIEk5MTVfTU9ERV9GTEFHX0RTSV9QRVJJT0RJQ19DTURfTU9ERSAoMTw8NSkKIAogc3RydWN0
IGludGVsX3BpcGVfd20gewogCXN0cnVjdCBpbnRlbF93bV9sZXZlbCB3bVs1XTsKLS0gCjIuMjEu
MC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
