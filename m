Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB2259519
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 09:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 480396E88A;
	Fri, 28 Jun 2019 07:37:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205B06E88A
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 07:37:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 00:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="170676372"
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jun 2019 00:37:02 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 13:32:27 +0530
Message-Id: <20190628080230.27492-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [v5 0/3] Extend BT2020 support in iCSC and fixes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciBCVDIwMjAgWUNiQ3IgdG8gUkdCIGNvbnZlcnNp
b24KdXNpbmcgaW5wdXQgQ1NDLiBUaGlzIGFsc28gZml4ZXMgaXNzdWVzIHdpdGggQlQ2MDEgYW5k
IEJUNzA5CmNvZWZmaWNpZW50cy4KCnYyOiBGaXhlZCBWaWxsZSdzIHJldmlldyBjb21tZW50cy4K
CnYzOiBSZWJhc2UuCgp2NDogUmViYXNlLgoKdjU6IEZpeCBhIHJlYmFzZSBmdW1ibGUuCgpVbWEg
U2hhbmthciAoMyk6CiAgZHJtL2k5MTUvaWNsOiBIYW5kbGUgWUNiQ3IgdG8gUkdCIGNvbnZlcnNp
b24gZm9yIEJUMjAyMCBjYXNlCiAgZHJtL2k5MTUvaWNsOiBGaXggWSBwcmUtb2Zmc2V0IGZvciBG
dWxsIFJhbmdlIFlDYkNyCiAgZHJtL2k5MTUvaWNsOiBGaXhlZCBJbnB1dCBDU0MgQ28tZWZmaWNp
ZW50cyBmb3IgQlQ2MDEvNzA5CgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9z
cHJpdGUuYyB8IDU1ICsrKysrKysrKysrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQxIGlu
c2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
