Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EC325D7F4
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 13:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060EC6EB55;
	Fri,  4 Sep 2020 11:54:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FA266EB53;
 Fri,  4 Sep 2020 11:54:11 +0000 (UTC)
IronPort-SDR: UZpvYmkLfBnA8C2ByKDeDCUMLWUSOC6Y610duwPAkQ07bb2+T9FuFHBcQcLrhiubCfZ3lv3qIf
 bFD9UwjM6mgg==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="221938801"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="221938801"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 04:54:10 -0700
IronPort-SDR: grQP17JTLt1lyYsOPrmGcRg2XgSka+IKvneovNefDeUN43h/Nwhj4Dh58Dl7bQboRIJNNDopYg
 e74HiayemTcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="334860390"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Sep 2020 04:54:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Sep 2020 14:54:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  4 Sep 2020 14:53:40 +0300
Message-Id: <20200904115354.25336-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200904115354.25336-1-ville.syrjala@linux.intel.com>
References: <20200904115354.25336-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/18] drm/dp: Define more downstream facing
 port caps
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk91
ciBkZWZpbml0aW9ucyBmb3IgdGhlIERQQ0QgREZQIGNhcGFiaWxpdGllcyBhcmUgbGFja2luZy4K
QWRkIHRoZSBtaXNzaW5nIGJpdHMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxw
ZXIuaCB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNs
dWRlL2RybS9kcm1fZHBfaGVscGVyLmgKaW5kZXggMTdkMzJkNzYzMmI2Li44NjQ2MWE0MDA2NmIg
MTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaAorKysgYi9pbmNsdWRlL2Ry
bS9kcm1fZHBfaGVscGVyLmgKQEAgLTM4NiwxMiArMzg2LDE4IEBACiAjIGRlZmluZSBEUF9EU19Q
T1JUX1RZUEVfV0lSRUxFU1MgICAgICAgICAgIDYKICMgZGVmaW5lIERQX0RTX1BPUlRfSFBECQkJ
ICAgICgxIDw8IDMpCiAvKiBvZmZzZXQgMSBmb3IgVkdBIGlzIG1heGltdW0gbWVnYXBpeGVscyBw
ZXIgc2Vjb25kIC8gOCAqLwotLyogb2Zmc2V0IDIgKi8KKy8qIG9mZnNldCAxIGZvciBEVkkvSERN
SSBpcyBtYXhpbXVtIFRNRFMgY2xvY2sgaW4gTWJwcyAvIDIuNSAqLworLyogb2Zmc2V0IDIgZm9y
IFZHQS9EVkkvSERNSSAqLwogIyBkZWZpbmUgRFBfRFNfTUFYX0JQQ19NQVNLCSAgICAgICAgICAg
ICgzIDw8IDApCiAjIGRlZmluZSBEUF9EU184QlBDCQkgICAgICAgICAgICAwCiAjIGRlZmluZSBE
UF9EU18xMEJQQwkJICAgICAgICAgICAgMQogIyBkZWZpbmUgRFBfRFNfMTJCUEMJCSAgICAgICAg
ICAgIDIKICMgZGVmaW5lIERQX0RTXzE2QlBDCQkgICAgICAgICAgICAzCisvKiBvZmZzZXQgMyBm
b3IgRFZJICovCisjIGRlZmluZSBEUF9EU19EVklfRFVBTF9MSU5LCQkgICAgKDEgPDwgMSkKKyMg
ZGVmaW5lIERQX0RTX0RWSV9ISUdIX0NPTE9SX0RFUFRICSAgICAoMSA8PCAyKQorLyogb2Zmc2V0
IDMgZm9yIEhETUkgKi8KKyMgZGVmaW5lIERQX0RTX0hETUlfRlJBTUVfU0VRX1RPX0ZSQU1FX1BB
Q0sgKDEgPDwgMCkKIAogI2RlZmluZSBEUF9NQVhfRE9XTlNUUkVBTV9QT1JUUwkJICAgIDB4MTAK
IAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
