Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BBC310AE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2019 16:55:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64432891BF;
	Fri, 31 May 2019 14:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05239891BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 May 2019 14:55:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 May 2019 07:55:46 -0700
X-ExtLoop1: 1
Received: from mnoonan-mobl4.amr.corp.intel.com (HELO
 ldmartin-desk.amr.corp.intel.com) ([10.252.130.200])
 by orsmga004.jf.intel.com with ESMTP; 31 May 2019 07:55:46 -0700
Date: Fri, 31 May 2019 07:55:45 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190531145545.nt7rxaih7hglnp3b@ldmartin-desk.amr.corp.intel.com>
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190531095935.GU22949@platvala-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531095935.GU22949@platvala-desk.ger.corp.intel.com>
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

T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMTI6NTk6MzVQTSArMDMwMCwgUGV0cmkgTGF0dmFsYSB3
cm90ZToKPk9uIFdlZCwgTWF5IDI5LCAyMDE5IGF0IDA0OjI3OjMzUE0gLTA3MDAsIEx1Y2FzIERl
IE1hcmNoaSB3cm90ZToKPj4gV2Ugd2FudCB0byBjaGVjayBpZiB0aGUgbG9uZyBvcHRpb24gY29u
ZmxpY3RzIHdpdGggb25lIGZyb20gdGhlIGNvcmUuCj4+IFRoZSBjaGVjayBmb3IgY29uZmxpY3Rp
bmcgc2hvcnQgb3B0aW9uIGFscmVhZHkgZXhpc3RzIGp1c3QgYWJvdmUuCj4KPk5vLCB0aGlzIG9u
ZSBpcyBjaGVja2luZyB0aGF0IHRoZSB2YWwgKHRoZSAwKSBkb2Vzbid0IGNvbmZsaWN0LgoKTXkg
cG9pbnQgaXMgdGhhdCB0aGlzIGNoZWNrIGlzIGFscmVhZHkgZG9uZSBhYm92ZS4gV2UgZG9uJ3Qg
bmVlZCB0byBkbwppdCBhZ2Fpbi4KCklmIHlvdSBpbnNpc3QsIHRoZW4gd2Ugd2lsbCBuZWVkIHRv
IHJhaXNlIGl0IHRvIG1hZ2ljIG51bWJlciA1MDAsCmJlY2F1c2UgMCB3b24ndCBiZSBhIGNvbmZs
aWN0IGFmdGVyIHRoaXMgc2VyaWVzLgoKTHVjYXMgRGUgTWFyY2hpCgo+Cj4KPi0tIAo+UGV0cmkg
TGF0dmFsYQo+Cj4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgbGliL3Rlc3RzL2lndF9jb25mbGljdGluZ19h
cmdzLmMgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2xpYi90ZXN0cy9pZ3RfY29uZmxpY3RpbmdfYXJncy5j
IGIvbGliL3Rlc3RzL2lndF9jb25mbGljdGluZ19hcmdzLmMKPj4gaW5kZXggYzM1N2I2YzUuLmQ4
YmUxMzhlIDEwMDY0NAo+PiAtLS0gYS9saWIvdGVzdHMvaWd0X2NvbmZsaWN0aW5nX2FyZ3MuYwo+
PiArKysgYi9saWIvdGVzdHMvaWd0X2NvbmZsaWN0aW5nX2FyZ3MuYwo+PiBAQCAtOTEsNyArOTEs
NyBAQCBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCj4+ICAJaW50ZXJuYWxfYXNzZXJ0
X3dzaWduYWxlZChkb19mb3JrKCksIFNJR0FCUlQpOwo+Pgo+PiAgCS8qIGNvbmZsaWN0IG9uIGxv
bmcgb3B0aW9uICd2YWwnIHJlcHJlc2VudGF0aW9ucyAqLwo+PiAtCWxvbmdfb3B0aW9uc1swXSA9
IChzdHJ1Y3Qgb3B0aW9uKSB7ICJpdGVyYXRpb25zIiwgcmVxdWlyZWRfYXJndW1lbnQsIE5VTEws
IDB9Owo+PiArCWxvbmdfb3B0aW9uc1swXSA9IChzdHJ1Y3Qgb3B0aW9uKSB7ICJsaXN0LXN1YnRl
c3RzIiwgcmVxdWlyZWRfYXJndW1lbnQsIE5VTEwsIDB9Owo+PiAgCXNob3J0X29wdGlvbnMgPSAi
IjsKPj4gIAlpbnRlcm5hbF9hc3NlcnRfd3NpZ25hbGVkKGRvX2ZvcmsoKSwgU0lHQUJSVCk7Cj4+
Cj4+IC0tCj4+IDIuMjEuMAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
