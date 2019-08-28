Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FECA0765
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 18:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BCC89D9A;
	Wed, 28 Aug 2019 16:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AD5489D9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 16:30:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 09:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="380458439"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga005.fm.intel.com with ESMTP; 28 Aug 2019 09:30:18 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:30:18 -0700
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 FMSMSX157.amr.corp.intel.com (10.18.116.73) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 28 Aug 2019 09:30:17 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.178]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.94]) with mapi id 14.03.0439.000;
 Wed, 28 Aug 2019 22:00:15 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Sharma, Swati2" <swati2.sharma@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v8][PATCH 09/10] drm/i915/display: Extract glk_read_luts()
Thread-Index: AQHVW9ixdQn4NB8K90qj3u1qohxW4acQwuIA
Date: Wed, 28 Aug 2019 16:30:15 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F821D3A9F@BGSMSX104.gar.corp.intel.com>
References: <1566800772-18412-1-git-send-email-swati2.sharma@intel.com>
 <1566800772-18412-10-git-send-email-swati2.sharma@intel.com>
In-Reply-To: <1566800772-18412-10-git-send-email-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmViNDQ1NmYtYjU5Zi00YjczLThiYWMtYTRlZjM2MGQyZmM0IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieGwyRThzdFREdnB3dVNRK29xYmhVOHZpcG5UblRzYVhOVEdYN0ZkczBPNHRWRDBXdGl0SUhCTlwvTWQ4azl5RlwvIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v8][PATCH 09/10] drm/i915/display: Extract
 glk_read_luts()
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
W3Y4XVtQQVRDSCAwOS8xMF0gZHJtL2k5MTUvZGlzcGxheTogRXh0cmFjdCBnbGtfcmVhZF9sdXRz
KCkKPgo+Rm9yIGdsaywgaGF2ZSBodyByZWFkIG91dCB0byBjcmVhdGUgaHcgYmxvYiBvZiBnYW1t
YSBsdXQgdmFsdWVzLgoKU2FtZSBhcyBlYXJsaWVyIHBhdGNoZXMuCgo+U2lnbmVkLW9mZi1ieTog
U3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDQ4ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKystLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICB8
ICAzICsrCj4gMiBmaWxlcyBjaGFuZ2VkLCA0OSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+Cj5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwo+aW5kZXgg
NGI5YjI4Zi4uMzc2MmJkZiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY29sb3IuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jb2xvci5jCj5AQCAtMTY4NCw2ICsxNjg0LDQ5IEBAIHN0YXRpYyB2b2lkIGlsa19yZWFkX2x1
dHMoc3RydWN0IGludGVsX2NydGNfc3RhdGUKPipjcnRjX3N0YXRlKQo+IAkJY3J0Y19zdGF0ZS0+
YmFzZS5nYW1tYV9sdXQgPSBpbGtfcmVhZF9nYW1tYV9sdXQoY3J0Y19zdGF0ZSk7ICB9Cj4KPitz
dGF0aWMgc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICoKPitnbGtfcmVhZF9sdXRfMTAoc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsIHUzMiBwcmVjX2luZGV4KSB7CgpNYWtlICJj
cnRjX3N0YXRlIiBhcyBjb25zdC4KCj4rCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50
ZWxfY3J0YyhjcnRjX3N0YXRlLT5iYXNlLmNydGMpOwo+KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPisJaW50IGh3X2x1dF9zaXpl
ID0gaXZiX2x1dF8xMF9zaXplKHByZWNfaW5kZXgpOwo+KwllbnVtIHBpcGUgcGlwZSA9IGNydGMt
PnBpcGU7Cj4rCXN0cnVjdCBkcm1fcHJvcGVydHlfYmxvYiAqYmxvYjsKPisJc3RydWN0IGRybV9j
b2xvcl9sdXQgKmJsb2JfZGF0YTsKPisJdTMyIGksIHZhbDsKPisKPisJSTkxNV9XUklURShQUkVD
X1BBTF9JTkRFWChwaXBlKSwgcHJlY19pbmRleCB8Cj4rCQkgICBQQUxfUFJFQ19BVVRPX0lOQ1JF
TUVOVCk7Cj4rCj4rCWJsb2IgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2Jsb2IoJmRldl9wcml2LT5k
cm0sCj4rCQkJCQlzaXplb2Yoc3RydWN0IGRybV9jb2xvcl9sdXQpICogaHdfbHV0X3NpemUsCgpX
cmFwIHRoaXMuCgo+KwkJCQkJTlVMTCk7Cj4rCWlmIChJU19FUlIoYmxvYikpCj4rCQlyZXR1cm4g
TlVMTDsKPisKPisJYmxvYl9kYXRhID0gYmxvYi0+ZGF0YTsKPisKPisJZm9yIChpID0gMDsgaSA8
IGh3X2x1dF9zaXplOyBpKyspIHsKPisJCXZhbCA9IEk5MTVfUkVBRChQUkVDX1BBTF9EQVRBKHBp
cGUpKTsKPisKPisJCWJsb2JfZGF0YVtpXS5yZWQgPQo+aW50ZWxfY29sb3JfbHV0X3BhY2soUkVH
X0ZJRUxEX0dFVChQUkVDX1BBTF9EQVRBX1JFRF9NQVNLLCB2YWwpLCAxMCk7Cj4rCQlibG9iX2Rh
dGFbaV0uZ3JlZW4gPQo+aW50ZWxfY29sb3JfbHV0X3BhY2soUkVHX0ZJRUxEX0dFVChQUkVDX1BB
TF9EQVRBX0dSRUVOX01BU0ssIHZhbCksIDEwKTsKPisJCWJsb2JfZGF0YVtpXS5ibHVlID0KPmlu
dGVsX2NvbG9yX2x1dF9wYWNrKFJFR19GSUVMRF9HRVQoUFJFQ19QQUxfREFUQV9CTFVFX01BU0ss
IHZhbCksIDEwKTsKPisJfQo+Kwo+KwlJOTE1X1dSSVRFKFBSRUNfUEFMX0lOREVYKHBpcGUpLCAw
KTsKPisKPisJcmV0dXJuIGJsb2I7Cj4rfQo+Kwo+K3N0YXRpYyB2b2lkIGdsa19yZWFkX2x1dHMo
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIHsKPisJaWYgKGNydGNfc3RhdGUt
PmdhbW1hX21vZGUgPT0gR0FNTUFfTU9ERV9NT0RFXzhCSVQpCj4rCQljcnRjX3N0YXRlLT5iYXNl
LmdhbW1hX2x1dCA9IGk5eHhfcmVhZF9sdXRfOChjcnRjX3N0YXRlKTsKPisJZWxzZQo+KwkJY3J0
Y19zdGF0ZS0+YmFzZS5nYW1tYV9sdXQgPSBnbGtfcmVhZF9sdXRfMTAoY3J0Y19zdGF0ZSwKPitQ
QUxfUFJFQ19JTkRFWF9WQUxVRSgwKSk7IH0KPisKPiB2b2lkIGludGVsX2NvbG9yX2luaXQoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMpICB7Cj4gCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOyBAQCAtMTcyNyw5Cj4rMTc3MCwxMCBAQCB2
b2lkIGludGVsX2NvbG9yX2luaXQoc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4KPiAJCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+IAkJCWRldl9wcml2LT5kaXNwbGF5LmxvYWRfbHV0
cyA9IGljbF9sb2FkX2x1dHM7Cj4tCQllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSB8
fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkKPisJCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2
X3ByaXYpIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7Cj4gCQkJZGV2X3ByaXYtPmRpc3Bs
YXkubG9hZF9sdXRzID0gZ2xrX2xvYWRfbHV0czsKPi0JCWVsc2UgaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gOCkKPisJCQlkZXZfcHJpdi0+ZGlzcGxheS5yZWFkX2x1dHMgPSBnbGtfcmVhZF9s
dXRzOwo+KwkJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDgpCj4gCQkJZGV2X3By
aXYtPmRpc3BsYXkubG9hZF9sdXRzID0gYmR3X2xvYWRfbHV0czsKPiAJCWVsc2UgaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gNykKPiAJCQlkZXZfcHJpdi0+ZGlzcGxheS5sb2FkX2x1dHMgPSBp
dmJfbG9hZF9sdXRzOyBkaWZmIC0tZ2l0Cj5hL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4Cj5hY2M5MjM5Li43NjEz
ZTE0IDEwMDY0NAo+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+KysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+QEAgLTEwMjU4LDYgKzEwMjU4LDkgQEAg
ZW51bSBza2xfcG93ZXJfZ2F0ZSB7Cj4gI2RlZmluZSBfUEFMX1BSRUNfR0NfTUFYX0EJMHg0QTQx
MAo+ICNkZWZpbmUgX1BBTF9QUkVDX0dDX01BWF9CCTB4NEFDMTAKPiAjZGVmaW5lIF9QQUxfUFJF
Q19HQ19NQVhfQwkweDRCNDEwCj4rI2RlZmluZSAgIFBSRUNfUEFMX0RBVEFfUkVEX01BU0sJUkVH
X0dFTk1BU0soMjksIDIwKQo+KyNkZWZpbmUgICBQUkVDX1BBTF9EQVRBX0dSRUVOX01BU0sJUkVH
X0dFTk1BU0soMTksIDEwKQo+KyNkZWZpbmUgICBQUkVDX1BBTF9EQVRBX0JMVUVfTUFTSwlSRUdf
R0VOTUFTSyg5LCAwKQo+ICNkZWZpbmUgX1BBTF9QUkVDX0VYVF9HQ19NQVhfQQkweDRBNDIwCj4g
I2RlZmluZSBfUEFMX1BSRUNfRVhUX0dDX01BWF9CCTB4NEFDMjAKPiAjZGVmaW5lIF9QQUxfUFJF
Q19FWFRfR0NfTUFYX0MJMHg0QjQyMAo+LS0KPjEuOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
