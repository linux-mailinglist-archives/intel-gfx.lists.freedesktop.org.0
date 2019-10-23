Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C44FE1302
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 09:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6786E96C;
	Wed, 23 Oct 2019 07:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18036E970
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 07:24:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 00:24:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,219,1569308400"; d="scan'208";a="201050739"
Received: from hchegond-ivm1.jf.intel.com ([10.54.81.127])
 by orsmga003.jf.intel.com with ESMTP; 23 Oct 2019 00:24:40 -0700
From: Harish Chegondi <harish.chegondi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 00:24:40 -0700
Message-Id: <bce95a8734ab5ed10c9f26395671ca0995767d2a.1571813756.git.harish.chegondi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1571813756.git.harish.chegondi@intel.com>
References: <cover.1571813756.git.harish.chegondi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
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

ZGlzcGxheV9waXBlX2NyY19pcnFfaGFuZGxlcigpIHNraXBzIHRoZSBmaXJzdCBDUkMgZm9yIGFs
bCBHUFVzIGFuZCB0aGUKc2Vjb25kIENSQyBmb3IgR0VOOCsgR1BVcy4gVGhlIHNlY29uZCBDUkMg
aXMgaW52YWxpZCBldmVuIGZvciBCWVQgd2hpY2gKaXMgYSBHRU43IEdQVS4gU28sIHNraXAgdGhl
IHNlY29uZCBDUkMgZXZlbiBmb3IgR0VONyBHUFVzLgoKdjI6IFJlYmFzZQoKQ2M6IEphbmkgU2Fh
cmluZW4gPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPgpDYzogVG9taSBTYXJ2ZWxhIDx0b21pLnAu
c2FydmVsYUBpbnRlbC5jb20+CkNjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVs
LmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
CkNjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29t
PgpBY2tlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogSGFyaXNoIENoZWdvbmRpIDxoYXJpc2guY2hlZ29uZGlAaW50ZWwuY29tPgpSZWZlcmVu
Y2VzOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDMxOTEK
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwgNCArKy0tCiAxIGZpbGUgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jCmluZGV4IDU3MmE1YzM3Y2M2MS4uMzEyY2E5ZDUyOTJhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMKQEAgLTE1NjUsMTEgKzE1NjUsMTEgQEAgc3RhdGljIHZvaWQgZGlzcGxheV9waXBlX2Ny
Y19pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJICogYm9u
a2Vycy4gU28gbGV0J3MganVzdCB3YWl0IGZvciB0aGUgbmV4dCB2YmxhbmsgYW5kIHJlYWQKIAkg
KiBvdXQgdGhlIGJ1Z2d5IHJlc3VsdC4KIAkgKgotCSAqIE9uIEdFTjgrIHNvbWV0aW1lcyB0aGUg
c2Vjb25kIENSQyBpcyBib25rZXJzIGFzIHdlbGwsIHNvCisJICogT24gR0VONysgc29tZXRpbWVz
IHRoZSBzZWNvbmQgQ1JDIGlzIGJvbmtlcnMgYXMgd2VsbCwgc28KIAkgKiBkb24ndCB0cnVzdCB0
aGF0IG9uZSBlaXRoZXIuCiAJICovCiAJaWYgKHBpcGVfY3JjLT5za2lwcGVkIDw9IDAgfHwKLQkg
ICAgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOCAmJiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAxKSkg
eworCSAgICAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA3ICYmIHBpcGVfY3JjLT5za2lwcGVkID09
IDEpKSB7CiAJCXBpcGVfY3JjLT5za2lwcGVkKys7CiAJCXNwaW5fdW5sb2NrKCZwaXBlX2NyYy0+
bG9jayk7CiAJCXJldHVybjsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
