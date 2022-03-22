Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E4E34E5578
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:40:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F92E10E718;
	Wed, 23 Mar 2022 15:40:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail1.bemta33.messagelabs.com (mail1.bemta33.messagelabs.com
 [67.219.247.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E735010E6DC
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 13:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1647957346; i=@lenovo.com;
 bh=1XFwYKITOAcxqnTqRbDuVOXLFw5LLRjDPEGiXMC4Fr4=;
 h=Message-ID:Date:MIME-Version:Subject:To:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=TYy3PINiLWoxL3f+etX89pkTI9iLRS3u7UCskioQa5NjjjjaTdi8WbYDuUM7EwqKl
 RiWPSC06mkHuwPW2F6eLKk8sOii2RBnCoW1XAjDQXFFck6wjwjWO7n7FYi1/g+v6QN
 4j+0oMH8ww4sbckIRf35k7WzNYskfbnId9hTDmdVg2iCWBpStS+A0EaUK5/ah37ftO
 tVoKOOTxr7wbbzR+KAZ5KTta3eDUMZ1BnVz6WN3DtcrBrjB4nh4Tm7oz5tMu4bHhsd
 9kEukMZZGSf0CmXlF6jURpDbJY182KtpfFWeb8u5gI8/p9CsKxdW3jhenv922fTmkg
 Zx20RMMltO3QQ==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEJsWRWlGSWpSXmKPExsWSoS+lpZt01TL
 J4PJWaYvZEzYzWbR32TgweSze85LJ4373caYApijWzLyk/IoE1ow3VxYyFcwSq3h/8AJjA2OT
 UBcjFwejwFJmiWOXd7BAOItYJZqeHWLvYuQEcjqYJB4f8AdJCAksYpLYsvMoO4Szn0ni4fRXj
 CCOhMBxRonuQ+uYIDKdjBI/Xp1igXAmMUnM2/OYGcJ5wiixcuF9qMwjRomurZMYQdbwCthKPL
 9wE2wli4CqxIJPzUwQcUGJkzOfsIDYogLhEt3797OC2MICThKT32wCq2EWEJe49WQ+mC0iEC3
 RsvAWWI0QUM2KE1PA4mwC2hJbtvxiA7E5BZwlTky7ygzRqynRuv03O4QtL7H97RxmiF5liV/9
 54FsDqDnFCRWf5UHCUsIJEg0TznKCGFLSly7eYEdwpaVOHp2DguE7Stx5fx9ZghbV2LP/uWsE
 HaOxOXrE9kgbDmJU73nmCBseYmdG2+zTGDUmYXk41lIPpuF5NJZSC5dwMiyitE6qSgzPaMkNz
 EzR9fQwEDX0NBE18xS18jYTC+xSjdRr7RYNzWxuETXSC+xvFgvtbhYr7gyNzknRS8vtWQTIzD
 5pBS5vtnB+HzFT71DjJIcTEqivHuPWCYJ8SXlp1RmJBZnxBeV5qQWH2KU4eBQkuCdcwYoJ1iU
 mp5akZaZA0yEMGkJDh4lEd4Tp4HSvMUFibnFmekQqVOMuhxXtu3dyyzEkpeflyolzqtyBahIA
 KQoozQPbgQsKV9ilJUS5mVkYGAQ4ilILcrNLEGVf8UozsGoJMx7HWQKT2ZeCdymV0BHMAEdoc
 9qBnJESSJCSqqBad/GFuP/3FIhGut+GjulpKxVtXzZMauxcK5OUoJn0mRZv4fvQ+abTLr/KlJ
 2en/7/CWn3BPeHzxuHH/0/PTQqQ8cN63mNpYy1y/kn9tSxrjg6Ol/+z8z3PucuIlZ0al04r/J
 H3pUSn5ffHxv3WT266vmuj1VMjHcfqBze63ph3nz30w8uc0h18vyLavLN/frS6S8LXslOw0zl
 wvrrWb9IfFTYu+9FvOZj5f/DZDqvmwsNEfo6uYtrA954jR2sd9ckvjYwNFmp8Qv98i9xwpf2k
 iYHvd5syBMep7FzT1LC81ddnt/nSTguPSs55KbrI/vcOidVuh38WJnyryxdPaL1e9471v/6H3
 29nn6Of95z1qUWIozEg21mIuKEwGod5wcRQQAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-15.tower-635.messagelabs.com!1647957344!2901!1
X-Originating-IP: [104.47.26.42]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.85.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14038 invoked from network); 22 Mar 2022 13:55:46 -0000
Received: from mail-psaapc01lp2042.outbound.protection.outlook.com (HELO
 APC01-PSA-obe.outbound.protection.outlook.com) (104.47.26.42)
 by server-15.tower-635.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 22 Mar 2022 13:55:46 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RIOPqwu23VYb34Yw3507KO/2PeCzmkPlMntYqXyBawLTDCajxelqTq4pvLgsJWn051VJ9ie/9aLsrMbv9jP7L5CAYJrnWUtpANyjjLxiWz+r8VLIxqlHq9aFFmCfxyAXABnSaQohC5k/wRaa61AaifUOttDfjMxUoyM6PDHrj9bWBmZrx2lKmYENyQyaAkcSw5U2ZbkRjxFCqvRo7c9VG3T1t6VaHI/sxT9JjsD3M+/RwR0rsC6Y1vCGA4DlnbsOQk61Xr5Ok2Velb0ZC7Vh9X08zDxOhlUdH32cPp7StR9kFXn271K09mgL+NaRahNl2GNc2z9g0PvYI0pP0fXOgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XFwYKITOAcxqnTqRbDuVOXLFw5LLRjDPEGiXMC4Fr4=;
 b=W8Xzn8vmx/M2FDjh+Qdzkfm/NkrYTn4N2SUUrrcjc1DX34Md6p+pOQTOxahEkzarbwtgj5jcqn1eaJagLySwf7mrvxHByu4lhpj7ni/jeiOdVJAw3mZGJhkLoINL/FRC2dgQvnojBFFyz2vJdGoRxFcyt3iXIsqfGl3Jk/4OjCMjtB8SFhfJv+6OjsFYqTbCcoOWTurgb5WLizT0F47C6CymOiaToiVBTOlpDzLSJhsPxc2S0gd+UsehN3Akx24Mg/4B6AYkNZ2t7GsdfpGM8+ytj8obn/KzCmFIKGvNOISTDoj7w/J0cZs8Cya9cvn9mJ3DpMsIpAqaBvzwj/4Z7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.7) smtp.rcpttodomain=intel.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR01CA0118.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::22) by TY2PR03MB4589.apcprd03.prod.outlook.com
 (2603:1096:404:f3::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 22 Mar
 2022 13:55:43 +0000
Received: from HK2APC01FT130.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:40:cafe::35) by SG2PR01CA0118.outlook.office365.com
 (2603:1096:4:40::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.17 via Frontend
 Transport; Tue, 22 Mar 2022 13:55:43 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.7) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.7 as permitted sender)
Received: from mail.lenovo.com (104.232.225.7) by
 HK2APC01FT130.mail.protection.outlook.com (10.152.248.197) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5081.14 via Frontend Transport; Tue, 22 Mar 2022 13:55:41 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Tue, 22 Mar
 2022 09:55:39 -0400
Received: from [10.46.54.105] (10.46.54.105) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Tue, 22 Mar
 2022 09:55:38 -0400
Message-ID: <9e70bec0-66b6-9ac7-1b5d-9d8679700523@lenovo.com>
Date: Tue, 22 Mar 2022 09:55:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <20220321104904.12425-1-stanislav.lisovskiy@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.46.54.105]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f4f97745-9cd5-4509-03db-08da0c0ba769
X-MS-TrafficTypeDiagnostic: TY2PR03MB4589:EE_
X-Microsoft-Antispam-PRVS: <TY2PR03MB45896653D88E0BE8F811EF76C5179@TY2PR03MB4589.apcprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4yLixZm+OFe+rrEbO8AHZRBUhfaTx8SzhVGw6xUz+9DZuam33knWew5neMMySV4STVz0CHOtH4s7VhcihMcpP0XkvJ7dxfVEu7JVD94UhJQTtkd3JtgceKAqcFfdLfmysckQtlscZFeU77GlgRLfASokmGS14DNWP8GpKkp6NSJ0GXKiRz+xbH2rAAr/EHJ1d1DgBpnXBKlSydR1Ca7UTKkO6gTRijg/WD/NrxgcEywhSSKwZNU1w+buPPOc+K0kJnVv4nQ/Vw+I3WzVxN5rTPNiqJOssZ+8fJgk/4XIsPdBfIxqCMJv18P+/1vpUmZPBwN9SPTkEn7RtWNasRBAGoy8lstFhvtFIYpT4PWM9EkqXGr92AP+cnHxitn95tabrs0S4OhCz0Sf1w1rHnjNfoBRgRI+cDDS6me+zQuynmhmSijK+ybjVbeqpk7f3jM9ZTHdR+ru9bDJY3cPH/hkY8z7cTUIjyReCJZ3IBUUnBciIHaPA17a3nAEjk+ViaVAMagxsBY8zzBmiuOC4J+UelpGOXKaAw/D46+FMOjnAHkxYrg1Vy2slNtpiUxJJRXiAXoKj4S1YJqIcEH45xJM5dbw2GNpaU7yxxrI8qC5iuiWWSA7VdTWHG/OsS7KsyZLYI0kHUIbSxA1SJKRRN9V5ruS4lfi4df6qWwewdfoy+UI2rGJGteU8+g5LMPnunUI7cMZDzvxspTA4L5rgeGBBVbdRn1N4hrbA4DI3x5zHj9GSO2iJnPXKO9bN0EbrBV8A7Ahh2dl8r/sFKbbK6uU5w==
X-Forefront-Antispam-Report: CIP:104.232.225.7; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(8936002)(83380400001)(508600001)(53546011)(26005)(16526019)(186003)(426003)(336012)(6666004)(2616005)(356005)(81166007)(40460700003)(5660300002)(82310400004)(36860700001)(82960400001)(47076005)(36756003)(86362001)(110136005)(2906002)(36906005)(31696002)(316002)(16576012)(31686004)(70206006)(70586007)(8676002)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2022 13:55:41.3728 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f4f97745-9cd5-4509-03db-08da0c0ba769
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.7];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT130.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR03MB4589
X-Mailman-Approved-At: Wed, 23 Mar 2022 15:40:19 +0000
Subject: Re: [Intel-gfx] drm/i915/adl_p: Increase CDCLK by 15% if PSR2 is
 used
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

Hi,

On 3/21/22 06:49, Stanislav Lisovskiy wrote:
> We are currently getting FIFO underruns, in particular
> when PSR2 is enabled. There seem to be no existing workaround
> or patches, which can fix that issue(were expecting some recent
> selective fetch update and DBuf bw/SAGV fixes to help,
> which unfortunately didn't).
> Current idea is that it looks like for some reason the
> DBuf prefill time isn't enough once we exit PSR2, despite its
> theoretically correct.
> So bump it up a bit by 15%(minimum experimental amount required
> to get it working), if PSR2 is enabled.
> For PSR1 there is no need in this hack, so we limit it only
> to PSR2 and Alderlake.
> 
> v2: - Added comment(Jose Souza)
>     - Fixed 15% calculation(Jose Souza)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 26 ++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 8888fda8b701..92d57869983a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2325,6 +2325,32 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
>  					dev_priv->max_cdclk_freq));
>  	}
>  
> +
> +	/*
> +	 * HACK.  We are getting FIFO underruns, in particular
> +	 * when PSR2 is enabled. There seem to be no existing workaround
> +	 * or patches as of now.
> +	 * Current idea is that it looks like for some reason the
> +	 * DBuf prefill time isn't enough once we exit PSR2, despite its
> +	 * theoretically correct.
> +	 * So bump it up a bit by 15%(minimum experimental amount required
> +	 * to get it working), if PSR2 is enabled.
> +	 * For PSR1 there is no need in this hack, so we limit it only
> +	 * to PSR2 and Alderlake.
> +	 */
> +	if (IS_ALDERLAKE_P(dev_priv)) {
> +		struct intel_encoder *encoder;
> +
> +		for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
> +			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> +
> +			if (intel_dp->psr.psr2_enabled) {
> +				min_cdclk = DIV_ROUND_UP(min_cdclk * 115, 100);
> +				break;
> +			}
> +		}
> +	}
> +
>  	if (min_cdclk > dev_priv->max_cdclk_freq) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",

Not sure if this will get thru as I'm not subscribed to this list but I
tested the patch below on my X1 Yoga 7 (Intel ADL-P with Step C0
silicon) and it didn't fix some screen tearing issues I'm seeing there
that are PSR2 related

I also tried increasing the timeout to *300 to see if that made any
difference and it didn't.

Let me know if there's anything else I can try out - I have a couple of
ADL-P machines I can test against and both are seeing screen tearing

Thanks
Mark
