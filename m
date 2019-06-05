Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B173593E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 11:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C022B896C4;
	Wed,  5 Jun 2019 09:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D3E6896C4
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 09:04:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 02:04:20 -0700
X-ExtLoop1: 1
Received: from thrakatuluk.fi.intel.com (HELO [10.237.68.38]) ([10.237.68.38])
 by orsmga004.jf.intel.com with ESMTP; 05 Jun 2019 02:04:18 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190529232737.31515-1-lucas.demarchi@intel.com>
 <20190531095935.GU22949@platvala-desk.ger.corp.intel.com>
 <20190531145545.nt7rxaih7hglnp3b@ldmartin-desk.amr.corp.intel.com>
 <20190604213846.hfydwil3jfljw2n3@ldmartin-desk.amr.corp.intel.com>
From: Petri Latvala <petri.latvala@intel.com>
Message-ID: <615425ba-4baa-5194-49a7-690bc17a672b@intel.com>
Date: Wed, 5 Jun 2019 12:04:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <20190604213846.hfydwil3jfljw2n3@ldmartin-desk.amr.corp.intel.com>
Content-Language: en-US
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

Ck9uIDYvNS8xOSAxMjozOCBBTSwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IE9uIEZyaSwgTWF5
IDMxLCAyMDE5IGF0IDA3OjU1OjQ1QU0gLTA3MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToKPj4g
T24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMTI6NTk6MzVQTSArMDMwMCwgUGV0cmkgTGF0dmFsYSB3
cm90ZToKPj4+IE9uIFdlZCwgTWF5IDI5LCAyMDE5IGF0IDA0OjI3OjMzUE0gLTA3MDAsIEx1Y2Fz
IERlIE1hcmNoaSB3cm90ZToKPj4+PiBXZSB3YW50IHRvIGNoZWNrIGlmIHRoZSBsb25nIG9wdGlv
biBjb25mbGljdHMgd2l0aCBvbmUgZnJvbSB0aGUgY29yZS4KPj4+PiBUaGUgY2hlY2sgZm9yIGNv
bmZsaWN0aW5nIHNob3J0IG9wdGlvbiBhbHJlYWR5IGV4aXN0cyBqdXN0IGFib3ZlLgo+Pj4KPj4+
IE5vLCB0aGlzIG9uZSBpcyBjaGVja2luZyB0aGF0IHRoZSB2YWwgKHRoZSAwKSBkb2Vzbid0IGNv
bmZsaWN0Lgo+Pgo+PiBNeSBwb2ludCBpcyB0aGF0IHRoaXMgY2hlY2sgaXMgYWxyZWFkeSBkb25l
IGFib3ZlLiBXZSBkb24ndCBuZWVkIHRvIGRvCj4+IGl0IGFnYWluLgoKClRoZXJlJ3MgdHdvIHZh
bCBjb25mbGljdCB0ZXN0cy4gT25lIGNoZWNrcyBmb3IgY29uZmxpY3RzIGFnYWluc3QgY29yZSAK
c2hvcnQgb3B0aW9ucywgdGhlIGxhdHRlciAobW9kaWZpZWQgaGVyZSkgY2hlY2tzIGZvciBjb25m
bGljdHMgYWdhaW5zdCAKY29yZSBsb25nIG9wdGlvbiB2YWx1ZXMuCgoKCj4+Cj4+IElmIHlvdSBp
bnNpc3QsIHRoZW4gd2Ugd2lsbCBuZWVkIHRvIHJhaXNlIGl0IHRvIG1hZ2ljIG51bWJlciA1MDAs
Cj4+IGJlY2F1c2UgMCB3b24ndCBiZSBhIGNvbmZsaWN0IGFmdGVyIHRoaXMgc2VyaWVzLgoKWWVh
aCB0aGF0IHdvdWxkIGJlIHRoZSBjb3JyZWN0IGNoYW5nZS4KCgoKUGV0cmkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
