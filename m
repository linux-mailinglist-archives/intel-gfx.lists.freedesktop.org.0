Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F87490053
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 12:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FB2589709;
	Fri, 16 Aug 2019 10:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A145589709
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 10:55:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 03:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184890864"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 03:55:06 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7GAt5du010923; Fri, 16 Aug 2019 11:55:05 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 10:54:56 +0000
Message-Id: <20190816105501.31020-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/5] More WOPCM fixes
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

TW9yZSBXT1BDTSBmaXhlcwoKdjM6IGNvbnNvbGlkYXRlIG92ZXJmbG93IGNoZWNrcyAoRGFuaWVs
ZSkKCk1pY2hhbCBXYWpkZWN6a28gKDQpOgogIGRybS9pOTE1L3dvcGNtOiBDaGVjayBXT1BDTSBs
YXlvdXQgc2VwYXJhdGVseSBmcm9tIGNhbGN1bGF0aW9ucwogIGRybS9pOTE1L3dvcGNtOiBUcnkg
dG8gdXNlIGFscmVhZHkgbG9ja2VkIFdPUENNIGxheW91dAogIGRybS9pOTE1L3dvcGNtOiBVcGRh
dGUgZXJyb3IgbWVzc2FnZXMKICBkcm0vaTkxNS93b3BtYzogRml4IFNQRFggdGFnIGxvY2F0aW9u
CgpNaWNoYcWCIFdpbmlhcnNraSAoMSk6CiAgZHJtL2k5MTUvdWM6IE1vdmUgRlcgc2l6ZSBzYW5p
dHkgY2hlY2sgYmFjayB0byBmZXRjaAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMgfCAgMTEgKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmggfCAgIDcgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dvcGNtLmMgICAgICAgfCAx
NzkgKysrKysrKysrKysrKysrLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMTMxIGluc2VydGlv
bnMoKyksIDY2IGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
