Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E2FF0B19
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 01:36:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0A406EB9C;
	Wed,  6 Nov 2019 00:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 244BF6EB9B
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 00:36:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 16:36:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="192287441"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.9.165])
 by orsmga007.jf.intel.com with ESMTP; 05 Nov 2019 16:36:49 -0800
MIME-Version: 1.0
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris.p.wilson@intel.com>
In-Reply-To: <20191106000205.22480-4-niranjana.vishwanathapura@intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-4-niranjana.vishwanathapura@intel.com>
Message-ID: <157300060718.21573.2346937645489800091@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 00:36:47 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use rcu_dereference for rcu
 protected pointer
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBOaXJhbmphbmEgVmlzaHdhbmF0aGFwdXJhICgyMDE5LTExLTA2IDAwOjAyOjA1KQo+
ICdjdHhcLT52bScgaXMgcmN1IHByb3RlY3RlZCwgc28gdXNlIHJjdV9kZXJlZmVyZW5jZSBpbnNp
ZGUKPiByZWFkIHNpZGUgY3JpdGljYWwgc2VjdGlvbi4gSXQgZml4ZXMgYSBzcGFyc2Ugd2Fybmlu
Zy4KPiAKPiBDYzogQ2hyaXMgUCBXaWxzb24gPGNocmlzLnAud2lsc29uQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBOaXJhbmphbmEgVmlzaHdhbmF0aGFwdXJhIDxuaXJhbmphbmEudmlzaHdh
bmF0aGFwdXJhQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYyB8IDkgKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fY29udGV4dC5jCj4gaW5kZXggZGU2ZTU1YWY4MmNmLi5kM2E2MjJmNjBmZDkgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBAQCAt
MTAwMiwxMiArMTAwMiwxMyBAQCBzdGF0aWMgaW50IGdldF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVf
ZmlsZV9wcml2YXRlICpmaWxlX3ByaXYsCj4gICAgICAgICBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3Nw
YWNlICp2bTsKPiAgICAgICAgIGludCByZXQ7Cj4gIAo+IC0gICAgICAgaWYgKCFyY3VfYWNjZXNz
X3BvaW50ZXIoY3R4LT52bSkpCj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwoKVGhp
cyBpcyBjb3JyZWN0bHkgc2VyaWFsaXNlZCBieSB0aGUgY2FsbGVyLgotQ2hyaXMKLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCkludGVsIENvcnBvcmF0aW9uIChVSykgTGltaXRlZApSZWdpc3RlcmVkIE5vLiAxMTM0OTQ1
IChFbmdsYW5kKQpSZWdpc3RlcmVkIE9mZmljZTogUGlwZXJzIFdheSwgU3dpbmRvbiBTTjMgMVJK
ClZBVCBObzogODYwIDIxNzMgNDcKClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5
IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGlu
dGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmlldyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJz
IGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNp
cGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
