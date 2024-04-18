Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4909B8AA20D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 20:30:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9622B113EE0;
	Thu, 18 Apr 2024 18:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D8FqOYAY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A39F4113EDF;
 Thu, 18 Apr 2024 18:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713465028; x=1745001028;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=UiHA5Tu5V1syUBOXbEfRNMG5wfuzxpzJiLsO8qOTUWQ=;
 b=D8FqOYAYleIHvfChEs30NgLfsdk8mjpyXyeokMNnkVhynXWXuCMH4PCQ
 2PGeK5za9lgAiqFNdFA0WXp6SMyZMO+trcb7YFmX8vIqAo2vF8z5ze65i
 ClLtllPlkrqVJZW39UE/D59RhMDB8WQVMrwYUUM0EH/754mMi/qj31rP0
 1mkNRRtHoVIyY+djRncH6oySTCCJIz+KhjbpCEZH6rMWd8Ee4ZtwaHx3U
 iKi0HIpX8FILQWhIq87EbjRqpuQgThx22SNksxIIgc6BtQJMmx60ZXm5g
 s43j7rvCPxBjctB7aTFCQtVSH+ZsFKECUJkO7M5O3xJHGDiAknYeGV157 Q==;
X-CSE-ConnectionGUID: zgDa1BCTR1SLgrgxEGtgow==
X-CSE-MsgGUID: BxFf7FTAScOahCCXeFf6/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9196701"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9196701"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 11:30:27 -0700
X-CSE-ConnectionGUID: qu4jrSaWTYOwkCDe+8Cwmw==
X-CSE-MsgGUID: MfIbm62SRGaRJ0oMGoHV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23100613"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 11:30:27 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 11:30:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 11:30:26 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 11:30:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dO35lGCzFXNKxbEX5/TSRqbPKV1BnUDJ/MDUewXjof0STB1CtHp4QoiJYqia9Xz3YpwIaRybVDNdvLaIU8uR/sNlJi4zcqNoxWZpZGMNjr7oER0Faq2GwxSR+gM11Hy5MhRyMZ+Q4gVHrCBYOjFX3OaI/GzbJUytv/YieSb95fRyUnHJhQzyMAKRgEfWikALTh+kgwki2f9wKVSxHAJdgzn846K2y7rb3Ek810Cw0fg3xafc2sWfBYaRER6tzEZFpohK+jtcVcUCLnDuh+OHij2e6hD/tDfa6DVL4hEa8mpKP9x5Qg+IKQAPCFsEsKMM09ygX1ZIpPRLz6Q5wYmGNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mAsnIzR47ZFP3RyI0JZ4Gt8xYx7nMDaecNjmPIKti5Y=;
 b=JSY/U950HyamnP6tGG5k0zo8K5Kq5lY35DggFICHOha+9DErktOOdnC1hh3ntLu8eS97neL9jVpVXni/g6dq9MBCkYS5QtyMjQskPZZ2ttU52veMhk0cruYLTw4r0HbKsJjbQngJdyZENILJJrbToUYaM/XfcIzhNUgYChmI4e42pFgysdizkbFcqlcLjWd/Py1Ql3PiID3FGKwHeuPo8e3rAp0cFWZkxdrD/8HtC7DcWxhmJNQwTspJKFsP7rk3onvaLCgl9X6HUFXw27YDY7LxPJQ9MeFy2yOHWSIsTIChesMNInUDo471kteH+7e4BfPGjly15yrmlnZ3MZ5AYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CO1PR11MB4819.namprd11.prod.outlook.com (2603:10b6:303:91::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Thu, 18 Apr
 2024 18:30:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 18:30:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <725c3580aae52bf34f32b93275cce6208dfd42b7.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <725c3580aae52bf34f32b93275cce6208dfd42b7.1713450693.git.jani.nikula@intel.com>
Subject: Re: [PATCH 1/5] drm/i915/dmc: handle request_firmware() errors
 separately
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <lucas.demarchi@intel.com>,
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 15:30:11 -0300
Message-ID: <171346501148.2007.15538095166602817029@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0092.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::33) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CO1PR11MB4819:EE_
X-MS-Office365-Filtering-Correlation-Id: 5dc86e84-9f0b-4f38-9713-08dc5fd59ab3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: baGkZPAVEYddvDhcePrKRJdjNGaMlEyPrw6JgB1AcynaYYaD71o6HrrDOYXxjGnNwekAvAofEgPPkkMar7XLjZUVavTz+4lmxhFbYSkAUwvVqxERRbiiM7UVMwBdEr5pF/F4l+izf8oXtCHP43H1biQWYS8InVCIh4DCBt5DdnYhphNVC7cpXkrJTSOZMBwe/6hNYDJUxeg1QR9kRKrvqz9/FwcpODyufTxvXAeDRJSEQJkU3kfCO2IHAcdZJv4il2cAmKyZUHvcSYlpLkYnaPNPz7WfwRm0XjfvAMuWIjXEom+Douk28Wr31oRJug3FoiVh/5T62AJyKapsHtZWpG9j8b2eq2kBhZDWyyQ43MYdIxqIuwXwt3f/f60zn88lKKRmkwrC2TjPlNc6OnnrZSwSI+tSRPh/C4hKUxAjxn6+KrdAcJ6W4eU5LVvbm3sKEj49eF0n79LL2mwrNQzHrvky6AIGL6n9/V4jDua1Y30LADiZVkWngqaI73icT5D+vl9gb5QGfhGwnUoiLRguaB4WTJvHmVzYfJlB8rL1hcN4UdvGnGV72iS8FOluWPVLP5ZOS9W+NogSv+CwwFIxlSzVdhMq2Dh15nTFsusn+zMOtu0fVe6g1hRl/fHvGtx7sqr+w2h7b6TAPX8xlwmEHTmBKKudUV2kQIvQTpBdTxU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVRlbjQwaUExRU5SQ1h0WXJRbC9XSE15N2U5UzFwUWZGTlUyYkJJLzJ4c3lE?=
 =?utf-8?B?S2FBZEpCRVdXbkFBWlpvZjR3enppcmNjRnFoS2UyVTlscUZ1RWFvSEZCT0hh?=
 =?utf-8?B?M3h2dk9LMU5QSnBwT2hQcjNxblRYR05qT2h5Q0FFZDRvTGNNU0VNS2Y5eW04?=
 =?utf-8?B?MnZUbjUrWm1BWTZ6Q3h5b2FFZ1FwRGRndWs2cDBQZFFsNWQ4dHVIaE1kaGZY?=
 =?utf-8?B?TXlyejlkdExvRUhUaE9KQUFCV2M0ZzIza0FQaGxqVnBIc2VEM3RXbWs0NTlx?=
 =?utf-8?B?dk4xbUlWWEFWenVWTmJoeThrMzdkUzVLUjduelJ1dlVJRmVzOTIrbnlaNDlL?=
 =?utf-8?B?a20yU1hXTXNpWUVLSEF6RTNFaWg2SXRWdDg4cThEVjNaajRjdVR4OHNVczJj?=
 =?utf-8?B?dzlLOGFBLzEyblhabkRkZDVVMFZTWk1LemJCdndNSGhEa2U2d0ppanFuWDBC?=
 =?utf-8?B?by9kUGJDdi9iY25rR2pyVHN4d1lkbitQWXpacEw0SzQwQUEvTXY0ZURkTzVi?=
 =?utf-8?B?VFdjcm9ITFFVUnlvT29wL3VmREZKYjhEcTljSlM0L2QrVC83eUE1RGdpcGdE?=
 =?utf-8?B?emxiTWRyb0Y5T1preUkrZ2FmR3loTGFrdVphOGdmMlJKcXd1OHlFTjlONHVC?=
 =?utf-8?B?OHlKV2JTeE0xY244Ri8xUFhBQ0tsM2NCZ0c5TEJTTE5JaThNRndXNlE5Qmd4?=
 =?utf-8?B?U3c4QWdnbGxEVzF0WUZlUTVLVWUvakdxaGk2UlNka0RmQzdkeG9hY0RuWER1?=
 =?utf-8?B?VHFWVGZScnZha3VhQ0tBeWY1RFV3Y3BzV1NTZ3o5MXRNbjBrdk9WWFhZMEJx?=
 =?utf-8?B?SXlxY3dpUHlnSG5rU0EwRTQ5a2pEdTZHVkpYdHorSzVRSUxoUnJ1U0FTbjlK?=
 =?utf-8?B?bFVkWG5uZXFyRDM3WWhETHc0bVRhVHVXclJKTGpFYUJacmFwTkxnNTZtTVNB?=
 =?utf-8?B?bTF1NStwRHltZVdsbXRFTWtvSDlwUVB4eVl5YVhQOUlWUWY0djlja3hENzNi?=
 =?utf-8?B?VlZMdmR6WUlRRnVqckFiTGQ1S1pJajQvQytvVTdkMzBLZUttRUh4ZTFUcG5k?=
 =?utf-8?B?SjJ4a0RMQlRZYzYwcm1QdHUvYU40TUhPUVF0Tnd4WXIxQmVOL2lPeFNEMHBr?=
 =?utf-8?B?MGw2bHdyaVBXWFNkais5WldnRHEyQ2gwNUd6bGkxeUQxS2FCMjI2UFBkcXlG?=
 =?utf-8?B?d21DVUl5cHIvSGw5V1h4MzUwaFdaL1A3dTZobS80blFaMUpYRy9OdUYrUjBM?=
 =?utf-8?B?YUNpTnVVVUFua0djeU8xcDVQeXRsY1o0NlFYY2pjZG9sd0NYdDhwNTVOSDJE?=
 =?utf-8?B?U00xbFY5YWtHM0h6NGYydTVCUlJKT0FXUWJtS09IM1U0cmYvTmFlTGM0bUt6?=
 =?utf-8?B?dXkyZExDOW9pc3NvOEgxVHRWRUxFMjNJOWJnOWQxaTFKdHI5b2trYnc0OXor?=
 =?utf-8?B?aEdnL2psbTgwU1J4RGRPRllFNG5PeDN2MUN2VUZ2YWo3T0p0QS9LWXFETFc4?=
 =?utf-8?B?bVFDVUZjSHlvclhFRk5qY0JVRklyZnE4RFRpcTFtd3EvK1phU2VlNlhBdkFT?=
 =?utf-8?B?NDdRSEl4SGJiTUJTRExiMFF6dlJDTFoxK0ZXcExtajFLYTlkYXAzbFY1aG9D?=
 =?utf-8?B?NXdsYjl2a3NOaU9hUUVUd3c4MkxCaW9RWm92b3hlb3RQN3hCTDcwYlk3NXNt?=
 =?utf-8?B?QXNuOGxnQkhNSzN1dFZoWWRCM2Q0b3U1WXZrTk5lekVXYUNpNXh2UTR4N283?=
 =?utf-8?B?SElIWDBtM1NoSHd6bVpnaE1vMXFjaTJtWjZGaWhuZ2Z5dmtIdUVCQ0VwUFdP?=
 =?utf-8?B?UCs2TXVvRTRFN3ozRHVWU3FXRXZvZ292Qk9icHVTWWtBRThyOE5Pd09ZQXFU?=
 =?utf-8?B?a3B4NXYyZU5aaHVXU2N1YjJ1K1MyOEx0cDJuNitTa2pHNkErRGV4clVOc2pW?=
 =?utf-8?B?U3dyRUxWdlk4c21PWUxTOEN1ZmJiOVZCWkg3SHlRWGFOTjV1VzRQbWNpaVdN?=
 =?utf-8?B?RWIwNm5nWUE2RkcvYUhKOGVoSXRSV2pSOUJ0Z2svTXNjaU9FeXBNSnZ0WkZx?=
 =?utf-8?B?TVFxalJUR2VIZUdrNFZLbzc0QUEzT3IrazJkTWFLdlVsN1IzOFFQeFVreXpn?=
 =?utf-8?B?UE5DVFk1a3FQT1h5RDFLRzdKTjhPZC82VkNpbXY3N0RNb0g4WnBNWm1VNUI1?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5dc86e84-9f0b-4f38-9713-08dc5fd59ab3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 18:30:20.9284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pf+Cx+tfY44UdaLB0qlc5wQfqABeVbnnVMRJKWlnEti5SQFSNQw9caVV2b0FBXQVLAIn2XYDzMRp5TTt96VB4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4819
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

Quoting Jani Nikula (2024-04-18 11:39:50-03:00)
>Clarify request_firmware() error handling. Don't proceed to trying to
>parse non-existent firmware or check for payload when request_firmware()
>failed to begin with. There's no reason to release_firmware() either
>when request_firmware() failed.
>
>Also move the message about DMC firmware homepage here, as in other
>cases the user probably has some firmware, although its parsing fails
>for some reason.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 11 +++++++++--
> 1 file changed, 9 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index a34ff3383fd3..65880dea9c15 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -942,6 +942,15 @@ static void dmc_load_work_fn(struct work_struct *work=
)
>                 }
>         }
>=20
>+        if (err) {
>+                drm_notice(&i915->drm,
>+                           "Failed to load DMC firmware %s (%pe). Disabli=
ng runtime power management.\n",
>+                           dmc->fw_path, ERR_PTR(err));
>+                drm_notice(&i915->drm, "DMC firmware homepage: %s",
>+                           INTEL_DMC_FIRMWARE_URL);

This could also be:

    drm_notice(&i915->drm, "DMC firmware homepage: " INTEL_DMC_FIRMWARE_URL=
)

>+                return;
>+        }
>+
>         parse_dmc_fw(dmc, fw);

Maybe also remove the now unnecessary NULL check for fw in
parse_dmc_fw()?

>=20
>         if (intel_dmc_has_payload(i915)) {
>@@ -956,8 +965,6 @@ static void dmc_load_work_fn(struct work_struct *work)
>                            "Failed to load DMC firmware %s."

Should we tweak the message to differentiate from the previous one? At
this point, we know the blob file exists, but there is a problem with
its content.

I think the patch looks good and to me all of the above suggestions are
just that :-)  So, with or without them:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

--
Gustavo Sousa

>                            " Disabling runtime power management.\n",
>                            dmc->fw_path);
>-                drm_notice(&i915->drm, "DMC firmware homepage: %s",
>-                           INTEL_DMC_FIRMWARE_URL);
>         }
>=20
>         release_firmware(fw);
>--=20
>2.39.2
>
