Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1F4A0716
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:17:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8DC089D9B;
	Wed, 28 Aug 2019 16:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850DB89D9B
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 16:17:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 09:17:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="380453678"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 09:17:05 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:17:05 -0700
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:17:05 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.251]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 21:46:58 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 07/10] drm/i915/display: Extract chv_read_luts()
Thread-Index: AQHVW9ivtfqEY5diokWh96A+VYJt4acQv04w
Date: Wed, 28 Aug 2019 16:16:58 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D3A47@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-8-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-8-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjg4OGQ3ZGEtZGRmNi00ZjI4LWJhYjQtNGY0NzBjMDQyYTMxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU09uUVdCdVl2UFBob1hlY29iVGY1dTVQNDZUR1lkUVI3WFVnWGpzV0dIc2ROQ0pPZFwvYkdyZUNMSHhseGc2UloifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 07/10] drm/i915/display: Extract
 chv_read_luts()
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
W3Y4XVtQQVRDSCAwNy8xMF0gZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBjaHZfcmVhZF9sdXRz
KCkKPgo+Rm9yIGNoZXJyeXZpZXcsIGhhdmUgaHcgcmVhZCBvdXQgdG8gY3JlYXRlIGh3IGJsb2Ig
b2YgZ2FtbWEgbHV0IHZhbHVlcy4KClNhbWUgY29tbWVudHMgYXMgcHJldmlvdXMgcGF0Y2guCgo+
U2lnbmVkLW9mZi1ieTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPi0t
LQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDM5ICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgICB8ICAzICsrKwo+IDIgZmlsZXMgY2hhbmdlZCwgNDIgaW5zZXJ0aW9ucygr
KQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+aW5kZXgg
Yzc3YmJlZC4uMWVjMmZhMCAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCj5AQCAtMTYwOSw2ICsxNjA5LDQ0IEBAIHN0YXRpYyB2b2lkIGk5NjVfcmVhZF9s
dXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlCj4qY3J0Y19zdGF0ZSkKPiAJCWNydGNfc3RhdGUt
PmJhc2UuZ2FtbWFfbHV0ID0KPmk5NjVfcmVhZF9nYW1tYV9sdXRfMTBwNihjcnRjX3N0YXRlKTsK
PiB9Cj4KPitzdGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKPitjaHZfcmVhZF9jZ21f
Z2FtbWFfbHV0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7CgpNYWtlIGl0
IGNvbnN0LiBJZiBwbGFubmluZyB0byB1c2Ugc2FtZSBmb3IgZGVnYW1tYSBhcyB3ZWxsLCBkcm9w
IGdhbW1hCmZyb20gZnVuY3Rpb24gbmFtZSB0byBoYXZlIGl0IGdlbmVyaWMuCgo+KwlzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjKTsK
PisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNl
LmRldik7Cj4rCXUzMiBpLCB2YWwsIGx1dF9zaXplID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmNv
bG9yLmdhbW1hX2x1dF9zaXplOwo+KwllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7Cj4rCXN0
cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsKPisJc3RydWN0IGRybV9jb2xvcl9sdXQgKmJs
b2JfZGF0YTsKPisKPisJYmxvYiA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfYmxvYigmZGV2X3ByaXYt
PmRybSwKPisJCQkJCXNpemVvZihzdHJ1Y3QgZHJtX2NvbG9yX2x1dCkgKiBsdXRfc2l6ZSwKPisJ
CQkJCU5VTEwpOwo+KwlpZiAoSVNfRVJSKGJsb2IpKQo+KwkJcmV0dXJuIE5VTEw7Cj4rCj4rCWJs
b2JfZGF0YSA9IGJsb2ItPmRhdGE7Cj4rCj4rCWZvciAoaSA9IDA7IGkgPCBsdXRfc2l6ZTsgaSsr
KSB7Cj4rCQl2YWwgPSBJOTE1X1JFQUQoQ0dNX1BJUEVfR0FNTUEocGlwZSwgaSwgMCkpOwo+KwkJ
YmxvYl9kYXRhW2ldLmdyZWVuID0KPmludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQo
Q0dNX1BJUEVfR0FNTUFfR1JFRU5fTUFTSywgdmFsKSwgMTApOwo+KwkJYmxvYl9kYXRhW2ldLmJs
dWUgPQo+K2ludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJUEVfR0FNTUFf
QkxVRV9NQVNLLCB2YWwpLCAxMCk7CgpXcmFwIHRoZXNlIGxpbmVzLgoKPisKPisJCXZhbCA9IEk5
MTVfUkVBRChDR01fUElQRV9HQU1NQShwaXBlLCBpLCAxKSk7Cj4rCQlibG9iX2RhdGFbaV0ucmVk
ID0KPmludGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoQ0dNX1BJUEVfR0FNTUFfUkVE
X01BU0ssIHZhbCksIDEwKTsKPisJfQo+Kwo+KwlyZXR1cm4gYmxvYjsKPit9Cj4rCj4rc3RhdGlj
IHZvaWQgY2h2X3JlYWRfbHV0cyhzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkg
ewo+KwlpZiAoY3J0Y19zdGF0ZS0+Z2FtbWFfbW9kZSA9PSBHQU1NQV9NT0RFX01PREVfOEJJVCkK
PisJCWNydGNfc3RhdGUtPmJhc2UuZ2FtbWFfbHV0ID0gaTl4eF9yZWFkX2x1dF84KGNydGNfc3Rh
dGUpOwo+KwllbHNlCj4rCQljcnRjX3N0YXRlLT5iYXNlLmdhbW1hX2x1dCA9Cj5jaHZfcmVhZF9j
Z21fZ2FtbWFfbHV0KGNydGNfc3RhdGUpOwo+K30KPisKPiB2b2lkIGludGVsX2NvbG9yX2luaXQo
c3RydWN0IGludGVsX2NydGMgKmNydGMpICB7Cj4gCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAtMTYyMSw2Cj4rMTY1OSw3IEBA
IHZvaWQgaW50ZWxfY29sb3JfaW5pdChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAJCQlkZXZf
cHJpdi0+ZGlzcGxheS5jb2xvcl9jaGVjayA9IGNodl9jb2xvcl9jaGVjazsKPiAJCQlkZXZfcHJp
di0+ZGlzcGxheS5jb2xvcl9jb21taXQgPSBpOXh4X2NvbG9yX2NvbW1pdDsKPiAJCQlkZXZfcHJp
di0+ZGlzcGxheS5sb2FkX2x1dHMgPSBjaHZfbG9hZF9sdXRzOwo+KwkJCWRldl9wcml2LT5kaXNw
bGF5LnJlYWRfbHV0cyA9IGNodl9yZWFkX2x1dHM7Cj4gCQl9IGVsc2UgaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gNCkgewo+IAkJCWRldl9wcml2LT5kaXNwbGF5LmNvbG9yX2NoZWNrID0gaTl4
eF9jb2xvcl9jaGVjazsKPiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5jb2xvcl9jb21taXQgPSBpOXh4
X2NvbG9yX2NvbW1pdDsgZGlmZiAtLQo+Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXgKPmIzMGIwYzZiLi5l
NzZlNzc5IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+Kysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+QEAgLTEwMzA3LDYgKzEwMzA3LDkg
QEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gI2RlZmluZSAgIENHTV9QSVBFX01PREVfR0FNTUEJ
KDEgPDwgMikKPiAjZGVmaW5lICAgQ0dNX1BJUEVfTU9ERV9DU0MJKDEgPDwgMSkKPiAjZGVmaW5l
ICAgQ0dNX1BJUEVfTU9ERV9ERUdBTU1BCSgxIDw8IDApCj4rI2RlZmluZSAgIENHTV9QSVBFX0dB
TU1BX1JFRF9NQVNLICAgUkVHX0dFTk1BU0soOSwgMCkKPisjZGVmaW5lICAgQ0dNX1BJUEVfR0FN
TUFfR1JFRU5fTUFTSyBSRUdfR0VOTUFTSygyNSwgMTYpCj4rI2RlZmluZSAgIENHTV9QSVBFX0dB
TU1BX0JMVUVfTUFTSyAgUkVHX0dFTk1BU0soOSwgMCkKPgo+ICNkZWZpbmUgX0NHTV9QSVBFX0Jf
Q1NDX0NPRUZGMDEJKFZMVl9ESVNQTEFZX0JBU0UgKyAweDY5OTAwKQo+ICNkZWZpbmUgX0NHTV9Q
SVBFX0JfQ1NDX0NPRUZGMjMJKFZMVl9ESVNQTEFZX0JBU0UgKyAweDY5OTA0KQo+LS0KPjEuOS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
