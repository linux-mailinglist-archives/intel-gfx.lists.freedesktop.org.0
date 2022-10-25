Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA2160D2AE
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 19:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E2E10E3E4;
	Tue, 25 Oct 2022 17:44:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE0610E3E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 17:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666719840; x=1698255840;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=IGq0/oOYdIUK1Kas48hu5TRUPRRzalYO5HsK4MbgA80=;
 b=bwJXpn+yC4HwB9aH/A5NDIlkhb9QZCTnbQW4v/RzjMuup83AzqTLv8rS
 ZENaPuN3e8ugJ7kAdNM8Qhce4j6B5RCWF0WViU9EZSTc+ZG1+f5TBOFio
 vRDclq9VPVBFdqXKPeocdEj2qK0yo4hLoN689hAYewWjmkusVKXhoKNNp
 sp6Dso9jcirC8nsR8egULEuWsYg/jXOwVeYpLv0rVwZ14zYXxNzSdBCss
 esq1RCjwpfBrzRuq9T/E/oi8MHMu0syLzo299vdx26d0b3I90/vPg9flT
 /55uVymOTpzm0Epfof4XsYuWNUVzoevnXy8s2A9vbNpoJdo4XwiJ9WzVR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394060003"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="394060003"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:44:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695051463"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="695051463"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 25 Oct 2022 10:43:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:43:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:43:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 25 Oct 2022 10:43:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 25 Oct 2022 10:43:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bBgO986YlGWggEb3QgRVNj7GfegBlQQs12xd7TCMFLkxILvHZ5elzWvgTPB1XvzWac6r2ENWdvXuB+8w5jc0G0C08YRTSsP/4XZqx9z/gkxDZnULk/8pAcAC7UVl6mx1b978PhFWXUwi+AZzmSNW6IayLHTEL5mFm2jPc8DLQTj43+jW8+stqsREO9+3hb/cIHZbTEyPjp3vfpqi1N5GO69lGWlB4EhSrhas6CIAbOWP9AEn9/+xz6r9pDVyPpZqc9wOhs3OYSB3ZXise9cKZLXkYxjOpDidaSIjSClHbZOM7rZlkhJr2tT0KOtpQFYwjahgTLkfe4Nguaappqk6jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z1VihPRlJJmM9Uz0DQyNvrf7HYabIilErd7LgGVZfEY=;
 b=OibEM1PuA8uCQfI34Io2f1NjV6RZmPBECAb7XHsLmWo/mNzMXtMpPGNTpwrxnt+j1nPxJI3LmT4JHK6WQY+kVVuEHzMk2zKOD5EX0JZ86PH+AXX+Lh41a7cfsJ9WuNHIGTVIZ6GL5Hxghlvjfpn0cePXj48xWkM7LqoKr6hDvYvRVXaYL9CCfPQrc4rycW46owQ8sZLGKnpzZ4ihxvxiKfyC2BaeuzNvucRgQ1CooznisyB8V+/m+LQ7WllWK867LCgsedQ+EU/vm3nzjUPBEhGeJffrSFKDbtGArlyu+iqub8cdPCUgoSSIoUwIid9XI/SJ9dxPddFtX/EBUQhMPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.26; Tue, 25 Oct 2022 17:43:52 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5746.021; Tue, 25 Oct 2022
 17:43:52 +0000
Date: Tue, 25 Oct 2022 23:13:42 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1ggTmmxLgS0Ux8d@bala-ubuntu>
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
 <20221021213948.516041-4-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021213948.516041-4-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN2PR01CA0070.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::15) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH8PR11MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f487e49-9665-43d2-2fcb-08dab6b07b00
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oIGizbDq8DELPFGrGC2LStFYd5UUOK9/MOWmZJb6RM7GZhfpQJvb2Xrr16k0uQTsAqgzwUvGdqe0kl2UsnRQPx4PfYpv2Xesbg0kX6H8v1AsEu2LLS15pjOO7QMcziWJlbITl5tdN3GEKaOy7IRdkDWpGpAS/RWuEylzaSaq3Tlcd1w1HxV5Jl01wXoMiYfpvdmFzHDBb9jdFg0JHu2itPZ70U4Emx8CLHPgGSVg4vyOerGalslYdDiEuPX2+fUI+D5hVF1sBoFcMQg3A891FWj/d3UcljgdrYTdBYQKBXOTqSdTEdq07GPtqMcrAjgFlH9/keJ4ODZwZ7PmVhPVB/kTNEg+IOeVpQzMrKYeqCS9R6xNm34mtw/e0OQ+xiHMXvQEVywXwdFKJ9uSLuKHv8Jum2pz4jjbmxNRBaKo8ldMh3hbgml0LH+RjUekVc350PmgLKgFQ2XZt39SYd5cXGmsdmVBtgsprCldg+8nIsXKSe2Eb05AO718Oi347Lv6lbJJ2LKWp+oNQHjnCMnw1RNQ6RswT5a19EPDB9q0+03VPnIe/3Uv3XeWlBONoq4X7MBmsyG2PbJkTg54hoyPulCi0ATcVnDas/DvRQezYV3UxGwDiSDPaO9isiei6DlEbqLuzXuAEd8CejpYOevQiRuhzQI1VZTn8ws91qos5AE37+ZtWoShhhWx75qSPx1kNgnzuU0ibMN6I/RFpPIhgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199015)(54906003)(2906002)(5660300002)(8936002)(8676002)(41300700001)(4326008)(66556008)(86362001)(26005)(66946007)(316002)(53546011)(6512007)(9686003)(66476007)(44832011)(6506007)(82960400001)(66574015)(38100700002)(33716001)(83380400001)(186003)(478600001)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW05UU5US1ZsRVlZbnRxU01hOU5Bc0wxYjFFc05BS3dyanRQdGZhZE1sTHN3?=
 =?utf-8?B?UUhRNDdHLzNxQmJwcVo4UGhoWm5xMVkrazhKMVRGa3QxY1l0VjNMOFlzb3Zu?=
 =?utf-8?B?eERjWklFd1llKy94NFNsL280Mk5YWmd5WEtoMnUyNGtvMFhmaVg5STI2eHVv?=
 =?utf-8?B?UUpKVG5UTVJ1bUozU1Q5Y1dOSkFvODlNTGVPTHFrU2E1WjJhTjVUemdSank1?=
 =?utf-8?B?am1qYnRCOHZ3QUtRM2pxWjBZUGk0U0p0cDc2RUQ0ZE1Uem55QmxWaVpGcm9Y?=
 =?utf-8?B?TndjMm5vMGM5bXEya3FkT0d3MFRFRzlYcEQ0YUxUQXZPTkFDT2FRRUxRS1F0?=
 =?utf-8?B?aURQVVhLSlBSc2Q0enJ5dE90KzUwVmNJVjdGRC9vek5CMWxpeXgzYjdVSjla?=
 =?utf-8?B?VkpwL1N6elYvVzNHTlFDZk11RENsY2daaXpGUzM2NXdXaVRXR0ZwbkdRNXV6?=
 =?utf-8?B?UzEvUUFyWE5mSE1FbjY0ZUZhZjUraWR3bWhxelVVTVl4SDhReFp6T1prcVZq?=
 =?utf-8?B?UUVRRFlhK0Rsd3JhR0MvMm0yK2tKQ0ZpdFdHbXg3K2ZTRXhOWFdoNEJFZCtR?=
 =?utf-8?B?S2JPaGNLQjd3enBUWEhKS3dUUnFnSGJFV1FYSXdBbm0waDBDL3J1empVbTlK?=
 =?utf-8?B?RGkzblNDOUFEbEptTU95VHUrVFhPR1RFTEFMdkJBU2xRRS9BM0tYaTdOSEZs?=
 =?utf-8?B?MUFmODRmbVJ0YXZQcGNaZVR4dGZMZFNNRllOMVg4ZkFNWEU0d2xCVENXVlhP?=
 =?utf-8?B?ZnNaUitaRkdSZHNqSU5SWGFXWnZwT1g3OG5IWVlSVStuQTNTMzlhUDZBMEVJ?=
 =?utf-8?B?YXM1dUlzd2h5YzlwRENRTlMyeFcxSkducGdHa1JkQWdqTVZRbC93M05WNzBr?=
 =?utf-8?B?NjdTcTdLTkdINlJZeHJYR21HdDBpeXBRMUJTTjhTa0ZOMGxEcTZxazZEU2lq?=
 =?utf-8?B?S0RvTVMrQUNMTWJIY3Z1QkpveVM5Z0xQUnppQmFNSS9PekcyczBVc2ExaEox?=
 =?utf-8?B?a2xiTGJWd0IxNDQ0bndQKzR0NWlzN2c3Ti9SaFZydSs2M01PN2dBVVgvMFhH?=
 =?utf-8?B?MldaL3ZzYUhIcjJ2T3QrOFN2V1VLUzhpSW8vNE82dFpNTDZaTmhuUk1qZDRa?=
 =?utf-8?B?OURjUndzQktuK1M2UTl3bkVFTm1Dc1duRmVzNGQ0MjFZOUJmYkp2VVpSYWV5?=
 =?utf-8?B?bzMvNUh5UWgyV1pramltc0tWbURyb2hERDB1anNkVmc4amZvNmovZWVTSjNx?=
 =?utf-8?B?TlA0OGtuZ2ZTamRSRFpHNURzV2YrdFVyVjIyeXdUUHFqYm9XNGN0ZEZRSDRX?=
 =?utf-8?B?NUVaM1ltVjBWeE1GNXY4OHVuTzJEWDN0SDlvekdjV2lCa2dJd0Z1YVh1aW9k?=
 =?utf-8?B?UUFZeUxoVFJWTXdmQzd3VFdDOCswYmQvbXpPa0VVVVFsWXlHSHBGeVY1Vnk2?=
 =?utf-8?B?NHVYcjV1MlAvOHN1cDNPMGZkUmxqM0ZPaWViOXo1aXVxek1kOUxTMkNmNzBH?=
 =?utf-8?B?SnBHd1VtRkVaVVZBYTBTMDJPemxKTFpWV050MEV5SG5Rd3dvd2psL1VPYkZB?=
 =?utf-8?B?S3g5RFE4ek1QVFlPSU0rK29xeFo3MkdsSjdqTk5HUFByOUd1djZ6SXM1Q0wr?=
 =?utf-8?B?Wjk3bE4waERBamxrZ0RRaENkT2QwNWRkejBGWjdKNzFEaE9RT1Y3eWYwNDBG?=
 =?utf-8?B?T3Jjb25BdXU3TDVuOXhNbWRGVDRueG5WYmI2MHdKRGtNSHZVTlpqYmNObTha?=
 =?utf-8?B?eWJSWXpybWVhd3ZuZCtNUDZ3czNMN1p4WktSVlg1NU1BemRwWFJQNnZnY1Ay?=
 =?utf-8?B?UDZLS2Z2NDZDVmcxeURkaWozUytGMjkxRzV4SXNyODE5Y0FncGFRcm9abjBS?=
 =?utf-8?B?QUpHa0ZweE5WWFQ0aUVWOG9PcU94amhPOEY0ZjZpb2ZtRjN5YlhERHZJU0or?=
 =?utf-8?B?bE9yaTRxVXFwUUVSb1dsb1AxVWNMVStuRWZHRldHWE1IamxkTHZtd3hMWnNx?=
 =?utf-8?B?N2lWanhBRWIrTU5XK1NUN3NPcmVxaG40SjRNWWdmTXl1ZDAwdTZjZ1hWYS9o?=
 =?utf-8?B?L0Z2V082TC9Sb2VodEJEZlNkaG50dm9PamhIckNnVmFJYTlaVFE0N1lzOGgy?=
 =?utf-8?B?cncxRHc1NzdTTnBnRjl4Yyt5YXRsbloyK2grQ296N2pIemM5YjhlM1FucE9W?=
 =?utf-8?Q?GoMuTagK/S67pLCc2uW6MYM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f487e49-9665-43d2-2fcb-08dab6b07b00
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 17:43:52.4205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /7CRxRWD0wIbfcr3/XZRlPFzLDA5lpwYJjMOnZ7Z3JXcW0koSi+FLgP9Y88IHnDdsQ7jwbxEri/3gKI5oSGzhXNzTYZsjcSkyT9J6XdWYaUVDO4WmUgL7RZvaYJt1etA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/display: Move chunks of code
 out of bxt_set_cdclk()
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

On 21.10.2022 14:39, Anusha Srivatsa wrote:
> No functional change. Moving segments out to simplify
> bxt_set_cdlck()
> 
> v2: s/bxt_cdclk_pll/bxt_cdclk_pll_update (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 40 ++++++++++++++--------
>  1 file changed, 25 insertions(+), 15 deletions(-)

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 45babbc6290f..3893779e0c23 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1684,6 +1684,27 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>  	return 0xffff;
>  }
>  
> +static void icl_cdclk_pll_update(struct drm_i915_private *i915, int vco)
> +{
> +	if (i915->display.cdclk.hw.vco != 0 &&
> +	    i915->display.cdclk.hw.vco != vco)
> +		icl_cdclk_pll_disable(i915);
> +
> +	if (i915->display.cdclk.hw.vco != vco)
> +		icl_cdclk_pll_enable(i915, vco);
> +}
> +
> +static void bxt_cdclk_pll_update(struct drm_i915_private *i915, int vco)
> +{
> +	if (i915->display.cdclk.hw.vco != 0 &&
> +	    i915->display.cdclk.hw.vco != vco)
> +		bxt_de_pll_disable(i915);
> +
> +	if (i915->display.cdclk.hw.vco != vco)
> +		bxt_de_pll_enable(i915, vco);
> +
> +}
> +
>  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -1719,21 +1740,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
>  		if (dev_priv->display.cdclk.hw.vco != vco)
>  			adlp_cdclk_pll_crawl(dev_priv, vco);
> -	} else if (DISPLAY_VER(dev_priv) >= 11) {
> -		if (dev_priv->display.cdclk.hw.vco != 0 &&
> -		    dev_priv->display.cdclk.hw.vco != vco)
> -			icl_cdclk_pll_disable(dev_priv);
> -
> -		if (dev_priv->display.cdclk.hw.vco != vco)
> -			icl_cdclk_pll_enable(dev_priv, vco);
> -	} else {
> -		if (dev_priv->display.cdclk.hw.vco != 0 &&
> -		    dev_priv->display.cdclk.hw.vco != vco)
> -			bxt_de_pll_disable(dev_priv);
> -
> -		if (dev_priv->display.cdclk.hw.vco != vco)
> -			bxt_de_pll_enable(dev_priv, vco);
> -	}
> +	} else if (DISPLAY_VER(dev_priv) >= 11)
> +		icl_cdclk_pll_update(dev_priv, vco);
> +	else
> +		bxt_cdclk_pll_update(dev_priv, vco);
>  
>  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
>  
> -- 
> 2.25.1
> 
