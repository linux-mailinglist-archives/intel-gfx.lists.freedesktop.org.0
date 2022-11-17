Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645E62D05B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 02:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E8110E511;
	Thu, 17 Nov 2022 01:05:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E9E10E511
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 01:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668647099; x=1700183099;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=vClIjITum2RPR2TlDbFo+3hvx4LEa1PJ4s1oo5yZPGc=;
 b=AZIWP4oTqhRo1xF+pCUR9I4Xb3E9rMTKIB+CHpvQH/HTZsT37mFisLUl
 atOjELYjRGCnI9/17mQXSseMLXrajOTXE9kToEnThJscD2jpldbzs+AgF
 v5QQvcy7kik9uxYvm734t/jPu/9TbYg0fUvnDWtfvUFQrqk1yG2xY6yt1
 /Df6gYZtjFbDb18BDkzqMq81f1qiCB/ztOCoMI6AunLSQ1d4tXGED36zp
 E7OZVaeYv8kGD2QHJDluaLYrdydGeJDX3hKsdxa6D9KnFaAuzhA0xeq9b
 jtl5SPvHC8l1kB2hCmNziyY5IrE9uo7B7KJUEsCtF3WV6SV0tfzaTRFeg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="312730003"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="312730003"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 17:04:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="745299065"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="745299065"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 16 Nov 2022 17:04:52 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 17:04:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 17:04:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 17:04:52 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 17:04:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kWV8+2136ZM9lLCMsiVA7E+ZLRIbWCFxTUuDrfw5QWYT4P90Szbj1VyQKIcENlCo5bq8fVf3NILSNesHSYCrRhip4+2ky1cS6HAijBb2xBFbgGV/ETRZ2vL38gdCeKywR5deJHPUNaorZCegWjZJgNPWZM8Tv1ePoAEngUZlfrNFiZvOd8+GQKWQFnK1pN0mIaZjHzWQlDNsF6H29Nlqfw09c4rbrOECqo10BOlfnGagLzvwSaMehhzamoNshwXRKOoRaPnAH7sAFEbXA8NeOU303EQ1evG3eoraiM5o94AxsPC2km/wUEfMM6Ul4bC6JvtXYYiOBhOUoR7Ijumzuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JtwWhAtVzc+I7JFPr4GQ1JCgxssth8xd3qKx1Ug+rV0=;
 b=cTZW5Z0Z/xDvpqf6vAqCU9gTycZFC+313T3cNjsYzaKENoDekfWnslM9XP5MccPfUOUeapHk1NWVZfHu+KL4VO+Gd4ZyKReQSAgumEKe1AQ2167w0m2JbTlD5KHGhKoqgDhQahMOBlOfyWk0+Qwn7E5Owito0qEjksQhqgCRWMZ6EyKnM1xJdyBSzYhUJg5pExA7FO5fpZ9W+yikDrgpWnX8K9RNgbQ9qKwY9dnPRGl99fZxwntj8ZanxNxHV2zoTjfSEp7r4skUeBgFDsRrTYniHZ309h/UlTM0ODDtICtb+nBU81aSWbnznlARPyRnenCuZ8ctycb7jwRLtF9/zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH7PR11MB6378.namprd11.prod.outlook.com (2603:10b6:510:1fa::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Thu, 17 Nov
 2022 01:04:49 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.018; Thu, 17 Nov 2022
 01:04:49 +0000
Date: Wed, 16 Nov 2022 17:04:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y3WIrupq0x4bcQbP@mdroper-desk1.amr.corp.intel.com>
References: <20221116215040.713104-1-anusha.srivatsa@intel.com>
 <20221116215040.713104-2-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221116215040.713104-2-anusha.srivatsa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0371.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::16) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH7PR11MB6378:EE_
X-MS-Office365-Filtering-Correlation-Id: cae1d062-6986-478c-37ab-08dac837b9d1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XKRQQM78QRnLCcTx9CEExd1j+ArAXK1Ye91c1su52dotrpw/uKghyeDO6/esHouCq6t9Ce3TzYVl592tUDKKXvzsQj3icPfjqFPif9u28OEqY3LeDKdrQ8YWSUCUIAj+QJymoW29VbOtSvTx4qw39KGkCU0J3jBHtH8LwLjEzjdTCaBTeG7N9Su4iDS8OmJMnQ1i6C7f4AgBMWur5rDD+EjqtEMPOlPnaXQPDD/mCDKtlwriqsmsgVbb6FSjRRplL49jtLsE6f6c2/+uI4Ygdwhm/eSjd3oGU78zGNQzkuLRotr+tuYq4Cu6loHM6Hg+JJn3NsRtgEvjGupQC2AKRGyjtEWZPX2uYyTn605g4pDl1y+Kp+AkWCLtp0Cr5zJPMhAiky1G7c3hpUeKjeKhq4kOwHYlToCQVQStuu4yZUX10SVAAqmB6U60D5CxiW8CObmfpMtJWOuCF6ctP+EKuGnhY07y2P+j58/jIaKJBaW6f07PCGodiEEHD965EF4yxZnEQZsAkJKMH1gyRGWvftgohC8gKg54tZNc9Lg2G4S3rFsBtty7Ib6RG/rKLFy/tCm1sOovuoqTHS2HJGNJMORT1gNcxbTRBK1KB6v7MDyIadDdHAH84E3tRZ8ati4ZAukptjUft4RcGYjtLJd3rNj2chbO78p9OLVhmh4y/hRm10po7yg0OR9oIlBwHLNQriBnuprvroaIQs8HocfQHXx9dWIst2LutS/l9KQsCQUjwIHSTjmlR0j0r+qHgsKI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(366004)(136003)(39860400002)(346002)(451199015)(82960400001)(83380400001)(478600001)(38100700002)(6666004)(6636002)(86362001)(26005)(6512007)(4326008)(6506007)(2906002)(107886003)(66556008)(66574015)(6862004)(66476007)(5660300002)(6486002)(66946007)(8676002)(41300700001)(8936002)(316002)(186003)(17423001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?SzUBJh1Mf8Zdo3z6oMKEH3Gnj93RDY7XxxS04md0NONL0AyoVf7WiwhzFK?=
 =?iso-8859-1?Q?VE/ZpL5A3GQ5gqgavgx6Col6mD04apA+lXwnjrDZ93esN+kwiXr0J/F74b?=
 =?iso-8859-1?Q?8XdF7j+o9Yk+NQWJewTeUsIfB5SXQwfdz6lMOhjkolm6JsR2BzfB1/1MAp?=
 =?iso-8859-1?Q?dXQP3bPIfcATntpQLq3dqYCHxb6eYnokQk1W6HQNFHUvxlg9AdGyDue5sX?=
 =?iso-8859-1?Q?CWlpWcjbKDKh24C8MLmOe41RGcSZjq3KMkut40cBElkAiUispEfzdE7689?=
 =?iso-8859-1?Q?JrfZtu7MMRYJB1Xc9UUq4CwRVztYwL6lDRFLobhnnieCrdCzwlx+PXgvJf?=
 =?iso-8859-1?Q?SkZ4bOF7LwZhyk9ynX2a1Pm4dr+M2JjzceSzWzG6Ay7hAyRxG44kpUKNAO?=
 =?iso-8859-1?Q?nUHPtt+9Hr+5gKkoiVLMMZMIilDcHiRLWbk9gClqHP3WmcLExHz8Wa6B2S?=
 =?iso-8859-1?Q?RJafrzKs4D8UvYOgWoJZveu/WDujSQTLXb7su50dqKkBVL4bcuB+/ak5J7?=
 =?iso-8859-1?Q?ocpJa8X4LokBQXB04iPf+EUF3xOxi5hi4cnpmm5oR9dkdNZJNCNGUPkPwE?=
 =?iso-8859-1?Q?yWV6EZv27svK+rpt7A5miKMEhNPZXBxIoBwxRrzUD8hVHua1FL+Lk1NA5U?=
 =?iso-8859-1?Q?oVl5REW+HY1NP4NR2KNSk2WsAupRjvOtNO656107+VUmAETuJRbAW1cvfj?=
 =?iso-8859-1?Q?J6mzpk6PiqJydH9lyRG3s16kK94c35rvWB45/fa8dSx9PLmbiglrGKT6NK?=
 =?iso-8859-1?Q?X8rNJm4TwiykSZNdKSYrzdeJbgvdz4XPi6+bqiQ/HefgtHUrOQbVwJoBgB?=
 =?iso-8859-1?Q?2BFgf+XhhbbgcUP1ILcLgY+yCJ3k54DnG6aHErJ65Zl2eia7gpkyCYSfJf?=
 =?iso-8859-1?Q?f7ysAU7wy7CGlXpF7UOgotxtuyz3SIhFIqAk1MVhD20Hw60dHrhKULCmCo?=
 =?iso-8859-1?Q?9PTBbh0HkCHNAlkc4rBGR3bpvkirpJOG6FM8ZHMQl6bNLCQfUmV7Tm64Ci?=
 =?iso-8859-1?Q?fbxZ7+K/SdzH7e3H7xNl3OzKuGr6j9egwV2mbVMLM8fhAEw0/witvXMpwB?=
 =?iso-8859-1?Q?ifIEuZp92UhKkn39bN6bTIEMfzd966xQgDU/2dv/HwZuidcOcpNeHBViWJ?=
 =?iso-8859-1?Q?+0JZTNqafsiZn5vRFM451feIut/7ZSokaxBMKGiaE3mVVmZ7yHlhCLStAU?=
 =?iso-8859-1?Q?Xrj2ASXrzp3b2kXtVwKMpxsYha1YBRfJ4VTVe0ZEyLMOVVmuqPBe9QY/td?=
 =?iso-8859-1?Q?pZtDK0KcLSeWPoGr5fuR8+LFF3yY5L1tqE8sxuQ0Qt57pLmu+sVBGUGGBh?=
 =?iso-8859-1?Q?v/a6MQc0n6qiKG0dxqX92IbnORmnXa5P1WYq4zm2saTBz1FtTJHY8Mr11f?=
 =?iso-8859-1?Q?h/H4tYS7SmBOvTGhG6myumbba9Fk8lBB8CCBlqLdwCHgBiHHI9tLAWtN8s?=
 =?iso-8859-1?Q?PmEqCcovPLn4ooI5TFX1bZna27u0yOlc4piYn0Ea0n3D+W7zQMH0PYUP7I?=
 =?iso-8859-1?Q?uRYk8UI/AF+Ak5S1lSxPWlaokA08E6NYIip1o8gVSVxPNkp1smAtn/QCVK?=
 =?iso-8859-1?Q?Y9BciSJU8Mr/ibxgdA+vrsc9wDutI5BTD3/cK/K3NObPPh4GbjxdwA8C5Q?=
 =?iso-8859-1?Q?I6tuYPYhRYaJhI+vvGhri//DOPCR+TV8qtp42r0XXPWuBrOYJD39OEyw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cae1d062-6986-478c-37ab-08dac837b9d1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 01:04:49.4161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w6ix1C0GaveVkGlFSfk+ur3OL8xAhTjcmcTvjGhlr0P3KuuDGqfMCjGx76pKHmKmRV7SuHgLMLO7cHw+UrpzWZB4kthnbb0FCzP8RbMlWFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6378
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: intel-gfx@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 16, 2022 at 01:50:39PM -0800, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construct a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> Driver should not take some Pcode mailbox communication
> in the cdclk path for platforms that are Display version 14 and later.
> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> v4: Rebase
> - Move checks to be more consistent (Ville)
> - Add comments (Bala)
> v5:
> - Further small changes. Move checks around.
> - Make if-else better looking (Ville)
> 
> v6: MTl should not follow PUnit mailbox communication as the rest of
> gen11+ platforms.(Anusha)
> 
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 177 +++++++++++++++++----
>  1 file changed, 146 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 25d01271dc09..ddbe94aac293 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1727,37 +1727,77 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
> +						    const struct intel_cdclk_config *old_cdclk_config,
> +						    const struct intel_cdclk_config *new_cdclk_config,
> +						    struct intel_cdclk_config *mid_cdclk_config)
> +{
> +	u16 old_waveform, new_waveform, mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	drm_WARN_ON(&i915->drm, cdclk_pll_is_unknown(old_cdclk_config->vco));

We're going to trip this assertion easily during init with this
sequence:

  bxt_cdclk_init_hw
    -> bxt_sanitize_cdclk
      -> potentially set hw.vco = -1 at the end
    -> bxt_set_cdclk   (initial, non-atomic direct call)
      -> cdclk_compute_crawl_and_squash_midpoint (hw is 'old' param)
        -> ASSERT!

We only wind up checking for unknown PLL in _bxt_set_cdclk(), which gets
called after this function completes.

However having a warning like this would be good down in
intel_cdclk_can_crawl_and_squash() --- that's only called from atomic
check and by the time we start doing real atomic transactions, we'll
have already done a sanitization cdclk update to set the PLL to a known
value.  That's the point I overlooked in my comments on the previous
version of the series.


Matt

> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco == 0 || new_cdclk_config->vco == 0 ||
> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/*
> +	 * Populate the mid_cdclk_config accordingly.
> +	 * - If moving to a higher cdclk, the desired action is squashing.
> +	 * The mid cdclk config should have the new (squash) waveform.
> +	 * - If moving to a lower cdclk, the desired action is crawling.
> +	 * The mid cdclk config should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> @@ -1793,11 +1833,62 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
> +
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{
> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret = 0;
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	/*
> +	 * Inform power controller of upcoming frequency change.
> +	 * Display versions 14 and beyond do not follow the PUnit
> +	 * mailbox communication, skip
> +	 * this step.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		/* NOOP */;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	else
> +		/*
> +		 * BSpec requires us to wait up to 150usec, but that leads to
> +		 * timeouts; the 2ms used here is based on experiment.
> +		 */
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> +					      0x80000000, 150, 2);
> +
> +	if (ret) {
> +		drm_err(&dev_priv->drm,
> +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> +			ret, cdclk);
> +		return;
> +	}
> +
> +	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv->display.cdclk.hw,
> +						    cdclk_config, &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		/*
> +		 * NOOP - No Pcode communication needed for
> +		 * Display versions 14 and beyond
> +		 */;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				      cdclk_config->voltage_level);
> -	} else {
> +	else
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
>  		 * experiment.
> @@ -1808,7 +1899,6 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      cdclk_config->voltage_level,
>  					      150, 2);
> -	}
>  
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
> @@ -1965,6 +2055,26 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)
> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2771,9 +2881,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawling and squashing\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
