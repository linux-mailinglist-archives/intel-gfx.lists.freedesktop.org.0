Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A92C6BD92
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:46:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5658D6E1BB;
	Wed, 17 Jul 2019 13:46:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C7A56E1BB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:46:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:46:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158467995"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:46:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
 <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
 <156336944635.4375.7269371478914847980@skylake-alporthouse-com>
 <6038b21f-c052-36c5-2d56-72ddeb069097@linux.intel.com>
 <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <951e2751-15d7-9ca8-ef6f-299ba59c47a6@linux.intel.com>
Date: Wed, 17 Jul 2019 14:46:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156337053617.4375.13675276970408492219@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA3LzIwMTkgMTQ6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjIzOjU1KQo+Pgo+PiBPbiAxNy8wNy8yMDE5IDE0OjE3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3
LTE3IDE0OjA5OjAwKQo+Pj4+Cj4+Pj4gT24gMTYvMDcvMjAxOSAxNjozNywgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA3LTE2IDE2OjI1OjIy
KQo+Pj4+Pj4KPj4+Pj4+IE9uIDE2LzA3LzIwMTkgMTM6NDksIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5tYXAoKSB3ZSBtYXkgd2FudCB0byByZW1vdmUg
dGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPj4+Pj4+PiBwdXRfcGFnZXMoKS4gSG93ZXZlciwgdHJ5
X3RvX3VubWFwKCkgYWNxdWlyZXMgdGhlIHBhZ2UgbG9jayBhbmQgc28gd2UKPj4+Pj4+PiBtdXN0
IGF2b2lkIHJlY3Vyc2l2ZWx5IGxvY2tpbmcgdGhlIHBhZ2VzIG91cnNlbHZlcyAtLSB3aGljaCBt
ZWFucyB0aGF0Cj4+Pj4+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRoZSBsb2NrIGFyb3Vu
ZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+Pj4+Pj4+IGNhbid0IGJlIHN1cmUgb2YgdGhl
IGxvY2ssIHdlIGhhdmUgdG8gcmlzayBza2lwIGRpcnR5aW5nIHRoZSBwYWdlLCBvcgo+Pj4+Pj4+
IGVsc2UgcmlzayBjYWxsaW5nIHNldF9wYWdlX2RpcnR5KCkgd2l0aG91dCBhIGxvY2sgYW5kIHNv
IHJpc2sgZnMKPj4+Pj4+PiBjb3JydXB0aW9uLgo+Pj4+Pj4KPj4+Pj4+IFNvIGlmIHRyeWxvY2sg
cmFuZG9tbHkgZmFpbCB3ZSBnZXQgZGF0YSBjb3JydXB0aW9uIGluIHdoYXRldmVyIGRhdGEgc2V0
Cj4+Pj4+PiBhcHBsaWNhdGlvbiBpcyB3b3JraW5nIG9uLCB3aGljaCBpcyB3aGF0IHRoZSBvcmln
aW5hbCBwYXRjaCB3YXMgdHJ5aW5nCj4+Pj4+PiB0byBhdm9pZD8gQXJlIHdlIGFibGUgdG8gZGV0
ZWN0IHRoZSBiYWNraW5nIHN0b3JlIHR5cGUgc28gYXQgbGVhc3Qgd2UKPj4+Pj4+IGRvbid0IHJp
c2sgc2tpcHBpbmcgc2V0X3BhZ2VfZGlydHkgd2l0aCBhbm9ueW1vdXMvc2htZW1mcz8KPj4+Pj4K
Pj4+Pj4gcGFnZS0+bWFwcGluZz8/Pwo+Pj4+Cj4+Pj4gV291bGQgcGFnZS0+bWFwcGluZyB3b3Jr
PyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/Cj4+Pgo+Pj4gSXQgYmFzaWNhbGx5IHRlbGxzIHVzIGlm
IHRoZXJlIGlzIGEgZnMgYXJvdW5kOyBhbnl0aGluZyB0aGF0IGlzIHRoZSBtb3N0Cj4+PiBiYXNp
YyBvZiBtYWxsb2MgKGV2ZW4gdG1wZnMvc2htZW1mcyBoYXMgcGFnZS0+bWFwcGluZykuCj4+Cj4+
IE5vcm1hbCBtYWxsb2Mgc28gYW5vbnltb3VzIHBhZ2VzPyBPciB5b3UgbWVhbnQgZXZlcnl0aGlu
ZyBfYXBhcnRfIGZyb20KPj4gdGhlIG1vc3QgYmFzaWMgbWFsbG9jPwo+IAo+IEF5ZSBtaXNzZWQg
dGhlIG5vdC4KPiAKPj4+Pj4gV2Ugc3RpbGwgaGF2ZSB0aGUgaXNzdWUgdGhhdCBpZiB0aGVyZSBp
cyBhIG1hcHBpbmcgd2Ugc2hvdWxkIGJlIHRha2luZwo+Pj4+PiB0aGUgbG9jaywgYW5kIHdlIG1h
eSBoYXZlIGJvdGggYSBtYXBwaW5nIGFuZCBiZSBpbnNpZGUgdHJ5X3RvX3VubWFwKCkuCj4+Pj4K
Pj4+PiBJcyB0aGlzIGEgcHJvYmxlbT8gT24gYSBwYXRoIHdpdGggbWFwcGluZ3Mgd2UgdHJ5bG9j
ayBhbmQgc28gc29sdmUgdGhlCj4+Pj4gc2V0X2RpcnR5X2xvY2tlZCBhbmQgcmVjdXJzaXZlIGRl
YWRsb2NrIGlzc3VlcywgYW5kIHdpdGggbm8gbWFwcGluZ3MKPj4+PiB3aXRoIGFsd2F5cyBkaXJ0
eSB0aGUgcGFnZSBhbmQgYXZvaWQgZGF0YSBjb3JydXB0aW9uLgo+Pj4KPj4+IFRoZSBwcm9ibGVt
IGFzIEkgc2VlIGl0IGlzICFwYWdlLT5tYXBwaW5nIGFyZSBsaWtlbHkgYW4gaW5zaWduaWZpY2Fu
dAo+Pj4gbWlub3JpdHkgb2YgdXNlcnB0cjsgYXMgSSB0aGluayBldmVuIG1lbWZkIGFyZSBlc3Nl
bnRpYWxseSBzaG1lbWZzIChvcgo+Pj4gaHVnZXRsYmZzKSBhbmQgc28gaGF2ZSBtYXBwaW5ncy4K
Pj4KPj4gQmV0dGVyIHRoZW4gbm90aGluZywgbm8/IElmIGVhc3kgdG8gZG8uLgo+IAo+IEFjdHVh
bGx5LCBJIGVycmluZyBvbiB0aGUgb3Bwb3NpdGUgc2lkZS4gUGVla2luZyBhdCBtbS8gaW50ZXJu
YWxzIGRvZXMKPiBub3QgYm9kZSBjb25maWRlbmNlIGFuZCBmZWVscyBpbmRlZmVuc2libGUuIEkn
ZCBtdWNoIHJhdGhlciB0aHJvdyBteQo+IGhhbmRzIHVwIGFuZCBzYXkgInRoaXMgaXMgdGhlIGJl
c3Qgd2UgY2FuIGRvIHdpdGggdGhlIEFQSSBwcm92aWRlZCwKPiBwbGVhc2UgdGVsbCB1cyB3aGF0
IHdlIHNob3VsZCBoYXZlIGRvbmUuIiBUbyB3aGljaCB0aGUgYW5zd2VyIGlzCj4gcHJvYmFibHkg
dG8gbm90IGhhdmUgdXNlZCBndXAgaW4gdGhlIGZpcnN0IHBsYWNlIDp8CgoiIiIKLyoKICogc2V0
X3BhZ2VfZGlydHkoKSBpcyByYWN5IGlmIHRoZSBjYWxsZXIgaGFzIG5vIHJlZmVyZW5jZSBhZ2Fp
bnN0CiAqIHBhZ2UtPm1hcHBpbmctPmhvc3QsIGFuZCBpZiB0aGUgcGFnZSBpcyB1bmxvY2tlZC4g
IFRoaXMgaXMgYmVjYXVzZSBhbm90aGVyCiAqIENQVSBjb3VsZCB0cnVuY2F0ZSB0aGUgcGFnZSBv
ZmYgdGhlIG1hcHBpbmcgYW5kIHRoZW4gZnJlZSB0aGUgbWFwcGluZy4KICoKICogVXN1YWxseSwg
dGhlIHBhZ2UgX2lzXyBsb2NrZWQsIG9yIHRoZSBjYWxsZXIgaXMgYSB1c2VyLXNwYWNlIHByb2Nl
c3Mgd2hpY2gKICogaG9sZHMgYSByZWZlcmVuY2Ugb24gdGhlIGlub2RlIGJ5IGhhdmluZyBhbiBv
cGVuIGZpbGUuCiAqCiAqIEluIG90aGVyIGNhc2VzLCB0aGUgcGFnZSBzaG91bGQgYmUgbG9ja2Vk
IGJlZm9yZSBydW5uaW5nIHNldF9wYWdlX2RpcnR5KCkuCiAqLwppbnQgc2V0X3BhZ2VfZGlydHlf
bG9jayhzdHJ1Y3QgcGFnZSAqcGFnZSkKIiIiCgpDb3VsZCB3ZSBob2xkIGEgcmVmZXJlbmNlIHRv
IHBhZ2UtPm1hcHBpbmctPmhvc3Qgd2hpbGUgaGF2aW5nIHBhZ2VzIGFuZCB0aGVuIHdvdWxkIGJl
IG9rYXkgdG8gY2FsbCBwbGFpbiBzZXRfcGFnZV9kaXJ0eT8KClJlZ2FyZHMsCgpUdnJ0a28KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
