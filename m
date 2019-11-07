Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 788F9F3C48
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 00:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4299A6F80A;
	Thu,  7 Nov 2019 23:41:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 169236F80A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 23:41:06 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 15:41:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="196731086"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga008.jf.intel.com with ESMTP; 07 Nov 2019 15:41:05 -0800
Date: Thu, 7 Nov 2019 15:41:05 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20191107234105.GA65581@orsosgc001.amr.corp.intel.com>
References: <20191107232234.5641-1-umesh.nerlige.ramappa@intel.com>
 <157316945131.6935.7754884674203739014@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157316945131.6935.7754884674203739014@skylake-alporthouse-com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Configure OAR controls for
 specific context
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

T24gVGh1LCBOb3YgMDcsIDIwMTkgYXQgMTE6MzA6NTFQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMTEtMDcgMjM6MjI6MzQp
Cj4+IEl0IHR1cm5zIG91dCB0aGF0IHRoZSBPQVIgQ09OVFJPTCByZWdpc3RlciBpcyBub3QgZ2V0
dGluZyBjb25maWd1cmVkCj4+IGNvcnJlY3RseSBpbiBjb25qdW5jdGlvbiB3aXRoIHRoZSBjb250
ZXh0IHNhdmUvcmVzdG9yZSBiaXQuIFdoZW4KPj4gbWVhc3VyaW5nIHdvcmsgZm9yIGEgc2luZ2xl
IGNvbnRleHQsIHRoZSBPQVIgY291bnRlcnMgZG8gbm90IGluY3JlbWVudC4KPj4KPj4gQ29uZmln
dXJlIE9BUiBmb3JtYXQgYW5kIGVuYWJsZSBPQVIgY291bnRlcnMgYXQgdGhlIHNhbWUgdGltZSBh
cwo+PiBlbmFibGluZyBjb250ZXh0IHNhdmUvcmVzdG9yZSBmb3IgT0FSIGNvdW50ZXJzLgo+Cj5E
aWQgeW91IHdyaXRlIGEgdGVzdCBjYXNlIHRvIGNhcHR1cmUgdGhpcyBidWcgZm9yIHBvc3Rlcml0
eT8gSWYgc28sCj5wbGVhc2UgaW5jbHVkZSBhIFRlc3RjYXNlOiBsaW5rLiBJZiBub3QsIHBsZWFz
ZSBkbyBzbyA6KQoKSSBkaWQsIGFsdGhvdWdoIHRoZSB0ZXN0IGlzIGFsc28gdXAgZm9yIHJldmll
dyBoZXJlIGluIGFuIGlndCBzZXJpZXMgLSAKaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Au
b3JnL3BhdGNoLzMzOTUxNC8KClRoYW5rcywKVW1lc2gKCj4tQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
