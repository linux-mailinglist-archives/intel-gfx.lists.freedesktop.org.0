Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9181C56FB3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 19:39:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86DC36E4B1;
	Wed, 26 Jun 2019 17:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FA626E4B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 17:38:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="313498047"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2019 10:38:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190624203152.13725-1-daniele.ceraolospurio@intel.com>
 <20190624203152.13725-2-daniele.ceraolospurio@intel.com>
 <156154334639.2637.9988052891636686902@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <35062553-0982-376a-3b4a-4dcf19524c12@intel.com>
Date: Wed, 26 Jun 2019 10:38:45 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156154334639.2637.9988052891636686902@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915: split out uncore_mmio_debug
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

CgpPbiA2LzI2LzE5IDM6MDIgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDYtMjQgMjE6MzE6NDkpCj4+IEBAIC02MDUsMTggKzYx
NCwyMCBAQCB2b2lkIGludGVsX3VuY29yZV9mb3JjZXdha2VfZ2V0KHN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSwKPj4gICB2b2lkIGludGVsX3VuY29yZV9mb3JjZXdha2VfdXNlcl9nZXQoc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlKQo+PiAgIHsKPj4gICAgICAgICAgc3Bpbl9sb2NrX2ly
cSgmdW5jb3JlLT5sb2NrKTsKPj4gKyAgICAgICBzcGluX2xvY2soJnVuY29yZS0+ZGVidWctPmxv
Y2spOwo+PiAgICAgICAgICBpZiAoIXVuY29yZS0+dXNlcl9mb3JjZXdha2UuY291bnQrKykgewo+
IAo+IEFmYWljdCwgdW5jb3JlLT51c2VyX2ZvcmNld2FrZS5jb3VudCBpcyBvbmx5IGd1YXJkZWQg
YnkgdW5jb3JlLT5sb2NrCj4gYW5kIHdlIG9ubHkgbmVlZCB0byB0YWtlIGRlYnVnLT5sb2NrIGZv
ciB0aGUgZGVidWctPnVuY2xhaW1lZF9tbWlvX2NoZWNrCj4gbWFuaXB1bGF0aW9uLiBCdXQgdGhl
cmUgbmVlZHMgdG8gYmUgYSBzaGFyZWQgdXNhZ2UgY291bnRlciBhcm91bmQgdGhlCj4gZGVidWcg
YXMgaXQgaXMgc2hhcmVkIHN0YXRlLgo+IAo+PiAgICAgICAgICAgICAgICAgIGludGVsX3VuY29y
ZV9mb3JjZXdha2VfZ2V0X19sb2NrZWQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKPj4gICAKPj4g
ICAgICAgICAgICAgICAgICAvKiBTYXZlIGFuZCBkaXNhYmxlIG1taW8gZGVidWdnaW5nIGZvciB0
aGUgdXNlciBieXBhc3MgKi8KPj4gICAgICAgICAgICAgICAgICB1bmNvcmUtPnVzZXJfZm9yY2V3
YWtlLnNhdmVkX21taW9fY2hlY2sgPQo+PiAtICAgICAgICAgICAgICAgICAgICAgICB1bmNvcmUt
PnVuY2xhaW1lZF9tbWlvX2NoZWNrOwo+PiArICAgICAgICAgICAgICAgICAgICAgICB1bmNvcmUt
PmRlYnVnLT51bmNsYWltZWRfbW1pb19jaGVjazsKPj4gICAgICAgICAgICAgICAgICB1bmNvcmUt
PnVzZXJfZm9yY2V3YWtlLnNhdmVkX21taW9fZGVidWcgPQo+PiAgICAgICAgICAgICAgICAgICAg
ICAgICAgaTkxNV9tb2RwYXJhbXMubW1pb19kZWJ1ZzsKPiAKPiBTb21ldGhpbmcgbW9yZSBsaWtl
Cj4gCj4gc3Bpbl9sb2NrX2lycSgmdW5jb3JlLT5sb2NrKTsKPiBpZiAoIXVuY29yZS0+dXNlcl9m
b3JjZXdha2VfY291bnQrKykgewo+IAlzcGluX2xvY2soJnVuY29yZS0+ZGVidWctPmxvY2spOwo+
IAlpZiAoIXVuY29yZS0+ZGVidWctPnVzYWdlX2NvdW50KyspIHsKPiAJCS4uLgo+IAl9Cj4gCXNw
aW5fdW5sb2NrKCZ1bmNvcmUtPmRlYnVnLT5sb2NrKTsKPiB9Cj4gLi4uCj4gc3Bpbl91bmxvY2tf
aXJxKCZ1bmNvcmUtPmxvY2spOwo+ID8KPiAtQ2hyaXMKPiAKCkkgZG8gc29tZXRoaW5nIHNpbWls
YXIgaW4gdGhlIG5leHQgcGF0Y2ggaW4gdGhlIHNlcmllcyAod2l0aCB0aGUgbG9jayAKc3RpbGwg
b24gdGhlIG91dHNpZGUgb2YgdGhlIGlmKS4gSSd2ZSBzcGxpdCB0aGF0IG91dCBiZWNhdXNlIEkn
dmUgYWRkZWQgCnNvbWUgZnVuY3Rpb25hbCBjaGFuZ2VzIHRvIHRoZSBmbG93LiBJIGNhbiBzcXVh
c2ggdGhlIDIgcGF0Y2hlcyBpZiB5b3UgCnRoaW5nIGl0IGlzIGJldHRlciB0aGF0IHdheS4KCkRh
bmllbGUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
