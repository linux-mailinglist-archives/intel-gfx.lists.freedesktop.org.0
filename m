Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D88B786273
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 23:36:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0688B10E0F5;
	Wed, 23 Aug 2023 21:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 455BA10E0E1;
 Wed, 23 Aug 2023 21:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692826590; x=1724362590;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PHf5qST1gg+LEqj8DipN2AIhVBReTVIGAFWHLjQ6Lq0=;
 b=Jzos9YjxrJA4F0LKDZizQH1Z1wKjvjRctMtEPEh6d0zS21zG4w5Jo92E
 o5zzv5sSIw6CVdan+FE9CQS9zF5pZIVuW4N+YBvv/5DnOs+ahyvd4qYY/
 SBKN6FdSlUP/VN3Rq4pSkLQEJOhXkUJVlmgA0YmqPjBHQQqMSxt35yuqw
 Alr80kI683WwF7sZILcUU6Lykr0WrTT19Wxb7OLHz2l2Rhm8eKxvDQL1D
 Tn0rvxXQfgQl4sr1rhTUSo4COn95JTYJJOsIxTHsrBZzoURWDn5dMUhEm
 JCozh0bQxtOVevENKbeJTHvExKY2Ax1O9GQE9wC8lUAEix8pzzDqphhbc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="377007140"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="377007140"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 14:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766290875"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766290875"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2023 14:36:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 14:36:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 14:36:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 14:36:28 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 14:36:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9un5LBzod8XzSqAOyGL5fu/m7RGqvREOa92cZdISIrALazeWou3W6eFzRf7xDVFmTDOwwqMa9OmUlw7P3AbGDxZo5i87ugvLZmafsrSJhDqwzt3CntMsCdjM38JqIwMekjnL0/wD1X7mQIu/aASaC4y9WS46fXME7iErRD+ieQOEqoIIy7e9wRdmxjcs6jaiSnNGm7HsjrXs6q2oMyw6fuh/DHV6fRwOaW0zkvkGRqkCNB20+Y95/8INP5aE5QCg6hmGnKs5GRpHMIz9G2I73vB2cHnodN2guw99qA0jn9EpTdRP2n7ITMSnrpViFBY5Es6EhZtjM6Bm1fV1aJizw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z8iGm6mFVXynqjrEXyPftNwZarT0plCA0cSr5iTDBa8=;
 b=HnQNmLYZ3xgxEjYc8Fl/6EmZgzoMiGbsUniFyba3k9qABmITNdvqtdE93ZugjKhc/Wj+CbzbrzEUsph1s1gQMQ3HS869rz8XWarpRYCgFbPuDMm+MalSKaBR4140dJdoGMPzFOJuYqMqkzwQMclg8tMVS0wVdJ36IAczhYpZ2Ujq8U199IZj3DXUyltWeu8TZstl1UK0vBqJVItNEIR0rdogfRHU3CbNL97zYgAaishtPoqCNEf85D3pVFIOfO7FFbMyt/ia9W2G97kES++kEmMJkxw7lbCydcheQdcseFKvKzDmUtgNTmac3xJOfcqRTLRoabXWX4c88d0ni8lRyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA2PR11MB5068.namprd11.prod.outlook.com (2603:10b6:806:116::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 21:36:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 21:36:26 +0000
Date: Wed, 23 Aug 2023 14:36:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823213623.GN1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-34-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-34-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY3PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::21) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA2PR11MB5068:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e9f4c5b-b01e-477e-a3bc-08dba4210129
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QDvknibupuTLm3TB3CRu5spOI2k3HX2mK1P6M1wa3q/nQWwgN+peDfHRhRlX02YZXLn8W3vhnH5nlbeoq56teTVsms5/gxB/+u76hi1atKFOdH9UyYXRPsVmT641l+ZEr24qY7LGCZwtEbrugutwjbjQn32wqfFzMQboWIFoCPY1SKTAqIxv4LbPXuwMoBut72hr+kXjGEin2xETc37tTB2JTHZgb76NO/qRHy+C/DuezsojMcGRGpC/AMxCR/nPyuOXCy2dPMoPVRA8e5wdyxh9qcZl/Hhvmdi2u7vBe2NY6sLkf6Xwr1txU0uUnMiLdulO6BdWltfuU1JenPRuMW4WlZ1jiuHKG27NE4nPeAkCoSPfguKyBJV+wgCxz5mQtUAyFmD7MxTrfjxnVktSCOCedCDRoxFQ0sTX4Nk+AmW/nyCL19WlodOlw6TnF+uaBUaLd8q7Cp0D4Sj66r2Yh9DBV+ywytILNN/E+7np5FwBrC9aWEouOfEGDN4jkhdSlu90oQN1TgJz+W4WaVLIiqLxa9MP1CvHfkD4mUQ9yWNkhFfFcMzgFTEQupFnciNd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(376002)(136003)(186009)(1800799009)(451199024)(6506007)(6486002)(6666004)(6512007)(83380400001)(33656002)(86362001)(38100700002)(82960400001)(26005)(107886003)(2906002)(316002)(66946007)(66556008)(6636002)(41300700001)(66476007)(5660300002)(6862004)(8676002)(1076003)(4326008)(8936002)(450100002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NK8WG9Nrfv99YrzGnhX+nRV8SUbl01+h+TBbOvMS+awH8v20zn/c8palzxLg?=
 =?us-ascii?Q?k9wGuwQxVaaQ8YvTC47g384eupcAbVdLAbmU7Pwh2Jd8UwYU3OgKURxBRC94?=
 =?us-ascii?Q?c18JCD0XzS55KHNonZa83QP9rB91j2GkQQXa3fr3ypEwhUDLn3dXv03zyURm?=
 =?us-ascii?Q?8Mj+KBLuppMs/WUkOM/igS3zeWD/nhSPT6D8+w6669I7VUzJM9RfGWlwpreg?=
 =?us-ascii?Q?FGhPXnylQyqe61Bd6Z5oX5SOIpbJ/qJ1kiRlx4cyYYL2tqbX5PSvX+kXyioH?=
 =?us-ascii?Q?itueLoIscycyuxOz1tqhuWA8hQRayYfMEHOyLxww7pzJtAuaZMYrYCAhpCJq?=
 =?us-ascii?Q?tGZzpDzZzgrKXdQByfmc589D4M3IM5PoxPz9HXLCNwm1zKbos+avuH/Pb5wk?=
 =?us-ascii?Q?vrqDFQiuU8ef7ZqGHWorGCGKGkSglIBXSn2LBQW0NXGkaOQEcj03liLxayBP?=
 =?us-ascii?Q?Ulw4YPUtW0WBZdP++IpuJxLy79Q89AGVa9jTyT6oOGwuN7ZFso5EYjRpMnQE?=
 =?us-ascii?Q?kArROGIhsi3T096X/V1TA30SJb2IvXesPuNU4vHR7ojUpStNkG8OD5+1+hew?=
 =?us-ascii?Q?FtKP704sRTdZv+hQyLjzbGR/IZZ0Gq55bO/WAlejTvcujrJP2jC175hEoupu?=
 =?us-ascii?Q?zBzwiyYKoeDGt42hifEaDkEadr5bf41kZvQNXcGveFg9VY+2LNx2e8bVhAcu?=
 =?us-ascii?Q?DlHsmaR96qL43+FaygzbcbcyMNA0nDw/AIx3cKoVdAUzaTpEPvgSv4OwFStV?=
 =?us-ascii?Q?s8UlDU/h7WyVhNOstAzA5i/zX5/iM/dColojsCr8/drt23SL1WVGJGOQQnLj?=
 =?us-ascii?Q?0B1FV4+YXSGfLlvnNK3NKtgHSAqYQQTzfAJRotASm9I7fx2P01iCzGUBX9JE?=
 =?us-ascii?Q?eo1+eYDrJ6hAX9Pb7wpq1cQIHf0dfxY/MNmmLrERpdqna1js2VoMaTXL+QPS?=
 =?us-ascii?Q?iovCUpm7MKj9tXpxNTYEFxJ98JzLwBDvdBqH5LDS46wCvCHppFzXsuZXVNJt?=
 =?us-ascii?Q?dK19pTJOH+npWcDear7NKrXSSN3QfW8JMuAz6kxEQfmfmWoJWAyjWj5YZpC7?=
 =?us-ascii?Q?oFpbQUwKOPIuaqM57l+203Q7yj634+VPi94YdrZKvtoHP4ddDiVcq00NfP3f?=
 =?us-ascii?Q?A/s4hxhS0BvwmJ27QgUSh6vkuNyA6I5IuTcyqeF6U34d8i1cQZZQvIg3myNC?=
 =?us-ascii?Q?C4SDY9QfUq/gJ5lKpVVz+i1wX0QqXj8+C/uW6QKzP8EscukQXNqF+foQ6FX/?=
 =?us-ascii?Q?wytJiapWmrDESO/JuFTvYHnGgmDqvvruoM7xRuBgxZ++wOCccGgDxaHskRUt?=
 =?us-ascii?Q?a1lI+FYkWb5aD6DlS/ov3ns0f+9PIfOy7RWYHO5mPSYfQgDDpyA9YrVRpCrV?=
 =?us-ascii?Q?y8lwxoxYb4zoMJtEvKDMDyjleHKco39E4EyJ3tKVwtL8xSIM/AAPVw+qYO/4?=
 =?us-ascii?Q?m8qPtzOCylDlGh1qLHdZvP1YuTpEGcbR05zy2YH0NHz9eW+TAH8An7B0DA/H?=
 =?us-ascii?Q?7I4MfR1xjKJaNcIRjSHX4bM8gyaUDbi5eITwI0nQiXez3GN5cme0lVhTa5fr?=
 =?us-ascii?Q?7S2IwXInln24OPZBZtnEwbL3brLx2RnsP8P8q4g3WUla+zTiMKvVyi6Idldh?=
 =?us-ascii?Q?8Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e9f4c5b-b01e-477e-a3bc-08dba4210129
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 21:36:26.5211 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIm8BuGwcdCNHlsjZBnpIPim1LantzzSvXxjl7vevK/6e/nezpLz/D8kMDy8GPEWMY77zAosHXKWllAceVFSoQg+09CSLQksdsrm+MtgvDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5068
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 33/42] drm/i915/lnl: Add CDCLK
 table
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

On Wed, Aug 23, 2023 at 10:07:31AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Add a new Lunar Lake CDCLK table from BSpec and also a helper function
> in order to be able to find lowest possible CDCLK, which has required
> MDCLK for the correspodent pixel rate.
> 
> Bspec: 68861
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 52 +++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 3e566f45996d..ed45a2cf5c9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1381,6 +1381,31 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
>  	{}
>  };
>  
> +static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> +	{ .refclk = 38400, .cdclk = 153600, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .mdclk = 614400, .divider = 2, .ratio = 16, .waveform = 0x0000 },

Shouldn't waveform be 0xffff for this one?

> +	{ .refclk = 38400, .cdclk = 330000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 360000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 390000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 420000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 450000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 480000, .mdclk = 960000, .divider = 2, .ratio = 25, .waveform = 0x0000 },

Ditto.

> +	{ .refclk = 38400, .cdclk = 487200, .mdclk = 1113600, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 522000, .mdclk = 1113600, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 556800, .mdclk = 1113600, .divider = 2, .ratio = 29, .waveform = 0x0000 },

Ditto.

> +	{ .refclk = 38400, .cdclk = 571200, .mdclk = 1305600, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 612000, .mdclk = 1305600, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 652800, .mdclk = 1305600, .divider = 2, .ratio = 34, .waveform = 0x0000 },

Ditto.

> +	{}
> +};

As noted on the previous patch, I don't see a need for the .mdclk field
since that's equivalent to the vco value that we're already tracking.


Matt

> +
>  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
>  {
>  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> @@ -2531,12 +2556,32 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
>  	}
>  }
>  
> +static int
> +cdclk_match_by_refclk_mdclk(struct drm_i915_private *i915, int pixel_rate)
> +{
> +	const struct intel_cdclk_vals *table = i915->display.cdclk.table;
> +	int i;
> +
> +	for (i = 0; table[i].refclk; i++)
> +		if (table[i].refclk == i915->display.cdclk.hw.ref &&
> +		    table[i].mdclk >= pixel_rate)
> +			return table[i].cdclk;
> +
> +	drm_WARN(&i915->drm, 1,
> +		 "Cannot satisfy pixel rate %d with refclk %u\n",
> +		 pixel_rate, i915->display.cdclk.hw.ref);
> +
> +	return 0;
> +}
> +
>  static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  	int pixel_rate = crtc_state->pixel_rate;
>  
> -	if (DISPLAY_VER(dev_priv) >= 10)
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		return cdclk_match_by_refclk_mdclk(dev_priv, pixel_rate);
> +	else if (DISPLAY_VER(dev_priv) >= 10)
>  		return DIV_ROUND_UP(pixel_rate, 2);
>  	else if (DISPLAY_VER(dev_priv) == 9 ||
>  		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
> @@ -3581,7 +3626,10 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>   */
>  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
> -	if (IS_METEORLAKE(dev_priv)) {
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> +		dev_priv->display.cdclk.table = lnl_cdclk_table;
> +	} else if (IS_METEORLAKE(dev_priv)) {
>  		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
>  		dev_priv->display.cdclk.table = mtl_cdclk_table;
>  	} else if (IS_DG2(dev_priv)) {
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
