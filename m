Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A72DD1B3A8A
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 10:49:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A32B6E370;
	Wed, 22 Apr 2020 08:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E8226E372
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 08:49:39 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id k13so1381303wrw.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 01:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VAkwYH5sNSEh8qmcTpFiukZBRUUgBymqA9LRCH0eLZ8=;
 b=FoDnzcixZTYxw7/SWMOripNwt3xjQ3RtNofHprRXRwaqWGlEOcT85Fd4A04qgfiK7p
 ZeyQnK7r6wHwJ+bR1e3arPvblA+RDmmBEONKxufJ/Wrzzk/u3YL3BKlh1xL57GV0EgNC
 VIRNHm1p2hXfWWlnQb/F7IMB5oa7ITdgbJj6pjorSr7AWKdw6sXUzPwh7ELpfrwK58SV
 XkD05vsZk/yYrMu33hDVB0Pv2eCFJ7rexox4rUM7LSBobFVl1nn9ba6BqZe27zlhGPX8
 K7J8OzyfTSfB5jJYYY+TrRBcDmLPXf04wH12mYb6Rm9ciilLYcCreN4cjzKQDXEsxux6
 6/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VAkwYH5sNSEh8qmcTpFiukZBRUUgBymqA9LRCH0eLZ8=;
 b=CLPsdUBa0QfLamfdThvazK8e7z7IXbMsxp/7AzkTn+OdtSvnoHwJBcHJ2IFqDjZjsL
 IZWrcpsiHxTcpwM6C8NhtgQ/SyM15T+uN8crT90OyEXc9vND/P/H2HexoAApnIJbCPLr
 KLYTsEzvhkmlXjHQM0rJudbfRQ+wW6Z4vs1BXOAVaoX+PcVdZ7F0u7DWflGJa1w59sXy
 P60qlyISE1x5Mlq2rjRVV3KHbHnsvez+ywIyWjUReFeX6ai9ni4piimZUkApbmVXccyr
 sdg2C69jQ8yNPg4BNPO89uyF+vefcRJbldDvLC8LFp2zUQkPn5SA321n8TDGLdOXL6c5
 N1bA==
X-Gm-Message-State: AGi0PubNSjq8St4+RGXhaBtnCzKPU7K2V26tej0oAIqM9n7u0DYe0EOO
 cVnGyvGY/G4tikQCUfuBYDeiXw==
X-Google-Smtp-Source: APiQypK2uN0BHRAsrtI/nG1z7SN0x6m/TQ8d/ZoCVrxhzoALBWRlY25Sa9qHj+HJctvDKK3VQSDlUg==
X-Received: by 2002:adf:b1c9:: with SMTP id r9mr17797817wra.271.1587545377924; 
 Wed, 22 Apr 2020 01:49:37 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id p16sm7090901wro.21.2020.04.22.01.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 01:49:37 -0700 (PDT)
Date: Wed, 22 Apr 2020 09:49:34 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Message-ID: <20200422084934.ajh6yzs5mkzzvop4@holly.lan>
References: <cover.1587523702.git.gurus@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1587523702.git.gurus@codeaurora.org>
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
 linux-clk@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alexander Shiyan <shc_work@mail.ru>, Lee Jones <lee.jones@linaro.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 21, 2020 at 07:57:12PM -0700, Guru Das Srinagesh wrote:
> [REQUEST]
> 
> Would it be possible for the patches that have already received Acked-by's in
> this series to be accepted and applied to the tree? I lost an Acked-by (in
> intel-panel.c) because it had a merge conflict with a new change that came in
> after I rebased to tip. I wasn't sure earlier about accepting single patches as
> opposed to the entire series en masse, but this event has got me thinking.

Has there been a positive maintainer review of patch 11 at any point in
the thread (most of the people you are asking to commit patches have
not been able to see the discussion about the actual feature these
patches are preparing for)?


Daniel.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
