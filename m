Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7440198558
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 22:26:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED9C894DE;
	Mon, 30 Mar 2020 20:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D477893E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 20:26:42 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id d5so23364527wrn.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Izq/zDRy3JuvVgXw1u8V22bHSGiKH7Q2z3WTw4pyk08=;
 b=ykw0RIpay0miiK6pm+dujtOmzrpL1TJNx478OLJCPVo6T8wPPUWAsc/EPKhR6rtGm1
 jtD8KX8ucrH3hH2+VFx1nt7aOrogkmlHe7fZcFs32X02YNRkTtYHc1m1ZKjp7q1MYK1t
 4gznZSYUbeParQ65Wf8biVvpzMn7FYi8zJehepikkkWNW3Hhgt3lhP+1qarqs1k4vqwL
 PcgaOWDB9urFTa5k1e29vc5f7NklcU8y0H4r3t5XafTe7AxPh4AyJryF/HIMKCJ3VvSB
 yUEyBfsXiMdf9D7PYPetJE6Dzv8FWW+fCjyZS9XpnuhUV3E4shGW5cxOS20jB4xLHlnN
 chWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Izq/zDRy3JuvVgXw1u8V22bHSGiKH7Q2z3WTw4pyk08=;
 b=JbrHkYaGC0nnM7Dle01nN5C3S4HEfK08y5Kgw8JgBu6Gah44gnh0r7WfAgAFVJgmPb
 k7CKj4eKRcNUVMTErh+HmHoIQaP3RIr79pSwpcRt3Td++yGugnD377esvdSgXgaKHNVr
 HD7OxUodXkmkWjgp2stIu3PboLlTAcJzUj/7cuW6KBrnlIJXyW0WhqffHklK45NxJlOR
 EqJjuRJBNWBZ9gVj8Dj+MgPgFJ1goFYksKwYJu4fPGlXf7pAKOlMrS+KKsgeKefpPlbI
 cXGr6KQ0DPhZMG7qHDxQqfG20kqrtzrXOkpFKoyn8BdatENP9l1kJnDcKAKVtnodflfk
 clhg==
X-Gm-Message-State: ANhLgQ2ccpglgsoQxR45sRF3rYvg5IojFoCfakcXsw2qy5bgn0poE04E
 BvY8fpjJcpzQ4EifX5Y5kqXajw==
X-Google-Smtp-Source: ADFU+vvYx4daTb2CqvHosfXjfsqQOa/dnjnjvZ2DvllWwzb77vr2e3t9P1ciYIKrXvWrc6M9NTZ8Ng==
X-Received: by 2002:adf:e8c1:: with SMTP id k1mr15944538wrn.381.1585600000822; 
 Mon, 30 Mar 2020 13:26:40 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id t21sm814318wmt.43.2020.03.30.13.26.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 13:26:39 -0700 (PDT)
Date: Mon, 30 Mar 2020 21:26:36 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Message-ID: <20200330202636.njjo4savgzf3g6yx@holly.lan>
References: <cover.1584650604.git.gurus@codeaurora.org>
 <20200321114703.GB4672@kadam>
 <20200330191506.GA29534@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200330191506.GA29534@codeaurora.org>
Subject: Re: [Intel-gfx] [PATCH v10 00/12] Convert PWM period and duty cycle
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
 David Airlie <airlied@linux.ie>, "Wesley W. Terpstra" <wesley@sifive.com>,
 Michael Turquette <mturquette@baylibre.com>, Kamil Debski <kamil@wypas.org>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Atish Patra <atish.patra@wdc.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-riscv@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-clk@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Axel Lin <axel.lin@ingics.com>,
 Arnd Bergmann <arnd@arndb.de>, Alexander Shiyan <shc_work@mail.ru>,
 Fabio Estevam <festevam@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 NXP Linux Team <linux-imx@nxp.com>, Mukesh Ojha <mojha@codeaurora.org>,
 Gerald Baeza <gerald.baeza@st.com>, intel-gfx@lists.freedesktop.org,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 linux-pwm@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Mark Brown <broonie@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>, Fabrice Gasnier <fabrice.gasnier@st.com>,
 Ding Xiang <dingxiang@cmss.chinamobile.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-hwmon@vger.kernel.org,
 Chris Wilson <chris@chris-wilson.co.uk>, Anson Huang <Anson.Huang@nxp.com>,
 Richard Fontana <rfontana@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Jingoo Han <jingoohan1@gmail.com>, linux-kernel@vger.kernel.org,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Guenter Roeck <linux@roeck-us.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 30, 2020 at 12:15:07PM -0700, Guru Das Srinagesh wrote:
> On Sat, Mar 21, 2020 at 02:47:03PM +0300, Dan Carpenter wrote:
> > This is a giant CC list.
> 
> Yes, this is because I received feedback [1] on an earlier patchset
> directing me to add the reviewers of patches to the cover letter as
> well so that they get some context for the patch.
> ...
> [1] https://www.spinics.net/lists/linux-pwm/msg11735.html

Strictly speaking I only asked for backlight maintainers to be Cc:ed.
I was fairly careful to be specific since I'm aware there are a variety
of differing habits when putting together the Cc: list for covering
letters.

With the original patch header the purpose of the patch I was Cc:ed on
was impossible to determine without the covering letter.


Daniel.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
