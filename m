Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F6389367
	for <lists+intel-gfx@lfdr.de>; Sun, 11 Aug 2019 21:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167DC6E314;
	Sun, 11 Aug 2019 19:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 347266E2F8
 for <intel-gfx@lists.freedesktop.org>; Sun, 11 Aug 2019 19:51:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Aug 2019 12:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,374,1559545200"; d="scan'208";a="175706002"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2019 12:51:38 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.145.120])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7BJpbww019994; Sun, 11 Aug 2019 20:51:38 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 11 Aug 2019 19:51:28 +0000
Message-Id: <20190811195132.9660-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Use -EIO code for GuC initialization
 failures
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

TmV4dCBwb3J0aW9uIG9mIEd1Qy9IdUMgaW1wcm92ZW1lbnRzCgpNaWNoYWwgV2FqZGVjemtvICg0
KToKICBkcm0vaTkxNS91YzogRmFpbCBlYXJseSBpZiB0aGVyZSBpcyBubyBHdUMgZncgYXZhaWxh
YmxlCiAgZHJtL2k5MTUvdWM6IEluY2x1ZGUgSHVDIGZpcm13YXJlIHZlcnNpb24gaW4gc3VtbWFy
eQogIGRybS9pOTE1L3VjOiBVcGRhdGUgbWVzc2FnZXMgZnJvbSBmdyB1cGxvYWQgc3RlcAogIGRy
bS9pOTE1L3VjOiBVc2UgLUVJTyBjb2RlIGZvciBHdUMgaW5pdGlhbGl6YXRpb24gZmFpbHVyZXMK
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jICAgIHwgMzIgKysrKysrKysr
KysrKysrLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
IHwgMTQgKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmggfCAyMSArKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
ICAgICAgICAgIHwgMTQgKysrKysrLS0tLS0KIDQgZmlsZXMgY2hhbmdlZCwgNTIgaW5zZXJ0aW9u
cygrKSwgMjkgZGVsZXRpb25zKC0pCgotLSAKMi4xOS4yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
