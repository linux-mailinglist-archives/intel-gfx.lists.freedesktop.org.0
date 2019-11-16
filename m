Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A83FEB9A
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Nov 2019 11:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD576E081;
	Sat, 16 Nov 2019 10:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4627D6E081
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 Nov 2019 10:05:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19222817-1500050 for multiple; Sat, 16 Nov 2019 10:04:50 +0000
MIME-Version: 1.0
To: don.hiatt@intel.com, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191115231538.1249-1-don.hiatt@intel.com>
References: <20191115231538.1249-1-don.hiatt@intel.com>
Message-ID: <157389868792.16970.7505245592363257068@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 16 Nov 2019 10:04:47 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Skip suspend/resume GuC
 action on platforms w/o GuC submission
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
Cc: "S . Zharkoff" <s.zharkoff@gmail.com>,
 KiteStramuort <kitestramuort@autistici.org>, Tomas Janousek <tomi@nomi.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBkb24uaGlhdHRAaW50ZWwuY29tICgyMDE5LTExLTE1IDIzOjE1OjM4KQo+IEZyb206
IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KPiAKPiBPbiBzb21lIHBsYXRmb3JtcyAo
ZS5nLiBLQkwpIHRoYXQgZG8gbm90IHN1cHBvcnQgR3VDIHN1Ym1pc3Npb24sIGJ1dAo+IHRoZSB1
c2VyIGVuYWJsZWQgdGhlIEd1QyBjb21tdW5pY2F0aW9uIChlLmcgZm9yIEh1QyBhdXRoZW50aWNh
dGlvbikKPiBjYWxsaW5nIHRoZSBHdUMgRVhJVF9TX1NUQVRFIGFjdGlvbiByZXN1bHRzIGluIGxv
c2Ugb2YgYWJpbGl0eSB0bwo+IGVudGVyIFJDNi4gV2UgY2FuIHJlbW92ZSB0aGUgR3VDIHN1c3Bl
bmQvcmVzdW1lIGVudGlyZWx5IGFzIHdlIGRvCj4gbm90IG5lZWQgdG8gc2F2ZSB0aGUgR3VDIHN1
Ym1pc3Npb24gc3RhdHVzLgo+IAo+IEFkZCBpbnRlbF9ndWNfc3VibWlzc2lvbl9pc19lbmFibGVk
KCkgZnVuY3Rpb24gdG8gZGV0ZXJtaW5lIGlmCj4gR3VDIHN1Ym1pc3Npb24gaXMgYWN0aXZlLgo+
IAo+IHYyOiBEbyBub3Qgc3VzcGVuZC9yZXN1bWUgdGhlIEd1QyBvbiBwbGF0Zm9ybXMgdGhhdCBk
byBub3Qgc3VwcG9ydAo+ICAgICBHdWMgU3VibWlzc2lvbi4KPiB2MzogRml4IHR5cG8sIG1vdmUg
c3VzcGVuZCBsb2dpYyB0byByZW1vdmUgZ290by4KPiB2NDogVXNlIGludGVsX2d1Y19zdWJtaXNz
aW9uX2lzX2VuYWJsZWQoKSB0byBjaGVjayBHdUMgc3VibWlzc2lvbgo+ICAgICBzdGF0dXMuCj4g
djU6IE5vIG5lZWQgdG8gbG9vayBhdCBlbmdpbmUgdG8gZGV0ZXJtaW5lIGlmIHN1Ym1pc3Npb24g
aXMgZW5hYmxlZC4KPiAgICAgU3F1YXNoIGZpeCArIGludGVsX2d1Y19zdWJtaXNzaW9uX2lzX2Vu
YWJsZWQoKSBwYXRjaCBpbnRvIG9uZS4KPiB2NjogTW92ZSByZXN1bWUgY2hlY2sgaW50byBpbnRl
bF9ndWNfcmVzdW1lKCkgZm9yIHN5bW1ldHJ5Lgo+ICAgICBGaXggY29tbWl0IEZpeGVzIHRhZy4K
PiAKPiBSZXBvcnRlZC1ieTogS2l0ZVN0cmFtdW9ydCA8a2l0ZXN0cmFtdW9ydEBhdXRpc3RpY2ku
b3JnPgo+IFJlcG9ydGVkLWJ5OiBTLiBaaGFya29mZiA8cy56aGFya29mZkBnbWFpbC5jb20+Cj4g
QnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEx
MTU5NAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTE2MjMKPiBGaXhlczogZmZkNWNlMjJmYWE0ICgiZHJtL2k5MTUvZ3VjOiBVcGRhdGVz
IGZvciBHdUMgMzIuMC4zIGZpcm13YXJlIikKPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFs
LndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYWxvIFNwdXJpbyA8ZGFuaWVs
ZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5z
dW1tZXJzQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gVGVzdGVkLWJ5OiBUb21hcyBKYW5vdXNlayA8dG9taUBub21pLmN6Pgo+IFNpZ25l
ZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9uLmhpYXR0QGludGVsLmNvbT4KClRoaXMgZml4ZXMgYSBy
YXRoZXIgbmFzdHkgYnVnOyBsb29rcyBzaW1wbGUgZW5vdWdoIHRvIGJlIGJhY2twb3J0CmZyaWVu
ZGx5IGFuZCBhbnkgZnVydGhlciBiaWtlc2hlZHMgY2FuIGJlIGFwcGxpZWQgYWxvbmcgd2l0aCBn
dWMKcmVmYWN0b3JpbmcuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
