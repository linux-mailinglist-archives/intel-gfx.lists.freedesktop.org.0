Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADC218A6B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 15:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84E489C55;
	Thu,  9 May 2019 13:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1D589C54;
 Thu,  9 May 2019 13:17:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 06:17:34 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 09 May 2019 06:17:33 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hOivU-0008CS-I6; Thu, 09 May 2019 21:17:32 +0800
Date: Thu, 9 May 2019 21:16:42 +0800
From: kbuild test robot <lkp@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20190509131642.GA28619@lkp-kbuild06>
References: <201905092112.GI4n4yfx%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905092112.GI4n4yfx%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Intel-gfx] [RFC PATCH drm-intel] drm: drm_hdcp_request_srm() can
 be static
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 kbuild-all@01.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CkZpeGVzOiA2NDk4YmY1ODAwYTMgKCJkcm06IHJldm9jYXRpb24gY2hlY2sgYXQgZHJtIHN1YnN5
c3RlbSIpClNpZ25lZC1vZmYtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgot
LS0KIGRybV9oZGNwLmMgfCAgICAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2hkY3AuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jCmluZGV4IDVlNTQwOTUuLmRjMGJlYjMgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faGRjcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1faGRjcC5jCkBAIC0yMzIsNyArMjMyLDcgQEAgc3RhdGljIHZvaWQgZHJtX2hkY3Bfc3JtX3Vw
ZGF0ZShjb25zdCB1OCAqYnVmLCBzaXplX3QgY291bnQpCiAJCWRybV9oZGNwX3BhcnNlX2hkY3Ay
X3NybShidWYsIGNvdW50KTsKIH0KIAotdm9pZCBkcm1faGRjcF9yZXF1ZXN0X3NybShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZHJtX2RldikKK3N0YXRpYyB2b2lkIGRybV9oZGNwX3JlcXVlc3Rfc3JtKHN0
cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2KQogewogCWNoYXIgZndfbmFtZVszNl0gPSAiZGlzcGxh
eV9oZGNwX3NybS5iaW4iOwogCWNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqZnc7Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
