Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A938E26A5E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 21:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B2C489944;
	Wed, 22 May 2019 19:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE09F89944
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 19:01:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 12:01:10 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 22 May 2019 12:01:09 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4MJ18WD012878; Wed, 22 May 2019 20:01:08 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 May 2019 19:00:54 +0000
Message-Id: <20190522190057.848-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: HuC updates
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGVzdC13aXRoOiA8MjAxOTA1MTkyMDE2MzQuMjQ4MTYtMS1taWNoYWwud2FqZGVjemtvQGludGVs
LmNvbT4KCk1pY2hhbCBXYWpkZWN6a28gKDMpOgogIGRybS9pOTE1L3VjOiBNYWtlIHVjX3Nhbml0
aXplIHBhcnQgb2YgZ3Rfc2FuaXRpemUKICBkcm0vaTkxNS9odWM6IENoZWNrIEh1QyBmaXJtd2Fy
ZSBzdGF0dXMgb25seSBvbmNlCiAgZHJtL2k5MTUvaHVjOiBVcGRhdGUgSHVDIHN0YXR1cyBjb2Rl
cwoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMgfCAgMiArKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fcG0uYyAgICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2h1Yy5jICAgICAgfCAyNiArKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfaHVjLmggICAgICB8ICAyICsrCiA0IGZpbGVzIGNoYW5n
ZWQsIDE3IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKLS0gCjIuMTkuMgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
