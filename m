Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8070523154
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 12:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3135588A36;
	Mon, 20 May 2019 10:30:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C8588A36;
 Mon, 20 May 2019 10:30:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 03:30:21 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 20 May 2019 03:30:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190517112526.6738-1-tvrtko.ursulin@linux.intel.com>
 <20190517112526.6738-3-tvrtko.ursulin@linux.intel.com>
 <155812085634.1890.3714005121262386142@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <00f38c01-4692-909c-993e-7f348b8e5888@linux.intel.com>
Date: Mon, 20 May 2019 11:30:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155812085634.1890.3714005121262386142@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 02/25] trace.pl: Ignore signaling on
 non i915 fences
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE3LzA1LzIwMTkgMjA6MjAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTE3IDEyOjI1OjAzKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBnZW1fd3NpbSB1c2VzIHRoZSBzd19mZW5j
ZSB0aW1lbGluZSBhbmQgY29uZnVzZXMgdGhlIHNjcmlwdC4KPiAKPiBzd19zeW5jCj4gCj4gSG93
IGRvZXMgdGhpcyBmYXJlIHdpdGggY2xmbHVzaCBmZW5jZXMgKHdoaWNoIGFyZSAuZHJpdmVyPSJp
OTE1IikgYW5kCj4gYWxsIG9mIHRoZSBmdXR1cmUgLmRyaXZlcj0iaTkxNSIgZmVuY2VzPwo+IAo+
IExvb2tzIGxpa2Ugd2UgYXJlIHN0aWxsIHByb25lIHRvIGhpdHRpbmcgdGhhdCBkaWUuIChTaG91
bGQgZGllIHByZXR0eQo+IHF1aWNrIG9uICFsbGMpCgpPa2F5IEkgaGF2ZSB0byB1c2UgdGhlIHRp
bWVsaW5lIG5hbWUgYXMgd2VsbCwgdGhhbmtzIQoKUmVnYXJkcywKClR2cnRrbwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
