Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1875026205
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 12:38:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3884898EE;
	Wed, 22 May 2019 10:38:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B4B4898E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 10:38:30 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id y10so1200712oia.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 03:38:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=x6wg+K+WgL8DG2zwYLLZfjFG8NTa66iAHPjSVdCuEsY=;
 b=mmliAtZ/sBES51IE8osVMF8HTDv+q1dbH2nbmPORJVp6uX3thxXjhuju3enMp6ZrHu
 U+sY+RqawK2uXTiwdw405i19ZD01Nqy8uj6qHCLik/QcYQAJeyOCH+TGmtQFNNpBU2W8
 nSFVtyuCVQiAfugCtIGqo8BW86HveDAXgsYzYC3+zT6WEVK8fuyxuqZPqyc6iK0Ko7Gr
 /9RhzQy22k5lXaO8P9JR48gkfyRqEYwB9ziKqwRisvEPWvtWd4G9LKkylQZX/d1Tt89g
 FD99Bdk9jxs/HaD7B3V/fae52jlD4GzCD0JlL+nVjA6t9o7tEBcQBzBLYGJsKI5fmCbW
 OVdw==
X-Gm-Message-State: APjAAAWtEnmzgoVycOGVr4RiHlx6dljPtein3qQVA5Ms1O23XI3Jtsxj
 XmQwVIWdh5PH2bQFcvL1ijlzmxriVohxnkpLy0Wq6A==
X-Google-Smtp-Source: APXvYqwllTuVFaRTom2Ip1w7DVtCIKIg6vGydfbmkMa8+rELmqaShoNcHtv/A67nH461Y6ux1PJV6d4Wlcb3hog8J/0=
X-Received: by 2002:aca:e4c8:: with SMTP id b191mr6914932oih.110.1558521509592; 
 Wed, 22 May 2019 03:38:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190520082216.26273-10-daniel.vetter@ffwll.ch>
 <CGME20190521142317epcas2p44d184ead3ec7d514a8fa6784abf30747@epcas2p4.samsung.com>
 <20190521142304.9652-1-daniel.vetter@ffwll.ch>
 <6b9747cf-8845-0eb9-878e-f2953665fcec@samsung.com>
In-Reply-To: <6b9747cf-8845-0eb9-878e-f2953665fcec@samsung.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 22 May 2019 12:38:18 +0200
Message-ID: <CAKMK7uGKxny2cM9wPBvu9jRUKR0KP2OOHa8qAsReNsKWTvscAA@mail.gmail.com>
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=x6wg+K+WgL8DG2zwYLLZfjFG8NTa66iAHPjSVdCuEsY=;
 b=CfYeCurNCDn3hjO3u+qMUfNRL8mmvk/0/jcHv9r7SPKY4JNDX3NteV015dcJVd9TK8
 SIW4fXoGb9TFfWFqeFvDoP/3nZX/90MMyKwi0UaTZ6KePlwPAzcuJCSRHMJzg54SCKkI
 y9ZLrtCLN4J1Zw1wVyMLAy9yHyGGEaNg8ZM5Y=
Subject: Re: [Intel-gfx] [PATCH] fbcon: Remove fbcon_has_exited
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
Cc: Prarit Bhargava <prarit@redhat.com>, Kees Cook <keescook@chromium.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Yisheng Xie <ysxie@foxmail.com>,
 =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Konstantin Khorenko <khorenko@virtuozzo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMTI6MDQgUE0gQmFydGxvbWllaiBab2xuaWVya2lld2lj
ego8Yi56b2xuaWVya2llQHNhbXN1bmcuY29tPiB3cm90ZToKPgo+Cj4gSGkgRGFuaWVsLAo+Cj4g
T24gNS8yMS8xOSA0OjIzIFBNLCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+ID4gVGhpcyBpcyB1bnVz
ZWQgY29kZSBzaW5jZQo+ID4KPiA+IGNvbW1pdCA2MTA0YzM3MDk0ZTcyOWYzZDRjZTY1Nzk3MDAy
MTEyNzM1ZDQ5Y2QxCj4gPiBBdXRob3I6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Cj4gPiBEYXRlOiAgIFR1ZSBBdWcgMSAxNzozMjowNyAyMDE3ICswMjAwCj4gPgo+ID4g
ICAgIGZiY29uOiBNYWtlIGZiY29uIGEgYnVpbHQtdGltZSBkZXBlbmN5IGZvciBmYmRldgo+ID4K
PiA+IHdoZW4gZmJjb24gd2FzIG1hZGUgYSBjb21waWxlLXRpbWUgc3RhdGljIGRlcGVuZGVuY3kg
b2YgZmJkZXYuIFdlCj4gPiBjYW4ndCBleGl0IGZiY29uIGFueW1vcmUgd2l0aG91dCBleGl0aW5n
IGZiZGV2IGZpcnN0LCB3aGljaCBvbmx5IHdvcmtzCj4gPiBpZiBhbGwgZmJkZXYgZHJpdmVycyBo
YXZlIHVubG9hZGVkIGFscmVhZHkuIEhlbmNlIHRoaXMgaXMgYWxsIGRlYWQKPiA+IGNvZGUuCj4g
Pgo+ID4gdjI6IEkgbWlzc2VkIHRoYXQgZmJjb25fZXhpdCBpcyBhbHNvIGNhbGxlZCBmcm9tIGNv
bl9kZWluaXQgc3R1ZmYsIGFuZAo+ID4gdGhlcmUgZmJjb25faGFzX2V4aXRlZCBwcmV2ZW50cyBk
b3VibGUtY2xlYW51cC4gQnV0IHdlIGNhbiBmaXggdGhhdAo+ID4gYnkgcHJvcGVybHkgcmVzZXR0
aW5nIGNvbjJmYl9tYXBbXSB0byBhbGwgLTEsIHdoaWNoIGlzIHVzZWQgZXZlcnl3aGVyZQo+ID4g
ZWxzZSB0byBpbmRpY2F0ZSAibm8gZmJfaW5mbyBhbGxvY2F0ZSB0byB0aGlzIGNvbnNvbGUiLiBX
aXRoIHRoYXQKPiA+IGNoYW5nZSB0aGUgZG91YmxlLWNsZWFudXAgKHdoaWNoIHJlc3VsdGVkIGlu
IGEgbW9kdWxlIHJlZmNvdW50IHVuZGVyZmxvdywKPiA+IGFtb25nIG90aGVyIHRoaW5ncykgaXMg
cHJldmVudGVkLgo+ID4KPiA+IEFzaWRlOiBjb24yZmJfbWFwIGlzIGEgc2lnbmVkIGNoYXIsIHNv
IGRvbid0IHJlZ2lzdGVyIG1vcmUgdGhhbiAxMjggZmJfaW5mbwo+ID4gb3IgaGlsYXJpdHkgd2ls
bCBlbnN1ZS4KPiA+Cj4gPiB2MzogQ0kgc2hvd2VkIG1lIHRoYXQgSSBzdGlsbCBkaWRuJ3QgZnVs
bHkgdW5kZXJzdGFuZCB3aGF0J3MgZ29pbmcgb24KPiA+IGhlcmUuIFRoZSBsZWFrZWQgcmVmZXJl
bmNlcyBpbiBjb24yZmJfbWFwIGhhdmUgYmVlbiB1c2VkIHVwb24KPiA+IHJlYmluZGluZyB0aGUg
ZmIgY29uc29sZSBpbiBmYmNvbl9pbml0LiBJdCB3b3JrZWQgYmVjYXVzZSBmYmRldgo+ID4gdW5y
ZWdpc3RlcmluZyBzdGlsbCBjbGVhbmVkIG91dCBjb24yZmJfbWFwLCBhbmQgcmVzZXQgaXQgdG8g
aW5mb19pZHguCj4gPiBJZiB0aGUgbGFzdCBmYmRldiBkcml2ZXIgdW5yZWdpc3RlcmVkLCB0aGVu
IGl0IGFsc28gcmVzZXQgaW5mb19pZHgsCj4gPiBhbmQgdW5yZWdpc3RlcmVkIHRoZSBmYmNvbiBk
cml2ZXIuCj4gPgo+ID4gSW1vIHRoYXQncyBhbGwgYSBiaXQgZnJhZ2lsZSwgc28gbGV0J3Mga2Vl
cCB0aGUgY29uMmZiX21hcCByZXNldCB0bwo+ID4gLTEsIGFuZCBpbiBmYmNvbl9pbml0IHBpY2sg
aW5mb19pZHggaWYgd2UncmUgc3RhcnRpbmcgZnJlc2guIFRoYXQKPiA+IG1lYW5zIHVuYmluZGlu
ZyBhbmQgcmViaW5kaW5nIHdpbGwgY2xlYW5zZSB0aGUgbWFwcGluZywgYnV0IHdoeSBhcmUKPiA+
IHlvdSBkb2luZyB0aGF0IGlmIHlvdSB3YW50IHRvIHJldGFpbiB0aGUgbWFwcGluZywgc28gc2hv
dWxkIGJlIGZpbmUuCj4gPgo+ID4gQWxzbywgSSB0aGluayBpbmZvX2lkeCA9PSAtMSBpcyBpbXBv
c3NpYmxlIGluIGZiY29uX2luaXQgLSB3ZQo+ID4gdW5yZWdpc3RlciB0aGUgZmJjb24gaW4gdGhh
dCBjYXNlLiBTbyBjYXRjaCZ3YXJuIGFib3V0IHRoYXQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBCYXJ0
bG9taWVqIFpvbG5pZXJraWV3aWN6IDxiLnpvbG5pZXJraWVAc2Ftc3VuZy5jb20+Cj4gPiBDYzog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KPiA+IENjOiBIYW5zIGRlIEdv
ZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPgo+ID4gQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxub3Jh
bGZAdHJvbm5lcy5vcmc+Cj4gPiBDYzogWWlzaGVuZyBYaWUgPHlzeGllQGZveG1haWwuY29tPgo+
ID4gQ2M6IEtvbnN0YW50aW4gS2hvcmVua28gPGtob3JlbmtvQHZpcnR1b3p6by5jb20+Cj4gPiBD
YzogUHJhcml0IEJoYXJnYXZhIDxwcmFyaXRAcmVkaGF0LmNvbT4KPiA+IENjOiBLZWVzIENvb2sg
PGtlZXNjb29rQGNocm9taXVtLm9yZz4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvdmlkZW8vZmJkZXYv
Y29yZS9mYmNvbi5jIHwgMzkgKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKPiBUaGlzIHBh
dGNoIHdhcyAjMDkvMzMgaW4geW91ciBwYXRjaCBzZXJpZXMsIG5vdyBpdCBpcyBpbmRlcGVuZGVu
dCBjaGFuZ2UuCj4KPiBEbyB5b3Ugd2FudCBtZSB0byBhcHBseSBpdCBub3cgb3Igc2hvdWxkIEkg
d2FpdCBmb3IgdGhlIG5ldyB2ZXJzaW9uIG9mCj4gdGhlIHdob2xlIHNlcmllcz8KCkl0J3MgYW4g
aW4tcmVwbHktdG8gcmVwbGFjZW1lbnQgZm9yIHRoZSB0b3RhbGx5IGJyb2tlbiBvbmUsIHNvIHRo
YXQKcGF0Y2h3b3JrIHBpY2tzIHRoaW5ncyB1cCBjb3JyZWN0bHkgKGFuZCB0aGVyZWZvcmUgb3Vy
IENJKS4gSSdtIG5vdApzdXJlIGhvdyBmYXIgdGhhdCBjb252ZW50aW9uIGlzIHVzZWQgYmV5b25k
IGRyaS1kZXZlbCAuLi4KCkkgZGlkIGZpeCB1cCBhbGwgdGhlIGlzc3VlcyBwb2ludGVkIG91dCB0
aHVzIGZhciwgYnV0IEkgaGF2ZW4ndCBmdWxseQphcHBlYXNlZCBvdXIgQ0kganVzdCB5ZXQuIE9u
Y2UgdGhhdCdzIGRvbmUgSSdsbCByZXNlbmQuCgpUaGFua3MsIERhbmllbAoKPiBbIEkgbG9va2Vk
IGF0IGFsbCBwYXRjaGVzIGluIHRoZSBzZXJpZXMgYW5kIHRoZXkgbG9vayBmaW5lIHRvIG1lLgo+
ICAgQWZ0ZXIgb3V0c3RhbmRpbmcgaXNzdWVzIGFyZSBmaXhlZCBJJ2xsIGJlIGhhcHB5IHRvIGFw
cGx5IHRoZW0gYWxsCj4gICB0byBmYmRldi1mb3ItbmV4dCAoSSBjYW4gY3JlYXRlIGltbXV0YWJs
ZSBicmFuY2ggaWYgbmVlZGVkKS4gXQo+Cj4gQmVzdCByZWdhcmRzLAo+IC0tCj4gQmFydGxvbWll
aiBab2xuaWVya2lld2ljego+IFNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQKPiBTYW1zdW5n
IEVsZWN0cm9uaWNzCgoKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
