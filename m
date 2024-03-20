Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 134B2880BD8
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 08:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97D0B10EF4B;
	Wed, 20 Mar 2024 07:16:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cmeb8pYv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A4E810EF4B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 07:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710918960; x=1742454960;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hHFoK2igzVis9c7iO3abXwuI7KxDsZ5X3BNLmBrWEfA=;
 b=cmeb8pYvHXde6LDu68eMY1M951Bu+z3oOOHXXWVtBDI11x0au81Ng2aI
 yMZNOnx/+/jHk0wJK26ugfNxPsV64rUYPqEr9ANqNEFy1jfvlQ1n37Pz7
 WEPff6GWixMVW+qqHwblt/FbLJdGXWWqOeSZC8j5RssEpc3YwtE1Jlu+U
 UUcVf0pXl9SHgY8aw25jVSsD6Wf+QcqvSoOiaKlIwUKydjA/JTJ1Cg+4j
 KtgVZhyv5bWcfnACVvLTNXPUzogq+WYHpcEYJc8Cp9OBIjUfaAUTTjpKK
 wPSfQn/R1ANfYGcPBDh+Dewn6yv6trG8tix80x1apbjJpTGFeUVI4fmiu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5687692"
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; 
   d="scan'208";a="5687692"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 00:16:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,139,1708416000"; d="scan'208";a="13969243"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 00:15:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 00:15:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 00:15:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 00:15:58 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 00:15:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PG6GqL6puqyxj0hWfYvR48le0DLlro8I2RoO8+Wt1u3Gf/L9cMjkNvWMk0HceV2oP/2PrHnbsykCjpWtDhLIOUBZAQrjWvW6oic1RZzGNtg1EvJ3zP3n+ofKqvFZPg6B3iYcbys0ku1g6tCzmaa1Rone8pCeIn6iumvq1On9AZY/2tdOjXoDbkmgYrSiCJEWMhMsO994ThDwh35MFyYpsH3tPd/W4sL+yFYMcSD2WzhZM+bZ4u6Fh3aSke3TSxfNEr3YY6lfNLZYTtVxtwWFnxSb0ZkZjkumSIiMgWTUkOucYN1ftEHR2U9LRLbmJb4Ob/mu2c8S27IzcC/iYVa0Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j1MOAolRarqjSecrr5pZTM9XRJSvFrnsOkpfZHazv8Q=;
 b=H34Qmaxl10bdBCzcjUDDr2/0g6PqAy/5iVQVgQeDyo5Y/bh1QwQjrWcgLIDWqi+I/NuoBl6UyhUqDlmDhLpMZ5jUY21Hl1IwSu6529prqwXR7canCJpVLxUHwaSD+WvZkXLloFANyVdvPk41v+d84f7JQ9Wvy80wY769E4uw6sZjuHwILk77KDY8c7NLmwVJ5gd5aKRHHwlHzur1wcF501A7yW9a7pL2xSHjsyofc+kEkfXJoGGj0zWaMezwbZlVEnyq//Pd9XZGUQBzVGAozWMa5+Yw/3roVokfWh7ka50NsOvZEqskEaO1HE7QEQT7Q7Zk6SU48rwMpK/aX/eQNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4848.namprd11.prod.outlook.com (2603:10b6:a03:2af::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Wed, 20 Mar
 2024 07:15:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::31a1:93ed:8501:f2c9%3]) with mapi id 15.20.7409.010; Wed, 20 Mar 2024
 07:15:57 +0000
Message-ID: <b0a3c842-ff3d-454e-99bb-f1336ce70d22@intel.com>
Date: Wed, 20 Mar 2024 12:45:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/scaler: Update Pipe src size check in
 skl_update_scaler
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20240313143825.3461208-1-ankit.k.nautiyal@intel.com>
 <ZfQGTfxuYJ0bwQ3z@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZfQGTfxuYJ0bwQ3z@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0121.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4848:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e795b9d-222a-449b-fc8e-08dc48ad9646
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zzsSv6gLe/MGuFy1R376rW0PWTWaYHDCd6LDMDNsspkcIRVe9qVbN+Iwx4xQ9wgfV4ZUIyMjDaFbgSN8B3hNoNm9I4CIIeWdDg1wgYdlwpZF0/eIXgYKhbbNx35Gd7gZ21q/fNfnGC5WZfNGSlIrqmSGhCMD42CTxP1DqHVhXXMpfRNS57BK86p0g/bCwRPouWr2WDIwKWzq1oehmIlcsc3LfbR0tfG/m2KCWKpS+q2/xmAcL7WveWNUIh5SG7hYe3/A/Y0f3rDBSd5wOf3bSe7wzIEKHb57j0qe+Xe3i7hKS997UtDMcYY/fe3F2IonHOp+BOEmzEVDHXBK4yAJOr7jtt+ha5Zj1Alwz0WIWPgaUeldOqQSNPWOnjJrr+g25AIAqWuU+wtbtp/pG3pOMZMKnlJUd7xkjoudyEcQvsA5HNrPMZDM14Dg2Onpb3ZIyP2D3NqX4WGLgTh2UTN5q5+iJo9dQIccKavAjr4UDE29NF+MwLjCpeK2Q4qxvXEalKTCO1R57Q8QwQDiFkRW6PbuACmVgwkGDbrmn0lWp7C5oYUel00oBr5Gl17qaAACw0dccOYnP/1JOgXJpdEupKEm5oxnW3SgDw8LmOn2d+jYMtckv2ITcK9+eUovVX9mW3VKqT28/sO7oTU3HtF+dE8tnaqg9IJ+EOff7SatAEM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGNmZjlxWitkbzlxL3IxU2tEUjhFZlo4ODEzam1iWnU0a3FzMDNFYThYTVNZ?=
 =?utf-8?B?Ry9LL08rWXp6SDNRc252c2U5dmcvVk9kK003RzAyL0F1Rld3STlVMXBsZ0Rz?=
 =?utf-8?B?T0tmM2d0eVpZMXl4cHlnNUl6dGJCekdCalRpc2QvUlBVZkdSNVNYdmJqbUNB?=
 =?utf-8?B?MUg0NUlzVFZmQWpsSEIxelZJbllzTUJYUUZQc3E2V2RkQy9rQlArQm9oeXMx?=
 =?utf-8?B?bEtnOThaY2FsSDVDQys4UjNSeUFYVC9wYlc0MjlKNkJML1pvZG9TWUN0TEsv?=
 =?utf-8?B?S2hXa0ZnRzluTTVxZ21LeU9YaExSSUdQNG9MTDB5dFdZaGhlUDRHSDUrSHUx?=
 =?utf-8?B?Y2N0WFp6MGFQaVhQTDJUa3pQWENBR0hOLzlWM1EySFZEMXB5cTVZcExZMkRv?=
 =?utf-8?B?TFlCUDB0OGsxMlAxY1hGb3h5WU9IRUJhdVFTSW1WT2dMQjJjOGV2N1RPK1RS?=
 =?utf-8?B?N3MxbEZNdUN5S0dGWnRTQW56dk83YWx2QU5BczNydVBvTnF2MDlUVXBFaEVV?=
 =?utf-8?B?V2xMakRGcTNKanAremcvejArZ1R6OUVrNDcwWlZRTU9LNjlWNTRmMVBkbFZp?=
 =?utf-8?B?Y1RkTDFyMjNBM3l2S01ZZll0b05taW9YaW4vSDQzV2hqZURLanlXR0NpeUZN?=
 =?utf-8?B?T0dkV1JTandKNGtvYlp4YTlzUEtLeHJzbytpNnV1c1JLUHl4V3Vrd3d3UzNu?=
 =?utf-8?B?ZmVsNGlLbjJPVTJGQ2JWVzJxeEFjTG5WUGhrMnBXSkVJQTRTRWRMZTJxUnpz?=
 =?utf-8?B?U0lJT2h6WWtDakZMYU5jVzVTZVBBVTByMTVMU2diUDJyMG5McDFRSElpdWRL?=
 =?utf-8?B?YitYNHVLYnQwMHFjUnpHS3luNVlNSUF2Ymk2enh3T204VUFJQlV2ekhYSTUr?=
 =?utf-8?B?OFliTU50NTlJU3hHZGtNU041TGc4MkpxcUo0b3FXU09TTXBBQVEvem1CSk5Q?=
 =?utf-8?B?NytkL0pXcDVFTWtJN0hpNUtLdDNEc2IvUWVFL0hFVUlRd3h5UVdnTEpsSGpu?=
 =?utf-8?B?aStreUl0WW5ra0lQUFlyWHN5bEh5WURaaUFXb29HT2I3ZGNtZG5HVmdqYTE0?=
 =?utf-8?B?dHdBTXJ6MkFjY0FrRGt0ektiNEVqMGpBQUFZRnBPK2NacS9sMnduYm1COXhB?=
 =?utf-8?B?OHVJanVPVVF0cmw3MTMrYTVQZlV5REhYVjNLWWxwTlQrbXBQVXlrWDMwcG1y?=
 =?utf-8?B?bGpVUk9OVjFLbWtFS3dPaTF0MnhNdFJkcVMyb1BuT25mQkI4d1pOdlZrV2R2?=
 =?utf-8?B?UGhNa0ZlZkJ4OGN3UldDRGpNUmE0Mk8yTTRoZk9uOUZNUisya0dxajBodXRp?=
 =?utf-8?B?cnJQUCtRMHdmcEdhNG8ybk1hejd1RzBqLzJ2RXpsOUUyb1d0VTI1SFZuMERa?=
 =?utf-8?B?MEVzUGcxSVZnSmRTV2poc1BHNXVwMkJiSW82RlBEVTIra2Jlb2dmSEJlNTl0?=
 =?utf-8?B?VkRKUEtHZGZ2bFRLZDVnZ1ZhdGowcmtKWkFUb3R3SFk2UnpVQjBmNTNzSEdQ?=
 =?utf-8?B?TGt4WlBDYUdFZWJGblpidlVXNkZhOTJrMW83c3g1RWtyZklQVStBRjVOT0Z5?=
 =?utf-8?B?OXRMWjBWdklZNWtPb1pPMFBQMlRyeVBxamE3NjBHbmlrbkNTbnFvT0J1ekF1?=
 =?utf-8?B?T3g2cUJCLzRaWHU3WW53cWJmL0FyNlJvWWFFbTJFUWl3cDQzNjJ4T0pwQnBK?=
 =?utf-8?B?TG5XeW9kN0NwQ283S2JuaFBjL3k2aHpZNHE3RlZFNDJnamJubVNub01CZU56?=
 =?utf-8?B?SzVmMGtwSjBJaGdDZlNXK3A4ZWVhVUJhNGJzZzVPa21WKy9UOFRVUW8wQlBu?=
 =?utf-8?B?SE03bEh1T2tmdVdSang0RmN3TFMzblRFaDk0R1lpSGkvb3hGNVRwT1Jsd1U0?=
 =?utf-8?B?Y3FEU2VoenIzRlBicDlXbFd1V001RkVjRHY5M3U4R1RlaVdvbHpxazNVN2o2?=
 =?utf-8?B?ajVIWWd3Yk9LeU56UmR5aW1BZnd1S1BiTWFNUkFCQ0F6U0o5ZEpOT3dKYWRY?=
 =?utf-8?B?dWtWc2NKN3dXemprV25QTzlESkp2ZTIyK2hpZWswOVJ2UndNaGZBbU1XTEZC?=
 =?utf-8?B?dlQ5M3I1dnByQllPamczdDQvSGtFVmNGcUFNbVV0RnFYZ0ZtcExFWEJIYXhD?=
 =?utf-8?B?UUxPSGF5VzlKVVdiM2xDK29oVXI0RFUwNSsrdDFkWFpGMnJmK2NyeFV3R1Bh?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e795b9d-222a-449b-fc8e-08dc48ad9646
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2024 07:15:57.0969 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OPPt1FPDUF2TfhNzBaabf5QHFchguNC4wh1jj7fEpXCMLVJKvwSWsITHYbpzIc3dXiyERrBuSq17dHnMP0B8ydUn5WUpZvlvDzRDk9A1X3Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4848
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


On 3/15/2024 1:56 PM, Ville Syrjälä wrote:
> On Wed, Mar 13, 2024 at 08:08:25PM +0530, Ankit Nautiyal wrote:
>> For Earlier platforms, the Pipe source size is 12-bits so
>> max pipe source width and height is 4096. For newer platforms it is
>> 13-bits so theoretically max width/height is 8192. For few of the
>> earlier platforms the scaler did not use all bits of the PIPESRC,
>> so max scaler source size was used to make that the pipe source
>> size is programmed within limits, before using scaler.
>>
>> This creates a problem, for MTL where scaler source size is 4096, but
>> max pipe source width can theroretically be 8192.
>>
>> Switch the check to use the max scaler destination size, which closely
>> match the limits.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks for the review, pushed to drm-intel-next.

Regards,

Ankit

>
>> ---
>>   drivers/gpu/drm/i915/display/skl_scaler.c | 7 ++++---
>>   1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
>> index 8a934bada624..baa601d27815 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> @@ -213,10 +213,11 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>>   	 * The pipe scaler does not use all the bits of PIPESRC, at least
>>   	 * on the earlier platforms. So even when we're scaling a plane
>>   	 * the *pipe* source size must not be too large. For simplicity
>> -	 * we assume the limits match the scaler source size limits. Might
>> -	 * not be 100% accurate on all platforms, but good enough for now.
>> +	 * we assume the limits match the scaler destination size limits.
>> +	 * Might not be 100% accurate on all platforms, but good enough for
>> +	 * now.
>>   	 */
>> -	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
>> +	if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
>>   		drm_dbg_kms(&dev_priv->drm,
>>   			    "scaler_user index %u.%u: pipe src size %ux%u "
>>   			    "is out of scaler range\n",
>> -- 
>> 2.40.1
