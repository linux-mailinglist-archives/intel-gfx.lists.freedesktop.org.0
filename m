Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 479BFA030D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 15:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A5E189A7A;
	Wed, 28 Aug 2019 13:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2EFE89A7A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 13:22:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 06:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="356110318"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 28 Aug 2019 06:22:12 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 06:22:12 -0700
Received: from BGSMSX108.gar.corp.intel.com (10.223.4.192) by
 FMSMSX161.amr.corp.intel.com (10.18.125.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 06:22:12 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX108.gar.corp.intel.com ([169.254.8.151]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 18:52:09 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 01/10] drm/i915/display: Add func to get gamma bit
 precision
Thread-Index: AQHVW9ihTVjwgnv4rkuWGdVKlc2Np6cQjqcQ
Date: Wed, 28 Aug 2019 13:22:08 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D377A@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-2-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-2-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzZkOWY1ZjUtMzc0ZC00ZjdhLWIxNDktZTY1ZGI3Yjk5M2VlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid0drNlNobDVsNjV4VHpWNGJOR3g3VGdUbVk5ZlczTzU5cDhtUE5nbHJ4aCs0bnpwNk9sWm45SHRMKzlBZVBMNyJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 01/10] drm/i915/display: Add func to get
 gamma bit precision
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFNoYXJtYSwgU3dhdGkyCj5TZW50
OiBNb25kYXksIEF1Z3VzdCAyNiwgMjAxOSAxMTo1NiBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47
IFNoYXJtYSwgU2hhc2hhbmsKPjxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPjsgTWFubmEsIEFu
aW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsKPk5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g7Cj52aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5j
b20+OyBTaGFybWEsCj5Td2F0aTIgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+U3ViamVjdDog
W3Y4XVtQQVRDSCAwMS8xMF0gZHJtL2k5MTUvZGlzcGxheTogQWRkIGZ1bmMgdG8gZ2V0IGdhbW1h
IGJpdCBwcmVjaXNpb24KPgo+RWFjaCBwbGF0Zm9ybSBzdXBwb3J0cyBkaWZmZXJlbnQgZ2FtbWEg
bW9kZXMgYW5kIGVhY2ggZ2FtbWEgbW9kZSBoYXMgZGlmZmVyZW50Cj5iaXQgcHJlY2lzaW9uLiBB
ZGQgZnVuYy9wbGF0Zm9ybSB0byBnZXQgYml0IHByZWNpc2lvbiBjb3JyZXNwb25kaW5nIHRvIGdh
bW1hIG1vZGUuCgpJIHRoaW5rIGl0IHdvdWxkIGJlIGdvb2QgdG8gYWRkIHNvbWUgZXhwbGFuYXRp
b24gYXMgdG8gd2h5IHRoaXMgaXMgbmVlZGVkLgpBbHNvIHdoYXQgYWxsIHBsYXRmb3JtcyBhcmUg
c3VwcG9ydGVkIGJ5IHRoaXMgY3VycmVudGx5LiAKCj5TaWduZWQtb2ZmLWJ5OiBTd2F0aSBTaGFy
bWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgo+LS0tCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNzkgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj5kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmggfCAgMSArCj4gMiBm
aWxlcyBjaGFuZ2VkLCA4MCBpbnNlcnRpb25zKCspCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jCj5pbmRleCA3MWEwMjAxLi5kMmMxMjk3IDEwMDY0NAo+LS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jCj4rKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMKPkBAIC0xMzcxLDYgKzEzNzEs
ODUgQEAgc3RhdGljIGludCBpY2xfY29sb3JfY2hlY2soc3RydWN0IGludGVsX2NydGNfc3RhdGUK
PipjcnRjX3N0YXRlKQo+IAlyZXR1cm4gMDsKPiB9Cj4KPitzdGF0aWMgaW50IGk5eHhfZ2FtbWFf
cHJlY2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4rKmNydGNfc3RhdGUpIHsK
PisJaWYgKCFjcnRjX3N0YXRlLT5nYW1tYV9lbmFibGUpCj4rCQlyZXR1cm4gMDsKPisKPisJc3dp
dGNoIChjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKSB7Cj4rCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzhC
SVQ6Cj4rCQlyZXR1cm4gODsKPisJY2FzZSBHQU1NQV9NT0RFX01PREVfMTBCSVQ6Cj4rCQlyZXR1
cm4gMTY7Cj4rCWRlZmF1bHQ6Cj4rCQlNSVNTSU5HX0NBU0UoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9k
ZSk7Cj4rCQlyZXR1cm4gMDsKPisJfQo+K30KPisKPitzdGF0aWMgaW50IGNodl9nYW1tYV9wcmVj
aXNpb24oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUKPisqY3J0Y19zdGF0ZSkgewo+Kwlp
ZiAoY3J0Y19zdGF0ZS0+Y2dtX21vZGUgJiBDR01fUElQRV9NT0RFX0dBTU1BKQo+KwkJcmV0dXJu
IDEwOwo+KwllbHNlCj4rCQlyZXR1cm4gaTl4eF9nYW1tYV9wcmVjaXNpb24oY3J0Y19zdGF0ZSk7
IH0KPisKPitzdGF0aWMgaW50IGdsa19nYW1tYV9wcmVjaXNpb24oY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUKPisqY3J0Y19zdGF0ZSkgewo+KwlpZiAoIWNydGNfc3RhdGUtPmdhbW1hX2Vu
YWJsZSkKPisJCXJldHVybiAwOwo+Kwo+Kwlzd2l0Y2ggKGNydGNfc3RhdGUtPmdhbW1hX21vZGUp
IHsKPisJY2FzZSBHQU1NQV9NT0RFX01PREVfOEJJVDoKPisJCXJldHVybiA4Owo+KwljYXNlIEdB
TU1BX01PREVfTU9ERV8xMEJJVDoKPisJCXJldHVybiAxMDsKPisJZGVmYXVsdDoKPisJCU1JU1NJ
TkdfQ0FTRShjcnRjX3N0YXRlLT5nYW1tYV9tb2RlKTsKPisJCXJldHVybiAwOwo+Kwl9Cj4rfQo+
Kwo+K3N0YXRpYyBpbnQgaWxrX2dhbW1hX3ByZWNpc2lvbihjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQo+KypjcnRjX3N0YXRlKSB7Cj4rCWlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfZW5hYmxl
KQo+KwkJcmV0dXJuIDA7Cj4rCj4rCWlmICgoY3J0Y19zdGF0ZS0+Y3NjX21vZGUgJiBDU0NfUE9T
SVRJT05fQkVGT1JFX0dBTU1BKSA9PSAwKQo+KwkJcmV0dXJuIDA7Cj4rCj4rCXN3aXRjaCAoY3J0
Y19zdGF0ZS0+Z2FtbWFfbW9kZSkgewo+KwljYXNlIEdBTU1BX01PREVfTU9ERV84QklUOgo+KwkJ
cmV0dXJuIDg7Cj4rCWNhc2UgR0FNTUFfTU9ERV9NT0RFXzEwQklUOgo+KwkJcmV0dXJuIDEwOwo+
KwlkZWZhdWx0Ogo+KwkJTUlTU0lOR19DQVNFKGNydGNfc3RhdGUtPmdhbW1hX21vZGUpOwo+KwkJ
cmV0dXJuIDA7Cj4rCX0KPit9Cj4rCj4raW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJl
Y2lzaW9uKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4rKmNydGNfc3RhdGUpIHsKPisJ
c3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNydGNfc3RhdGUtPmJhc2Uu
Y3J0Yyk7Cj4rCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0
Yy0+YmFzZS5kZXYpOwo+Kwo+KwlpZiAoSEFTX0dNQ0goZGV2X3ByaXYpKSB7Cj4rCQlpZiAoSVNf
Q0hFUlJZVklFVyhkZXZfcHJpdikpCj4rCQkJcmV0dXJuIGNodl9nYW1tYV9wcmVjaXNpb24oY3J0
Y19zdGF0ZSk7Cj4rCQllbHNlCj4rCQkJcmV0dXJuIGk5eHhfZ2FtbWFfcHJlY2lzaW9uKGNydGNf
c3RhdGUpOwo+Kwl9IGVsc2Ugewo+KwkJaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpIHx8IElT
X0dFTUlOSUxBS0UoZGV2X3ByaXYpKQo+KwkJCXJldHVybiBnbGtfZ2FtbWFfcHJlY2lzaW9uKGNy
dGNfc3RhdGUpOwo+KwkJZWxzZSBpZiAoSVNfSVJPTkxBS0UoZGV2X3ByaXYpKQo+KwkJCXJldHVy
biBpbGtfZ2FtbWFfcHJlY2lzaW9uKGNydGNfc3RhdGUpOwo+Kwl9Cj4rCj4rCXJldHVybiAwOwo+
K30KPisKPiB2b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpICB7
Cj4gCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFz
ZS5kZXYpOyBkaWZmIC0tZ2l0Cj5hL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y29sb3IuaAo+Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmgKPmlu
ZGV4IDA1N2U4YWMuLjAyMjZkM2EgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NvbG9yLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuaAo+QEAgLTE0LDUgKzE0LDYgQEAKPiB2b2lkIGludGVsX2NvbG9yX2NvbW1p
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7ICB2b2lkCj5pbnRl
bF9jb2xvcl9sb2FkX2x1dHMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpOyAgdm9pZAo+aW50ZWxfY29sb3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7Cj4raW50IGludGVsX2NvbG9yX2dldF9nYW1tYV9iaXRfcHJlY2lzaW9u
KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4rKmNydGNfc3RhdGUpOwo+Cj4gI2VuZGlm
IC8qIF9fSU5URUxfQ09MT1JfSF9fICovCj4tLQo+MS45LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
