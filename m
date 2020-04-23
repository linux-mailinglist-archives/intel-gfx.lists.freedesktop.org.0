Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 869441B57FF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 11:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 657916E478;
	Thu, 23 Apr 2020 09:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E6E6E478
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 09:20:38 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id u127so5756740wmg.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 02:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YlakRXlVVbSOqCFC3kOOGCPGNfzSZXjoj0rNmgz6JGM=;
 b=U1qjm/QVHI2Y9dwiNoTJmKsb9YPhRYHXTAWLYLkGIH/SzTUHXhbhd14spJ/p+AT+Kz
 1Y3UiQNE/wP3N7RTf4ky5usp+Z+mzVCP190WHmnxktH3svJLYkjaL3DnqcnYWyn+tTES
 aNp7OWzhG5ks/pe0LW9zyWINJtLQI4MlevZfR0iXD9/OAKd+w09KY8drrZYOsVUqflLD
 FUNx2smvIqNEyt9TfZ71n4B2ItG2+PhQqtMo15ebAvjQ3N8DWLA6fftKBFjKruiHCrrq
 e7dZjCRRvXZ2OBVmaDRK4zx1pLfBAUHhRG9DKAM3T4DhG5QlNb++e1QX45/61gr8REDD
 uuAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YlakRXlVVbSOqCFC3kOOGCPGNfzSZXjoj0rNmgz6JGM=;
 b=QyEkEPIzZl58LmrsKm6i6q3wLjMSDuJ9w0SChrW7USAwU4cDKl9vbUqNTXbfB/IrW5
 tK/hvS7ew6l9rnJwioCOoJSzgNjxd8jGnB7jKLIQFUKxm+ZXwdV38QfrWqV/pNPyAFyT
 hp3mHjYDBLO9qgLiBU1sg1sRx2bWYNcPkumQc0QAKhk7jRRZB5FPKCPxVRqQROHtz6Jn
 dHvknvjQrSryNwppQOcRqFhdx53GBteSY2sfJayyRi5wuOBxP5GmJkOezjnns5eq1Az8
 AO9S+WOx4vql5H2LbbOw2/blA1QHeQe05Azy8jrT+Z8rkjXL4pjzUCZ2dZzpBSSxXRkr
 JOOw==
X-Gm-Message-State: AGi0Pubq0o9NaIU2NmAOxn/GEaKwWtz+O4wabNVCESAd2Exg/LYOpNax
 30Tq8ZcS2Sm04/8EHTg9IawBIg==
X-Google-Smtp-Source: APiQypKxzJUFiraEGAMa9DKmpYFhbShKwe/xf4XMAY+FxNiGq6f3nSom2gJQinfqyhDKdWHVW8Vq7Q==
X-Received: by 2002:a1c:678a:: with SMTP id b132mr3112235wmc.107.1587633637495; 
 Thu, 23 Apr 2020 02:20:37 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id h10sm2738108wrq.33.2020.04.23.02.20.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 02:20:36 -0700 (PDT)
Date: Thu, 23 Apr 2020 10:20:34 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Message-ID: <20200423092034.2yrzbuiay66fizkx@holly.lan>
References: <cover.1587523702.git.gurus@codeaurora.org>
 <20200422084934.ajh6yzs5mkzzvop4@holly.lan>
 <20200422233755.GA11597@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422233755.GA11597@codeaurora.org>
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

On Wed, Apr 22, 2020 at 04:37:55PM -0700, Guru Das Srinagesh wrote:
> On Wed, Apr 22, 2020 at 09:49:34AM +0100, Daniel Thompson wrote:
> > On Tue, Apr 21, 2020 at 07:57:12PM -0700, Guru Das Srinagesh wrote:
> > > [REQUEST]
> > > 
> > > Would it be possible for the patches that have already received Acked-by's in
> > > this series to be accepted and applied to the tree? I lost an Acked-by (in
> > > intel-panel.c) because it had a merge conflict with a new change that came in
> > > after I rebased to tip. I wasn't sure earlier about accepting single patches as
> > > opposed to the entire series en masse, but this event has got me thinking.
> > 
> > Has there been a positive maintainer review of patch 11 at any point in
> > the thread (most of the people you are asking to commit patches have
> > not been able to see the discussion about the actual feature these
> > patches are preparing for)?
> 
> Yes. Uwe had this to say [1] about a previous patchset (v5) of patch 11
> which is essentially unchanged in this patchset save the dropping of the
> pwm_capture change.
> 
> [1] https://www.spinics.net/lists/linux-pwm/msg11536.html

Excellent. Thanks!


Daniel.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
