Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3B2D1CD86
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 19:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 258D889317;
	Tue, 14 May 2019 17:09:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D379D89317;
 Tue, 14 May 2019 17:09:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:09:52 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2019 10:09:49 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 14 May 2019 23:06:29 +0530
Message-Id: <1557855394-12214-8-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
References: <1557855394-12214-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v10 07/12] drm: Add HLG EOTF
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
Cc: dcastagna@chromium.org, jonas@kwiboo.se, seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFE
RCBITEcgRU9URiB0byB0aGUgbGlzdCBvZiBFT1RGIHRyYW5zZmVyIGZ1bmN0aW9ucyBzdXBwb3J0
ZWQuCkh5YnJpZCBMb2ctR2FtbWEgKEhMRykgaXMgYSBoaWdoIGR5bmFtaWMgcmFuZ2UgKEhEUikg
c3RhbmRhcmQuCkhMRyBkZWZpbmVzIGEgbm9ubGluZWFyIHRyYW5zZmVyIGZ1bmN0aW9uIGluIHdo
aWNoIHRoZSBsb3dlcgpoYWxmIG9mIHRoZSBzaWduYWwgdmFsdWVzIHVzZSBhIGdhbW1hIGN1cnZl
IGFuZCB0aGUgdXBwZXIgaGFsZgpvZiB0aGUgc2lnbmFsIHZhbHVlcyB1c2UgYSBsb2dhcml0aG1p
YyBjdXJ2ZS4KCnYyOiBSZWJhc2UKCnYzOiBGaXhlZCBhIHdhcm5pbmcgbWVzc2FnZQoKdjQ6IEFk
ZHJlc3NlZCBTaGFzaGFuaydzIHJldmlldyBjb21tZW50cwoKdjU6IEFkZHJlc3NlZCBKb25hcyBL
YXJsbWFuJ3MgcmV2aWV3IGNvbW1lbnQgYW5kIGRyb3BwZWQgdGhlIGk5MTUKdGFnIGZyb20gaGVh
ZGVyLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyB8IDMgKystCiBpbmNsdWRlL2xp
bnV4L2hkbWkuaCAgICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2VkaWQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCmluZGV4IDczYjc5MDUuLmJjNDYwNDEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZWRpZC5jCkBAIC0zODUxLDcgKzM4NTEsOCBAQCBzdGF0aWMgdWludDhfdCBlb3RmX3N1cHBv
cnRlZChjb25zdCB1OCAqZWRpZF9leHQpCiAJcmV0dXJuIGVkaWRfZXh0WzJdICYKIAkJKEJJVChI
RE1JX0VPVEZfVFJBRElUSU9OQUxfR0FNTUFfU0RSKSB8CiAJCSBCSVQoSERNSV9FT1RGX1RSQURJ
VElPTkFMX0dBTU1BX0hEUikgfAotCQkgQklUKEhETUlfRU9URl9TTVBURV9TVDIwODQpKTsKKwkJ
IEJJVChIRE1JX0VPVEZfU01QVEVfU1QyMDg0KSB8CisJCSBCSVQoSERNSV9FT1RGX0JUXzIxMDBf
SExHKSk7CiB9CiAKIHN0YXRpYyB1aW50OF90IGhkcl9tZXRhZGF0YV90eXBlKGNvbnN0IHU4ICpl
ZGlkX2V4dCkKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvaGRtaS5oIGIvaW5jbHVkZS9saW51
eC9oZG1pLmgKaW5kZXggN2VkYWZjZi4uM2Q3ZjEwZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51
eC9oZG1pLmgKKysrIGIvaW5jbHVkZS9saW51eC9oZG1pLmgKQEAgLTE2MSw2ICsxNjEsNyBAQCBl
bnVtIGhkbWlfZW90ZiB7CiAJSERNSV9FT1RGX1RSQURJVElPTkFMX0dBTU1BX1NEUiwKIAlIRE1J
X0VPVEZfVFJBRElUSU9OQUxfR0FNTUFfSERSLAogCUhETUlfRU9URl9TTVBURV9TVDIwODQsCisJ
SERNSV9FT1RGX0JUXzIxMDBfSExHLAogfTsKIAogc3RydWN0IGhkbWlfYXZpX2luZm9mcmFtZSB7
Ci0tIAoxLjkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
