Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5EFE3C99
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 21:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E982C6E781;
	Thu, 24 Oct 2019 19:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9FE96E781
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 19:55:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 12:55:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,225,1569308400"; d="scan'208";a="282044094"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga001.jf.intel.com with ESMTP; 24 Oct 2019 12:55:46 -0700
Date: Thu, 24 Oct 2019 12:55:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191024195544.ema3hn6uvrvmsl5e@ldmartin-desk1.jf.intel.com>
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
 <20191024195122.22877-2-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024195122.22877-2-lucas.demarchi@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: add new gen12 dgfx platform
 macro
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
Cc: Lucas De Marchi <lucas.de.marchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMTI6NTE6MjBQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+RnJvbTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVsLmNvbT4K
Pgo+QWRkIGEgbmV3IG1hY3JvIGZvciBHRU4xMiBwbGF0Zm9ybXMgdG8gYmUgZ3JvdXBlZCB1bmRl
ciBkZ2Z4IGZlYXR1cmUKPnNldC4KPgo+U2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0
dWFydC5zdW1tZXJzQGludGVsLmNvbT4KPlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8
bHVjYXMuZGUubWFyY2hpQGludGVsLmNvbT4KCnRoaXMgc2hvdWxkIGFjdHVhbGx5IGJlCgpTaWdu
ZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCgpM
dWNhcyBEZSBNYXJjaGkKCj4tLS0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwg
NCArKysrCj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Cj5kaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMKPmluZGV4IGY5YTNiZmU2ODY4OS4uMDQzMDdlMTExZjU3IDEwMDY0NAo+LS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYwo+QEAgLTgyMiw2ICs4MjIsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBpbnRlbF90aWdlcmxha2VfMTJfaW5mbyA9IHsKPiAJLmhhc19ycHMg
PSBmYWxzZSwgLyogWFhYIGRpc2FibGVkIGZvciBkZWJ1Z2dpbmcgKi8KPiB9Owo+Cj4rI2RlZmlu
ZSBHRU4xMl9ER0ZYX0ZFQVRVUkVTIFwKPisJR0VOMTJfRkVBVFVSRVMsIFwKPisJLmlzX2RnZngg
PSAxCj4rCj4gI3VuZGVmIEdFTgo+ICN1bmRlZiBQTEFURk9STQo+Cj4tLSAKPjIuMjMuMAo+Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
