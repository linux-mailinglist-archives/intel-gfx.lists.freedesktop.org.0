Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB717B3DA
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 02:41:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCC389BFD;
	Fri,  6 Mar 2020 01:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1269D89BFD;
 Fri,  6 Mar 2020 01:41:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 17:41:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,520,1574150400"; d="scan'208";a="241020942"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 05 Mar 2020 17:41:18 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  5 Mar 2020 17:42:19 -0800
Message-Id: <20200306014220.20029-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/edid: Name the detailed monitor
 range flags
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
Cc: Harry Wentland <harry.wentland@amd.com>,
 Kazlauskas Nicholas <Nicholas.Kazlauskas@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBwYXRjaCBhZGRzIGRlZmluZXMgZm9yIHRoZSBkZXRhaWxlZCBtb25pdG9yCnJhbmdlIGZs
YWdzIGFzIHBlciB0aGUgRURJRCBzcGVjaWZpY2F0aW9uLgoKU3VnZ2VzdGVkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEhhcnJ5IFdlbnRsYW5kIDxo
YXJyeS53ZW50bGFuZEBhbWQuY29tPgpDYzogQ2xpbnRvbiBBIFRheWxvciA8Y2xpbnRvbi5hLnRh
eWxvckBpbnRlbC5jb20+CkNjOiBLYXpsYXVza2FzIE5pY2hvbGFzIDxOaWNob2xhcy5LYXpsYXVz
a2FzQGFtZC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFy
ZUBpbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vZHJtX2VkaWQuaCB8IDUgKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
ZWRpZC5oIGIvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAppbmRleCBmMGIwM2Q0MDFjMjcuLmY4OWM5
NzYyMzg0NSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2VkaWQuaAorKysgYi9pbmNsdWRl
L2RybS9kcm1fZWRpZC5oCkBAIC05MSw2ICs5MSwxMSBAQCBzdHJ1Y3QgZGV0YWlsZWRfZGF0YV9z
dHJpbmcgewogCXU4IHN0clsxM107CiB9IF9fYXR0cmlidXRlX18oKHBhY2tlZCkpOwogCisjZGVm
aW5lIEVESURfREVGQVVMVF9HVEZfU1VQUE9SVF9GTEFHICAgMHgwMAorI2RlZmluZSBFRElEX1JB
TkdFX0xJTUlUU19PTkxZX0ZMQUcgICAgIDB4MDEKKyNkZWZpbmUgRURJRF9TRUNPTkRBUllfR1RG
X1NVUFBPUlRfRkxBRyAweDAyCisjZGVmaW5lIEVESURfQ1ZUX1NVUFBPUlRfRkxBRyAgICAgICAg
ICAgMHgwNAorCiBzdHJ1Y3QgZGV0YWlsZWRfZGF0YV9tb25pdG9yX3JhbmdlIHsKIAl1OCBtaW5f
dmZyZXE7CiAJdTggbWF4X3ZmcmVxOwotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
