Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C6746857
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 21:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70E688EFF;
	Fri, 14 Jun 2019 19:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95E3188EFF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 19:51:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 12:51:04 -0700
X-ExtLoop1: 1
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga004.jf.intel.com with ESMTP; 14 Jun 2019 12:51:04 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.211]) by
 ORSMSX107.amr.corp.intel.com ([169.254.1.123]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 12:51:04 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 8/9] drm/i915/dmc: remove redundant return in
 parse_csr_fw()
Thread-Index: AQHVHREwxlpA5+FNmEuMsj2ZoDy/Y6abmrgg
Date: Fri, 14 Jun 2019 19:51:04 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480D37C9@ORSMSX108.amr.corp.intel.com>
References: <20190607091230.1489-1-lucas.demarchi@intel.com>
 <20190607091230.1489-9-lucas.demarchi@intel.com>
In-Reply-To: <20190607091230.1489-9-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTk1YWJhNTQtNThhNS00MDE1LTg4MTItZDVlYmZmYjI1NzZiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZWQybmVkeFdBK2JVTE5CK2lOSzlRVVBrSHgzZFVwZG5id0FSSXhJVkF0NSt5SWN2VWpOWnlrRzBKUmMzdGhrRCJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 8/9] drm/i915/dmc: remove redundant return
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
bnQ6IEZyaWRheSwgSnVuZSA3LCAyMDE5IDI6MTIgQU0KPlRvOiBpbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCj5DYzogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT47
IFNyaXZhdHNhLCBBbnVzaGEKPjxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsgRGUgTWFyY2hp
LCBMdWNhcyA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+U3ViamVjdDogW1BBVENIIDgvOV0g
ZHJtL2k5MTUvZG1jOiByZW1vdmUgcmVkdW5kYW50IHJldHVybiBpbiBwYXJzZV9jc3JfZncoKQo+
Cj5wYXJzZV9jc3JfZncoKSBpcyByZXNwb25zaWJsZSB0byBzZXQgdXAgc2V2ZXJhbCBmaWVsZHMg
aW4gc3RydWN0IGludGVsX2NzciwgaW5jbHVkaW5nCj50aGUgcGF5bG9hZC4gV2UgZG9uJ3QgbmVl
ZCB0byBhc3NpZ24gaXQgYWdhaW4uCj4KPlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKTG9va3MgZ29vZC4KClJldmlld2VkLWJ5OiBBbnVz
aGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9jc3IuYyB8IDE3ICsrKysrKy0tLS0tLS0tLS0tCj4gMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Nzci5jCj5pbmRleCAwYjE5NzhhMmY4N2QuLjc2MDhlNGUyOTUwZCAxMDA2NDQKPi0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9jc3IuYwo+QEAgLTU1Nyw3ICs1NTcsNyBAQCBzdGF0aWMgdTMyIHBhcnNlX2Nz
cl9md19jc3Moc3RydWN0IGludGVsX2NzciAqY3NyLAo+IAlyZXR1cm4gc2l6ZW9mKHN0cnVjdCBp
bnRlbF9jc3NfaGVhZGVyKTsgIH0KPgo+LXN0YXRpYyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4rc3RhdGljIHZvaWQgcGFyc2VfY3NyX2Z3KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAJCQkgY29uc3Qgc3RydWN0IGZpcm13
YXJlICpmdykKPiB7Cj4gCXN0cnVjdCBpbnRlbF9jc3NfaGVhZGVyICpjc3NfaGVhZGVyOwo+QEAg
LTU2OSwxMyArNTY5LDEzIEBAIHN0YXRpYyB1MzIgKnBhcnNlX2Nzcl9mdyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZQo+KmRldl9wcml2LAo+IAl1MzIgcjsKPgo+IAlpZiAoIWZ3KQo+LQkJcmV0dXJu
IE5VTEw7Cj4rCQlyZXR1cm47Cj4KPiAJLyogRXh0cmFjdCBDU1MgSGVhZGVyIGluZm9ybWF0aW9u
ICovCj4gCWNzc19oZWFkZXIgPSAoc3RydWN0IGludGVsX2Nzc19oZWFkZXIgKilmdy0+ZGF0YTsK
PiAJciA9IHBhcnNlX2Nzcl9md19jc3MoY3NyLCBjc3NfaGVhZGVyLCBmdy0+c2l6ZSk7Cj4gCWlm
ICghcikKPi0JCXJldHVybiBOVUxMOwo+KwkJcmV0dXJuOwo+Cj4gCXJlYWRjb3VudCArPSByOwo+
Cj5AQCAtNTgzLDE3ICs1ODMsMTMgQEAgc3RhdGljIHUzMiAqcGFyc2VfY3NyX2Z3KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlCj4qZGV2X3ByaXYsCj4gCXBhY2thZ2VfaGVhZGVyID0gKHN0cnVjdCBp
bnRlbF9wYWNrYWdlX2hlYWRlciAqKSZmdy0KPj5kYXRhW3JlYWRjb3VudF07Cj4gCXIgPSBwYXJz
ZV9jc3JfZndfcGFja2FnZShjc3IsIHBhY2thZ2VfaGVhZGVyLCBzaSwgZnctPnNpemUgLSByZWFk
Y291bnQpOwo+IAlpZiAoIXIpCj4tCQlyZXR1cm4gTlVMTDsKPisJCXJldHVybjsKPgo+IAlyZWFk
Y291bnQgKz0gcjsKPgo+IAkvKiBFeHRyYWN0IGRtY19oZWFkZXIgaW5mb3JtYXRpb24gKi8KPiAJ
ZG1jX2hlYWRlciA9IChzdHJ1Y3QgaW50ZWxfZG1jX2hlYWRlcl9iYXNlICopJmZ3LT5kYXRhW3Jl
YWRjb3VudF07Cj4tCXIgPSBwYXJzZV9jc3JfZndfZG1jKGNzciwgZG1jX2hlYWRlciwgZnctPnNp
emUgLSByZWFkY291bnQpOwo+LQlpZiAoIXIpCj4tCQlyZXR1cm4gTlVMTDsKPi0KPi0JcmV0dXJu
IGNzci0+ZG1jX3BheWxvYWQ7Cj4rCXBhcnNlX2Nzcl9md19kbWMoY3NyLCBkbWNfaGVhZGVyLCBm
dy0+c2l6ZSAtIHJlYWRjb3VudCk7Cj4gfQo+Cj4gc3RhdGljIHZvaWQgaW50ZWxfY3NyX3J1bnRp
bWVfcG1fZ2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikgQEAgLQo+NjIxLDgg
KzYxNyw3IEBAIHN0YXRpYyB2b2lkIGNzcl9sb2FkX3dvcmtfZm4oc3RydWN0IHdvcmtfc3RydWN0
ICp3b3JrKQo+IAljc3IgPSAmZGV2X3ByaXYtPmNzcjsKPgo+IAlyZXF1ZXN0X2Zpcm13YXJlKCZm
dywgZGV2X3ByaXYtPmNzci5md19wYXRoLCAmZGV2X3ByaXYtPmRybS5wZGV2LQo+PmRldik7Cj4t
CWlmIChmdykKPi0JCWRldl9wcml2LT5jc3IuZG1jX3BheWxvYWQgPSBwYXJzZV9jc3JfZncoZGV2
X3ByaXYsIGZ3KTsKPisJcGFyc2VfY3NyX2Z3KGRldl9wcml2LCBmdyk7Cj4KPiAJaWYgKGRldl9w
cml2LT5jc3IuZG1jX3BheWxvYWQpIHsKPiAJCWludGVsX2Nzcl9sb2FkX3Byb2dyYW0oZGV2X3By
aXYpOwo+LS0KPjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
