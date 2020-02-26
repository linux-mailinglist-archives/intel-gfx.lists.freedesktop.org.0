Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D521701A4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 15:56:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 214966E9A4;
	Wed, 26 Feb 2020 14:56:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com
 [IPv6:2a00:1450:4864:20::144])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9796E9A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 14:56:48 +0000 (UTC)
Received: by mail-lf1-x144.google.com with SMTP id z9so2227901lfa.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 06:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2/QJ7qneGgZqHBfg/JeUxK+PnqdeXh8I7JayjH2DAAk=;
 b=tgf1A5us8lqNpmexYFG5Q12HV9cxSK7xP47154fKzLMHEGi+WF1zpVkRi/ROUfb2tu
 M4kZQ5sEHPEU+K9Fkg4D+fVwymV4tHMZZxDBYFkiMEvSKqd8u3WQcFW5lL3iQ9nHUJv4
 KVnlA7+FFUQ6NfqSJmYDYsuKJp6/FCv7dUpSH3tFTbWuhKMVXYmvvvO6Zk9I9kY7DpuE
 cOH27GChwSYm17N6YerQ6arYLDUd2VqUX8CIYENfiiCBWAbXciEQoCHhBzWFsH3ASMe6
 m99lKeXtqvoGzO5fAg0BNlczd/KZ1XvyYTglHBHYIVQrbIgfdbUf9oNIKSj8nwSdWDKv
 vctA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2/QJ7qneGgZqHBfg/JeUxK+PnqdeXh8I7JayjH2DAAk=;
 b=NzkCv/lAsdvReZ42z9yx2/M4BNKJxAVwgPoG4Jn73YImPpmGfrmxhT+aHXk1ZGDudR
 hj1xb/YlTJfzUth72mQU/P3DAhlTy9vfk7Aw70QNdi0KKTJ6BpKRpztRIxuZe/6a/ea1
 BKz6H90+GaSsvcN48s2OS6je5X5AmN31QnCJparY0SDF8sbe+wLCqSiHUBLXWoCCKq3f
 4Tomy5+wjaqYM4LOS7oOyD2dUn5KPzS3eXSAR/bHe2TiBSc2YQ9vEZu2610ZQeUMBees
 c3qzoEtPkF9r1KvZE8mEJa87LMOhl9BWUrDYc8kTlt4EgK8n+h4Q0Y0ADdcaLYu4Xtrt
 DSzQ==
X-Gm-Message-State: APjAAAUq8AuxD3W1cP0b0F8YbqoenJmHpZztWWInDUb1zUMYDMj7s7YK
 xMccxgBr5mgmf9fOBC4ACXNFV0tFiYqUf1H2dFCzIw==
X-Google-Smtp-Source: APXvYqxugddSDx0KpCsivrnIWfVdfRPBLi9YTA6pB7mkbI7w3gfaVV9vjpWWz0qhLNNr/jRaahCfwcHQv0tC+t2sbmE=
X-Received: by 2002:a19:ed0b:: with SMTP id y11mr2751538lfy.77.1582729007166; 
 Wed, 26 Feb 2020 06:56:47 -0800 (PST)
MIME-Version: 1.0
References: <86d0ec$ae4ffc@fmsmga001.fm.intel.com>
 <CACRpkdZ4H5fdWsxsXnsbyxb6fwKbgm0h5a6CdqEjU9w5+z0a7Q@mail.gmail.com>
 <20200226143409.GJ13686@intel.com>
In-Reply-To: <20200226143409.GJ13686@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Feb 2020 15:56:36 +0100
Message-ID: <CACRpkdZSapEh3sCqGjpnOuX-vbf1C=AjzN7Ryu2v6V5npoWgoA@mail.gmail.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] (no subject)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Josh Wu <josh.wu@atmel.com>,
 Bhuvanchandra DV <bhuvanchandra.dv@toradex.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Eric Anholt <eric@anholt.net>,
 nouveau@lists.freedesktop.org,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 =?UTF-8?Q?Gustaf_Lindstr=C3=B6m?= <gl@axentia.se>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <philipp.zabel@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Thomas Hellstrom <thellstrom@vmware.com>,
 Joonyoung Shim <jy0922.shim@samsung.com>, Jonathan Marek <jonathan@marek.ca>,
 Stefan Mavrodiev <stefan@olimex.com>, Adam Ford <aford173@gmail.com>,
 Jerry Han <hanxu5@huaqin.corp-partner.google.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, "H. Nikolaus Schaller" <hns@goldelico.com>,
 Robert Chiras <robert.chiras@nxp.com>, Heiko Schocher <hs@denx.de>,
 Icenowy Zheng <icenowy@aosc.io>, Jonas Karlman <jonas@kwiboo.se>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>,
 Fabio Estevam <festevam@gmail.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Vincent Abriou <vincent.abriou@st.com>, Andreas Pretzsch <apr@cn-eng.de>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Alex Gonzalez <alex.gonzalez@digi.com>, Purism Kernel Team <kernel@puri.sm>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Christoph Fritz <chf.fritz@googlemail.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Eugen Hristev <eugen.hristev@microchip.com>,
 Giulio Benetti <giulio.benetti@micronovasrl.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBGZWIgMjYsIDIwMjAgYXQgMzozNCBQTSBWaWxsZSBTeXJqw6Rsw6QKPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPiB3cm90ZToKPiBPbiBXZWQsIEZlYiAyNiwgMjAyMCBhdCAw
MTowODowNlBNICswMTAwLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+ID4gT24gV2VkLCBGZWIgMjYs
IDIwMjAgYXQgMTI6NTcgUE0gVmlsbGUgU3lyasOkbMOkCj4gPiA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gPiBPbiBUdWUsIEZlYiAyNSwgMjAyMCBhdCAxMDo1Mjoy
NVBNICswMTAwLCBMaW51cyBXYWxsZWlqIHdyb3RlOgo+ID4KPiA+ID4gPiBJIGhhdmUgbG9uZyBz
dXNwZWN0ZWQgdGhhdCBhIHdob2xlIGJ1bmNoIG9mIHRoZSAic2ltcGxlIiBkaXNwbGF5cwo+ID4g
PiA+IGFyZSBub3Qgc2ltcGxlIGJ1dCBjb250YWlucyBhIGRpc3BsYXkgY29udHJvbGxlciBhbmQg
bWVtb3J5Lgo+ID4gPiA+IFRoYXQgbWVhbnMgdGhhdCB0aGUgc3BlZWQgb3ZlciB0aGUgbGluayB0
byB0aGUgZGlzcGxheSBhbmQKPiA+ID4gPiBhY3R1YWwgcmVmcmVzaCByYXRlIG9uIHRoZSBhY3R1
YWwgZGlzcGxheSBpcyBhc3ltbWV0cmljIGJlY2F1c2UKPiA+ID4gPiB3ZWxsIHdlIGFyZSBqdXN0
IHVwZGF0aW5nIGEgUkFNLCB0aGUgcmVzb2x1dGlvbiBqdXN0IGxpbWl0cyBob3cKPiA+ID4gPiBt
dWNoIGRhdGEgd2UgYXJlIHNlbmRpbmcsIHRoZSBjbG9jayBsaW1pdHMgdGhlIHNwZWVkIG9uIHRo
ZQo+ID4gPiA+IGJ1cyBvdmVyIHRvIHRoZSBSQU0gb24gdGhlIG90aGVyIHNpZGUuCj4gPiA+Cj4g
PiA+IElNTyBldmVuIGluIGNvbW1hbmQgbW9kZSBtb2RlLT5jbG9jayBzaG91bGQgcHJvYmFibHkg
YmUgdGhlIGFjdHVhbAo+ID4gPiBkb3RjbG9jayB1c2VkIGJ5IHRoZSBkaXNwbGF5LiBJZiB0aGVy
ZSdzIGFub3RoZXIgY2xvY2sgZm9yIHRoZSBidXMKPiA+ID4gc3BlZWQvZXRjLiBpdCBzaG91bGQg
YmUgc3RvcmVkIHNvbWV3aGVyZSBlbHNlLgo+ID4KPiA+IEdvb2QgcG9pbnQuIEZvciB0aGUgRFNJ
IHBhbmVscyB3ZSBoYXZlIHRoZSBmaWVsZCBoc19yYXRlCj4gPiBmb3IgdGhlIEhTIGNsb2NrIGlu
IHN0cnVjdCBtaXBpX2RzaV9kZXZpY2Ugd2hpY2ggaXMgYmFzZWQKPiA+IG9uIGV4YWN0bHkgdGhp
cyByZWFzb25pbmcuIEFuZCB0aGF0IGlzIHdoYXQgSSBhY3R1YWxseSB1c2UgZm9yCj4gPiBzZXR0
aW5nIHRoZSBIUyBjbG9jay4KPiA+Cj4gPiBUaGUgcHJvYmxlbSBpcyBob3dldmVyIHRoYXQgd2Ug
aW4gbWFueSBjYXNlcyBoYXZlIHNvCj4gPiBzdWJzdGFuZGFyZCBkb2N1bWVudGF0aW9uIG9mIHRo
ZXNlIHBhbmVscyB0aGF0IHdlIGhhdmUKPiA+IGFic29sdXRlbHkgbm8gaWRlYSBhYm91dCB0aGUg
ZG90Y2xvY2suIE1heWJlIHdlIHNob3VsZAo+ID4ganVzdCBzZXQgaXQgdG8gMCBpbiB0aGVzZSBj
YXNlcz8KPgo+IERvbid0IHlvdSBhbHdheXMgaGF2ZSBhIFRFIGludGVycnVwdCBvciBzb21ldGhp
bmcgbGlrZSB0aGF0Cj4gYXZhaWxhYmxlPyBDb3VsZCBqdXN0IG1lYXN1cmUgaXQgZnJvbSB0aGF0
IGlmIG5vIGJldHRlcgo+IGluZm9ybWF0aW9uIGlzIGF2YWlsYWJsZT8KClllcyBhbmQgSSBkaWQg
ZXhhY3RseSB0aGF0LCBzbyB0aGF0IGlzIHdoeSB0aGlzIGNvbW1lbnQgaXMgaW4KdGhlIGRyaXZl
cjoKCnN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSBzb255X2FjeDQyNGFrcF9j
bWRfbW9kZSA9IHsKKC4uLikKICAgICAgICAvKgogICAgICAgICAqIFNvbWUgZGVzaXJlZCByZWZy
ZXNoIHJhdGUsIGV4cGVyaW1lbnRzIGF0IHRoZSBtYXhpbXVtICJwaXhlbCIKICAgICAgICAgKiBj
bG9jayBzcGVlZCAoSFMgY2xvY2sgNDIwIE1IeikgeWllbGRzIGFyb3VuZCAxMTdIei4KICAgICAg
ICAgKi8KICAgICAgICAudnJlZnJlc2ggPSA2MCwKCkkgZ290IGEgcmV2aWV3IGNvbW1lbnQgYXQg
dGhlIHRpbWUgc2F5aW5nIDExNyBIeiB3YXMgd2VpcmQuCldlIGRpZG4ndCByZWFjaCBhIHByb3Bl
ciBjb25jbHVzaW9uIG9uIHRoaXM6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC9D
QUNScGtkWVczWU5QU05NWTNBNDRHUW44RHFLLW45VEx2cjd1aXBGN0xNX0RIWjU9TGdAbWFpbC5n
bWFpbC5jb20vCgpUaGllcnJ5IHdhc24ndCBzdXJlIGlmIDYwSHogd2FzIGdvb2Qgb3Igbm90LCBz
byBJIGp1c3QgaGFkIHRvCmdvIHdpdGggc29tZXRoaW5nLgoKV2UgY291bGQgY2FsY3VsYXRlIHRo
ZSByZXN1bHRpbmcgcGl4ZWwgY2xvY2sgZm9yIH4xMTcgSHogd2l0aAp0aGlzIHJlc29sdXRpb24g
YW5kIHB1dCB0aGF0IGluIHRoZSBjbG9jayBmaWVsZCBidXQgLi4uIGRvbid0IGtub3cKd2hhdCBp
cyB0aGUgYmVzdD8KCllvdXJzLApMaW51cyBXYWxsZWlqCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
