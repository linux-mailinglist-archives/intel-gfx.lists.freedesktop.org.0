Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6BF7521B6
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C54BB10E68F;
	Thu, 13 Jul 2023 12:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55FB810E5CD;
 Wed, 12 Jul 2023 19:24:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F2818618F6;
 Wed, 12 Jul 2023 19:24:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2E67C433C7;
 Wed, 12 Jul 2023 19:22:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1689189841;
 bh=Tfejh8EXB17kdCnKChHCKsENFyCAyHmgokGK8jgx0S4=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=ntLZbbIa8ui4VLewT/ZWNtkWgRs7MbRiBOhFPmK6XwjRbTD/3kPBu1aqhFZ0rkrTw
 NoTZi0Izio/rxjoLWBubaj+3vL5lvYukHPTwqzZkAMQJcVh8+LeSyVQRiF6uaWPcM/
 zuqSfu4Q9tdtMALob+iDjB+wXeO+wx4IclmprAMk1ovBvhz2Kb6mUBbsrON4ASXRiy
 LcrKecm8vPG1UI+nVF2Hnnsm4BKqA7ElLyIZzw3R6g6ih439+oVUcyzCdQwNklbbMO
 NQNR0TgJUV9FeYvO7UXNbntxcy7XKI2L5F9S7YJV8onDbx66b25wYy9gLnXBEh/586
 QVl33fuhfdZNQ==
Message-ID: <2eeb1271-731a-1a70-4c83-449567452f8f@kernel.org>
Date: Wed, 12 Jul 2023 21:22:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Sean Paul <seanpaul@chromium.org>, Jani Nikula <jani.nikula@intel.com>
References: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
 <87fs5tgpvv.fsf@intel.com>
 <CAOw6vbLO_UaXDbTCtAQJgthXOUMPqEV+c2MQhP-1DuK44OhGxw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <CAOw6vbLO_UaXDbTCtAQJgthXOUMPqEV+c2MQhP-1DuK44OhGxw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 13 Jul 2023 12:48:30 +0000
Subject: Re: [Intel-gfx] [Freedreno] [PATCH RFC v1 00/52] drm/crtc: Rename
 struct drm_crtc::dev to drm_dev
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Marian Cichy <m.cichy@pengutronix.de>, Xinliang Liu <xinliang.liu@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Alexey Kodanev <aleksei.kodanev@bell-sw.com>, dri-devel@lists.freedesktop.org,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Liu Shixin <liushixin2@huawei.com>, linux-samsung-soc@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>, Matt Roper <matthew.d.roper@intel.com>,
 Wenjing Liu <wenjing.liu@amd.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>, NXP Linux Team <linux-imx@nxp.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 spice-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 Tim Huang <Tim.Huang@amd.com>,
 =?UTF-8?Q?Andr=c3=a9_Almeida?= <andrealmeid@igalia.com>,
 Yifan Zhang <yifan1.zhang@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Hersen Wu <hersenxs.wu@amd.com>, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 =?UTF-8?Q?=c5=81ukasz_Bartosik?= <lb@semihalf.com>,
 Andrew Jeffery <andrew@aj.id.au>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Manasi Navare <manasi.d.navare@intel.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>, kernel@pengutronix.de,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Zack Rusin <zackr@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 Edmund Dea <edmund.j.dea@intel.com>, virtualization@lists.linux-foundation.org,
 Yongqin Liu <yongqin.liu@linaro.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 David Lechner <david@lechnology.com>,
 "Jiri Slaby \(SUSE\)" <jirislaby@kernel.org>,
 David Francis <David.Francis@amd.com>, Aaron Liu <aaron.liu@amd.com>,
 Vinod Polimera <quic_vpolimer@quicinc.com>, linux-rockchip@lists.infradead.org,
 Fangzhi Zuo <jerry.zuo@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Dave Airlie <airlied@redhat.com>,
 linux-mips@vger.kernel.org, Graham Sider <Graham.Sider@amd.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-amlogic@lists.infradead.org, Evan Quan <evan.quan@amd.com>,
 Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Boris Brezillon <bbrezillon@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Qingqing Zhuo <qingqing.zhuo@amd.com>, Sandy Huang <hjc@rock-chips.com>,
 John Stultz <jstultz@google.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Drew Davenport <ddavenport@chromium.org>, Kevin Hilman <khilman@baylibre.com>,
 Hawking Zhang <Hawking.Zhang@amd.com>,
 Haneen Mohammed <hamohammed.sa@gmail.com>, Dan Carpenter <error27@gmail.com>,
 Karol Herbst <kherbst@redhat.com>, linux-hyperv@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Melissa Wen <melissa.srw@gmail.com>,
 =?UTF-8?Q?Ma=c3=adra_Canal?= <mairacanal@riseup.net>,
 Luca Coelho <luciano.coelho@intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Likun Gao <Likun.Gao@amd.com>,
 Sam Ravnborg <sam@ravnborg.org>, Alain Volmat <alain.volmat@foss.st.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Deepak Rawat <drawat.floss@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Joel Stanley <joel@jms.id.au>, xurui <xurui@kylinos.cn>,
 Harry Wentland <harry.wentland@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Alan Liu <haoping.liu@amd.com>,
 Philip Yang <Philip.Yang@amd.com>, intel-gfx@lists.freedesktop.org,
 Alison Wang <alison.wang@nxp.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Perttunen <mperttunen@nvidia.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Tomi Valkeinen <tomba@kernel.org>, Deepak R Varma <drv@mailo.com>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>,
 Chia-I Wu <olvaffe@gmail.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Tian Tao <tiantao6@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 linux-stm32@st-md-mailman.stormreply.com, Emma Anholt <emma@anholt.net>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Roman Li <roman.li@amd.com>,
 Paul Cercueil <paul@crapouillou.net>, Hamza Mahfooz <hamza.mahfooz@amd.com>,
 David Airlie <airlied@gmail.com>, Marek Vasut <marex@denx.de>,
 Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 xen-devel@lists.xenproject.org, Guchun Chen <guchun.chen@amd.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Russell King <linux@armlinux.org.uk>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 Srinivasan Shanmugam <srinivasan.shanmugam@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-tegra@vger.kernel.org,
 =?UTF-8?B?TWFyZWsgT2zFocOhaw==?= <marek.olsak@amd.com>,
 =?UTF-8?Q?Joaqu=c3=adn_Ignacio_Aramend=c3=ada?= <samsagax@gmail.com>,
 Melissa Wen <mwen@igalia.com>, Hans de Goede <hdegoede@redhat.com>,
 linux-mediatek@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 David Tadokoro <davidbtadokoro@usp.br>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Orson Zhai <orsonzhai@gmail.com>, amd-gfx@lists.freedesktop.org,
 Jyri Sarha <jyri.sarha@iki.fi>, Yannick Fertre <yannick.fertre@foss.st.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Philippe Cornu <philippe.cornu@foss.st.com>, Daniel Vetter <daniel@ffwll.ch>,
 Wayne Lin <Wayne.Lin@amd.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Nirmoy Das <nirmoy.das@intel.com>, Lang Yu <Lang.Yu@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/07/2023 20:31, Sean Paul wrote:
>>>     216 struct drm_device *ddev
>>>     234 struct drm_device *drm_dev
>>>     611 struct drm_device *drm
>>>    4190 struct drm_device *dev
>>>
>>> This series starts with renaming struct drm_crtc::dev to drm_dev. If
>>> it's not only me and others like the result of this effort it should be
>>> followed up by adapting the other structs and the individual usages in
>>> the different drivers.
>>
>> I think this is an unnecessary change. In drm, a dev is usually a drm
>> device, i.e. struct drm_device *. As shown by the numbers above.
>>
> 
> I'd really prefer this patch (series or single) is not accepted. This
> will cause problems for everyone cherry-picking patches to a
> downstream kernel (LTS or distro tree). I usually wouldn't expect
> sympathy here, but the questionable benefit does not outweigh the cost
> IM[biased]O.

You know, every code cleanup and style adjustment is interfering with
backporting. The only argument for a fast-pacing kernel should be
whether the developers of this code find it more readable with such cleanup.

Best regards,
Krzysztof

