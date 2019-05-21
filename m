Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BC424DD2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 13:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D2889301;
	Tue, 21 May 2019 11:25:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF0F89301;
 Tue, 21 May 2019 11:25:05 +0000 (UTC)
Received: from fsav302.sakura.ne.jp (fsav302.sakura.ne.jp [153.120.85.133])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x4LBOvJM073049;
 Tue, 21 May 2019 20:24:57 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav302.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav302.sakura.ne.jp);
 Tue, 21 May 2019 20:24:57 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav302.sakura.ne.jp)
Received: from [192.168.1.8] (softbank126012062002.bbtec.net [126.12.62.2])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x4LBOuw7073010
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Tue, 21 May 2019 20:24:57 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Daniel Vetter <daniel.vetter@ffwll.ch>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
 <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
 <20190521111151.GS32329@dhcp22.suse.cz>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <765bdfea-915d-ee86-f885-59b11f4c54db@i-love.sakura.ne.jp>
Date: Tue, 21 May 2019 20:24:53 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521111151.GS32329@dhcp22.suse.cz>
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
 Michal Hocko <mhocko@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS8wNS8yMSAyMDoxMSwgTWljaGFsIEhvY2tvIHdyb3RlOgo+IE9uIFR1ZSAyMS0wNS0x
OSAyMDowNDozNCwgVGV0c3VvIEhhbmRhIHdyb3RlOgo+PiBPbiAyMDE5LzA1LzIxIDE5OjUxLCBN
aWNoYWwgSG9ja28gd3JvdGU6Cj4+PiBPbiBUdWUgMjEtMDUtMTkgMTk6NDQ6MDEsIFRldHN1byBI
YW5kYSB3cm90ZToKPj4+PiBPbiAyMDE5LzA1LzIxIDE5OjA2LCBEYW5pZWwgVmV0dGVyIHdyb3Rl
Ogo+Pj4+PiBJbiBzb21lIHNwZWNpYWwgY2FzZXMgd2UgbXVzdCBub3QgYmxvY2ssIGJ1dCB0aGVy
ZSdzIG5vdCBhCj4+Pj4+IHNwaW5sb2NrLCBwcmVlbXB0LW9mZiwgaXJxcy1vZmYgb3Igc2ltaWxh
ciBjcml0aWNhbCBzZWN0aW9uIGFscmVhZHkKPj4+Pj4gdGhhdCBhcm1zIHRoZSBtaWdodF9zbGVl
cCgpIGRlYnVnIGNoZWNrcy4gQWRkIGEgbm9uX2Jsb2NrX3N0YXJ0L2VuZCgpCj4+Pj4+IHBhaXIg
dG8gYW5ub3RhdGUgdGhlc2UuCj4+Pj4+Cj4+Pj4+IFRoaXMgd2lsbCBiZSB1c2VkIGluIHRoZSBv
b20gcGF0aHMgb2YgbW11LW5vdGlmaWVycywgd2hlcmUgYmxvY2tpbmcgaXMKPj4+Pj4gbm90IGFs
bG93ZWQgdG8gbWFrZSBzdXJlIHRoZXJlJ3MgZm9yd2FyZCBwcm9ncmVzcy4gUXVvdGluZyBNaWNo
YWw6Cj4+Pj4+Cj4+Pj4+ICJUaGUgbm90aWZpZXIgaXMgY2FsbGVkIGZyb20gcXVpdGUgYSByZXN0
cmljdGVkIGNvbnRleHQgLSBvb21fcmVhcGVyIC0KPj4+Pj4gd2hpY2ggc2hvdWxkbid0IGRlcGVu
ZCBvbiBhbnkgbG9ja3Mgb3Igc2xlZXBhYmxlIGNvbmRpdGlvbmFscy4gVGhlIGNvZGUKPj4+Pj4g
c2hvdWxkIGJlIHN3aWZ0IGFzIHdlbGwgYnV0IHdlIG1vc3RseSBkbyBjYXJlIGFib3V0IGl0IHRv
IG1ha2UgYSBmb3J3YXJkCj4+Pj4+IHByb2dyZXNzLiBDaGVja2luZyBmb3Igc2xlZXBhYmxlIGNv
bnRleHQgaXMgdGhlIGJlc3QgdGhpbmcgd2UgY291bGQgY29tZQo+Pj4+PiB1cCB3aXRoIHRoYXQg
d291bGQgZGVzY3JpYmUgdGhlc2UgZGVtYW5kcyBhdCBsZWFzdCBwYXJ0aWFsbHkuIgo+Pj4+Pgo+
Pj4+Cj4+Pj4gQ2FuIHRoaXMgYmUgY2hlY2tlZCBmb3IgT09NIG5vdGlmaWVyIGFzIHdlbGw/Cj4+
Pj4KPj4+PiAgCWlmICghaXNfbWVtY2dfb29tKG9jKSkgewo+Pj4+ICsJCW5vbl9ibG9ja19zdGFy
dCgpOwo+Pj4+ICAJCWJsb2NraW5nX25vdGlmaWVyX2NhbGxfY2hhaW4oJm9vbV9ub3RpZnlfbGlz
dCwgMCwgJmZyZWVkKTsKPj4+PiArCQlub25fYmxvY2tfZW5kKCk7Cj4+Pj4gIAkJaWYgKGZyZWVk
ID4gMCkKPj4+PiAgCQkJLyogR290IHNvbWUgbWVtb3J5IGJhY2sgaW4gdGhlIGxhc3Qgc2Vjb25k
LiAqLwo+Pj4+ICAJCQlyZXR1cm4gdHJ1ZTsKPj4+PiAgCX0KPj4+Pgo+Pj4+IEl0IGlzIG5vdCBj
bGVhciB3aGV0aGVyIGk5MTUncyBvb21fbm90aWZpZXIgZnVuY3Rpb24gaGFzIHN1Y2ggZGVwZW5k
ZW5jeS4KPj4+Cj4+PiBJdCBpcyBub3QgYnV0IHRoZW4gd2Ugc2hvdWxkIGJlIHVzaW5nIHRoZSBu
b24tYmxvY2tpbmcgQVBJIGlmIHRoaXMgaXMKPj4+IGEgcmVhbCBwcm9ibGVtLiBUaGUgYWJvdmUg
Y29kZSBqdXN0IGRvZXNuJ3QgbWFrZSBhbnkgc2Vuc2UuIFdlIGhhdmUgYQo+Pj4gYmxvY2tpbmcg
QVBJIGNhbGxlZCBhbmQgd3JhcHBlZCBieSBub24tYmxvY2tpbmcgb25lLgo+Pgo+PiBPT00gbm90
aWZpZXJzIHNob3VsZCBub3QgZGVwZW5kIG9uIGFueSBsb2NrcyBvciBzbGVlcGFibGUgY29uZGl0
aW9uYWxzLgo+PiBJZiBzb21lIGxvY2sgZGlyZWN0bHkgb3IgaW5kaXJlY3RseSBkZXBlbmRlZCBv
biBfX0dGUF9ESVJFQ1RfUkVDTEFJTSwKPj4gaXQgd2lsbCBkZWFkbG9jay4gVGh1cywgZGVzcGl0
ZSBibG9ja2luZyBBUEksIHRoaXMgc2hvdWxkIGVmZmVjdGl2ZWx5IGJlCj4+IG5vbi1ibG9ja2lu
Zy4gQWxsIE9PTSBub3RpZmllciB1c2VycyBleGNlcHQgaTkxNSBzZWVtcyB0byBiZSBhdG9taWMs
IGJ1dAo+PiBJIGNhbid0IGV2YWx1YXRlIGk5MTUgcGFydC4uLgo+IAo+IFJlYWQgYWdhaW4gd2hh
dCBJJ3ZlIHdyaXR0ZW4sIHBsZWFzZQo+IAoKUXVlc3Rpb24gdG8gRGFuaWVsOiBJcyBpOTE1J3Mg
b29tX25vdGlmaWVyIGZ1bmN0aW9uIGF0b21pYz8KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
