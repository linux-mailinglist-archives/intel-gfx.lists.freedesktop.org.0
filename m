Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCB613B56E
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 23:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5528892E3;
	Tue, 14 Jan 2020 22:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17545892E3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 22:45:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 14:45:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,320,1574150400"; d="scan'208";a="256493651"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jan 2020 14:45:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jan 2020 14:45:08 -0800
Message-Id: <20200114224508.3302967-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC] drm/i915: Restrict legacy color key ioctl to
 pre-gen12
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

U2luY2UgZ2VuMTIgcGxhdGZvcm0gc3VwcG9ydCBpc24ndCBmaW5hbGl6ZWQgeWV0LCBsZXQncyBr
aWxsIG9mZiB0aGUKbGVnYWN5IGNvbG9yIGtleSBpb2N0bCBmb3IgdGhpcyBwbGF0Zm9ybTsgdGhl
cmUncyBubyB1c2Vyc3BhY2UgdG9kYXkKdGhhdCBjYW4gcnVuIG9uIHRoaXMgcGxhdGZvcm0gdGhh
dCB1dGlsaXplcyB0aGlzIGxlZ2FjeSBpb2N0bCwgc28gd2UgY2FuCnNhZmVseSBraWxsIGl0IG5v
dyBiZWZvcmUgaXQgYmVjb21lcyBBQkkuCgpDb2xvciBrZXkgZnVuY3Rpb25hbGl0eSBuZXZlciBn
b3QgaW50ZWdyYXRlZCBpbnRvIHRoZSBwcm9wZXJ0eSAvIGF0b21pYwppbnRlcmZhY2UsIGFuZCB0
aGUgb25seSBrbm93biBvcGVuIHNvdXJjZSBjb25zdW1lciB3YXMgdGhlIEludGVsIEREWAp3aGlj
aCB3YXMgbmV2ZXIgdXBkYXRlZCB0byBydW4gb24gcGxhdGZvcm1zIGJleW9uZCBnZW45LiAgSWYg
Y29sb3IKa2V5aW5nIGlzIGRlc2lyZWQgZ29pbmcgZm9yd2FyZCwgaXQgc2hvdWxkIHJlYWxseSBi
ZSBleHBvc2VkIGFzIGEKcHJvcGVydHkgc28gdGhhdCBpdCBjYW4gYmUgYXBwbGllZCBhdG9taWNh
bGx5IHdpdGggb3RoZXIgZGlzcGxheSB1cGRhdGVzCihhbmQgc2hvdWxkIHByb2JhYmx5IGJlIHN0
YW5kYXJkaXplZCBpbiBhIHdheSBhbGwgZHJpdmVycyBjYW4gY2hvb3NlIHRvCnN1cHBvcnQgcmF0
aGVyIHRoYW4gYmVpbmcgaTkxNS1zcGVjaWZpYykuCgpBcmd1YWJseSB3ZSBtaWdodCBiZSBhYmxl
IHRvIHByb2hpYml0IHRoaXMgb24gZ2VuMTAgYW5kIGdlbjExIGFzIHdlbGwKc2luY2Ugbm8gb3Bl
biBzb3VyY2UgdXNlcnNwYWNlIGV4aXN0cyBmb3IgdGhvc2UgcGxhdGZvcm1zIHRoYXQgdXRpbGl6
ZXMKdGhlc2UgaW9jdGxzLiAgSG93ZXZlciB0aGVyZSdzIGFsd2F5cyB0aGUgdmVyeSBzbGlnaHQg
Y2hhbmNlIHRoYXQKdW5rbm93biBjbG9zZWQgc291cmNlIHNvZnR3YXJlIGlzIGFjdGl2ZWx5IHV0
aWxpemluZyB0aGUgY29sb3Iga2V5IGlvY3RsCm9uIHRob3NlIHBsYXRmb3Jtcywgc28gd2Ugc2hv
dWxkIG1haW50YWluIHRoZSBzdXBwb3J0IHRoZXJlIHRvIGF2b2lkCmJyZWFraW5nIEFCSS4KCkNj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWxAZmZ3bGwuY2g+ClNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3Bl
ckBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJp
dGUuYyB8IDggKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCBmY2E3N2VjMWUw
ZGQuLjZlOGE0Njg2YTQwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Nwcml0ZS5jCkBAIC0yMjkwLDYgKzIyOTAsMTQgQEAgaW50IGludGVsX3Nwcml0ZV9zZXRfY29s
b3JrZXlfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAlzdHJ1Y3Qg
ZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggY3R4OwogCWludCByZXQgPSAwOwogCisJLyoKKwkgKiBV
c2Vyc3BhY2UgdGhhdCB1c2VzIHRoaXMgbGVnYWN5IGludGVyZmFjZSBvbmx5IGV4aXN0cyB1cCB0
aHJvdWdoCisJICogZ2VuOS4gIERpc2NvbnRpbnVlIHN1cHBvcnQgZm9yIHRoZSBpbnRlcmZhY2Ug
c3RhcnRpbmcgd2l0aCBnZW4xMiBzbworCSAqIHRoYXQgaXQgZG9lc24ndCBiZWNvbWUgQUJJIG9u
IG5ld2VyIHBsYXRmb3Jtcy4KKwkgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikK
KwkJcmV0dXJuIC1FSU5WQUw7CisKIAkvKiBpZ25vcmUgdGhlIHBvaW50bGVzcyAibm9uZSIgZmxh
ZyAqLwogCXNldC0+ZmxhZ3MgJj0gfkk5MTVfU0VUX0NPTE9SS0VZX05PTkU7CiAKLS0gCjIuMjMu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
