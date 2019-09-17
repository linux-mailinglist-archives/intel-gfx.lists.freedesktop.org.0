Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 867B4B4E9D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 14:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD9526EC50;
	Tue, 17 Sep 2019 12:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407966EC50
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 12:58:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 05:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="216556548"
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.34.144])
 by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2019 05:58:21 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 18:18:42 +0530
Message-Id: <1568724525-19275-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [v2][PATCH 0/3] adding gamma state checker for icl+
 platforms
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
Cc: jani.nikula@intel.com, daniel.vetter@ffwll.ch, ankit.k.nautiyal@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEgbHV0IHZhbHVlcwpmb3IgaWNlbGFrZSsgcGxhdGZvcm1zLiBJdCdzIGV4dGVuc2lvbiBvZiB0
aGUKcGF0Y2ggc2VyaWVzIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8z
MjgyNDYvP3Nlcmllcz01ODAzOQp3aGljaCBlbmFibGVkIHRoZSBiYXNpYyBpbmZyYXN0cnVjdHVy
ZSBhbmQgc3RhdGUgY2hlY2tlciBmb3IKbGVnYWN5IHBsYXRmb3Jtcy4KClN3YXRpIFNoYXJtYSAo
Myk6CiAgZHJtL2k5MTUvZGlzcGxheTogRml4IGZvcm1hdHRpbmcgaXNzdWVzCiAgZHJtL2k5MTUv
ZGlzcGxheTogRXh0cmFjdCBpY2xfcmVhZF9sdXRzKCkKICBGT1JfVEVTVElOR19PTkxZOiBQcmlu
dCByZ2IgdmFsdWVzIG9mIGh3IGFuZCBzdyBibG9icwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY29sb3IuYyB8IDI2MCArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgIHwgICA3ICsKIDIgZmls
ZXMgY2hhbmdlZCwgMjM4IGluc2VydGlvbnMoKyksIDI5IGRlbGV0aW9ucygtKQoKLS0gCjEuOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
