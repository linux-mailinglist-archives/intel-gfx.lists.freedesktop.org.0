Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C1B1CD7D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 19:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 624B2892E0;
	Tue, 14 May 2019 17:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44CD5892E6;
 Tue, 14 May 2019 17:09:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:09:35 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2019 10:09:32 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 23:06:24 +0530
Message-Id: <1557855394-12214-3-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v10 02/12] drm: Add reference counting on HDR metadata
 blob
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

RnJvbTogSm9uYXMgS2FybG1hbiA8am9uYXNAa3dpYm9vLnNlPgoKVGhpcyBhZGRzIHJlZmVyZW5j
ZSBjb3VudCBmb3IgSERSIG1ldGFkYXRhIGJsb2IsCmhhbmRsZWQgYXMgcGFydCBvZiBkdXBsaWNh
dGUgYW5kIGRlc3Ryb3kgY29ubmVjdG9yCnN0YXRlIGZ1bmN0aW9ucy4KClNpZ25lZC1vZmYtYnk6
IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21p
Y19zdGF0ZV9oZWxwZXIuYyB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIuYwppbmRleCBhYzky
OWY2Li44ZjQ5OTUyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19zdGF0
ZV9oZWxwZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2F0b21pY19zdGF0ZV9oZWxwZXIu
YwpAQCAtMzkxLDYgKzM5MSwxMCBAQCB2b2lkIGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9y
ZXNldChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCQlkcm1fY29ubmVjdG9yX2dl
dChjb25uZWN0b3IpOwogCXN0YXRlLT5jb21taXQgPSBOVUxMOwogCisJaWYgKHN0YXRlLT5oZHJf
b3V0cHV0X21ldGFkYXRhKQorCQlkcm1fcHJvcGVydHlfYmxvYl9nZXQoc3RhdGUtPmhkcl9vdXRw
dXRfbWV0YWRhdGEpOworCXN0YXRlLT5oZHJfbWV0YWRhdGFfY2hhbmdlZCA9IGZhbHNlOworCiAJ
LyogRG9uJ3QgY29weSBvdmVyIGEgd3JpdGViYWNrIGpvYiwgdGhleSBhcmUgdXNlZCBvbmx5IG9u
Y2UgKi8KIAlzdGF0ZS0+d3JpdGViYWNrX2pvYiA9IE5VTEw7CiB9CkBAIC00MzgsNiArNDQyLDgg
QEAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKgogCiAJaWYgKHN0YXRlLT53cml0ZWJhY2tf
am9iKQogCQlkcm1fd3JpdGViYWNrX2NsZWFudXBfam9iKHN0YXRlLT53cml0ZWJhY2tfam9iKTsK
KworCWRybV9wcm9wZXJ0eV9ibG9iX3B1dChzdGF0ZS0+aGRyX291dHB1dF9tZXRhZGF0YSk7CiB9
CiBFWFBPUlRfU1lNQk9MKF9fZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX2Rlc3Ryb3lfc3Rh
dGUpOwogCi0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
