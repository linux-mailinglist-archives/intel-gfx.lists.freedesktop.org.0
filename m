Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1138A2CC
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 18:01:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AB3C6E571;
	Mon, 12 Aug 2019 16:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9E56E575
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 16:01:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 09:01:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; d="scan'208";a="170095038"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga008.jf.intel.com with ESMTP; 12 Aug 2019 09:01:15 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id E899284028A; Mon, 12 Aug 2019 19:01:10 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Aug 2019 19:01:08 +0300
Message-Id: <20190812160108.16973-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812160108.16973-1-mika.kuoppala@linux.intel.com>
References: <20190812160108.16973-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/icl: Add command cache invalidate
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

T24gdGhlIHNldCBvZiBpbnZhbGlkYXRpb25zLCB3ZSBuZWVkIHRvIGFkZCBjb21tYW5kCmNhY2hl
IGludmFsaWRhdGUgYXMgYSBuZXcgZG9tYWluLgoKU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jICAgICAgICAgIHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21t
YW5kcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKaW5k
ZXggOTI5YTE3ZTU0ZjJjLi44NmUwMGEyZGI4YTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oCkBAIC0yMDgsNiArMjA4LDcgQEAKICNkZWZpbmUgICBE
SVNQTEFZX1BMQU5FX0EgICAgICAgICAgICgwPDwyMCkKICNkZWZpbmUgICBESVNQTEFZX1BMQU5F
X0IgICAgICAgICAgICgxPDwyMCkKICNkZWZpbmUgR0ZYX09QX1BJUEVfQ09OVFJPTChsZW4pCSgo
MHgzPDwyOSl8KDB4Mzw8MjcpfCgweDI8PDI0KXwoKGxlbiktMikpCisjZGVmaW5lICAgUElQRV9D
T05UUk9MX0NPTU1BTkRfQ0FDSEVfSU5WQUxJREFURQkJKDE8PDI5KSAvKiBnZW4xMSsgKi8KICNk
ZWZpbmUgICBQSVBFX0NPTlRST0xfVElMRV9DQUNIRV9GTFVTSAkJCSgxPDwyOCkgLyogZ2VuMTEr
ICovCiAjZGVmaW5lICAgUElQRV9DT05UUk9MX0ZMVVNIX0wzCQkJCSgxPDwyNykKICNkZWZpbmUg
ICBQSVBFX0NPTlRST0xfR0xPQkFMX0dUVF9JVkIJCQkoMTw8MjQpIC8qIGdlbjcrICovCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4IDg5MWRiM2M5MzNjOS4uMjdmMTQ0NWZlZDQw
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMjY5Miw2ICsyNjkyLDcgQEAg
c3RhdGljIGludCBnZW4xMV9lbWl0X2ZsdXNoX3JlbmRlcihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
ZXF1ZXN0LAogCiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9DU19TVEFMTDsKIAorCQlmbGFncyB8
PSBQSVBFX0NPTlRST0xfQ09NTUFORF9DQUNIRV9JTlZBTElEQVRFOwogCQlmbGFncyB8PSBQSVBF
X0NPTlRST0xfVExCX0lOVkFMSURBVEU7CiAJCWZsYWdzIHw9IFBJUEVfQ09OVFJPTF9JTlNUUlVD
VElPTl9DQUNIRV9JTlZBTElEQVRFOwogCQlmbGFncyB8PSBQSVBFX0NPTlRST0xfVEVYVFVSRV9D
QUNIRV9JTlZBTElEQVRFOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
