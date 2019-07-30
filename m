Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A007A2B8
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F496E43B;
	Tue, 30 Jul 2019 08:03:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 989676E43B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:03:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="176702414"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 01:03:06 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 13:06:42 +0530
Message-Id: <20190730073648.5157-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [v2 0/6] Support mipi dsi video mode on TGL
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdCBvZiB0aGUgc2VxdWVuY2UgcmVtYWlucyBhcyBzYW1lIGFzIHRoYXQgb2YgSUNMLgpUaGlz
IHNlcmllcyBpbmNsdWRlcyB0aGUgY2hhbmdlcyBuZWVkZWQgZm9yIFRHTC4KClZhbmRpdGEgS3Vs
a2FybmkgKDYpOgogIGRybS9pOTE1L3RnbC9kc2k6IFByb2dyYW0gVFJBTlNfVkJMQU5LIHJlZ2lz
dGVyCiAgZHJtL2k5MTUvdGdsL2RzaTogU2V0IGxhdGVuY3kgUENTX0RXMSBmb3IgdGdsCiAgZHJt
L2k5MTUvdGdsL2RzaTogRG8gbm90IG92ZXJyaWRlIFRBX1NVUkUKICBkcm0vaTkxNS90Z2wvZHNp
OiBHYXRlIHRoZSBkZGkgY2xvY2tzIGFmdGVyIHBsbCBtYXBwaW5nCiAgZHJtL2k5MTUvdGdsOiBB
ZGQgbWlwaSBkc2kgc3VwcG9ydCBmb3IgVEdMCiAgZHJtL2k5MTUvdGdsL2RzaTogRW5hYmxlIGJs
YW5raW5nIHBhY2tldHMgZHVyaW5nIEJMTFAgZm9yIHZpZGVvIG1vZGUKCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyAgICAgICB8IDU0ICsrKysrKysrKysrKysrLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8ICAxICsKIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAgIHwgIDEgKwogMyBmaWxl
cyBjaGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCi0tIAoyLjIxLjAu
NS5nYWViNTgyYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
