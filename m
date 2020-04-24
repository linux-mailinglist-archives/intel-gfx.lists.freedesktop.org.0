Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E12B11B6E47
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 08:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA3A6E103;
	Fri, 24 Apr 2020 06:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE516E103
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 06:43:09 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g13so9361830wrb.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 23:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=hjgmIpG5MXRCE32YvJViE53MuBYQgsvIJYIDtBG1wUg=;
 b=gLmkav9RefuhGDy7FRSB2b1Yb7ftPkLidmMm2HjjcuriXjUM2Q39OTFT7dZ2A4V4P+
 uPXtFR3lQTS5dHpBnEEt9s0wt06bG4CKz75P185mO2FJBqH08RAoyYkPXW2QsejTPM7S
 0DfgXuitbLdLRmvVDkmWIHC8H9UMHQUj0r2GQeMCPQk7QIo+kAuEL0UFjla8kCzRe4+S
 rThlwaH9KWI+yUKHhOtCxxG9ULnxvwMPrS6AhJz4uu259X9Q1PVmdpJKZYyMWoE6LilL
 fCT5AC4sWEWxNEhr5GoZwvYGdJyjI7kjOojvnFThVfLgu+70HpDsoHMw/xgSHFkxJwU4
 ro1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=hjgmIpG5MXRCE32YvJViE53MuBYQgsvIJYIDtBG1wUg=;
 b=qwEugErVDQfysWVhbCsiiHd0k3WG/gVDlZU4ONtUGUT8uQM6YIvBTvk5EtemMFsz8S
 S0ORC6dO2JPogd2QoCQ4R6iAxy8FkyYsEGDXz8V6A9lB2wRrIRylc/LvS8GAwfnohceg
 abQtCJ1c25sOZUl0R97Wmg5VnKOgMR2Vkti7JXqj77QmbUqWKe/p9Q7vSdbWBfY0o7wD
 dgIG3f2UehTyKhAZgra5YirgzfzxA6yEhch6eaxXeajJyCwBq9GHjsfnvuuI31BzPBWX
 MmrabpJbZWxb9tFoVE1Pv25WBwMxgDJul3klmAVhrE4UP/fP2cwzUVfGNw0f2DcqD7OQ
 I0NA==
X-Gm-Message-State: AGi0Pua2tDQio/DxEQxcbKoZwvJi6738mh4a1HEtz3+duo6C1kZAio5S
 dgTrws7vxglUl1cCb/PB7/ekjA==
X-Google-Smtp-Source: APiQypIY4gxvEl5tps3s2Elwdzto0Ez6RpLP3/4Gfy9ggA/7GFzjOVp+QweqPybFmauP84QxQwgDtg==
X-Received: by 2002:a5d:410a:: with SMTP id l10mr9004101wrp.355.1587710587668; 
 Thu, 23 Apr 2020 23:43:07 -0700 (PDT)
Received: from dell ([2.31.163.63])
 by smtp.gmail.com with ESMTPSA id n9sm6875262wrx.61.2020.04.23.23.43.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 23:43:06 -0700 (PDT)
Date: Fri, 24 Apr 2020 07:43:03 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Message-ID: <20200424064303.GJ3612@dell>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200423114857.GG3612@dell> <20200423215306.GA8670@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423215306.GA8670@codeaurora.org>
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

T24gVGh1LCAyMyBBcHIgMjAyMCwgR3VydSBEYXMgU3JpbmFnZXNoIHdyb3RlOgoKPiBPbiBUaHUs
IEFwciAyMywgMjAyMCBhdCAxMjo0ODo1N1BNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBX
aGF0J3MgdGhlIG1lcmdlIHBsYW4gZm9yIHRoaXMgc2V0Pwo+IAo+IEknbSBub3Qgc3VyZSB3aGF0
IHlvdSBtZWFuLiBNeSBhc3N1bXB0aW9uIGlzIHRoYXQgZmlyc3QgYWxsIHRoZSBwYXRjaGVzCj4g
bmVlZCB0byBnZXQgYW4gQWNrZWQtYnkgYW5kIG9ubHkgdGhlbiB3aWxsIHRoZSBzZXJpZXMgZ2V0
IGFwcGxpZWQgYnkKPiBUaGllcnJ5Li4uIENvdWxkIFRoaWVycnkgb3IgVXdlIHdlaWdoIGluIG9u
IHRoaXMgcG9pbnQgcGxlYXNlPwo+IAo+ID4gRllJLCBpdCdzIGJldHRlciB0byBzZW5kIGFsbCBw
YXRjaGVzIHRvIGFsbCBwYXJ0aWVzLiAgVGhhdCB3YXkKPiA+IG1haW50YWluZXJzIGFuZCBpbnRl
cmVzdGVkIHBlcnNvbnMgY2FuIGZvbGxvdyB0aGUgZGlzY3Vzc2lvbiBhbmQKPiA+IHByb2dyZXNz
LCBvciBsYWNrIHRoZXJlIG9mLgo+IAo+IFNvbWV0aGluZyBJIG5vdGljZWQgd2l0aCBhZGRpbmcg
YWxsIHRoZSB2YXJpb3VzIG1haWxpbmcgbGlzdHMgdG8gdGhlIENDCj4gbGlzdCBmb3IgdGhpcyBj
b3ZlciBsZXR0ZXIgaXMgdGhhdCBpdCBpcyBjYXVzaW5nIHRoaXMgY292ZXIgbGV0dGVyIGVtYWls
Cj4gYW5kIGFsbCBpdHMgcmVwbGllcyB0byBub3QgYmUgYXJjaGl2ZWQgcHJvcGVybHkgb24gc3Bp
bmljcyBvciBsb3JlIC0KPiBpdCdzIHByb2JhYmx5IGdldHRpbmcgcmVqZWN0ZWQgYnkgZW1haWwg
ZmlsdGVycyBzb21laG93LiBDb21wYXJlIHdpdGgKPiB2MTIgWzFdIHdoZXJlIEknZCBwcnVuZWQg
dGhlIGxpc3QgY29uc2lkZXJhYmx5IGFzIGFuIGV4cGVyaW1lbnQgLSB0aGF0Cj4gZ290IGFyY2hp
dmVkIGNvcnJlY3RseS4KPiAKPiBBbnkgaWRlYXMgb24gd2hhdCBtaWdodCBiZSBnb2luZyB3cm9u
Zz8gT25jZSBJIGZpeCB0aGlzIEkgY2FuIGFkZCBhbGwKPiBwYXJ0aWVzIHRvIGFsbCBwYXRjaGVz
IGtub3dpbmcgdGhhdCB0aGVyZSB3b3VsZCBiZSBubyBpc3N1ZXMgaW4gbWFpbAo+IGFyY2hpdmFs
LgoKQSBncmVhdCBkZWFsIG9mIG1haWxpbmcgbGlzdHMgY29udGFpbiBudW1lcm91cyBwcm90ZWN0
aW9ucyBhZ2FpbnN0CnRoaW5ncyBsaWtlIGZsb29kaW5nIGFuZCBzcGFtbWluZy4gIE9uZSBvZiB0
aG9zZSBwcm90ZWN0aW9ucyBpcyBhCmNoZWNrIGZvciAiVG9vIG1hbnkgcmVjaXBpZW50cyB0byB0
aGUgbWVzc2FnZSIuICBNb3N0IG9mIHRoZSB0aW1lIHRoaXMKc2ltcGx5IHJlcXVpcmVzIG1vZGVy
YXRvciBpbnRlcnZlbnRpb24gYnkgd2F5IG9mIHJldmlldyBhbmQgYXBwcm92YWwsCmJ1dCB0aGlz
IHVsdGltYXRlbHkgZGVwZW5kcyBvbiB0aGUgTUwncyBjb25maWd1cmF0aW9uLgoKVGhlIGZpcnN0
IHRoaW5nIHRvIGFzY2VydGFpbiBpcyB3aHkgeW91ciByZWNpcGllbnRzIGxpc3QgaXMgc28gbGFy
Z2UuCkhhdmUgeW91IGFkZGVkIGV2ZXJ5IHJldmlld2VyLCBzdWJzeXN0ZW0tbWFpbnRhaW5lciwg
bWFpbnRhaW5lciBhbmQKY29udHJpYnV0b3Igc3VnZ2VzdGVkIGJ5IGdldC1tYWludGFpbmVyLnBs
PyAgSWYgc28sIGNvbnNpZGVyIHBydW5pbmcKdGhhdCBhIGxpdHRsZS4gIENvbnRyaWJ1dG9ycyBk
byBub3QgdGVuZCB0byBjYXJlIGFib3V0IHN1YnNlcXVlbnQKY2hhbmdlcyB0byBhIGZpbGUuICBB
cyBzb21lb25lIHdobyByZWNlaXZlcyBhIGxvdCBvZiBwYXRjaGVzLCBJIHRlbmQKdG8gZ2V0IGZl
ZC11cCB3aGVuIHJlY2VpdmluZyBwYXRjaGVzIHNpbXBseSBiZWNhdXNlIEkgbWFkZSBhIGNoYW5n
ZSBYCnllYXJzIGFnby4gIFN0aWNrIHRvIGxpc3RlZCBtYWludGFpbmVycy9yZXZpZXdlcnMgaW4g
dGhlIGZpcnN0Cmluc3RhbmNlIGFuZCBzZWUgaG93IGZhciB0aGF0IHRha2VzIHlvdS4KCklmIHlv
dXIgcmVjaXBpZW50cyBsaXN0IGlzIGFzIHN1Y2NpbmN0IGFzIHJlYXNvbmFibHkgcG9zc2libGUs
IG1heWJlCmp1c3QgYWNjZXB0IHRoYXQgZXZlcnkgdmVyc2lvbiBpc24ndCBnb2luZyB0byBiZSBh
cmNoaXZlZCBieSBldmVyeQpNTC4gIEl0J3Mgc3RpbGwgbXVjaCBtb3JlIHVzZWZ1bCBmb3IgdGhl
IGNvcnJlY3QgcGVvcGxlIHRvIGhhdmUKdmlzaWJpbGl0eSBpbnRvIHRoZSBzZXQgdGhhbiBmb3Ig
aXQgdG8gYmUgYXJjaGl2ZWQgbXVsdGlwbGUgdGltZXMuCgo+IFsxXSBodHRwczovL3d3dy5zcGlu
aWNzLm5ldC9saXN0cy9saW51eC1wd20vbXNnMTIxMzEuaHRtbAo+IAo+IFRoYW5rIHlvdS4KPiAK
PiBHdXJ1IERhcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
