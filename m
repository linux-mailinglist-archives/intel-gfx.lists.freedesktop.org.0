Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FA68721CC
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 15:45:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155E8112B6D;
	Tue,  5 Mar 2024 14:45:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5A7wOI5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0568E112B6D;
 Tue,  5 Mar 2024 14:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709649906; x=1741185906;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=4n3zUzCncBi9W3AVLuxgIk9LjNBSR+rsr3FaJ3t0VEg=;
 b=G5A7wOI5g5uR5G/+B3j4Ai/BuNVR5xDL/iWOYc+VoVROHP9gAiQanAZk
 a6sa+KhF/wcLpG6ujLkrRTe7EXeO1JLoW7lS9ua3QWbeliMgrSXfVr3Hd
 VQjnjyuKxtCGZ3mi0Pb/RToKy4S/aBNhFZwc8OutsMeQv01swjlhhP1G9
 1dUOBQyjn6tkdEwVIBkT2eq/cavCZMj89zcSeXJfYO2XsqcjGjgapNx10
 sa/yglQLeasOzoqmP4s2onizL8gaR6IkfwAAEAcDTGci1ZfmzNVDb+E+x
 RB0cVuNf5lrNAt/ZZ0TfYDxdISB1jklsqKJN3prbaATtoNEZjZiDpIWye Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15633257"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="15633257"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 06:45:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9799987"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Mar 2024 06:45:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 06:45:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Mar 2024 06:45:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Mar 2024 06:45:04 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Mar 2024 06:45:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Up1T13DgW1bH4jHN0eQOyzbv1JVzz7PBs0U3ZiPpZtotf4vhuTrtLXUji6m2neOZYYgMZur0PV9zJ3EOZLKqGEUSM4ygeU1uUK6KF7DpV635NAONO1clvnE6u2dW0Lse669W3frVRZ4Tx0zQn/Z6iddCsz5JEDka8A/Euy4/BmfTCcWhPrj4bAhT3M402XvwRnyLoDrZcrV8nUNoPixrZakG34hK0HClH8MZE9UImhx2Zal1lu+m9yF/NWRmw9e8LSxlaT1rHbevXNuysz2Dgx/XLGUdLNpqpvqVpTs1Vj8QSeEi0CMq/UaP/2+mUVbo+8D4NvH1/HnEyFaU+svrxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NYnXMq4ITRHWFWhWyuLjGniUFqalCS3rZ33/ecutjA8=;
 b=ek+e2TDJKrpzwCFHJhFB4/zpVhN0Xn/Kyn7EagTg7kV4OY3Od89HAab3TLNa67bzWGn7yP/i5xYuQaWmzyPjwp2NGMpqJ1l1cxHsOZOYyMRbDUyki3cfA/4fLkSV4kRmjVfiBWEalDUO25012p/RwRgT33wMVUQbaYen/oALTIaXH7IG2RUwI+TFmy4amfxsFZk90j4w3dzgdhhPHAwZcPcrACFESuZu+ybbfAytZvVSmkIwwwtymb8wv66I+rmgZ8euOYMzBg9phb27sLzT17atkcvzkTP/Ag4lgG+Y4nPugFx1jV7pBmYUFvmshoh9qROLE+Bc0jadsAmse834mA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.21; Tue, 5 Mar
 2024 14:45:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b%7]) with mapi id 15.20.7362.019; Tue, 5 Mar 2024
 14:45:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240304232531.GV5347@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-6-gustavo.sousa@intel.com>
 <20240304232531.GV5347@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH 5/8] drm/i915: Add mdclk_cdclk_ratio to intel_dbuf_state
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, <vinod.govindapillai@intel.com>,
 <stanislav.lisovskiy@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Tue, 5 Mar 2024 11:44:58 -0300
Message-ID: <170964989861.109629.4443773393434802936@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR21CA0019.namprd21.prod.outlook.com
 (2603:10b6:a03:114::29) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: 150d0cd0-c5e8-49da-5dbe-08dc3d22d6fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nIzY5wyYvh9nOdbgyUE24CBJcfVzHmGai59/uUOXnmWRMWDb1pRcgNoxK55HkRbCG5oc82kQYdYnE59hCdVM8c8+PoFRTn0Uk6z1h+5Dl/O6/hx2L6ugioAuv7VD4je+8zpFhlasdmXQtrdEgDzpv853Md4t0Hdg9AsV9tYgPng0/M7XsS2tFu+8gB20rRLQgWEZqAWtdnM/sLxTshOm3SuIZIyAZfaMz2m9/Kn8esUtyY3yCn71CNo+s7i9Qh7tJB/mLOz74V8V/bM2HiDbsBUrsccVyPSirpLH8c4PVK86aAQnZBXiiy1KHTdZ7NGJ0Vt1ppok/959cscVeJS4GIbGCYjmaqjNaQDEQeA/KmyHubyTcIMHl1RCUPnuKbfunkTcLriST+h48TREMqoZGwW5qzmaG8GGe1srMdfaS8AIheLvl6dpzIKk5eGVcScdCYSLstwmIWU1eiV3+3f4xUgoHnqnG28R1krRuiCP3rVgzJV9bYjHpGalL2MDWno5byED1T0VSX2ptzHf9s/O3mxjW71i+/x9lx+6is2P3RwJE/HmUpT9Ec/52ITcBV6d/e78ETYqR1ivp+hvB25PcLH+8nA+y8xAo6ODLUM8zy6EAHxSeEgJ2fOhSesgzjnliyRdp1EnnbVdKC6Hl3TzUTfDby3lv7aeUs2YxjLlYv4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWZBY1MvQWc5K1A4bDY0NXA4cHJmcjdONndaU1lubEhnQ0I4REpZWFkwNCt6?=
 =?utf-8?B?MngvdzVEWjAxbUE3SVdTYy80VXFWa2hJSUpiaWtoeEFLOFpQWCtkYlJRSEhE?=
 =?utf-8?B?TmIrSGdXNDBHSHB3K3N4cW1sUlVGa0pXWDJ6d1N5UnRFdmdNaTBRTUdZQ1dJ?=
 =?utf-8?B?Y0QzMjBCanRqQXdNTHh3YU5PcmhqSS9OaDR3UzdlRDhTM0tqMlkvd3Rhb2dD?=
 =?utf-8?B?L3EzbzIwR2x1VEdOdjlSSVRDUjdSRmlDSnVibzRScWE2SktzclYvNmczWDIr?=
 =?utf-8?B?Wlg1L0FBVkNwcWhnR01pR0h0ZlZpSndsZGFMY0ZIdFFZOHRSQlpIVCs3QmhG?=
 =?utf-8?B?VmZrQXk1N3pMbUE1enBHSzNLRkVVc3gvVUNQY3NjNWhCamN3bk1rN3Qxamo5?=
 =?utf-8?B?d0FMUHUxaWROM2ZqT1BYdTRUZm1VN2NhVlp5YStqZGZiK1FLWmlkLzF5ejNT?=
 =?utf-8?B?VHhudXNNa0pNdkMwb2o2RHlsOEVCV1JsaktiMjJiYXo5b2MxdVFzYVFyZnlV?=
 =?utf-8?B?UWtXeXFrNkQyeW14MWhwbGkrWitMK05NY2NhMGdrUWpIUTRoVWdzUnJSeExU?=
 =?utf-8?B?L3dkSWNyb0tqZVBOVHdEbVpPOWQrRHNRZWNkT0pHTVFVbWlUeHVJZWtlZGVL?=
 =?utf-8?B?c2RHQXl4OU5NV1NvTVNkSU1YbmpsMXhCL0ZpNFNSSXlQMFhBbmNyeU5uakVE?=
 =?utf-8?B?dzJsOE1icEsyWjhEdEE2MmNrRE5ZWTd2a0VoUkdMNWtxRmhxMyt4VGN5ekdJ?=
 =?utf-8?B?VXprL2Z1d2dFUWMyb3VXU2wxODhLSmxVY2pZWmkrd2lKSjZQSkgxbXExK0Vv?=
 =?utf-8?B?UVZLRDBJWEtEaGppQm1jQXJScnI4YU9WSmJ4Z1o5S1UxVXNKOGZvd3E0NDgv?=
 =?utf-8?B?Y1c1alhUN3RjQXRGbVhHSVl4T2hQb1BEWkpYeXRmemRJcFZDZW80WU5LbEda?=
 =?utf-8?B?RnBiaGpVV2NPNlNDTXdtZW5oZEROaVVYN0hIK0tOQytPRm4xa1dzSHdNVDNv?=
 =?utf-8?B?N04ra1RicGpzeUpTZldFencrTzBKOFVXY1VCTkUyZzNDSi9CVGZoTVVKNDQr?=
 =?utf-8?B?aVNNazJMWnFNMGNWVjlxSU5MZkYwWVFiZDRZWUVtS2ZneVlyUHh0QmJJZzFv?=
 =?utf-8?B?YUtkMk1jTkp6bWx1RCtYODVQanBObWk4YVptQnA0MWtHeitHb3ZHWVBDWjhq?=
 =?utf-8?B?aXFNT1J1ZS9RdGIyN1hNaE5KRXdIZDg0VHM3Qy8wMWc2bGpiSmVaeE9vdHc2?=
 =?utf-8?B?V2E4VlZWTStLbU0wY2JaeHEraEpHN0hrNnIxS0hkaGcxNkxtdGJERVh6dkxJ?=
 =?utf-8?B?SlNRRU9PTmFqMkpHYm5CeHh3cG9YWmxYMldHbEY0QmdoT2VzemJ1azZCbVdS?=
 =?utf-8?B?WWFrbzhvcDMwWWhDUUNRNmV2Q1N5QkVQdjhjOGN2dVRvSkpvQytEQnRoRHZk?=
 =?utf-8?B?QWdoMWh0WHFneUNOV1JOdWpPQVl1K1hKbEhFbFd3ZDRsVFgyM3B3UlArSDBX?=
 =?utf-8?B?ajg0TEtVaGs4bEZpZ2t2dzN6d1NwbXo2dys5OXJVOEUzOEN4b0hRZkd5OVJl?=
 =?utf-8?B?K0FPUHJRSUwvdCtZbHFLcnBjSmhTLzRpY0xtTFVhdEdZaUw5MUcrNTVOZU1N?=
 =?utf-8?B?aGdqT3Y5OG1jQTFiQ2RteEZURUgrUXZ3NjhtOFN4SnY5S1VncnlXQmlrajBy?=
 =?utf-8?B?RmIvN2NFeTl6c1VaTUFTZUFsWGhDSG5XNURlUUNrallGNXh1YWpqck11ck9t?=
 =?utf-8?B?c1kwVTVXU0pWYlpuUUgyTU1WRjJORk5BM09iRVRPNFJreWNXNnFCVlk1eHhK?=
 =?utf-8?B?Y2k0UXV4ZmxLamxDTURsWHZrbjNhdExvcFVLMXgxQ3pBbUxHSlQ0aDJ1YWxJ?=
 =?utf-8?B?c0o2QURHUVF5ZFhlajhGbnIvK1dQQS9IdFViOEJCdGJ0aGl3akpHWnJsWFov?=
 =?utf-8?B?VCs1aHdzckRTVGEwYjFFQVdac3hQdU9YNld2V3RNZHRsSDFlRndCb0VWc0VW?=
 =?utf-8?B?ci9BQTBQZ1orZmZZcnNxOGxHMlJIOStIV0VvY3BlL2kwSmJBZkNLRnNqVWt1?=
 =?utf-8?B?aG12a3BMU20zUlpIRnl6NEcyRE9ialZwWlhCVlpmQ05pU0FXTzhqY3RkL2g5?=
 =?utf-8?B?UGtHQ200VWdtekF5L0RQb3g3anZXS1plWEdQcmV0VDhDT0wxRU9ka0tuOUNQ?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 150d0cd0-c5e8-49da-5dbe-08dc3d22d6fc
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2024 14:45:02.5961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exzPajc42pOokh2Viv9u/sx5+o3U1av7FbgqTIi3YH0MltNq/M57gMHRikbbEkAYaXtyZR4l0fbrfyhSOw19QA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
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

Quoting Matt Roper (2024-03-04 20:25:31-03:00)
>On Mon, Mar 04, 2024 at 03:30:24PM -0300, Gustavo Sousa wrote:
>> CDCLK programming Xe2LPD always selects the CDCLK PLL as source for the
>
>I think something got a bit muddled while rewriting this sentence.
>Maybe the first two words were supposed to be dropped?

Yeah. The original intention here was "CDCLK programming for Xe2LPD
...". Dropping the first two words also works :-)

Will reword this in v2.

>
>Otherwise,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

--
Gustavo Sousa

>
>> MDCLK. Because of that, the ratio between MDCLK and CDCLK is not be
>> constant anymore. As such, make sure to have the current ratio available
>> in intel_dbuf_state so that it can be used during dbuf programming.
>>=20
>> Note that we write-lock the global state instead of serializing to a
>> hardware commit because a change in the ratio should be rather handled
>> in the CDCLK change sequence, which will need to take care of updating
>> the necessary registers in that case. We will implement that in upcoming
>> changes.
>>=20
>> That said, changes in the MBus joining state should be handled by the
>> DBUF/MBUS logic, just like it is already done, but the logic will need
>> to know the ratio to properly update the registers.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 26 ++++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 ++
>>  drivers/gpu/drm/i915/display/skl_watermark.c | 18 +++++++++++++-
>>  drivers/gpu/drm/i915/display/skl_watermark.h |  3 +++
>>  4 files changed, 48 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index cdf3ae766f9e..04a6e9806254 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -39,6 +39,7 @@
>>  #include "intel_pcode.h"
>>  #include "intel_psr.h"
>>  #include "intel_vdsc.h"
>> +#include "skl_watermark.h"
>>  #include "vlv_sideband.h"
>> =20
>>  /**
>> @@ -1891,6 +1892,22 @@ static u32 xe2lpd_mdclk_source_sel(struct drm_i91=
5_private *i915)
>>          return MDCLK_SOURCE_SEL_CD2XCLK;
>>  }
>> =20
>> +u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>> +                           const struct intel_cdclk_config *cdclk_confi=
g)
>> +{
>> +        u32 source_sel =3D xe2lpd_mdclk_source_sel(i915);
>> +
>> +        switch (source_sel) {
>> +        case MDCLK_SOURCE_SEL_CD2XCLK:
>> +                return 2;
>> +        case MDCLK_SOURCE_SEL_CDCLK_PLL:
>> +                return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cd=
clk);
>> +        default:
>> +                MISSING_CASE(source_sel);
>> +                return 2;
>> +        }
>> +}
>> +
>>  static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_pri=
vate *i915,
>>                                                      const struct intel_=
cdclk_config *old_cdclk_config,
>>                                                      const struct intel_=
cdclk_config *new_cdclk_config,
>> @@ -3281,6 +3298,15 @@ int intel_modeset_calc_cdclk(struct intel_atomic_=
state *state)
>>                              "Modeset required for cdclk change\n");
>>          }
>> =20
>> +        if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual)=
 !=3D
>> +            intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)=
) {
>> +                u8 ratio =3D intel_mdclk_cdclk_ratio(dev_priv, &new_cdc=
lk_state->actual);
>> +
>> +                ret =3D intel_dbuf_state_set_mdclk_cdclk_ratio(state, r=
atio);
>> +                if (ret)
>> +                        return ret;
>> +        }
>> +
>>          drm_dbg_kms(&dev_priv->drm,
>>                      "New cdclk calculated to be logical %u kHz, actual =
%u kHz\n",
>>                      new_cdclk_state->logical.cdclk,
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/dr=
m/i915/display/intel_cdclk.h
>> index fa301495e7f1..8e6e302bd599 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
>> @@ -62,6 +62,8 @@ void intel_update_cdclk(struct drm_i915_private *dev_p=
riv);
>>  u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
>>  bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>>                                 const struct intel_cdclk_config *b);
>> +u8 intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>> +                           const struct intel_cdclk_config *cdclk_confi=
g);
>>  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)=
;
>>  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state=
);
>>  void intel_cdclk_dump_config(struct drm_i915_private *i915,
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index d9e49cd60d3a..4410e21888ad 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3057,6 +3057,8 @@ static void skl_wm_get_hw_state(struct drm_i915_pr=
ivate *i915)
>>          if (HAS_MBUS_JOINING(i915))
>>                  dbuf_state->joined_mbus =3D intel_de_read(i915, MBUS_CT=
L) & MBUS_JOIN;
>> =20
>> +        dbuf_state->mdclk_cdclk_ratio =3D intel_mdclk_cdclk_ratio(i915,=
 &i915->display.cdclk.hw);
>> +
>>          for_each_intel_crtc(&i915->drm, crtc) {
>>                  struct intel_crtc_state *crtc_state =3D
>>                          to_intel_crtc_state(crtc->base.state);
>> @@ -3530,6 +3532,19 @@ int intel_dbuf_init(struct drm_i915_private *i915=
)
>>          return 0;
>>  }
>> =20
>> +int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *s=
tate, u8 ratio)
>> +{
>> +        struct intel_dbuf_state *dbuf_state;
>> +
>> +        dbuf_state =3D intel_atomic_get_dbuf_state(state);
>> +        if (IS_ERR(dbuf_state))
>> +                return PTR_ERR(dbuf_state);
>> +
>> +        dbuf_state->mdclk_cdclk_ratio =3D ratio;
>> +
>> +        return intel_atomic_lock_global_state(&dbuf_state->base);
>> +}
>> +
>>  static void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private=
 *i915,
>>                                                  u8 ratio,
>>                                                  bool joined_mbus)
>> @@ -3574,7 +3589,8 @@ static void update_mbus_pre_enable(struct intel_at=
omic_state *state)
>>                       MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>>                       MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
>> =20
>> -        intel_dbuf_mdclk_cdclk_ratio_update(i915, 2, dbuf_state->joined=
_mbus);
>> +        intel_dbuf_mdclk_cdclk_ratio_update(i915, dbuf_state->mdclk_cdc=
lk_ratio,
>> +                                            dbuf_state->joined_mbus);
>>  }
>> =20
>>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/=
drm/i915/display/skl_watermark.h
>> index e3d1d74a7b17..fed4d12df584 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
>> @@ -58,6 +58,7 @@ struct intel_dbuf_state {
>>          u8 slices[I915_MAX_PIPES];
>>          u8 enabled_slices;
>>          u8 active_pipes;
>> +        u8 mdclk_cdclk_ratio;
>>          bool joined_mbus;
>>  };
>> =20
>> @@ -71,6 +72,8 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state =
*state);
>>          to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state=
, &to_i915(state->base.dev)->display.dbuf.obj))
>> =20
>>  int intel_dbuf_init(struct drm_i915_private *i915);
>> +int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *s=
tate, u8 ratio);
>> +
>>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
>>  void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
>>  void intel_mbus_dbox_update(struct intel_atomic_state *state);
>> --=20
>> 2.44.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
