Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B319A3ACC7D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 15:43:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86F916EA09;
	Fri, 18 Jun 2021 13:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 285AE6EA09;
 Fri, 18 Jun 2021 13:43:05 +0000 (UTC)
IronPort-SDR: H8pmQMHNh5W4/bQYPAswEGbMNOFFCOj2+r+wjTrEiawrGJy55Xuo7xItLMomMbx6HCQBq7iDGD
 2MBREM6s+DaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="204725859"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="204725859"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:43:04 -0700
IronPort-SDR: 2g9qF2PdFqs/4gk7FjE6iZ5ctHXimqbehOKhVhFXE/fjdlHZlcW2/HtWkZk/XnMsMXaysMUBU6
 qwywsNpEr17Q==
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="451398894"
Received: from murphyke-mobl1.ger.corp.intel.com (HELO [10.213.237.184])
 ([10.213.237.184])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 06:43:03 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210618133150.700375-1-matthew.auld@intel.com>
 <a188086b-0f54-db4c-7c1c-06c29de8d5a6@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <b1714503-e8fd-6099-3eac-3fe563a0bd48@intel.com>
Date: Fri, 18 Jun 2021 14:43:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a188086b-0f54-db4c-7c1c-06c29de8d5a6@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: add back the
 selftest() hook for the buddy
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTgvMDYvMjAyMSAxNDozNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gSGkuCj4gCj4g
T24gNi8xOC8yMSAzOjMxIFBNLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4+IFdoZW4gd2UgcmVzdXJy
ZWN0ZWQgdGhlIHNlbGZ0ZXN0IHdlIGZvcmdvdCB0byBhZGQgYmFjayB0aGUgc2VsZnRlc3QoKQo+
PiBob29rLCBtZWFuaW5nIHRoZSB0ZXN0IGlzIG5vdCBjdXJyZW50bHkgcnVuLgo+Pgo+PiBSZXBv
cnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYt
Ynk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPj4gQ2M6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAKPiBEbyB3ZSBu
ZWVkIGEgRml4ZXM6IHRhZz8KCk5vdCBjb21wbGV0ZWx5IHN1cmUgc2luY2UgdGhpcyBpcyBqdXN0
IGZvciB0aGUgc2VsZnRlc3RzLCBzbyBzaG91bGQgaGF2ZSAKemVybyBpbXBhY3QgZm9yICJub3Jt
YWwiIHVzZXJzLCBhbmQgc28gYWxzbyBubyBuZWVkIHRvIGJhY2twb3J0IG9yIHF1ZXVlIApmb3Ig
Zml4ZXMgSSB0aGluay4gSSdsbCBhZGQgYSBSZWZlcmVuY2VzOiBsaW5rLgoKPiAKPiBSZXZpZXdl
ZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
Pgo+IAo+IAo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
bW9ja19zZWxmdGVzdHMuaCB8IDEgKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X21vY2tfc2VsZnRlc3RzLmggCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfbW9ja19zZWxmdGVzdHMuaAo+PiBpbmRleCAzNGU1Y2FmMzgwOTMuLjY3NTliNTYwODZmYiAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfbW9ja19z
ZWxmdGVzdHMuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9t
b2NrX3NlbGZ0ZXN0cy5oCj4+IEBAIC0zNCwzICszNCw0IEBAIHNlbGZ0ZXN0KGd0dCwgaTkxNV9n
ZW1fZ3R0X21vY2tfc2VsZnRlc3RzKQo+PiDCoCBzZWxmdGVzdChodWdlcGFnZXMsIGk5MTVfZ2Vt
X2h1Z2VfcGFnZV9tb2NrX3NlbGZ0ZXN0cykKPj4gwqAgc2VsZnRlc3QoY29udGV4dHMsIGk5MTVf
Z2VtX2NvbnRleHRfbW9ja19zZWxmdGVzdHMpCj4+IMKgIHNlbGZ0ZXN0KG1lbW9yeV9yZWdpb24s
IGludGVsX21lbW9yeV9yZWdpb25fbW9ja19zZWxmdGVzdHMpCj4+ICtzZWxmdGVzdChidWRkeSwg
aTkxNV9idWRkeV9tb2NrX3NlbGZ0ZXN0cykKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
