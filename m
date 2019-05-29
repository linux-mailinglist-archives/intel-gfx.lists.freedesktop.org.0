Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD452E556
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 21:31:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D0FF6E0AE;
	Wed, 29 May 2019 19:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 832716E0A6;
 Wed, 29 May 2019 19:31:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 12:31:30 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2019 12:31:27 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 30 May 2019 01:29:01 +0530
Message-Id: <1559159944-21103-2-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
References: <1559159944-21103-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [PATCH 1/4] drm: Drop a redundant unused variable
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHJvcCBhIHJlZHVuZGFudCBhbmQgdW51c2VkIHZhcmlhYmxlICJoZHJfb3V0cHV0X21ldGFkYXRh
IiBmcm9tCmRybV9jb25uZWN0b3IuCgpTdWdnZXN0ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bEBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KLS0tCiBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggfCAyIC0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVj
dG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKaW5kZXggZjhmNDAwMy4uNTQ3NjU2
MSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oCisrKyBiL2luY2x1ZGUv
ZHJtL2RybV9jb25uZWN0b3IuaApAQCAtMTI0NCw4ICsxMjQ0LDYgQEAgc3RydWN0IGRybV9jb25u
ZWN0b3IgewogCSAqLwogCXN0cnVjdCBsbGlzdF9ub2RlIGZyZWVfbm9kZTsKIAotCS8qIEhEUiBt
ZXRkYXRhICovCi0Jc3RydWN0IGhkcl9vdXRwdXRfbWV0YWRhdGEgaGRyX291dHB1dF9tZXRhZGF0
YTsKIAlzdHJ1Y3QgaGRyX3NpbmtfbWV0YWRhdGEgaGRyX3NpbmtfbWV0YWRhdGE7CiB9OwogCi0t
IAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
