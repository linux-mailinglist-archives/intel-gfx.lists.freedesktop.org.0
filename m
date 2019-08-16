Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEFC8FD1D
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8D6D6EB23;
	Fri, 16 Aug 2019 08:07:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B956EB23
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:07:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851606"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:06:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:53 -0700
Message-Id: <20190816080503.28594-30-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 29/39] drm/i915/tgl: Report valid VDBoxes with
 SFC capability
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkluIEdlbjEx
LCBvbmx5IGV2ZW4gbnVtYmVyZWQgImxvZ2ljYWwiIFZEQm94ZXMgYXJlIGhvb2tlZCB1cCB0byBh
IFNGQwooU2NhbGVyICYgRm9ybWF0IENvbnZlcnRlcikgdW5pdC4gVGhpcyBpcyBub3QgdGhlIGNh
c2UgaW4gVGlnZXJsYWtlLAp3aGVyZSBlYWNoIFZEQm94IGNhbiBhY2Nlc3MgYSBTRkMuCgpXZSB3
aWxsIHVzZSB0aGlzIGluZm9ybWF0aW9uIHRvIGRlY2lkZSB3aGVuIHRoZSBTRkMgdW5pdHMgbmVl
ZCB0byBiZSByZXNldAphbmQgYWxzbyBwYXNzIGl0IHRvIHRoZSBhbG1pZ2h0eSBHdUMuCgpCU3Bl
YzogMjE3NzEKQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+CkNjOiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDMg
KystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZjk5YzlmZDQ5N2IyLi4y
YTM5YjUyYzM1ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpA
QCAtMTAyMiw4ICsxMDIyLDkgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19pbml0X21taW8oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkvKgogCQkgKiBJbiBHZW4xMSwgb25s
eSBldmVuIG51bWJlcmVkIGxvZ2ljYWwgVkRCT1hlcyBhcmUKIAkJICogaG9va2VkIHVwIHRvIGFu
IFNGQyAoU2NhbGVyICYgRm9ybWF0IENvbnZlcnRlcikgdW5pdC4KKwkJICogSW4gVEdMIGVhY2gg
VkRCT1ggaGFzIGFjY2VzcyB0byBhbiBTRkMuCiAJCSAqLwotCQlpZiAobG9naWNhbF92ZGJveCsr
ICUgMiA9PSAwKQorCQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBsb2dpY2FsX3ZkYm94
KysgJSAyID09IDApCiAJCQlSVU5USU1FX0lORk8oZGV2X3ByaXYpLT52ZGJveF9zZmNfYWNjZXNz
IHw9IEJJVChpKTsKIAl9CiAJRFJNX0RFQlVHX0RSSVZFUigidmRib3ggZW5hYmxlOiAlMDR4LCBp
bnN0YW5jZXM6ICUwNGx4XG4iLAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
