Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1A81580E3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 18:11:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D25DE6ECF8;
	Mon, 10 Feb 2020 17:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A5D46ECF7;
 Mon, 10 Feb 2020 17:10:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 09:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="233168274"
Received: from helsinki.fi.intel.com ([10.237.66.159])
 by orsmga003.jf.intel.com with ESMTP; 10 Feb 2020 09:10:49 -0800
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Feb 2020 19:10:17 +0200
Message-Id: <20200210171021.109684-15-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210171021.109684-1-gwan-gyeong.mun@intel.com>
References: <20200210171021.109684-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 14/18] drm/i915: Fix enabled infoframe states
 of lspcon
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
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tcGFyZWQgdG8gaW1wbGVtZW50YXRpb24gb2YgRFAgYW5kIEhETUkncyBlbmNvZGVyLT5pbmZv
ZnJhbWVzX2VuYWJsZWQsCnRoZSBsc3Bjb24ncyBpbXBsZW1lbnRhdGlvbiByZXR1cm5zIGl0cyBh
Y3RpdmUgc3RhdGUuICh3ZSBleHBlY3QgZW5hYmxlZAppbmZvZnJhbWUgc3RhdGVzIG9mIEhXLikg
SXQgbGVhZHMgdG8gcGlwZSBzdGF0ZSBtaXNtYXRjaCBlcnJvcgp3aGVuIGRkaV9nZXRfY29uZmln
IGlzIGNhbGxlZC4KCkJlY2F1c2UgdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gb2YgbHNwY29u
IGlzIG5vdCByZWFkeSB0byBzdXBwb3J0CnJlYWRvdXQgaW5mb2ZyYW1lcywgd2UgbmVlZCB0byBy
ZXR1cm4gMCBoZXJlLgoKSW4gb3JkZXIgdG8gc3VwcG9ydCByZWFkb3V0IHRvIGxzcGNvbiwgd2Ug
bmVlZCB0byBpbXBsZW1lbnQgcmVhZF9pbmZvZnJhbWUKYW5kIGluZm9mcmFtZXNfZW5hYmxlZC4g
QW5kIHNldF9pbmZvZnJhbWVzIGFsc28gaGF2ZSB0byBzZXQgYW4gYXBwcm9wcmlhdGUKYml0IG9u
IGNydGNfc3RhdGUtPmluZm9mcmFtZXMuZW5hYmxlCgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVu
IDxnd2FuLWd5ZW9uZy5tdW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfbHNwY29uLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2xzcGNvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9s
c3Bjb24uYwppbmRleCBkODA3YzU2NDhjODcuLjZmZjdiMjI2ZjBhMSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2xzcGNvbi5jCkBAIC01MjIsNyArNTIyLDcgQEAgdTMy
IGxzcGNvbl9pbmZvZnJhbWVzX2VuYWJsZWQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
CiAJCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcpCiB7
CiAJLyogRklYTUUgYWN0dWFsbHkgcmVhZCB0aGlzIGZyb20gdGhlIGh3ICovCi0JcmV0dXJuIGVu
Y190b19pbnRlbF9sc3Bjb24oZW5jb2RlciktPmFjdGl2ZTsKKwlyZXR1cm4gMDsKIH0KIAogdm9p
ZCBsc3Bjb25fcmVzdW1lKHN0cnVjdCBpbnRlbF9sc3Bjb24gKmxzcGNvbikKLS0gCjIuMjUuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
