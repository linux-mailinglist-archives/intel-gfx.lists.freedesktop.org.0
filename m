Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CB97B755
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 02:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EC26E64C;
	Wed, 31 Jul 2019 00:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2BF16E64E
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 00:49:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 17:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="177117455"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 30 Jul 2019 17:49:37 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 17:49:02 -0700
Message-Id: <20190731004902.34672-5-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
References: <20190731004902.34672-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/tgl: Report valid VDBoxes with SFC
 capability
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KCkluIEdlbjEx
LCBvbmx5IGV2ZW4gbnVtYmVyZWQgImxvZ2ljYWwiIFZEQm94ZXMgYXJlIGhvb2tlZCB1cCB0byBh
IFNGQwooU2NhbGVyICYgRm9ybWF0IENvbnZlcnRlcikgdW5pdC4gVGhpcyBpcyBub3QgdGhlIGNh
c2UgaW4gVGlnZXJsYWtlLAp3aGVyZSBlYWNoIFZEQm94IGNhbiBhY2Nlc3MgYSBTRkMuCgpXZSB3
aWxsIHVzZSB0aGlzIGluZm9ybWF0aW9uIHRvIGRlY2lkZSB3aGVuIHRoZSBTRkMgdW5pdHMgbmVl
ZCB0byBiZSByZXNldAphbmQgYWxzbyBwYXNzIGl0IHRvIHRoZSBHdUMuCgpCc3BlYzogNDgwNzcK
U2lnbmVkLW9mZi1ieTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4K
U2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwu
Y29tPgpDYzogVmluYXkgQmVsZ2F1bWthciA8dmluYXkuYmVsZ2F1bWthckBpbnRlbC5jb20+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDMgKystCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKaW5kZXggZjk5YzlmZDQ5N2IyLi4yYTM5YjUyYzM1
ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwpAQCAtMTAyMiw4
ICsxMDIyLDkgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19pbml0X21taW8oc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQkvKgogCQkgKiBJbiBHZW4xMSwgb25seSBldmVuIG51
bWJlcmVkIGxvZ2ljYWwgVkRCT1hlcyBhcmUKIAkJICogaG9va2VkIHVwIHRvIGFuIFNGQyAoU2Nh
bGVyICYgRm9ybWF0IENvbnZlcnRlcikgdW5pdC4KKwkJICogSW4gVEdMIGVhY2ggVkRCT1ggaGFz
IGFjY2VzcyB0byBhbiBTRkMuCiAJCSAqLwotCQlpZiAobG9naWNhbF92ZGJveCsrICUgMiA9PSAw
KQorCQlpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBsb2dpY2FsX3ZkYm94KysgJSAyID09
IDApCiAJCQlSVU5USU1FX0lORk8oZGV2X3ByaXYpLT52ZGJveF9zZmNfYWNjZXNzIHw9IEJJVChp
KTsKIAl9CiAJRFJNX0RFQlVHX0RSSVZFUigidmRib3ggZW5hYmxlOiAlMDR4LCBpbnN0YW5jZXM6
ICUwNGx4XG4iLAotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
