Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CEA259A8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 23:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32840896EB;
	Tue, 21 May 2019 21:06:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC0B789704;
 Tue, 21 May 2019 21:06:51 +0000 (UTC)
Received: from fsav110.sakura.ne.jp (fsav110.sakura.ne.jp [27.133.134.237])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x4LL6dtB019617;
 Wed, 22 May 2019 06:06:39 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav110.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav110.sakura.ne.jp);
 Wed, 22 May 2019 06:06:39 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav110.sakura.ne.jp)
Received: from [192.168.1.8] (softbank126012062002.bbtec.net [126.12.62.2])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x4LL6YQV019543
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Wed, 22 May 2019 06:06:39 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
 <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
 <20190521111151.GS32329@dhcp22.suse.cz>
 <765bdfea-915d-ee86-f885-59b11f4c54db@i-love.sakura.ne.jp>
 <20190521144404.GO21222@phenom.ffwll.local>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <24951d83-9476-98a6-ee45-484d4de07a52@i-love.sakura.ne.jp>
Date: Wed, 22 May 2019 06:06:31 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521144404.GO21222@phenom.ffwll.local>
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
Cc: Michal Hocko <mhocko@suse.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS8wNS8yMSAyMzo0NCwgRGFuaWVsIFZldHRlciB3cm90ZToKPj4+PiBPT00gbm90aWZp
ZXJzIHNob3VsZCBub3QgZGVwZW5kIG9uIGFueSBsb2NrcyBvciBzbGVlcGFibGUgY29uZGl0aW9u
YWxzLgo+Pj4+IElmIHNvbWUgbG9jayBkaXJlY3RseSBvciBpbmRpcmVjdGx5IGRlcGVuZGVkIG9u
IF9fR0ZQX0RJUkVDVF9SRUNMQUlNLAo+Pj4+IGl0IHdpbGwgZGVhZGxvY2suIFRodXMsIGRlc3Bp
dGUgYmxvY2tpbmcgQVBJLCB0aGlzIHNob3VsZCBlZmZlY3RpdmVseSBiZQo+Pj4+IG5vbi1ibG9j
a2luZy4gQWxsIE9PTSBub3RpZmllciB1c2VycyBleGNlcHQgaTkxNSBzZWVtcyB0byBiZSBhdG9t
aWMsIGJ1dAo+Pj4+IEkgY2FuJ3QgZXZhbHVhdGUgaTkxNSBwYXJ0Li4uCj4+Pgo+Pj4gUmVhZCBh
Z2FpbiB3aGF0IEkndmUgd3JpdHRlbiwgcGxlYXNlCj4+Pgo+Pgo+PiBRdWVzdGlvbiB0byBEYW5p
ZWw6IElzIGk5MTUncyBvb21fbm90aWZpZXIgZnVuY3Rpb24gYXRvbWljPwo+IAo+IEl0J3Mgc3Vw
cG9zZWQgdG8gbm90IGJsb2NrIHRvbyBtdWNoIGF0IGxlYXN0LCBJIGRvbid0IHRoaW5rIGl0J3Mg
ZW50aXJlbHkKPiBhdG9taWMuIFdha2luZyB1cCB0aGUgZGV2aWNlICh3aGljaCB3ZSBuZWVkIHRv
IHdyaXRlIHNvbWUgb2YgdGhlIHB0ZXMpCj4gd2lsbCB0YWtlIHNvbWUgdGltZSBhbmQgSSB0aGlu
ayBhY3F1aXJlcyBhIGZldyBtdXRleGVzLCBidXQgbm90IDEwMCUgc3VyZS4KPiAKPiBJZiB5b3Ug
d2FudCB0byBzZWUsIHNlbmQgYSBwYXRjaCB0byBpbnRlbC1nZnggbS1sIGFuZCBDSSB3aWxsIHBp
Y2sgaXQgdXAKPiBhbmQgdGVzdCB3aXRoIG91ciBmYXJtIG9mIG1hY2hpbmVzLgoKQXMgc29vbiBh
cyBhIG11dGV4IGlzIGhlbGQsIHdlIGNhbid0IGV4cGVjdCBpdCBpcyBhdG9taWMuIFdlIG5lZWQg
dG8KbWFudWFsbHkgaW5zcGVjdCB3aGV0aGVyIHRoZXJlIGlzIF9fR0ZQX0RJUkVDVF9SRUNMQUlN
IGRlcGVuZGVuY3kuLi4KClNpbmNlIE9PTSBub3RpZmllciB3aWxsIGJlIGNhbGxlZCBhZnRlciBz
aHJpbmtlcnMgYXJlIGF0dGVtcHRlZCwKY2FuIGk5MTUgbW92ZSBmcm9tIE9PTSBub3RpZmllciB0
byBzaHJpbmtlcj8KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
