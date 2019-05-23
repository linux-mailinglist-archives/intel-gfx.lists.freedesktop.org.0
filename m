Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16DE5284FB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 19:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8744E89FDD;
	Thu, 23 May 2019 17:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5D189FDD
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 17:33:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 10:32:59 -0700
X-ExtLoop1: 1
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2019 10:32:59 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 23 May 2019 10:32:58 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.171]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.165]) with mapi id 14.03.0415.000;
 Thu, 23 May 2019 10:32:58 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 01/10] drm/i915/dmc: use kernel types
Thread-Index: AQHVEUDxxxdAg8+GaEqRsiZMGU184aZ4+EtA
Date: Thu, 23 May 2019 17:32:57 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480B505A@ORSMSX108.amr.corp.intel.com>
References: <20190523082420.10352-1-lucas.demarchi@intel.com>
In-Reply-To: <20190523082420.10352-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMjkyZmNmMmEtMzRjYi00OGY4LTk4MDctY2FiNzFlYzk2ZjljIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiR1NKVytIVUtRcWNicmpCWGVDeFY1UnVabCtMRzZuNkFGZTV4RFpUT0JqM0M2UjBQNVJzandRXC9vS3hCT2loK1oifQ==
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/dmc: use kernel types
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
Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPlN1YmplY3Q6IFtQQVRDSCAwMS8xMF0gZHJtL2k5MTUv
ZG1jOiB1c2Uga2VybmVsIHR5cGVzCj4KPkNoYW5nZSBhbGwgZmllbGRzIGluIGludGVsX3BhY2th
Z2VfaGVhZGVyIGFuZCBpbnRlbF9kbWNfaGVhZGVyIHdob3NlIG1lYW5pbmcKPmFyZSAxLWJ5dGUg
bnVtYmVycyB0byB1c2UgdTguCj4KPlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgpEb3VibGUgY2hlY2tlZCB3aXRoIHRoZSBzcGVjLgpMb29r
cyBnb29kLgoKUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNyaXZhdHNhQGlu
dGVsLmNvbT4KPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMTAgKysr
KystLS0tLQo+IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
Cj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj5pbmRleCA0NTI3Yjk2NjIzMzAuLmIwNWU3YTZh
ZWJjNyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jCj4rKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jc3IuYwo+QEAgLTEzMCwxMiArMTMwLDEyIEBA
IHN0cnVjdCBpbnRlbF9md19pbmZvIHsKPgo+IHN0cnVjdCBpbnRlbF9wYWNrYWdlX2hlYWRlciB7
Cj4gCS8qIERNQyBjb250YWluZXIgaGVhZGVyIGxlbmd0aCBpbiBkd29yZHMgKi8KPi0JdW5zaWdu
ZWQgY2hhciBoZWFkZXJfbGVuOwo+Kwl1OCBoZWFkZXJfbGVuOwo+Cj4gCS8qIGFsd2F5cyB2YWx1
ZSB3b3VsZCBiZSAweDAxICovCj4tCXVuc2lnbmVkIGNoYXIgaGVhZGVyX3ZlcjsKPisJdTggaGVh
ZGVyX3ZlcjsKPgo+LQl1bnNpZ25lZCBjaGFyIHJlc2VydmVkWzEwXTsKPisJdTggcmVzZXJ2ZWRb
MTBdOwo+Cj4gCS8qIE51bWJlciBvZiB2YWxpZCBlbnRyaWVzIGluIHRoZSBGV0luZm8gYXJyYXkg
YmVsb3cgKi8KPiAJdTMyIG51bV9lbnRyaWVzOwo+QEAgLTE0OCwxMCArMTQ4LDEwIEBAIHN0cnVj
dCBpbnRlbF9kbWNfaGVhZGVyIHsKPiAJdTMyIHNpZ25hdHVyZTsKPgo+IAkvKiBETUMgYmluYXJ5
IGhlYWRlciBsZW5ndGggKi8KPi0JdW5zaWduZWQgY2hhciBoZWFkZXJfbGVuOwo+Kwl1OCBoZWFk
ZXJfbGVuOwo+Cj4gCS8qIDB4MDEgKi8KPi0JdW5zaWduZWQgY2hhciBoZWFkZXJfdmVyOwo+Kwl1
OCBoZWFkZXJfdmVyOwo+Cj4gCS8qIFJlc2VydmVkICovCj4gCXUxNiBkbWNjX3ZlcjsKPi0tCj4y
LjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
