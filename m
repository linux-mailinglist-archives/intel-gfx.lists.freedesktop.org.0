Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B54D71C659
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 11:47:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2723B89220;
	Tue, 14 May 2019 09:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F25289220
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 May 2019 09:47:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 02:47:32 -0700
X-ExtLoop1: 1
Received: from genxfsim-shark-bay-client-platform.iind.intel.com
 ([10.223.74.155])
 by orsmga008.jf.intel.com with ESMTP; 14 May 2019 02:47:30 -0700
From: Swati Sharma <swati2.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 May 2019 15:13:18 +0530
Message-Id: <1557827010-24239-1-git-send-email-swati2.sharma@intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [Intel-gfx] [PATCH 00/12] drm/i915: adding state checker for gamma
 lut values
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gdGhpcyBwYXRjaCBzZXJpZXMsIGFkZGVkIHN0YXRlIGNoZWNrZXIgdG8gdmFsaWRhdGUgZ2Ft
bWEKYW5kIHdpbGwgYmUgZXh0ZW5kZWQgdG8gdmFsaWRhdGUgZGVnYW1tYSBsdXQgdmFsdWVzIGFz
d2VsbC4KVGhpcyByZWFkcyBoYXJkd2FyZSBzdGF0ZSwgYW5kIGNvbXBhcmVzIHRoZSBvcmlnaW5h
bGx5CnJlcXVlc3RlZCBzdGF0ZSB0byB0aGUgc3RhdGUgcmVhZCBmcm9tIGhhcmR3YXJlLgoKdjE6
IC1JbXBsZW1lbnRhdGlvbiBkb25lIGZvciBsZWdhY3kgcGxhdGZvcm1zCiAgICAgKHJlbW92ZWQg
YWxsIHRoZSBwbGFjZWhvbGRlcnMpIChKYW5pKQp2MjogLVJlc3RydWN0dXJlZCBjb2RlIHRvIHJl
YXRlZCBwbGF0Zm9ybSBzcGVjaWZpYyBwYXRjaCBzZXJpZXMKdjM6IC1SZWJhc2UKdjQ6IC1NaW5v
ciBjaGFuZ2VzLWZ1bmN0aW9uIG5hbWUgY2hhbmdlcwp2NTogLUFkZGVkIGRlZ2FtbWEgdmFsaWRh
dGlvbiAoVmlsbGUpCnY2OiAtUmVtb3ZlZCBkZWdhbW1hIGNoYW5nZXMsIGRlYnVnZ2luZyB3YXMg
YmVjb21pbmcgZGlmZmljdWx0CiAgICAtQWRkZWQgZnVuY3Rpb24gdG8gYXNzaWduIGJpdF9wcmVj
aXNpb24gZm9yIGdhbW1hL2RlZ2FtbWEgbHV0IHZhbHVlcyAvcGxhdGZvcm0KICAgIC1BZGRlZCBk
ZWJ1ZyBpbmZvIGludG8gaW50ZWxfZHVtcF9waXBlX2NvbmZpZygpIChKYW5pKQoKU3dhdGkgU2hh
cm1hICgxMik6CiAgZHJtL2k5MTU6IEludHJvZHVjZSB2ZnVuYyByZWFkX2x1dHMoKSB0byBjcmVh
dGUgaHcgbHV0CiAgZHJtL2k5MTU6IEVuYWJsZSBpbnRlbF9jb2xvcl9nZXRfY29uZmlnKCkKICBk
cm0vaTkxNTogQWRkIGludGVsX2NvbG9yX2x1dF9lcXVhbCgpIHRvIGNvbXBhcmUgaHcgYW5kIHN3
CiAgICBnYW1tYS9kZWdhbW1hIGx1dCB2YWx1ZXMKICBkcm0vaTkxNTogRXh0cmFjdCBpOXh4X3Jl
YWRfbHV0cygpCiAgZHJtL2k5MTU6IEV4dHJhY3QgY2h2X3JlYWRfbHV0cygpCiAgZHJtL2k5MTU6
IEV4dHJhY3QgaTk2NV9yZWFkX2x1dHMoKQogIGRybS9pOTE1OiBFeHRyYWN0IGljbF9yZWFkX2x1
dHMoKQogIGRybS9pOTE1OiBFeHRyYWN0IGdsa19yZWFkX2x1dHMoKQogIGRybS9pOTE1OiBFeHRy
YWN0IGJkd19yZWFkX2x1dHMoKQogIGRybS9pOTE1OiBFeHRyYWN0IGl2Yl9yZWFkX2x1dHMoKQog
IGRybS9pOTE1OiBFeHRyYWN0IGlsa19yZWFkX2x1dHMoKQogIEZPUl9URVNUSU5HX09OTFk6IFBy
aW50IHJnYiB2YWx1ZXMgb2YgaHcgYW5kIHN3IGJsb2JzCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICB8ICAxNSArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY29sb3IuYyAgIHwgMzk0
ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jb2xvci5oICAgfCAgIDggKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlz
cGxheS5jIHwgIDI4ICsrKwogNSBmaWxlcyBjaGFuZ2VkLCA0NDEgaW5zZXJ0aW9ucygrKSwgNSBk
ZWxldGlvbnMoLSkKCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
