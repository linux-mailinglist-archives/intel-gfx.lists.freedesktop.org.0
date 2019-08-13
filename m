Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8C48C204
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 22:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E195F6E103;
	Tue, 13 Aug 2019 20:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D083B6E103
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 20:16:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 13:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,382,1559545200"; d="scan'208";a="327782417"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2019 13:16:55 -0700
To: Fernando Pacheco <fernando.pacheco@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190813162628.18531-1-fernando.pacheco@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <39d7f313-dec7-6432-af08-a9127d3032ce@intel.com>
Date: Tue, 13 Aug 2019 13:16:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190813162628.18531-1-fernando.pacheco@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Fini hw even if GuC is not
 running
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

CgpPbiA4LzEzLzE5IDk6MjYgQU0sIEZlcm5hbmRvIFBhY2hlY28gd3JvdGU6Cj4gV2Ugc2hvdWxk
IG5vdCBiZSBza2lwcGluZyB1Y19maW5pX2h3IG9uIGZpbmRpbmcgR3VDCj4gaXMgbm8gbG9uZ2Vy
IHJ1bm5pbmcuIFRoZXJlIGlzIHBsZW50eSBvZiBodyBhbmQgaW50ZXJuYWwKPiBzdGF0ZSB0aGF0
IGNhbiBiZSBjbGVhbmVkIHVwIHdpdGhvdXQgaGF2aW5nIHRvIGNvbW11bmljYXRlCj4gd2l0aCBH
dUMuCj4gCgpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEwOTQzCgo+IFNpZ25lZC1vZmYtYnk6IEZlcm5hbmRvIFBhY2hlY28gPGZlcm5hbmRv
LnBhY2hlY29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKPiBpbmRl
eCAwZGMyYjBjZjQ2MDQuLmM2OThjZGRjMTRkYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWMuYwo+IEBAIC01MjEsNyArNTIxLDcgQEAgdm9pZCBpbnRlbF91Y19maW5pX2h3
KHN0cnVjdCBpbnRlbF91YyAqdWMpCj4gICB7Cj4gICAJc3RydWN0IGludGVsX2d1YyAqZ3VjID0g
JnVjLT5ndWM7Cj4gICAKPiAtCWlmICghaW50ZWxfZ3VjX2lzX3J1bm5pbmcoZ3VjKSkKPiArCWlm
ICghaW50ZWxfdWNfc3VwcG9ydHNfZ3VjKHVjKSkKCkJvdGggY2FsbHMgYmVsb3cgaGFuZGxlIHRo
ZSBjYXNlIHdoZXJlIEd1QyBpcyBhbHJlYWR5IG5vdCBydW5uaW5nIHNvIAp3ZSdyZSBzYWZlLCBi
dXQgbm93IHRoYXQgd2Ugd2VkZ2Ugd2hlbiB3ZSBoaXQgYSBndWMgZXJyb3Igd2UgY2FuIGFsc28g
ZG8gCnNvbWV0aGluZyBsaWtlOgoKCS1FSU8gbG9hZCBlcnJvciAtPiB1Y19maW5pX2h3KCkgLT4g
d2VkZ2UKYW5kIHRoZW4KCXVubG9hZCAtPiB1Y19maW5pX2h3KCkKCml0IHNob3VsZCBiZSBhbGwg
YmUgaGFuZGxlZCBzYWZlbHkgKHRoZSBmYXVsdCBpbmplY3Rpb24gdGVzdCBpcyBwYXNzaW5nIAp3
aGVyZSB3ZSd2ZSBydW4gaXQpLCBidXQgd2UgZW5kIHVwIHdpdGggIkd1QyBjb21tdW5pY2F0aW9u
IGRpc2FibGVkIiAKbXVsdGlwbGUgdGltZXMgaW4gdGhlIGxvZ3M6CgpodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzk5OS9maS1za2wtZ3VjL2lndEBp
OTE1X21vZHVsZV9sb2FkQHJlbG9hZC13aXRoLWZhdWx0LWluamVjdGlvbi5odG1sCgo8Nj4gWzIz
Ny44MTg5MDVdIFtkcm1dIEd1QyBjb21tdW5pY2F0aW9uIGVuYWJsZWQKLi4uLgo8Nj4gWzIzNy44
MjI3MzldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOl9faTkxNV9pbmplY3RfbG9hZF9lcnJvciAK
W2k5MTVdXSBJbmplY3RpbmcgZmFpbHVyZSAtNSBhdCBjaGVja3BvaW50IDQ0IFtpOTE1X2dlbV9p
bml0OjE1MDNdCjw2PiBbMjM3Ljg0MDgwOF0gW2RybV0gR3VDIGNvbW11bmljYXRpb24gZGlzYWJs
ZWQKLi4uCjw2PiBbMjM4LjE2MDkzNV0gW2RybV0gR3VDIGNvbW11bmljYXRpb24gZGlzYWJsZWQK
Ck1heWJlIHJldHVybiBlYXJseSBmcm9tIGd1Y19kaXNhYmxlX2NvbW11bmljYXRpb24gaWYgdGhl
IGNvbW11bmljYXRpb24gCndhcyBhbHJlYWR5IGRpc2FibGVkPwoKRGFuaWVsZQoKPiAgIAkJcmV0
dXJuOwo+ICAgCj4gICAJaWYgKGludGVsX3VjX3N1cHBvcnRzX2d1Y19zdWJtaXNzaW9uKHVjKSkK
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
