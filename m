Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF46163480
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 12:46:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F2A89FA7;
	Tue,  9 Jul 2019 10:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41D7189FA7
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 10:46:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 03:46:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="340721839"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2019 03:46:52 -0700
Received: from bgsmsx101.gar.corp.intel.com (10.223.4.170) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 9 Jul 2019 03:46:52 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.156]) by
 BGSMSX101.gar.corp.intel.com ([169.254.1.46]) with mapi id 14.03.0439.000;
 Tue, 9 Jul 2019 16:16:39 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "C, Ramalingam" <ramalingam.c@intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [PATCH v2] drm/i915/hdcp: debug logs for sink related failures
Thread-Index: AQHVNbt1/0/cs+iIk0+zsb5MUk+Ms6bCGz9g
Date: Tue, 9 Jul 2019 10:46:38 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F8212A107@BGSMSX104.gar.corp.intel.com>
References: <20190708113319.2517-1-ramalingam.c@intel.com>
In-Reply-To: <20190708113319.2517-1-ramalingam.c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDRhMjE1MjQtNDM5OC00N2VjLWJhZjEtY2RjOTliYmU3NjllIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieG5rZTFJWmpVaW9DajIxODBZOHlLVWg2TmQ4Wkh2RHM5Mmg1dkZOWmg5SzhKODVCelR5TkZVaTVZNGJcL294S3EifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: debug logs for sink
 related failures
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IEMsIFJhbWFsaW5nYW0KPlNlbnQ6
IE1vbmRheSwgSnVseSA4LCAyMDE5IDU6MDMgUE0KPlRvOiBpbnRlbC1nZnggPGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc+OyBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj5D
YzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBDLCBSYW1hbGluZ2FtCj48
cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPlN1YmplY3Q6IFtQQVRDSCB2Ml0gZHJtL2k5MTUvaGRj
cDogZGVidWcgbG9ncyBmb3Igc2luayByZWxhdGVkIGZhaWx1cmVzCj4KPkFkZGluZyBmZXcgbW9y
ZSBkZWJ1ZyBsb2dzIHRvIGlkZW50aWZ5IHRoZSBzaW5rIHNwZWNpZmljIEhEQ1AgZmFpbHVyZXMg
YWxvbmcgd2l0aCBhCj5vdXQgb2YgbWVtIGZhaWx1cmUuCj4KPnYyOgo+ICBDYXB0dXJpbmcgdGhl
IEJ1ZyBhbmQgYS1iCj4KPkJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3No
b3dfYnVnLmNnaT9pZD0xMTA5OTEKPlNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxp
bmdhbS5jQGludGVsLmNvbT4KPmNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj5B
Y2tlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+LS0tCgpQdXNoZWQgdG8g
ZGlucS4gVGhhbmtzIGZvciB0aGUgcGF0Y2guCgpSZWdhcmRzLApVbWEgU2hhbmthcgoKPiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYyB8IDEyICsrKysrKysrKy0tLQo+
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwo+Yi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwo+aW5kZXggYmMzYTk0ZDQ5MWM0
Li5hNzgxMzlmOWU4NDcgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZGNwLmMKPkBAIC01MjMsMTIgKzUyMywxNiBAQCBpbnQgaW50ZWxfaGRjcF9hdXRoX2Rvd25zdHJl
YW0oc3RydWN0IGludGVsX2Nvbm5lY3Rvcgo+KmNvbm5lY3RvcikKPiAJICogYXV0aGVudGljYXRp
b24uCj4gCSAqLwo+IAludW1fZG93bnN0cmVhbSA9IERSTV9IRENQX05VTV9ET1dOU1RSRUFNKGJz
dGF0dXNbMF0pOwo+LQlpZiAobnVtX2Rvd25zdHJlYW0gPT0gMCkKPisJaWYgKG51bV9kb3duc3Ry
ZWFtID09IDApIHsKPisJCURSTV9ERUJVR19LTVMoIlJlcGVhdGVyIHdpdGggemVybyBkb3duc3Ry
ZWFtIGRldmljZXNcbiIpOwo+IAkJcmV0dXJuIC1FSU5WQUw7Cj4rCX0KPgo+IAlrc3ZfZmlmbyA9
IGtjYWxsb2MoRFJNX0hEQ1BfS1NWX0xFTiwgbnVtX2Rvd25zdHJlYW0sIEdGUF9LRVJORUwpOwo+
LQlpZiAoIWtzdl9maWZvKQo+KwlpZiAoIWtzdl9maWZvKSB7Cj4rCQlEUk1fREVCVUdfS01TKCJP
dXQgb2YgbWVtOiBrc3ZfZmlmb1xuIik7Cj4gCQlyZXR1cm4gLUVOT01FTTsKPisJfQo+Cj4gCXJl
dCA9IHNoaW0tPnJlYWRfa3N2X2ZpZm8oaW50ZWxfZGlnX3BvcnQsIG51bV9kb3duc3RyZWFtLCBr
c3ZfZmlmbyk7Cj4gCWlmIChyZXQpCj5AQCAtMTIwNiw4ICsxMjEwLDEwIEBAIHN0YXRpYyBpbnQg
aGRjcDJfYXV0aGVudGljYXRpb25fa2V5X2V4Y2hhbmdlKHN0cnVjdAo+aW50ZWxfY29ubmVjdG9y
ICpjb25uZWN0b3IpCj4gCWlmIChyZXQgPCAwKQo+IAkJcmV0dXJuIHJldDsKPgo+LQlpZiAobXNn
cy5zZW5kX2NlcnQucnhfY2Fwc1swXSAhPSBIRENQXzJfMl9SWF9DQVBTX1ZFUlNJT05fVkFMKQo+
KwlpZiAobXNncy5zZW5kX2NlcnQucnhfY2Fwc1swXSAhPSBIRENQXzJfMl9SWF9DQVBTX1ZFUlNJ
T05fVkFMKSB7Cj4rCQlEUk1fREVCVUdfS01TKCJjZXJ0LnJ4X2NhcHMgZG9udCBjbGFpbSBIRENQ
Mi4yXG4iKTsKPiAJCXJldHVybiAtRUlOVkFMOwo+Kwl9Cj4KPiAJaGRjcC0+aXNfcmVwZWF0ZXIg
PSBIRENQXzJfMl9SWF9SRVBFQVRFUihtc2dzLnNlbmRfY2VydC5yeF9jYXBzWzJdKTsKPgo+LS0K
PjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
