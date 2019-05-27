Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B82D2BA2F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 20:36:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A74189A34;
	Mon, 27 May 2019 18:36:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12E7789A1E
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 18:36:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 11:36:24 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga008.jf.intel.com with ESMTP; 27 May 2019 11:36:21 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RIaJD8007368; Mon, 27 May 2019 19:36:20 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 May 2019 18:35:57 +0000
Message-Id: <20190527183613.17076-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190527183613.17076-1-michal.wajdeczko@intel.com>
References: <20190527183613.17076-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 01/17] drm/i915/guc: Change platform default
 GuC mode
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

VG9kYXkgb3VyIG1vc3QgZGVzaXJlZCBHdUMgY29uZmlndXJhdGlvbiBpcyB0byBvbmx5IGVuYWJs
ZSBIdUMKaWYgaXQgaXMgYXZhaWxhYmxlIChhcyB3ZSBuZWVkIGF1dGhlbnRpY2F0ZWQgSHVDIGZp
cm13YXJlIHRvIGVuYWJsZQphbGwgbWVkaWEgY29kZWNzIG9uIHRoZSBoYXJkd2FyZSkgYW5kIHdl
IHJlYWxseSBkb24ndCBjYXJlIGFib3V0CmhhdmluZyBHdUMgc3VibWlzc2lvbiBlbmFibGVkLgoK
Q2hhbmdlIHBsYXRmb3JtIGRlZmF1bHQgR3VDIG1vZGUgdG8gbWF0Y2ggb3VyIGdvYWwsIGJ1dCBu
b3RlIHRoYXQKd2Ugc3RpbGwgZG9uJ3QgY2hhbmdlIGRlZmF1bHQgbW9kcGFyYW0gdmFsdWUgKEd1
Qy9IdUMgZGlzYWJsZWQpLgoKdjI6IGFkZCB3aHkgSHVDIGlzIHNvIGltcG9ydGFudCAoSm9vbmFz
KQoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBKb2huIFNwb3Rzd29vZCA8
am9obi5hLnNwb3Rzd29vZEBpbnRlbC5jb20+CkNjOiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5i
ZWxnYXVta2FyQGludGVsLmNvbT4KQ2M6IFRvbnkgWWUgPHRvbnkueWVAaW50ZWwuY29tPgpDYzog
QW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgpDYzogSmVmZiBNY2dl
ZSA8amVmZi5tY2dlZUBpbnRlbC5jb20+CkNjOiBBbnRvbmlvIEFyZ2Vuemlhbm8gPGFudG9uaW8u
YXJnZW56aWFub0BpbnRlbC5jb20+CkNjOiBTdWphcml0aGEgU3VuZGFyZXNhbiA8c3VqYXJpdGhh
LnN1bmRhcmVzYW5AaW50ZWwuY29tPgpBY2tlZC1ieTogVG9ueSBZZSA8dG9ueS55ZUBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBTdWphcml0aGEgU3VuZGFyZXNhbiA8c3VqYXJpdGhhLnN1bmRhcmVz
YW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGlu
ZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMg
fCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwppbmRleCA2M2ZjMTJjYmMyNWQuLjFhMjY1ZmJkOTVj
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCkBAIC01NywxMCArNTcsOCBAQCBzdGF0aWMgaW50
IF9fZ2V0X3BsYXRmb3JtX2VuYWJsZV9ndWMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
CiAJc3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncgPSAmaTkxNS0+aHVjLmZ3OwogCWludCBlbmFi
bGVfZ3VjID0gMDsKIAotCS8qIERlZmF1bHQgaXMgdG8gZW5hYmxlIEd1Qy9IdUMgaWYgd2Uga25v
dyB0aGVpciBmaXJtd2FyZXMgKi8KLQlpZiAoaW50ZWxfdWNfZndfaXNfc2VsZWN0ZWQoZ3VjX2Z3
KSkKLQkJZW5hYmxlX2d1YyB8PSBFTkFCTEVfR1VDX1NVQk1JU1NJT047Ci0JaWYgKGludGVsX3Vj
X2Z3X2lzX3NlbGVjdGVkKGh1Y19mdykpCisJLyogRGVmYXVsdCBpcyB0byB1c2UgSHVDIGlmIHdl
IGtub3cgR3VDIGFuZCBIdUMgZmlybXdhcmVzICovCisJaWYgKGludGVsX3VjX2Z3X2lzX3NlbGVj
dGVkKGd1Y19mdykgJiYgaW50ZWxfdWNfZndfaXNfc2VsZWN0ZWQoaHVjX2Z3KSkKIAkJZW5hYmxl
X2d1YyB8PSBFTkFCTEVfR1VDX0xPQURfSFVDOwogCiAJLyogQW55IHBsYXRmb3JtIHNwZWNpZmlj
IGZpbmUtdHVuaW5nIGNhbiBiZSBkb25lIGhlcmUgKi8KLS0gCjIuMTkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
