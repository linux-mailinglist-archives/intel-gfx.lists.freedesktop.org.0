Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9A5679C8E
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 257EB10E697;
	Tue, 24 Jan 2023 14:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D6C4897FD;
 Tue, 24 Jan 2023 14:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571916; x=1706107916;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RA+DKNp+d4oq6n7db0SeDuyhdEEeXCsrsOwjUflRiNM=;
 b=ZPPJG6CJudb4CkPxqndXhi0DFBgAzUUR8EFkl6+VJSzIeOfNAuR0rLlg
 jWkLGWzK50QRyT+xgDGz0LocZPG8H8o7ecJ6JYvcXib6AeSX7gVAJDhOr
 e3kmoM3la/Vb3BrQROW2H9SV2MwhnE5PrZDh/tLPJKHA5fV/RhzOcI6qr
 ofEOIbNVKCJ1/aFJJ9ZDu9Yi74u6arp7ET/ys1Q4X6KA8eHTWnjSHNCsQ
 yYACx0bEv+WvJuuvUz77mmmzps4zRJgWrGdhW4Cb+XHXecNWg/Z2ZdB5e
 oWqmb+Zg2eysB83T3c2gKqAcIiQWFHRg+VZn7sG4a2TND4hfiSn8m8/7X A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="388653252"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="388653252"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:51:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="770338025"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="770338025"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.57.197])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:51:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: kernel test robot <lkp@intel.com>, dri-devel@lists.freedesktop.org
In-Reply-To: <202301242049.eKzx7RzZ-lkp@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230124094154.2282778-3-jani.nikula@intel.com>
 <202301242049.eKzx7RzZ-lkp@intel.com>
Date: Tue, 24 Jan 2023 16:51:45 +0200
Message-ID: <87h6wg6l4u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/connector: move ELD and video/audio
 latencies to display info
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
Cc: Pan@freedesktop.org, Emma Anholt <emma@anholt.net>,
 amd-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Maxime Ripard <mripard@kernel.org>,
 Inki Dae <inki.dae@samsung.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-mediatek@lists.infradead.org, oe-kbuild-all@lists.linux.dev,
 Neil Armstrong <neil.armstrong@linaro.org>, Xinhui <Xinhui.Pan@amd.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Robert Foss <robert.foss@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 Christian =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Obviously, I need to still work on this. *looks for brown paper bag*

On Tue, 24 Jan 2023, kernel test robot <lkp@intel.com> wrote:
> Hi Jani,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on drm-tip/drm-tip]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Jani-Nikula/drm-connector-move-HDR-sink-metadata-to-display-info/20230124-174322
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> patch link:    https://lore.kernel.org/r/20230124094154.2282778-3-jani.nikula%40intel.com
> patch subject: [Intel-gfx] [PATCH 3/3] drm/connector: move ELD and video/audio latencies to display info
> config: arm-defconfig (https://download.01.org/0day-ci/archive/20230124/202301242049.eKzx7RzZ-lkp@intel.com/config)
> compiler: arm-linux-gnueabi-gcc (GCC) 12.1.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/intel-lab-lkp/linux/commit/1e92b5478cfc1b0df66153652111117e9548b0d5
>         git remote add linux-review https://github.com/intel-lab-lkp/linux
>         git fetch --no-tags linux-review Jani-Nikula/drm-connector-move-HDR-sink-metadata-to-display-info/20230124-174322
>         git checkout 1e92b5478cfc1b0df66153652111117e9548b0d5
>         # save the config file
>         mkdir build_dir && cp config build_dir/.config
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm olddefconfig
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash drivers/gpu/
>
> If you fix the issue, kindly add following tag where applicable
> | Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    drivers/gpu/drm/tegra/hdmi.c: In function 'tegra_hdmi_write_eld':
>>> drivers/gpu/drm/tegra/hdmi.c:620:60: error: 'struct drm_connector' has no member named 'eld'
>      620 |         size_t length = drm_eld_size(hdmi->output.connector.eld), i;
>          |                                                            ^
>    drivers/gpu/drm/tegra/hdmi.c:624:72: error: 'struct drm_connector' has no member named 'eld'
>      624 |                 tegra_hdmi_writel(hdmi, i << 8 | hdmi->output.connector.eld[i],
>          |                                                                        ^
> --
>    drivers/gpu/drm/tegra/sor.c: In function 'tegra_sor_write_eld':
>>> drivers/gpu/drm/tegra/sor.c:1951:59: error: 'struct drm_connector' has no member named 'eld'
>     1951 |         size_t length = drm_eld_size(sor->output.connector.eld), i;
>          |                                                           ^
>    drivers/gpu/drm/tegra/sor.c:1954:69: error: 'struct drm_connector' has no member named 'eld'
>     1954 |                 tegra_sor_writel(sor, i << 8 | sor->output.connector.eld[i],
>          |                                                                     ^
>
>
> vim +620 drivers/gpu/drm/tegra/hdmi.c
>
> edec4af4c3d6d2 Thierry Reding 2012-11-15  617  
> 5234549b93aa2a Thierry Reding 2015-08-07  618  static void tegra_hdmi_write_eld(struct tegra_hdmi *hdmi)
> 5234549b93aa2a Thierry Reding 2015-08-07  619  {
> 5234549b93aa2a Thierry Reding 2015-08-07 @620  	size_t length = drm_eld_size(hdmi->output.connector.eld), i;
> 5234549b93aa2a Thierry Reding 2015-08-07  621  	u32 value;
> edec4af4c3d6d2 Thierry Reding 2012-11-15  622  
> 5234549b93aa2a Thierry Reding 2015-08-07  623  	for (i = 0; i < length; i++)
> 5234549b93aa2a Thierry Reding 2015-08-07  624  		tegra_hdmi_writel(hdmi, i << 8 | hdmi->output.connector.eld[i],
> 5234549b93aa2a Thierry Reding 2015-08-07  625  				  HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR);
> edec4af4c3d6d2 Thierry Reding 2012-11-15  626  
> 5234549b93aa2a Thierry Reding 2015-08-07  627  	/*
> 5234549b93aa2a Thierry Reding 2015-08-07  628  	 * The HDA codec will always report an ELD buffer size of 96 bytes and
> 5234549b93aa2a Thierry Reding 2015-08-07  629  	 * the HDA codec driver will check that each byte read from the buffer
> 5234549b93aa2a Thierry Reding 2015-08-07  630  	 * is valid. Therefore every byte must be written, even if no 96 bytes
> 5234549b93aa2a Thierry Reding 2015-08-07  631  	 * were parsed from EDID.
> 5234549b93aa2a Thierry Reding 2015-08-07  632  	 */
> 5234549b93aa2a Thierry Reding 2015-08-07  633  	for (i = length; i < HDMI_ELD_BUFFER_SIZE; i++)
> 5234549b93aa2a Thierry Reding 2015-08-07  634  		tegra_hdmi_writel(hdmi, i << 8 | 0,
> 5234549b93aa2a Thierry Reding 2015-08-07  635  				  HDMI_NV_PDISP_SOR_AUDIO_HDA_ELD_BUFWR);
> 5234549b93aa2a Thierry Reding 2015-08-07  636  
> 5234549b93aa2a Thierry Reding 2015-08-07  637  	value = SOR_AUDIO_HDA_PRESENSE_VALID | SOR_AUDIO_HDA_PRESENSE_PRESENT;
> 5234549b93aa2a Thierry Reding 2015-08-07  638  	tegra_hdmi_writel(hdmi, value, HDMI_NV_PDISP_SOR_AUDIO_HDA_PRESENSE);
> edec4af4c3d6d2 Thierry Reding 2012-11-15  639  }
> edec4af4c3d6d2 Thierry Reding 2012-11-15  640  

-- 
Jani Nikula, Intel Open Source Graphics Center
