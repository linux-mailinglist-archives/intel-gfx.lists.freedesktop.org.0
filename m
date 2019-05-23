Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1512C285E8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 20:28:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DBDB89F49;
	Thu, 23 May 2019 18:28:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35C0989F49
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 18:28:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 11:28:46 -0700
X-ExtLoop1: 1
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga005.fm.intel.com with ESMTP; 23 May 2019 11:28:46 -0700
Received: from orsmsx159.amr.corp.intel.com (10.22.240.24) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 23 May 2019 11:28:46 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.171]) by
 ORSMSX159.amr.corp.intel.com ([169.254.11.57]) with mapi id 14.03.0415.000;
 Thu, 23 May 2019 11:28:45 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 08/10] drm/i915/dmc: remove redundant return in
 parse_csr_fw()
Thread-Index: AQHVEUDzOWy/AsxRPEOcRRJCm9NId6Z5B7GQ
Date: Thu, 23 May 2019 18:28:45 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480B5174@ORSMSX108.amr.corp.intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
 <20190523082420.10352-8-lucas.demarchi@intel.com>
In-Reply-To: <20190523082420.10352-8-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDc3ZjJjMDctODhkYy00OTg0LWIwMGYtMjg0NDFkM2YzMjBjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMGFFOW8rWURnTzBnbmR5c3NoRENsZHJCcFpmMU9uT3Fva2xDRzdSbzIyZ3RIQytnZDFQMUtqMmlBRFwvbG9rRHcifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/10] drm/i915/dmc: remove redundant return
 in parse_csr_fw()
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IERlIE1hcmNoaSwgTHVjYXMKPlNl
bnQ6IFRodXJzZGF5LCBNYXkgMjMsIDIwMTkgMToyNCBBTQo+VG86IGludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwu
Y29tPjsgU3JpdmF0c2EsIEFudXNoYQo+PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+OyBWaXZp
LCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPjsgRGUKPk1hcmNoaSwgTHVjYXMgPGx1
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPlN1YmplY3Q6IFtQQVRDSCAwOC8xMF0gZHJtL2k5MTUv
ZG1jOiByZW1vdmUgcmVkdW5kYW50IHJldHVybiBpbgo+cGFyc2VfY3NyX2Z3KCkKPgo+cGFyc2Vf
Y3NyX2Z3KCkgaXMgcmVzcG9uc2libGUgdG8gc2V0IHVwIHNldmVyYWwgZmllbGRzIGluIHN0cnVj
dCBpbnRlbF9jc3IsIGluY2x1ZGluZwo+dGhlIHBheWxvYWQuIFdlIGRvbid0IG5lZWQgdG8gYXNz
aWduIGl0IGFnYWluLgo+Cj5TaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KQ2hhbmdlcyBsb29rIGdvb2QuClJldmlld2VkLWJ5OiBBbnVzaGEg
U3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9jc3IuYyB8IDE3ICsrKysrKy0tLS0tLS0tLS0tCj4gMSBmaWxlIGNoYW5n
ZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Nzci5jCj5pbmRleCBhZDRlZTU1YThjNWUuLjdmZjA4ZGU4M2NjNiAxMDA2NDQKPi0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jc3IuYwo+QEAgLTUyMCw3ICs1MjAsNyBAQCBzdGF0aWMgdTMyIHBhcnNlX2Nzcl9m
d19jc3Moc3RydWN0IGludGVsX2NzciAqY3NyLAo+IAlyZXR1cm4gc2l6ZW9mKHN0cnVjdCBpbnRl
bF9jc3NfaGVhZGVyKTsgIH0KPgo+LXN0YXRpYyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4rc3RhdGljIHZvaWQgcGFyc2VfY3NyX2Z3KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAJCQkgY29uc3Qgc3RydWN0IGZpcm13YXJl
ICpmdykKPiB7Cj4gCXN0cnVjdCBpbnRlbF9jc3NfaGVhZGVyICpjc3NfaGVhZGVyOwo+QEAgLTUz
MiwxMyArNTMyLDEzIEBAIHN0YXRpYyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZQo+KmRldl9wcml2LAo+IAl1MzIgcjsKPgo+IAlpZiAoIWZ3KQo+LQkJcmV0dXJuIE5V
TEw7Cj4rCQlyZXR1cm47Cj4KPiAJLyogRXh0cmFjdCBDU1MgSGVhZGVyIGluZm9ybWF0aW9uKi8K
PiAJY3NzX2hlYWRlciA9IChzdHJ1Y3QgaW50ZWxfY3NzX2hlYWRlciAqKWZ3LT5kYXRhOwo+IAly
ID0gcGFyc2VfY3NyX2Z3X2Nzcyhjc3IsIGNzc19oZWFkZXIpOwo+IAlpZiAoIXIpCj4tCQlyZXR1
cm4gTlVMTDsKPisJCXJldHVybjsKPgo+IAlyZWFkY291bnQgKz0gcjsKPgo+QEAgLTU0NiwxNyAr
NTQ2LDEzIEBAIHN0YXRpYyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQo+KmRldl9wcml2LAo+IAlwYWNrYWdlX2hlYWRlciA9IChzdHJ1Y3QgaW50ZWxfcGFja2FnZV9o
ZWFkZXIgKikmZnctCj4+ZGF0YVtyZWFkY291bnRdOwo+IAlyID0gcGFyc2VfY3NyX2Z3X3BhY2th
Z2UoY3NyLCBwYWNrYWdlX2hlYWRlciwgc2kpOwo+IAlpZiAoIXIpCj4tCQlyZXR1cm4gTlVMTDsK
PisJCXJldHVybjsKPgo+IAlyZWFkY291bnQgKz0gcjsKPgo+IAkvKiBFeHRyYWN0IGRtY19oZWFk
ZXIgaW5mb3JtYXRpb24uICovCj4gCWRtY19oZWFkZXIgPSAoc3RydWN0IGludGVsX2RtY19oZWFk
ZXJfYmFzZSAqKSZmdy0+ZGF0YVtyZWFkY291bnRdOwo+LQlyID0gcGFyc2VfY3NyX2Z3X2RtYyhj
c3IsIGRtY19oZWFkZXIpOwo+LQlpZiAoIXIpCj4tCQlyZXR1cm4gTlVMTDsKPi0KPi0JcmV0dXJu
IGNzci0+ZG1jX3BheWxvYWQ7Cj4rCXBhcnNlX2Nzcl9md19kbWMoY3NyLCBkbWNfaGVhZGVyKTsK
PiB9Cj4KPiBzdGF0aWMgdm9pZCBpbnRlbF9jc3JfcnVudGltZV9wbV9nZXQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KSBAQCAtCj41ODQsOCArNTgwLDcgQEAgc3RhdGljIHZvaWQg
Y3NyX2xvYWRfd29ya19mbihzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gCWNzciA9ICZkZXZf
cHJpdi0+Y3NyOwo+Cj4gCXJlcXVlc3RfZmlybXdhcmUoJmZ3LCBkZXZfcHJpdi0+Y3NyLmZ3X3Bh
dGgsICZkZXZfcHJpdi0+ZHJtLnBkZXYtCj4+ZGV2KTsKPi0JaWYgKGZ3KQo+LQkJZGV2X3ByaXYt
PmNzci5kbWNfcGF5bG9hZCA9IHBhcnNlX2Nzcl9mdyhkZXZfcHJpdiwgZncpOwo+KwlwYXJzZV9j
c3JfZncoZGV2X3ByaXYsIGZ3KTsKPgo+IAlpZiAoZGV2X3ByaXYtPmNzci5kbWNfcGF5bG9hZCkg
ewo+IAkJaW50ZWxfY3NyX2xvYWRfcHJvZ3JhbShkZXZfcHJpdik7Cj4tLQo+Mi4yMS4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
