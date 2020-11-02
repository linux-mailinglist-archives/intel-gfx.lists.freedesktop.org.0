Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F302A27A0
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 11:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E70926E462;
	Mon,  2 Nov 2020 10:00:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47F36E462
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 10:00:34 +0000 (UTC)
IronPort-SDR: cIe9RxmJCXt1w3N/GE+JkmL8x0sJZ/7XBeNDu+Nx894Ilciw8OyR7G9b8StoIe9at9weYTFLTj
 iBtA5Po0Tkfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="253568597"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="253568597"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 02:00:23 -0800
IronPort-SDR: cqRCNFzPG89ozbRCOM0tyiDVZ2QijVBqG0ZZl93w5n7v7vZPM/P9VGW+5WCKoDalLRrZMn6s+f
 Ygf+Pub9N3jg==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="537958823"
Received: from vanderss-mobl1.ger.corp.intel.com (HELO
 W10-45-itb-67.SSPE.ch.intel.com) ([10.249.254.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 02:00:22 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-30-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <8192f4ed-0a2e-7acb-1598-9cfc6d5acc90@linux.intel.com>
Date: Mon, 2 Nov 2020 11:00:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-30-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 29/61] drm/i915: Fix pread/pwrite to work
 with new locking rules.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBXZSBhcmUg
cmVtb3Zpbmcgb2JqLT5tbS5sb2NrLCBhbmQgbmVlZCB0byB0YWtlIHRoZSByZXNlcnZhdGlvbiBs
b2NrCj4gYmVmb3JlIHdlIGNhbiBwaW4gcGFnZXMuIE1vdmUgdGhlIHBpbm5pbmcgcGFnZXMgaW50
byB0aGUgaGVscGVyLCBhbmQKPiBtZXJnZSBndHQgcHdyaXRlL3ByZWFkIHByZXBhcmF0aW9uIGFu
ZCBjbGVhbnVwIHBhdGhzLgo+Cj4gVGhlIGZlbmNlIGxvY2sgaXMgYWxzbyByZW1vdmVkOyBpdCB3
aWxsIGNvbmZsaWN0IHdpdGggZmVuY2UgYW5ub3RhdGlvbnMsCj4gYmVjYXVzZSBvZiBtZW1vcnkg
YWxsb2NhdGlvbnMgZG9uZSB3aGVuIHBhZ2VmYXVsdGluZyBpbnNpZGUgY29weV8qX3VzZXIuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVs
bHN0cm9tQGxpbnV4LmludGVsLmNvbT4KCklmIG5lZWRlZCwgaW4gdGhlIGZ1dHVyZSB3ZSBtaWdo
dCB3YW50IHRvIGxvb2sgYXQgYSB3YXkgdG8ga2VlcCB0aGUgCm9iamVjdCBsb2NrIGFyb3VuZCB0
aGUgc2hvcnQtdGVybSBwaW5uaW5nLiBBdCBsZWFzdCBmb3IgdGhlIApub24tcGFnZS1mYXVsdGlu
ZyBjYXNlLgoKL1Rob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
