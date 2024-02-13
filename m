Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04356854024
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 00:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2893210E602;
	Tue, 13 Feb 2024 23:30:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ADPj/WJp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A015710E485;
 Tue, 13 Feb 2024 23:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707867048; x=1739403048;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=U/wkW2gpaUC4BvSq1Yb+P3cMsauG8sZQyPBMOBqrDf0=;
 b=ADPj/WJpPLQ1X5unNmUgkJhyeIHce3NzQ0IqiCXNQkIXzIX/RIUbrwle
 rkA8quHRNHzSnr04+luoZtYquRGj3Me822ezMInDjnhdl7Az3LNhStRUn
 ille+9l7X9t+dkRYQ9RrwwFRPkNzdQVN0oR8rYUKTIYnvgBFIxpPCDSqj
 at1vlF5x0zvndl9XQ1cIO644W5cE/By/3/peZ77L62HZmcctYH6jCQAXK
 Y3T2CvjsjeeWjNH1TNM2VDvKP/YIRqhuKUUeSzySRRY8ZGYHHMM6ZDBI0
 uVIikLWAJ+fT8oTfP4tYjk+n0GRqWzLy8By0Nh52PZY03ctZnV4hTq6Z4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="396334237"
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="396334237"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 15:30:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,158,1705392000"; d="scan'208";a="34087233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 15:30:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 15:30:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 15:30:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 15:30:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Izqj1LMTiVzJ+dcKyhLM9lI01AW3gantz6n8W3Yoqy1kRhrwrUlhsvz7nkLlBcL6WPDyCskRR84tjWKPLhtyPCWYpExuDZQ3IGAhHK052lL/P4UDsxaY64uL/nCzTsz+FiEYQuQacMfxLAAylQ+oHj5pi3sfJX7vaDMfYKfh5SNfR9qhpf5YAKGwWPgDDhlI9eb8Abrrs1YIeLOrPcWtyy7SkOgxD3E8sr5VkD67d+86IXAMzaPrzVaMaI7qrgMCSILvbIaBeA2s+Hr6qUAbieucbLEWr1RvowxAXAqWRmjWW84UX0lVPebkM+mtxjxEzq2gHVWnGGBqKJCs7QUtrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gO1Ldhi6noBYmeZ43KZ3H9YqrZBSeyyPuN2J2EIc1Ec=;
 b=JugJ0n38OpoQWLmJknUamNsNw+xTvEiQn8L8yVVJ+KByw8JgVsJOqiQRyQzHOmDx4icVsregjgaIbz3cd402Mg9qzw40d7/Igfc62LAtFcQxUeHSYuRP1zzGMqF/O9tyzWS68n3NBWsVEFDqV3KGpS4RTtGaPoaVjk0nbHxqrTJVkL1sN3F2Rkhk4+d+p2bDEwx/RgXZWFb14jyk9xGasgqDz7vA6ckspYnNkFT9I5kTMPbuxSpCAzVUCBfdkhZW+dsX8/wLRjJYoT2afH3ri5xmqIw2gkR/iDRodObBaynBft+Z/jpeQfTXcjI3ywaohSdOJ+YXxpAcX74a3DKe/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by DS7PR11MB7781.namprd11.prod.outlook.com (2603:10b6:8:e1::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7270.38; Tue, 13 Feb 2024 23:30:44 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::c138:faf0:9fa7:8a03%7]) with mapi id 15.20.7270.036; Tue, 13 Feb 2024
 23:30:43 +0000
Message-ID: <a08914b5-ffa2-4fbd-821c-5967af24a372@intel.com>
Date: Tue, 13 Feb 2024 15:30:43 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] drm/xe/hdcp: Enable HDCP for XE
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-5-suraj.kandpal@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <20240209101412.1326176-5-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR21CA0023.namprd21.prod.outlook.com
 (2603:10b6:a03:114::33) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|DS7PR11MB7781:EE_
X-MS-Office365-Filtering-Correlation-Id: a1923aaf-bb84-4707-af06-08dc2cebcc57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v3vr3LD9nVndzYEc8kkrMc6NinojH0xyKLdtmetFoBl8XSKpKLcomaxC+ZXGMIQ0c+hagc+1QRDbb5uNCW3a1aJ6VoZAffEZQ6E5HWvP9jyVSoHVIOn3Eai2Xd31QxItOVg5cnfGEt8CXxggxXFYl3WdGtxwCx/Vap3dA9LkRN/CLynp65PTmxxLF/TvrPTOg1BaNd/KmZY4EmChaN2PDMEJGycBfcz5SzyRVJ/Qf6XosZNdIieSblm1TlDF9Q0z0cG0N9BHMan6MD2VPhe5LhtyjbfCNQMK00tqAAyV2fVxFPPWh+b4GFjwE4pTiOYDp+AzBDjybPyQZ2YAZlwunu568TIhPMwQncVkmyqGHly877N1GP9pwf63cXE2hiDThAql/x9jjnMf+w0+Ped6pXyshbYlDi22o4OofClp4cEP5r6AgM0UMedXStodgsXR/G5evIlGZ5hxzRlfWDD5XWjLO1zXVgdKBFM2WQLV9oFHzY5Ky7ZuvWjjMwORBAOs02v7iu2hCH2O2AcnuNnwVfoPknysSIX7zq5oos81oS3nzRkO4hLui8ce063irA+3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(376002)(346002)(396003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(6486002)(53546011)(6512007)(6506007)(31686004)(2906002)(316002)(5660300002)(41300700001)(2616005)(31696002)(36756003)(450100002)(478600001)(66556008)(8676002)(66946007)(66476007)(8936002)(83380400001)(26005)(82960400001)(86362001)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L0ZFc1Z1Rmg4VHhHaEoyUktBWlh0SEhjMVI3VE5kRWc3S1d1NWhvWkd0L21r?=
 =?utf-8?B?VSs4Y255dTlyaHl4bDdtbDRMS2FHR1lNY2FGSXIwK2xpbE5KNzByWDI1VDV4?=
 =?utf-8?B?NVlnbmdMd3BJUHNBNnRSTTNUNVVHRTZuOUpZYVlyVE45WDZRckRIYTZyczBH?=
 =?utf-8?B?Z3dmYklETkEvaGtMN2dBQUFrLzhvaG1uR2g3ZTZMMDZsK2dLdkdoVDZ0MUVs?=
 =?utf-8?B?Vkg5S0IyZUFjNzk5THh3NzlaQTVmT3pFMmlUWXlmOG5YRlhxRUVKVm5Eclk1?=
 =?utf-8?B?aExmNnl2SWE0U1RXNThicFRSM014R0Q1Ty80dkJmODRXNU9idnhXR1FHWVlz?=
 =?utf-8?B?dnowQW5xdEt5TXBiMlVPanZseDI1L0R6SHFzQ1Z2TW13bmFaTWxlVlFEVFh4?=
 =?utf-8?B?empKZXNjZ3VtTFJTRjZDQlFSb1FvY1U0MXFidEVXZmZHYlRJSmN3ZlYwREhK?=
 =?utf-8?B?K2tnMGhYZjJtSmdqVHoydWc2RGk1a0IzbndtdnpjdUdBSnkxbDVMRmlsMGdw?=
 =?utf-8?B?YVF5cXhhd1g4Q3k1dHNoT2FoYTVhbm95MzkrTk5UTjVVckdENy93R0pKQjI1?=
 =?utf-8?B?a0dVOEFvK2xUK1RvcHU5Y3BicGxaenVBRGdlS1BCWXczd1RML1Y3eGVwbTFG?=
 =?utf-8?B?R3JFMndxQ1F3MVlIeUJ2TjFBamhuZCtBQ1llalNpVXRwVGNPZmFzTnJFTW0y?=
 =?utf-8?B?SlFxTDdDU2pXOHVHZjB1enNjMjVONmhzYXpEWHZOUml6OW01Ym94U0xLdnQ0?=
 =?utf-8?B?RXQrSUxZVWNuVFlRNSsvSmVmM0g1VXdFMmwwZE9pY2hybnRhdUdhZlY4U2V1?=
 =?utf-8?B?TUYwSFFrRFlGS2NIWkc4R3JEYmh4dDhGWkREU1prdW9Db1JuVUhWTjFSMCtj?=
 =?utf-8?B?SEd1UFJJU1h5VnlGTkFnaC82Z3lvNUhvV0k1a1lUZEpOdzBZTG1MeG5Oa2pI?=
 =?utf-8?B?L09kelllS3BtNU96bXpHb25XY1prOEJSZ2NNbW9zRGxOYjVzR2cweWRHaENh?=
 =?utf-8?B?TG1CVU43T1JWMmp2TkpXcFBNWVZxaWpUZUJud2NYei92dFpkV3JEMU03NjFx?=
 =?utf-8?B?bThjbmUyQVpabVN1U0dEdzJBK24vRHQ4cnRBWStiYUZmTFMyaHJsak5IcVhp?=
 =?utf-8?B?S2JPVEdFekU2V2NaaUlzbGo5Mkt5OENXZHRRenVpcm85YStNYnB3YS9UMmNY?=
 =?utf-8?B?NEN1M1JKaUlHMmtqVG9hVzNTQXRxWTFoNk1zQ1RNc0l1RVJSSjEwQWVDWUNU?=
 =?utf-8?B?YmM0ekdXaVl2WCtOYmdOMjFGYUp6TVc1dXljRGwybDNqa2dNV3N2biszL0xS?=
 =?utf-8?B?Z3dIMVk1ZWNuaitqRmMxU1lkcjZTZVkyNnNpZHNsaUZZMVc2ZWd1U1pIOUc2?=
 =?utf-8?B?TisxRFh0WVV4NklzVnRkbVVFWkxnbEpSZUQxUXVpdEd2NGtMd2hXTDFWZVNP?=
 =?utf-8?B?WUJrU1dWMXdWTXdJRXA5ZWpDZ0F0V04yeGs2dDhIaUpCVnE5YnFNT1I1ZWZq?=
 =?utf-8?B?VTZ5bFlnaFpuUW1aNmJOT1dpZ1pxTkhBQ0pQemd3Sm1uWUVHYXI4UWZPZCsz?=
 =?utf-8?B?SlZweVhKYkhjSUtEdlY3d3dXT21aKyt3QUlpam1xRWdxemZ4VWZpUXdQT3Uv?=
 =?utf-8?B?TzBlMmNMYkt1WUZOVkZRSzBSU0xNbW43MWs1RDBFTTdIb3Y1ZUVEYXFiK1kx?=
 =?utf-8?B?WlM1Z292azRoQmNvZHdKd3g1YjhjVkEyMjVWM1dJc1dBN3NTcVo2QUdrQjlB?=
 =?utf-8?B?RDM2Ny9lV2NmL1RaYndrR2lwbjZVenpvcG1lUDBycFpicTVUS0ZWeFRRQXBw?=
 =?utf-8?B?SVRmRFA1T3VLaHpXOFQ1YUlmR0d4cGZRTUhkUFpwakNLQm5Gb25nRXQ5L1lL?=
 =?utf-8?B?eUFKSld3SnRva1BEWmdxRFRmaHBsUE55bXdQWStrdmlHNG0zMzE4YlpINXU5?=
 =?utf-8?B?bmVTc0tWdzBHanFwN2MwUjFCNEJDMlVwYlZPaVNFOTN4TmVGdi9mUnFLZUln?=
 =?utf-8?B?ZkhkbzBNQlZsWHZUcTBTOUFKSUMxa2ljTS8rUHl4YTZTd3pCcCsrb3pQUlFK?=
 =?utf-8?B?TVkxRUZRSEhBYnBmTGZXaEZabVdxVTVBTXdUUDlpR0FIN0toNktZa1RjcnBy?=
 =?utf-8?B?Z1Z4Y3dsS2lEK0xyMzlmcGRNeUc2cXRtY05QY09RLytrSWZhK2NpdnNWb2JS?=
 =?utf-8?Q?s6k8sA6GujddyA9Hb5Jlxb0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1923aaf-bb84-4707-af06-08dc2cebcc57
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Feb 2024 23:30:43.8483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GXjOx9sh6JRKKPIL3B3xoNKsgvp0meGqUDXYalM7PcKHAo/faiJbp71hPXJ8l5pL7dtqf7txJUem/eqWA3ZDMxODsUK9KMccaWB3lvv3iMQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7781
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



On 2/9/2024 2:14 AM, Suraj Kandpal wrote:
> Enable HDCP for Xe by defining functions which take care of
> interaction of HDCP as a client with the GSC CS interface.
>
> --v2
> -add kfree at appropriate place [Daniele]
> -remove useless define [Daniele]
> -move host session logic to xe_gsc_submit.c [Daniele]
> -call xe_gsc_check_and_update_pending directly in an if condition
> [Daniele]
> -use xe_device instead of drm_i915_private [Daniele]
>
> --v3
> -use xe prefix for newly exposed function [Daniele]
> -remove client specific defines from intel_gsc_mtl_header [Daniele]
> -add missing kfree() [Daniele]
> -have NULL check for hdcp_message in finish function [Daniele]
> -dont have too many variable declarations in the same line [Daniele]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 180 ++++++++++++++++++++++-
>   drivers/gpu/drm/xe/xe_gsc_submit.c       |  15 ++
>   drivers/gpu/drm/xe/xe_gsc_submit.h       |   1 +
>   3 files changed, 193 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 425db3532ce5..aa8c13916bb6 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -4,12 +4,27 @@
>    */
>   
>   #include <drm/drm_print.h>
> +#include <linux/delay.h>
>   
> +#include "abi/gsc_command_header_abi.h"
>   #include "intel_hdcp_gsc.h"
>   #include "xe_device_types.h"
>   #include "xe_gt.h"
>   #include "xe_gsc_proxy.h"
>   #include "xe_pm.h"
> +#include "xe_bo.h"
> +#include "xe_map.h"
> +#include "xe_gsc_submit.h"
> +
> +#define HECI_MEADDRESS_HDCP 18
> +
> +struct intel_hdcp_gsc_message {
> +	struct xe_bo *hdcp_bo;
> +	u64 hdcp_cmd_in;
> +	u64 hdcp_cmd_out;
> +};
> +
> +#define HDCP_GSC_HEADER_SIZE sizeof(struct intel_gsc_mtl_header)
>   
>   bool intel_hdcp_gsc_cs_required(struct xe_device *xe)
>   {
> @@ -40,19 +55,178 @@ bool intel_hdcp_gsc_check_status(struct xe_device *xe)
>   	return ret;
>   }
>   
> +/*This function helps allocate memory for the command that we will send to gsc cs */
> +static int intel_hdcp_gsc_initialize_message(struct xe_device *xe,
> +					     struct intel_hdcp_gsc_message *hdcp_message)
> +{
> +	struct xe_bo *bo = NULL;
> +	u64 cmd_in, cmd_out;
> +	int ret = 0;
> +
> +	/* allocate object of two page for HDCP command memory and store it */
> +	xe_device_mem_access_get(xe);
> +	bo = xe_bo_create_pin_map(xe, xe_device_get_root_tile(xe), NULL, PAGE_SIZE * 2,
> +				  ttm_bo_type_kernel,
> +				  XE_BO_CREATE_SYSTEM_BIT |
> +				  XE_BO_CREATE_GGTT_BIT);
> +
> +	if (IS_ERR(bo)) {
> +		drm_err(&xe->drm, "Failed to allocate bo for HDCP streaming command!\n");
> +		ret = PTR_ERR(bo);
> +		goto out;
> +	}
> +
> +	cmd_in = xe_bo_ggtt_addr(bo);
> +	cmd_out = cmd_in + PAGE_SIZE;
> +	xe_map_memset(xe, &bo->vmap, 0, 0, bo->size);
> +
> +	hdcp_message->hdcp_bo = bo;
> +	hdcp_message->hdcp_cmd_in = cmd_in;
> +	hdcp_message->hdcp_cmd_out = cmd_out;
> +out:
> +	xe_device_mem_access_put(xe);
> +	return ret;
> +}
> +
> +static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
> +{
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	int ret;
> +
> +	hdcp_message = kzalloc(sizeof(*hdcp_message), GFP_KERNEL);
> +
> +	if (!hdcp_message)
> +		return -ENOMEM;
> +
> +	/*
> +	 * NOTE: No need to lock the comp mutex here as it is already
> +	 * going to be taken before this function called
> +	 */
> +	ret = intel_hdcp_gsc_initialize_message(xe, hdcp_message);
> +	xe->display.hdcp.hdcp_message = hdcp_message;
> +
> +	if (ret) {
> +		drm_err(&xe->drm, "Could not initialize hdcp_message\n");
> +		kfree(hdcp_message);

Here you're leaving xe->display.hdcp.hdcp_message pointing to a memory 
location that we no longer own. is that safe for the _fini function?

LGTM apart from this (assuming it is going to be squashed with the next 
patch for merge).

Daniele

> +	}
> +
> +	return ret;
> +}
> +
>   int intel_hdcp_gsc_init(struct xe_device *xe)
>   {
> -	drm_dbg_kms(&xe->drm, "HDCP support not yet implemented\n");
> -	return -ENODEV;
> +	struct i915_hdcp_arbiter *data;
> +	int ret;
> +
> +	data = kzalloc(sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	mutex_lock(&xe->display.hdcp.hdcp_mutex);
> +	xe->display.hdcp.arbiter = data;
> +	xe->display.hdcp.arbiter->hdcp_dev = xe->drm.dev;
> +	xe->display.hdcp.arbiter->ops = &gsc_hdcp_ops;
> +	ret = intel_hdcp_gsc_hdcp2_init(xe);
> +	if (ret)
> +		kfree(data);
> +
> +	mutex_unlock(&xe->display.hdcp.hdcp_mutex);
> +
> +	return ret;
>   }
>   
>   void intel_hdcp_gsc_fini(struct xe_device *xe)
>   {
> +	struct intel_hdcp_gsc_message *hdcp_message =
> +					xe->display.hdcp.hdcp_message;
> +
> +	if (!hdcp_message)
> +		return;
> +
> +	xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
> +	kfree(hdcp_message);
> +}
> +
> +static int xe_gsc_send_sync(struct xe_device *xe,
> +			    struct intel_hdcp_gsc_message *hdcp_message,
> +			    u32 msg_size_in, u32 msg_size_out,
> +			    u32 addr_out_off)
> +{
> +	struct xe_gt *gt = hdcp_message->hdcp_bo->tile->media_gt;
> +	struct iosys_map *map = &hdcp_message->hdcp_bo->vmap;
> +	struct xe_gsc *gsc = &gt->uc.gsc;
> +	int ret;
> +
> +	ret = xe_gsc_pkt_submit_kernel(gsc, hdcp_message->hdcp_cmd_in, msg_size_in,
> +				       hdcp_message->hdcp_cmd_out, msg_size_out);
> +	if (ret) {
> +		drm_err(&xe->drm, "failed to send gsc HDCP msg (%d)\n", ret);
> +		return ret;
> +	}
> +
> +	if (xe_gsc_check_and_update_pending(xe, map, 0, map, addr_out_off))
> +		return -EAGAIN;
> +
> +	ret = xe_gsc_read_out_header(xe, map, addr_out_off,
> +				     sizeof(struct hdcp_cmd_header), NULL);
> +
> +	return ret;
>   }
>   
>   ssize_t intel_hdcp_gsc_msg_send(struct xe_device *xe, u8 *msg_in,
>   				size_t msg_in_len, u8 *msg_out,
>   				size_t msg_out_len)
>   {
> -	return -ENODEV;
> +	const size_t max_msg_size = PAGE_SIZE - HDCP_GSC_HEADER_SIZE;
> +	struct intel_hdcp_gsc_message *hdcp_message;
> +	u64 host_session_id;
> +	u32 msg_size_in, msg_size_out;
> +	u32 addr_out_off, addr_in_wr_off = 0;
> +	int ret, tries = 0;
> +
> +	if (msg_in_len > max_msg_size || msg_out_len > max_msg_size) {
> +		ret = -ENOSPC;
> +		goto out;
> +	}
> +
> +	msg_size_in = msg_in_len + HDCP_GSC_HEADER_SIZE;
> +	msg_size_out = msg_out_len + HDCP_GSC_HEADER_SIZE;
> +	hdcp_message = xe->display.hdcp.hdcp_message;
> +	addr_out_off = PAGE_SIZE;
> +
> +	host_session_id = xe_gsc_create_host_session_id();
> +	xe_device_mem_access_get(xe);
> +	addr_in_wr_off = xe_gsc_emit_header(xe, &hdcp_message->hdcp_bo->vmap,
> +					    addr_in_wr_off, HECI_MEADDRESS_HDCP,
> +					    host_session_id, msg_in_len);
> +	xe_map_memcpy_to(xe, &hdcp_message->hdcp_bo->vmap, addr_in_wr_off,
> +			 msg_in, msg_in_len);
> +	/*
> +	 * Keep sending request in case the pending bit is set no need to add
> +	 * message handle as we are using same address hence loc. of header is
> +	 * same and it will contain the message handle. we will send the message
> +	 * 20 times each message 50 ms apart
> +	 */
> +	do {
> +		ret = xe_gsc_send_sync(xe, hdcp_message, msg_size_in, msg_size_out,
> +				       addr_out_off);
> +
> +		/* Only try again if gsc says so */
> +		if (ret != -EAGAIN)
> +			break;
> +
> +		msleep(50);
> +
> +	} while (++tries < 20);
> +
> +	if (ret)
> +		goto out;
> +
> +	xe_map_memcpy_from(xe, msg_out, &hdcp_message->hdcp_bo->vmap,
> +			   addr_out_off + HDCP_GSC_HEADER_SIZE,
> +			   msg_out_len);
> +
> +out:
> +	xe_device_mem_access_put(xe);
> +	return ret;
>   }
> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.c b/drivers/gpu/drm/xe/xe_gsc_submit.c
> index 348994b271be..9a18f5667db3 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_submit.c
> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.c
> @@ -40,6 +40,21 @@ gsc_to_gt(struct xe_gsc *gsc)
>   	return container_of(gsc, struct xe_gt, uc.gsc);
>   }
>   
> +/**
> + * xe_gsc_get_host_session_id - Creates a random 64 bit host_session id with
> + * bits 56-63 masked.
> + *
> + * Returns: random host_session_id which can be used to send messages to gsc cs
> + */
> +u64 xe_gsc_create_host_session_id(void)
> +{
> +	u64 host_session_id;
> +
> +	get_random_bytes(&host_session_id, sizeof(u64));
> +	host_session_id &= ~HOST_SESSION_CLIENT_MASK;
> +	return host_session_id;
> +}
> +
>   /**
>    * xe_gsc_emit_header - write the MTL GSC header in memory
>    * @xe: the Xe device
> diff --git a/drivers/gpu/drm/xe/xe_gsc_submit.h b/drivers/gpu/drm/xe/xe_gsc_submit.h
> index 1939855031a6..1416b5745a4c 100644
> --- a/drivers/gpu/drm/xe/xe_gsc_submit.h
> +++ b/drivers/gpu/drm/xe/xe_gsc_submit.h
> @@ -28,4 +28,5 @@ int xe_gsc_read_out_header(struct xe_device *xe,
>   int xe_gsc_pkt_submit_kernel(struct xe_gsc *gsc, u64 addr_in, u32 size_in,
>   			     u64 addr_out, u32 size_out);
>   
> +u64 xe_gsc_create_host_session_id(void);
>   #endif

