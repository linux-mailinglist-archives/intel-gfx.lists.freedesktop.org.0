Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D284029D35
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 19:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA5C89E32;
	Fri, 24 May 2019 17:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C980889E32
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 17:36:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 10:36:53 -0700
X-ExtLoop1: 1
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga005.jf.intel.com with ESMTP; 24 May 2019 10:36:53 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 24 May 2019 10:36:52 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.171]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.165]) with mapi id 14.03.0415.000;
 Fri, 24 May 2019 10:36:52 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Wajdeczko, Michal" <Michal.Wajdeczko@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 11/22] drm/i915/guc: Define GuC firmware version for
 Geminilake
Thread-Index: AQHVEb+vajoAFjx5V0+QdxPu2uwRJ6Z6isnw
Date: Fri, 24 May 2019 17:36:52 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480B59D9@ORSMSX108.amr.corp.intel.com>
References: <20190523233049.28020-1-michal.wajdeczko@intel.com>
 <20190523233049.28020-12-michal.wajdeczko@intel.com>
In-Reply-To: <20190523233049.28020-12-michal.wajdeczko@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzU0NWRjODctMzUyMC00ZWQwLWFkZGEtMGIyZmQxYjQxZjUyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoic2xyVm1RYnZFUzI4empcL2VrQ2U0YWtzRkVGYVlLTVo4cXp2aGlqcDZKXC9kM3JtWXBDZHRXZiszemV5a1Y1eUxpIn0=
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4 11/22] drm/i915/guc: Define GuC firmware
 version for Geminilake
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFdhamRlY3prbywgTWljaGFsCj5T
ZW50OiBUaHVyc2RheSwgTWF5IDIzLCAyMDE5IDQ6MzEgUE0KPlRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj5DYzogV2FqZGVjemtvLCBNaWNoYWwgPE1pY2hhbC5XYWpkZWN6a29A
aW50ZWwuY29tPjsgQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUKPjxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPjsgU3JpdmF0c2EsIEFudXNoYQo+PGFudXNoYS5zcml2YXRzYUBpbnRlbC5j
b20+Cj5TdWJqZWN0OiBbUEFUQ0ggdjQgMTEvMjJdIGRybS9pOTE1L2d1YzogRGVmaW5lIEd1QyBm
aXJtd2FyZSB2ZXJzaW9uIGZvcgo+R2VtaW5pbGFrZQo+Cj5EZWZpbmUgR3VDIGZpcm13YXJlIHZl
cnNpb24gZm9yIEdlbWluaWxha2UuClRoYW5rcyBmb3IgdGhpcyBwYXRjaCBNaWNoYWwuCgpSZXZp
ZXdlZC1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+U2ln
bmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+
Cj5DYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPkNjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4t
LS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyB8IDExICsrKysrKysrKysr
Cj4gMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCj5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2d1Y19mdy5jCj5pbmRleCBjNzQwYmYzNzMxZGUuLmMxZTliYjRlMDRmZCAxMDA2NDQKPi0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCj4rKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwo+QEAgLTU4LDYgKzU4LDEzIEBAIE1PRFVMRV9GSVJN
V0FSRShCWFRfR1VDX0ZJUk1XQVJFX1BBVEgpOwo+ICNkZWZpbmUgS0JMX0dVQ19GSVJNV0FSRV9Q
QVRIIF9fTUFLRV9HVUNfRldfUEFUSChLQkwpCj5NT0RVTEVfRklSTVdBUkUoS0JMX0dVQ19GSVJN
V0FSRV9QQVRIKTsKPgo+KyNkZWZpbmUgR0xLX0dVQ19GV19QUkVGSVggZ2xrCj4rI2RlZmluZSBH
TEtfR1VDX0ZXX01BSk9SIDMyCj4rI2RlZmluZSBHTEtfR1VDX0ZXX01JTk9SIDAKPisjZGVmaW5l
IEdMS19HVUNfRldfUEFUQ0ggMwo+KyNkZWZpbmUgR0xLX0dVQ19GSVJNV0FSRV9QQVRIIF9fTUFL
RV9HVUNfRldfUEFUSChHTEspCj4rTU9EVUxFX0ZJUk1XQVJFKEdMS19HVUNfRklSTVdBUkVfUEFU
SCk7Cj4rCj4gc3RhdGljIHZvaWQgZ3VjX2Z3X3NlbGVjdChzdHJ1Y3QgaW50ZWxfdWNfZncgKmd1
Y19mdykgIHsKPiAJc3RydWN0IGludGVsX2d1YyAqZ3VjID0gY29udGFpbmVyX29mKGd1Y19mdywg
c3RydWN0IGludGVsX2d1YywgZncpOyBAQCAtCj43Miw2ICs3OSwxMCBAQCBzdGF0aWMgdm9pZCBn
dWNfZndfc2VsZWN0KHN0cnVjdCBpbnRlbF91Y19mdyAqZ3VjX2Z3KQo+IAkJZ3VjX2Z3LT5wYXRo
ID0gaTkxNV9tb2RwYXJhbXMuZ3VjX2Zpcm13YXJlX3BhdGg7Cj4gCQlndWNfZnctPm1ham9yX3Zl
cl93YW50ZWQgPSAwOwo+IAkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gMDsKPisJfSBlbHNl
IGlmIChJU19HRU1JTklMQUtFKGk5MTUpKSB7Cj4rCQlndWNfZnctPnBhdGggPSBHTEtfR1VDX0ZJ
Uk1XQVJFX1BBVEg7Cj4rCQlndWNfZnctPm1ham9yX3Zlcl93YW50ZWQgPSBHTEtfR1VDX0ZXX01B
Sk9SOwo+KwkJZ3VjX2Z3LT5taW5vcl92ZXJfd2FudGVkID0gR0xLX0dVQ19GV19NSU5PUjsKPiAJ
fSBlbHNlIGlmIChJU19LQUJZTEFLRShpOTE1KSB8fCBJU19DT0ZGRUVMQUtFKGk5MTUpKSB7Cj4g
CQlndWNfZnctPnBhdGggPSBLQkxfR1VDX0ZJUk1XQVJFX1BBVEg7Cj4gCQlndWNfZnctPm1ham9y
X3Zlcl93YW50ZWQgPSBLQkxfR1VDX0ZXX01BSk9SOwo+LS0KPjIuMTkuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
