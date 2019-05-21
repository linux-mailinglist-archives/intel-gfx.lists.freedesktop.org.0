Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3129F24D0D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 12:44:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 118D789194;
	Tue, 21 May 2019 10:44:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D71289194;
 Tue, 21 May 2019 10:44:18 +0000 (UTC)
Received: from fsav405.sakura.ne.jp (fsav405.sakura.ne.jp [133.242.250.104])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x4LAi92F031120;
 Tue, 21 May 2019 19:44:09 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav405.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav405.sakura.ne.jp);
 Tue, 21 May 2019 19:44:09 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav405.sakura.ne.jp)
Received: from [192.168.1.8] (softbank126012062002.bbtec.net [126.12.62.2])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x4LAi4j6031069
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Tue, 21 May 2019 19:44:09 +0900 (JST)
 (envelope-from penguin-kernel@I-love.SAKURA.ne.jp)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
From: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Message-ID: <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
Date: Tue, 21 May 2019 19:44:01 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] kernel.h: Add non_block_start/end()
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Michal Hocko <mhocko@suse.com>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS8wNS8yMSAxOTowNiwgRGFuaWVsIFZldHRlciB3cm90ZToKPiBJbiBzb21lIHNwZWNp
YWwgY2FzZXMgd2UgbXVzdCBub3QgYmxvY2ssIGJ1dCB0aGVyZSdzIG5vdCBhCj4gc3BpbmxvY2ss
IHByZWVtcHQtb2ZmLCBpcnFzLW9mZiBvciBzaW1pbGFyIGNyaXRpY2FsIHNlY3Rpb24gYWxyZWFk
eQo+IHRoYXQgYXJtcyB0aGUgbWlnaHRfc2xlZXAoKSBkZWJ1ZyBjaGVja3MuIEFkZCBhIG5vbl9i
bG9ja19zdGFydC9lbmQoKQo+IHBhaXIgdG8gYW5ub3RhdGUgdGhlc2UuCj4gCj4gVGhpcyB3aWxs
IGJlIHVzZWQgaW4gdGhlIG9vbSBwYXRocyBvZiBtbXUtbm90aWZpZXJzLCB3aGVyZSBibG9ja2lu
ZyBpcwo+IG5vdCBhbGxvd2VkIHRvIG1ha2Ugc3VyZSB0aGVyZSdzIGZvcndhcmQgcHJvZ3Jlc3Mu
IFF1b3RpbmcgTWljaGFsOgo+IAo+ICJUaGUgbm90aWZpZXIgaXMgY2FsbGVkIGZyb20gcXVpdGUg
YSByZXN0cmljdGVkIGNvbnRleHQgLSBvb21fcmVhcGVyIC0KPiB3aGljaCBzaG91bGRuJ3QgZGVw
ZW5kIG9uIGFueSBsb2NrcyBvciBzbGVlcGFibGUgY29uZGl0aW9uYWxzLiBUaGUgY29kZQo+IHNo
b3VsZCBiZSBzd2lmdCBhcyB3ZWxsIGJ1dCB3ZSBtb3N0bHkgZG8gY2FyZSBhYm91dCBpdCB0byBt
YWtlIGEgZm9yd2FyZAo+IHByb2dyZXNzLiBDaGVja2luZyBmb3Igc2xlZXBhYmxlIGNvbnRleHQg
aXMgdGhlIGJlc3QgdGhpbmcgd2UgY291bGQgY29tZQo+IHVwIHdpdGggdGhhdCB3b3VsZCBkZXNj
cmliZSB0aGVzZSBkZW1hbmRzIGF0IGxlYXN0IHBhcnRpYWxseS4iCj4gCgpDYW4gdGhpcyBiZSBj
aGVja2VkIGZvciBPT00gbm90aWZpZXIgYXMgd2VsbD8KCiAJaWYgKCFpc19tZW1jZ19vb20ob2Mp
KSB7CisJCW5vbl9ibG9ja19zdGFydCgpOwogCQlibG9ja2luZ19ub3RpZmllcl9jYWxsX2NoYWlu
KCZvb21fbm90aWZ5X2xpc3QsIDAsICZmcmVlZCk7CisJCW5vbl9ibG9ja19lbmQoKTsKIAkJaWYg
KGZyZWVkID4gMCkKIAkJCS8qIEdvdCBzb21lIG1lbW9yeSBiYWNrIGluIHRoZSBsYXN0IHNlY29u
ZC4gKi8KIAkJCXJldHVybiB0cnVlOwogCX0KCkl0IGlzIG5vdCBjbGVhciB3aGV0aGVyIGk5MTUn
cyBvb21fbm90aWZpZXIgZnVuY3Rpb24gaGFzIHN1Y2ggZGVwZW5kZW5jeS4KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
