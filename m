Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F315827883
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 10:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244E389D2E;
	Thu, 23 May 2019 08:53:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC5E89D1D;
 Thu, 23 May 2019 08:53:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 01:53:02 -0700
X-ExtLoop1: 1
Received: from bbsisk-mobl1.amr.corp.intel.com (HELO intel.intel)
 ([10.251.93.195])
 by orsmga007.jf.intel.com with ESMTP; 23 May 2019 01:52:59 -0700
Date: Thu, 23 May 2019 11:52:58 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20190523085258.GB3110@intel.intel>
References: <20190523083929.6015-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523083929.6015-1-tvrtko.ursulin@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Fix test enumeration on
 legacy kernels
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLAoKT24gVGh1LCBNYXkgMjMsIDIwMTkgYXQgMDk6Mzk6MjlBTSArMDEwMCwgVHZy
dGtvIFVyc3VsaW4gd3JvdGU6Cj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiAKPiBXaGVyZSBlbmdpbmUgZGlzY292ZXJ5IGFuZCBjb250ZXh0IGVuZ2lu
ZSBtYXAgYXJlIG5vdCBzdXBwb3J0ZWQgd2UgbXVzdAo+IG5vdCBjYWxsIHRoZSBhc3NlcnRpbmcg
Z2VtX2NsYXNzX2luc3RhbmNlX3RvX2ViX2ZsYWdzIGZyb20gdGhlIGVuZ2luZQo+IGxpc3QgaW5p
dGFsaXplci4gKFNpbmNlIG5vdCBhbGwgZW5naW5lcyBjYW4gYmUgYWRkcmVzc2VkIHVzaW5nIHRo
ZSBsZWdhY3kKPiBleGVjYnVmIEFQSS4pCj4gCj4gSW5zdGVhZCBleHRyYWN0IHRoZSBjb2RlIGlu
dG8gbG93ZXIgbGV2ZWwgX19nZW1fY2xhc3NfaW5zdGFuY2VfdG9fZWJfZmxhZ3MKPiBoZWxwZXIg
d2hpY2ggY2FuIHJldHVybiBlcnJvcnMgdGhlIGNhbGxlciBjYW4gbWFudWFsbHkgaGFuZGxlIHRo
ZW4uCj4gCj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KPiBDYzogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpDaHJpcyB3
YXMgYWZ0ZXIgdGhpczogCgpodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gv
MzA2NDQ2LwoKQW5kaQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
