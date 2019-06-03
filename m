Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E43333005
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 14:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DBC8926C;
	Mon,  3 Jun 2019 12:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2CF8926B;
 Mon,  3 Jun 2019 12:44:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 05:44:23 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by orsmga004.jf.intel.com with ESMTP; 03 Jun 2019 05:44:20 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 Jun 2019 18:38:48 +0530
Message-Id: <1559567330-25182-2-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559567330-25182-1-git-send-email-uma.shankar@intel.com>
References: <1559567330-25182-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v2 1/3] drm: ADD UAPI structure definition section in
 kernel doc
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
Cc: jonas@kwiboo.se, seanpaul@chromium.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGEgbmV3IHNlY3Rpb24gZm9yIFVBUEkgc3RydWN0dXJlIGFuZCBoZWxwZXIgZGVmaW5pdGlv
bnMKaW4ga2VybmVsIGRvY2Jvb2suCgpTdWdnZXN0ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmll
bEBmZndsbC5jaD4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KLS0tCiBEb2N1bWVudGF0aW9uL2dwdS9kcm0tdWFwaS5yc3QgfCA5ICsrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vZ3B1L2RybS11YXBpLnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2RybS11YXBpLnJzdAppbmRl
eCBmMzY4ZTU4Li45NGY5MDUyIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9kcm0tdWFw
aS5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUvZHJtLXVhcGkucnN0CkBAIC0zMjksMyArMzI5
LDEyIEBAIERSTV9JT0NUTF9NT0RFU0VUX0NUTAogICAgIG1vZGUgc2V0dGluZywgc2luY2Ugb24g
bWFueSBkZXZpY2VzIHRoZSB2ZXJ0aWNhbCBibGFuayBjb3VudGVyIGlzCiAgICAgcmVzZXQgdG8g
MCBhdCBzb21lIHBvaW50IGR1cmluZyBtb2Rlc2V0LiBNb2Rlcm4gZHJpdmVycyBzaG91bGQgbm90
CiAgICAgY2FsbCB0aGlzIGFueSBtb3JlIHNpbmNlIHdpdGgga2VybmVsIG1vZGUgc2V0dGluZyBp
dCBpcyBhIG5vLW9wLgorCitVc2Vyc3BhY2UgQVBJIFN0cnVjdHVyZXMKKz09PT09PT09PT09PT09
PT09PT09PT09PQorCisuLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91YXBpL2RybS9kcm1fbW9kZS5o
CisgICA6ZG9jOiBvdmVydmlldworCisuLiBrZXJuZWwtZG9jOjogaW5jbHVkZS91YXBpL2RybS9k
cm1fbW9kZS5oCisgICA6aW50ZXJuYWw6Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
