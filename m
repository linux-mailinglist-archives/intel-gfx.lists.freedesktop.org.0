Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C15BB148CE7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 18:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF6972B4B;
	Fri, 24 Jan 2020 17:26:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3371772B4D
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 17:26:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 09:26:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="222674443"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jan 2020 09:26:35 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jan 2020 19:23:01 +0200
Message-Id: <20200124172301.16484-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3] drm/i915: Fix inconsistance between
 pfit.enable and scaler freeing
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGVzcGl0ZSB0aGF0IGR1cmluZyBodyByZWFkb3V0IHdlIHNlZW0gdG8gaGF2ZSBzY2FsZXJzIGFz
c2lnbmVkCnRvIHBpcGVzLCB0aGVuIGNhbGwgYXRvbWljX3NldHVwX3NjYWxlcnMsIGF0IHRoZSBj
b21taXQgc3RhZ2UgaW4Kc2tsX3VwZGF0ZV9zY2FsZXIgdGhlcmUgaXMgYSBjaGVjaywgdGhhdCBp
ZiB3ZSBoYXZlIGZiIHNyYyBhbmQKZGVzdCBvZiBzYW1lIHNpemUsIHdlIHN0YWdlIGZyZWVpbmcg
b2YgdGhhdCBzY2FsZXIuCgpIb3dldmVyIHdlIGRvbid0IHVwZGF0ZSBwZml0LmVuYWJsZWQgZmxh
ZyB0aGVuLCB3aGljaCBtYWtlcwp0aGUgc3RhdGUgaW5jb25zaXN0ZW50LCB3aGljaCBpbiB0dXJu
IHRyaWdnZXJzIGEgV0FSTl9PTgppbiBza2xfcGZpdF9lbmFibGUsIGJlY2F1c2Ugd2UgaGF2ZSBw
Zml0IGVuYWJsZWQsCmJ1dCBubyBhc3NpZ25lZCBzY2FsZXIuCgpUbyBtZSB0aGlzIGxvb2tzIHdl
aXJkIHRoYXQgd2Uga2luZCBvZiBkbyB0aGUgZGVjaXNpb24KdG8gdXNlIG9yIG5vdCB1c2UgdGhl
IHNjYWxlciBhdCBza2xfdXBkYXRlX3NjYWxlciBzdGFnZQpidXQgbm90IGluIGludGVsX2F0b21p
Y19zZXR1cF9zY2FsZXJzLCBtb3Jlb3Zlcgpub3QgdXBkYXRpbmcgdGhlIHdob2xlIHN0YXRlIGNv
bnNpc3RlbnRseS4KClRoaXMgZml4IGlzIHRvIG5vdCBmcmVlIHRoZSBzY2FsZXIgaWYgd2UgaGF2
ZSBwZml0LmVuYWJsZWQKZmxhZyBzZXQsIHNvIHRoYXQgdGhlIHN0YXRlIGlzIG5vdyBjb25zaXN0
ZW50CmFuZCB0aGUgd2FybmluZ3MgYXJlIGdvbmUuCgp2MjogLSBQdXQgcGZpdC5lbmFibGUgY2hl
Y2sgaW50byBjcnRjIHNwZWNpZmljIHBsYWNlCiAgICAgIChWaWxsZSBTeXJqw6Rsw6QpCgpCdWd6
aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC9pc3N1ZXMvNTc3
ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4
IDU3NjhjZmNmNzFjNC4uY2QyNDJkOTFhOTI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtNjAzNyw3ICs2MDM3LDggQEAgaW50IHNrbF91cGRh
dGVfc2NhbGVyX2NydGMoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnN0YXRlKQogCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0gJnN0YXRlLT5ody5hZGp1c3Rl
ZF9tb2RlOwogCWJvb2wgbmVlZF9zY2FsZXIgPSBmYWxzZTsKIAotCWlmIChzdGF0ZS0+b3V0cHV0
X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwKQorCWlmIChzdGF0ZS0+b3V0
cHV0X2Zvcm1hdCA9PSBJTlRFTF9PVVRQVVRfRk9STUFUX1lDQkNSNDIwIHx8CisJICAgIHN0YXRl
LT5wY2hfcGZpdC5lbmFibGVkKQogCQluZWVkX3NjYWxlciA9IHRydWU7CiAKIAlyZXR1cm4gc2ts
X3VwZGF0ZV9zY2FsZXIoc3RhdGUsICFzdGF0ZS0+aHcuYWN0aXZlLCBTS0xfQ1JUQ19JTkRFWCwK
LS0gCjIuMjQuMS40ODUuZ2FkMDVhM2Q4ZTUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
