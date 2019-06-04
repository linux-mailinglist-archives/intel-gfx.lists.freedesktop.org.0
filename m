Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F0035200
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 23:38:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F8189C96;
	Tue,  4 Jun 2019 21:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D9CD89C96
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 21:38:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 14:38:46 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.24.8.187])
 by fmsmga007.fm.intel.com with ESMTP; 04 Jun 2019 14:38:46 -0700
Date: Tue, 4 Jun 2019 14:38:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190604213846.hfydwil3jfljw2n3@ldmartin-desk.amr.corp.intel.com>
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190531095935.GU22949@platvala-desk.ger.corp.intel.com>
 <20190531145545.nt7rxaih7hglnp3b@ldmartin-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531145545.nt7rxaih7hglnp3b@ldmartin-desk.amr.corp.intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/5] lib/tests: fix conflicting args
 test
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

T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMDc6NTU6NDVBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMTI6NTk6MzVQTSArMDMwMCwgUGV0cmkg
TGF0dmFsYSB3cm90ZToKPj5PbiBXZWQsIE1heSAyOSwgMjAxOSBhdCAwNDoyNzozM1BNIC0wNzAw
LCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4+PldlIHdhbnQgdG8gY2hlY2sgaWYgdGhlIGxvbmcg
b3B0aW9uIGNvbmZsaWN0cyB3aXRoIG9uZSBmcm9tIHRoZSBjb3JlLgo+Pj5UaGUgY2hlY2sgZm9y
IGNvbmZsaWN0aW5nIHNob3J0IG9wdGlvbiBhbHJlYWR5IGV4aXN0cyBqdXN0IGFib3ZlLgo+Pgo+
Pk5vLCB0aGlzIG9uZSBpcyBjaGVja2luZyB0aGF0IHRoZSB2YWwgKHRoZSAwKSBkb2Vzbid0IGNv
bmZsaWN0Lgo+Cj5NeSBwb2ludCBpcyB0aGF0IHRoaXMgY2hlY2sgaXMgYWxyZWFkeSBkb25lIGFi
b3ZlLiBXZSBkb24ndCBuZWVkIHRvIGRvCj5pdCBhZ2Fpbi4KPgo+SWYgeW91IGluc2lzdCwgdGhl
biB3ZSB3aWxsIG5lZWQgdG8gcmFpc2UgaXQgdG8gbWFnaWMgbnVtYmVyIDUwMCwKPmJlY2F1c2Ug
MCB3b24ndCBiZSBhIGNvbmZsaWN0IGFmdGVyIHRoaXMgc2VyaWVzLgoKYW5kIGp1c3QgYSByZW1p
bmRlciB0aGF0IEkgY2FuJ3QgbWVyZ2UgdGhlIHJlc3Qgd2l0aG91dCB0aGlzIG9uZSwKb3RoZXJ3
aXNlIGl0IHdvdWxkIGJyZWFrIGlndCBjaGVja3MuCgpMdWNhcyBEZSBNYXJjaGkKCj4KPkx1Y2Fz
IERlIE1hcmNoaQo+Cj4+Cj4+Cj4+LS0gCj4+UGV0cmkgTGF0dmFsYQo+Pgo+Pgo+Pj4KPj4+U2ln
bmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4+
Pi0tLQo+Pj4gbGliL3Rlc3RzL2lndF9jb25mbGljdGluZ19hcmdzLmMgfCAyICstCj4+PiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Cj4+PmRpZmYgLS1n
aXQgYS9saWIvdGVzdHMvaWd0X2NvbmZsaWN0aW5nX2FyZ3MuYyBiL2xpYi90ZXN0cy9pZ3RfY29u
ZmxpY3RpbmdfYXJncy5jCj4+PmluZGV4IGMzNTdiNmM1Li5kOGJlMTM4ZSAxMDA2NDQKPj4+LS0t
IGEvbGliL3Rlc3RzL2lndF9jb25mbGljdGluZ19hcmdzLmMKPj4+KysrIGIvbGliL3Rlc3RzL2ln
dF9jb25mbGljdGluZ19hcmdzLmMKPj4+QEAgLTkxLDcgKzkxLDcgQEAgaW50IG1haW4oaW50IGFy
Z2MsIGNoYXIgKiphcmd2KQo+Pj4gCWludGVybmFsX2Fzc2VydF93c2lnbmFsZWQoZG9fZm9yaygp
LCBTSUdBQlJUKTsKPj4+Cj4+PiAJLyogY29uZmxpY3Qgb24gbG9uZyBvcHRpb24gJ3ZhbCcgcmVw
cmVzZW50YXRpb25zICovCj4+Pi0JbG9uZ19vcHRpb25zWzBdID0gKHN0cnVjdCBvcHRpb24pIHsg
Iml0ZXJhdGlvbnMiLCByZXF1aXJlZF9hcmd1bWVudCwgTlVMTCwgMH07Cj4+PisJbG9uZ19vcHRp
b25zWzBdID0gKHN0cnVjdCBvcHRpb24pIHsgImxpc3Qtc3VidGVzdHMiLCByZXF1aXJlZF9hcmd1
bWVudCwgTlVMTCwgMH07Cj4+PiAJc2hvcnRfb3B0aW9ucyA9ICIiOwo+Pj4gCWludGVybmFsX2Fz
c2VydF93c2lnbmFsZWQoZG9fZm9yaygpLCBTSUdBQlJUKTsKPj4+Cj4+Pi0tCj4+PjIuMjEuMAo+
Pj4KPj4+X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+Pj5JbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cj4+Pmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
