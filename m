Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEE2CA22A7
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 19:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A4566E086;
	Thu, 29 Aug 2019 17:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516996E086
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 17:46:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 10:46:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,444,1559545200"; d="scan'208";a="210625446"
Received: from unknown (HELO pachecof-ubuntu.fm.intel.com) ([10.1.27.56])
 by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2019 10:46:01 -0700
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 10:41:54 -0700
Message-Id: <20190829174154.14675-2-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829174154.14675-1-fernando.pacheco@intel.com>
References: <20190829174154.14675-1-fernando.pacheco@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] HAX: force enable_guc=2
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

U2lnbmVkLW9mZi1ieTogRmVybmFuZG8gUGFjaGVjbyA8ZmVybmFuZG8ucGFjaGVjb0BpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BhcmFtcy5oCmluZGV4IGQyOWFkZTNiN2RlNi4uZjlmYmIxZjJmYWJmIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTU0LDcgKzU0LDcgQEAgc3RydWN0IGRybV9wcmludGVy
OwogCXBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSkgXAogCXBhcmFtKGludCwgZW5h
YmxlX2lwcywgMSkgXAogCXBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDApIFwKLQlwYXJh
bShpbnQsIGVuYWJsZV9ndWMsIDApIFwKKwlwYXJhbShpbnQsIGVuYWJsZV9ndWMsIDIpIFwKIAlw
YXJhbShpbnQsIGd1Y19sb2dfbGV2ZWwsIC0xKSBcCiAJcGFyYW0oY2hhciAqLCBndWNfZmlybXdh
cmVfcGF0aCwgTlVMTCkgXAogCXBhcmFtKGNoYXIgKiwgaHVjX2Zpcm13YXJlX3BhdGgsIE5VTEwp
IFwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
