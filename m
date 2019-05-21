Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D4424D8E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 13:04:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084BA892F1;
	Tue, 21 May 2019 11:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from www262.sakura.ne.jp (www262.sakura.ne.jp [202.181.97.72])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 529A4892F1;
 Tue, 21 May 2019 11:04:45 +0000 (UTC)
Received: from fsav305.sakura.ne.jp (fsav305.sakura.ne.jp [153.120.85.136])
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id x4LB4coV053177;
 Tue, 21 May 2019 20:04:38 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
Received: from www262.sakura.ne.jp (202.181.97.72)
 by fsav305.sakura.ne.jp (F-Secure/fsigk_smtp/530/fsav305.sakura.ne.jp);
 Tue, 21 May 2019 20:04:38 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/530/fsav305.sakura.ne.jp)
Received: from [192.168.1.8] (softbank126012062002.bbtec.net [126.12.62.2])
 (authenticated bits=0)
 by www262.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id x4LB4c2T053172
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Tue, 21 May 2019 20:04:38 +0900 (JST)
 (envelope-from penguin-kernel@i-love.sakura.ne.jp)
To: Michal Hocko <mhocko@suse.com>
References: <20190521100611.10089-1-daniel.vetter@ffwll.ch>
 <3bab9909-b32a-8cc6-df38-5afc2e7bff69@I-love.SAKURA.ne.jp>
 <20190521105126.GP32329@dhcp22.suse.cz>
From: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <cb86e2b2-7717-0d48-1fca-eba6cb975e96@i-love.sakura.ne.jp>
Date: Tue, 21 May 2019 20:04:34 +0900
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521105126.GP32329@dhcp22.suse.cz>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS8wNS8yMSAxOTo1MSwgTWljaGFsIEhvY2tvIHdyb3RlOgo+IE9uIFR1ZSAyMS0wNS0x
OSAxOTo0NDowMSwgVGV0c3VvIEhhbmRhIHdyb3RlOgo+PiBPbiAyMDE5LzA1LzIxIDE5OjA2LCBE
YW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4gSW4gc29tZSBzcGVjaWFsIGNhc2VzIHdlIG11c3Qgbm90
IGJsb2NrLCBidXQgdGhlcmUncyBub3QgYQo+Pj4gc3BpbmxvY2ssIHByZWVtcHQtb2ZmLCBpcnFz
LW9mZiBvciBzaW1pbGFyIGNyaXRpY2FsIHNlY3Rpb24gYWxyZWFkeQo+Pj4gdGhhdCBhcm1zIHRo
ZSBtaWdodF9zbGVlcCgpIGRlYnVnIGNoZWNrcy4gQWRkIGEgbm9uX2Jsb2NrX3N0YXJ0L2VuZCgp
Cj4+PiBwYWlyIHRvIGFubm90YXRlIHRoZXNlLgo+Pj4KPj4+IFRoaXMgd2lsbCBiZSB1c2VkIGlu
IHRoZSBvb20gcGF0aHMgb2YgbW11LW5vdGlmaWVycywgd2hlcmUgYmxvY2tpbmcgaXMKPj4+IG5v
dCBhbGxvd2VkIHRvIG1ha2Ugc3VyZSB0aGVyZSdzIGZvcndhcmQgcHJvZ3Jlc3MuIFF1b3Rpbmcg
TWljaGFsOgo+Pj4KPj4+ICJUaGUgbm90aWZpZXIgaXMgY2FsbGVkIGZyb20gcXVpdGUgYSByZXN0
cmljdGVkIGNvbnRleHQgLSBvb21fcmVhcGVyIC0KPj4+IHdoaWNoIHNob3VsZG4ndCBkZXBlbmQg
b24gYW55IGxvY2tzIG9yIHNsZWVwYWJsZSBjb25kaXRpb25hbHMuIFRoZSBjb2RlCj4+PiBzaG91
bGQgYmUgc3dpZnQgYXMgd2VsbCBidXQgd2UgbW9zdGx5IGRvIGNhcmUgYWJvdXQgaXQgdG8gbWFr
ZSBhIGZvcndhcmQKPj4+IHByb2dyZXNzLiBDaGVja2luZyBmb3Igc2xlZXBhYmxlIGNvbnRleHQg
aXMgdGhlIGJlc3QgdGhpbmcgd2UgY291bGQgY29tZQo+Pj4gdXAgd2l0aCB0aGF0IHdvdWxkIGRl
c2NyaWJlIHRoZXNlIGRlbWFuZHMgYXQgbGVhc3QgcGFydGlhbGx5LiIKPj4+Cj4+Cj4+IENhbiB0
aGlzIGJlIGNoZWNrZWQgZm9yIE9PTSBub3RpZmllciBhcyB3ZWxsPwo+Pgo+PiAgCWlmICghaXNf
bWVtY2dfb29tKG9jKSkgewo+PiArCQlub25fYmxvY2tfc3RhcnQoKTsKPj4gIAkJYmxvY2tpbmdf
bm90aWZpZXJfY2FsbF9jaGFpbigmb29tX25vdGlmeV9saXN0LCAwLCAmZnJlZWQpOwo+PiArCQlu
b25fYmxvY2tfZW5kKCk7Cj4+ICAJCWlmIChmcmVlZCA+IDApCj4+ICAJCQkvKiBHb3Qgc29tZSBt
ZW1vcnkgYmFjayBpbiB0aGUgbGFzdCBzZWNvbmQuICovCj4+ICAJCQlyZXR1cm4gdHJ1ZTsKPj4g
IAl9Cj4+Cj4+IEl0IGlzIG5vdCBjbGVhciB3aGV0aGVyIGk5MTUncyBvb21fbm90aWZpZXIgZnVu
Y3Rpb24gaGFzIHN1Y2ggZGVwZW5kZW5jeS4KPiAKPiBJdCBpcyBub3QgYnV0IHRoZW4gd2Ugc2hv
dWxkIGJlIHVzaW5nIHRoZSBub24tYmxvY2tpbmcgQVBJIGlmIHRoaXMgaXMKPiBhIHJlYWwgcHJv
YmxlbS4gVGhlIGFib3ZlIGNvZGUganVzdCBkb2Vzbid0IG1ha2UgYW55IHNlbnNlLiBXZSBoYXZl
IGEKPiBibG9ja2luZyBBUEkgY2FsbGVkIGFuZCB3cmFwcGVkIGJ5IG5vbi1ibG9ja2luZyBvbmUu
CgpPT00gbm90aWZpZXJzIHNob3VsZCBub3QgZGVwZW5kIG9uIGFueSBsb2NrcyBvciBzbGVlcGFi
bGUgY29uZGl0aW9uYWxzLgpJZiBzb21lIGxvY2sgZGlyZWN0bHkgb3IgaW5kaXJlY3RseSBkZXBl
bmRlZCBvbiBfX0dGUF9ESVJFQ1RfUkVDTEFJTSwKaXQgd2lsbCBkZWFkbG9jay4gVGh1cywgZGVz
cGl0ZSBibG9ja2luZyBBUEksIHRoaXMgc2hvdWxkIGVmZmVjdGl2ZWx5IGJlCm5vbi1ibG9ja2lu
Zy4gQWxsIE9PTSBub3RpZmllciB1c2VycyBleGNlcHQgaTkxNSBzZWVtcyB0byBiZSBhdG9taWMs
IGJ1dApJIGNhbid0IGV2YWx1YXRlIGk5MTUgcGFydC4uLgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
