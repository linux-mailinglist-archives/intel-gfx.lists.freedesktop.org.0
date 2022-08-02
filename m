Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626915875F5
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 05:29:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A11F811A303;
	Tue,  2 Aug 2022 03:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AF6811A2E3
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 03:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659410925; x=1690946925;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/UHKBKAwngs0mPc0BRalmCQNwz2x1/fhV4sCOPwN+Xg=;
 b=js6B7D8VXb28t/UB0/biiT/oj0uOLFBhb5cdwvjlnIiGTUmLD13ojrZk
 vhvQF8Fgyu47OW/ttdOdYU4LWTiJq0H2grP0kTKxlU9T+/CJ6teqmzICd
 iD4u1VX3m99X78HP8uoi7L39JzZB68VmGtdykl0obVujG2sbaRKgskG0x
 OJCxXgS+FZz7qfZqP/O6O/CHif2onOz1A24nZ3AuAhXd3F3bKnADeah2l
 R+skrK+/eS9/q4ecExLc2+qKCpyb6jWHhDgyIwmqtcL7eMaKRMlWIHA3n
 NMOHA2qSkdmdnSUhhif9aVJ5zymZ/GB7kaOFY9dTR253GzBpnEmnP8vvk g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="290523576"
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="290523576"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 20:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,210,1654585200"; d="scan'208";a="602269958"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2022 20:28:26 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 20:28:25 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 20:28:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 20:28:25 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 20:28:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hqdtOZnkaJbee8TtRtBFfCBSH2/up96pGLVFkS7dICyPkTib5DtGTH8eYh9DbSwKjadRASVC7wKAlmjNkUAXJ+fiZghgGHLDJII64xFecevglq5ETu1tNFofcVaq4dx/tMhROgMOXquZUTagMZ/e6z3tVTqmsMP0FAzdwO9kME9QHoH1V1uCTGxwZmtbzlAp2c+fT9JBbJzjX84wNyDZC69ky7dJeE+DaKTcEc7KAE3p91PiDRr8+WUUQBr/nlAPAqb73RjN6u0i0cw4GuhLHkobAulWJOGNpN69EpwTcCb6avebLP4SMuW9+dcvU45r49+LTJIYNPl3rhG1OjtfTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mHxwh2X1zzXILm814MQBpVLYI0Tj8dTmlaUbnvw3p3k=;
 b=KiDbUC3S1b3fStDtfzjDeRY+K9gylLfzk+UBtNQRJIzgILLVmxeHbE7BF+Wr6rxszpAGReLzpXoniQ3IhJRzOIivdLRo3+JRh8QaIV/ajoVZz/VZiTXZy4zvj2eOxmZB6nYhI/ESCuNhi4/zJ9CxkurqOwXj53xVQJVbQ7Mnz6XkvGxBTTAHqU6LTY+tVsqAKr2R/bq9Zs1SlCC7IoIZt3ZktHIbxAW55rZv6DG8wOV0LG6tfBt5BUX8qlEApPdFMTDtjMXOjSt8zPhE9Q6ZcNcyCBxzloW8xiaZ/gT9f6TtZc/XXdGVL30PcLHKYtexcipTrP+VJ4ifzMGVRiEylw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH0PR11MB5329.namprd11.prod.outlook.com (2603:10b6:610:bc::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 03:28:23 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 03:28:23 +0000
Date: Mon, 1 Aug 2022 20:28:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YuiZ1EWqDj0KbzKd@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-13-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-13-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0048.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::23) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 664d027a-f58b-48f1-851d-08da74370dd2
X-MS-TrafficTypeDiagnostic: CH0PR11MB5329:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /Qz0RQRVLalZFCzl5N+YVRj3wDICdX8AQmOv9sABMhQZBr/BrehAMAxgQbbXJk9zBQNysk8wDO9nUP0NYqWOH4Ux/coOu00+Dienq+Yf5rKUOu3njZCkMCMzH6KCATzZmPasOw4ZVL0suPzBosBF5+DZ70DxXVT5r/4ZaMNy2GXb3hyL5OWnhDiJJ2BWNaiI4JKTIe/+eBD1Sb6mtAT9zjbV5iL8LyWx6TgBrALL8g5YrNXzytK3vcZojUetbcPnezjogLbMyz93tR1M2Cv9+jCbpgI5XTYdDMBnb8bOf3IGQQUA0Ntdz1beY77EnK2PoAv5Maw210lVaZb8jABSzZX6O2IaPcW0dRpCE/+mUglgJu+yqoR3Dd9NJ3qa9CP3O76C/pw7IlkDRJC7eydlEzdSxRMDJ7jywSxKPPO56Kl1/QBmJer/O1rmxrrswmb1QFuyFXzIhS4bCluoALgJKV1pDMPRpK7LrMN7HsLnCrp+Ej393Dt6W12bvw7rkcYB1iL2rBLh3YBEBclhMpv74iz3LSdUTMxzRmxkusrQSeGk/OiKttxtmX4PLxrRrsIpOGJssNLftEvEkLp2CCTJ44cqBfZ3+WVuhvdYfez0QuD6Dpnd1MDFtR09FsCoatSTzojwWU5o05nyuOMZwAwXTfqE5nt/c61YaIu4cPZck4/OnnwsXYsbDnCkZzKtAnA68MGvENs6Q4cDb7PcHY8BmDibye37TEF9KQ5JxqDsn8t8jQVKr9zKGsvn5xa+bNDTlX7G9wP6Mo7/A31jWZx30Uit1dWHF/vNTm6e1h+wzNw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(39860400002)(376002)(346002)(5660300002)(2906002)(82960400001)(8676002)(4326008)(66476007)(66556008)(66946007)(8936002)(6862004)(6636002)(316002)(478600001)(6486002)(86362001)(26005)(38100700002)(6506007)(6512007)(41300700001)(186003)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SUFtyGlQJ/J9hj4Sa6y73lCtcTa9eLXxeKZ97H781zVHo3te9tTE0aFZ5i58?=
 =?us-ascii?Q?P7Y61PmWSVXGLYyVVA/0tVBgHVnenNAnLmsgahqOCJLHN4+ej0ptimEyWqfx?=
 =?us-ascii?Q?rQkOOcvlYvKJ2SV/ldjsldS8pKbFDzn8zYv6Oxgo2lM2nwN2YEaK/BGRQNi8?=
 =?us-ascii?Q?k8zxZrOZR6fcHeOEdUTedlZgB18Hopzb0uJffcCo96/IC0QcXb/AFWJ66kG4?=
 =?us-ascii?Q?QI63iJNaQrDfvFh+2AT46Hxev4PRWsk5vlyHhQkwefBEgdXZz/2PRO3zAaQx?=
 =?us-ascii?Q?jY9i7eIwrrxCdMkjBl7ko0vpjyfXYdqBQGDb3RXD5bMsrZyqS6d1Lqj9uDqK?=
 =?us-ascii?Q?T2wceWIwiDU/aICqLHw7cN8WaNMOYTyQea3ahQ1BW1uZbC0YvIqvSQa7+Eip?=
 =?us-ascii?Q?TlLoAcWyXhgh+fQTnRk9e7GkrQHfG5XERltZQJlON5VYQAhEfCiVvfmGr25E?=
 =?us-ascii?Q?ihPWEcQ9fMeTCoyFmEYGu1xyPyvRJ/CWrxJUKKTu0W/5jhSGEm4pVVn/5mp3?=
 =?us-ascii?Q?cvs7pKefIgYaYl6DUsDISQ1IpU1Fs/oC7jZFx62B6XYato+zRXDEhJF98U/8?=
 =?us-ascii?Q?h72lpoDiouGhY75GtAs7QcT8mja9n8itGooWKfP2UhOFf1Cp/g37i38vnswW?=
 =?us-ascii?Q?Qj4W35r0S2fc/W3QA1PK0U1iBLjrKkIax5d68tlDYQsW3MggYosW9zlYbyLo?=
 =?us-ascii?Q?TIm5UTim9SnnlMN5UVkA5k901eOpQDu/Wbcp0uCkc5la7vrpqHWvCzCtzm5w?=
 =?us-ascii?Q?fEpuUF6Cx92OjKhj09vJkf2tdmUZpDooWPc3AxucKHy4CUDzIzJOyjh2zEVr?=
 =?us-ascii?Q?RwTFVSEbsP4XtEXYXVvqYM3/obCQmOInIuEnAbtv0Q+Xapc1NqSTbvHoNoav?=
 =?us-ascii?Q?rzGTWqze/JhorO8k7KLAeXqTGqDsHToWW1kfwo6frzNeQ6S8uLcMn5XbJcej?=
 =?us-ascii?Q?WHXL43W+7d+IjPkpaDK9DnKTXxL526eB629gWV5RcqSLcZ1JtdFzV3jprH8H?=
 =?us-ascii?Q?CtcfZBN3m3VBYfn6PuO+jxpg4n/chANDK5N9IvzHX/35E7A3DEpA21FYlrHE?=
 =?us-ascii?Q?EwPIHJ9996jcZRdRVJ4NqBB6sX5FOVA4Zofoq+1AL09eERIwNGGq8eaClX7V?=
 =?us-ascii?Q?nkNQwu/TPasFInb742hC5h4wjNwFZKGsDDoV7YWbTtGPwc+jRz93qSXjh9yb?=
 =?us-ascii?Q?c7GyzIMw44f+zlj2VKQ0sG8AJbMUHT6TBpfK6oLIrWbYQwk9URgt4zpCDPwX?=
 =?us-ascii?Q?Xx7VI8BM4Lz5e0p5bMT7abb8z+bhmANKgsuT59sSDVBjA0WBq3d0iK7rNQPe?=
 =?us-ascii?Q?KtXty4a9/2fR3y7Z2/WPcAyj090gT7VQlh57NhpRxyMhFl1IOQ3jSQ6pajlF?=
 =?us-ascii?Q?Gwp1fGineSwaAAHBcwPgoRdnHGHwkRtftVn0ZQTObIlmKx26AHQjnKOPf40n?=
 =?us-ascii?Q?nxtnP326yCIygnMw0a7h5VrCHxKwVB6vwHlsZ9Cj3hMynf3j5ynA4RyyBK6X?=
 =?us-ascii?Q?amwOjrbsSkUHfZhaNhjGpXhDV1lzWqoeZLpWm7lIjjopIaD2eCsAhgofRRU6?=
 =?us-ascii?Q?Ecl26Gv/Euf4ILHcPnZqmdFPLOqHq+qvOTrBsV2VKQGrNgirEEBBHdNzqH5o?=
 =?us-ascii?Q?Tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 664d027a-f58b-48f1-851d-08da74370dd2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 03:28:23.1520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K0Zp+oOBX0uqLabuYuyrkw2Wby1T4WueT9eJK+dndTnjvl20B/1ndlnH/8CF+u82/oyJbbrwVwIl+9HpiUQ3PGxOafnRKNLGwSMX9Bi9BB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5329
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/23] drm/i915/mtl: Fix rawclk for
 Meteorlake PCH
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

On Wed, Jul 27, 2022 at 06:34:09PM -0700, Radhakrishna Sripada wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> MTL has a fixed rawclk of 38400Mhz. Register does not need to be
> reprogrammed.
> 
> Bspec: 49304
> 
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 86a22c3766e5..390a198b0011 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3036,6 +3036,13 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		freq = dg1_rawclk(dev_priv);
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> +		/*
> +		* MTL always uses a 38.4 MHz rawclk.  The bspec tells us

Indentation isn't quite right here.

Patch is also missing your s-o-b.

With those fixed,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +		* "RAWCLK_FREQ defaults to the values for 38.4 and does
> +		* not need to be programmed."
> +		*/
> +		freq = 38400;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
>  		freq = cnp_rawclk(dev_priv);
>  	else if (HAS_PCH_SPLIT(dev_priv))
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
