Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F3B280F6F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Oct 2020 11:04:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93E626E23F;
	Fri,  2 Oct 2020 09:04:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8676E23F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Oct 2020 09:04:53 +0000 (UTC)
IronPort-SDR: WftnH61AkgAVisncNFERByrcM4U13RdwfV62xHG0w0SqYuKlLIOhtRjQyaFb0uS/KvE1tlzT5L
 NjSQWZiTY3UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162185375"
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; d="scan'208";a="162185375"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2020 02:04:49 -0700
IronPort-SDR: mP+V931YW0YOggYp0tdplxgOjh/I9mnNXAAnuAzyuUmoXp1xHKAIfjQLQXmX/p2sYUt0CjV95J
 77SrZ2+yPkkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,326,1596524400"; d="scan'208";a="416383818"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 02 Oct 2020 02:04:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 02 Oct 2020 12:04:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Oct 2020 12:04:46 +0300
Message-Id: <20201002090446.21104-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Make lspcon_init() static
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgbHNwY29uX2luaXQoKSBzdGF0aWMgc2luY2UgaXQncyBubyBsb25nZXIgbmVlZGVkIG91dHNp
ZGUKdGhlIGNvbXBpbGF0aW9uIHVuaXQuIFRoaXMgd2FzIGNvcnJlY3QgaW4gS2FpLUhlbmcncyBs
c3Bjb24KcGF0Y2gsIGJ1dCBJIGZ1bWJsZWQgdGhpcyB3aGVuIGFwcGx5aW5nIGl0LgoKQ2M6IEth
aS1IZW5nIEZlbmcgPGthaS5oZW5nLmZlbmdAY2Fub25pY2FsLmNvbT4KUmVwb3J0ZWQtYnk6IGtl
cm5lbCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgpGaXhlczogZjU0MmQ2NzFmZmNlICgiZHJt
L2k5MTU6IEluaXQgbHNwY29uIGFmdGVyIEhQRCBpbiBpbnRlbF9kcF9kZXRlY3QoKSIpClNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyB8IDIgKy0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCmluZGV4IGRiMmUxZTkzODU3Mi4u
ZWU5NWZjMzUzYTU2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2xzcGNvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNw
Y29uLmMKQEAgLTUzMCw3ICs1MzAsNyBAQCB2b2lkIGxzcGNvbl93YWl0X3Bjb25fbW9kZShzdHJ1
Y3QgaW50ZWxfbHNwY29uICpsc3Bjb24pCiAJbHNwY29uX3dhaXRfbW9kZShsc3Bjb24sIERSTV9M
U1BDT05fTU9ERV9QQ09OKTsKIH0KIAotYm9vbCBsc3Bjb25faW5pdChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkKK3N0YXRpYyBib29sIGxzcGNvbl9pbml0KHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogewogCXN0cnVjdCBpbnRlbF9kcCAqZHAgPSAmZGln
X3BvcnQtPmRwOwogCXN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbiA9ICZkaWdfcG9ydC0+bHNw
Y29uOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
