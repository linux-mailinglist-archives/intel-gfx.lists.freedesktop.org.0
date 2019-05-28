Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E86452C533
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 13:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53FD489BC0;
	Tue, 28 May 2019 11:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D546189BC0;
 Tue, 28 May 2019 11:13:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDC18A0071;
 Tue, 28 May 2019 11:13:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Tue, 28 May 2019 11:13:08 -0000
Message-ID: <20190528111308.14631.14313@emeril.freedesktop.org>
References: <20190528071229.26849-1-vandita.kulkarni@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190528071229.26849-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Move_intel=5Fadd?=
 =?utf-8?q?=5Fdsi=5Fproperties_to_intel=5Fdsi?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTU6IE1vdmUgaW50ZWxfYWRkX2RzaV9wcm9wZXJ0aWVzIHRvIGludGVsX2RzaQpVUkwg
ICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjEyMjgvClN0YXRl
IDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRp
cAo1MzQxZjE2YTg0YjMgZHJtL2k5MTU6IE1vdmUgaW50ZWxfYWRkX2RzaV9wcm9wZXJ0aWVzIHRv
IGludGVsX2RzaQotOjQ2OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBz
aG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNDY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RzaS5jOjE0OToKKwkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfc2NhbGluZ19tb2Rl
X3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCisJCQkJCQkJCWFsbG93ZWRfc2NhbGVycyk7Cgot
OjUyOiBDSEVDSzpPUEVOX0VOREVEX0xJTkU6IExpbmVzIHNob3VsZCBub3QgZW5kIHdpdGggYSAn
KCcKIzUyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuYzoxNTU6CisJCWRy
bV9jb25uZWN0b3JfaW5pdF9wYW5lbF9vcmllbnRhdGlvbl9wcm9wZXJ0eSgKCnRvdGFsOiAwIGVy
cm9ycywgMCB3YXJuaW5ncywgMiBjaGVja3MsIDExMCBsaW5lcyBjaGVja2VkCmQ2MmNkY2U1ZDk3
YiBkcm0vaTkxNTogQWRkIGludGVsX2RzaSBwcm9wZXJ0aWVzIHN1cHBvcnQgZm9yIGljbAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
