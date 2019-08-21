Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4190397AD8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 15:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24F596E943;
	Wed, 21 Aug 2019 13:32:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E4616E3DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 13:32:26 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 15:32:21 +0200
Message-Id: <20190821133221.29456-11-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
References: <20190821133221.29456-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/10] drm/i915: Move FEC enable timeout wait to
 enable_ddi_dp
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

RXZlbiB3aXRob3V0IGJpZ2pvaW5lciBJIGdldCBhIHRpbWVvdXQgd2hlbiBlbmFibGluZyBGRUMs
IHRoZSBsZW5ndGggb2YgdGhlIHRpbWVvdXQKZG9lc24ndCBtYXR0ZXIsIHN0aWxsIGhhcHBlbnMg
d2l0aCAxMHMgdGltZW91dC4KCkl0IHNlZW1zIHRoYXQgRFAtTVNUIHdhaXRzIGZvciBBQ1QgaW4g
ZW5hYmxlX2RwKCkgc28gd2UKY291bGQgcG9zdHBvbmUgaXQgaW4gbm9ybWFsIGJyaW5ndXAgaW4g
YSBzaW1pbGFyIHdheSwganVzdCB0byBiZSBzdXJlLgoKU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggODEyMDViNzVkYTc4Li5hODgzNDg0NjRmZmQg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMzEzOCwxMCAr
MzEzOCw2IEBAIHN0YXRpYyB2b2lkIGludGVsX2RkaV9lbmFibGVfZmVjKHN0cnVjdCBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAogCXZhbCA9IEk5MTVfUkVBRChEUF9UUF9DVEwocG9ydCkpOwogCXZh
bCB8PSBEUF9UUF9DVExfRkVDX0VOQUJMRTsKIAlJOTE1X1dSSVRFKERQX1RQX0NUTChwb3J0KSwg
dmFsKTsKLQotCWlmIChpbnRlbF9kZV93YWl0X2Zvcl9zZXQoZGV2X3ByaXYsIERQX1RQX1NUQVRV
Uyhwb3J0KSwKLQkJCQkgIERQX1RQX1NUQVRVU19GRUNfRU5BQkxFX0xJVkUsIDEpKQotCQlEUk1f
RVJST1IoIlRpbWVkIG91dCB3YWl0aW5nIGZvciBGRUMgRW5hYmxlIFN0YXR1c1xuIik7CiB9CiAK
IHN0YXRpYyB2b2lkIGludGVsX2RkaV9kaXNhYmxlX2ZlY19zdGF0ZShzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlciwKQEAgLTM0NzMsNiArMzQ2OSwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9l
bmFibGVfZGRpX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWlmIChwb3J0ID09
IFBPUlRfQSAmJiBJTlRFTF9HRU4oZGV2X3ByaXYpIDwgOSkKIAkJaW50ZWxfZHBfc3RvcF9saW5r
X3RyYWluKGludGVsX2RwKTsKIAorCWlmIChjcnRjX3N0YXRlLT5mZWNfZW5hYmxlICYmCisJICAg
IGludGVsX2RlX3dhaXRfZm9yX3NldChkZXZfcHJpdiwgRFBfVFBfU1RBVFVTKHBvcnQpLAorCQkJ
CSAgRFBfVFBfU1RBVFVTX0ZFQ19FTkFCTEVfTElWRSwgMSkpCisJCURSTV9FUlJPUigiVGltZWQg
b3V0IHdhaXRpbmcgZm9yIEZFQyBFbmFibGUgU3RhdHVzXG4iKTsKKwogCWludGVsX2VkcF9iYWNr
bGlnaHRfb24oY3J0Y19zdGF0ZSwgY29ubl9zdGF0ZSk7CiAJaW50ZWxfcHNyX2VuYWJsZShpbnRl
bF9kcCwgY3J0Y19zdGF0ZSk7CiAJaW50ZWxfZHBfeWNiY3JfNDIwX2VuYWJsZShpbnRlbF9kcCwg
Y3J0Y19zdGF0ZSk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
