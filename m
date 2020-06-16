Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B1E1FB40D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 16:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EDE6E8D1;
	Tue, 16 Jun 2020 14:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A677A6E8C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 14:19:07 +0000 (UTC)
IronPort-SDR: th9Po3O1kaRuX1FgJOTMzZ5HA2z3m+9Qdy8eAiuN1koEdK3kY0h/fYbQ9A3PQAJzTHyVhIPkeC
 F44KlpH9Tf7A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 07:19:07 -0700
IronPort-SDR: pUlJPevkvzLsXDdTgUsJvNVpF91Eg7qyOVzoKr/jZgQbTbFairu9c4RRiKl/2Dm+1B7xNVXtcp
 BUrmMC7hAYbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="273165012"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 16 Jun 2020 07:19:06 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Jun 2020 17:18:54 +0300
Message-Id: <20200616141855.746-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
In-Reply-To: <20200616141855.746-1-imre.deak@intel.com>
References: <20200616141855.746-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/dp_mst: Clear the ACT sent flag
 during encoder disabling too
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVyaW5nIGVuY29kZXIgZW5hYmxpbmcgd2UgY2xlYXIgdGhlIGZsYWcgYmVmb3JlIHN0YXJ0aW5n
IHRoZSBBQ1QKc2VxdWVuY2UgYW5kIHdhaXQgZm9yIHRoZSBmbGFnLCBidXQgdGhlIGNsZWFyaW5n
IGlzIG1pc3NpbmcgZHVyaW5nCmVuY29kZXIgZGlzYWJsaW5nLCBhZGQgaXQgdGhlcmUgdG9vLiBT
aW5jZSBub3RoaW5nIGNsZWFyZWQgdGhlIGZsYWcKYXV0b21hdGljYWxseSB3ZSBjb3VsZCd2ZSBy
dW4gc3Vic2VxdWVudCBkaXNhYmxpbmcgc3RlcHMgdG9vIGVhcmx5LgoKQ2M6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jIHwgMiArKwogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCmluZGV4IGI2
NmI1NmEwNzBlNS4uOTMwOGI1OTIwNzgwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBfbXN0LmMKQEAgLTM4OSw2ICszODksOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9t
c3RfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJ
ZHJtX2RwX3VwZGF0ZV9wYXlsb2FkX3BhcnQyKCZpbnRlbF9kcC0+bXN0X21ncik7CiAKKwljbGVh
cl9hY3Rfc2VudChpbnRlbF9kcCk7CisKIAl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAog
CQkJICAgIFRSQU5TX0RESV9GVU5DX0NUTChvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIp
KTsKIAl2YWwgJj0gflRSQU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DOwotLSAKMi4yMy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
