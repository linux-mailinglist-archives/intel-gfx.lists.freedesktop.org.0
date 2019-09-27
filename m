Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDBBC0D35
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 23:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4EDA6E27F;
	Fri, 27 Sep 2019 21:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D042C6E27C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 21:24:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 14:24:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,557,1559545200"; d="scan'208";a="365303507"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 27 Sep 2019 14:24:17 -0700
To: "Robert M. Fosha" <robert.m.fosha@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190927180426.23931-1-robert.m.fosha@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <182d7b4a-c34f-33f5-e317-3c584d85c8f3@intel.com>
Date: Fri, 27 Sep 2019 14:24:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190927180426.23931-1-robert.m.fosha@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Update H2G enable logging
 action definition
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzI3LzE5IDExOjA0IEFNLCBSb2JlcnQgTS4gRm9zaGEgd3JvdGU6Cj4gR3VDIGVuYWJs
ZSBsb2dnaW5nIEgyRyBhY3Rpb24gZGVmaW5pdGlvbiBjaGFuZ2VkIHNvbWUgdGltZSBhZ28gZnJv
bSAweEUwMDAKPiB0byAweDQwLiBBbGwgY3VycmVudCBHdUMgRlcgYmxvYnMgdXNlIHRoaXMgZGVm
aW5pdGlvbiwgc28gZml4IHRoZSBhY3Rpb24KPiBkZWZpbml0aW9uIGluIGRyaXZlciB0byBtYXRj
aC4KPiAKPiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlv
QGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRl
bC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBp
bnRlbC5jb20+CgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KCldlIHJlYWxseSBuZWVkIHRvIGFkZCBzb21lIHByb3Bl
ciB0ZXN0aW5nIGZvciB0aGUgZ3VjIGxvZyByZWxheSwgCm90aGVyd2lzZSB3ZSdsbCBvbmx5IG5v
dGljZSBidWdzIGluIHRoZXJlIChsaWtlIHRoaXMgb25lKSB3aGVuIHdlIG5lZWQgCnRvIHVzZSB0
aGUgcmVsYXkgZm9yIGRlYnVnIG9mIG90aGVyIGlzc3Vlcy4KCkRhbmllbGUKCj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oIHwgMiArLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19md2lmLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oCj4gaW5kZXggMWQzY2RkNjdjYTJm
Li5hMjZhODVkNTAyMDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfZ3VjX2Z3aWYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2d1Y19md2lmLmgKPiBAQCAtNTQ4LDYgKzU0OCw3IEBAIGVudW0gaW50ZWxfZ3VjX2FjdGlvbiB7
Cj4gICAJSU5URUxfR1VDX0FDVElPTl9BTExPQ0FURV9ET09SQkVMTCA9IDB4MTAsCj4gICAJSU5U
RUxfR1VDX0FDVElPTl9ERUFMTE9DQVRFX0RPT1JCRUxMID0gMHgyMCwKPiAgIAlJTlRFTF9HVUNf
QUNUSU9OX0xPR19CVUZGRVJfRklMRV9GTFVTSF9DT01QTEVURSA9IDB4MzAsCj4gKwlJTlRFTF9H
VUNfQUNUSU9OX1VLX0xPR19FTkFCTEVfTE9HR0lORyA9IDB4NDAsCj4gICAJSU5URUxfR1VDX0FD
VElPTl9GT1JDRV9MT0dfQlVGRkVSX0ZMVVNIID0gMHgzMDIsCj4gICAJSU5URUxfR1VDX0FDVElP
Tl9FTlRFUl9TX1NUQVRFID0gMHg1MDEsCj4gICAJSU5URUxfR1VDX0FDVElPTl9FWElUX1NfU1RB
VEUgPSAweDUwMiwKPiBAQCAtNTU2LDcgKzU1Nyw2IEBAIGVudW0gaW50ZWxfZ3VjX2FjdGlvbiB7
Cj4gICAJSU5URUxfR1VDX0FDVElPTl9BVVRIRU5USUNBVEVfSFVDID0gMHg0MDAwLAo+ICAgCUlO
VEVMX0dVQ19BQ1RJT05fUkVHSVNURVJfQ09NTUFORF9UUkFOU1BPUlRfQlVGRkVSID0gMHg0NTA1
LAo+ICAgCUlOVEVMX0dVQ19BQ1RJT05fREVSRUdJU1RFUl9DT01NQU5EX1RSQU5TUE9SVF9CVUZG
RVIgPSAweDQ1MDYsCj4gLQlJTlRFTF9HVUNfQUNUSU9OX1VLX0xPR19FTkFCTEVfTE9HR0lORyA9
IDB4MEUwMDAsCj4gICAJSU5URUxfR1VDX0FDVElPTl9MSU1JVAo+ICAgfTsKPiAgIAo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
