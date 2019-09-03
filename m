Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B98DFA6CD9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 17:25:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25BCF8936E;
	Tue,  3 Sep 2019 15:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD2789138;
 Tue,  3 Sep 2019 15:25:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 08:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="333873873"
Received: from oploder-mobl.ger.corp.intel.com (HELO intel.intel)
 ([10.251.95.128])
 by orsmga004.jf.intel.com with ESMTP; 03 Sep 2019 08:25:07 -0700
Date: Tue, 3 Sep 2019 18:25:06 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190903152451.GA22095@intel.intel>
References: <20190902041548.14919-1-chris@chris-wilson.co.uk>
 <20190902041548.14919-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902041548.14919-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/6] i915/gem_ctx_shared:
 Prebind both context images
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBNb24sIFNlcCAwMiwgMjAxOSBhdCAwNToxNTo0NEFNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gSWYgd2UgYXJlIHVzaW5nIGFuIGFsaWFzaW5nLXBwZ3R0LCB0aGUg
Y29udGV4dCBpbWFnZXMgYXJlIGluIHRoZSBzYW1lCj4gdmlydHVhbCBhZGRyZXNzIHNwYWNlIGFz
IG91ciB0YXJnZXQgb2JqZWN0cy4gV2UgaGF2ZSB0byBiZSBjYXJlZnVsIHRoYXQKPiBjbG9uaW5n
IGFuZCB1c2luZyBhIG5ldyBjb250ZXh0IGRvZXMgbm90IGV2aWN0IG91ciB1bnJlZmVyZW5jZWQg
dGFyZ2V0Cj4gb2JqZWN0LiBUbyBhdm9pZCB0aGF0LCB3ZSBmaXJzdCBiaW5kIGJvdGggY29udGV4
dCBpbWFnZXMgd2hpbGUgY3JlYXRpbmcKPiB0aGUgaG9sZSBpbiB0aGUgYWRkcmVzcyBzcGFjZSB0
byBlbnN1cmUgdGhhdCB0aGUgaG9sZSBpcyBzdGlsbCBhdmFpbGFibGUKPiBsYXRlciBvbi4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiAtLS0KPiAgdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jIHwgMTUgKysrKysrKysrKystLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMgYi90ZXN0cy9pOTE1L2dl
bV9jdHhfc2hhcmVkLmMKPiBpbmRleCBiMDczYmRmYzkuLmM5ZTdiOGExYSAxMDA2NDQKPiAtLS0g
YS90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhf
c2hhcmVkLmMKPiBAQCAtMTkxLDYgKzE5MSw3IEBAIHN0YXRpYyB2b2lkIGV4ZWNfc2hhcmVkX2d0
dChpbnQgaTkxNSwgdW5zaWduZWQgaW50IHJpbmcpCj4gIAkJLmJ1ZmZlcl9jb3VudCA9IDEsCj4g
IAkJLmZsYWdzID0gcmluZywKPiAgCX07Cj4gKwl1aW50MzJfdCBjbG9uZTsKPiAgCXVpbnQzMl90
IHNjcmF0Y2gsICpzOwo+ICAJdWludDMyX3QgYmF0Y2gsIGNzWzE2XTsKPiAgCXVpbnQ2NF90IG9m
ZnNldDsKPiBAQCAtMTk5LDEzICsyMDAsMTggQEAgc3RhdGljIHZvaWQgZXhlY19zaGFyZWRfZ3R0
KGludCBpOTE1LCB1bnNpZ25lZCBpbnQgcmluZykKPiAgCWdlbV9yZXF1aXJlX3JpbmcoaTkxNSwg
cmluZyk7Cj4gIAlpZ3RfcmVxdWlyZShnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIHJpbmcpKTsK
PiAgCj4gKwljbG9uZSA9IGdlbV9jb250ZXh0X2Nsb25lKGk5MTUsIDAsIEk5MTVfQ09OVEVYVF9D
TE9ORV9WTSwgMCk7Cj4gKwo+ICAJLyogRmluZCBhIGhvbGUgYmlnIGVub3VnaCBmb3IgYm90aCBv
YmplY3RzIGxhdGVyICovCj4gLQlzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCAxNjM4NCk7Cj4g
KwlzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCA2NDw8MTApOwoKSSBndWVzcyB0aGlzIGlzIGEg
bGVmdG92ZXIsIHJpZ2h0PwoKUmV2aWV3ZWQtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50
ZWwuY29tPgoKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
