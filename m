Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E4CBD9B8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 10:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD746E05F;
	Wed, 25 Sep 2019 08:21:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96EC89B7B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 08:21:16 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Sep 2019 10:21:10 +0200
Message-Id: <20190925082110.17439-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925082110.17439-1-maarten.lankhorst@linux.intel.com>
References: <20190925082110.17439-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add hardware readout for FEC
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmVhZG91dCB0aGUgRkVDIHN0YXRlIGluIGVuY29kZXItPmdldF9jb25maWcoKSwgdGhpcyB3aWxs
IGFsbG93CnVzIHRvIGVuc3VyZSB0aGF0IHdlIGNhbiBjb3JyZWN0bHkgaW5oZXJpdCB0aGUgc3Rh
dGUgZnJvbSBib290LAphbmQgdGhhdCB3ZSBzZXQgRkVDIGR1cmluZyBtb2Rlc2V0LgoKU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8
IDE3ICsrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyB8ICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IDMzY2Q3NjZmOWVlYS4u
MTRmZTk4Nzg4OGE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMK
QEAgLTQwMjEsNiArNDAyMSwyMyBAQCB2b2lkIGludGVsX2RkaV9nZXRfY29uZmlnKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlwaXBlX2NvbmZpZy0+bGFuZV9jb3VudCA9CiAJCQko
KHRlbXAgJiBERElfUE9SVF9XSURUSF9NQVNLKSA+PiBERElfUE9SVF9XSURUSF9TSElGVCkgKyAx
OwogCQlpbnRlbF9kcF9nZXRfbV9uKGludGVsX2NydGMsIHBpcGVfY29uZmlnKTsKKworCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkgeworCQkJaTkxNV9yZWdfdCBkcF90cF9jdGw7CisK
KwkJCWlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkKKwkJCQlkcF90cF9jdGwgPSBEUF9UUF9DVEwo
ZW5jb2Rlci0+cG9ydCk7CisJCQllbHNlCisJCQkJZHBfdHBfY3RsID0gVEdMX0RQX1RQX0NUTChw
aXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpOworCisJCQlwaXBlX2NvbmZpZy0+ZmVjX2VuYWJs
ZSA9CisJCQkJSTkxNV9SRUFEKGRwX3RwX2N0bCkgJiBEUF9UUF9DVExfRkVDX0VOQUJMRTsKKwor
CQkJRFJNX0RFQlVHX0tNUygiW0VOQ09ERVI6JWQ6JXNdIEZlYyBzdGF0dXM6ICV1XG4iLAorCQkJ
CSAgICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLAorCQkJCSAg
ICAgIHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlKTsKKwkJfQorCiAJCWJyZWFrOwogCWNhc2UgVFJB
TlNfRERJX01PREVfU0VMRUNUX0RQX01TVDoKIAkJcGlwZV9jb25maWctPm91dHB1dF90eXBlcyB8
PSBCSVQoSU5URUxfT1VUUFVUX0RQX01TVCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGM0YzkyODZiZTk4Ny4uMzE2OThhNTc3NzNmIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTI4MzYs
NiArMTI4MzYsNyBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywKIAlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoZG1p
X3NjcmFtYmxpbmcpOwogCVBJUEVfQ09ORl9DSEVDS19CT09MKGhkbWlfaGlnaF90bWRzX2Nsb2Nr
X3JhdGlvKTsKIAlQSVBFX0NPTkZfQ0hFQ0tfQk9PTChoYXNfaW5mb2ZyYW1lKTsKKwlQSVBFX0NP
TkZfQ0hFQ0tfQk9PTChmZWNfZW5hYmxlKTsKIAogCVBJUEVfQ09ORl9DSEVDS19CT09MX0lOQ09N
UExFVEUoaGFzX2F1ZGlvKTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
