Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4734B35E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 09:51:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C3F66E317;
	Wed, 19 Jun 2019 07:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C4076E317
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 07:51:05 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id m10so25765423edv.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 00:51:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=titOKqm2FtwiI20YuYIPgTzaXhqwWPUnBMtwVOPuEAE=;
 b=evTumE/7sKPlsK3sZjozmI+Rj2PPPljNzy97yk3y7wt6svNrJPo4SpqeXiMKCej4+6
 psGgUZeei0rfOgYg5PTjVkKpjWS+c1tU2tHnPd9y89wTkYf5QiK2yQGcpP1vk7THTJWx
 +1gH3ZJip77ANISkiBGPdQvqqtYSPO8gzKyGLm7EQN8GwlNvgmkVlgsUjKuH/qm3XrUz
 CfNG9+KVJK+n/e5vLnYP+kedojhgGj68BgEUOeVfP9u9hkz5iziqJcmVMkKk/exs5mPr
 35N18Nh3Y1VN2O0AvFepnS8DxDOHxDMTCSg6CQd2laH4SlkcBeA7kEGhwGJBeuOJTFVv
 Km0w==
X-Gm-Message-State: APjAAAVggqp2DZZpc/E60mgA4X295D+D6SBGVLrHnZTRYVmjkoPNpV/p
 wLWlmxN/Wr1hiQ1cSig1Wm/SfQ==
X-Google-Smtp-Source: APXvYqz6cxeikFtW40TZo1ZGzWIefjG4b46C5M+VobgvEQ4Uy67QhcejpHEoQxslttiLIW4/rsYy1w==
X-Received: by 2002:a50:aeee:: with SMTP id f43mr57838085edd.221.1560930663798; 
 Wed, 19 Jun 2019 00:51:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id w35sm2940089edd.32.2019.06.19.00.51.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 00:51:03 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:50:59 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, intel-gfx@lists.freedesktop.org
Message-ID: <20190619075059.GK12905@phenom.ffwll.local>
Mail-Followup-To: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kernel-janitors@vger.kernel.org, intel-gfx@lists.freedesktop.org
References: <20190619020750.swzerehjbvx6sbk2@smtp.gmail.com>
 <20190619074856.GJ12905@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619074856.GJ12905@phenom.ffwll.local>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=titOKqm2FtwiI20YuYIPgTzaXhqwWPUnBMtwVOPuEAE=;
 b=Of3BQPYqR3hobtFRHEZZ/8xZYZfh9nMj/b6fTp45wVJDr79tMqfenFBEiW8jq61Gsw
 q80CHAn1N4AaSrmMRS6GByo69wxYBqpqH3QWlLkKsCTktnQ+9VIyBtrjNqAM1B2IuzmJ
 lt8VtsjeIsaCoh9VWMnZQhyPkC166hnXKuzq8=
Subject: Re: [Intel-gfx] [PATCH V4] drm/drm_vblank: Change EINVAL by the
 correct errno
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDk6NDg6NTZBTSArMDIwMCwgRGFuaWVsIFZldHRlciB3
cm90ZToKPiBPbiBUdWUsIEp1biAxOCwgMjAxOSBhdCAxMTowNzo1MFBNIC0wMzAwLCBSb2RyaWdv
IFNpcXVlaXJhIHdyb3RlOgo+ID4gRm9yIGhpc3RvcmljYWwgcmVhc29uLCB0aGUgZnVuY3Rpb24g
ZHJtX3dhaXRfdmJsYW5rX2lvY3RsIGFsd2F5cyByZXR1cm4KPiA+IC1FSU5WQUwgaWYgc29tZXRo
aW5nIGdldHMgd3JvbmcuIFRoaXMgc2NlbmFyaW8gbGltaXRzIHRoZSBmbGV4aWJpbGl0eQo+ID4g
Zm9yIHRoZSB1c2Vyc3BhY2UgbWFrZSBkZXRhaWxlZCB2ZXJpZmljYXRpb24gb2YgdGhlIHByb2Js
ZW0gYW5kIHRha2UKPiA+IHNvbWUgYWN0aW9uLiBJbiBwYXJ0aWN1bGFyLCB0aGUgdmFsaWRhdGlv
biBvZiDigJxpZiAoIWRldi0+aXJxX2VuYWJsZWQp4oCdCj4gPiBpbiB0aGUgZHJtX3dhaXRfdmJs
YW5rX2lvY3RsIGlzIHJlc3BvbnNpYmxlIGZvciBjaGVja2luZyBpZiB0aGUgZHJpdmVyCj4gPiBz
dXBwb3J0IHZibGFuayBvciBub3QuIElmIHRoZSBkcml2ZXIgZG9lcyBub3Qgc3VwcG9ydCBWQmxh
bmssIHRoZQo+ID4gZnVuY3Rpb24gZHJtX3dhaXRfdmJsYW5rX2lvY3RsIHJldHVybnMgRUlOVkFM
IHdoaWNoIGRvZXMgbm90IHJlcHJlc2VudAo+ID4gdGhlIHJlYWwgaXNzdWU7IHRoaXMgcGF0Y2gg
Y2hhbmdlcyB0aGlzIGJlaGF2aW9yIGJ5IHJldHVybiBFT1BOT1RTVVBQLgo+ID4gQWRkaXRpb25h
bGx5LCBzb21lIG9wZXJhdGlvbnMgYXJlIHVuc3VwcG9ydGVkIGJ5IHRoaXMgZnVuY3Rpb24sIGFu
ZAo+ID4gcmV0dXJucyBFSU5WQUw7IHRoaXMgcGF0Y2ggYWxzbyBjaGFuZ2VzIHRoZSByZXR1cm4g
dmFsdWUgdG8gRU9QTk9UU1VQUAo+ID4gaW4gdGhpcyBjYXNlLiBMYXN0bHksIHRoZSBmdW5jdGlv
biBkcm1fd2FpdF92YmxhbmtfaW9jdGwgaXMgaW52b2tlZCBieQo+ID4gbGliZHJtLCB3aGljaCBp
cyB1c2VkIGJ5IG1hbnkgY29tcG9zaXRvcnM7IGJlY2F1c2Ugb2YgdGhpcywgaXQgaXMKPiA+IGlt
cG9ydGFudCB0byBjaGVjayBpZiB0aGlzIGNoYW5nZSBicmVha3MgYW55IGNvbXBvc2l0b3IuIElu
IHRoaXMgc2Vuc2UsCj4gPiB0aGUgZm9sbG93aW5nIHByb2plY3RzIHdlcmUgZXhhbWluZWQ6Cj4g
PiAKPiA+ICogRHJtLWh3Y29tcG9zZXIKPiA+ICogS3dpbgo+ID4gKiBTd2F5Cj4gPiAqIFdscm9v
dHMKPiA+ICogV2F5bGFuZC1jb3JlCj4gPiAqIFdlc3Rvbgo+ID4gKiBYb3JnICg2NyBkaWZmZXJl
bnQgZHJpdmVycykKPiA+IAo+ID4gRm9yIGVhY2ggcmVwb3NpdG9yeSB0aGUgdmVyaWZpY2F0aW9u
IGhhcHBlbmVkIGluIHRocmVlIHN0ZXBzOgo+ID4gCj4gPiAqIFVwZGF0ZSB0aGUgbWFpbiBicmFu
Y2gKPiA+ICogTG9vayBmb3IgYW55IG9jY3VycmVuY2UgImRybVdhaXRWQmxhbmsiIHdpdGggdGhl
IGNvbW1hbmQ6Cj4gPiAgIGdpdCBncmVwIC1uICJkcm1XYWl0VkJsYW5rIgo+ID4gKiBMb29rIGlu
IHRoZSBnaXQgaGlzdG9yeSBvZiB0aGUgcHJvamVjdCB3aXRoIHRoZSBjb21tYW5kOgo+ID4gICBn
aXQgbG9nIC1TZHJtV2FpdFZCbGFuawo+ID4gCj4gPiBGaW5hbGx5LCBub25lIG9mIHRoZSBhYm92
ZSBwcm9qZWN0cyB2YWxpZGF0ZSB0aGUgdXNlIG9mIEVJTlZBTCB3aGljaAo+ID4gbWFrZSBzYWZl
LCBhdCBsZWFzdCBmb3IgdGhlc2UgcHJvamVjdHMsIHRvIGNoYW5nZSB0aGUgcmV0dXJuIHZhbHVl
cy4KPiA+IAo+ID4gQ2hhbmdlIHNpbmNlIFYzOgo+ID4gIC0gUmV0dXJuIEVJTlZBTCBmb3IgX0RS
TV9WQkxBTktfU0lHTkFMIChEYW5pZWwpCj4gPiAKPiA+IENoYW5nZSBzaW5jZSBWMjoKPiA+ICBE
YW5pZWwgVmV0dGVyIGFuZCBDaHJpcyBXaWxzb24KPiA+ICAtIFJlcGxhY2UgRU5PVFRZIGJ5IEVP
UE5PVFNVUFAKPiA+ICAtIFJldHVybiBFSU5WQUwgaWYgdGhlIHBhcmFtZXRlcnMgYXJlIHdyb25n
Cj4gPiAKPiAKPiBSZXZpZXdlZC1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZnds
bC5jaD4KPiAKPiBBcG9sb2dpZXMgZm9yIHRoZSBjb25mdXNpb24gb24gdGhlIGxhc3QgdGltZSBh
cm91bmQuIGJ0dyBpZiBzb21lb25lIHRlbGxzCj4geW91ICJyLWIgKG9yIGEtYikgd2l0aCB0aGVz
ZSBjaGFuZ2VzIiwgdGhlbiBqdXN0IGFwcGx5IHRoZSByLWIvYS1iIHRhZwo+IG5leHQgdGltZSBh
cm91bmQuIE90aGVyd2lzZSBwZW9wbGUgd2lsbCByZS1yZXZpZXcgdGhlIHNhbWUgdGhpbmcgb3Zl
ciBhbmQKPiBvdmVyIGFnYWluLgoKYnR3IHdoZW4gcmVzZW5kaW5nIHBhdGNoZXMgaXQncyBnb29k
IHByYWN0aWNlIHRvIGFkZCBhbnlvbmUgd2hvIGNvbW1lbnRlZApvbiBpdCAob3Igd2hvIGNvbW1l
bnRlZCBvbiB0aGUgaWd0IHRlc3QgZm9yIHRoZSBzYW1lIHBhdGNoIGFuZCBvdGhlciB3YXkKcm91
bmQpIG9udG8gdGhlIGV4cGxpY2l0IENjOiBsaXN0IG9mIHRoZSBwYXRjaC4gVGhhdCB3YXkgaXQn
cyBlYXNpZXIgZm9yCnRoZW0gdG8gZm9sbG93IHRoZSBwYXRjaCBldm9sdXRpb24gYW5kIGRvIGEg
cXVpY2sgci1iIG9uY2UgdGhleSdyZSBoYXBweS4KCklmIHlvdSBkb24ndCBkbyB0aGF0IHRoZW4g
bXVjaCBiaWdnZXIgY2hhbmNlcyB5b3VyIHBhdGNoIGdldHMgaWdub3JlZC4KLURhbmllbAo+IAo+
ID4gU2lnbmVkLW9mZi1ieTogUm9kcmlnbyBTaXF1ZWlyYSA8cm9kcmlnb3NpcXVlaXJhbWVsb0Bn
bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ZibGFuay5jIHwgMiAr
LQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fdmJsYW5rLmMKPiA+IGluZGV4IDYwM2FiMTA1MTI1ZC4uYmVkMjMzMzYxNjE0
IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2RybV92YmxhbmsuYwo+ID4gQEAgLTE1ODIsNyArMTU4Miw3IEBAIGlu
dCBkcm1fd2FpdF92YmxhbmtfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0
YSwKPiA+ICAJdW5zaWduZWQgaW50IGZsYWdzLCBwaXBlLCBoaWdoX3BpcGU7Cj4gPiAgCj4gPiAg
CWlmICghZGV2LT5pcnFfZW5hYmxlZCkKPiA+IC0JCXJldHVybiAtRUlOVkFMOwo+ID4gKwkJcmV0
dXJuIC1FT1BOT1RTVVBQOwo+ID4gIAo+ID4gIAlpZiAodmJsd2FpdC0+cmVxdWVzdC50eXBlICYg
X0RSTV9WQkxBTktfU0lHTkFMKQo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAtLSAKPiA+IDIu
MjEuMAo+IAo+IC0tIAo+IERhbmllbCBWZXR0ZXIKPiBTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KPiBodHRwOi8vYmxvZy5mZndsbC5jaAoKLS0gCkRhbmllbCBWZXR0ZXIKU29m
dHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
