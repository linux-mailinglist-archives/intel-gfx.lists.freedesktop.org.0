Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C11183A5F10
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 11:22:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C8D589D99;
	Mon, 14 Jun 2021 09:22:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3B689D7C;
 Mon, 14 Jun 2021 09:22:46 +0000 (UTC)
IronPort-SDR: wr0fOOcYSItQl30/QwfmGIMxyNA8evWSrqChBgL3aHRAin4AqWjLYB9Lo6DS8CU5ytMQRCZkyp
 +XUU1G0BNPfg==
X-IronPort-AV: E=McAfee;i="6200,9189,10014"; a="203951066"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="203951066"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:22:45 -0700
IronPort-SDR: LGdL2WJWiMGi8tfogDPnOidkW/PIhK9wmi5QYs+UVC8cC2mQU1rBs2hTADiiS32iYBFItAZ57T
 nFE0dTj/Um1w==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="403835129"
Received: from chanily-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.31.39])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 02:22:43 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Jun 2021 10:22:27 +0100
Message-Id: <20210614092227.97421-1-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: allow DG1 autoprobe for CONFIG_BROKEN
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVyZWx5IGZvciBDSSBzbyB3ZSBjYW4gZ2V0IHNvbWUgcHJlLW1lcmdlIHJlc3VsdHMgZm9yIERH
MS4gVGhpcyBpcwplc3BlY2lhbGx5IHVzZWZ1bCBmb3IgY3Jvc3MgZHJpdmVyIFRUTSBjaGFuZ2Vz
IHdoZXJlIENJIGNhbiBob3BlZnVsbHkKY2F0Y2ggcmVncmVzc2lvbnMuIFRoaXMgaXMgc2ltaWxh
ciB0byBob3cgd2UgYWxyZWFkeSBoYW5kbGUgdGhlIERHMQpzcGVjaWZpYyB1QVBJLCB3aGljaCBh
cmUgYWxzbyBoaWRkZW4gYmVoaW5kIENPTkZJR19CUk9LRU4uCgpTaWduZWQtb2ZmLWJ5OiBNYXR0
aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5p
ZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAzICsrKwogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IDgzYjUwMGJi
MTcwYy4uNzg3NDIxNTdhYWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTEwNDAsNiAr
MTA0MCw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCBwY2lpZGxpc3RbXSA9
IHsKIAlJTlRFTF9SS0xfSURTKCZya2xfaW5mbyksCiAJSU5URUxfQURMU19JRFMoJmFkbF9zX2lu
Zm8pLAogCUlOVEVMX0FETFBfSURTKCZhZGxfcF9pbmZvKSwKKyNpZiBJU19FTkFCTEVEKENPTkZJ
R19EUk1fSTkxNV9VTlNUQUJMRV9GQUtFX0xNRU0pCisJSU5URUxfREcxX0lEUygmZGcxX2luZm8p
LAorI2VuZGlmCiAJezAsIDAsIDB9CiB9OwogTU9EVUxFX0RFVklDRV9UQUJMRShwY2ksIHBjaWlk
bGlzdCk7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
