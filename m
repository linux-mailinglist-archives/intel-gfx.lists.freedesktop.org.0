Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCC317FA8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 20:12:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2458994D;
	Wed,  8 May 2019 18:12:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64ADD8991C;
 Wed,  8 May 2019 18:12:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 11:12:45 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga006.jf.intel.com with ESMTP; 08 May 2019 11:12:41 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  9 May 2019 00:08:51 +0530
Message-Id: <1557340733-9629-12-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
References: <1557340733-9629-1-git-send-email-uma.shankar@intel.com>
Subject: [Intel-gfx] [v9 11/13] drm/i915: Added DRM Infoframe handling for
 BYT/CHT
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org,
 ville.syrjala@intel.com, maarten.lankhorst@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QllUL0NIVCBkb2Vzbid0IHN1cHBvcnQgRFJNIEluZm9mcmFtZS4gVGhpcyBjYXVzZWQKYSBXQVJO
X09OIGR1ZSB0byBhIG1pc3NpbmcgQ0FTRSB3aGlsZSBleGVjdXRpbmcKaW50ZWxfaGRtaV9pbmZv
ZnJhbWVzX2VuYWJsZWQgZnVuY3Rpb24uIFRoaXMgcGF0Y2gKZml4ZXMgdGhlIHNhbWUuCgpTaWdu
ZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1p
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKaW5kZXggZTU1OWE5NDAuLjIy
NGQzM2UgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKQEAgLTEyOSw2ICsxMjksOCBAQCBz
dGF0aWMgdTMyIGc0eF9pbmZvZnJhbWVfZW5hYmxlKHVuc2lnbmVkIGludCB0eXBlKQogCQlyZXR1
cm4gVklERU9fRElQX0VOQUJMRV9TUEQ7CiAJY2FzZSBIRE1JX0lORk9GUkFNRV9UWVBFX1ZFTkRP
UjoKIAkJcmV0dXJuIFZJREVPX0RJUF9FTkFCTEVfVkVORE9SOworCWNhc2UgSERNSV9JTkZPRlJB
TUVfVFlQRV9EUk06CisJCXJldHVybiAwOwogCWRlZmF1bHQ6CiAJCU1JU1NJTkdfQ0FTRSh0eXBl
KTsKIAkJcmV0dXJuIDA7Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
