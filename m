Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17E6364FA0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 02:39:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3D7289C89;
	Thu, 11 Jul 2019 00:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF59689C2C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 00:38:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 17:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,476,1557212400"; d="scan'208";a="193232406"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 17:38:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:38:33 -0700
Message-Id: <20190711003833.17420-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711003833.17420-1-lucas.demarchi@intel.com>
References: <20190711003833.17420-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 21/21] drm/i915/tgl: Update DPLL clock reference
 register
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUaGlz
IHJlZ2lzdGVyIGRlZmluaXRpb24gY2hhbmdlZCBmcm9tIElDTCBhbmQgaGFzIG5vdyBhbm90aGVy
IG1lYW5pbmcuClVzZSB0aGUgcmlnaHQgYml0cyBvbiBUR0wuCgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpMaW5rOiBodHRw
czovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3MDgyMzE2Mjku
OTI5Ni0yNi1sdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCA4ICsrKysrKy0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAgICAgfCAxICsKIDIgZmlsZXMgY2hhbmdlZCwgNyBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwppbmRleCBjZjVmNjkwOWJhOWMuLjA1ZTk5ODZlMzkyZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwpAQCAt
MjYwMSw4ICsyNjAxLDEyIEBAIHN0YXRpYyBib29sIGljbF9jYWxjX2RwbGxfc3RhdGUoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJY2ZnY3IxID0gRFBMTF9DRkdDUjFfUURJ
Vl9SQVRJTyhwbGxfcGFyYW1zLnFkaXZfcmF0aW8pIHwKIAkJIERQTExfQ0ZHQ1IxX1FESVZfTU9E
RShwbGxfcGFyYW1zLnFkaXZfbW9kZSkgfAogCQkgRFBMTF9DRkdDUjFfS0RJVihwbGxfcGFyYW1z
LmtkaXYpIHwKLQkJIERQTExfQ0ZHQ1IxX1BESVYocGxsX3BhcmFtcy5wZGl2KSB8Ci0JCSBEUExM
X0NGR0NSMV9DRU5UUkFMX0ZSRVFfODQwMDsKKwkJIERQTExfQ0ZHQ1IxX1BESVYocGxsX3BhcmFt
cy5wZGl2KTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQljZmdjcjEgfD0g
VEdMX0RQTExfQ0ZHQ1IxX0NGU0VMT1ZSRF9OT1JNQUxfWFRBTDsKKwllbHNlCisJCWNmZ2NyMSB8
PSBEUExMX0NGR0NSMV9DRU5UUkFMX0ZSRVFfODQwMDsKIAogCW1lbXNldChwbGxfc3RhdGUsIDAs
IHNpemVvZigqcGxsX3N0YXRlKSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQyOTBh
NmRiMmExNC4uMGRlM2RhOGU4OWI1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTk5NDAs
NiArOTk0MCw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewogI2RlZmluZSAgRFBMTF9DRkdDUjFf
UERJVl83CQkoOCA8PCAyKQogI2RlZmluZSAgRFBMTF9DRkdDUjFfQ0VOVFJBTF9GUkVRCSgzIDw8
IDApCiAjZGVmaW5lICBEUExMX0NGR0NSMV9DRU5UUkFMX0ZSRVFfODQwMAkoMyA8PCAwKQorI2Rl
ZmluZSAgVEdMX0RQTExfQ0ZHQ1IxX0NGU0VMT1ZSRF9OT1JNQUxfWFRBTAkoMCA8PCAwKQogI2Rl
ZmluZSBDTkxfRFBMTF9DRkdDUjEocGxsKQkJX01NSU9fUExMKHBsbCwgX0NOTF9EUExMMF9DRkdD
UjEsIF9DTkxfRFBMTDFfQ0ZHQ1IxKQogCiAjZGVmaW5lIF9JQ0xfRFBMTDBfQ0ZHQ1IwCQkweDE2
NDAwMAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
