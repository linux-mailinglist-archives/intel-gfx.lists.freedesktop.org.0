Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E58EC588191
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 20:01:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2925E93C5C;
	Tue,  2 Aug 2022 18:01:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7435093C2E
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 18:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659463269; x=1690999269;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lehf1hd5vfbBFSUu8MDdCWiwzifmSpp8RcmGoPpT1V0=;
 b=J1G0kiPPBRMNJFavuVLy6mkwZNkvwrTndjFNeCYenGUiUtI02ZiIEwo6
 rM0vng13jRs9IIHwnLuXBZ/J5NTC47VSM15t4nYVUgs3ISeT5fDmo94aI
 odj9p6FjTcpSKnsk0INyY40gKdCT9S32WANKX5sKIONbwdbwjdR4+h3u0
 5PzDJkfS5q9QbVLqKZf/3Dw6DqE2IHuJqCb8WBLG7Tv6slMN4KO8BE895
 X8hDe4JfCjrjmnwLfXTKsdurwDhR4EPjrhbNxfnlPYZOB4woY0Iyu2EWr
 QjcgOjr5kTBOSxh5hqB/0cAGOOJRsfmLts7z5XXO3pD+VZHRHjzb8devF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="287042655"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="287042655"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 11:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="578313449"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga006.jf.intel.com with ESMTP; 02 Aug 2022 11:01:01 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 11:01:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 11:01:01 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 11:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eBjC5e6phUaeTcfUhs15c0IaFUzPeMQzno12M3xhv2AOLNQ3HibF+Orr0/jbP9JSJMf3q/i8uq/DgG0Eb0bykK3C6k5KebFbaP7ZtISe0mw2YrGWsMlLx6GGog4r4JYAbYllij1rXWy+YCtj8tiPcSwfpqsNRcjyu4B66mKFKKDxck9EvT0UYxy05BpIe4ifapZs+LbjdKIjokuKjst5cXCgBAajuF8jYfqfgN+eZLnCxspcbxEMi0F9JhYGy1+wpeCeuusBV3+7gWcaHRSO9jaFcToZL2Cu50JZcVxlVMAXsGkr00DOC0sg0WfGPGGAHqhNSA5i6AYtfL0gA5hN5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GxVqMzUV4/YcDGneKyqQhOqvMOgpvP55VeJujcEYkPw=;
 b=aayU7Ev/ut6hD4JipqbxUH/oCEUDBaSNUbD/nuEKCeEXGxq2oz6qAOR0N1YHOBaqGxX1vmdpHTeyLDN3ZtxM7xDYHbsHoATJq2lWdLYKSYqrFmklkPI0eaJke2yzldiBkumfTzY1v9yuS+p6LTFYOrGtD5/MjXuaTgnMtsdMcawdG61H9PXX9Uxcu6S4+4REx69kSqGgbkrq+D8ujv6rYHqoon7WJKSKHlyRK25Cz8fs2NtPVS5OrmOukI/y8eeTNC+Xytdhb4MhaLnrKHk0e76J2Tyeaid7N1yqxLeZc7/3xDKMCal5o2Wr4vZRSo/RVwbhGCnV1QFuI1XcK37GIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BYAPR11MB2952.namprd11.prod.outlook.com (2603:10b6:a03:82::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 2 Aug
 2022 18:00:59 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 18:00:59 +0000
Date: Tue, 2 Aug 2022 11:00:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulmWcv4sgYOPvCP@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-21-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-21-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY3PR05CA0029.namprd05.prod.outlook.com
 (2603:10b6:a03:254::34) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c15586e-740f-4b75-588f-08da74b0f47f
X-MS-TrafficTypeDiagnostic: BYAPR11MB2952:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gRuFTUe1Plj3RckdTrJbt3e2zGUxuCDUsh1ixMq035bNglK/y5lPM2rMTG34O+HuP78lP8/Tl/PqCSz3geYZdfLx1r862D1pNgg5g9XCqnc2g3c7EZnIhLzQA3aaTBODbNgzLgMwiphiFPiIo9eibE4w+etOTEV5M5c72CfXtYy9ir8vJT8qK5/KcX8fevUvLzfykm60O8ZPohJpmjq8Ut2L+0uwbMfc3bUWtSi2dETD855ALeEQ9bOLAUP7pxK0jc57gunt+HimT2Cv5F96y3uzFr1RHh1HXOL+StnrYbmi33zkrXSy0E8MtAAhH7KHWSVeIZcaPUxMf/byaezOB6ow4vuZ4lpK8P0cgZtSwsc9Sf6H+8Wc1walsQ7MhnANHlcMWwn69rDgSYoA12Lj2i9SQapRKVsEEjTpOFYaEseaxEOpGWtxfEsZvaB7nKMzJdiOYClHJZn5xjnjZI33ETs2YwD/oVPgtRqYbvpiIwzZaUEKCggGb3Alqxs+caoyC53fE62RzrJujTZbEaL90xHxMlwdLtL2AOIIsC096TELZchNb/9ZauwnpfNoT0SxJaw2w+kCtmSrPMp0CyDbizNtfxYP7l7P84X1KY9vzpTMEHjzOs8wyoagOfuWjDNfVvahTE/rCFhj36q6cQ9QKdL3voZaOJA2miQ/jrrG50UvDncxlGxoRG9gB8t4JpYtMLTEmPQgbaCKR0QySE2NGGe6peXqFwgB7zRMG/+mjz0BOvOAl1RBsF6OT4aYDbAa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(376002)(39860400002)(346002)(6506007)(41300700001)(186003)(26005)(6512007)(38100700002)(82960400001)(83380400001)(2906002)(6862004)(5660300002)(8936002)(6636002)(478600001)(6486002)(86362001)(66946007)(66556008)(66476007)(8676002)(4326008)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TZBDBDKDOUrIURuhGAIGUQz8sOhgDqEy15dAhUUfD/J4Q4GEUCpWcSxtPRcL?=
 =?us-ascii?Q?SnTTzm3g2eu28/zyKjVeSgpLOYMpfpNmYj7zKzPI9P5cVr2fOSeouiFcqyDZ?=
 =?us-ascii?Q?FHnPJIkhKVXSjtaJgLQZEn77X0Oj0Mt6w1fvFnpMCIXGMnhZXRZQgHlWkmhG?=
 =?us-ascii?Q?T3TVvAaAnGMu8+FHoLyF0hl5NgPv7zeaYTkASUa0vSWUS1jNQTqf6Q/UiNn1?=
 =?us-ascii?Q?hX0ob0siWAbLjk8L9iac+lQDhJpGdAtgLZNUeiZ1uJIqGk5EpyyB0MeIWZYd?=
 =?us-ascii?Q?ZuSQtvFPa0Er77VJBeFaMiciBsyrOoJuzE/nP9TCU3cXvJ1VsESTbRBj3uud?=
 =?us-ascii?Q?YkNNJx9k8EFgYVxPLchrp9UNfSg/cqCGEdWSlmGb/P7jqTOB9sXuxdYs0l86?=
 =?us-ascii?Q?UAaMQYEr1rZTmL0Mia+lBY6E4MEpPptAvf6txc3dRM465m14j8Ncg/hSD3wi?=
 =?us-ascii?Q?vRsou2EJb1pbOQnObOiHXTbigox5d/0sZTcnwG9dewpbxndYDMcF4/kftVAE?=
 =?us-ascii?Q?3ewwvb+mcR+GeOjLBCj2p/+x6iy1sU0ytFXzjj1olflAog1MBs3NAEN/+eev?=
 =?us-ascii?Q?9h6yH32uyBazxAknIRdol6u+q/drgEwFCX2bXq51atkv41kpXzMfoUeVjp72?=
 =?us-ascii?Q?shPIBTOJ7yj8H6LMjpqTwW8SOfkVSGrTx9tvMevY4Dq/sVb48mp3cGPyR73z?=
 =?us-ascii?Q?e9Wu4wDQOHLAWcQHY0lgT0k4yipp5w72zxIIgxIuNZhgA4oKM0EElHikBNm8?=
 =?us-ascii?Q?Ra5wbyLgEKgNhtnSzXBIl7I9gmXEGP5ydgxyMjVkCOmJFU8SWLfoOWjOmRB2?=
 =?us-ascii?Q?kFMOrhiKbJLo21MrC7aAP+nP06xWN7yCdzwp5t+b8v8qYEvdKXBlZYiV6SNS?=
 =?us-ascii?Q?3CkfiHCgG2aPf+FkuRJ4isoSngYgECH6O+t1Wd7UC7iyn82Rgw23sGhOLEXW?=
 =?us-ascii?Q?kBksJwKTof2XErF667L3nIz/4I2EW+THrvPEeAbfRMuqKxe0k0hxM/+VNEIl?=
 =?us-ascii?Q?9szQZPTulVZeEVPiqRwv5/eVtVty6k7o5+PV8/vNKooSUIIzlifLAJrXZLvt?=
 =?us-ascii?Q?xyH1ElOVZnDMDpT4RU/kW1YoO2aXz/5ugWVI0laG9Wi2hIjXwgl4cP5vscN8?=
 =?us-ascii?Q?MOmui81hf8hDg9gPZrr7EmaHp10F9v6izIBspyCR65mz2EhAvv6xxMXaRXnd?=
 =?us-ascii?Q?RGrmdv35Mw02/iPEY/eA+C4vTlQG/R7o1oOV0uodU1yhxR4wxavIqCjO1h5d?=
 =?us-ascii?Q?e834+pDUF9FrYp0v6K7d+PebB/j91PifxujBPWYNz+gl9/SquXVZC8VZUeFU?=
 =?us-ascii?Q?PX+YwsK0gTKVSoICp/cnGih54uH/Ha5bS8Jj7pAvyZ+WKV3a0CxZBI09hoEs?=
 =?us-ascii?Q?KrH7m8TTjVr6GYj7tOh1LDbNZr3qWrHTV2geSqktEDJJ4OfDAQp9IESIROdS?=
 =?us-ascii?Q?1X0U8QDb7F7JJr/i4lciO7mr21kklyxUjDRZvQmVoSZrHR6UoEmwHTpxG5Gc?=
 =?us-ascii?Q?I2L50psutv+aAOH1JFwxvtmUgSZUWY6gGwBm7Rv3B2Tm9ERfXmy5LPgCFTKq?=
 =?us-ascii?Q?geaeaFqtZEiuLg1E1eVIqbowKlQ4WHPwOwly1XvleYUFyDBoGeeOPyRbtOtM?=
 =?us-ascii?Q?7A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c15586e-740f-4b75-588f-08da74b0f47f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 18:00:59.2961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yj6937NT+er6vFWrtTRvBdgXqKaU45sF2YEMzsXdf4rleDAUYHcUR6aaKqsWMX5UFBabFS/PpEoEsD65szHTxhaLSlgSdQa0fBexIH6biVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2952
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 20/23] drm/i915/dmc: Load DMC on MTL
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 27, 2022 at 06:34:17PM -0700, Radhakrishna Sripada wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> Adding support to load DMC v2.08 on MTL.
> 
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa9ef591b885..9c4f442fa407 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -52,6 +52,11 @@
>  
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define MTL_DMC_PATH			DMC_PATH(mtl, 2, 08)
> +#define MTL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> +#define MTL_DMC_MAX_FW_SIZE		0x10000

Is it correct that Xe_LPD+ has a smaller payload than Xe_LPD platforms?

Actually, looking closer I'm wondering if the
DISPLAY_VER13_DMC_MAX_FW_SIZE we were using on Xe_LPD was correct.  I
think the value here is supposed to be a per-payload maximum (i.e.,
checked separately for the main DMC and the pipe DMC), right?  And the
MMIO ranges the payloads can be loaded into both appear to be sized
0x10000, so it's not clear to me whether we needed the 0x20000 value on
ADL-P and DG2.


Matt

> +MODULE_FIRMWARE(MTL_DMC_PATH);
> +
>  #define DG2_DMC_PATH			DMC_PATH(dg2, 2, 06)
>  #define DG2_DMC_VERSION_REQUIRED	DMC_VERSION(2, 06)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
> @@ -827,7 +832,11 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  	 */
>  	intel_dmc_runtime_pm_get(dev_priv);
>  
> -	if (IS_DG2(dev_priv)) {
> +	if (IS_METEORLAKE(dev_priv)) {
> +		dmc->fw_path = MTL_DMC_PATH;
> +		dmc->required_version = MTL_DMC_VERSION_REQUIRED;
> +		dmc->max_fw_size = MTL_DMC_MAX_FW_SIZE;
> +	} else if (IS_DG2(dev_priv)) {
>  		dmc->fw_path = DG2_DMC_PATH;
>  		dmc->required_version = DG2_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
