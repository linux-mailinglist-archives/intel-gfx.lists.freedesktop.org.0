Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF6D601A8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 09:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA66E6E41B;
	Fri,  5 Jul 2019 07:45:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89A916E417
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 07:45:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jul 2019 00:45:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,454,1557212400"; d="scan'208";a="339771972"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga005.jf.intel.com with ESMTP; 05 Jul 2019 00:45:33 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Fri,  5 Jul 2019 06:16:36 +0530
Message-Id: <20190705004642.15822-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 0/6] HDCP2.2 Phase II
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
Cc: ppaalanen@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmViYXNlZCB0aGUgcmVtYWluaW5nIDUgcGF0Y2hlcyBmcm9tIHRoZSBvcmlnaW5hbCBzZXJpZXMu
Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNTcyMzIvCgpBbmQgYXMg
cGVyIHBla2thJ3MgcmV2aWV3IGNvbW1lbnRzIGZldyBhZGRpdGlvbnMgYXJlIGRvbmUgaW4gdGhl
IGtlcm5lbApkb2N1bWVudGF0aW9uLgoKVGVzdC13aXRoOiA8MjAxOTA3MDMwOTU0NDYuMTQwOTIt
Mi1yYW1hbGluZ2FtLmNAaW50ZWwuY29tPgoKUmFtYWxpbmdhbSBDICg2KToKICBkcm06IEFkZCBD
b250ZW50IHByb3RlY3Rpb24gdHlwZSBwcm9wZXJ0eQogIGRybS9pOTE1OiBBdHRhY2ggY29udGVu
dCB0eXBlIHByb3BlcnR5CiAgZHJtOiB1ZXZlbnQgZm9yIGNvbm5lY3RvciBzdGF0dXMgY2hhbmdl
CiAgZHJtL2hkY3A6IHVwZGF0ZSBjb250ZW50IHByb3RlY3Rpb24gcHJvcGVydHkgd2l0aCB1ZXZl
bnQKICBkcm0vaTkxNTogdXBkYXRlIHRoZSBoZGNwIHN0YXRlIHdpdGggdWV2ZW50CiAgZHJtL2hk
Y3A6IHJlZmVyZW5jZSBmb3Igc3JtIGZpbGUgZm9ybWF0CgogZHJpdmVycy9ncHUvZHJtL2RybV9h
dG9taWNfdWFwaS5jICAgICAgICAgfCAgNCArKwogZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0
b3IuYyAgICAgICAgICAgfCAyMiArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYyAg
ICAgICAgICAgICAgICB8IDc3ICsrKysrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX3N5c2ZzLmMgICAgICAgICAgICAgICB8IDM1ICsrKysrKysrKysrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICB8IDM5ICsrKysrKysrKystLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgfCA1MyArKysrKysrKysrLS0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaCB8ICAyICstCiBpbmNs
dWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgICAgICAgICAgICB8ICA3ICsrKwogaW5jbHVkZS9k
cm0vZHJtX2hkY3AuaCAgICAgICAgICAgICAgICAgICAgfCAgNCArLQogaW5jbHVkZS9kcm0vZHJt
X21vZGVfY29uZmlnLmggICAgICAgICAgICAgfCAgNiArKwogaW5jbHVkZS9kcm0vZHJtX3N5c2Zz
LmggICAgICAgICAgICAgICAgICAgfCAgNSArLQogaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5o
ICAgICAgICAgICAgICAgfCAgNCArKwogMTIgZmlsZXMgY2hhbmdlZCwgMjI4IGluc2VydGlvbnMo
KyksIDMwIGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
