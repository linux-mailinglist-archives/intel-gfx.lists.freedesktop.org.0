Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7649115C00C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 15:07:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D32DC6E301;
	Thu, 13 Feb 2020 14:07:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AAA16E301
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2020 14:07:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 06:07:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,436,1574150400"; d="scan'208";a="228151095"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 13 Feb 2020 06:07:25 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Feb 2020 16:04:09 +0200
Message-Id: <20200213140412.32697-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v1 0/3] Fix modeset transitions related to DBuf
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlcmUgYXJlIHRocmVlIGV4aXN0aW5nIGlzc3VlcywgY2F1c2luZyBwb3NzaWJsZSBzY3JlZW4K
Y29ycnVwdGlvbnMsIGJlaW5nIGFkZHJlc3NlZCB3aXRoIHRob3NlIHBhdGNoIHNlcmllcy4KVGhl
eSBzaG91bGQgZ28gaGFuZCBpbiBoYW5kLCBvdGhlcndpc2UgbWFnaWMgaXMgbm90IHdvcmtpbmcu
CgpKYW5pIE5pa3VsYSAoMSk6CiAgZHJtL2k5MTUvZHNjOiBmb3JjZSBmdWxsIG1vZGVzZXQgd2hl
bmV2ZXIgRFNDIGlzIGVuYWJsZWQgYXQgcHJvYmUKClN0YW5pc2xhdiBMaXNvdnNraXkgKDEpOgog
IGRybS9pOTE1OiBFbnN1cmUgbm8gY29uZmxpY3RzIHdpdGggQklPUyB3aGVuIHVwZGF0aW5nIERi
dWYKClZpbGxlIFN5cmrDpGzDpCAoMSk6CiAgZHJtL2k5MTU6IEZvcmNlIHN0YXRlLT5tb2Rlc2V0
PXRydWUgd2hlbiBkaXN0cnVzdF9iaW9zX3dtPT10cnVlCgogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgMzIgKysrKysrKysrKysrKysrKysrKwogLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDYgKystLQogMiBmaWxl
cyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKLS0gCjIuMjQuMS40
ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
