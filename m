Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 374072C5CF9
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 21:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C37466EABB;
	Thu, 26 Nov 2020 20:29:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D12E6EAB8
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 20:29:52 +0000 (UTC)
IronPort-SDR: J4FMiRyabO6kG0vwnqaaRR8xFWY308L/SfoZ05Cs6IhhCvm7oVfYFNbBUKgWPsoC2EUqQUUJYV
 X/12HGmgAXww==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="171543138"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="171543138"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:52 -0800
IronPort-SDR: TaU9XNE/GfBKwsyFYq5TrqtJzBunIoexMIvBYg9rvoBOB47TWI0+Y6cc1M8pBO9ITH53IU/Trm
 9Wl9eQuNsVtA==
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="479459517"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:29:50 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 02:33:05 +0530
Message-Id: <20201126210314.7882-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126210314.7882-1-uma.shankar@intel.com>
References: <20201126210314.7882-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v12 06/15] drm/i915/display: Attach content type
 property for LSPCON
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

Q29udGVudCB0eXBlIGlzIHN1cHBvcnRlZCBvbiBIRE1JIHNpbmsgZGV2aWNlcy4gQXR0YWNoZWQg
dGhlCnByb3BlcnR5IGZvciB0aGUgc2FtZSBmb3IgTFNQQ09OIGJhc2VkIGRldmljZXMuCgp2Mjog
QWRkZWQgdGhlIGNvbnRlbnQgdHlwZSBwcm9ncmFtbWluZyB3aGVuIHdlIGFyZSBhdHRhY2hpbmcK
dGhlIHByb3BlcnR5IHRvIGNvbm5lY3RvciwgYXMgc3VnZ2VzdGVkIGJ5IFZpbGxlLgoKU2lnbmVk
LW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAgICB8IDEgKwogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyB8IDIgKysKIDIgZmlsZXMgY2hhbmdl
ZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CmluZGV4IDVhYWEwNmQ3MzYwOS4uYzRiYmViYzhjMjNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jCkBAIC02ODAzLDYgKzY4MDMsNyBAQCBpbnRlbF9kcF9jb25uZWN0
b3JfcmVnaXN0ZXIoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKIAkJCWRybV9vYmpl
Y3RfYXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCiAJCQkJCQkgICBjb25uZWN0b3It
PmRldi0+bW9kZV9jb25maWcuaGRyX291dHB1dF9tZXRhZGF0YV9wcm9wZXJ0eSwKIAkJCQkJCSAg
IDApOworCQlkcm1fY29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3R5cGVfcHJvcGVydHkoY29ubmVj
dG9yKTsKIAl9CiAKIAlyZXR1cm4gcmV0OwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHNwY29uLmMKaW5kZXggOTU1MmRmYzU1ZTIwLi4wYTRjMDVkNjcxMDggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwpAQCAtNTM5LDYgKzUzOSw4
IEBAIHZvaWQgbHNwY29uX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCQlmcmFtZS5hdmkueWNjX3F1YW50aXphdGlvbl9yYW5nZSA9IEhETUlfWUNDX1FVQU5U
SVpBVElPTl9SQU5HRV9MSU1JVEVEOwogCX0KIAorCWRybV9oZG1pX2F2aV9pbmZvZnJhbWVfY29u
dGVudF90eXBlKCZmcmFtZS5hdmksIGNvbm5fc3RhdGUpOworCiAJcmV0ID0gaGRtaV9pbmZvZnJh
bWVfcGFjaygmZnJhbWUsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOwogCWlmIChyZXQgPCAwKSB7CiAJCURS
TV9FUlJPUigiRmFpbGVkIHRvIHBhY2sgQVZJIElGXG4iKTsKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
