Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D18C27227B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Sep 2020 13:29:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64656E283;
	Mon, 21 Sep 2020 11:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7F16E27A;
 Mon, 21 Sep 2020 11:28:55 +0000 (UTC)
IronPort-SDR: wqi2xqFikxEBajXlf0leGftQ54QRm7CezKpOzypHUwdlLOaYYyVII/bky5sUertDgGdSKxZ1jd
 dJ6w1Z7GPQYw==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="157738365"
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="157738365"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2020 04:28:54 -0700
IronPort-SDR: mHNrKb6yOGfCnLzCNxo/Q8B+dQ+BA/0eiZHNrzofPNa/1zx5z/JphLtsahv88hByWoKjyP2ljk
 I4rOSwL1ORDg==
X-IronPort-AV: E=Sophos;i="5.77,286,1596524400"; d="scan'208";a="454009375"
Received: from karthik-2012-client-platform.iind.intel.com ([10.223.74.217])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 21 Sep 2020 04:28:51 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Sep 2020 16:32:09 +0530
Message-Id: <20200921110210.21182-8-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200921110210.21182-1-karthik.b.s@intel.com>
References: <20200921110210.21182-1-karthik.b.s@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 7/8] Documentation/gpu: Add asynchronous
 flip documentation for i915
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
Cc: paulo.r.zanoni@intel.com, michel@daenzer.net,
 dri-devel@lists.freedesktop.org, daniel.vetter@intel.com,
 harry.wentland@amd.com, nicholas.kazlauskas@amd.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIHRoZSBkZXRhaWxzIG9mIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiBhc3luY2hyb25vdXMgZmxp
cHMgZm9yIGk5MTUuCgp2NzogLVJlYmFzZWQuCgp2ODogLVJlYmFzZWQuCgp2OTogLVJlYmFzZWQu
Cgp2MTA6IE1vdmUgYWxsIGRvY3VtZW50YXRpb24gY2hhbmdlcyB0byB0aGlzIHBhdGNoLiAoVmls
bGUpCgpTaWduZWQtb2ZmLWJ5OiBLYXJ0aGlrIEIgUyA8a2FydGhpay5iLnNAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Ci0tLQogRG9jdW1lbnRhdGlvbi9ncHUvaTkxNS5yc3QgICAgICAgICAgICAgICAgICAg
fCAgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMTggKysrKysrKysrKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdCBiL0RvY3VtZW50YXRp
b24vZ3B1L2k5MTUucnN0CmluZGV4IDMzY2M2ZGRmOGY2NC4uODRlYWQ1MDhmN2FkIDEwMDY0NAot
LS0gYS9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAorKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9p
OTE1LnJzdApAQCAtMTE4LDYgKzExOCwxMiBAQCBBdG9taWMgUGxhbmUgSGVscGVycwogLi4ga2Vy
bmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMKICAgIDppbnRlcm5hbDoKIAorQXN5bmNocm9ub3VzIFBhZ2UgRmxpcAorLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQorCisuLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKKyAgIDpkb2M6IGFzeW5jaHJvbm91cyBmbGlwIGltcGxlbWVudGF0
aW9uCisKIE91dHB1dCBQcm9iaW5nCiAtLS0tLS0tLS0tLS0tLQogCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGRkYTMyYWIzODliNy4uYzBlMGM4
OTkyOTgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YwpAQCAtMTQ5MjMsNiArMTQ5MjMsMjQgQEAgc3RhdGljIGJvb2wgaW50ZWxfY3B1X3RyYW5zY29k
ZXJzX25lZWRfbW9kZXNldChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlyZXR1
cm4gZmFsc2U7CiB9CiAKKy8qKgorICogRE9DOiBhc3luY2hyb25vdXMgZmxpcCBpbXBsZW1lbnRh
dGlvbgorICoKKyAqIEFzeW5jaHJvbm91cyBwYWdlIGZsaXAgaXMgdGhlIGltcGxlbWVudGF0aW9u
IGZvciB0aGUgRFJNX01PREVfUEFHRV9GTElQX0FTWU5DCisgKiBmbGFnLiBDdXJyZW50bHkgYXN5
bmMgZmxpcCBpcyBvbmx5IHN1cHBvcnRlZCB2aWEgdGhlIGRybU1vZGVQYWdlRmxpcCBJT0NUTC4K
KyAqIENvcnJlc3BvbmRpbmdseSwgc3VwcG9ydCBpcyBjdXJyZW50bHkgYWRkZWQgZm9yIHByaW1h
cnkgcGxhbmUgb25seS4KKyAqCisgKiBBc3luYyBmbGlwIGNhbiBvbmx5IGNoYW5nZSB0aGUgcGxh
bmUgc3VyZmFjZSBhZGRyZXNzLCBzbyBhbnl0aGluZyBlbHNlCisgKiBjaGFuZ2luZyBpcyByZWpl
Y3RlZCBmcm9tIHRoZSBpbnRlbF9hdG9taWNfY2hlY2tfYXN5bmMoKSBmdW5jdGlvbi4KKyAqIE9u
Y2UgdGhpcyBjaGVjayBpcyBjbGVhcmVkLCBmbGlwIGRvbmUgaW50ZXJydXB0IGlzIGVuYWJsZWQg
dXNpbmcKKyAqIHRoZSBza2xfZW5hYmxlX2ZsaXBfZG9uZSgpIGZ1bmN0aW9uLgorICoKKyAqIEFz
IHNvb24gYXMgdGhlIHN1cmZhY2UgYWRkcmVzcyByZWdpc3RlciBpcyB3cml0dGVuLCBmbGlwIGRv
bmUgaW50ZXJydXB0IGlzCisgKiBnZW5lcmF0ZWQgYW5kIHRoZSByZXF1ZXN0ZWQgZXZlbnRzIGFy
ZSBzZW50IHRvIHRoZSB1c2Vyc2FwY2UgaW4gdGhlIGludGVycnVwdAorICogaGFuZGxlciBpdHNl
bGYuIFRoZSB0aW1lc3RhbXAgYW5kIHNlcXVlbmNlIHNlbnQgZHVyaW5nIHRoZSBmbGlwIGRvbmUg
ZXZlbnQKKyAqIGNvcnJlc3BvbmQgdG8gdGhlIGxhc3QgdmJsYW5rIGFuZCBoYXZlIG5vIHJlbGF0
aW9uIHRvIHRoZSBhY3R1YWwgdGltZSB3aGVuCisgKiB0aGUgZmxpcCBkb25lIGV2ZW50IHdhcyBz
ZW50LgorICovCiBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19hc3luYyhzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
