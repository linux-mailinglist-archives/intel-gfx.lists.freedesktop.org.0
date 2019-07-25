Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0048E75B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 01:48:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3B66E83E;
	Thu, 25 Jul 2019 23:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 121776E839
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2019 23:48:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 16:48:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,308,1559545200"; d="scan'208";a="170460034"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.9.40])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jul 2019 16:48:20 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Jul 2019 16:48:10 -0700
Message-Id: <20190725234813.27179-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Tiger Lake: interrupts
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

Tm9ydGggYW5kIHNvdXRoIGludGVycnVwdHMuIFVwZGF0ZWQgdmVyc2lvbiBvZiB0aGUgcGF0Y2hl
cyBleHRyYWN0ZWQKZnJvbSBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzYzNjcwLwoKSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSAoMSk6CiAgZHJtL2k5MTUvdGdsOiBVcGRh
dGUgbm9ydGggZGlzcGxheSBob3RwbHVnIGRldGVjdGlvbiB0byBUR0wKICAgIGNvbm5lY3Rpb25z
CgpMdWNhcyBEZSBNYXJjaGkgKDIpOgogIGRybS9pOTE1L3RnbDogQWRkIGhwZCBpbnRlcnJ1cHQg
aGFuZGxpbmcKICBkcm0vaTkxNS90Z2w6IGhhbmRsZSBEUCBhdXggaW50ZXJydXB0cwoKIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIHwgICA2ICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfaXJxLmMgICAgICAgICAgICAgIHwgMTk1ICsrKysrKysrKysrKysrKysr
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgIDQzICsr
Ky0KIDQgZmlsZXMgY2hhbmdlZCwgMjI0IGluc2VydGlvbnMoKyksIDI0IGRlbGV0aW9ucygtKQoK
LS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
