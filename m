Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7284B16FEA4
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 13:08:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B664F6E8E1;
	Wed, 26 Feb 2020 12:08:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com
 [IPv6:2a00:1450:4864:20::143])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB786E8E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 12:08:19 +0000 (UTC)
Received: by mail-lf1-x143.google.com with SMTP id r14so1788617lfm.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 04:08:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=S9JJYIkNlP5nnK3wfZZu/X+SbI6aTTWOA87BK2SDDno=;
 b=fKlN8HgXtxN2pScLUyXqaU2uMf2lHDdWgGN0YorCQqJiyRnrHxxv++xhjpyp4nJ0n6
 MGjQACQUjmwX22flv3nS8PHVJYGT4oOArcrtzYKk4o3gwoemxxv5UCct/9Yp8q2hyM5t
 VlPGg1SYuNex0ZU5SRkMFrChNs7KMC931tZgSegsc9Q0wrS3huNnj5eunAPfXIZOpSQ+
 3HWc0aOpexHwRciEWsAX2yQYGC/FRJ4nituPrcObbFHn97RtclII9L4fKRfrkVneveuz
 nxoO0+0kCdR+q40YKfIbLSM5KyZLJW+voidkAsXwCyiv0betswmHnBsK5rBnK0JkzybZ
 lsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=S9JJYIkNlP5nnK3wfZZu/X+SbI6aTTWOA87BK2SDDno=;
 b=b0ZlwZlxm2tk0td3UfZefLUd1ENACsfcBgoV3TW5jI8ulGLeTp5yUlnZJOKThU9W3l
 TmPqyNtDyMI5iIQjS86AW/Bg5UKEjFGesI0z3HSz1zO8/rrRIcl3qnWygKQyiYiW5TSQ
 NBm3WPnC0oeEXrKmKNudNjh9YRpvmpqemsxYsp/Eqgs90Vb5C5Q6AypVSHPY/tW9UGQV
 kEsgwpyypo1DHXoY4GJ9Lsui08iry3CioZ6qcZqT09fvrqfHjSeCcQmYgYaU43pkcBYR
 lNeDRVUqkBzILaEWzV8WphHmk3CTrtcIBcw+AbfcR3SwfwpPqaGRN1MlzR/t9cHjwX7W
 8/ZQ==
X-Gm-Message-State: APjAAAWDQ2HLm78wM9thKJK4oPuFCqgeveZ29fwXc5VF81IjeM7xWyRx
 QYD3ihBu4hvppJgwWU95kFwX4xBJ/kUBPBcDYxfdmg==
X-Google-Smtp-Source: APXvYqw8gFoORTwT9oT2KeMHn3WNzmj9I20a9wQ+SMdkIuI3epVQlzv+ANEqiMJJC4viusDiSZCX4jG7GU6F5yyPgus=
X-Received: by 2002:a19:ed0b:: with SMTP id y11mr2359667lfy.77.1582718897894; 
 Wed, 26 Feb 2020 04:08:17 -0800 (PST)
MIME-Version: 1.0
References: <86d0ec$ae4ffc@fmsmga001.fm.intel.com>
In-Reply-To: <86d0ec$ae4ffc@fmsmga001.fm.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Feb 2020 13:08:06 +0100
Message-ID: <CACRpkdZ4H5fdWsxsXnsbyxb6fwKbgm0h5a6CdqEjU9w5+z0a7Q@mail.gmail.com>
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

T24gV2VkLCBGZWIgMjYsIDIwMjAgYXQgMTI6NTcgUE0gVmlsbGUgU3lyasOkbMOkCjx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gVHVlLCBGZWIgMjUsIDIwMjAgYXQg
MTA6NTI6MjVQTSArMDEwMCwgTGludXMgV2FsbGVpaiB3cm90ZToKCj4gPiBJIGhhdmUgbG9uZyBz
dXNwZWN0ZWQgdGhhdCBhIHdob2xlIGJ1bmNoIG9mIHRoZSAic2ltcGxlIiBkaXNwbGF5cwo+ID4g
YXJlIG5vdCBzaW1wbGUgYnV0IGNvbnRhaW5zIGEgZGlzcGxheSBjb250cm9sbGVyIGFuZCBtZW1v
cnkuCj4gPiBUaGF0IG1lYW5zIHRoYXQgdGhlIHNwZWVkIG92ZXIgdGhlIGxpbmsgdG8gdGhlIGRp
c3BsYXkgYW5kCj4gPiBhY3R1YWwgcmVmcmVzaCByYXRlIG9uIHRoZSBhY3R1YWwgZGlzcGxheSBp
cyBhc3ltbWV0cmljIGJlY2F1c2UKPiA+IHdlbGwgd2UgYXJlIGp1c3QgdXBkYXRpbmcgYSBSQU0s
IHRoZSByZXNvbHV0aW9uIGp1c3QgbGltaXRzIGhvdwo+ID4gbXVjaCBkYXRhIHdlIGFyZSBzZW5k
aW5nLCB0aGUgY2xvY2sgbGltaXRzIHRoZSBzcGVlZCBvbiB0aGUKPiA+IGJ1cyBvdmVyIHRvIHRo
ZSBSQU0gb24gdGhlIG90aGVyIHNpZGUuCj4KPiBJTU8gZXZlbiBpbiBjb21tYW5kIG1vZGUgbW9k
ZS0+Y2xvY2sgc2hvdWxkIHByb2JhYmx5IGJlIHRoZSBhY3R1YWwKPiBkb3RjbG9jayB1c2VkIGJ5
IHRoZSBkaXNwbGF5LiBJZiB0aGVyZSdzIGFub3RoZXIgY2xvY2sgZm9yIHRoZSBidXMKPiBzcGVl
ZC9ldGMuIGl0IHNob3VsZCBiZSBzdG9yZWQgc29tZXdoZXJlIGVsc2UuCgpHb29kIHBvaW50LiBG
b3IgdGhlIERTSSBwYW5lbHMgd2UgaGF2ZSB0aGUgZmllbGQgaHNfcmF0ZQpmb3IgdGhlIEhTIGNs
b2NrIGluIHN0cnVjdCBtaXBpX2RzaV9kZXZpY2Ugd2hpY2ggaXMgYmFzZWQKb24gZXhhY3RseSB0
aGlzIHJlYXNvbmluZy4gQW5kIHRoYXQgaXMgd2hhdCBJIGFjdHVhbGx5IHVzZSBmb3IKc2V0dGlu
ZyB0aGUgSFMgY2xvY2suCgpUaGUgcHJvYmxlbSBpcyBob3dldmVyIHRoYXQgd2UgaW4gbWFueSBj
YXNlcyBoYXZlIHNvCnN1YnN0YW5kYXJkIGRvY3VtZW50YXRpb24gb2YgdGhlc2UgcGFuZWxzIHRo
YXQgd2UgaGF2ZQphYnNvbHV0ZWx5IG5vIGlkZWEgYWJvdXQgdGhlIGRvdGNsb2NrLiBNYXliZSB3
ZSBzaG91bGQKanVzdCBzZXQgaXQgdG8gMCBpbiB0aGVzZSBjYXNlcz8KCllvdXJzLApMaW51cyBX
YWxsZWlqCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
