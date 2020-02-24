Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B1B16B00B
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 20:13:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E4F2893D0;
	Mon, 24 Feb 2020 19:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D399C893D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Feb 2020 19:13:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 11:13:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; d="scan'208";a="255682377"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2020 11:13:02 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2020 11:12:58 -0800
Message-Id: <20200224191258.15668-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1608008084
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, ramlingam.c@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2FfMTYwODAwODA4NCBpcyBhbiBhZGRpdGlvbmFsIFdBIHRoYXQgYXBwbGllcyB0byB3cml0ZXMg
b24gRkZfTU9ERTIKcmVnaXN0ZXIuIFdlIGNhbid0IHJlYWQgaXQgYmFjayBlaXRoZXIgZnJvbSBD
UFUgb3IgR1BVLiBTaW5jZSB0aGUgb3RoZXIKYml0cyBzaG91bGQgYmUgMCwgcmVjb21tZW5kYXRp
b24gdG8gaGFuZGxlIFdhXzE2MDQ1NTU2MDcgaXMgdG8gYWN0dWFsbHkKanVzdCB3cml0ZSB0aGUg
dGltZXIgdmFsdWUuCgpEbyBhIHdyaXRlIG9ubHkgYW5kIGRvbid0IHRyeSB0byByZWFkIGl0LCBu
ZWl0aGVyIGJlZm9yZSBvciBhZnRlcgp0aGUgV0EgaXMgYXBwbGllZC4KCkZpeGVzOiBmZjY5MGIy
MTExYmEgKCJkcm0vaTkxNS90Z2w6IEltcGxlbWVudCBXYV8xNjA0NTU1NjA3IikKU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClJldmlld2Vk
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMTkgKysrKysrKy0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXgg
ODg3ZTBkYzcwMWY3Li4wNmNlZjNjMThmMjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtNTgwLDI0ICs1ODAsMTkgQEAgc3RhdGljIHZvaWQgaWNs
X2N0eF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIHN0
YXRpYyB2b2lkIHRnbF9jdHhfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsCiAJCQkJICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7Ci0JdTMyIHZh
bDsKLQogCS8qIFdhXzE0MDkxNDIyNTk6dGdsICovCiAJV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFf
Q09NTU9OX1NMSUNFX0NISUNLRU4zLAogCQkJICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xP
Ul9QSVBFKTsKIAotCS8qIFdhXzE2MDQ1NTU2MDc6dGdsICovCi0JdmFsID0gaW50ZWxfdW5jb3Jl
X3JlYWQoZW5naW5lLT51bmNvcmUsIEZGX01PREUyKTsKLQl2YWwgJj0gfkZGX01PREUyX1REU19U
SU1FUl9NQVNLOwotCXZhbCB8PSBGRl9NT0RFMl9URFNfVElNRVJfMTI4OwogCS8qCi0JICogRklY
TUU6IEZGX01PREUyIHJlZ2lzdGVyIGlzIG5vdCByZWFkYWJsZSB0aWxsIFRHTCBCMC4gV2UgY2Fu
Ci0JICogZW5hYmxlIHZlcmlmaWNhdGlvbiBvZiBXQSBmcm9tIHRoZSBsYXRlciBzdGVwcGluZ3Ms
IHdoaWNoIGVuYWJsZXMKLQkgKiB0aGUgcmVhZCBvZiBGRl9NT0RFMi4KKwkgKiBXYV8xNjA0NTU1
NjA3OmdlbjEyIGFuZCBXYV8xNjA4MDA4MDg0OmdlbjEyCisJICogRkZfTU9ERTIgcmVnaXN0ZXIg
d2lsbCByZXR1cm4gdGhlIHdyb25nIHZhbHVlIHdoZW4gcmVhZC4gVGhlIGRlZmF1bHQKKwkgKiB2
YWx1ZSBmb3IgdGhpcyByZWdpc3RlciBpcyB6ZXJvIGZvciBhbGwgZmllbGRzIGFuZCB0aGVyZSBh
cmUgbm8gYml0CisJICogbWFza3MuIFNvIGluc3RlYWQgb2YgZG9pbmcgYSBSTVcgd2Ugc2hvdWxk
IGp1c3Qgd3JpdGUgdGhlIFREUyB0aW1lcgorCSAqIHZhbHVlIGZvciBXYV8xNjA0NTU1NjA3Lgog
CSAqLwotCXdhX2FkZCh3YWwsIEZGX01PREUyLCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFs
LAotCSAgICAgICBJU19UR0xfUkVWSUQoZW5naW5lLT5pOTE1LCBUR0xfUkVWSURfQTAsIFRHTF9S
RVZJRF9BMCkgPyAwIDoKLQkJCSAgICBGRl9NT0RFMl9URFNfVElNRVJfTUFTSyk7CisJd2FfYWRk
KHdhbCwgRkZfTU9ERTIsIEZGX01PREUyX1REU19USU1FUl9NQVNLLAorCSAgICAgICBGRl9NT0RF
Ml9URFNfVElNRVJfMTI4LCAwKTsKIH0KIAogc3RhdGljIHZvaWQKLS0gCjIuMjQuMAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
