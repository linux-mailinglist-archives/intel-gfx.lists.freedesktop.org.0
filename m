Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D62951B97A9
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 08:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA4CE6E02F;
	Mon, 27 Apr 2020 06:44:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 991DF6E02F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 06:44:39 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id v4so15133641wme.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 26 Apr 2020 23:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=KV8mI704c4wnDXRIu02UleUgTYiEbhwe5QBwP8rLPnY=;
 b=sV8r9iH1IJ/wa4MRY/0iLtmG7uVrvHaehubuctbTatS+Pb88tUDgnjuc3Z+FRFFtXy
 JtQia0BqQ54Pr4bsanZcTfztjLLEU2ODwd2rTnmQlAahy6gXtDrxU56TxqJJomjzH1lN
 XyJ3OKQkeNZ2deawteL/pmRgatbd6MhibKdKHSlPCbQog5Z09gkWUUd47TH/K7T3hBTv
 0+P7WalZiDkyAYSHPv/Noz0bulxQ7Pkap6N6AH2pURIhb6uUGra20Q1eoEyr1nOEzfgH
 i6cOs9vv1xw/JQooHzOLfo0pWFmb7istdgO8npVVIsqGMD1QH+/ytCLc9tB65Eh0SD5n
 ob3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=KV8mI704c4wnDXRIu02UleUgTYiEbhwe5QBwP8rLPnY=;
 b=dIbgBmZVvcVsdTh4eJJckIxtPHy61yCXm6PYdXSrQArmWrUJJjge7/T7LrLbpHHO9J
 FAGYIB7lpxXFFraiXdjmZ1sXVFrQyvp6ChRAGqWHZqoM+jVTaxMw0YsfkyaweVU8Rmts
 jIMnrR6voaXgEh/ECzRu+DO/bxCw1W8IDZsWlAqoR8OxzCQVRUUOhGipCIrgkRRil0yG
 CoHmKsy2IzvsXPuraz0KBD/RmpXAKx2LG0ippA4aAELVxml/nTilJoLTEg0FDfscZdC4
 Ecm2CAkbz21OVSvVCY/1DDnXwvSoaM/2Bt/lZ6PLoGwnjstXfwJTLt9Dqnrg4k6DXmiI
 WWkg==
X-Gm-Message-State: AGi0PubD4MWtYBvc4oJP+rIvwgfNmo6qKJDjJosCPiW8GWxFB8SiKi91
 9plwEwkLG3/0eN35ec+m6X8Sew==
X-Google-Smtp-Source: APiQypJl184c+VzbwdnwkKBGPEWNJ1KlwA2PV4ZKB6XncsflDQL5MrVEpinCWeWiGNtr2IxJxFDRVw==
X-Received: by 2002:a1c:1d92:: with SMTP id d140mr24421897wmd.67.1587969878117; 
 Sun, 26 Apr 2020 23:44:38 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id 185sm16425524wmc.32.2020.04.26.23.44.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 23:44:37 -0700 (PDT)
Date: Mon, 27 Apr 2020 07:44:34 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Message-ID: <20200427064434.GA3559@dell>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200423114857.GG3612@dell> <20200423215306.GA8670@codeaurora.org>
 <20200424064303.GJ3612@dell>
 <20200424221422.GA31118@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424221422.GA31118@codeaurora.org>
Subject: Re: [Intel-gfx] [PATCH v13 00/11] Convert PWM period and duty cycle
 to u64
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, linux-fbdev@vger.kernel.org,
 David Collins <collinsd@codeaurora.org>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Michael Turquette <mturquette@baylibre.com>,
 Kamil Debski <kamil@wypas.org>, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 linux-clk@vger.kernel.org, Daniel Thompson <daniel.thompson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alexander Shiyan <shc_work@mail.ru>, Chen-Yu Tsai <wens@csie.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 intel-gfx@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-hwmon@vger.kernel.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Richard Fontana <rfontana@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, Joe Perches <joe@perches.com>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNCBBcHIgMjAyMCwgR3VydSBEYXMgU3JpbmFnZXNoIHdyb3RlOgoKPiBPbiBGcmks
IEFwciAyNCwgMjAyMCBhdCAwNzo0MzowM0FNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBB
IGdyZWF0IGRlYWwgb2YgbWFpbGluZyBsaXN0cyBjb250YWluIG51bWVyb3VzIHByb3RlY3Rpb25z
IGFnYWluc3QKPiA+IHRoaW5ncyBsaWtlIGZsb29kaW5nIGFuZCBzcGFtbWluZy4gIE9uZSBvZiB0
aG9zZSBwcm90ZWN0aW9ucyBpcyBhCj4gPiBjaGVjayBmb3IgIlRvbyBtYW55IHJlY2lwaWVudHMg
dG8gdGhlIG1lc3NhZ2UiLiAgTW9zdCBvZiB0aGUgdGltZSB0aGlzCj4gPiBzaW1wbHkgcmVxdWly
ZXMgbW9kZXJhdG9yIGludGVydmVudGlvbiBieSB3YXkgb2YgcmV2aWV3IGFuZCBhcHByb3ZhbCwK
PiA+IGJ1dCB0aGlzIHVsdGltYXRlbHkgZGVwZW5kcyBvbiB0aGUgTUwncyBjb25maWd1cmF0aW9u
Lgo+ID4gCj4gPiBUaGUgZmlyc3QgdGhpbmcgdG8gYXNjZXJ0YWluIGlzIHdoeSB5b3VyIHJlY2lw
aWVudHMgbGlzdCBpcyBzbyBsYXJnZS4KPiA+IEhhdmUgeW91IGFkZGVkIGV2ZXJ5IHJldmlld2Vy
LCBzdWJzeXN0ZW0tbWFpbnRhaW5lciwgbWFpbnRhaW5lciBhbmQKPiA+IGNvbnRyaWJ1dG9yIHN1
Z2dlc3RlZCBieSBnZXQtbWFpbnRhaW5lci5wbD8gIElmIHNvLCBjb25zaWRlciBwcnVuaW5nCj4g
PiB0aGF0IGEgbGl0dGxlLiAgQ29udHJpYnV0b3JzIGRvIG5vdCB0ZW5kIHRvIGNhcmUgYWJvdXQg
c3Vic2VxdWVudAo+ID4gY2hhbmdlcyB0byBhIGZpbGUuICBBcyBzb21lb25lIHdobyByZWNlaXZl
cyBhIGxvdCBvZiBwYXRjaGVzLCBJIHRlbmQKPiA+IHRvIGdldCBmZWQtdXAgd2hlbiByZWNlaXZp
bmcgcGF0Y2hlcyBzaW1wbHkgYmVjYXVzZSBJIG1hZGUgYSBjaGFuZ2UgWAo+ID4geWVhcnMgYWdv
LiAgU3RpY2sgdG8gbGlzdGVkIG1haW50YWluZXJzL3Jldmlld2VycyBpbiB0aGUgZmlyc3QKPiA+
IGluc3RhbmNlIGFuZCBzZWUgaG93IGZhciB0aGF0IHRha2VzIHlvdS4KPiAKPiBUaGFuayB5b3Ug
Zm9yIHRoZSBkZXRhaWxlZCByZXBseS4gSSBkaWQgdGhpcyBpbiB0aGUgZmlyc3QgZmV3IHBhdGNo
c2V0cwo+IGFuZCB0aGVuIHdoZW4gYSBmZXcgcGF0Y2hlcyBkaWRuJ3QgZ2V0IGFueSBhdHRlbnRp
b24sIGV4cGFuZGVkIHRoZQo+IGF1ZGllbmNlIHRodXMuIFN0aWxsLCBhcm91bmQgNTAlIG9mIHRo
ZSBwYXRjaGVzIGluIHRoaXMgc2VyaWVzIHJlbWFpbgo+IHVucmV2aWV3ZWQgYnkgYW55b25lLgoK
VGhpcyBpc24ndCBhIHJlYXNvbiB0byBhZGQgbW9yZSByZWNpcGllbnRzICh3aG8gYXJlIGxpa2Vs
eSB0byBjYXJlCmV2ZW4gbGVzcyB0aGFuIHlvdXIgb3JpZ2luYWwgZ3JvdXApLiAgSG93ZXZlciBp
dCAqaXMqIGEgZ29vZCBhcmd1bWVudApmb3IgaW5jbHVkaW5nIGFsbCBvZiB0aGUgc3BlY2lmaWVk
IG1haW50YWluZXJzL3Jldmlld2VycyBpbiBvbiBhbGwgb2YKdGhlIHBhdGNoZXMuCgo+ID4gSWYg
eW91ciByZWNpcGllbnRzIGxpc3QgaXMgYXMgc3VjY2luY3QgYXMgcmVhc29uYWJseSBwb3NzaWJs
ZSwgbWF5YmUKPiA+IGp1c3QgYWNjZXB0IHRoYXQgZXZlcnkgdmVyc2lvbiBpc24ndCBnb2luZyB0
byBiZSBhcmNoaXZlZCBieSBldmVyeQo+ID4gTUwuICBJdCdzIHN0aWxsIG11Y2ggbW9yZSB1c2Vm
dWwgZm9yIHRoZSBjb3JyZWN0IHBlb3BsZSB0byBoYXZlCj4gPiB2aXNpYmlsaXR5IGludG8gdGhl
IHNldCB0aGFuIGZvciBpdCB0byBiZSBhcmNoaXZlZCBtdWx0aXBsZSB0aW1lcy4KPiAKPiBUaGFu
ayB5b3UsIHdpbGwgcHJ1bmUgdGhlIGxpc3QgYW5kIHJlbW92ZSBwYXN0IGNvbnRyaWJ1dG9ycyBm
cm9tIHRoZQo+IENjLWxpc3QgYW5kIGFkZCBhbGwgcGFydGllcyB0byBhbGwgcGF0Y2hlcy4KCkdy
ZWF0LiAgT25jZSB5b3UndmUgZG9uZSB0aGF0LCB3ZSBjYW4gc3RhcnQgdG8gaGVscCB5b3UgYWNx
dWlyZSB0aGUKQWNrcyB5b3UgbmVlZCBvbiB5b3VyIHJlbWFpbmluZyBwYXRjaGVzLgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGluYXJv
Lm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86
IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
