Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FFAD1433
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 18:37:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56766EA0F;
	Wed,  9 Oct 2019 16:37:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B57C6EA0F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 16:37:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 09:37:45 -0700
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="196967892"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 09 Oct 2019 09:37:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009100955.21477-2-chris@chris-wilson.co.uk>
 <20191009102622.32681-1-chris@chris-wilson.co.uk>
 <213d1f40-6199-e51c-2147-0b21d61f94e6@linux.intel.com>
 <157063677075.18808.5602717852570533021@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3c7b5663-c60d-f15d-6e12-0b0595da53b3@linux.intel.com>
Date: Wed, 9 Oct 2019 17:37:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157063677075.18808.5602717852570533021@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: execlists->active is
 serialised by the tasklet
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA5LzEwLzIwMTkgMTY6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTA5IDE2OjUzOjUzKQo+Pgo+PiBPbiAwOS8xMC8yMDE5IDExOjI2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiArc3RhdGljIGlubGluZSB2b2lkCj4+PiArZXhlY2xp
c3RzX2FjdGl2ZV9sb2NrKHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMp
Cj4+PiArewo+Pj4gKyAgICAgdGFza2xldF9sb2NrKCZleGVjbGlzdHMtPnRhc2tsZXQpOwo+Pj4g
K30KPj4+ICsKPj4+ICtzdGF0aWMgaW5saW5lIHZvaWQKPj4+ICtleGVjbGlzdHNfYWN0aXZlX3Vu
bG9jayhzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqZXhlY2xpc3RzKQo+Pj4gK3sKPj4+
ICsgICAgIHRhc2tsZXRfdW5sb2NrKCZleGVjbGlzdHMtPnRhc2tsZXQpOwo+Pj4gK30KPj4KPj4g
QWZ0ZXIgd2Ugc3RvcCBwcmV2ZW50aW5nIHRoZSB0YXNrbGV0IGZyb20gcnVubmluZyBzaG91bGQg
d2UgbWF5YmUga2ljawo+PiBrc29mdGlycWQ/IEkgYW0gdGhpbmtpbmcgaWYgYSB0YXNrbGV0IGdl
dHMgc2NoZWR1bGVkIGFuZCByYW4gZHVyaW5nIHVzCj4+IGhvbGRpbmcgdGhlIGxvY2sgaGVyZSwg
aXQgd29uJ3QgbG9zZSB0aGUgInNjaGVkdWxlZCIgc3RhdHVzLCBidXQgbm90Cj4+IHN1cmUgYXQg
d2hhdCBuZXh0IG9wcG9ydHVuaXR5IGl0IHdvdWxkIGdldCByZS1ydW4uCj4gCj4gSWYgd2UgY2Fs
bCB0YXNrbGV0X3NjaGVkdWxlKCkgd2hpbGUgd2UgaG9sZCB0YXNrbGV0X2xvY2ssIGtzb2Z0aXJx
ZCAob24KPiBhbm90aGVyIHRocmVhZCwgaG1tLCB3ZSBuZWVkIGxvY2FsX2JoX2Rpc2FibGUoKSB0
byBzdG9wIG91cnNlbHZlcwo+IGVudGVyaW5nIHRoZSBzb2Z0aXJxIHByb2Nlc3NpbmcpLCB0aGVu
IHRoYXQgdGFza2xldF9hY3Rpb24gd2lsbCBzcGluIG9uCj4gdGFza2xldF90cnlsb2NrLgoKSSBk
b24ndCBzZWUgaXQgc3Bpbm5pbmcsIEkgc2VlIGl0IHVubGlua2luZyB0aGUgdGFza2xldCBpcyB0
cnlsb2NrIGZhaWxzIAphbmQgZ29pbmcgb250byB0aGUgbmV4dCBvbmUuIFNvIGV2ZW4gd2hhdCBJ
IGltcGxpZWQgYmVmb3JlIHNlZW1zIHdyb25nIC0gCml0IGRvZXNuJ3QgbG9vayBsaWtlIGl0IHdv
dWxkIGdldCByZS1ydW4gb24gbmV4dCB0YXNrbGV0IHByb2Nlc3NpbmcgcnVuLiAKV2hlcmUgZG8g
eW91IHNlZSB0aGUgcmV0cnk/CgpSZWdhcmRzLAoKVHZydGtvCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
