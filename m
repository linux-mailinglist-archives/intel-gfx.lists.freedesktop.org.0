Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 930452C022
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 09:34:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964F489BFC;
	Tue, 28 May 2019 07:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA36F89BFB
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 07:34:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 00:34:04 -0700
X-ExtLoop1: 1
Received: from vandita-desktop.iind.intel.com ([10.223.74.201])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2019 00:34:03 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 May 2019 12:42:29 +0530
Message-Id: <20190528071229.26849-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190528071229.26849-1-vandita.kulkarni@intel.com>
References: <20190528071229.26849-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add intel_dsi properties support
 for icl
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3VwcG9ydCBkc2kgcHJvcGVydGllcyBvbiBpY2wKClNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vs
a2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ljbF9kc2kuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pY2xfZHNpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pY2xfZHNpLmMKaW5kZXggMWUyNDBhZDY2NWI1Li5jZDJlMWI3M2FjYWQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pY2xfZHNpLmMKQEAgLTE0NzIsNiArMTQ3Miw4IEBAIHZvaWQgaWNsX2RzaV9pbml0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJZ290byBlcnI7CiAJfQogCisJ
aW50ZWxfZHNpX2FkZF9wcm9wZXJ0aWVzKGludGVsX2Nvbm5lY3Rvcik7CisKIAlyZXR1cm47CiAK
IGVycjoKLS0gCjIuMjEuMC41LmdhZWI1ODJhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
