Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA17EB4BA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 17:29:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F26A6EF14;
	Thu, 31 Oct 2019 16:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 009456EF14
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 16:29:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 09:29:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="199065824"
Received: from unknown (HELO sdutt) ([10.165.21.200])
 by fmsmga008.fm.intel.com with ESMTP; 31 Oct 2019 09:29:54 -0700
Date: Thu, 31 Oct 2019 09:23:52 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20191031162352.GA6444@sdutt>
References: <20191031013040.25803-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031013040.25803-1-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: drop lrc header page
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

T24gV2VkLCBPY3QgMzAsIDIwMTkgYXQgMDY6MzA6MzlQTSAtMDcwMCwgRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyB3cm90ZToKPlJlY2VudCBHdUMgYmluYXJpZXMgKGluY2x1ZGluZyBhbGwgdGhlIG9u
ZXMgd2UncmUgY3VycmVudGx5IHVzaW5nKQo+ZG9uJ3QgcmVxdWlyZSB0aGlzIHNoYXJlZCBhcmVh
IGFueW1vcmUsIGhhdmluZyBtb3ZlZCB0aGUgcmVsZXZhbnQKPmVudHJpZXMgaW50byB0aGUgc3Rh
Z2UgcG9vbCBpbnN0ZWFkLiBpOTE1IGl0c2VsZiBkb2Vzbid0IHdyaXRlCj5hbnl0aGluZyBpbnRv
IGl0IGVpdGhlciwgc28gd2UgY2FuIHNhZmVseSBkcm9wIGl0Lgo+Cj5TaWduZWQtb2ZmLWJ5OiBE
YW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Q2M6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+Q2M6IEpvaG4gSGFycmlzb24g
PEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj5DYzogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5i
cm9zdEBpbnRlbC5jb20+Cj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
YyAgICAgICAgfCAyMiArKystLS0tLS0tLS0tLS0tLS0tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuaCAgICAgICAgfCAyMyArKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jIHwgIDMgLS0tCj4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Z0L3NjaGVkdWxlci5jICAgICAgIHwgIDQgKystLQo+IDQgZmlsZXMg
Y2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0NSBkZWxldGlvbnMoLSkKPgoKVGhpcyBwYXRjaCB3
b3JrcyB3aXRoIHRoZSBHdUMgcmVkZXNpZ24gd29yayBiZWluZyBkb25lLgoKUmV2aWV3ZWQtYnk6
IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
