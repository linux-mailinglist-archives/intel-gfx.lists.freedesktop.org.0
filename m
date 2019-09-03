Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 413EBA605E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 06:59:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD276899D6;
	Tue,  3 Sep 2019 04:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91723899D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 04:59:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 21:59:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,461,1559545200"; d="scan'208";a="357624700"
Received: from jlahtine-mobl.ger.corp.intel.com (HELO localhost)
 ([10.237.66.136])
 by orsmga005.jf.intel.com with ESMTP; 02 Sep 2019 21:59:19 -0700
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <20190902182916.17487-1-jani.nikula@intel.com>
References: <20190902182916.17487-1-jani.nikula@intel.com>
Message-ID: <156748675771.3530.2314662812384761636@pvandenp-mobl1.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Tue, 03 Sep 2019 07:59:17 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: add plural() helper for logging
 plurals
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOS0wMiAyMToyOToxNikKPiBBZGQgYSBoZWxwZXIg
aW5zdGVhZCBvZiBvcGVuIGNvZGluZyB0aGUgcGx1cmFscyBpbiBkZWJ1ZyBsb2dzLiBBbHNvCj4g
Zml4ZXMgdGhlIGNhc2UgZm9yICIwIGRpc3BsYXkgcGlwZXMgYXZhaWxhYmxlLiIKPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IAo+IC0tLQo+
IAo+IEkgc3R1bWJsZWQgdXBvbiB0aGUgcGlwZXMgb25lIHdoaWxlIHdvcmtpbmcgb24gLT5udW1f
cGlwZXMuIEkgaG9uZXN0bHkKPiB0aG91Z2h0IHdlJ2QgaGF2ZSBtb3JlIHVzZXJzIHRoYW4gdGhp
cywgYnV0IHRvIG15IHN1cnByaXNlIGNvdWxkbid0IGZpbmQKPiBhbnkuIFBlcmhhcHMgdGhpcyBp
cyBub3Qgd29ydGggaXQgYWZ0ZXIgYWxsLgoKSnVzdCBhIGRlYnVnIHN0cmluZywgbGVzcyBoYXNz
bGUgd2l0aCAiZGlzcGxheSBwaXBlcyBhdmFpbGFibGU6ICVkIj8KClJlZ2FyZHMsIEpvb25hcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
