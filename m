Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A2B1076BF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 18:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7D486E44A;
	Fri, 22 Nov 2019 17:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991896E446
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 17:51:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 09:51:33 -0800
X-IronPort-AV: E=Sophos;i="5.69,230,1571727600"; d="scan'208";a="197693723"
Received: from unknown (HELO pachecof-ubuntu.fm.intel.com) ([10.1.27.26])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 22 Nov 2019 09:51:32 -0800
From: Fernando Pacheco <fernando.pacheco@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 09:46:13 -0800
Message-Id: <20191122174613.16609-2-fernando.pacheco@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122174613.16609-1-fernando.pacheco@intel.com>
References: <20191122174613.16609-1-fernando.pacheco@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] HAX: force enable_guc=2
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
OTE1X3BhcmFtcy5oCmluZGV4IDMxYjg4ZjI5N2ZiYy4uYWNkYTlmMmExMjA3IDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGFyYW1zLmgKQEAgLTU0LDcgKzU0LDcgQEAgc3RydWN0IGRybV9wcmludGVy
OwogCXBhcmFtKGludCwgZGlzYWJsZV9wb3dlcl93ZWxsLCAtMSkgXAogCXBhcmFtKGludCwgZW5h
YmxlX2lwcywgMSkgXAogCXBhcmFtKGludCwgaW52ZXJ0X2JyaWdodG5lc3MsIDApIFwKLQlwYXJh
bShpbnQsIGVuYWJsZV9ndWMsIDApIFwKKwlwYXJhbShpbnQsIGVuYWJsZV9ndWMsIDIpIFwKIAlw
YXJhbShpbnQsIGd1Y19sb2dfbGV2ZWwsIC0xKSBcCiAJcGFyYW0oY2hhciAqLCBndWNfZmlybXdh
cmVfcGF0aCwgTlVMTCkgXAogCXBhcmFtKGNoYXIgKiwgaHVjX2Zpcm13YXJlX3BhdGgsIE5VTEwp
IFwKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
