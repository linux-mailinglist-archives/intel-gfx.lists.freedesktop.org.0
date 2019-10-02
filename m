Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C529C8CF3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F0C86E200;
	Wed,  2 Oct 2019 15:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E21F6E200;
 Wed,  2 Oct 2019 15:33:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Oct 2019 08:33:12 -0700
X-IronPort-AV: E=Sophos;i="5.64,574,1559545200"; d="scan'208";a="190976218"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 02 Oct 2019 08:33:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191002111943.12227-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <153f99a4-2cf1-52ae-e87b-0a489d63aad2@linux.intel.com>
Date: Wed, 2 Oct 2019 16:33:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191002111943.12227-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Relax timeout for
 forced resets
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzEwLzIwMTkgMTI6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBJdCBhcHBlYXJzIHdl
IGNhbm5vdCBjb25zaXN0ZW50bHkgaGl0IG91ciBzZWxmLWltcG9zZWQgUW9TIHRhcmdldCBvZiAy
cwo+IGZvciBwZXJmb3JtaW5nIHRoZSByZXNldCAobXkgdGhlb3J5IGlzIHRoYXQgaXMgc29tZSBS
Q1Ugc2NoZWR1bGluZwo+IHF1aXJrKSwgc28gcmVsYXggdGhlIGFzc2VydGlvbiB0byBhIG1lYXNs
eSAxMHMuCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19i
dWcuY2dpP2lkPTEwNTk1Nwo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgdGVzdHMvaTkxNS9nZW1fZWlvLmMgfCAyICstCj4g
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZWlvLmMgYi90ZXN0cy9pOTE1L2dlbV9laW8uYwo+IGlu
ZGV4IDdhZGI1NDY3Zi4uMDA3YjlmYjcwIDEwMDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2Vp
by5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fZWlvLmMKPiBAQCAtODIsNyArODIsNyBAQCBzdGF0
aWMgdm9pZCB0cmlnZ2VyX3Jlc2V0KGludCBmZCkKPiAgIAlpZ3RfZHJvcF9jYWNoZXNfc2V0KGZk
LCBEUk9QX0FDVElWRSk7Cj4gICAKPiAgIAkvKiBXZSBleHBlY3QgZm9yY2VkIHJlc2V0IGFuZCBo
ZWFsdGggY2hlY2sgdG8gYmUgcXVpY2suICovCj4gLQlpZ3RfYXNzZXJ0KGlndF9zZWNvbmRzX2Vs
YXBzZWQoJnRzKSA8IDIpOwo+ICsJaWd0X2Fzc2VydF9sdGUoaWd0X3NlY29uZHNfZWxhcHNlZCgm
dHMpLCAxMCk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyB2b2lkIG1hbnVhbF9oYW5nKGludCBkcm1f
ZmQpCj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
