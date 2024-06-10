Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 611A39023E2
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2024 16:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCF7710E189;
	Mon, 10 Jun 2024 14:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Jk2pGreX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0027D10E359
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 08:08:14 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id
 2adb3069b0e04-5295e488248so4550171e87.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2024 01:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1718006893; x=1718611693; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=;
 b=Jk2pGreXJkRau6r88te0sdqz2/QSFFk7lebcZ5AJ3q2j6Wy0eXP2v/GpyxFd6UFjSc
 dS16pOyB0KAd3EyM72fqbgqvIXhQNwFLOYYlaSjaigs+yOatiq+5m/D418mfqx63MJYD
 pBJgtVFOsooenCqgZ7Ew01enSj4ZU5+vOX961EraSp/G67ByQq0SOHrbQi7dSm3Ohi6j
 KdXPjpWqDm7Aewu/QwwxPeIrEcFUeCQFhkWIfAddm8EdAMCTbu3xi1wnpnP9gW1GMKZH
 hS8gPbmrIpoZbH6mj6bkLS0yU6VnwKuRVtFM+F8NQHyHjxywAIAT0l8WFI+NaD56ByqE
 KlAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718006893; x=1718611693;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/L5y1Dv6ivY3eszYnYmdXRYc401x9YYY2yBAmmyUG/k=;
 b=TpzZkqfMn7t0xp6eSO4usS+F4VBE/fea1mU35GB0H52Tmie24tO92oie5JvIQWLN6F
 7jLZ07ruxtfHISMEmmLV4D9yh3dwUG0YPha1aIkCiobPWV3ucv1jchsKgG0dcSSTtl+E
 s8/ATMK7UUdQ2YH+HPiMp2G17AwD27Sdez+iZPVrgeVjgD4YybZ/BIaB+Kxy+9t9XY0Y
 YaPsXVh2dB6QrIwANuVkWyxc1TSJAspfm7zCoWhaQj76cKOAiPEbm+bBMqGziTN4Tz3X
 u5UNPHL2ZiaWerLqK2zU5JZX65iUKJJN0cJx8n1GwMx7n56rlUVU7lRTbEONr3rfw0jv
 lCFw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxB5GMGsndPO9gca4tYYOMq1+6hfYAfdbvYwccsYql9O3+bUeMHLeDpa9dtXmv3X64kuAhGTQAEyuYaIBbAhFAGCISzyO9nFkxTznMgM9X
X-Gm-Message-State: AOJu0Yxwo0taXosL7JDvCyPDhw9CEYZyo8sDBm8+1sjVTkZ6ARvR2zKS
 kwWOAFmjyK7umVim+0RUTyAXF4vEbnc46g3LV4KIPa3roS6Kt7hD5VYU3SUVbScfndqb3+zjuO4
 U1Cyrz7jKLW3zI4tCYZF0CMqOIUfNFZ5AKAPYoQ==
X-Google-Smtp-Source: AGHT+IEoIIaopVbMhKiBzu+ZFeFG117iZrYhuaSy1PLsnicMvCE0nAaF1iUL9hhnUeVtUHqe9i20V059/u6XmSWe6yI=
X-Received: by 2002:a05:6512:234d:b0:52b:be9b:cafe with SMTP id
 2adb3069b0e04-52bbe9bcbadmr5940256e87.21.1718006892189; Mon, 10 Jun 2024
 01:08:12 -0700 (PDT)
MIME-Version: 1.0
References: <20240603211538.289765-1-andriy.shevchenko@linux.intel.com>
 <87tti9cfry.fsf@intel.com>
In-Reply-To: <87tti9cfry.fsf@intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 10 Jun 2024 10:08:00 +0200
Message-ID: <CACRpkdZFPG_YLici-BmYfk9HZ36f4WavCN3JNotkk8cPgCODCg@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] treewide: Align match_string() with
 sysfs_match_string()
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Corey Minyard <minyard@acm.org>, Allen Pais <apais@linux.microsoft.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Perry Yuan <perry.yuan@amd.com>, 
 Giovanni Cabiddu <giovanni.cabiddu@intel.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, 
 Nuno Sa <nuno.sa@analog.com>, Guenter Roeck <linux@roeck-us.net>, 
 Randy Dunlap <rdunlap@infradead.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Heiner Kallweit <hkallweit1@gmail.com>, Lee Jones <lee@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, Elad Nachman <enachman@marvell.com>, 
 Arseniy Krasnov <AVKrasnov@sberdevices.ru>,
 Johannes Berg <johannes.berg@intel.com>, 
 Gregory Greenman <gregory.greenman@intel.com>,
 Benjamin Berg <benjamin.berg@intel.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Robert Richter <rrichter@amd.com>,
 Vinod Koul <vkoul@kernel.org>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Hans de Goede <hdegoede@redhat.com>, 
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>, 
 Nikita Kravets <teackot@gmail.com>, Jiri Slaby <jirislaby@kernel.org>, 
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, 
 Stanley Chang <stanley_chang@realtek.com>, 
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Abdel Alkuor <abdelalkuor@geotab.com>, 
 Kent Overstreet <kent.overstreet@linux.dev>, Eric Biggers <ebiggers@google.com>,
 Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>, 
 "Steven Rostedt (Google)" <rostedt@goodmis.org>,
 Daniel Bristot de Oliveira <bristot@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, Hugh Dickins <hughd@google.com>, 
 Abel Wu <wuyun.abel@bytedance.com>, John Johansen <john.johansen@canonical.com>,
 Mimi Zohar <zohar@linux.ibm.com>, Stefan Berger <stefanb@linux.ibm.com>, 
 Roberto Sassu <roberto.sassu@huawei.com>,
 Eric Snowberg <eric.snowberg@oracle.com>, 
 Takashi Iwai <tiwai@suse.de>, Takashi Sakamoto <o-takashi@sakamocchi.jp>, 
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 Mark Brown <broonie@kernel.org>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 linuxppc-dev@lists.ozlabs.org, 
 linux-kernel@vger.kernel.org, keyrings@vger.kernel.org, 
 linux-crypto@vger.kernel.org, linux-acpi@vger.kernel.org, 
 linux-ide@vger.kernel.org, openipmi-developer@lists.sourceforge.net, 
 linux-clk@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-pm@vger.kernel.org, qat-linux@intel.com, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 linux-hwmon@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-leds@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-omap@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-mtd@lists.infradead.org, netdev@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-gpio@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
 linux-staging@lists.linux.dev, linux-usb@vger.kernel.org, 
 linux-fbdev@vger.kernel.org, linux-bcachefs@vger.kernel.org, 
 linux-hardening@vger.kernel.org, cgroups@vger.kernel.org, 
 linux-trace-kernel@vger.kernel.org, linux-mm@kvack.org, 
 apparmor@lists.ubuntu.com, linux-security-module@vger.kernel.org, 
 linux-integrity@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>, 
 Nicholas Piggin <npiggin@gmail.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, 
 "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>,
 Thomas Gleixner <tglx@linutronix.de>, 
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
 Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org, 
 "H. Peter Anvin" <hpa@zytor.com>, David Howells <dhowells@redhat.com>, 
 "David S. Miller" <davem@davemloft.net>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
 Sergey Shtylyov <s.shtylyov@omp.ru>, Damien Le Moal <dlemoal@kernel.org>, 
 Niklas Cassel <cassel@kernel.org>, Daniel Scally <djrscally@gmail.com>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Prashant Gaikwad <pgaikwad@nvidia.com>, 
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Huang Rui <ray.huang@amd.com>, "Gautham R. Shenoy" <gautham.shenoy@amd.com>, 
 Mario Limonciello <mario.limonciello@amd.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>, 
 Danilo Krummrich <dakr@redhat.com>, Jean Delvare <jdelvare@suse.com>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Pavel Machek <pavel@ucw.cz>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Tony Lindgren <tony@atomide.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Hu Ziji <huziji@marvell.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Potnuri Bharat Teja <bharat@chelsio.com>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Miri Korenblit <miriam.rachel.korenblit@intel.com>,
 Kalle Valo <kvalo@kernel.org>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>,
 "Oliver O'Halloran" <oohall@gmail.com>, 
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 JC Kuo <jckuo@nvidia.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Sebastian Reichel <sre@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Helge Deller <deller@gmx.de>, Brian Foster <bfoster@redhat.com>, 
 Zhihao Cheng <chengzhihao1@huawei.com>, Tejun Heo <tj@kernel.org>, 
 Zefan Li <lizefan.x@bytedance.com>, Johannes Weiner <hannes@cmpxchg.org>, 
 Peter Zijlstra <peterz@infradead.org>, Juri Lelli <juri.lelli@redhat.com>, 
 Vincent Guittot <vincent.guittot@linaro.org>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, 
 Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
 Daniel Bristot de Oliveira <bristot@redhat.com>,
 Valentin Schneider <vschneid@redhat.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Jason Baron <jbaron@akamai.com>, Jim Cromie <jim.cromie@gmail.com>, 
 Paul Moore <paul@paul-moore.com>, James Morris <jmorris@namei.org>, 
 "Serge E. Hallyn" <serge@hallyn.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, 
 Clemens Ladisch <clemens@ladisch.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 10 Jun 2024 14:18:34 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 4, 2024 at 9:46=E2=80=AFAM Jani Nikula <jani.nikula@linux.intel=
.com> wrote:

[Maybe slightly off-topic, ranty]

> Why do we think it's a good idea to increase and normalize the use of
> double-underscore function names across the kernel, like
> __match_string() in this case? It should mean "reserved for the
> implementation, not to be called directly".
>
> If it's to be used directly, it should be named accordingly, right?

It's a huge mess. "__" prefix is just so ambiguous I think it just
shouldn't be used or prolifierated, and it usually breaks Rusty Russells
API rules times over.

Consider __set_bit() from <linux/bitops.h>, used all over the place,
in contrast with set_bit() for example, what does "__" represent in
this context that makes __set_bit() different from set_bit()?

It means "non-atomic"...

How does a random contributor know this?

Yeah, you guess it. By the token of "everybody knows that".
(Grep, google, repeat for the number of contributors to the kernel.)

I was considering to send a script to Torvalds to just change all
this to set_bit_nonatomic() (etc) but was hesitating because that
makes the name unambiguous but long. I think I stayed off it
because changing stuff like that all over the place creates churn
and churn is bad.

Yours,
Linus Walleij
