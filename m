Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D744BA4C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA126E3DA;
	Wed, 19 Jun 2019 13:42:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 687B56E3E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:42:20 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190619134219euoutp0162dadaebb49f2a9ff3169ef81d71d2d3~pnVYgFfXI2785427854euoutp01K
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:42:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190619134219euoutp0162dadaebb49f2a9ff3169ef81d71d2d3~pnVYgFfXI2785427854euoutp01K
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190619134217eucas1p1fe8a69d2cc878119b70c530e12e6f506~pnVXZWV8f2500125001eucas1p18;
 Wed, 19 Jun 2019 13:42:17 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id C6.C4.04377.9BB3A0D5; Wed, 19
 Jun 2019 14:42:17 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190619134217eucas1p132644b0c882685819e2deb11c7aa8b63~pnVWuIaiO0810408104eucas1p10;
 Wed, 19 Jun 2019 13:42:17 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190619134216eusmtrp2f0528ad01a00640a6639c5d734647bdc~pnVWf3GST1705017050eusmtrp24;
 Wed, 19 Jun 2019 13:42:16 +0000 (GMT)
X-AuditID: cbfec7f4-5632c9c000001119-5d-5d0a3bb95cfb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 91.33.04146.8BB3A0D5; Wed, 19
 Jun 2019 14:42:16 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190619134216eusmtip2fe925e71f3a93f90d1dd23e366d83e6a~pnVVx0VHh1311413114eusmtip2s;
 Wed, 19 Jun 2019 13:42:16 +0000 (GMT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <fcd3a833-e83a-53c5-7dbe-5f7a94327daa@samsung.com>
Date: Wed, 19 Jun 2019 15:42:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <8b9f9f03-54a4-9bda-6d12-2c0a3d9610b4@linux.intel.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUgTcRjH+93d7s7Z5JyGDxkFI3sRfKuoX68UGVx/SC8USSG58lBLp+zU
 sogs02yB6Qqi+ZbGfEPUVm1OFGOVmxVpaCbW0Cgro5mRFpFanqfkf5/7Pt/vPc8XfiypHlcs
 ZhN1aYJep03S0ErK2v67M8S+WRkTPlG9ErteVxD4+Vc3g8vfuUlsy/uEcM/4Nxpn32mgcVHB
 PQJXdTcgXD12i8Gt5QS+0ThK4IHxJwi78kcVuPz7AwoPDrch3GbqZbD7+mO03ZcvrTvLt/68
 TfF2k5vh77QME/zb3haaL+3Yx7eV1DH8wFUnwTub+xm+4f4riv9hWbrX+7ByS5yQlJgh6MO2
 xSoT3o9cJlP/hp/uvrQ/C+UEGZAXC9w6aGopYgxIyaq5agTGF+8JaaDmxhA8NSfJgx8Ieiwj
 tAExM4muQ7JchcCSP6GQPzwIij1vkBT24zZCpe3bDPtPc0fuM1pikjMooNm1RmKa2wSFl2tn
 PCpuG4yV98wwxQVBfVYFKfEiLhoG2hsVsscXOm59oCT24nZC7406Qv5nAPR/KJvlZWDzFJPS
 QcCZWahxmJFcMxKMQxdn2Q++OO8zMi+Bv3YpLAXqEUzmfZ5N2xBUXZ+iZddmeOR8OX0GO71i
 NTQ0h8nyDhgylZKSDJwP9Hl85SN8wGi9OSurIC9XLbtXQGNlIz231mCvIQuQxjSvmmleHdO8
 Oqb/e28jqhYFCOlicrwgrtEJp0JFbbKYrosPPZ6SbEHTj/HZlHOsCTVPHHMgjkWahSpXsDJG
 rdBmiJnJDgQsqfFXeWd7xahVcdrMM4I+5ag+PUkQHSiQpTQBqrMLBo+ouXhtmnBSEFIF/dyU
 YL0WZ6GiHfVlURmwPl5o3xWe233eL+pdrrVsI40tns5zCyIWmQKvhnjMhT4Xukq+PI/MTovq
 Dfya0sP9+qPLKRitjza6HD9vViyfKvS51j689kCfMZ3ooOwwfLDV3UUM6cVJx9ZEnTW1f4/1
 493d+EjIFdtDd+m4YpV4oiR2qblww14NJSZoI4JJvaj9B6eVexSIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgleLIzCtJLcpLzFFi42I5/e/4Pd0d1lyxBu9mmVicuL6IyeLMm7vs
 Fgsf3mW22N7xnNHiytf3bBbNi9ezWcyesJnJYvnl9YwWK77MZLfYu5DJYsqGD0wW978eZbQ4
 0feB1WLhx60sFg9e7me02D/rGrvF3clHGB0EPeatqfbY+20Bi8fOWXfZPRbvecnkcefaHjaP
 eScDPfbPXcPucb/7OJPH8V232D3Wb7nK4vF5k1wAd5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWF
 npGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexuN37cwF/w0qLrcENTC2qnYxsnNICJhIXAjv
 YuTiEBJYyijRfeozWxcjB1BYRuL4+rIuRk4gU1jiz7UuNoia14wSk7+fZQVJCAtYSizb/p4R
 xBYBsk+2nQYrYhboY5X49OEqO0THXiaJ/m9PmUCq2ASsJCa2rwLr4BWwk/iy8AqYzSKgKrGu
 YREziC0qECFx5v0KFogaQYmTM5+A2ZwCzhLXpqwBm8MsoC7xZ94lZghbXOLWk/lQcXmJ7W/n
 ME9gFJqFpH0WkpZZSFpmIWlZwMiyilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzAVbDv2c/MO
 xksbgw8xCnAwKvHwntDiihViTSwrrsw9xCjBwawkwsvdzBkrxJuSWFmVWpQfX1Sak1p8iNEU
 6LmJzFKiyfnANJVXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1tSC1CKaPiYNTqoEx
 U2lmvG5RLaOXKVdkyNzoTA5pvQe6btr+BVck/gZMurHjW+b/4He7JRZs254rvtO7MuHXEeNg
 ffVXsSfY49dlnbH/5NbqNtlf+twOo9jK31PCch3eTbQ4xbJSf2H3d9ddtpeOhHwOi36y8bXw
 qyjumQ6aCfM22/y9+cSmyT85b7KsfFyN4jolluKMREMt5qLiRADD9osVGwMAAA==
X-CMS-MailID: 20190619134217eucas1p132644b0c882685819e2deb11c7aa8b63
X-Msg-Generator: CA
X-RootMTR: 20190618092027epcas1p464b0272448643905fefe528a27cfbae4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190618092027epcas1p464b0272448643905fefe528a27cfbae4
References: <887603f2-57a4-5a15-faa3-62634fe4b296@linux.intel.com>
 <CGME20190618092027epcas1p464b0272448643905fefe528a27cfbae4@epcas1p4.samsung.com>
 <ed2d0c16-807d-ddfb-eb96-4131d9daa47d@linux.intel.com>
 <7f6223e8-9945-fe43-5ed7-9a8df8c3bcd6@samsung.com>
 <8b9f9f03-54a4-9bda-6d12-2c0a3d9610b4@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=samsung.com; 
 s=mail20170921; t=1560951739;
 bh=26WH2MroHkK0rAj3z4L2Gzfzkzrcmq5+B2FaFkXEPgY=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Yt1p7qzihStIBkDl8czrdTqB+liz1Hoj8bzmoB2qruiRnOzQBUF0JSCKEMrDWVTpj
 s7OW3v9Gw0RZJNZIvkywVyHPvqIBz6eDwBzdXWGlM4T4TT+YyKvhil5sCWXwDjk8a4
 uoH95X3gQ+gnMJaDOwjfm02lpx3QeLsJolFvY8gs=
Subject: Re: [Intel-gfx] [PULL] topic/remove-fbcon-notifiers for v5.3
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
Cc: "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 dim-tools@lists.freedesktop.org, Jingoo Han <jingoohan1@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, intel-gfx@lists.freedesktop.org,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org, Jiri Slaby <jslaby@suse.com>,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDYvMTgvMTkgMTo0NiBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gT3AgMTgtMDYt
MjAxOSBvbSAxMzoxNyBzY2hyZWVmIEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3o6Cj4+IEhpLAo+
Pgo+PiBPbiA2LzE4LzE5IDExOjIwIEFNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+IE9w
IDE0LTA2LTIwMTkgb20gMTE6MjUgc2NocmVlZiBNYWFydGVuIExhbmtob3JzdDoKPj4+PiBIaSBh
bGwsCj4+Pj4KPj4+PiBBcyBkaXNjdXNzZWQgd2l0aCBEYW5pZWwgViwgSSdtIGp1c3QgZG9pbmcg
dGhlIHBhcGVyd29yayBoZXJlIGFzIGRybS1taXNjIG1haW50YWluZXIuCj4+Pj4KPj4+PiBUaGlz
IGlzIHRoZSB0b3BpYyBwdWxsIHJlcXVlc3QgZm9yIHRoZSBmYmRldiBub3RpZmllciByZW1vdmFs
Lgo+Pj4+Cj4+Pj4gQmFyLCBwbGVhc2UgbWFrZSBhIGZpbmFsIGNoZWNrIGFuZCBwdWxsIGludG8g
eW91ciBmYmRldiB0cmVlLgo+Pj4+Cj4+Pj4gTGVlLCBwbGVhc2UgbWFrZSBhIGZpbmFsIGNoZWNr
IGFuZCBwdWxsIGludG8geW91ciBiYWNrbGlnaHQgdHJlZS4KPj4+Pgo+Pj4+IEdyZWcsIHRoaXMg
aXMganVzdCBmeWksIHlvdSBhbHJlYWR5IGFja2VkIGFsbCB0aGUgdnQgYW5kIHN0YWdpbmcgcGF0
Y2hlcyBpbiBoZXJlCj4+Pj4gdG8gbGFuZCB0aHJvdWdoIG90aGVyIHRyZWVzLgo+Pj4+Cj4+Pj4g
SSdsbCBwdWxsIHRoaXMgaW50byBkcm0tbWlzYy1uZXh0IG9uY2UgQmFydCAmIExlZSBhY2tlZCBp
dC4KPj4+Pgo+Pj4+IENoZWVycywgTWFhcnRlbi4KPj4+IEJhcnQsIExlZSwgcGluZz8KPj4gTG9v
a3MgT0sgdG8gbWUgKEkgaGF2ZSB0ZXN0IHB1bGxlZCBpdCBsb2NhbGx5IGFuZCB0aGVyZSBpcyBv
bmx5IHRyaXZpYWwKPj4gbWVyZ2UgY29uZmxpY3Qgb24gcmVtb3ZlZCBteHNmYiBmYmRldiBkcml2
ZXIpIGJ1dCBpdCBzZWVtcyB0aGF0IGFsbAo+PiBwYXRjaGVzIG1pc3MgeW91ciAiUy1vLUI6IiBs
aW5lICh0aGVyZSBpcyBvbmx5ICJSZXZpZXdlZC1ieToiIHRhZyB3aGljaAo+PiBpcyBPSyBidXQg
aGFzIGEgZGlmZmVyZW50IG1lYW5pbmcpPwo+IAo+IEhleSwKPiAKPiBJIGNyZWF0ZWQgdGhlIHRv
cGljIGJyYW5jaCwgYnV0IGRhbmllbCBwdXNoZWQgdGhlIHBhdGNoZXMgdG8gaXQuIDopCj4gCj4g
VGhhdCBleHBsYWlucyB3aHkgdGhlcmUncyBhIFItQiBidXQgbm8gUy1vLUIuCgpJIHNlZSwgdGhh
dCdzIGtpbmQgb2YgaW50ZXJlc3Rpbmcgd29yay1mbG93Li4gOikKCkFueXdheSwgSSd2ZSBwdWxs
ZWQgdG9waWMvcmVtb3ZlLWZiY29uLW5vdGlmaWVycy0yMDE5LTA2LTE0LTEgdGFnCihhbmQgYWxz
byB0b3BpYy9yZW1vdmUtZmJjb24tbm90aWZpZXJzIGJyYW5jaCB0byBnZXQgYSBidWlsZGZpeCkK
aW50byBmYmRldi1mb3ItbmV4dCwgdGhhbmtzIQoKQmVzdCByZWdhcmRzLAotLQpCYXJ0bG9taWVq
IFpvbG5pZXJraWV3aWN6ClNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKU2Ftc3VuZyBFbGVj
dHJvbmljcwoKPiBDaGVlcnMsCj4gCj4gTWFhcnRlbgo+IAo+PiBCZXN0IHJlZ2FyZHMsCj4+IC0t
Cj4+IEJhcnRsb21pZWogWm9sbmllcmtpZXdpY3oKPj4gU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBv
bGFuZAo+PiBTYW1zdW5nIEVsZWN0cm9uaWNzCj4+Cj4+Pj4gdG9waWMvcmVtb3ZlLWZiY29uLW5v
dGlmaWVycy0yMDE5LTA2LTE0LTE6Cj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+IHRvcGljL3JlbW92ZS1mYmNv
bi1ub3RpZmllcnM6Cj4+Pj4gLSByZW1vdmUgZmJkZXYgbm90aWZpZXIgdXNhZ2UgZm9yIGZiY29u
LCBhcyBwcmVwIHdvcmsgdG8gY2xlYW4gdXAgdGhlIGZiY29uIGxvY2tpbmcKPj4+PiAtIGFzc29y
dGVkIGxvY2tpbmcgY2hlY2tzIGluIHZ0L2NvbnNvbGUgY29kZQo+Pj4+IC0gYXNzb3J0ZWQgbm90
aWZpZXIgYW5kIGNsZWFudXBzIGluIGZiZGV2IGFuZCBiYWNrbGlnaHQgY29kZQo+Pj4+Cj4+Pj4g
VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBkMWZkYjZkOGY2YTQxMDlhNDI2MzE3
NmM4NGI4OTkwNzZhNWY4MDA4Ogo+Pj4+Cj4+Pj4gICBMaW51eCA1LjItcmM0ICgyMDE5LTA2LTA4
IDIwOjI0OjQ2IC0wNzAwKQo+Pj4+Cj4+Pj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9z
aXRvcnkgYXQ6Cj4+Pj4KPj4+PiAgIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2RybS9k
cm0tbWlzYyB0YWdzL3RvcGljL3JlbW92ZS1mYmNvbi1ub3RpZmllcnMtMjAxOS0wNi0xNC0xCj4+
Pj4KPj4+PiBmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gMWRjZmY0YWU2NTE4NWU4YzAz
MDA5NzJmNmQ4ZDM5ZDlhOWRiMmJkYToKPj4+Pgo+Pj4+ICAgYmFja2xpZ2h0OiBzaW1wbGlmeSBs
Y2Qgbm90aWZpZXIgKDIwMTktMDYtMTMgMTA6MDc6MjAgKzAyMDApCj4+Pj4KPj4+PiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4+Pj4gRGFuaWVsIFZldHRlciAoMzMpOgo+Pj4+ICAgICAgIGR1bW15Y29uOiBTcHJpbmtsZSBs
b2NraW5nIGNoZWNrcwo+Pj4+ICAgICAgIGZiZGV2OiBsb2NraW5nIGNoZWNrIGZvciBmYl9zZXRf
c3VzcGVuZAo+Pj4+ICAgICAgIHZ0OiBtaWdodF9zbGVlcCgpIGFubm90YXRpb24gZm9yIGRvX2Js
YW5rX3NjcmVlbgo+Pj4+ICAgICAgIHZ0OiBNb3JlIGxvY2tpbmcgY2hlY2tzCj4+Pj4gICAgICAg
ZmJkZXYvc2ExMTAwZmI6IFJlbW92ZSBkZWFkIGNvZGUKPj4+PiAgICAgICBmYmRldi9jeWJlcjIw
MDA6IFJlbW92ZSBzdHJ1Y3QgZGlzcGxheQo+Pj4+ICAgICAgIGZiZGV2L2F0eTEyOGZiOiBSZW1v
dmUgZGVhZCBjb2RlCj4+Pj4gICAgICAgZmJjb246IHMvc3RydWN0IGRpc3BsYXkvc3RydWN0IGZi
Y29uX2Rpc3BsYXkvCj4+Pj4gICAgICAgZmJjb246IFJlbW92ZSBmYmNvbl9oYXNfZXhpdGVkCj4+
Pj4gICAgICAgZmJjb246IGNhbGwgZmJjb25fZmJfKHVuKXJlZ2lzdGVyZWQgZGlyZWN0bHkKPj4+
PiAgICAgICBmYmRldi9zaF9tb2JpbGU6IHJlbW92ZSBzaF9tb2JpbGVfbGNkY19kaXNwbGF5X25v
dGlmeQo+Pj4+ICAgICAgIGZiZGV2L29tYXA6IHN5c2ZzIGZpbGVzIGNhbid0IGRpc2FwcGVhciBi
ZWZvcmUgdGhlIGRldmljZSBpcyBnb25lCj4+Pj4gICAgICAgZmJkZXY6IHN5c2ZzIGZpbGVzIGNh
bid0IGRpc2FwcGVhciBiZWZvcmUgdGhlIGRldmljZSBpcyBnb25lCj4+Pj4gICAgICAgc3RhZ2lu
Zy9vbHBjOiBsb2NrX2ZiX2luZm8gY2FuJ3QgZmFpbAo+Pj4+ICAgICAgIGZiZGV2L2F0eWZiOiBs
b2NrX2ZiX2luZm8gY2FuJ3QgZmFpbAo+Pj4+ICAgICAgIGZiZGV2OiBsb2NrX2ZiX2luZm8gY2Fu
bm90IGZhaWwKPj4+PiAgICAgICBmYmNvbjogY2FsbCBmYmNvbl9mYl9iaW5kIGRpcmVjdGx5Cj4+
Pj4gICAgICAgZmJkZXY6IG1ha2UgdW5yZWdpc3Rlci91bmxpbmsgZnVuY3Rpb25zIG5vdCBmYWls
Cj4+Pj4gICAgICAgZmJkZXY6IHVuaWZ5IHVubGlua19mcmFtZWJ1ZmZlciBwYXRocwo+Pj4+ICAg
ICAgIGZiZGV2L3NoX21vYjogUmVtb3ZlIGZiIG5vdGlmaWVyIGNhbGxiYWNrCj4+Pj4gICAgICAg
ZmJkZXY6IGRpcmVjdGx5IGNhbGwgZmJjb25fc3VzcGVuZGVkL3Jlc3VtZWQKPj4+PiAgICAgICBm
YmNvbjogQ2FsbCBmYmNvbl9tb2RlX2RlbGV0ZWQvbmV3X21vZGVsaXN0IGRpcmVjdGx5Cj4+Pj4g
ICAgICAgZmJkZXY6IENhbGwgZmJjb25fZ2V0X3JlcXVpcmVtZW50IGRpcmVjdGx5Cj4+Pj4gICAg
ICAgUmV2ZXJ0ICJiYWNrbGlnaHQvZmJjb246IEFkZCBGQl9FVkVOVF9DT05CTEFOSyIKPj4+PiAg
ICAgICBmYm1lbTogcHVsbCBmYmNvbl9mYl9ibGFua2VkIG91dCBvZiBmYl9ibGFuawo+Pj4+ICAg
ICAgIGZiZGV2OiByZW1vdmUgRkJJTkZPX01JU0NfVVNFUkVWRU5UIGFyb3VuZCBmYl9ibGFuawo+
Pj4+ICAgICAgIGZiOiBGbGF0dGVuIGNvbnRyb2wgZmxvdyBpbiBmYl9zZXRfdmFyCj4+Pj4gICAg
ICAgZmJjb246IHJlcGxhY2UgRkJfRVZFTlRfTU9ERV9DSEFOR0UvX0FMTCB3aXRoIGRpcmVjdCBj
YWxscwo+Pj4+ICAgICAgIHZnYXN3aXRjaGVyb286IGNhbGwgZmJjb25fcmVtYXBfYWxsIGRpcmVj
dGx5Cj4+Pj4gICAgICAgZmJjb246IENhbGwgY29uMmZiX21hcCBmdW5jdGlvbnMgZGlyZWN0bHkK
Pj4+PiAgICAgICBmYmNvbjogRG9jdW1lbnQgd2hhdCBJIGxlYXJuZWQgYWJvdXQgZmJjb24gbG9j
a2luZwo+Pj4+ICAgICAgIHN0YWdpbmcvb2xwY19kY29uOiBBZGQgZHJtIGNvbnZlcnNpb24gdG8g
VE9ETwo+Pj4+ICAgICAgIGJhY2tsaWdodDogc2ltcGxpZnkgbGNkIG5vdGlmaWVyCj4+Pj4KPj4+
PiAgYXJjaC9hcm0vbWFjaC1weGEvYW0yMDBlcGQuYyAgICAgICAgICAgICAgICAgICAgfCAgMTMg
Ky0KPj4+PiAgZHJpdmVycy9ncHUvdmdhL3ZnYV9zd2l0Y2hlcm9vLmMgICAgICAgICAgICAgICAg
fCAgMTEgKy0KPj4+PiAgZHJpdmVycy9tZWRpYS9wY2kvaXZ0di9pdnR2ZmIuYyAgICAgICAgICAg
ICAgICAgfCAgIDYgKy0KPj4+PiAgZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYyAg
ICAgICAgICAgICAgfCAgIDQgKy0KPj4+PiAgZHJpdmVycy9zdGFnaW5nL29scGNfZGNvbi9UT0RP
ICAgICAgICAgICAgICAgICAgfCAgIDcgKwo+Pj4+ICBkcml2ZXJzL3N0YWdpbmcvb2xwY19kY29u
L29scGNfZGNvbi5jICAgICAgICAgICB8ICAgNiArLQo+Pj4+ICBkcml2ZXJzL3R0eS92dC92dC5j
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAxOCArKwo+Pj4+ICBkcml2ZXJzL3ZpZGVv
L2JhY2tsaWdodC9iYWNrbGlnaHQuYyAgICAgICAgICAgICB8ICAgMiArLQo+Pj4+ICBkcml2ZXJz
L3ZpZGVvL2JhY2tsaWdodC9sY2QuYyAgICAgICAgICAgICAgICAgICB8ICAxMiAtCj4+Pj4gIGRy
aXZlcnMvdmlkZW8vY29uc29sZS9kdW1teWNvbi5jICAgICAgICAgICAgICAgIHwgICA2ICsKPj4+
PiAgZHJpdmVycy92aWRlby9mYmRldi9hdHkvYXR5MTI4ZmIuYyAgICAgICAgICAgICAgfCAgNjQg
LS0tLQo+Pj4+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2F0eS9hdHlmYl9iYXNlLmMgICAgICAgICAg
ICB8ICAgMyArLQo+Pj4+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjbWFwLmMgICAgICAg
ICAgICAgICB8ICAgNiArLQo+Pj4+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYyAg
ICAgICAgICAgICAgICB8IDMxMyArKysrKysrKy0tLS0tLS0tLS0tCj4+Pj4gIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvY29yZS9mYmNvbi5oICAgICAgICAgICAgICAgIHwgICA2ICstCj4+Pj4gIGRyaXZl
cnMvdmlkZW8vZmJkZXYvY29yZS9mYm1lbS5jICAgICAgICAgICAgICAgIHwgMzk5ICsrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLQo+Pj4+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJzeXNmcy5j
ICAgICAgICAgICAgICB8ICAyMCArLQo+Pj4+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2N5YmVyMjAw
MGZiLmMgICAgICAgICAgICAgICB8ICAgMSAtCj4+Pj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvbmVv
ZmIuYyAgICAgICAgICAgICAgICAgICAgIHwgICA5ICstCj4+Pj4gIGRyaXZlcnMvdmlkZW8vZmJk
ZXYvb21hcDIvb21hcGZiL29tYXBmYi1zeXNmcy5jIHwgIDIxICstCj4+Pj4gIGRyaXZlcnMvdmlk
ZW8vZmJkZXYvc2ExMTAwZmIuYyAgICAgICAgICAgICAgICAgIHwgIDI1IC0tCj4+Pj4gIGRyaXZl
cnMvdmlkZW8vZmJkZXYvc2F2YWdlL3NhdmFnZWZiX2RyaXZlci5jICAgIHwgICA5ICstCj4+Pj4g
IGRyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5jICAgICAgICAgIHwgMTMyICst
LS0tLS0tCj4+Pj4gIGRyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5oICAgICAg
ICAgIHwgICA1IC0KPj4+PiAgaW5jbHVkZS9saW51eC9jb25zb2xlX3N0cnVjdC5oICAgICAgICAg
ICAgICAgICAgfCAgIDUgKy0KPj4+PiAgaW5jbHVkZS9saW51eC9mYi5oICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgNDUgKy0tCj4+Pj4gIGluY2x1ZGUvbGludXgvZmJjb24uaCAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgIDMwICsrCj4+Pj4gIDI3IGZpbGVzIGNoYW5nZWQsIDM5
NiBpbnNlcnRpb25zKCspLCA3ODIgZGVsZXRpb25zKC0pCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
