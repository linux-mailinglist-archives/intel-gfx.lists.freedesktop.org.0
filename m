Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEE27C8E3D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 22:21:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DC5410E034;
	Fri, 13 Oct 2023 20:21:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A447D10E034
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 20:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697228502; x=1728764502;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IyGKxrHkn8RjOltTCSaZBOX9g9EyAs+giwLFtDSHrCA=;
 b=j+nznXZkvaHg9K9tU68zi9pOr3NnHq4n2HDU7YAqXjQp7M6sOvliTHLk
 gtAIsFPXF0k3UdPvAt8Hv7HnxBRj61pQcj2/lVjOLQK1hSGkLc0R9vn1u
 wGOgehMB/ErE6QdU8WHqCB7cQyLk+/bIdY6EKDroBXnVL67IbZnodsN91
 4ZI7QEagimvvmFw3QJjbygD/GtIEYGSqf1iAHtv4UotPoTby6nDQOuz6U
 o9NeeqmTHLm2vrMgGHGNdypOr2JkMczkTA7aiXQkRgt1iRMxqkj5l5gDC
 PqW/0wkESZcXnu67VJgSG/VbkbnseqHvVfAqU0FwrE0WHoKC05+aJ3+em A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="375608394"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="375608394"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 13:21:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="878641806"
X-IronPort-AV: E=Sophos;i="6.03,223,1694761200"; d="scan'208";a="878641806"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 13:21:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 13:21:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 13:21:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 13:21:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 13:21:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CL6uuaqy32wbo8MvYh8cLZZ0DErhZb7xsdJ/8j9B7xDA1lE475e+53Ak2U/yWcUSaRFu2Xn39Whw+oCfmLwgvfiaPLTcs5YdOHoQKMgv/Hr5nwEm4Etgy1Uqd4rv242m8j5IodWfLs8GO2aR96E/HYzru5dm3wX95n4gBgNU55M4YW81s9SOwZKC9Z8cnARio4/zHN4QIx4bHcYHAJ1Ad20BwXI0OT7MdyasM4cyOj+LXXSWjhjLEnNfWfts8PPs784MWBYDe3qOKTJ64XwVvu46EN1lGKzeU17p9pMp2I0c80rb2KxX/UVGQKMvZ8KnGuCq5jqsAz1d1KF2kHesZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JdNvZdGZruDogldfGvZIhdRJpAl6ocnh4eMdjcR7dXk=;
 b=h2Ek/8RNkmck4X0jDN0Yf3tu5psoHTAsHEpTeCvGrEwjtB8V2zKaZPpP18bjG8Ol7/N877MxXh4zcGbSYhQTWA4cFPpMF7yp54jV2bZcQp/WJz2Xd41AxoxrvMx9LhdWDejvmBwBoUiR4Q1BQEXNpMCfGbam0XlA/sLw3/prgVeJSj/AjxnOnzPdx+hETMKERL0Jye0sDdSehMyTX1is3ER9icqpXLcIOXPN2Q4if0LKQP0pSceXkIA4zhHP6VDOm/dEWHLv4XJvAKffJk2OqMq1TaZZnU65FiEJ8Mq05wGWUZI4FpuUNGPMg8j3/eKd6iVYtQloSRF76MUmzGminw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6568.namprd11.prod.outlook.com (2603:10b6:806:253::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Fri, 13 Oct
 2023 20:21:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6838.040; Fri, 13 Oct 2023
 20:21:39 +0000
Date: Fri, 13 Oct 2023 16:21:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZSmmz7btjjfX/rX3@intel.com>
References: <20231013065532.634872-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231013065532.634872-1-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR13CA0114.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6568:EE_
X-MS-Office365-Filtering-Correlation-Id: d5eac22a-64c2-4443-2b45-08dbcc2a019c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yc2f6G8FEDOSX0YBMhL2OIsXNiuVLImX2SgUD4XPqNmIFiReXuqSn3nYKOZdXPZMsU6WDMM9zQ+SlEUOjTlAOmlL3+LabJgSWN6WxRWTmrwh2cpiNCDlZXSBJrXw84IeKRCPnQQ9O4yRAqLykfjz7THSdGpsAnREQEHe7g5KCFrv+V9+b36jf4gl+VDHMIhXA2yWUKpqgfjVVMk3jIW+JHitth1a6YfZb+5VHc+jXOTK7r0HtnQzpylQM/7hbZgQJtGFHlDCdpTCm6GrjTILMog5Cfybn+DQxS2ENX68HLog2I0H+cMVfQY2JKe9uvIkqWdFHtyQXPLjoye4RIiPCPzVnoHyE+zZa66le84ITe4K9tn5epblovJ/MgrB+wdLFolXG6Bk07JBqiyJBGozUA7DIP10pifAMoNDbt7bMl4QSISaBqWlQDNFP4BZk7Ow2jpihhPWrN3QOYU3oTwcsd7GUkJnNGp0GzNa2WeZ6DgUrfj5MA5+CE5SLXjK+x5kfkipXiF8FLBTvMj+ZZYPqZZm/XsgB8ES4ddftEWf4ZC3cnGMNxAWl8LbvUlGYEKW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(396003)(346002)(366004)(376002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(15650500001)(6512007)(107886003)(6486002)(2616005)(66476007)(8936002)(44832011)(6666004)(83380400001)(2906002)(6636002)(4326008)(5660300002)(37006003)(66946007)(41300700001)(6862004)(26005)(8676002)(316002)(36756003)(82960400001)(86362001)(478600001)(38100700002)(6506007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?msIljodx9CQdf9J3SOlxuioHW2PpEQhpZJZYLDOjHz1mZUS6BU6nAo9qwbxW?=
 =?us-ascii?Q?h28d2O2KIVtqNUnjqKxrZuRKbHpBAXOIVUqJX1cFrLxj3ibPLL3Nnx5a86+d?=
 =?us-ascii?Q?scteDQY2jZ45f4PkV52FFTMb+gpZmOJ6x1hq1HHo0Ona9ZBsfHHXyDwkOEii?=
 =?us-ascii?Q?HBijcU9WXs63WKaPYcyPx8yd/DSK/2P8GRQLGI1tL9oa7d+iQQfIeVa5IRL0?=
 =?us-ascii?Q?/1Liflx7FynhFmPMnTfhD3pNmgHCNzttzJD9w6xCHeKiKt8j592dlWbF1NQ/?=
 =?us-ascii?Q?O0Zjb5w0gu7fi5/dwuH9QZv6Lygw0vKjvWF9GuIOD9iZfdMbfDBbjHnminL8?=
 =?us-ascii?Q?oxvTx7aWeWYw4CJ9v4vnnCpYH8FsDUpyLeMICdK6kjBYR0LkYyQXczt9NOqQ?=
 =?us-ascii?Q?T8UR3tsmQdWfGArTPmKleoKHOtAa6UOzrS89NfOOQnoXxBAeSTr7J50h+2cr?=
 =?us-ascii?Q?O+yu9Ai8ZQhsgxZyNZpNtiQQB3TwkeQCF/gH87d6QTIPajhXUr54uKIaroTN?=
 =?us-ascii?Q?HzGp8roEACiI2fSFDMqhGZyocrAxP3C54/7QWR9BzBGXJ4nZUJUMwF5dHw71?=
 =?us-ascii?Q?vnhPR53EeAALn3EJ6+cD6h/l8rxO4/4T5Cdrq1vCX//9DZFQmWZe3Vi192Om?=
 =?us-ascii?Q?9mkzzr2G+v+9Ol0V7bScB0gDCN02xa2YCnVwhsnxI5sjg48rxxkV0k4V+a5X?=
 =?us-ascii?Q?etZkZcrXCeZYYFM79zTk+X7DchzOQq2Qoq9q7fK+7naMUXuVO1DA9azReKCe?=
 =?us-ascii?Q?ZNEuoBtsPZl2Gh9FHA6djbIpkMmzvZ9eDMvA0Ixi4/ihRyqV1CIHLP17MCJj?=
 =?us-ascii?Q?bF/W/8SuEmIi7DrZ/98lAI5BwRBvlpDn1qKQ5S/ySdFpEj4gaSVHVET8MIiL?=
 =?us-ascii?Q?UFSoUfgnU5t4pw1d62PnmOwEiSBIV0PKlQgNroQ7lpTzHjP1Hz3p3pu+GD9L?=
 =?us-ascii?Q?zSgAKrHTee5xg9NglIWL0jzl/QKpavX4jDtQJerjabQEYFjUqlOYwuyf5MfK?=
 =?us-ascii?Q?wXmLx6heg0VqhoWMmqh1Iq++vHofLQfpaPGH+VvAvMRHbJYpvrg4PXeW7WE5?=
 =?us-ascii?Q?0MKFMMLr72iqsisGA4ASgazqI2aBNe2stwRujUHgBz8lKjplcc6l3Fhu5BQ5?=
 =?us-ascii?Q?3/hWw7IINszodH3hvyRiI2C/tzIACSn4KpB6E3hw7F0J62OVM51LFkvCnsjO?=
 =?us-ascii?Q?Zh6+552KFf939fxekxAdP4dDfeEeRI4zDMtYHjfiI5f1AybiqKUsFtDXtsjJ?=
 =?us-ascii?Q?8Isp4HW1uOwZWSQzunA3fcgZhnncnNH5hzydgfrY2BQtXExwhvul1LkHov26?=
 =?us-ascii?Q?lw6yCSc9Q27HQyIQ2iw84VutLCGm1ui9DkOAD5m7Ciff0SHD4ArizFUADArY?=
 =?us-ascii?Q?TbMz1C3JiPMQJi1K43DPWRQsuURJ2GrVeGJE4TrHSs8UCh0qjp07o6hqY4E/?=
 =?us-ascii?Q?38DdCi36y4VT2r1GFI4zwz6vnJ/eUXWYCBkJBQdpM35H+Z5nFnuE5KfD/o0K?=
 =?us-ascii?Q?eXWMaJ7ihQdiLlyocRb7OfsGbhH7x1pZmFKyU4ps9t+Xn9kWsvkbbV0J4i+i?=
 =?us-ascii?Q?G/fdm4uAtnDjbqJDAtCwcbPnVDNg6xf112sWZlaTZ0UuwA+Vjh203sDvbpCS?=
 =?us-ascii?Q?/w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d5eac22a-64c2-4443-2b45-08dbcc2a019c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2023 20:21:39.3460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZA4r9Ci/sPkflpiktATa3JfBETt/hsy0ZvHfduzGa+Fs4V9vFLhbaPCp4ewBzAWMFoCraLCLZPMv8cqYBMlClQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Reset message bus
 after each read/write operation
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

On Fri, Oct 13, 2023 at 09:55:32AM +0300, Mika Kahola wrote:
> Every know and then we receive the following error when running
> for example IGT test kms_flip.
> 
> [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
> [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
> 
> Since the error is sporadic in nature, the patch proposes
> to reset the message bus after every successful or unsuccessful
> read or write operation. However, the testing revealed that this
> alone is not sufficient method and therefore an additional
> delay is introduced anything from 200us to 300us to let HW to
> settle down. This delay is experimental value and has no
> specification to back it up.
> 
> v2: Add FIXME's to indicate the experimental nature of
>     this workaround (Rodrigo)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6e6a1818071e..7c48ec5e54bd 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -221,6 +221,14 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
>  	for (i = 0; i < 3; i++) {
>  		status = __intel_cx0_read_once(i915, port, lane, addr);
>  
> +		/*
> +		 * FIXME: Workaround to let HW to settle
> +		 * down and let the message bus to end up
> +		 * in a known state
> +		 */
> +		intel_cx0_bus_reset(i915, port, lane);
> +		usleep_range(200, 300);
> +
>  		if (status >= 0)
>  			return status;
>  	}
> @@ -300,6 +308,14 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
>  	for (i = 0; i < 3; i++) {
>  		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
>  
> +		/*
> +		 * FIXME: Workaround to let HW to settle
> +		 * down and let the message bus to end up
> +		 * in a known state
> +		 */
> +		intel_cx0_bus_reset(i915, port, lane);
> +		usleep_range(200, 300);

what cases trigger these paths?
and how many calls in the modset case?
what about suspend/resume cylces?

if we do a single rmw we are introducing at least 400us of delay here.
have we measured the overall final impact of these extra sleeps on the resume and modeset latencies?

> +
>  		if (status == 0)
>  			return;
>  	}
> -- 
> 2.34.1
> 
