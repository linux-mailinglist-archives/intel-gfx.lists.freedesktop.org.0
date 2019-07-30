Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F245B7B1A6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:19:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302768913E;
	Tue, 30 Jul 2019 18:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F6C3890A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:19:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 11:19:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="190945910"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 11:19:23 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6UIJMWT026363; Tue, 30 Jul 2019 19:19:22 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 18:19:00 +0000
Message-Id: <20190730181903.17820-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] Don't sanitize enable_guc
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

V2Ugd2FudCB0byBzdG9wIHJlbHlpbmcgb24gbW9kcGFyYW0gZm9yIHJ1bnRpbWUgdUMgc3RhdHVz
CgpNaWNoYWwgV2FqZGVjemtvICgzKToKICBkcm0vaTkxNS91YzogQ29uc2lkZXIgZW5hYmxlX2d1
YyBtb2RwYXJhbSBkdXJpbmcgZncgc2VsZWN0aW9uCiAgZHJtL2k5MTUvZ3VjOiBVc2UgZGVkaWNh
dGVkIGZsYWcgdG8gdHJhY2sgc3VibWlzc2lvbiBtb2RlCiAgZHJtL2k5MTUvdWM6IFN0b3Agc2Fu
aXRpemluZyBlbmFibGVfZ3VjIG1vZHBhcmFtCgogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjLmMgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfZ3VjLmggICAgICAgIHwgMTIgKysrKwogLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9n
dWNfc3VibWlzc2lvbi5jIHwgMTYgKysrKysKIC4uLi9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjX3N1Ym1pc3Npb24uaCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Yy5oICAgICAgICB8ICA1ICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5jICAgICAgICAgfCA3MCArKysrKy0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Yy5oICAgICAgICAgfCAgOSArLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMgICAgICB8IDI1ICsrKysrKy0KIDggZmlsZXMgY2hhbmdlZCwg
NzggaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCgotLSAKMi4xOS4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
