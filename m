Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EDB3AFC3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 09:34:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2251F89113;
	Mon, 10 Jun 2019 07:34:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B067789113;
 Mon, 10 Jun 2019 07:34:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 00:34:47 -0700
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 00:34:43 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>
Date: Mon, 10 Jun 2019 09:34:37 +0200
Message-ID: <2766260.H9SineBT9b@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20190610064938.GL22949@platvala-desk.ger.corp.intel.com>
References: <20190607115142.32668-1-janusz.krzysztofik@linux.intel.com>
 <20190607115142.32668-2-janusz.krzysztofik@linux.intel.com>
 <20190610064938.GL22949@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v11 1/1] tests: Add a new test for
 device hot unplug
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uZGF5LCBKdW5lIDEwLCAyMDE5IDg6NDk6MzggQU0gQ0VTVCBQZXRyaSBMYXR2YWxhIHdy
b3RlOgo+IE9uIEZyaSwgSnVuIDA3LCAyMDE5IGF0IDAxOjUxOjQyUE0gKzAyMDAsIEphbnVzeiBL
cnp5c3p0b2ZpayB3cm90ZToKPiA+IC0gdXNlIFNQRFggbGljZW5zZSBpZGVudGlmaWVyLAo+IAo+
IAo+IFdoeT8gV2UgZG9uJ3QgdXNlIHRob3NlIGluIElHVC4KCkkgbXVzdCBoYXZlIGhhZCBnb3Qg
YW4gaWRlYSB0byBjaGFuZ2UgaXQgZnJvbSBzb21ld2hlcmUsIHVuZm9ydHVuYXRlbHkgSSdtIG5v
dCAKYWJsZSB0byByZWNhbGwgZnJvbSB3aGVyZSwgc29ycnkuICBJJ2xsIHJldmVydCBpdC4KCj4g
PiBkaWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5w
bHVnLmMKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMC4uZDM2YTA1
NzIKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKPiA+
IEBAIC0wLDAgKzEsMjIyIEBACj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0y
LjAKPiA+ICsvKgo+ID4gKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCj4g
PiArICovCj4gCj4gQW5kIHdoeSBHUEwtMi4wPwoKRnJvbSB0aGUgc2FtZSBzb3VyY2UgYXMgdGhl
IGlkZWEgb2YgU1BEWCwgSSBndWVzcy4gSSdsbCBmaXggaXQgdG8gYmUgaW4gbGluZSAKd2l0aCBJ
R1Qgc3RhbmRhcmRzLgoKVGhhbmtzLApKYW51c3oKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
