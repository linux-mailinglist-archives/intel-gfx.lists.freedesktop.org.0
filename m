Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E1A8789E9
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 22:13:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0368810ED3E;
	Mon, 11 Mar 2024 21:13:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QO/6F+iz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFA4C10ED3E;
 Mon, 11 Mar 2024 21:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710191619; x=1741727619;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7uOM5Fc1j2tEICeEcYpzyhFyMo0pqtCUHZaDwYAUQ0Y=;
 b=QO/6F+izxp/hjM57qWqd7dwaZzF+zXzPYzlWV/NBoGe4RMyi1ZmUOzN3
 +C9N7c143RCdZ8brFtg2GP53lbC+zZANWaYYzvTa4m0Ifv6Pg9dl5GWjR
 z42YsNBp+0rbEp/nNMCSb7XVdbfLoInR9V4Jha0HyOBXGlgbx1UNwCkUq
 mGGwY+PAfAgKaANDKFz9IH9TAeJpFdpUEGYGqSs5lmF7TIM7p7GROqloS
 ne2n/K9+n64a69xX4xdEP+vjljJld/DcY6LFGLZ4JVu1Q+Y9CWc63A7XD
 xJwfpKyTMWxm7aiadQaco4oJPu8Q/qRdvlb1xOQ3JU24thhpyhnICA+KV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="5007240"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="5007240"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 14:13:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15936072"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 14:13:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 14:13:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 14:13:37 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 14:13:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W02wZLMZvxH5BSruliq5FDeQQi3SgMPCEUlr8ENoY/GUD0rYlorBn42wfjLOGTnESuCIWhURuaNtmj0BRuQvUbVKs3Jf1E8pCu9z8eIeWdpDk75frTk3eNBRJCRQ9fkTbAuthhmpodC4545fYqrPOTpKxDRviPRv0TlSyCQnoJzat+X2J98wF2N1xE2XvAw/w501nMxHV9TdHZT2EfCTGf4Z/bOK3hP3LQpeMSx+NUV+S7622+bhMNYduh9cVfTeEWVCgk+jJuSA4uW8Nbp0AJ5+75W/leqg1JBbaWZDbs5HvSFHRqbjWh/UFKjqducMjLVAHzpfRlAvQaEdBa5NsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qE4oFEwsK268n827tuLrmz4LSPHmF4ebr35iSsXN1/o=;
 b=hKwG1OTFzusSVVMJtSYALQhxGlXXvCQqNEFUJLmHpJnWUqEv0mZeK0jqe3pabt+WsWQje5waxONwSf8Ut0eWZhG/CivWh+yZrY5C9quReGff0ZkFUs9ogJNudZHKT+Hj/ysylgNXXciwaXR2vJrdWM4qs30/sj0QQ3zVDzvMjWbPe6eAgHZaWKoAtXKAcywwb8Y6g7hOzhhyuq5DP+7GKIKOIWcoTVvVieSlTmbWZyOKpVnNaV8iJHwmPrhSkhvlBGyjUom007+SWlBVqPq8+1KHu5ZHnWshe23tsTvDFeR7OqFHTjGc++5lM34jzukmGCjhDGJv6EsrQISHumucbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 21:13:33 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::2823:ea18:552f:fb09%7]) with mapi id 15.20.7386.014; Mon, 11 Mar 2024
 21:13:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Ze9xEIf2wBsl5iOY@intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-7-gustavo.sousa@intel.com>
 <Ze9xEIf2wBsl5iOY@intel.com>
Subject: Re: [PATCH 6/8] drm/i915/xe2lpd: Support MDCLK:CDCLK ratio changes
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>,
 <vinod.govindapillai@intel.com>, "Matt Roper" <matthew.d.roper@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Mon, 11 Mar 2024 18:13:29 -0300
Message-ID: <171019160954.2042.4426543267974940607@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0219.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7364:EE_
X-MS-Office365-Filtering-Correlation-Id: e3664872-0266-4690-0492-08dc42101b3c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 69+YvyDHyNPE3mNyyrQ1eg/EKFjv4D+e/2+iBNAGxnfJVt7aaLjP3UDJfQj42kxph7zQKAWR6FIRd6AjMyM5RFxwJ/EZeLE1eDBIFexKeDXxBTLlcI8G/j0VjckgEsDYlmkJj/vuwv5x9lO0N1wA4H3LXHwRuin654W4VRYvd8oTDjrPuHSRvTR/aoC3TLTPaVtCD7M/wNiEJ+sFBVzklDrnbD7UkdwTHRu4KuUtrHUkICC7hBRicrs6RBQUtLSlazuj4vpqZvOeq1x2fmQXdrcQn2XmzGj/Icwiqjm8tAdAlk0DM2HwpWc/mlggeUwcRElHwC0dbNMyGqNHEBRC2DaKI19Uv3JaOYx3qm0jUc2fKP0ssBAeY8WR5c4UC1Oeg7bjKvc5q+nrAVeNNGFIzQ29oqqvq2GUHjQf1rJvJWSsqr1pnVcpYkRsPKBF+20DqJXYeMVhXWv+RLidUn45wSDeY1Xt4hYFiF1aBjQTEVFs+E0suXhljIRod7IaA1dYv4KR3FIg/gsOAcWCNA/8RI+7Di5XFajre/aFMGf5Koq1kHMvQI/51FPGzy+2lUBjNWTcRyzHyib08uJlYd7Atn/A/1mB2uvKSKpxl4ZuwYuIrkc1IxyIEq3yi5zBcbDjuYDqUbdileSqvjJWBWx12w/DHEyWKwLmaMkx2xXoT74=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UkQ1ZkM1Rm5US0dlZUlYTGJBb2xtbkI4K1ZBMUhLZWJwWktES0dwUlNqMy9w?=
 =?utf-8?B?RzExcmR1UGtORHhkTGJ6R3RBOEs5Rk16LzFrVUpIcTdvaGNBVE5ybXJqVGVJ?=
 =?utf-8?B?ek9CZUxXcGM5RGJSRmFGdVRTYkppaHFTdXkrSlVvSGJQUkpuKytmYWhKK1BP?=
 =?utf-8?B?SEJIZEFTazJPcjFJWXFFVGZZTzRyd1ZKbTA5UDZJNUpQVUdOeTF0WmFJc2ZS?=
 =?utf-8?B?Y3VLemtiQXI5NitTTDkzSmpxY1ZQNStvOEtLN1ZDeVVFRGN1aXh6TUlMQ0F0?=
 =?utf-8?B?eERtZGVvS1IwUitpTCtZRFJRUS8vY1J6eG9XbUg4a25jYlFKTHJUVER0dTM4?=
 =?utf-8?B?SHBlL3g1dy81R0JIUGV3TjF6MjF1NngyR0VWcGlOWDZHSzYzM1BsNFI5VEhK?=
 =?utf-8?B?R2s4WFFNbjg4dFR1dHJETm9Rc253cHNKcXh3VGI2MU01UG5SOE1sSC94dk04?=
 =?utf-8?B?dzFXU1ZKY1lLZStnS051VkhHV0ROVEx3Kzkwcm13UzB3QTVuK0tvYURNV3ZZ?=
 =?utf-8?B?WFZEZyt1U0M3MVRzMyszalJoV0RETlJSdHJQR05UNmRJRkxjeThuN3puWFlZ?=
 =?utf-8?B?czBLWXl3N0trcEhWL2xoK2N5SjlqNTFhWTd6Q2grakJ2clUxZ2UwcVJhRHFK?=
 =?utf-8?B?dE03cXlxS3NSVWRWMElEa29QQ2krNmdMYUJPZnhHWnpxNkpiOXd0M0h1aGlH?=
 =?utf-8?B?c3hxYXc2SStDNXRKOTBvZDNsOGYwR1VlWnhlakJEMzRDdDk2cnpjNG5BeGli?=
 =?utf-8?B?MkRlWEVKc1ZNd21JSUtzTy9MVFIvQzltNGl2bHBPbXNuZWZBeVBNS1NET1JH?=
 =?utf-8?B?d2RCekFVWGtRMUtiN3NWR3BNRFk4ZFdHMUxmNEovSGJWenJtRG5FcVgxaDZ3?=
 =?utf-8?B?TXFOS056VExQTVl0Zm9CbDhmRkYrV0Z1VnBqQTJtVVhLZW9BNGdQWUhJRXRM?=
 =?utf-8?B?ZzlxdGkzUWQySHFDR2FKYWNDaVNFcnZIMjV3dDBuS3NSTU8vaVBaU3R6OXN1?=
 =?utf-8?B?YWZpZWRIN1BoTW9uNnVrWi8yWG1QVWFLRklBQjN6NG9USTVSeVExaHpPd0Rr?=
 =?utf-8?B?ZjZWV3F3ZUw5cWk1R2E3aXdmSXV2OG96S3V4enJRa1FTSkErcFJxTWttTEFE?=
 =?utf-8?B?ZFEwTXpvVzJYeUhseFh4RThHNGdOa0tiWDB1SE5mR3libHNidURxM1F4eDRT?=
 =?utf-8?B?Wjg4bDZnZWZBT2lCbys4bEZLSSt0YjRYY0xJZHc1dktBTUVUWW4yWmJmNEQ0?=
 =?utf-8?B?bktBTURZU2Fad1FzbHFFUVZYdzY2bGw5NTZmWUNpZld3SGNwTk9tdTFMbm5F?=
 =?utf-8?B?bzJvaFoxTUNSUlhmM2xOQjVJZmxyakJpK0w5K0VSVVJWOTg3dUI3bU5lZ1o4?=
 =?utf-8?B?dk5NN2d1dERzZE85OWZPS0VEbS9TNDNVV3dNcjd6d0lKUUk5YXRZWmF2UjZM?=
 =?utf-8?B?KzFtU0gxdXkrU0x4d2R0NVJyRVptSzRneFExTGN5L1hicGJMVklWeEVpRlhS?=
 =?utf-8?B?bDdPdzYvd1lDMnpJeTNZNkFKaytGK0lBd2psZlFnQ1pRQzFDOHZSczZJUUto?=
 =?utf-8?B?SkJmUHNPTlRwR3h5d1VnL2dkbGsraGJYNnJlbVZnd3lJZDVqU0tRaHVMTXB5?=
 =?utf-8?B?YWtKUklUWXhiNSsvTkphaUVsYm5NU3ltbHBiNk5YQldNMjlNRG51c1p4UDdP?=
 =?utf-8?B?RnJZaWRKYmtISUEwZHNSREZWV25lc3pNSjFIVU1scDl2emtOaEpwaExQd3pn?=
 =?utf-8?B?WWI2UXlvNm9UR3RsVUwrRDFBNVJkQ3AvR1pscGhpSCtyaVJOMUE3NHlhcmdM?=
 =?utf-8?B?QW9xOTFnVWVWRCtkTXozWnJsU3NSUGFHRyt5U1Q3ZURpQVU3eGozdG9SRVF1?=
 =?utf-8?B?ZFhZVFJBSlV6elJsdHlOTDNlSlBQaWthNWF3SUJ5SUJ4djRaTUorcG9LMmRG?=
 =?utf-8?B?OGFlaFZjN2I1SHB2aWJPam1BOWRLNXZ0RnNBenRFWFJGT0p5dnNyeGF0WUp2?=
 =?utf-8?B?MmEzUzhTUEttN09VYmJFZTlFMENRdXJncjkvK25Sbm44czc1eCs0ZDAxSElZ?=
 =?utf-8?B?ZkJWelo2MTJOZ25hM0tJMGRlZmRGb01iTURNaUthUHVPRmxXTDI2c2RKY080?=
 =?utf-8?B?U2dCMEhmYnFWYnB0eUJSRTBiK3hRdjJyYkpEdDFwaXptWGdKN2RWMmQ4enN0?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3664872-0266-4690-0492-08dc42101b3c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 21:13:32.7003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3uQSIZeULQbQjIYfQJsI2O5BQoSJexJSCfu3oAFav3Ay6Wl3MaMHvr6c63dis0iuhnfuEX3HgKeFRic6rWdZlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7364
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

Quoting Lisovskiy, Stanislav (2024-03-11 18:01:04-03:00)
>On Mon, Mar 04, 2024 at 03:30:25PM -0300, Gustavo Sousa wrote:
>> Commit 394b4b7df9f7 ("drm/i915/lnl: Add CDCLK table") and commit
>> 3d3696c0fed1 ("drm/i915/lnl: Start using CDCLK through PLL") started
>> adding support for CDCLK programming support for Xe2LPD. One final piece
>> is missing, which is the programming necessary for changed in the ratio
>> between MDCLK and CDCLK. Let's do that now.
>>=20
>> BSpec instructs us to update MBUS_CTL and DBUF_CTL_S* registers when the
>> ratio between MDCLK and CDCLK changes. The updates must be done before
>> changing the CDCLK when decreasing the frequency; or after it when
>> increasing the frequency.
>>=20
>> Ratio-related updates to MBUS_CTL also depend on the state of MBus
>> joining, so they are performed by either CDCLK change sequence or by
>> changes in MBus joining. Since one might happen independently of the
>> other, we need to make sure that both logics see the necessary state
>> values when programming that register. MBus joining logic needs to know
>> the MDCLK:CDCLK ratio and that's already provided via mdclk_cdclk_ratio
>> field of struct intel_dbuf_state.
>>=20
>> For the CDCLK logic, we need to have something similar: we need to
>> propagate the status of MBus joining to struct intel_cdclk_state. Do
>> that by adding the field joined_mbus to struct intel_cdclk_config.
>> (Preferably, that field would be added to intel_cdclk_state, however
>> currently only intel_cdclk_config is passed down to the functions that
>> do the register programming. We might revisit this decision if we find
>> that refactoring the code to pass the whole intel_cdclk_state is worth
>> it.)
>>=20
>> Bspec: 68864, 68868, 69090, 69482
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 31 ++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cdclk.h    |  3 ++
>>  drivers/gpu/drm/i915/display/skl_watermark.c  | 40 +++++++++++++++----
>>  drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
>>  .../gpu/drm/i915/display/skl_watermark_regs.h | 18 +++++----
>>  5 files changed, 77 insertions(+), 16 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 04a6e9806254..12753589072d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -40,6 +40,7 @@
>>  #include "intel_psr.h"
>>  #include "intel_vdsc.h"
>>  #include "skl_watermark.h"
>> +#include "skl_watermark_regs.h"
>>  #include "vlv_sideband.h"
>> =20
>>  /**
>> @@ -1683,6 +1684,8 @@ static void bxt_get_cdclk(struct drm_i915_private =
*dev_priv,
>>          }
>> =20
>>   out:
>> +        if (DISPLAY_VER(dev_priv) >=3D 20)
>> +                cdclk_config->joined_mbus =3D intel_de_read(dev_priv, M=
BUS_CTL) & MBUS_JOIN;
>>          /*
>>           * Can't read this out :( Let's assume it's
>>           * at least what the CDCLK frequency requires.
>> @@ -1908,6 +1911,14 @@ u8 intel_mdclk_cdclk_ratio(struct drm_i915_privat=
e *i915,
>>          }
>>  }
>> =20
>> +static void xe2lpd_mdclk_cdclk_ratio_program(struct drm_i915_private *i=
915,
>> +                                             const struct intel_cdclk_c=
onfig *cdclk_config)
>> +{
>> +        intel_dbuf_mdclk_cdclk_ratio_update(i915,
>> +                                            intel_mdclk_cdclk_ratio(i91=
5, cdclk_config),
>> +                                            cdclk_config->joined_mbus);
>> +}
>> +
>>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_pri=
vate *i915,
>>                                                      const struct intel_=
cdclk_config *old_cdclk_config,
>>                                                      const struct intel_=
cdclk_config *new_cdclk_config,
>> @@ -2089,6 +2100,9 @@ static void bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>>                  return;
>>          }
>> =20
>> +        if (DISPLAY_VER(dev_priv) >=3D 20 && cdclk < dev_priv->display.=
cdclk.hw.cdclk)
>> +                xe2lpd_mdclk_cdclk_ratio_program(dev_priv, cdclk_config=
);
>> +
>>          if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv=
->display.cdclk.hw,
>>                                                      cdclk_config, &mid_=
cdclk_config)) {
>>                  _bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
>> @@ -2097,6 +2111,9 @@ static void bxt_set_cdclk(struct drm_i915_private =
*dev_priv,
>>                  _bxt_set_cdclk(dev_priv, cdclk_config, pipe);
>>          }
>> =20
>> +        if (DISPLAY_VER(dev_priv) >=3D 20 && cdclk > dev_priv->display.=
cdclk.hw.cdclk)
>> +                xe2lpd_mdclk_cdclk_ratio_program(dev_priv, cdclk_config=
);
>> +
>>          if (DISPLAY_VER(dev_priv) >=3D 14)
>>                  /*
>>                   * NOOP - No Pcode communication needed for
>> @@ -3179,6 +3196,20 @@ int intel_cdclk_atomic_check(struct intel_atomic_=
state *state,
>>          return 0;
>>  }
>> =20
>> +int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state,=
 bool joined_mbus)
>> +{
>> +        struct intel_cdclk_state *cdclk_state;
>> +
>> +        cdclk_state =3D intel_atomic_get_cdclk_state(state);
>> +        if (IS_ERR(cdclk_state))
>> +                return PTR_ERR(cdclk_state);
>> +
>> +        cdclk_state->actual.joined_mbus =3D joined_mbus;
>> +        cdclk_state->logical.joined_mbus =3D joined_mbus;
>> +
>> +        return intel_atomic_lock_global_state(&cdclk_state->base);
>
>Shouldn't we actually lock global state already before we modify
>the cdclk_state?

I don't think so. The cdclk_state that we have here is already a copy
that belongs only to this commit. I think it is actually critical that
we have the write locked at the swap time, which is done only after the
atomic checks.

As such, I think locking after we modify the copy should be fine. In
fact, we already have places in the code using the same pattern.

--
Gustavo Sousa

>
>
>Stan
>
>> +}
>> +
>>  int intel_cdclk_init(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_cdclk_state *cdclk_state;
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/dr=
m/i915/display/intel_cdclk.h
>> index 8e6e302bd599..e358234bfe26 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -18,6 +18,8 @@ struct intel_crtc_state;
>>  struct intel_cdclk_config {
>>          unsigned int cdclk, vco, ref, bypass;
>>          u8 voltage_level;
>> +        /* This field is only valid for Xe2LPD and above. */
>> +        bool joined_mbus;
>>  };
>> =20
>>  struct intel_cdclk_state {
>> @@ -74,6 +76,7 @@ void intel_cdclk_get_cdclk(struct drm_i915_private *de=
v_priv,
>>                             struct intel_cdclk_config *cdclk_config);
>>  int intel_cdclk_atomic_check(struct intel_atomic_state *state,
>>                               bool *need_cdclk_calc);
>> +int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state,=
 bool joined_mbus);
>>  struct intel_cdclk_state *
>>  intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 4410e21888ad..bc341abcab2f 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -12,6 +12,7 @@
>>  #include "intel_atomic.h"
>>  #include "intel_atomic_plane.h"
>>  #include "intel_bw.h"
>> +#include "intel_cdclk.h"
>>  #include "intel_crtc.h"
>>  #include "intel_de.h"
>>  #include "intel_display.h"
>> @@ -2601,10 +2602,17 @@ skl_compute_ddb(struct intel_atomic_state *state=
)
>>                          return ret;
>>          }
>> =20
>> -        if (HAS_MBUS_JOINING(i915))
>> +        if (HAS_MBUS_JOINING(i915)) {
>>                  new_dbuf_state->joined_mbus =3D
>>                          adlp_check_mbus_joined(new_dbuf_state->active_p=
ipes);
>> =20
>> +                if (old_dbuf_state->joined_mbus !=3D new_dbuf_state->jo=
ined_mbus) {
>> +                        ret =3D intel_cdclk_state_set_joined_mbus(state=
, new_dbuf_state->joined_mbus);
>> +                        if (ret)
>> +                                return ret;
>> +                }
>> +        }
>> +
>>          for_each_intel_crtc(&i915->drm, crtc) {
>>                  enum pipe pipe =3D crtc->pipe;
>> =20
>> @@ -3545,12 +3553,14 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struc=
t intel_atomic_state *state, u8
>>          return intel_atomic_lock_global_state(&dbuf_state->base);
>>  }
>> =20
>> -static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private=
 *i915,
>> -                                                u8 ratio,
>> -                                                bool joined_mbus)
>> +void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,=
 u8 ratio, bool joined_mbus)
>>  {
>>          enum dbuf_slice slice;
>> =20
>> +        if (DISPLAY_VER(i915) >=3D 20)
>> +                intel_de_rmw(i915, MBUS_CTL, MBUS_TRANSLATION_THROTTLE_=
MIN_MASK,
>> +                             MBUS_TRANSLATION_THROTTLE_MIN(ratio - 1));
>> +
>>          if (joined_mbus)
>>                  ratio *=3D 2;
>> =20
>> @@ -3568,7 +3578,9 @@ static void update_mbus_pre_enable(struct intel_at=
omic_state *state)
>>  {
>>          struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>>          u32 mbus_ctl;
>> -        const struct intel_dbuf_state *dbuf_state =3D
>> +        const struct intel_dbuf_state *old_dbuf_state =3D
>> +                intel_atomic_get_old_dbuf_state(state);
>> +        const struct intel_dbuf_state *new_dbuf_state =3D
>>                  intel_atomic_get_new_dbuf_state(state);
>> =20
>>          if (!HAS_MBUS_JOINING(i915))
>> @@ -3578,7 +3590,7 @@ static void update_mbus_pre_enable(struct intel_at=
omic_state *state)
>>           * TODO: Implement vblank synchronized MBUS joining changes.
>>           * Must be properly coordinated with dbuf reprogramming.
>>           */
>> -        if (dbuf_state->joined_mbus)
>> +        if (new_dbuf_state->joined_mbus)
>>                  mbus_ctl =3D MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
>>                          MBUS_JOIN_PIPE_SELECT_NONE;
>>          else
>> @@ -3589,8 +3601,20 @@ static void update_mbus_pre_enable(struct intel_a=
tomic_state *state)
>>                       MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>>                       MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>> =20
>> -        intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdc=
lk_ratio,
>> -                                            dbuf_state->joined_mbus);
>> +        if (DISPLAY_VER(i915) >=3D 20 &&
>> +            old_dbuf_state->mdclk_cdclk_ratio !=3D new_dbuf_state->mdcl=
k_cdclk_ratio) {
>> +                /*
>> +                 * For Xe2LPD and beyond, when there is a change in the=
 ratio
>> +                 * between MDCLK and CDCLK, updates to related register=
s need to
>> +                 * happen at a specific point in the CDCLK change seque=
nce. In
>> +                 * that case, we defer to the call to
>> +                 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK l=
ogic.
>> +                 */
>> +                return;
>> +        }
>> +
>> +        intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk=
_cdclk_ratio,
>> +                                            new_dbuf_state->joined_mbus=
);
>>  }
>> =20
>>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/=
drm/i915/display/skl_watermark.h
>> index fed4d12df584..3a90741cab06 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -76,6 +76,7 @@ int intel_dbuf_state_set_mdclk_cdclk_ratio(struct inte=
l_atomic_state *state, u8
>> =20
>>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
>>  void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
>> +void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,=
 u8 ratio, bool joined_mbus);
>>  void intel_mbus_dbox_update(struct intel_atomic_state *state);
>> =20
>>  #endif /* __SKL_WATERMARK_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers=
/gpu/drm/i915/display/skl_watermark_regs.h
>> index 20b30c9a6613..269163fa3350 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
>> @@ -32,14 +32,16 @@
>>  #define MBUS_BBOX_CTL_S1                _MMIO(0x45040)
>>  #define MBUS_BBOX_CTL_S2                _MMIO(0x45044)
>> =20
>> -#define MBUS_CTL                        _MMIO(0x4438C)
>> -#define MBUS_JOIN                        REG_BIT(31)
>> -#define MBUS_HASHING_MODE_MASK                REG_BIT(30)
>> -#define MBUS_HASHING_MODE_2x2                REG_FIELD_PREP(MBUS_HASHIN=
G_MODE_MASK, 0)
>> -#define MBUS_HASHING_MODE_1x4                REG_FIELD_PREP(MBUS_HASHIN=
G_MODE_MASK, 1)
>> -#define MBUS_JOIN_PIPE_SELECT_MASK        REG_GENMASK(28, 26)
>> -#define MBUS_JOIN_PIPE_SELECT(pipe)        REG_FIELD_PREP(MBUS_JOIN_PIP=
E_SELECT_MASK, pipe)
>> -#define MBUS_JOIN_PIPE_SELECT_NONE        MBUS_JOIN_PIPE_SELECT(7)
>> +#define MBUS_CTL                                _MMIO(0x4438C)
>> +#define   MBUS_JOIN                                REG_BIT(31)
>> +#define   MBUS_HASHING_MODE_MASK                REG_BIT(30)
>> +#define   MBUS_HASHING_MODE_2x2                        REG_FIELD_PREP(M=
BUS_HASHING_MODE_MASK, 0)
>> +#define   MBUS_HASHING_MODE_1x4                        REG_FIELD_PREP(M=
BUS_HASHING_MODE_MASK, 1)
>> +#define   MBUS_JOIN_PIPE_SELECT_MASK                REG_GENMASK(28, 26)
>> +#define   MBUS_JOIN_PIPE_SELECT(pipe)                REG_FIELD_PREP(MBU=
S_JOIN_PIPE_SELECT_MASK, pipe)
>> +#define   MBUS_JOIN_PIPE_SELECT_NONE                MBUS_JOIN_PIPE_SELE=
CT(7)
>> +#define   MBUS_TRANSLATION_THROTTLE_MIN_MASK        REG_GENMASK(15, 13)
>> +#define   MBUS_TRANSLATION_THROTTLE_MIN(val)        REG_FIELD_PREP(MBUS=
_TRANSLATION_THROTTLE_MIN_MASK, val)
>> =20
>>  /* Watermark register definitions for SKL */
>>  #define _CUR_WM_A_0                0x70140
>> --=20
>> 2.44.0
>>
