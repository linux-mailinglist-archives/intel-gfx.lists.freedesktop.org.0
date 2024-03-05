Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2358721C0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:41:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B0BE112B65;
	Tue,  5 Mar 2024 14:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOFv0fJn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 918B6112B58;
 Tue,  5 Mar 2024 14:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709649662; x=1741185662;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=0pnb7myo7qClZLeoZ5gNtxZTELgeAb4ZC6ZplROXAwg=;
 b=MOFv0fJnAnCFURf0W3xjyd+AWXQsXqOYjDivpphBfWwssjhELOZrvZ/w
 7XLUlcz+WCvSjW1XNdqMbK61HyxkIqF9DezffnigvXidtIwYybl9gamXw
 X67eWO3VjrN6rYvrpWvikI5JZHuhQzR6vywnzjYI4BYyfFUy1mPLf6YDr
 3sjxssLawTUX0HghE3Ey1F22VQXsvDUd2eAZgDC28waGMER2Wr0EkMl1f
 27/M2Is4OrnamuCHA5nutBipwsvKHofuaIUvz4iJ+awG9GtfPPaEusD8E
 NqdKWWH21tQ+jC9FH6a1h4rgCNKKFSGHr6r7k8lZ/OIc8Hyw50O+2lAYe w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4322139"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4322139"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:41:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="32568518"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 06:41:00 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 06:40:59 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 06:40:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 06:40:58 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 06:40:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lsV8symzbNjn2huEsZs/AMB7hgwnzwhdnL06Ri878iit5wYFIkzaXL9U8zoVjtrKt50KHgXZqmrwN2mF3gXQUFNhO3DD3wyxaDYge3UJb59mQalqJL4lP7zuZM5ELMeyYCujRGsAFYGVnYRxB8oVaUSKdu4bQArj14IeTaSXS7chkpAbffWCjtF5MGOQJbMx7W4p2+knEWNTOpp3rPBfMQJDoE6lRUnJpxzqHeOCNeq09y7qxaiLpCDz/v7QSR1fWTlUMz2W62BA5ylPMKGmMIx/0NybCbitmdgYkC3E10K/JoRVNpgp40ihgsEg3hsvtO4LzqHQtzorJPaefixf3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A5xsmloDngPw/pUfidFgiMSaCS5C54zi1ABOJYskuoo=;
 b=YtuoJJ64Kj0xiQfZwAuwL4KYx1/AkfB0S2kaQbzgMkJj6W5XZyf/x8IOpZRhQnCtz3fLeugTuQ5WRPNhRz5TtRewIvIZd9KKQPwo3qGpBgXFxIvPm09f6q4aF6GpDILIFzJdkuvWhWfvvDjZGjZrGMHhZCmcjmU/kKyCZ4fZjTB3BuTpojwN+n9btuDrj9lEapMWpjsrvIOf+cPSnhLYSOO1Q6Nw9jSGZK31Dk7DtquDP2ZkcRXyxAFgH0AatN1HhF8DuBObqd7V+vRruC9Ix8LRepx3VDUF2WUd3//lzmNxcWby8AmIvzE2OIFhqtRqKuUZyiYW9//4MD25LBomOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6347.namprd11.prod.outlook.com (2603:10b6:208:388::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Tue, 5 Mar
 2024 14:40:55 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b%7]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 14:40:55 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240304215834.GW718896@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-3-gustavo.sousa@intel.com>
 <20240304215834.GW718896@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 2/8] drm/i915/cdclk: Add and use xe2lpd_mdclk_source_sel()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, <vinod.govindapillai@intel.com>,
 <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Tue, 5 Mar 2024 11:40:48 -0300
Message-ID: <170964964806.109629.1145499727666932693@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0005.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6347:EE_
X-MS-Office365-Filtering-Correlation-Id: a6f55031-2333-4498-6713-08dc3d224278
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: k/mZe+fpKmh/79qQG1yLBB/W2Y50trJeZl4NUA5UsiIvMshrMDzXvjZ9JGXPBOZ16P2WGpiOdB0yIucDmPlo88oXIli5F0+9Y4qD7RJTfCG8KvxkV6cWJyCDzF+dwTqULi4Jixhv+J0nLsee31d312oU5LUf7e+v1IqYrZrnSA1iSCAw8/AHXxbdLoPsTNRnkPCODlCbyhwgPbWqc9dCj7YInJW6ISlnMQtUijaxluMJ7EHvAzhBX+TkcZ+SQnq94n9Kre1h3V7IANDEF5L2xU+8oDZQuWQi8i7uIsrv9hCjvhfXv5Qc5wUak9Hv1osCdkBvVrCp2B2qfKR1YBdm+lQ3OJtCAIgCsRYAjVppQeX0mHdCqmqYVADO9tKjMrZORFeVzfuw5tSoy+b5JGOqcUZ7cLT3GNLEAx2JbTrtnj9L+48tnPRuRgYU4qYPMT5XJK36mAwOoBuiTcfpGUCgXGN9BfDsGMAq9yM+vO5A9BMgpqyn6WzXMdOZPi/TjWCNz2qja5QokhgfmSqF+B0qvdFtKpYDsDGUw23mG7Q0fFkS06WpttQuyJEa0LFrgAnDpOvMGUbS0yLwj/ZkrIzllUCDL3rxxTCoD1b+8A6/Du+1tFMgUzvGdulORecqQXXUBds/Uy33cv7023AwOsTOyA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dDE2emRyVy8wZTlKbjZRelMvcWRxR25WL3hXTDRpQW9yUnFHWFdsb2t3a0pN?=
 =?utf-8?B?R1Y1ZUFVeTJibWVNRXJkazVYTDFUeWE0LzdxVFZMd0owOWt5eng0QTc4Y2Jk?=
 =?utf-8?B?bUszNitOSVJkVkpIZUI2V3dCRXpSYlpTTDhLQis0Yk1HS2R1Y2pWY2NjUzdh?=
 =?utf-8?B?V1RZNWprY3h3a08rZFhkalRNcUtJWkJJWk5UVUMrSlQyZFlTcFVFV2NRc3kw?=
 =?utf-8?B?VVhjenVmQU9RSmVqNFpCdVB5R3NmNXZIT1pjcXEyQVlZNkh4MXRKbHhNRi9p?=
 =?utf-8?B?YkRLWTVsUXN2amNNR2VtZGNObnhTQW4zK1l1NFB1Zlo0NWZmZnJIYllNOGEr?=
 =?utf-8?B?MUI4aXJOQ2h0NVVsc3BiU1Z6K1RwZ25WdWpMMjRnaUpWay9WeTNVdURyRUJZ?=
 =?utf-8?B?ckt3UVBZOXdSMFJ6eGdnOWtpNmYxYnFidUc4VUNwUVUvMHl0TFRPM09oTlo5?=
 =?utf-8?B?YS9OY0toN00xK2hZcEdQRndwZDFrc2F0d3cvSC84Um5EdFgrdXU0em9Kamc5?=
 =?utf-8?B?N2NaWDdQdnV5Mm5XWVRtekl4emIzM1pCZloyclR6TzB2MW93Z29ScVJDMTR3?=
 =?utf-8?B?WEVDNWpFYklXRjA4U09CcFN1cHA3SDJnb0kxL1ZsZHFDTWdQN2hiblA1aVFa?=
 =?utf-8?B?a3hwVHViZjhwZW1CRXFpWkVxVUZaV1JKUGFnVC81NEVUZXpxUm5GTytpQlUz?=
 =?utf-8?B?QTlHMDJkT1Myd1RwKzFOL21EUjM4ejVJZGZmRmt1ZEN5eS9xQlo4VndmMVdQ?=
 =?utf-8?B?d0QwL1QzTDBFb1QxUDhIeGZXaU4vRjk4M2c5bmpucTJkNGtTLzNDWURvSmdC?=
 =?utf-8?B?UEZoQ2IrNmRlby9QTXFSRDh0bHJLRDNLWGVud2wzYUxhdXBhaTlLOUdVODYw?=
 =?utf-8?B?MUpkL2ZrdzVEVGpyTVFWaDBIY1BHM25rOHJOU09mK05UMVNoZHlOZTFxZWJE?=
 =?utf-8?B?MWk2OHg5VkhFdWN6MVBhMnlHSkJuY0ltTisrSFBaOHdGTVJmK0hvTHJWUEx2?=
 =?utf-8?B?Z3RJMnl4TXg3bWlZVEljQ2NPQXRwN21Ic2F0SDA5VFFFeXlKanA3WE1YUGMw?=
 =?utf-8?B?RHJJcFZtQlc5N0Y1Ry8zSnlEKzlJT3hnUXZFaUUxWjBvU0tnT1lneTBUNEFT?=
 =?utf-8?B?ZHZOZmFQaDZnNHJ3OG1QQnNnR3VTMndQU29ib3hmcjIwWTVmcEJQMnZ5MWhy?=
 =?utf-8?B?Z0l0SHV4Q2xEZEUxMnR3NkJtOUdEdlNZZDdOMjVnR2tQbXlES0YydHBDOUt5?=
 =?utf-8?B?UTFjWlI4OVI3VzMzYWVTWDRIYjQ3dU44R1d5RUJLV1Bqc1hCc3lHbEJWVWh6?=
 =?utf-8?B?RE1sQ1c2NllzeGV5U0NTRDEzdlRRUGZsNitubzB5SlpHRzlTdTkvVC8xSUk5?=
 =?utf-8?B?U0JqelQwTDZUbk1NSjdwOFlzbkllbVFTRE5KNklLandxKzZaN2VMZFJwOEsy?=
 =?utf-8?B?RzY2eGlQTmtiRE1vNFRTU2NOZitWOHlRSmhYTDA1dlV3WHhTTVdGQWw0V0s1?=
 =?utf-8?B?aWsya2hzYXYyQnI4bUpRaGx3NlhqekphTmtNU1JGYUdCbUZQeS83MmJvaGZi?=
 =?utf-8?B?RzJ1OEtidUFLc00yRk5MUHU2Q2JqMjhhZDdHeGlwZXZXaEpaMnIzVnhRcE9W?=
 =?utf-8?B?aFRqdTEwaStmMVluQldWNzY5OHlIMHJnSjA4aVpTUkI4dnBLWHMwUDlhc2dJ?=
 =?utf-8?B?RXJwTVhmUDQzZXhFQ3BEQS9RZlJWbENhYWlzSXEveDZJd3NmT0JXWjlBVVhD?=
 =?utf-8?B?V2JXOTBWb2hRTTRhd1lMbHZxVEZGUE12NUxSRzhmc0k4dlhuczlsSmVJY2Yw?=
 =?utf-8?B?cVorenVmS0ZPYzlNdGl6ODIzRTdCRDRYNEdpQk5MQUdtMmprNXE2SzBLU1RG?=
 =?utf-8?B?MFphQ1RtMk0vbHFHRjk3bjZMeTd1UzAycFF3YTRGbnNYUERWVlZ5dkJ0aG1G?=
 =?utf-8?B?UDJGQmVZRlhGdFE5czlvMVZpQ1VzV3lGWThGODNpM25lWjJ5ZmEzRVplNnBk?=
 =?utf-8?B?NmFiOE5PNENjVkVFRGk2bE9NK1VuVkh5TmZJWENPMWgrVmh0SzgrenZ2TytP?=
 =?utf-8?B?bjk0c0Jia20zVnA3b2s2aHVXQURHcWtIRG5GMGsxQ0lIVzNaMFhDREN4SkVw?=
 =?utf-8?B?VmtKK3c2OEZwb0tzR2toMWZCVVhmalZONjJ6VENnVC9hLzV4cGFsOHE5SXZz?=
 =?utf-8?B?NlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6f55031-2333-4498-6713-08dc3d224278
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 14:40:55.8025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TogBPIY321azQPIPMAvnuIDrwX5L5OqBTygY7vYLkG/1Jm8kwMNe26JZGzXIUFSFM2ie6LEzQNTeXckQaNvNYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6347
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

Quoting Matt Roper (2024-03-04 18:58:34-03:00)
>On Mon, Mar 04, 2024 at 03:30:21PM -0300, Gustavo Sousa wrote:
>> There will be future changes that rely on the source of the MDCLK. Let's
>> have xe2lpd_mdclk_source_sel() as the function responsible for reporting
>> that information.
>>=20
>> Bspec: 69090
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c | 17 ++++++++++++++++-
>>  drivers/gpu/drm/i915/i915_reg.h            |  4 +++-
>>  2 files changed, 19 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 407bd541eb46..bf84bf27213f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -1876,6 +1876,21 @@ static bool cdclk_pll_is_unknown(unsigned int vco=
)
>>          return vco =3D=3D ~0;
>>  }
>> =20
>> +static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
>> +{
>> +        if (DISPLAY_VER(i915) >=3D 20)
>> +                return MDCLK_SOURCE_SEL_CDCLK_PLL;
>> +
>> +        /*
>> +         * Earlier display IPs do not provide means of selecting the
>> +         * MDCLK source, but MDCLK_SOURCE_SEL_CD2XCLK is a nice default=
,
>> +         * since it reflects the source used for those and allows
>> +         * xe2lpd_mdclk_source_sel() to be used in logic that depends o=
n
>> +         * it.
>> +         */
>> +        return MDCLK_SOURCE_SEL_CD2XCLK;
>
>At the moment this function only gets called on Xe2 and beyond where the
>register field exists; if that's going to change soon, then wouldn't it
>be more natural to just use an early exit to highlight that there's
>nothing we need to OR into the CDCLK_CTL for earlier platforms? =20
>
>    /* Not configurable for older platforms; they always use CD2XCLK */
>    if (DISPLAY_VER(i915) < 20)
>            return 0;
>
>Functionally it's the same, but it feels more intuitive to me.
>
>If we aren't expecting to call this from common codepaths that aren't
>already protected by a display version check, then we could make this a
>drm_WARN_ON() to assert that we haven't deviated from expected behavior.

Well, the intention here was for this function to serve 2 purposes: (i)
to give the value of the "MDCLK Source Select" field of CDCLK_CTL and
also (ii) tell which was the source of the MDCLK for displays pre and
post (including) Xe2LPD, because we will need that information in
"drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state".

I was hoping to do that instead of creating a new enum, but maybe it
will just cause confusion?

Should we have one function to tell us the source and another for
giving the value of the register field?

--
Gustavo Sousa

>
>
>Matt
>
>> +}
>> +
>>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_pri=
vate *i915,
>>                                                      const struct intel_=
cdclk_config *old_cdclk_config,
>>                                                      const struct intel_=
cdclk_config *new_cdclk_config,
>> @@ -1980,7 +1995,7 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *=
i915,
>>                  val |=3D BXT_CDCLK_SSA_PRECHARGE_ENABLE;
>> =20
>>          if (DISPLAY_VER(i915) >=3D 20)
>> -                val |=3D MDCLK_SOURCE_SEL_CDCLK_PLL;
>> +                val |=3D xe2lpd_mdclk_source_sel(i915);
>>          else
>>                  val |=3D skl_cdclk_decimal(cdclk);
>> =20
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index e00557e1a57f..eb953ed1f113 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -5900,7 +5900,9 @@ enum skl_power_gate {
>>  #define  CDCLK_FREQ_540                REG_FIELD_PREP(CDCLK_FREQ_SEL_MA=
SK, 1)
>>  #define  CDCLK_FREQ_337_308                REG_FIELD_PREP(CDCLK_FREQ_SE=
L_MASK, 2)
>>  #define  CDCLK_FREQ_675_617                REG_FIELD_PREP(CDCLK_FREQ_SE=
L_MASK, 3)
>> -#define  MDCLK_SOURCE_SEL_CDCLK_PLL        REG_BIT(25)
>> +#define  MDCLK_SOURCE_SEL_MASK                REG_GENMASK(25, 25)
>> +#define  MDCLK_SOURCE_SEL_CD2XCLK        REG_FIELD_PREP(MDCLK_SOURCE_SE=
L_MASK, 0)
>> +#define  MDCLK_SOURCE_SEL_CDCLK_PLL        REG_FIELD_PREP(MDCLK_SOURCE_=
SEL_MASK, 1)
>>  #define  BXT_CDCLK_CD2X_DIV_SEL_MASK        REG_GENMASK(23, 22)
>>  #define  BXT_CDCLK_CD2X_DIV_SEL_1        REG_FIELD_PREP(BXT_CDCLK_CD2X_=
DIV_SEL_MASK, 0)
>>  #define  BXT_CDCLK_CD2X_DIV_SEL_1_5        REG_FIELD_PREP(BXT_CDCLK_CD2=
X_DIV_SEL_MASK, 1)
>> --=20
>> 2.44.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
