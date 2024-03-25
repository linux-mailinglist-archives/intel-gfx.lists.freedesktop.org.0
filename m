Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC26188A503
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 15:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18E6810E943;
	Mon, 25 Mar 2024 14:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nUpjfUv9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1302210E948
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 14:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711377960; x=1742913960;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=oamkn+tV47obeppSduOj+b0Gm5o0H9gh/jekH1V2VB0=;
 b=nUpjfUv9ZB8BBKXcxqU1UdNNxpTdC5RDmsS9ZdC8uZ+/ZvUsFX9wm722
 tltsHrOCY5OQxIUHhrehaDef4ZcW/ZrDiZYlJB7AomrhTfCOSf6ckNY+r
 zcisKr5j/DldVB0RDwBe81h3lF/DA4kGhlsVLa3+HK58yX2NXO17SDrtw
 L2hmcjEESm/TmyBQdHjXSwgbhhJfbdCUC5efbq9Vu7UZtqES1/04RQnMu
 i1WfYAU8z2kBevFoDUPNhp2I3xWfcoVqC/Yws5cLl6HjJTMZiFKfiZvgi
 BusPDmUKpqMWKqOkdWgLIKoevkdiyDiHx5L9AGzKhw1DM+zWOQmXGtLwG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6247169"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6247169"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 07:45:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="20321851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 07:45:07 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 07:45:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 07:45:06 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 07:45:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKOi39CminxlCzSP5TJeAvE0GgDDBpoZqQJd5UBLnN13vJF5I0gdx+R8MlSeLbaYz/3pmsprPjNNhliPmz9CV3n3uw+2Tr+wgzEoIDLovmvz28ON9qQH7qMOttY15wssN46DUUOxTFcPSin7BS1aO0EBx0ICe16BhguOlH0+KqbPlFo3caR6jITX4Tso1/Jg9Zi+E2NjqeNA6Wxmhy2CRH5ctEw4Ke16ifa5/1zpxtV9E2XQCFs9EI5QxGU6DbFQvmgmtcliXt3/UYSZZt2J4jSJtRkj/8K8YlG/lcbsl3ibTczhBpyJ9mrzxPdPyfMHGVcH9l2kQy/+7jOsKY5wlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Opax+HmGSIAjNj6Kt3a0eXGI3iwt/7H1YvuO5tihcU=;
 b=WOUCiK0buqPv+cRNP72fqSEQCyCWxagxqNKojGXlnSoq2h5rgkIPtfGyJ3re32GNZLarVJHXjaqbtjLCIU+5CLqHMRpTAebOLHeq6LyzD8kuSTuMfSgbRLjfupPGalLOeFwdpOqI9X6KGYg/SNcA+vI5XKtNphWofYW9WMgnYlK1cXPE/NzCejbrHIDNlCzTjzR5XDru5UEMtjuh1fxKUFFzoZW8Ci7ICCfqQbrHqHPEO9fdWkOWzCEkrmXBGkrBDSuEVMAKbprngnq3mxmLFtRu0E793oabbjtT2AGP4ja4pJF//RRp7VrJ5jqeuRuXM3Go4suYCcKd6sSdBJPMQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 14:45:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 14:45:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Zf3DuTTsvjXfdOQE@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-4-stanislav.lisovskiy@intel.com>
 <Zf3DuTTsvjXfdOQE@intel.com>
Subject: Re: [PATCH 3/5] drm/i915: Use old mbus_join value when increasing
 CDCLK
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>, Ville
 =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 25 Mar 2024 11:44:59 -0300
Message-ID: <171137789980.56348.2594261820316637553@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0087.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: 911409b4-7722-40a9-3990-08dc4cda281a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4vUgg5EQVZRwK1xhHun6kRvLCHuaAIBeMSemvLaMuz89YPbvIZ+b1z00/dYv6sV5YkkV8XVvMyXUFxHLqHPSlXjbNnCqjTbikvpq6FYk+GzobZpubTG+SmoSuZ7BL0epgZ2z+/5yPFsUVizWyQp97JiLQZHFVwkR3QeddinOcPjfQI8RL/MmLfCf5V5jrKFv2/G0CHdpWYPJuKWonYxvVqdpjZUqSGLP0Z5/E4qPzp+xpmYWsVcIm9MB3BlBecKIbcLbiC5CLLBySi/A3EF1CRkyNlwAsd/elQlSX5bPoqyssw5RCjZoFZVEgX2sBCSKe52gAlg6MXooUuR+6HVzsbeb8R3WaRwrVeOqFrwkKuAm0i58dW7d46GMCWLYBG/eXiRiCUdDqN14TRsrar+q6JLaChzDX7uodgo+3LiHbl3D6lO3RNO86H4yLOSq6qfg1iEBF7jXon0APvSUmRpM7MswJ2QlFtChUPQ69uRPtNh6pyVCOHay9XCowkMg7XxiNfVlcGis4ec0bj6TPZ75sqzfb3H4Ppbl6dXeZpEpVbSu7/iTXSvfQUb9rxfPLdWgLDvZzTQCc4yo0bVc2mmXLDvHOMk0rpyTVwWdZPCTWrwRbQakRi6Jod31jEsuh6RdjsrhgKyoeJzZe9AJ81lpW2YtWQpftdEMumhHl4zO7kp2dJgnKTjLfd7lTNnxZnI1stcN7YNfbfy9zXfaGoqYqhRZxdJNCkfcqm2Bvu23emg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(16122699003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGNzVkcwbm84TS9FV2RobVVSNFhzeTNUOXg4bmVBZzl5a09SKzR2TFlXQXB5?=
 =?utf-8?B?bVFid3lGZ2w5b0I4UUNNaGVhMlpqM25SbU11WjFJQUZvckJoRWwrRHFVd1or?=
 =?utf-8?B?b1M2a2sraTNjaUthWG1KZUFlTDJQeGtmc2ZHN3o0V1Z3ZDdmaUdaQk5zUFh2?=
 =?utf-8?B?VlFpL2g4allzY0J4dHpESkFqb3drL0EyL2hsQVBsTDhaanovM01HUmh0WWcz?=
 =?utf-8?B?Qis1SERUUjcxZjR0YXgxWjVhV2V3MnlhaVVRY1J3U1BTOWdFMXlhbjZQbmla?=
 =?utf-8?B?QkJ5L2lkVWh4RkhYRURTMUVUR1c4VGkvOVhnLzBNZTRmNnJmUXUxQlQvTkk3?=
 =?utf-8?B?SlVMUHFMNDg5cWUwRHoxQnd5b0kydzNLa2NOSTZjR2dpSTRadk9JcW8yVHRS?=
 =?utf-8?B?Y2pkazZwWEl4ZDJnajRjWDJOWHVOY2pZd0xtbWRDVlU3R3AxSU5aY2V1VmFH?=
 =?utf-8?B?Z3QvSmZOcGRaQnY3TDVlbTlaQ0RQMndUVGNBMzJQZGlDTktJeXFMa0c1aDlQ?=
 =?utf-8?B?ZjMwZ2N4Nk4vL2VVRzlLbHR3VnR1SGY5VXlYNTcxRGs2UkhOM2xTSGpQT1ph?=
 =?utf-8?B?aXhITTdxa0N1c3ViSXEyQWFOY1FDc1pReGRobkZrV2NrUnJDOU5Fc3IyQWpV?=
 =?utf-8?B?OXI5U09SUytWQmpiZS9vbUN3dGtNUHo5RUkyK25tclFjKzZIQXFhKy9uK0N2?=
 =?utf-8?B?cE5PdDZVZnRIOWhtR0JLZUp2aUxLQkpnUXhqTVdrZk4rVHo2Rlo0RDAwV0Qy?=
 =?utf-8?B?SzQ0RWpvZm1xUWMvMlVsQ0hkQnp3c2YycTBNWUJpZUZWWkRqUEhnRUZUZUlh?=
 =?utf-8?B?bHlEbFpJYXFlZDhsSmFLdFJ0Y3dSaytKcFJ4Qmp2SHFRTjkyK3pDUkZPZmNl?=
 =?utf-8?B?VDNRNDNmNms2eUpKV3hFUGNjZi8veEVPTWN1ak9CSlhYNThOMWlzd25wTEhZ?=
 =?utf-8?B?cHlHQithdHpIcHpJOWdUZlNRZzV1MWZPaGhuWTdnRFJiT3ZlUTB4VXBkL2hJ?=
 =?utf-8?B?YTdKYU45ZzdNMkc4V3FnKzAzRk1vNkIrRWw0VTVyY3AxclNkOXJEbWxlbVZz?=
 =?utf-8?B?ZzZoZ2VLMW03alp2T0NvWTUzZ29nNTJkVEtXbjRLVUFyOXZJdDlpQ3BjRXpR?=
 =?utf-8?B?YmFiejQ2dGxpUm1LSWhhWXV1TzBGa3RTZWFwQmYzeENORW9GZkU3bXJiMlN3?=
 =?utf-8?B?cTBvNzUxS3FMUHpZS3dkUUNyL0huWmJmUnozSi9LK0FwaUQxRnhBRFZWbENy?=
 =?utf-8?B?MTBPbW91aWExZ3pnOUdSY3dqbTVXYlVKZEltZzBDR3FsU05UZnJITmM1RjR1?=
 =?utf-8?B?QkU3WndzdFVkZEFxd3lqcEJ6ZDlveHo5ZGNKRzk3MnhZOEN5aGJDbTc5VzNx?=
 =?utf-8?B?NGg3R09hTDJqdWc4R1BwZHVPZ0JlekpHT2g0MkhmWnZCNnA3UHpJYzVkYzZQ?=
 =?utf-8?B?VjdvUEt1dDV0TzBqQmV6QkFLKzZPMDk4WDE4M0gwdHYvS0JGUGpEUnVoaDdj?=
 =?utf-8?B?ZWRBbkhRMHdtS1dOY2VpQUI5b3ltMjZlaXkvRENUNFJURnVsYjZtL1Nhemcx?=
 =?utf-8?B?ZGgwVzlQNEdEZXAzdXdwejVZanRrSHRxemtiSURZS2JaeTBJSnJvdXRncGpj?=
 =?utf-8?B?Q2xUMW53cHBTK1E1M0xBd1ZIeGNkUmVBVTVKeDdDaW9nSER1UmF4WjJqWG83?=
 =?utf-8?B?SDdvd0ZwUE9pcW9Pc0VQRUlGbjlLc0NSdGU5R2ljZmdxT2ZHeTZCNjd1b2N4?=
 =?utf-8?B?V0FFN1M0dllPbTVGVTFEMmVLVlJPWGNLckJRMldackNvNzdiOEpMUEZuOFRq?=
 =?utf-8?B?R1FJdVFrZGlNN0phMU1SaVdRSENwODhxb3BQakdydG4ya1BWa0Y4Q0RxZ1Ez?=
 =?utf-8?B?RmF6dlVNd3FKUzExd1J6NUF4WXgzcUJKUW51eHhEY3czVUp5Ui9pMndTRk1P?=
 =?utf-8?B?L3NDd1ZHZmw1OXJQTUVpUnZiTVNtRFBFSjAyY204UFhMY1hneTJtSlh1TUVP?=
 =?utf-8?B?UGV2RFBlelF4Rlo1VHF3WnRlRENET09sMGpPRU5iNjB2R2xpQVIrS25KOHZ3?=
 =?utf-8?B?ZVVNRytnWk85MGZGUnFjR1kxZUpXaDdGTkdxQ1paa1drTWpxTFRKSXhOR1Rx?=
 =?utf-8?B?eExDT05NWUoxM01SdmhpOFJUdHNHQUgyODZ5Tnd1VnBURXZwQzF0a0pmWHVp?=
 =?utf-8?B?YWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 911409b4-7722-40a9-3990-08dc4cda281a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 14:45:04.0263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a2YpSC8QzVRwJ7O1PvHP2ZU3zLKVjaNs0qPeC2lIBoqET5PdkcvJICNhqT7NakEQJD6g91xOBAQjf7EdQ4NPug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
X-OriginatorOrg: intel.com
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-03-22 14:45:29-03:00)
>On Fri, Mar 22, 2024 at 01:40:44PM +0200, Stanislav Lisovskiy wrote:
>> In order to make sure we are not breaking the proper sequence
>> lets to updates step by step and don't change MBUS join value
>> during MDCLK/CDCLK programming stage.
>> MBUS join programming would be taken care by pre/post ddb hooks.
>>=20
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
>>  1 file changed, 11 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 31aaa9780dfcf..43a9616c78260 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_ato=
mic_state *state)
>> =20
>>          if (pipe =3D=3D INVALID_PIPE ||
>>              old_cdclk_state->actual.cdclk <=3D new_cdclk_state->actual.=
cdclk) {
>> +                struct intel_cdclk_config cdclk_config;
>> +
>>                  drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed)=
;
>> =20
>> -                intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
>> +                /*
>> +                 * By this hack we want to prevent mbus_join to be prog=
rammed
>> +                 * beforehand - we will take care of this later in pre =
ddb
>> +                 * programming hook.
>> +                 */
>
>We're not doing anything to prevent mbus joining to be
>programmed here. It will simply not be programmed here,
>which is why we need to use the old mbus_join based ratio.

Hey, guys.

Just so I understand this better. What I understood from the
recent discussion was:

  CDCLK programming should only care about the current MBus joining
  state and not consider the new one in the current hardware commit,
  which must actually be handled later in the sequence by the proper
  "entity".

Is my understanding correct? If so, sorry for the confusion introduced
by my patches.

My previous understanding was that that the CDCLK change sequence would
need to consider the new MBus joining state in case we were in a modeset
where mbus joining changed, so I added that odd-looking condition in
update_mbus_pre_enable() (not moved into
intel_dbuf_mdclk_min_tracker_update()), thinking that the update should
be handled by the cdclk sequence.

--
Gustavo Sousa

>
>I would also include the actual function name here instead
>of "pre ddb programming hook" since that's rather vague.
>
>So this could use a bit of rewording. Otherwise lgtm
>Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>> +                cdclk_config =3D new_cdclk_state->actual;
>> +                cdclk_config.joined_mbus =3D old_cdclk_state->actual.jo=
ined_mbus;
>> +
>> +                intel_set_cdclk(i915, &cdclk_config, pipe);
>>          }
>>  }
>> =20
>> --=20
>> 2.37.3
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
