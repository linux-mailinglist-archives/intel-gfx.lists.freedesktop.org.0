Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B3985195
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 19:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836186E745;
	Wed,  7 Aug 2019 17:00:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286006E745
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 17:00:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 10:00:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="179550874"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 07 Aug 2019 10:00:48 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x77H0h7u010955; Wed, 7 Aug 2019 18:00:47 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 17:00:33 +0000
Message-Id: <20190807170034.8440-7-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190807170034.8440-1-michal.wajdeczko@intel.com>
References: <20190807170034.8440-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/uc: WOPCM programming errors are
 not always real
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

V09QQ00gcHJvZ3JhbW1pbmcgZXJyb3IgbWlnaHQgYmUgZHVlIHRvIGluc2VydGVkIGVhcmxpZXIg
cHJvYmUKZmFpbHVyZSB0aGF0IGNvdWxkIGFmZmVjdHMgSHVDIGZpcm13YXJlIGxvYWRpbmcgYW5k
IHRodXMgaW1wYWN0cwpyZXN1bHQgb2YgV09QQ00gcGFydGl0aW9uaW5nIHRoYXQgd291bGQgYmUg
bm93IGluY29tcGF0aWJsZSB3aXRoCnByZXZpb3VzbHkgcHJvZ3JhbW1lZCB2YWx1ZXMuCgpTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jIHwgMTIgKysrKysrKy0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Yy5jCmluZGV4IGM0MGVhYjI5MDM0Mi4uMzJhYTQ1MDliYTFkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKQEAgLTQxNSwxMSArNDE1LDEzIEBA
IHN0YXRpYyBpbnQgdWNfaW5pdF93b3BjbShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogCXJldHVybiAw
OwogCiBlcnJfb3V0OgotCURSTV9FUlJPUigiRmFpbGVkIHRvIGluaXQgdUMgV09QQ00gcmVnaXN0
ZXJzOlxuIik7Ci0JRFJNX0VSUk9SKCJETUFfR1VDX1dPUENNX09GRlNFVD0lI3hcbiIsCi0JCSAg
aW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBETUFfR1VDX1dPUENNX09GRlNFVCkpOwotCURSTV9F
UlJPUigiR1VDX1dPUENNX1NJWkU9JSN4XG4iLAotCQkgIGludGVsX3VuY29yZV9yZWFkKHVuY29y
ZSwgR1VDX1dPUENNX1NJWkUpKTsKKwlpOTE1X3Byb2JlX2Vycm9yKGd0LT5pOTE1LCAiRmFpbGVk
IHRvIGluaXQgdUMgV09QQ00gcmVnaXN0ZXJzIVxuIik7CisJaTkxNV9wcm9iZV9lcnJvcihndC0+
aTkxNSwgIiVzKCUjeCk9JSN4XG4iLCAiRE1BX0dVQ19XT1BDTV9PRkZTRVQiLAorCQkJIGk5MTVf
bW1pb19yZWdfb2Zmc2V0KERNQV9HVUNfV09QQ01fT0ZGU0VUKSwKKwkJCSBpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIERNQV9HVUNfV09QQ01fT0ZGU0VUKSk7CisJaTkxNV9wcm9iZV9lcnJvcihn
dC0+aTkxNSwgIiVzKCUjeCk9JSN4XG4iLCAiR1VDX1dPUENNX1NJWkUiLAorCQkJIGk5MTVfbW1p
b19yZWdfb2Zmc2V0KEdVQ19XT1BDTV9TSVpFKSwKKwkJCSBpbnRlbF91bmNvcmVfcmVhZCh1bmNv
cmUsIEdVQ19XT1BDTV9TSVpFKSk7CiAKIAlyZXR1cm4gZXJyOwogfQotLSAKMi4xOS4yCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
