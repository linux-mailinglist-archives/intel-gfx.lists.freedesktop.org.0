Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF454FD9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B026E114;
	Tue, 25 Jun 2019 13:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E02D56E114;
 Tue, 25 Jun 2019 13:09:00 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 850DC280131
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>, "Ser, Simon" <simon.ser@intel.com>
References: <20190618124221.62715-1-guillaume.tucker@collabora.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <e166f58e-f7e2-f6a5-d78d-40cf1b6692db@collabora.com>
Date: Tue, 25 Jun 2019 14:08:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190618124221.62715-1-guillaume.tucker@collabora.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 1/1] gitlab-ci: add build and tests
 for MIPS
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTgvMDYvMjAxOSAxMzo0MiwgR3VpbGxhdW1lIFR1Y2tlciB3cm90ZToKPiBBZGQgRG9ja2Vy
IGltYWdlIGFuZCBHaXRsYWIgQ0kgc3RlcHMgdG8gcnVuIGJ1aWxkcyBhbmQgdGVzdHMgZm9yIHRo
ZQo+IE1JUFMgYXJjaGl0ZWN0dXJlIHVzaW5nIERlYmlhbiBTdHJldGNoIHdpdGggYmFja3BvcnRz
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVtZS50dWNrZXJA
Y29sbGFib3JhLmNvbT4KPiAtLS0KPiAKPiBOb3RlczoKPiAgICAgdjI6IHVzZSBzdHJldGNoLWJh
Y2twb3J0cyBhbmQgcmVxdWlyZSBsaWJhdG9taWMxCj4gICAgIHYzOiBhZGQgbWlwcyBjaSB0ZXN0
cyBhbmQgcmVxdWlyZSBEZWJpYW4gbGliYXRvbWljMSBmb3IgbWlwcwoKVGhlIHNlcmllcyB0byB1
c2UgcG9ydGFibGUgYXRvbWljcyBmdW5jdGlvbnMgd2FzIG1lcmdlZCB0b2RheSwgc28KSSB0aGlu
ayB0aGlzIG9uZSBzaG91bGQgbm93IGJlIGdvb2QgdG8gZ28gYXMgd2VsbC4gIEl0IGFwcGxpZXMK
Y2xlYW5seSBvbiB0b3Agb2YgdGhlIGN1cnJlbnQgbWFzdGVyIGJyYW5jaCBhbmQgdGhlIEdpdGxh
YiBDSQpwaXBlbGluZSBwYXNzZWQ6CgogIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9n
dHVja2VyL2lndC1ncHUtdG9vbHMvcGlwZWxpbmVzLzQ0NzA0CgpQbGVhc2UgbGV0IG1lIGtub3cg
aWYgeW91IHdhbnQgbWUgdG8gcmVzdWJtaXQgaXQgdG8gZ2V0IGFub3RoZXIKUGF0Y2h3b3JrIENJ
IHJ1biBvciBpZiBhbnl0aGluZyBlbHNlIG5lZWRzIHRvIGJlIGRvbmUuCgpHdWlsbGF1bWUKCj4g
IC5naXRsYWItY2kueW1sICAgICAgICAgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysKPiAgRG9ja2VyZmlsZS5kZWJpYW4tbWlwcyB8IDM5ICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBtZXNvbi1jcm9zcy1taXBzLnR4dCAgIHwg
MTIgKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgOTMgaW5zZXJ0aW9ucygrKQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9ja2VyZmlsZS5kZWJpYW4tbWlwcwo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgbWVzb24tY3Jvc3MtbWlwcy50eHQKPiAKPiBkaWZmIC0tZ2l0IGEvLmdpdGxhYi1jaS55
bWwgYi8uZ2l0bGFiLWNpLnltbAo+IGluZGV4IDc3MTE0M2E5ZWE5NS4uYmQ5NjE5ZTdlMjhiIDEw
MDY0NAo+IC0tLSBhLy5naXRsYWItY2kueW1sCj4gKysrIGIvLmdpdGxhYi1jaS55bWwKPiBAQCAt
OTAsNiArOTAsMTcgQEAgYnVpbGQ6dGVzdHMtZGViaWFuLW1lc29uLWFybTY0Ogo+ICAgICAgcGF0
aHM6Cj4gICAgICAgIC0gYnVpbGQKPiAgCj4gK2J1aWxkOnRlc3RzLWRlYmlhbi1tZXNvbi1taXBz
Ogo+ICsgIGltYWdlOiAkQ0lfUkVHSVNUUlkvJENJX1BST0pFQ1RfUEFUSC9pZ3QtZGViaWFuLW1p
cHM6bGF0ZXN0Cj4gKyAgc3RhZ2U6IGJ1aWxkCj4gKyAgc2NyaXB0Ogo+ICsgICAgLSBleHBvcnQg
UEtHX0NPTkZJR19QQVRIPS91c3IvbGliL21pcHMtbGludXgtZ251L3BrZ2NvbmZpZy8KPiArICAg
IC0gbWVzb24gLS1jcm9zcy1maWxlIG1lc29uLWNyb3NzLW1pcHMudHh0IGJ1aWxkCj4gKyAgICAt
IG5pbmphIC1DIGJ1aWxkCj4gKyAgYXJ0aWZhY3RzOgo+ICsgICAgcGF0aHM6Cj4gKyAgICAgIC0g
YnVpbGQKPiArCj4gIGJ1aWxkOnRlc3RzLWRlYmlhbi1hdXRvdG9vbHM6Cj4gICAgaW1hZ2U6ICRD
SV9SRUdJU1RSWS8kQ0lfUFJPSkVDVF9QQVRIL2lndC1kZWJpYW46bGF0ZXN0Cj4gICAgc3RhZ2U6
IGJ1aWxkCj4gQEAgLTE0NSw2ICsxNTYsMjAgQEAgdGVzdDpuaW5qYS10ZXN0LWFybWhmOgo+ICAg
ICAgICAtIGJ1aWxkCj4gICAgICB3aGVuOiBvbl9mYWlsdXJlCj4gIAo+ICt0ZXN0Om5pbmphLXRl
c3QtbWlwczoKPiArICBpbWFnZTogJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRl
Ymlhbi1taXBzOmxhdGVzdAo+ICsgIGRlcGVuZGVuY2llczoKPiArICAgIC0gYnVpbGQ6dGVzdHMt
ZGViaWFuLW1lc29uLW1pcHMKPiArICBzdGFnZTogdGVzdAo+ICsgIHNjcmlwdDoKPiArICAgIC0g
ZXhwb3J0IFBLR19DT05GSUdfUEFUSD0vdXNyL2xpYi9taXBzLWxpbnV4LWdudS9wa2djb25maWcv
Cj4gKyAgICAtIGVudiA+IGJ1aWxkL2VudmR1bXAudHh0Cj4gKyAgICAtIG5pbmphIC1DIGJ1aWxk
IHRlc3QKPiArICBhcnRpZmFjdHM6Cj4gKyAgICBwYXRoczoKPiArICAgICAgLSBidWlsZAo+ICsg
ICAgd2hlbjogb25fZmFpbHVyZQo+ICsKPiAgdGVzdDp0ZXN0LWxpc3QtZGlmZjoKPiAgICBkZXBl
bmRlbmNpZXM6Cj4gICAgICAtIGJ1aWxkOnRlc3RzLWRlYmlhbi1hdXRvdG9vbHMKPiBAQCAtMjIx
LDYgKzI0NiwyMyBAQCBjb250YWluZXJzOmlndC1kZWJpYW4tYXJtNjQ6Cj4gICAgICAtIGRvY2tl
ciBidWlsZCAtdCAkQ0lfUkVHSVNUUlkvJENJX1BST0pFQ1RfUEFUSC9pZ3QtZGViaWFuLWFybTY0
IC1mIERvY2tlcmZpbGUuZGViaWFuLWFybTY0IC4KPiAgICAgIC0gZG9ja2VyIHB1c2ggJENJX1JF
R0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0LWRlYmlhbi1hcm02NAo+ICAKPiArY29udGFpbmVy
czppZ3QtZGViaWFuLW1pcHM6Cj4gKyAgc3RhZ2U6IGNvbnRhaW5lcnMKPiArICBpbWFnZTogZG9j
a2VyOnN0YWJsZQo+ICsgIG9ubHk6Cj4gKyAgICBjaGFuZ2VzOgo+ICsgICAgICAtIERvY2tlcmZp
bGUuZGViaWFuLW1pcHMKPiArICAgICAgLSAuZ2l0bGFiLWNpLnltbAo+ICsgIHNlcnZpY2VzOgo+
ICsgICAgLSBkb2NrZXI6ZGluZAo+ICsgIHZhcmlhYmxlczoKPiArICAgIERPQ0tFUl9IT1NUOiB0
Y3A6Ly9kb2NrZXI6MjM3NQo+ICsgICAgRE9DS0VSX0RSSVZFUjogb3ZlcmxheTIKPiArICBzY3Jp
cHQ6Cj4gKyAgICAtIGRvY2tlciBsb2dpbiAtdSBnaXRsYWItY2ktdG9rZW4gLXAgJENJX0pPQl9U
T0tFTiAkQ0lfUkVHSVNUUlkKPiArICAgIC0gZG9ja2VyIGJ1aWxkIC10ICRDSV9SRUdJU1RSWS8k
Q0lfUFJPSkVDVF9QQVRIL2lndC1kZWJpYW4tbWlwcyAtZiBEb2NrZXJmaWxlLmRlYmlhbi1taXBz
IC4KPiArICAgIC0gZG9ja2VyIHB1c2ggJENJX1JFR0lTVFJZLyRDSV9QUk9KRUNUX1BBVEgvaWd0
LWRlYmlhbi1taXBzCj4gKwo+ICBjb250YWluZXJzOmlndC1mZWRvcmE6Cj4gICAgc3RhZ2U6IGNv
bnRhaW5lcnMKPiAgICBpbWFnZTogZG9ja2VyOnN0YWJsZQo+IGRpZmYgLS1naXQgYS9Eb2NrZXJm
aWxlLmRlYmlhbi1taXBzIGIvRG9ja2VyZmlsZS5kZWJpYW4tbWlwcwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5lZTI5ZjVmNGNjZGEKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvRG9ja2VyZmlsZS5kZWJpYW4tbWlwcwo+IEBAIC0wLDAgKzEsMzkgQEAKPiArRlJP
TSBkZWJpYW46c3RyZXRjaC1iYWNrcG9ydHMKPiArCj4gK1JVTiBhcHQtZ2V0IHVwZGF0ZQo+ICtS
VU4gYXB0LWdldCBpbnN0YWxsIC15IFwKPiArCQkJZmxleCBcCj4gKwkJCWJpc29uIFwKPiArCQkJ
cGtnLWNvbmZpZyBcCj4gKwkJCXgxMXByb3RvLWRyaTItZGV2IFwKPiArCQkJcHl0aG9uLWRvY3V0
aWxzIFwKPiArCQkJdmFsZ3JpbmQgXAo+ICsJCQlwZWcKPiArCj4gK1JVTiBkcGtnIC0tYWRkLWFy
Y2hpdGVjdHVyZSBtaXBzCj4gK1JVTiBhcHQtZ2V0IHVwZGF0ZQo+ICtSVU4gYXB0LWdldCBpbnN0
YWxsIC15IFwKPiArCQkJZ2NjLW1pcHMtbGludXgtZ251IFwKPiArCQkJbGliYXRvbWljMTptaXBz
IFwKPiArCQkJbGlicGNpYWNjZXNzLWRldjptaXBzIFwKPiArCQkJbGlia21vZC1kZXY6bWlwcyBc
Cj4gKwkJCWxpYnByb2Nwcy1kZXY6bWlwcyBcCj4gKwkJCWxpYnVud2luZC1kZXY6bWlwcyBcCj4g
KwkJCWxpYmR3LWRldjptaXBzIFwKPiArCQkJemxpYjFnLWRldjptaXBzIFwKPiArCQkJbGlibHpt
YS1kZXY6bWlwcyBcCj4gKwkJCWxpYmNhaXJvLWRldjptaXBzIFwKPiArCQkJbGlicGl4bWFuLTEt
ZGV2Om1pcHMgXAo+ICsJCQlsaWJ1ZGV2LWRldjptaXBzIFwKPiArCQkJbGliZ3NsLWRldjptaXBz
IFwKPiArCQkJbGliYXNvdW5kMi1kZXY6bWlwcyBcCj4gKwkJCWxpYmpzb24tYy1kZXY6bWlwcyBc
Cj4gKwkJCWxpYmN1cmw0LW9wZW5zc2wtZGV2Om1pcHMgXAo+ICsJCQlsaWJ4cmFuZHItZGV2Om1p
cHMgXAo+ICsJCQlsaWJ4di1kZXY6bWlwcwo+ICsKPiArUlVOIGFwdC1nZXQgaW5zdGFsbCAtdCBz
dHJldGNoLWJhY2twb3J0cyAteSBcCj4gKwkJCW1lc29uIFwKPiArCQkJbGliZHJtLWRldjptaXBz
IFwKPiArCQkJcWVtdS11c2VyIFwKPiArCQkJcWVtdS11c2VyLXN0YXRpYwo+IGRpZmYgLS1naXQg
YS9tZXNvbi1jcm9zcy1taXBzLnR4dCBiL21lc29uLWNyb3NzLW1pcHMudHh0Cj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjYzNTBkNjc3ZTBiYwo+IC0tLSAvZGV2
L251bGwKPiArKysgYi9tZXNvbi1jcm9zcy1taXBzLnR4dAo+IEBAIC0wLDAgKzEsMTIgQEAKPiAr
W2JpbmFyaWVzXQo+ICtjID0gJy91c3IvYmluL21pcHMtbGludXgtZ251LWdjYycKPiArYXIgPSAn
L3Vzci9iaW4vbWlwcy1saW51eC1nbnUtZ2NjLWFyJwo+ICtzdHJpcCA9ICcvdXNyL2Jpbi9taXBz
LWxpbnV4LWdudS1zdHJpcCcKPiArcGtnY29uZmlnID0gJ3BrZy1jb25maWcnCj4gK2V4ZV93cmFw
cGVyID0gJ3FlbXUtbWlwcycKPiArCj4gK1tob3N0X21hY2hpbmVdCj4gK3N5c3RlbSA9ICdsaW51
eCcKPiArY3B1X2ZhbWlseSA9ICdtaXBzJwo+ICtjcHUgPSAnbWlwcycKPiArZW5kaWFuID0gJ2Jp
ZycKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
