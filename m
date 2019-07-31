Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE627B751
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 02:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E5A6E647;
	Wed, 31 Jul 2019 00:49:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3120E89167
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 00:49:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 17:49:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="177117412"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 17:49:25 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 17:48:58 -0700
Message-Id: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Initial TGL submission changes
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmV3IGxyYy1yZWxhdGVkIGRlZmluZXMsIG5ldyBjc2IgcGFyc2VyIGFuZCBUR0wgc2ZjIHBhaXJp
bmcuCgpUaGVyZSBhcmUgcmVxdWlyZWQgY2hhbmdlcyBmb3IgdGhlIGNvbnRleHQgaW1hZ2UgYXMg
d2VsbCwgSSdsbCBzZW5kIHRoZW0Kc2VwYXJhdGVseSBhcyBJIGhhdmVuJ3QgZG9uZSB0aGUgbWF0
aCBmb3IgdGhlIGxyYyBzaXplIHlldC4KCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KCkRhbmllbGUgQ2VyYW9sbyBTcHVyaW8gKDMpOgogIGRybS9pOTE1L3Rn
bDogYWRkIEdlbjEyIGRlZmF1bHQgaW5kaXJlY3QgY3R4IG9mZnNldAogIGRybS9pOTE1L3RnbDog
YWRkIEdFTjEyX01BWF9DT05URVhUX0hXX0lECiAgZHJtL2k5MTUvdGdsOiBHZW4xMiBjc2Igc3Vw
cG9ydAoKTWljaGVsIFRoaWVycnkgKDEpOgogIGRybS9pOTE1L3RnbDogUmVwb3J0IHZhbGlkIFZE
Qm94ZXMgd2l0aCBTRkMgY2FwYWJpbGl0eQoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMgIHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV90eXBlcy5oIHwgMTMgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJj
LmMgICAgICAgICAgfCA3NyArKysrKysrKysrKysrKysrKystLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjX3JlZy5oICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICAgICB8ICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgICAgIHwgIDMgKy0KIDYgZmlsZXMgY2hhbmdlZCwgOTAgaW5zZXJ0aW9u
cygrKSwgMTAgZGVsZXRpb25zKC0pCgotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
