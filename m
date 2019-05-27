Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF76C2B322
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3183E898C4;
	Mon, 27 May 2019 11:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55BD1898C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 11:23:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 May 2019 04:23:09 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga006.fm.intel.com with ESMTP; 27 May 2019 04:23:08 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4RBN7ld000628; Mon, 27 May 2019 12:23:07 +0100
To: "Ye, Tony" <tony.ye@intel.com>, "Chris Wilson" <chris@chris-wilson.co.uk>, 
 intel-gfx@lists.freedesktop.org, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>
References: <20190519215043.10712-1-michal.wajdeczko@intel.com>
 <155834492612.6928.8334805033823811349@skylake-alporthouse-com>
 <op.z1227bxfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <155834908381.6928.7399827371611888241@skylake-alporthouse-com>
 <op.z128ecw7xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <16ec65cf-f64a-497c-768a-451384c21d36@intel.com>
 <op.z14zw2dzxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <e49543a1-fce9-25a8-e9cc-08899fbb20f7@intel.com>
 <155870345816.2664.10432704458968406046@jlahtine-desk.ger.corp.intel.com>
 <op.z2aqe8gexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Date: Mon, 27 May 2019 13:23:06 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z2f4ksqwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <op.z2aqe8gexaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/huc: Don't try to check HuC
 status if it's not loaded
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNCBNYXkgMjAxOSAxNToyOToyMiArMDIwMCwgTWljaGFsIFdhamRlY3prbyAgCjxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4gd3JvdGU6Cgo+IE9uIEZyaSwgMjQgTWF5IDIwMTkg
MTU6MTA6NTggKzAyMDAsIEpvb25hcyBMYWh0aW5lbiAgCj4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4+IFF1b3RpbmcgWWUsIFRvbnkgKDIwMTktMDUtMjIgMTQ6
MzI6NDEpCj4+PiAgRnJvbSBVTUQgcGVyc3BlY3RpdmUsIHdoZW4gSHVDIGlzIG5vdCB3b3JraW5n
IGFzIGV4cGVjdGVkLCB1c3VhbGx5IHdlCj4+PiBsb29rIGludG8gdGhlIGtlcm5lbCBsb2cgYW5k
IGk5MTVfaHVjX2xvYWRfc3RhdHVzIGRlYnVnZnMgdG8gZmluZCBvdXQKPj4+IHdoeSBpdCdzIG5v
dCB3b3JraW5nLiBJdCB3aWxsIGJlIGhlbHBmdWwgdG8ga25vdyB0aGUgcmVhc29uIG9mIHRoZQo+
Pj4gZmFpbHVyZSBmcm9tIHRoZSBlcnJvciBjb2RlLiBUaGUgdHlwaWNhbGx5IGZhaWx1cmVzIHdl
IGVuY291bnRlcmVkIGFyZQo+Pj4gIkh1QyBGVyBub3QgbG9hZGVkIChGVyBub3QgYnVpbHQgaW50
byBpbml0cmFtZnMpIiBhbmQgIkh1QyBGVwo+Pj4gYXV0aGVudGljYXRpb24gZmFpbGVkIi4KPj4+
Cj4+PiBBbmQgaXQgbG9va3MgY2xlYXJlciB0byBtZSBpZiB3ZSBjYW4gZGVmaW5lIDAgYXMgImRp
c2FibGVkIGJ5IHVzZXIiIHRvCj4+PiBkaXN0aW5ndWlzaCBpdCBmcm9tIG90aGVyIGVycm9ycyBs
aWtlIEVOT0RFViwgRU5PUEtHIGFuZCAibm90Cj4+PiBhdXRoZW50aWNhdGVkIi4KPj4KPj4gU3Vn
Z2VzdGlvbiBieSBDaHJpcyBmb3IgMC8xIGZvciBodWNfc3RhdHVzIG1ha2VzIHNlbnNlIHRvIG1l
IHRvIHJlZmxlY3QgIAo+PiBpZgo+PiBIdUMgYXV0aGVudGljYXRpb24gd2FzIHN1Y2Nlc2Z1bCBv
ciBub3QuIE1vc3RseSBiZWNhdXNlIHRoZSBuYW1lIG9mIHRoZQo+PiBkZWJ1Z2ZzIGFuZCBmdW5j
IGlzIGh1Y19zdGF0dXMuCgpvbmUgbW9yZSB0aG91Z2h0IG9uIGRlYnVnZnM6IHdlIGFyZSBkdW1w
aW5nIHRoZXJlIHJhdyByZWdpc3RlciB2YWx1ZSwKbm90IGp1c3Qgc2luZ2xlIGJpdCB0aGF0IGhv
bGRzIGF1dGhlbnRpY2F0aW9uIHN0YXR1cyAoYW5kIGF1dGggYml0IGlzIDcpLApzbyBJJ20gbm90
IHN1cmUgd2h5IGRvIHlvdSB3YW50IHRvIGxpbmsgdGhhdCB2YWx1ZSB3aXRoIGdldHBhcmFtIHZh
bHVlPwoKTWljaGFsCgo+PiBJdCBhbHNvIG5pY2VseSBtYXBzIHRvIGEgcmVnaXN0ZXIuCj4KPiBC
dXQgdGhpcyBlbnRyeSBpcyBub3QgbGltaXRlZCB0byAiaHVjIGF1dGhlbnRpY2F0aW9uIHN0YXR1
cyIsIGFzIHRoZW4KPiB3ZSBzaG91bGQgZXZlbiBub3QgdHJ5IHRvIGludHJvZHVjZSBuZXcgZXJy
b3JzLCBidXQgcmV0dXJuIDAgdG8gbWF0Y2gKPiByZWdpc3Rlci4KPgo+IE9uIG90aGVyIGhhbmQs
IHVuZGVyIG5vcm1hbCBjb25kaXRpb25zLCB3ZSBleHBlY3QgSHVDIHRvIGJlIGF1dGhlbnRpY2F0
ZWQKPiBhbmQgcnVubmluZyBvciBleHBsaWNpdGx5IGRpc2FibGVkIGJ5IHRoZSB1c2VyLiBPdGhl
ciBjYXNlcyBhcmUgIAo+IHVuZXhwZWN0ZWQKPiBlcnJvciBjb25kaXRpb25zLiBJIHdvdWxkIGV4
cGVjdCBmcm9tIHRoZSBBQkkgdGhhdCB0aGVzZSBlcnJvciBjb25kaXRpb25zCj4gd2lsbCBiZSBy
ZXBvcnRlZCBhcyBlcnJvcnMuIEZvciBtZSBBQkkgaXMgc29tZXRoaW5nIG1vcmUgdGhhbiByZWcg
dmFsdWUuCj4KPj4KPj4gT25lIGNvdWxkIGhhdmUgaHVjX2VuYWJsZWQgd2hpY2ggd291bGQgdGhl
biBjb2xsYXBzZSB0byBlYXN5IDAvMSwgYnV0ICAKPj4gdGhhdCdkCj4+IGJlIGJpdCByZWR1bmRh
bnQuCj4KPiB0aGF0J3Mgd2h5IHdlIHdhbnRlZCB0byBwcm92aWRlIG1vcmUgZGV0YWlscyBpbiBu
ZXcgZXJyb3IgY29kZXMgZm9yCj4gZXhpc3RpbmcgR0VUUEFSQU0sIHdpdGhvdXQgYnJlYWtpbmcg
Y3VycmVudCB1c2FnZXMuCj4KPiBNaWNoYWwKPgo+Pgo+PiBSZWdhcmRzLCBKb29uYXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
