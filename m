Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E5E2AE6B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 08:13:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 504F78980C;
	Mon, 27 May 2019 06:13:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21DF9897FF
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 06:13:10 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id w33so21625525edb.10
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 May 2019 23:13:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=7H+ORXniLUXhza/9F/V7JlR5/dLzvYxJ/rvY50k/cqQ=;
 b=WPCBE9yWnR8WIyB9YUoRYBQWqWuGRe5C/phMPmVdJ+xCH8QhTiHUPPT9Y0qTtkyRRV
 PU64TovFNoEICZyNCiYlPBvBxWvxvt7HuvbLVpAPDkjGxLMSKYqlB7TGyPM0invSXdNT
 RYvw6yum0gvCZHmAZ+VtCSRC/bfVKPnePxUU08SFNPmDwMd1ibUT7WsFdQTKeTLvbDpr
 d/BC2yX7aO5aQbsAML8jsBRrz4xIC5JCG2zcO8snNujs+m40H41af8OOHzAVYHTHnN0U
 LzWDuN4edVkSOx5kNZLGfbCu/beUVHSx+6S2x62aACoh7c5DFM+gqaXcZsycCJEiR+Ds
 iL+w==
X-Gm-Message-State: APjAAAUX31Xmodw43Vvt64lGKIk4Dfn0oABZUwsjz1PEpezdj9CiHRmR
 0kV0Ozn8ptvDdPaJKD6rvNxTGA==
X-Google-Smtp-Source: APXvYqyuoibuLqARzQXzG1SGagVDv3LZfHT6fRhglSZSYG2mqhYXxsrhbqeogYbGhbwy4FE9kaTkIQ==
X-Received: by 2002:a50:89e3:: with SMTP id h32mr59542599edh.51.1558937588733; 
 Sun, 26 May 2019 23:13:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id d90sm3001616edd.96.2019.05.26.23.13.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 26 May 2019 23:13:08 -0700 (PDT)
Date: Mon, 27 May 2019 08:13:06 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190527061306.GG21222@phenom.ffwll.local>
Mail-Followup-To: Sam Ravnborg <sam@ravnborg.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
 <20190524085354.27411-12-daniel.vetter@ffwll.ch>
 <20190525150159.GA27341@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190525150159.GA27341@ravnborg.org>
X-Operating-System: Linux phenom 4.14.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=7H+ORXniLUXhza/9F/V7JlR5/dLzvYxJ/rvY50k/cqQ=;
 b=Qt+GJqKyBi7Z4GIlsDJm44jn9QgMDJoZbtJsoq2cecIpogAkNs6eVtLqUBQTPS89l8
 r9sJJ48UaZm44oPS8Er6slJi4lMpuBdas2bnXGPO7+bThZQwjg17Y8YowkS4Q+HAqt+R
 9yPRUlOQDQxLfIqvBMyFVB2/ar/Wmd1BfDzPs=
Subject: Re: [Intel-gfx] [PATCH 11/33] fbdev/sh_mobile: remove
 sh_mobile_lcdc_display_notify
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
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBNYXkgMjUsIDIwMTkgYXQgMDU6MDE6NTlQTSArMDIwMCwgU2FtIFJhdm5ib3JnIHdy
b3RlOgo+IEhpIERhbmllbAo+IAo+ID4gSXQncyBkZWFkIGNvZGUsIGFuZCByZW1vdmluZyBpdCBh
dm9pZHMgbWUgaGF2aW5nIHRvIHVuZGVyc3RhbmQKPiA+IHdoYXQgaXQncyBkb2luZyB3aXRoIGxv
Y2tfZmJfaW5mby4KPiAKPiBJIHB1c2hlZCB0aGUgc2VyaWVzIHRocm91Z2ggbXkgYnVpbGQgdGVz
dHMgd2hpY2ggaW5jbHVkZSB0aGUgc2gKPiBhcmNoaXRlY3R1cmUuCj4gCj4gT25lIGVycm9yIGFu
ZCBvbmUgd2FybmluZyB3YXMgdHJpZ2dlcmVkIGZyb20gc2hfbW9iaWxlX2xjZGNmYi5jLgo+IFRo
ZSByZXN0IHdhcyBmaW5lLgo+IAo+IFRoZSBwYXRjaCBiZWxvdyByZW1vdmVkIHRoZSBzb2xlIHVz
ZXIgb2YKPiBzaF9tb2JpbGVfbGNkY19tdXN0X3JlY29uZmlndXJlKCkgc28gdGhpcyB0cmlnZ2Vy
cyBhIHdhcm5pbmcuCj4gCj4gQW5kIEkgYWxzbyBnZXQgdGhlIGZvbGxvd2luZyBlcnJvcjoKPiBk
cml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIuYzogSW4gZnVuY3Rpb24g4oCYc2hf
bW9iaWxlX2ZiX3JlY29uZmln4oCZOgo+IGRyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xj
ZGNmYi5jOjE4MDA6MjogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKA
mGZiY29uX3VwZGF0ZV92Y3PigJk7IGRpZCB5b3UgbWVhbiDigJhmaWxlX3VwZGF0ZV90aW1l4oCZ
PyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgIGZiY29uX3VwZGF0
ZV92Y3MoaW5mbywgdHJ1ZSk7Cj4gICBefn5+fn5+fn5+fn5+fn5+Cj4gICBmaWxlX3VwZGF0ZV90
aW1lCj4gCj4gSSBkaWQgbm90IGNoZWNrIGJ1dCBhc3N1bWUgdGhlIGVycm9yIHdhcyB0cmlnZ2Vy
ZWQgaW4gcGF0Y2ggMjggd2hlcmUKPiBmYmNvbl91cGRhdGVfdmNzKCkgaW4gaW50cm9kdWNlZC4K
Ck9vcHMuIENhbiBJIGhhdmUgeW91ciBzb2Igc28gSSBjYW4gc3F1YXNoIHRoaXMgaW4/CgpUaGFu
a3MsIERhbmllbAoKPiAKPiAKPiBCb3RoIGFyZSB0cml2aWFsbHkgZml4ZWQgYnkgYXBwZW5kZWQg
cGF0Y2guCj4gCj4gCVNhbQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3No
X21vYmlsZV9sY2RjZmIuYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5j
Cj4gaW5kZXggYmIxYTYxMGQwMzYzLi5iODQ1NDQyNDkxMGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy92aWRlby9mYmRldi9zaF9tb2JpbGVfbGNkY2ZiLmMKPiArKysgYi9kcml2ZXJzL3ZpZGVvL2Zi
ZGV2L3NoX21vYmlsZV9sY2RjZmIuYwo+IEBAIC0xNSw2ICsxNSw3IEBACj4gICNpbmNsdWRlIDxs
aW51eC9jdHlwZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9mYmNvbi5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvZ3Bpby5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW5pdC5oPgo+ICAjaW5jbHVkZSA8
bGludXgvaW50ZXJydXB0Lmg+Cj4gQEAgLTUzMywyNSArNTM0LDYgQEAgc3RhdGljIHZvaWQgc2hf
bW9iaWxlX2xjZGNfZGlzcGxheV9vZmYoc3RydWN0IHNoX21vYmlsZV9sY2RjX2NoYW4gKmNoKQo+
ICAJCWNoLT50eF9kZXYtPm9wcy0+ZGlzcGxheV9vZmYoY2gtPnR4X2Rldik7Cj4gIH0KPiAgCj4g
LXN0YXRpYyBib29sCj4gLXNoX21vYmlsZV9sY2RjX211c3RfcmVjb25maWd1cmUoc3RydWN0IHNo
X21vYmlsZV9sY2RjX2NoYW4gKmNoLAo+IC0JCQkJY29uc3Qgc3RydWN0IGZiX3ZpZGVvbW9kZSAq
bmV3X21vZGUpCj4gLXsKPiAtCWRldl9kYmcoY2gtPmluZm8tPmRldiwgIk9sZCAldXgldSwgbmV3
ICV1eCV1XG4iLAo+IC0JCWNoLT5kaXNwbGF5Lm1vZGUueHJlcywgY2gtPmRpc3BsYXkubW9kZS55
cmVzLAo+IC0JCW5ld19tb2RlLT54cmVzLCBuZXdfbW9kZS0+eXJlcyk7Cj4gLQo+IC0JLyogSXQg
Y2FuIGJlIGEgZGlmZmVyZW50IG1vbml0b3Igd2l0aCBhbiBlcXVhbCB2aWRlby1tb2RlICovCj4g
LQlpZiAoZmJfbW9kZV9pc19lcXVhbCgmY2gtPmRpc3BsYXkubW9kZSwgbmV3X21vZGUpKQo+IC0J
CXJldHVybiBmYWxzZTsKPiAtCj4gLQlkZXZfZGJnKGNoLT5pbmZvLT5kZXYsICJTd2l0Y2hpbmcg
JXUgLT4gJXUgbGluZXNcbiIsCj4gLQkJY2gtPmRpc3BsYXkubW9kZS55cmVzLCBuZXdfbW9kZS0+
eXJlcyk7Cj4gLQljaC0+ZGlzcGxheS5tb2RlID0gKm5ld19tb2RlOwo+IC0KPiAtCXJldHVybiB0
cnVlOwo+IC19Cj4gLQo+ICBzdGF0aWMgaW50IHNoX21vYmlsZV9sY2RjX2NoZWNrX3ZhcihzdHJ1
Y3QgZmJfdmFyX3NjcmVlbmluZm8gKnZhciwKPiAgCQkJCSAgICBzdHJ1Y3QgZmJfaW5mbyAqaW5m
byk7Cj4gIAo+IAo+ICAKPiA+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+Cj4gPiBSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVy
dCtyZW5lc2FzQGdsaWRlci5iZT4KPiA+IENjOiBHZWVydCBVeXR0ZXJob2V2ZW4gPGdlZXJ0K3Jl
bmVzYXNAZ2xpZGVyLmJlPgo+ID4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIu
YyB8IDYzIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgZHJpdmVycy92aWRlby9mYmRl
di9zaF9tb2JpbGVfbGNkY2ZiLmggfCAgNSAtLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwgNjggZGVs
ZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21v
YmlsZV9sY2RjZmIuYyBiL2RyaXZlcnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5jCj4g
PiBpbmRleCBkYzQ2YmUzOGM5NzAuLmM1OTI0ZjVlOThjNiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvdmlkZW8vZmJkZXYvc2hfbW9iaWxlX2xjZGNmYi5jCj4gPiArKysgYi9kcml2ZXJzL3ZpZGVv
L2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIuYwo+ID4gQEAgLTU1Niw2NyArNTU2LDYgQEAgc2hfbW9i
aWxlX2xjZGNfbXVzdF9yZWNvbmZpZ3VyZShzdHJ1Y3Qgc2hfbW9iaWxlX2xjZGNfY2hhbiAqY2gs
Cj4gPiAgc3RhdGljIGludCBzaF9tb2JpbGVfbGNkY19jaGVja192YXIoc3RydWN0IGZiX3Zhcl9z
Y3JlZW5pbmZvICp2YXIsCj4gPiAgCQkJCSAgICBzdHJ1Y3QgZmJfaW5mbyAqaW5mbyk7Cj4gPiAg
Cj4gPiAtc3RhdGljIGludCBzaF9tb2JpbGVfbGNkY19kaXNwbGF5X25vdGlmeShzdHJ1Y3Qgc2hf
bW9iaWxlX2xjZGNfY2hhbiAqY2gsCj4gPiAtCQkJCQkgZW51bSBzaF9tb2JpbGVfbGNkY19lbnRp
dHlfZXZlbnQgZXZlbnQsCj4gPiAtCQkJCQkgY29uc3Qgc3RydWN0IGZiX3ZpZGVvbW9kZSAqbW9k
ZSwKPiA+IC0JCQkJCSBjb25zdCBzdHJ1Y3QgZmJfbW9uc3BlY3MgKm1vbnNwZWMpCj4gPiAtewo+
ID4gLQlzdHJ1Y3QgZmJfaW5mbyAqaW5mbyA9IGNoLT5pbmZvOwo+ID4gLQlzdHJ1Y3QgZmJfdmFy
X3NjcmVlbmluZm8gdmFyOwo+ID4gLQlpbnQgcmV0ID0gMDsKPiA+IC0KPiA+IC0Jc3dpdGNoIChl
dmVudCkgewo+ID4gLQljYXNlIFNIX01PQklMRV9MQ0RDX0VWRU5UX0RJU1BMQVlfQ09OTkVDVDoK
PiA+IC0JCS8qIEhETUkgcGx1ZyBpbiAqLwo+ID4gLQkJY29uc29sZV9sb2NrKCk7Cj4gPiAtCQlp
ZiAobG9ja19mYl9pbmZvKGluZm8pKSB7Cj4gPiAtCj4gPiAtCj4gPiAtCQkJY2gtPmRpc3BsYXku
d2lkdGggPSBtb25zcGVjLT5tYXhfeCAqIDEwOwo+ID4gLQkJCWNoLT5kaXNwbGF5LmhlaWdodCA9
IG1vbnNwZWMtPm1heF95ICogMTA7Cj4gPiAtCj4gPiAtCQkJaWYgKCFzaF9tb2JpbGVfbGNkY19t
dXN0X3JlY29uZmlndXJlKGNoLCBtb2RlKSAmJgo+ID4gLQkJCSAgICBpbmZvLT5zdGF0ZSA9PSBG
QklORk9fU1RBVEVfUlVOTklORykgewo+ID4gLQkJCQkvKiBGaXJzdCBhY3RpdmF0aW9uIHdpdGgg
dGhlIGRlZmF1bHQgbW9uaXRvci4KPiA+IC0JCQkJICogSnVzdCB0dXJuIG9uLCBpZiB3ZSBydW4g
YSByZXN1bWUgaGVyZSwgdGhlCj4gPiAtCQkJCSAqIGxvZ28gZGlzYXBwZWFycy4KPiA+IC0JCQkJ
ICovCj4gPiAtCQkJCWluZm8tPnZhci53aWR0aCA9IGNoLT5kaXNwbGF5LndpZHRoOwo+ID4gLQkJ
CQlpbmZvLT52YXIuaGVpZ2h0ID0gY2gtPmRpc3BsYXkuaGVpZ2h0Owo+ID4gLQkJCQlzaF9tb2Jp
bGVfbGNkY19kaXNwbGF5X29uKGNoKTsKPiA+IC0JCQl9IGVsc2Ugewo+ID4gLQkJCQkvKiBOZXcg
bW9uaXRvciBvciBoYXZlIHRvIHdha2UgdXAgKi8KPiA+IC0JCQkJZmJfc2V0X3N1c3BlbmQoaW5m
bywgMCk7Cj4gPiAtCQkJfQo+ID4gLQo+ID4gLQo+ID4gLQkJCXVubG9ja19mYl9pbmZvKGluZm8p
Owo+ID4gLQkJfQo+ID4gLQkJY29uc29sZV91bmxvY2soKTsKPiA+IC0JCWJyZWFrOwo+ID4gLQo+
ID4gLQljYXNlIFNIX01PQklMRV9MQ0RDX0VWRU5UX0RJU1BMQVlfRElTQ09OTkVDVDoKPiA+IC0J
CS8qIEhETUkgZGlzY29ubmVjdCAqLwo+ID4gLQkJY29uc29sZV9sb2NrKCk7Cj4gPiAtCQlpZiAo
bG9ja19mYl9pbmZvKGluZm8pKSB7Cj4gPiAtCQkJZmJfc2V0X3N1c3BlbmQoaW5mbywgMSk7Cj4g
PiAtCQkJdW5sb2NrX2ZiX2luZm8oaW5mbyk7Cj4gPiAtCQl9Cj4gPiAtCQljb25zb2xlX3VubG9j
aygpOwo+ID4gLQkJYnJlYWs7Cj4gPiAtCj4gPiAtCWNhc2UgU0hfTU9CSUxFX0xDRENfRVZFTlRf
RElTUExBWV9NT0RFOgo+ID4gLQkJLyogVmFsaWRhdGUgYSBwcm9wb3NlZCBuZXcgbW9kZSAqLwo+
ID4gLQkJZmJfdmlkZW9tb2RlX3RvX3ZhcigmdmFyLCBtb2RlKTsKPiA+IC0JCXZhci5iaXRzX3Bl
cl9waXhlbCA9IGluZm8tPnZhci5iaXRzX3Blcl9waXhlbDsKPiA+IC0JCXZhci5ncmF5c2NhbGUg
PSBpbmZvLT52YXIuZ3JheXNjYWxlOwo+ID4gLQkJcmV0ID0gc2hfbW9iaWxlX2xjZGNfY2hlY2tf
dmFyKCZ2YXIsIGluZm8pOwo+ID4gLQkJYnJlYWs7Cj4gPiAtCX0KPiA+IC0KPiA+IC0JcmV0dXJu
IHJldDsKPiA+IC19Cj4gPiAtCj4gPiAgLyogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ICAgKiBG
b3JtYXQgaGVscGVycwo+ID4gICAqLwo+ID4gQEAgLTI1NDAsOCArMjQ3OSw2IEBAIHNoX21vYmls
ZV9sY2RjX2NoYW5uZWxfaW5pdChzdHJ1Y3Qgc2hfbW9iaWxlX2xjZGNfY2hhbiAqY2gpCj4gPiAg
CXVuc2lnbmVkIGludCBtYXhfc2l6ZTsKPiA+ICAJdW5zaWduZWQgaW50IGk7Cj4gPiAgCj4gPiAt
CWNoLT5ub3RpZnkgPSBzaF9tb2JpbGVfbGNkY19kaXNwbGF5X25vdGlmeTsKPiA+IC0KPiA+ICAJ
LyogVmFsaWRhdGUgdGhlIGZvcm1hdC4gKi8KPiA+ICAJZm9ybWF0ID0gc2hfbW9iaWxlX2Zvcm1h
dF9pbmZvKGNmZy0+Zm91cmNjKTsKPiA+ICAJaWYgKGZvcm1hdCA9PSBOVUxMKSB7Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9zaF9tb2JpbGVfbGNkY2ZiLmggYi9kcml2ZXJz
L3ZpZGVvL2ZiZGV2L3NoX21vYmlsZV9sY2RjZmIuaAo+ID4gaW5kZXggYjhlNDdhOGJkOGFiLi41
ODk0MDAzNzIwOTggMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3ZpZGVvL2ZiZGV2L3NoX21vYmls
ZV9sY2RjZmIuaAo+ID4gKysrIGIvZHJpdmVycy92aWRlby9mYmRldi9zaF9tb2JpbGVfbGNkY2Zi
LmgKPiA+IEBAIC04NywxMSArODcsNiBAQCBzdHJ1Y3Qgc2hfbW9iaWxlX2xjZGNfY2hhbiB7Cj4g
PiAgCXVuc2lnbmVkIGxvbmcgYmFzZV9hZGRyX2M7Cj4gPiAgCXVuc2lnbmVkIGludCBsaW5lX3Np
emU7Cj4gPiAgCj4gPiAtCWludCAoKm5vdGlmeSkoc3RydWN0IHNoX21vYmlsZV9sY2RjX2NoYW4g
KmNoLAo+ID4gLQkJICAgICAgZW51bSBzaF9tb2JpbGVfbGNkY19lbnRpdHlfZXZlbnQgZXZlbnQs
Cj4gPiAtCQkgICAgICBjb25zdCBzdHJ1Y3QgZmJfdmlkZW9tb2RlICptb2RlLAo+ID4gLQkJICAg
ICAgY29uc3Qgc3RydWN0IGZiX21vbnNwZWNzICptb25zcGVjKTsKPiA+IC0KPiA+ICAJLyogQmFj
a2xpZ2h0ICovCj4gPiAgCXN0cnVjdCBiYWNrbGlnaHRfZGV2aWNlICpibDsKPiA+ICAJdW5zaWdu
ZWQgaW50IGJsX2JyaWdodG5lc3M7Cj4gPiAtLSAKPiA+IDIuMjAuMQo+ID4gCj4gPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gZHJpLWRldmVsIG1h
aWxpbmcgbGlzdAo+ID4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCi0tIApE
YW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8v
YmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
