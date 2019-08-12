Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5098A67E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 20:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 005FE6E5A6;
	Mon, 12 Aug 2019 18:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575BF6E5A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 18:47:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 11:47:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,378,1559545200"; d="scan'208";a="180952328"
Received: from wingcheu-mobl.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.152.209])
 by orsmga006.jf.intel.com with ESMTP; 12 Aug 2019 11:47:30 -0700
Date: Mon, 12 Aug 2019 11:47:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190812184730.eg72eqnhrjsunzvs@ldmartin-desk1>
References: <20190812175405.14479-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812175405.14479-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Fix missing parentheses on
 TGL_TRANS_DDI_FUNC_CTL_VAL_TO_PORT
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

T24gTW9uLCBBdWcgMTIsIDIwMTkgYXQgMTA6NTQ6MDVBTSAtMDcwMCwgSm9zZSBTb3V6YSB3cm90
ZToKPkluIHRoaXMgY2FzZSB3ZSB3YW50IHRvIGFwcGx5IHRoZSBtYXNrIGFuZCB0aGVuIHNoaWZ0
IHNvIHRoZQo+cGFyZW50aGVzZXMgaXMgbmVlZGVkLgo+Cj5TUEFOSyEgU1BBTkshIFNQQU5LISBO
YXVnaHR5IHByb2dyYW1tZXIhCj4KPkZpeGVzOiA5NzQ5YTViNmMwOWYgKCJkcm0vaTkxNS90Z2w6
IEZpeCB0aGUgcmVhZCBvZiB0aGUgRERJIHRoYXQgdHJhbnNjb2RlciBpcyBhdHRhY2hlZCB0byIp
Cj5DYzogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj5DYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj5TaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNo
aQoKPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAyICstCj4gMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4KPmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+aW5kZXggNGE5NDdiZDBhMjk0Li5kZWY2ZGJkYzdlMmUgMTAwNjQ0Cj4tLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlZy5oCj5AQCAtOTQzMyw3ICs5NDMzLDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7
Cj4gI2RlZmluZSAgVFJBTlNfRERJX1NFTEVDVF9QT1JUKHgpCSgoeCkgPDwgVFJBTlNfRERJX1BP
UlRfU0hJRlQpCj4gI2RlZmluZSAgVEdMX1RSQU5TX0RESV9TRUxFQ1RfUE9SVCh4KQkoKCh4KSAr
IDEpIDw8IFRHTF9UUkFOU19ERElfUE9SVF9TSElGVCkKPiAjZGVmaW5lICBUUkFOU19ERElfRlVO
Q19DVExfVkFMX1RPX1BPUlQodmFsKQkgKCgodmFsKSAmIFRSQU5TX0RESV9QT1JUX01BU0spID4+
IFRSQU5TX0RESV9QT1JUX1NISUZUKQo+LSNkZWZpbmUgIFRHTF9UUkFOU19ERElfRlVOQ19DVExf
VkFMX1RPX1BPUlQodmFsKSAoKCh2YWwpICYgVEdMX1RSQU5TX0RESV9QT1JUX01BU0sgPj4gVEdM
X1RSQU5TX0RESV9QT1JUX1NISUZUKSAtIDEpCj4rI2RlZmluZSAgVEdMX1RSQU5TX0RESV9GVU5D
X0NUTF9WQUxfVE9fUE9SVCh2YWwpICgoKCh2YWwpICYgVEdMX1RSQU5TX0RESV9QT1JUX01BU0sp
ID4+IFRHTF9UUkFOU19ERElfUE9SVF9TSElGVCkgLSAxKQo+ICNkZWZpbmUgIFRSQU5TX0RESV9N
T0RFX1NFTEVDVF9NQVNLCSg3IDw8IDI0KQo+ICNkZWZpbmUgIFRSQU5TX0RESV9NT0RFX1NFTEVD
VF9IRE1JCSgwIDw8IDI0KQo+ICNkZWZpbmUgIFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EVkkJKDEg
PDwgMjQpCj4tLSAKPjIuMjIuMAo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
