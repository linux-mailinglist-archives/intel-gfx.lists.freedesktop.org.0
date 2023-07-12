Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD797521CB
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 14:49:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0966A10E6B4;
	Thu, 13 Jul 2023 12:48:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9941C10E4DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 11:04:45 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1qJXcX-0006Kb-FX; Wed, 12 Jul 2023 13:02:57 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1qJXcU-00Drn9-6o; Wed, 12 Jul 2023 13:02:54 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ukl@pengutronix.de>)
 id 1qJXcT-004ID3-Dy; Wed, 12 Jul 2023 13:02:53 +0200
Date: Wed, 12 Jul 2023 13:02:53 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20230712110253.paoyrmcbvlhpfxbf@pengutronix.de>
References: <20230712094702.1770121-1-u.kleine-koenig@pengutronix.de>
 <94eb6e4d-9384-152f-351b-ebb217411da9@amd.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="3iwy3q65ffdde3du"
Content-Disposition: inline
In-Reply-To: <94eb6e4d-9384-152f-351b-ebb217411da9@amd.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: intel-gfx@lists.freedesktop.org
X-Mailman-Approved-At: Thu, 13 Jul 2023 12:48:29 +0000
Subject: Re: [Intel-gfx] [PATCH RFC v1 00/52] drm/crtc: Rename struct
 drm_crtc::dev to drm_dev
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
 Alexey Kodanev <aleksei.kodanev@bell-sw.com>, dri-devel@lists.freedesktop.org,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Liu Shixin <liushixin2@huawei.com>, linux-samsung-soc@vger.kernel.org,
 Samuel Holland <samuel@sholland.org>,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
 Wenjing Liu <wenjing.liu@amd.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>, NXP Linux Team <linux-imx@nxp.com>,
 spice-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev,
 Tim Huang <Tim.Huang@amd.com>,
 =?utf-8?B?QW5kcsOp?= Almeida <andrealmeid@igalia.com>,
 Yifan Zhang <yifan1.zhang@amd.com>, Jani Nikula <jani.nikula@intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Inki Dae <inki.dae@samsung.com>,
 Hersen Wu <hersenxs.wu@amd.com>, Jessica Zhang <quic_jesszhan@quicinc.com>,
 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 =?utf-8?Q?=C5=81ukasz?= Bartosik <lb@semihalf.com>,
 Andrew Jeffery <andrew@aj.id.au>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>, kernel@pengutronix.de,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, Zack Rusin <zackr@vmware.com>,
 Gerd Hoffmann <kraxel@redhat.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 Yongqin Liu <yongqin.liu@linaro.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 David Lechner <david@lechnology.com>, Julia Lawall <Julia.Lawall@inria.fr>,
 "Jiri Slaby \(SUSE\)" <jirislaby@kernel.org>,
 David Francis <David.Francis@amd.com>, Aaron Liu <aaron.liu@amd.com>,
 Vinod Polimera <quic_vpolimer@quicinc.com>, linux-rockchip@lists.infradead.org,
 Fangzhi Zuo <jerry.zuo@amd.com>, Aurabindo Pillai <aurabindo.pillai@amd.com>,
 VMware Graphics Reviewers <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Dave Airlie <airlied@redhat.com>,
 linux-mips@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Biju Das <biju.das.jz@bp.renesas.com>,
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
 =?utf-8?B?TWHDrXJh?= Canal <mairacanal@riseup.net>,
 Luca Coelho <luciano.coelho@intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Likun Gao <Likun.Gao@amd.com>,
 Sam Ravnborg <sam@ravnborg.org>, Alain Volmat <alain.volmat@foss.st.com>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Deepak Rawat <drawat.floss@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Joel Stanley <joel@jms.id.au>, Philipp Zabel <p.zabel@pengutronix.de>,
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
 Xinhui" <Xinhui.Pan@amd.com>, Chia-I Wu <olvaffe@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Tian Tao <tiantao6@hisilicon.com>, Shawn Guo <shawnguo@kernel.org>,
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
 Russell King <linux@armlinux.org.uk>, Leo Li <sunpeng.li@amd.com>,
 Jiasheng Jiang <jiasheng@iscas.ac.cn>,
 Srinivasan Shanmugam <srinivasan.shanmugam@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, linux-tegra@vger.kernel.org,
 Marek =?utf-8?B?T2zFocOhaw==?= <marek.olsak@amd.com>,
 =?utf-8?Q?Joaqu=C3=ADn_Ignacio_Aramend=C3=ADa?= <samsagax@gmail.com>,
 Melissa Wen <mwen@igalia.com>, Hans de Goede <hdegoede@redhat.com>,
 linux-mediatek@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 David Tadokoro <davidbtadokoro@usp.br>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Orson Zhai <orsonzhai@gmail.com>, amd-gfx@lists.freedesktop.org,
 Jyri Sarha <jyri.sarha@iki.fi>, Yannick Fertre <yannick.fertre@foss.st.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Philippe Cornu <philippe.cornu@foss.st.com>, Daniel Vetter <daniel@ffwll.ch>,
 Wayne Lin <Wayne.Lin@amd.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Nirmoy Das <nirmoy.das@intel.com>, Lang Yu <Lang.Yu@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


--3iwy3q65ffdde3du
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 12, 2023 at 12:46:33PM +0200, Christian K=F6nig wrote:
> Am 12.07.23 um 11:46 schrieb Uwe Kleine-K=F6nig:
> > Hello,
> >=20
> > while I debugged an issue in the imx-lcdc driver I was constantly
> > irritated about struct drm_device pointer variables being named "dev"
> > because with that name I usually expect a struct device pointer.
> >=20
> > I think there is a big benefit when these are all renamed to "drm_dev".
> > I have no strong preference here though, so "drmdev" or "drm" are fine
> > for me, too. Let the bikesheding begin!
> >=20
> > Some statistics:
> >=20
> > $ git grep -ohE 'struct drm_device *\* *[^ (),;]*' v6.5-rc1 | sort | un=
iq -c | sort -n
> >        1 struct drm_device *adev_to_drm
> >        1 struct drm_device *drm_
> >        1 struct drm_device          *drm_dev
> >        1 struct drm_device        *drm_dev
> >        1 struct drm_device *pdev
> >        1 struct drm_device *rdev
> >        1 struct drm_device *vdev
> >        2 struct drm_device *dcss_drv_dev_to_drm
> >        2 struct drm_device **ddev
> >        2 struct drm_device *drm_dev_alloc
> >        2 struct drm_device *mock
> >        2 struct drm_device *p_ddev
> >        5 struct drm_device *device
> >        9 struct drm_device * dev
> >       25 struct drm_device *d
> >       95 struct drm_device *
> >      216 struct drm_device *ddev
> >      234 struct drm_device *drm_dev
> >      611 struct drm_device *drm
> >     4190 struct drm_device *dev
> >=20
> > This series starts with renaming struct drm_crtc::dev to drm_dev. If
> > it's not only me and others like the result of this effort it should be
> > followed up by adapting the other structs and the individual usages in
> > the different drivers.
> >=20
> > To make this series a bit easier handleable, I first added an alias for
> > drm_crtc::dev, then converted the drivers one after another and the last
> > patch drops the "dev" name. This has the advantage of being easier to
> > review, and if I should have missed an instance only the last patch must
> > be dropped/reverted. Also this series might conflict with other patches,
> > in this case the remaining patches can still go in (apart from the last
> > one of course). Maybe it also makes sense to delay applying the last
> > patch by one development cycle?
>=20
> When you automatically generate the patch (with cocci for example) I usua=
lly
> prefer a single patch instead.

Maybe I'm too stupid, but only parts of this patch were created by
coccinelle. I failed to convert code like

-       spin_lock_irq(&crtc->dev->event_lock);
+       spin_lock_irq(&crtc->drm_dev->event_lock);

Added Julia to Cc, maybe she has a hint?!

(Up to now it's only=20

@@
struct drm_crtc *crtc;
@@
-crtc->dev
+crtc->drm_dev

)

> Background is that this makes merge conflicts easier to handle and detect.

Really? Each file (apart from include/drm/drm_crtc.h) is only touched
once. So unless I'm missing something you don't get less or easier
conflicts by doing it all in a single patch. But you gain the freedom to
drop a patch for one driver without having to drop the rest with it. So
I still like the split version better, but I'm open to a more verbose
reasoning from your side.

> When you have multiple patches and a merge conflict because of some added
> lines using the old field the build breaks only on the last patch which
> removes the old field.

Then you can revert/drop the last patch without having to respin the
whole single patch and thus caring for still more conflicts that arise
until the new version is sent.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--3iwy3q65ffdde3du
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmSuiFwACgkQj4D7WH0S
/k6WQAf+LFgI9NExXKHizIxlAKcu5G8zO7fFx06qBcxLI5KrCwTfZWRX4JdMKpMo
5K/qeFXK6pOtoDJOth+E/cclh0HGZybUMKHNB2GJ5tQhGAf6erqEzGtJybTMfOWT
BAMc9FTGfs+HZ5lbSIhDHSNslCbQZEWuEJczrXoi2Cvj7pmoSjyVoCLeeI+4o3Yc
SwV3JLE35b4uCAXvLtLMIQGji+tHmW00SBwsa1+biZv+ois13g+seTg5JLw6b9PG
EnXcqpqEam0LIDyZCqB65ATzcuYLrBQls79+l8OuEG1R8dCWA6To5Jw9XipxWh53
vPHVg4DCzs8uC2Zxgb1PNd/lhcHymQ==
=FqFI
-----END PGP SIGNATURE-----

--3iwy3q65ffdde3du--
