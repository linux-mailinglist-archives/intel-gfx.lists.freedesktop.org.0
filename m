Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6E7787C72
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 02:13:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E4E10E5B1;
	Fri, 25 Aug 2023 00:13:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D4610E5B1;
 Fri, 25 Aug 2023 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692922407; x=1724458407;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qE7ntOE+Yo7dntjzpHTLee8G42NKiwnoA2qQXlliv1Y=;
 b=jWAGWiQflHeOFDWDc1RElTkCZVXP+DCU3ek9a+IQxkU2+C6gkIZMhS6j
 QxbDgi8xycMA02mL6srQ8OPk6dISwmqDLQuafLzErzlKeqL5o6r63Uw7M
 9h0ivQDOnPgGSrPzR5VEkVLWd952SikC1FFpYuJn8+C4a830+DUl+SqyI
 bXYbNd2X6rtlegScL0QCuU0+dlkmK4druDTVjNf/8DZ68BOFE9g/bncKO
 TkSjSIaCuxYSLF1scaYwdW+VI/HPH80HQvGDSlG1fBjl/nutA0MjOAQGh
 CDU/Qvyx8GejpBtK6RYMDoRmpl5A0iAlI1vsN8k6wD5K7e2sBY2YWTxB+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460952816"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460952816"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 17:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="911099556"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="911099556"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 24 Aug 2023 17:13:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 17:13:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 17:13:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 17:13:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYc6DRMX8wVbl0dyYkfPZWUuUK4hXkwWL9eg2xxsMHE5JW+NgS1jRW8PAu8LNPqrSuo0pMil/LRWez2H631WFzCcr3dGGE38p4hlgaZlf7Aj9a2LJ1iw9d6QPZ1473sTwjyAT4Y6JPcGKsNX4rHNoSHBG3V8ZA2I2s/yK5xe2XOwTodnAOS/8a6ZK4rym9zmVBbfg5rKirAdM/KKYNjBlwdi74wl1vX9EbD+REXvfpXVU292dPfZ05tRrmpMWA2mQUPh497mQcm3Pn04U+Asu5/smOq28Gem5uPE2nHO4EhCFF8dtkudZWZi9BmG1ddQWaLTwxpNYygw7CXhvdLLlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZhaJoCP/40mOLygr4nkZR1AlNQ94EtFrKrmIjaVMLo8=;
 b=O/bmu4//ezEfBX2O7zoQrkA5/AslcLXo5Zsz/PxGVCrj2jK65j8+GNyDsGSdhUSjJgPYwGWWfRZmEL75Nkx4VqOHel2ZC0DpjR8VqqaTh5WuIJ9ZCSzOyHpYcpNqNMN2ivYG6NKR2caTSwLpA/yW10dCSTxISOZuMtMU6NfPLrqdc/lcAP2oCHpx8VvFSbXBVKUB/FsPmCyMlmQnThF58GeZ/qIAsTNcVSNm3MO61Ysq+pVvStkJV1dfBKGyH+4ruMJrg0Sts+Sn71vSzIx3VtpeQ3VFO74pOjiebco3TJzM0/Q8PIJsST0edNCOMuKXuDhGbqqG7BsMANEVoWTj+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 00:13:17 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::c66d:c5f1:1ea6:74b7%5]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 00:13:17 +0000
Date: Thu, 24 Aug 2023 17:13:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230825001313.GG1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-43-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-43-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0230.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::25) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|DS0PR11MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: 49af44cc-dfe6-4a6e-1740-08dba50014cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y1OVqySWLfxqDy9JN4EntymFxoWQKzN2McR3wSlfdqjtSJTs/mZCkimAvtguEw5Y31VdBT4uRbmQpymGtd9PUAWbjiNNoQZFoGF4xxZL+hAMPNSBNqAzq+wyW4Uw05+DVNsIx7EJJYie+9pSXu4FQ/MGRsbxHEC80m81zMfqx9WAYANTnXRMoORb0XBKVe2J0lf7DENq+s3DzKc7oAnVc7aoV2xSvDjPrH8fm5o5W+GPgqdg3Tle/kfUD8mMRL89mVh+f5M2Te1DgUg4VDYcRHLXi63kc376THD2MDBUuxULbh3ECXStHJEbUjhVgs4BgdaVo02Xrc4wEh4Fg7JpO2N4AZrPuC/LDkFTEqRIi1YyHeRCxT2fv45bA8UzF9S/6+pgtUMIZxwtY9JB3R65LXrPcZ1A7bOzFvIOFky88glsMBBE9Mi0Kt/6vWQkatg9/AjtvVV9ydq+NV7YCd71fBllAhDrEvu6bnk1nMN5KjedRNQNa47CJsUdryEdetb5bDbnfap9eupOgge1V+66fLp04Q7pewHAzLUxIO+uDVhTzrRf7acl3hx8aDk30z0w
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(396003)(366004)(136003)(346002)(186009)(1800799009)(451199024)(1076003)(5660300002)(8936002)(4326008)(8676002)(450100002)(6862004)(4744005)(33656002)(26005)(38100700002)(6666004)(82960400001)(66556008)(66946007)(66476007)(6506007)(6636002)(316002)(478600001)(41300700001)(2906002)(6512007)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HrZSyPdpMtxajVUZTake0i3Yy/zOL30wA1oRvFoapZX/bFRa7/uYJXVCKAqH?=
 =?us-ascii?Q?HvK/ZvAtme53zL9JaOfSNrcwpuI+ObD7tVUYJc8832lQH8P5/49BJhC6Hqse?=
 =?us-ascii?Q?KXMqgvCHf0CgfglYOrGx380BxqTcO19HgwlCJAdMO9veNapjdwmgrDmYfw+r?=
 =?us-ascii?Q?2k/nXFZOdFBn0pHag8d+tCMfTO26zYgOivFxF3GMUkgj/qSHAdq4/ea6JFSG?=
 =?us-ascii?Q?lXgpbJacNY+Ptev51PX9MMh32aTEHiPSZykrNSqsnxI6E0x52F26cz0Lm4rp?=
 =?us-ascii?Q?LaT3/aX9rFyUOtoNnaChW0Z64N/0LDL+iOE7OSoJgtoQoXdWzIc4bqev4nQ9?=
 =?us-ascii?Q?HHFVjOBHXHXqY0Hff4Mx8SEUfBO+9V13wH7VJ/h3QhBEMxJbIats82U4p9br?=
 =?us-ascii?Q?VnYp26w76u5Gf6Jiq+0JT9joojpctYh+cO80ifHbf6Kzz4yt2ukFPHlsPaN6?=
 =?us-ascii?Q?dt49JOTH8WUwVNB8Zd0mNdxpE3bVIdSeQBI6H1WcS2xa0xfn7NVxD5rKz+4q?=
 =?us-ascii?Q?zq6WYqaNQ6g13lb1qLK73mU1Or8og9S3WJ+RXX5TSa4P+ksNvnW6FC+NUJu3?=
 =?us-ascii?Q?NUVxmDuAGmf3V2TM6hpiXndrLIGEQr9AM8UXzMAfUoK1oZDewoZOsPrMXra7?=
 =?us-ascii?Q?k1iUI5dCU1MDvlzHIl3xoi/0UYJb+VEhX5b+qrtCZsFlkZi5d01gZy95kZZ2?=
 =?us-ascii?Q?mWx+6XjrZAVAIMYeO0filAY09JlONThlMEM9O88JfIpFbjf/kle2Gl3qZuDo?=
 =?us-ascii?Q?EVkG6ktkQ51cCGDkQ0UFnRio42H4e/9DNYsEx+qFowGp23oZe5cNLPprCzdg?=
 =?us-ascii?Q?ipVtOOvhxfWFxWYCeEcSMrthGziVAFiYHOUwK6yyrIzMgKxZjxSEHAhg1buL?=
 =?us-ascii?Q?Cp1xH2LmUX1AtZKmgPaCr5sOQRhQEs36Vv+l9pxXzNNwQVGMDxUJhc7LNGFS?=
 =?us-ascii?Q?Fl84islRLtQmwaP5Q6LT9QyLEtBNWEWfbDSyropw7s//EAOwOyKd0SbSmJsu?=
 =?us-ascii?Q?TUBsBaoPXaKz0268S1ZmP58LqVxkEXgazst3qZboW0OVaKKpaTdsd4n4GW3r?=
 =?us-ascii?Q?cQUOK1W8Q6O9t6RjJVyWyFutSOy5dQt7w+4qzu/KSEBDZ2DkdTDG40DsMBMH?=
 =?us-ascii?Q?rxQUUlpQ1if7Lj3zCnKE/3vD2UUN7zpkcGaH6BNvjJlkh8XrS52AD41Sir95?=
 =?us-ascii?Q?s0bV+PNWbDDUcq3KHyrcRVqZYpvRym1C1jRylXrETch52spMlXA6/veAzA0G?=
 =?us-ascii?Q?e1ofm1tZj+Wvmuw7QtKkxvnI0Eb5ApiUlGQBs73XeJigVv7Rtz78be/gEdC6?=
 =?us-ascii?Q?3W1Gh6wJJJHI2Yii1NmrQpHVBd6xkGmcphHMWIy0EvfvoW2fJimxLjjxxrN8?=
 =?us-ascii?Q?Y2z5mSg0yB4qp/3sMgk6aWyeTdLTkkYfosEtjAVmv+G+lYAy1xuJi+1LoZFl?=
 =?us-ascii?Q?gNFZsyg7zr/2bzM3hv9TuiFDqgjOUNM+sVZm7SkXlmuWWgmZX0r10/RMRTqZ?=
 =?us-ascii?Q?92916ZP2730+GAsL5ulgkLHEdluL3imRm8oUtU5dbtRxuXlqKnqovHDbXOVk?=
 =?us-ascii?Q?/9zFJXW+iKqdUQQfTTafhv5b/lHQYqtV6y+RW+aSpFVJ7c4D5bvkLUmtnAiq?=
 =?us-ascii?Q?6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49af44cc-dfe6-4a6e-1740-08dba50014cf
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 00:13:17.3346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /hmUcHe+vkeXBFonmBragjq8rBjoosNAk1bxKgBrzyRYmhfWLc4q7P3IXFZj+fbuKPQjXcNeLkzSgwX2X21hXTVj/kHvPzd8LQIpOAEXT4U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 42/42] drm/xe/lnl: Enable the
 display support
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:40AM -0700, Lucas De Marchi wrote:
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Enable the display support for LUNARLAKE
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_pci.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index 7fb00ea410a6..f723e19e8ca5 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -337,6 +337,7 @@ static const struct xe_device_desc mtl_desc = {
>  
>  static const struct xe_device_desc lnl_desc = {
>  	PLATFORM(XE_LUNARLAKE),
> +	.has_display = true,
>  	.require_force_probe = true,
>  };
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
