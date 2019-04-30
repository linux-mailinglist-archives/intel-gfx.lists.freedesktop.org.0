Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B479DF0C3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 08:57:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37B7D89157;
	Tue, 30 Apr 2019 06:57:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1763089157
 for <Intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 06:57:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Apr 2019 23:57:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,412,1549958400"; d="scan'208";a="140016780"
Received: from jbartcza-mobl.ger.corp.intel.com (HELO [10.251.88.64])
 ([10.251.88.64])
 by orsmga006.jf.intel.com with ESMTP; 29 Apr 2019 23:57:42 -0700
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20190415114307.1356-1-tvrtko.ursulin@linux.intel.com>
 <20190418100634.984-1-tvrtko.ursulin@linux.intel.com>
 <155660718209.4262.16653554075363334160@jlahtine-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <592d13b5-3c9c-9d72-dbb5-ad678ef53f3d@linux.intel.com>
Date: Tue, 30 Apr 2019 07:57:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155660718209.4262.16653554075363334160@jlahtine-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/icl: Whitelist
 GEN9_SLICE_COMMON_ECO_CHICKEN1
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
Cc: Anuj Phogat <anuj.phogat@intel.com>, kevin.ma@intel.com,
 xiaogang.li@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDMwLzA0LzIwMTkgMDc6NTMsIEpvb25hcyBMYWh0aW5lbiB3cm90ZToKPiBRdW90aW5nIFR2
cnRrbyBVcnN1bGluICgyMDE5LTA0LTE4IDEzOjA2OjM0KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBXYUVuYWJsZVN0YXRlQ2FjaGVSZWRp
cmVjdFRvQ1MgY29udGV4dCB3b3JrYXJvdW5kIGNvbmZpZ3VyZXMgdGhlIEwzIGNhY2hlCj4+IHRv
IGJlbmVmaXQgM2Qgd29ya2xvYWRzIGJ1dCBtZWRpYSBoYXMgZGlmZmVyZW50IHJlcXVpcmVtZW50
cy4KPj4KPj4gUmVtb3ZlIHRoZSB3b3JrYXJvdW5kIGFuZCB3aGl0ZWxpc3QgdGhlIHJlZ2lzdGVy
IHRvIGFsbG93IGFueSB1c2Vyc3BhY2UKPj4gY29uZmlndXJlIHRoZSBiZWhhdmlvdXIgdG8gdGhl
aXIgbGlraW5nLgo+Pgo+PiB2MjoKPj4gICAqIFJlbW92ZSB0aGUgd29ya2Fyb3VuZCBhcGFydCBm
cm9tIGFkZGluZyB0aGUgd2hpdGVsaXN0Lgo+IAo+IFBsZWFzZSBhZGQgdGhlIGluZm9ybWF0aW9u
IHRoYXQgcmVtb3ZhbCBvZiB0aGUgd29ya2Fyb3VuZCBkb2Vzbid0IGNhdXNlCj4gYW55IGlsbCBl
ZmZlY3RzIHdpdGggb2xkIE1lc2EgYW5kIGFkZCBGaXhlczosIHNvIHRoaXMgZ2V0cyBwaWNrZWQg
dXAgdG8KPiA1LjIuIE5vIG5lZWQgZm9yIHN0YWJsZSBhcyBJY2VsYWtlIGlzIGFscGhhX3N1cHBv
cnQgYmVmb3JlIDUuMgo+IAo+IFdpdGggdGhvc2UgY2hhbmdlcyB0aGlzIGlzOgo+IAo+IFJldmll
d2VkLWJ5OiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+
CgpQdXNoZWQuIFRoYW5rcyBmb3IgYWxsIHRoZSB0ZXN0aW5nIG9uIGJvdGggc2lkZXMhCgpSZWdh
cmRzLAoKVHZydGtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
