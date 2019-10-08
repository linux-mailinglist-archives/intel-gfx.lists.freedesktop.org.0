Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B25FCF607
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 11:29:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 731066E130;
	Tue,  8 Oct 2019 09:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E9E6E130
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 09:29:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 02:29:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,270,1566889200"; d="scan'208";a="344989679"
Received: from akaras-dev.fi.intel.com ([10.237.72.61])
 by orsmga004.jf.intel.com with ESMTP; 08 Oct 2019 02:29:38 -0700
From: Anna Karas <anna.karas@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 12:28:49 +0300
Message-Id: <20191008092849.6511-1-anna.karas@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923125640.22321-1-anna.karas@intel.com>
References: <20190923125640.22321-1-anna.karas@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915: Describe structure member in
 documentation
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGRlc2NyaXB0aW9uIG9mIHdha2VyZWYgbWVtYmVyIG9mIGludGVsX3NoYXJlZF9kcGxsCnN0
cnVjdHVyZSB0byBkb2N1bWVudGF0aW9uLgoKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgpDYzogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbm5hIEthcmFzIDxhbm5hLmthcmFzQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmggfCA1ICsr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oCmluZGV4IGU3NTg4Nzk5ZmNlNS4uY2E5OTky
ZmQ4NDI3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5oCkBAIC0zMzcsNiArMzM3LDExIEBAIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCB7CiAJICog
QGluZm86IHBsYXRmb3JtIHNwZWNpZmljIGluZm8KIAkgKi8KIAljb25zdCBzdHJ1Y3QgZHBsbF9p
bmZvICppbmZvOworCisJLyoqCisJICogQHdha2VyZWY6IEluIHNvbWUgcGxhdGZvcm1zIGEgZGV2
aWNlLWxldmVsIHJ1bnRpbWUgcG0gcmVmZXJlbmNlIG1heQorCSAqIG5lZWQgdG8gYmUgZ3JhYmJl
ZCB0byBkaXNhYmxlIERDIHN0YXRlcyB3aGlsZSB0aGlzIERQTEwgaXMgZW5hYmxlZAorCSAqLwog
CWludGVsX3dha2VyZWZfdCB3YWtlcmVmOwogfTsKIAotLSAKMi4xOS4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
