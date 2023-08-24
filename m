Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E557874BE
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 17:58:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFE310E595;
	Thu, 24 Aug 2023 15:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E3910E579;
 Thu, 24 Aug 2023 15:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692892721; x=1724428721;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CzWtaoCB0t/ffd1j1V2N9g10IrBB1l6sZZGXM1qIXvg=;
 b=mjU/C/j3j2cBKIsnNrQ45O3aOTeJ7KncRYirlOoBDWJ4hJ5So+240oAH
 neykFx9Y4PL90OZouTcWuqtVTsJ9/z4X2OF8OyvzsIALS7RboIgoKx3JU
 WnSPvB90PtIeSbgwBMUMWyQ2KSOv/00pN1dJDBCw4y1os9sF3/Uo/wzub
 kJGLQyL6sMqymAEYKyfpxBCs1fHQrI5rZHBOETlPHl5/1KtPtCdJQROhB
 qWw/rUHO6Vtvz6FxZN8Jxg4FG5kFWHEee1ZQxpTudNrRjI+qmGHdgQnjE
 JVZ6KKR02EsTowyfMwr5nMDSTywEZbbKq/eRVk4lsTG9hmAqw+MRGJPVk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="374455175"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="374455175"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 08:53:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="983763278"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="983763278"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2023 08:53:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:53:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 08:53:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 08:53:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 08:53:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E737LrJBdFCoKFyM2kq0DCKt51NY9cQ7oJB4KlFJpHFUKmB9SOdjz2zsMDDVceWOgJxYAAoUUTBTkZgzzwDqIBfSBpoHMbILF0N3u31qHFiyqhpsVL6GlvPjSC340IB9UAmQg9SJSNemIldELsXhxY2AIiWjHTue0flYNQSLmBNADhvU6+wO86zB7kEK28mOYPkxp3Fjno/OA91Pqv5AJU+AuXz2dTsLEiT/md9Cen/+phYFEwj+g4Oli6iLa3dI4rei7Tw2g8HMcomnGd1yHKupToMw6BWNTYKC7+/dktF7l1XEFWVmucEDqgUkwZ4m/10G2689gLq62HBOQkKVBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8g+AlHG8CGyrJVhMCvbmURxKU/TUEnP5+toGBfS5vD8=;
 b=Gs9XvHPB4Grb4n7MeBzFQ9DFKemKzTOl4G/5mmsBNYfp3VKFmF33wuXZ1eotl3QbORyQUesYRv6a42MmopL7NxOUM7n9PStsJPwIJ5rF278+uqJZvokff71gC9TzDQ412ubL88gdxSxQf0l7AnolSAuakPSMMDm6nC8opFF97sXlwbP8m99asnUa50AhE46I9kqnnSLmzVKXYUW9ZfixNS0CqRH23QVb8JRMV+wx/y/1M2FTleogduLtUgmpb0C2b13rKr7eyKt+Hjid2nPXlQrgFGgrMjTNCRAmfHN6NnGrTYhwGDdYMcSCF94x+YLxLOOGtp+jXEM6zgDhO84gsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 15:53:47 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 15:53:47 +0000
Date: Thu, 24 Aug 2023 08:53:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <lebkojj4xi4opfrmnbtws775cb65bl26jwlcc7w65obtfabrho@pttf5pd5iiuh>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-24-lucas.demarchi@intel.com>
 <20230823194936.GE1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823194936.GE1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR03CA0046.namprd03.prod.outlook.com
 (2603:10b6:303:8e::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM8PR11MB5686:EE_
X-MS-Office365-Filtering-Correlation-Id: e26ebb84-f863-49ac-47a9-08dba4ba4d43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sr86X06ufYYN9Zw6yjvwpUASaUOKVlpEOhYPN1JLOcNgpScmNOUeCx8ZYyC3PyWnwpB42SB3TM+gVL9GDyz+PkCo6jfymvX4E58hKTvKLp8dVhgTQL/uiGmUf/5fNS53K0Ob8akHvIcdOtdfh+pCwPy9/oqyViTxOnqylr+YCXkH9FuwkNXvz6jwd7Eh4AwTpeMVK25QzfuOTSXJr6NDP8bklCCSpjF4d4Qp8qN+U0h0gQoV97S7sAUfA22bT/YsM7aQUzIrpSRKu1HuL66zOOH0r0Nfpzah+cK55JsSWdD/GxdswUPEpLwPU1tCb1fCNNQ1E8CmMj4Fyf29EWt6UYLB+Js8PHlICLAKoL0A69agkbtlBhgNU70ucpWDwk7GUI0XFFHZDmp8/Mas+QGilJjdOcNsmfcu+bf3PUSEwpUA7LrAZfjtgiwAWMAblBEeIohPtCqhsXOuKMsXSRzpQ2ZvdvRfspHTInzKMTjzc7mJx9c+OFgUgiKMO8sOilpuV6DH3IcpQ9gwD4XmqP01VFw71WX3KW2BfuAlUwd7QmaQ6MG9TKN5VRBOQRtNU+fR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(366004)(39860400002)(376002)(346002)(396003)(451199024)(186009)(1800799009)(33716001)(66946007)(66556008)(6636002)(316002)(66476007)(82960400001)(478600001)(26005)(6666004)(38100700002)(41300700001)(86362001)(6486002)(6506007)(2906002)(6512007)(9686003)(450100002)(8676002)(8936002)(4326008)(6862004)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DaxA7DS87zauj0e+oBjMmS0bjQfe/12ihFUDqcLEZx0+AijnTaSmouPb4Iku?=
 =?us-ascii?Q?yIFn+k+8j3givzOKNDmqnIxDE0qdpKrycQc6VKj0V5hx/lFxb2tttnmnxgk2?=
 =?us-ascii?Q?UWXojyffW7690K0UdNJ255cwL58IHq3YbeSGZWOTbbvchVAKYTEes/RgKes6?=
 =?us-ascii?Q?LYB4XkEHb/k5A2x2KpGy3L4KDxP9sxqnsYJjzi2WWXjYcs4puuj1oiTLLpDF?=
 =?us-ascii?Q?qJDGlxIiF1+7qLy7evjJK06Dby5de68Rz8OwQm4xn0YveQ+h2cpiLLOulPDc?=
 =?us-ascii?Q?B3pqFbzwz/a8XI/5RxaG1TxTrdYK6h3e2ju8do+eO300Gr+201wEy2ASmUGg?=
 =?us-ascii?Q?zQFAF7OmfzBJtxxPvcMPuQlFwCsuompQt2KEjlFmEic1RRht9zB/uWvaT6kC?=
 =?us-ascii?Q?AkGNVI8mvfzydxMEQ0o12NOSxkktYZGDpfoaf3yXXJUhu6h2yV6KFJKuXawC?=
 =?us-ascii?Q?eiiWej3B0npx29otRJ1g7gk9LZ0Bj9Vv00JmEF6ZW850iDEa4F48sdFDX9JV?=
 =?us-ascii?Q?5srpbqTV7guowG17784Y3wwdGQx7s4qCnrZwTYl34dCGPY/pW3cbo13D513N?=
 =?us-ascii?Q?cvY9/3IFaVyoQgECFtGc+SzMQxPatjSfsGh4L2Gqao4YACDr0yJTK4w+6TOI?=
 =?us-ascii?Q?LvVO0FzIygRIzU2NNe2UU+wnqr5Mi5PGFftZ7iGUIS9Xu4HbKho5DgFMMjSc?=
 =?us-ascii?Q?wbNkyBaUhjAyc9wVZPcUHPL9INHxR8egKBko5G2vTBM8b+VP5t4pdxRfETVJ?=
 =?us-ascii?Q?mhpC3ZJsLIUTQdDHaoyGxsE3I5bhTyAqLM2GVXMcxoXNecz6vYymTG8RV7mD?=
 =?us-ascii?Q?p8o2VvOXY5FM4PR8r2Kp51cG8m2SFcrftX6hkAsew91L1ZNxAaYoQpCL/oQ8?=
 =?us-ascii?Q?PBag9uaFMSdpgSjGITw0rzd31EDKCVCXdvMpoWfIV0Ley/p6a8X+pT0jR6Rv?=
 =?us-ascii?Q?i6bqGQrWxBG4bGsLeQ6HhkPcdsO230rK3p5fwKBBqp7bdpQ+NNZWXfQ2PA/3?=
 =?us-ascii?Q?tH0MBpOr0TAJDSqoEF23iALlfiIfvW3uUZuOeNSnhquz9ir5SIJ+0FuscbT2?=
 =?us-ascii?Q?AposDCLYVQZmu2B4Fidg5Z6UKAKBW+3Q/SnnqHXG6mRwmWf0dLU53PPwWoHn?=
 =?us-ascii?Q?E/ArRSr6fNbLP5MOzVKw77hD53BA13OnKce3a+BA13X5FSsck9PWZNG0P141?=
 =?us-ascii?Q?nwbiR7cF2XnQUOm9bogLsaXmAWtR/Z0IaFhvbJF0foN6I/DWeSNhkkzV9x8J?=
 =?us-ascii?Q?MmcqtMJ/JKZ/FUeSSPc1ukSRkOOyzv3YKK077RS14veJKvjbZ1elh0dM5xRY?=
 =?us-ascii?Q?AhITgvSoiJxkaxzDgOsyb9uAz2xTfrYhb3py7tRpyE5s9iARmaxzex5PNyV2?=
 =?us-ascii?Q?XY7/OHOkjcAftHEl/KbhnNINQf3OBwvOs2RtWzMWu4ZoGYt0DWgowkSD9Z4j?=
 =?us-ascii?Q?g3sV9UCG4wjIPSiuAPf8Kr+7cR2et3Ch4LJNHY75H+a/aMjRo0MYp9fCvtTJ?=
 =?us-ascii?Q?03ucR3A6Q27GytqCHRDvff30TheWbuR95T7kW22cGyS0WmZ8UXaa+LhIQSMv?=
 =?us-ascii?Q?dtl91KyBXOmtTwVyzosQL1Xl0X9Z/4V6rrSyYTSQlf0BQ0l3/7gI44zrqsBX?=
 =?us-ascii?Q?NA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e26ebb84-f863-49ac-47a9-08dba4ba4d43
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 15:53:47.2354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hS4cht8txwsi7fViItCkDOK4Jch62bV/wZW8rwnq7RyspPvzmMeJsyYNKICJWCP74JvzU4eA9D+CXXiACwdOXWKMsrcJ8jrIeIAVgHnpxhQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 23/42] drm/i915/xe2lpd: FBC is
 now supported on all pipes
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

On Wed, Aug 23, 2023 at 12:49:36PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:21AM -0700, Lucas De Marchi wrote:
>> From: Matt Roper <matthew.d.roper@intel.com>
>>
>> FBC is no longer limited by pipe.
>
>It looks like we lost the part of this patch that adds this to the
>xe2_lpd_display device info structure.

ack, but I will just move this patch first in the series so when we
introduce xe2_lpd_display we can already add it.

Lucas De Marchi

>
>
>Matt
>
>>
>> Bspec: 68881, 68904
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.h | 2 ++
>>  1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
>> index 4adb98afe6ff..6720ec8ee8a2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
>> @@ -20,6 +20,8 @@ struct intel_plane_state;
>>  enum intel_fbc_id {
>>  	INTEL_FBC_A,
>>  	INTEL_FBC_B,
>> +	INTEL_FBC_C,
>> +	INTEL_FBC_D,
>>
>>  	I915_MAX_FBCS,
>>  };
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
