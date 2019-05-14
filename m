Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEB31C639
	for <lists+intel-gfx@lfdr.de>; Tue, 14 May 2019 11:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B7189265;
	Tue, 14 May 2019 09:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5692189254;
 Tue, 14 May 2019 09:38:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 02:38:27 -0700
X-ExtLoop1: 1
Received: from lstanule-mobl1.ger.corp.intel.com (HELO [10.252.8.33])
 ([10.252.8.33])
 by orsmga007.jf.intel.com with ESMTP; 14 May 2019 02:38:25 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1af21869-9dbb-4c9e-0e43-665f69eb9b44@linux.intel.com>
Date: Tue, 14 May 2019 10:39:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508100958.32637-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 01/16] i915/gem_exec_schedule:
 Semaphore priority fixups
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

Ck9uIDA4LzA1LzIwMTkgMTE6MDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBBIHN0cmF5IGdpdCBh
ZGQgZnJvbSBteSB0ZXN0IGJveGVuIC0tIHdlIHdlcmUgYmVpbmcgY2FyZWZ1bCBlbm91Z2ggdG8K
PiBwcmVzZXJ2ZSBwcmlvcml0eSBhbmQgb3JkZXJpbmcgdG8gbWF0Y2ggdGhlIGltcGxpY2l0IHBv
bGljaWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IC0tLQo+ICAgdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIHwgMiAr
Kwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVk
dWxlLmMKPiBpbmRleCAzMzBlOGE1NGUuLjc3YTI2NGE2YSAxMDA2NDQKPiAtLS0gYS90ZXN0cy9p
OTE1L2dlbV9leGVjX3NjaGVkdWxlLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVk
dWxlLmMKPiBAQCAtNTA3LDYgKzUwNyw3IEBAIHN0YXRpYyB2b2lkIHNlbWFwaG9yZV9yZXNvbHZl
KGludCBpOTE1KQo+ICAgCQl1aW50MzJfdCBoYW5kbGUsIGNhbmNlbDsKPiAgIAkJdWludDMyX3Qg
KmNzLCAqbWFwOwo+ICAgCQlpZ3Rfc3Bpbl90ICpzcGluOwo+ICsJCWludDY0X3QgcG9rZSA9IDE7
Cj4gICAKPiAgIAkJaWYgKCFnZW1fY2FuX3N0b3JlX2R3b3JkKGk5MTUsIGVuZ2luZSkpCj4gICAJ
CQljb250aW51ZTsKPiBAQCAtNTg3LDYgKzU4OCw3IEBAIHN0YXRpYyB2b2lkIHNlbWFwaG9yZV9y
ZXNvbHZlKGludCBpOTE1KQo+ICAgCQllYi5idWZmZXJfY291bnQgPSAyOwo+ICAgCQllYi5yc3Zk
MSA9IGlubmVyOwo+ICAgCQlnZW1fZXhlY2J1ZihpOTE1LCAmZWIpOwo+ICsJCWdlbV93YWl0KGk5
MTUsIGNhbmNlbCwgJnBva2UpOwo+ICAgCQlnZW1fY2xvc2UoaTkxNSwgY2FuY2VsKTsKPiAgIAo+
ICAgCQlnZW1fc3luYyhpOTE1LCBoYW5kbGUpOyAvKiBUbyBoYW5nIHVubGVzcyBjYW5jZWwgcnVu
cyEgKi8KPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
