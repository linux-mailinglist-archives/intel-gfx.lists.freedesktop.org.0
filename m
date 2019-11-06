Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 462C2F0C05
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 03:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEFB76EBC8;
	Wed,  6 Nov 2019 02:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA5F16EBC8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 02:28:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 18:28:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,272,1569308400"; d="scan'208";a="226520846"
Received: from nvishwa1-desk.sc.intel.com ([10.3.160.185])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2019 18:28:18 -0800
Date: Tue, 5 Nov 2019 18:16:42 -0800
From: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20191106021641.GF19940@nvishwa1-DESK.sc.intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-4-niranjana.vishwanathapura@intel.com>
 <157300060718.21573.2346937645489800091@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157300060718.21573.2346937645489800091@skylake-alporthouse-com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTI6MzY6NDdBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBOaXJhbmphbmEgVmlzaHdhbmF0aGFwdXJhICgyMDE5LTExLTA2IDAwOjAy
OjA1KQo+PiAnY3R4XC0+dm0nIGlzIHJjdSBwcm90ZWN0ZWQsIHNvIHVzZSByY3VfZGVyZWZlcmVu
Y2UgaW5zaWRlCj4+IHJlYWQgc2lkZSBjcml0aWNhbCBzZWN0aW9uLiBJdCBmaXhlcyBhIHNwYXJz
ZSB3YXJuaW5nLgo+Pgo+PiBDYzogQ2hyaXMgUCBXaWxzb24gPGNocmlzLnAud2lsc29uQGludGVs
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTmlyYW5qYW5hIFZpc2h3YW5hdGhhcHVyYSA8bmlyYW5q
YW5hLnZpc2h3YW5hdGhhcHVyYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDkgKysrKystLS0tCj4+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPj4gaW5kZXggZGU2ZTU1YWY4MmNmLi5k
M2E2MjJmNjBmZDkgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NvbnRleHQuYwo+PiBAQCAtMTAwMiwxMiArMTAwMiwxMyBAQCBzdGF0aWMgaW50IGdldF9wcGd0
dChzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmaWxlX3ByaXYsCj4+ICAgICAgICAgc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07Cj4+ICAgICAgICAgaW50IHJldDsKPj4KPj4gLSAg
ICAgICBpZiAoIXJjdV9hY2Nlc3NfcG9pbnRlcihjdHgtPnZtKSkKPj4gLSAgICAgICAgICAgICAg
IHJldHVybiAtRU5PREVWOwo+Cj5UaGlzIGlzIGNvcnJlY3RseSBzZXJpYWxpc2VkIGJ5IHRoZSBj
YWxsZXIuCgpPaywgaXMgdGhpcyB3b3J0aCBmaXhpbmcgdGhlIHNwYXJzZSB3YXJuaW5nPwoKPi1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
