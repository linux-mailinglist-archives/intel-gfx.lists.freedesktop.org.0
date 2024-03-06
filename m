Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 043C8873727
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:59:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D63510ECB6;
	Wed,  6 Mar 2024 12:59:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLgX032i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8B0113169
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 12:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709729944; x=1741265944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XqH4L+Ag+iR1ihy7KQ7JDqPrVXAC9tqhrNT1ZS0Oqd8=;
 b=MLgX032i5r8UbEtMlyWXjCdEIxxU0rU9rhDsvKjYEsAXhWdcPYiCIBdH
 fFLK1GtccW8vsU8w/l6A6dSit4dKaDM/owzCR+L65L2chmbGSrH3F5s84
 YBW6gY8qEnpsM+5foqALNJbj6OD58WNNYJue/zJGe+J2wh3bcth+2yLVU
 A5Kq1/ck+OhbFJmYnHjQ6tpWzrecBbIIJyG9CLtAIAHAiETxisQ74rvOh
 ZZaxZqtZBZvSFW4p4GYtMIcfCjXNSX2zV5viLCqUlBWpqAVg9qYdfKNRU
 bpoqLodOvhyc8gsVUTKBujtGRd3E0e/V64HvOp88PJaRl/IMh9788HK5c g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="15483491"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="15483491"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:59:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14245022"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 04:59:03 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:59:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 04:59:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 04:59:02 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 04:59:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l2pwM7O9q+qIa1QU05izOA34c0DGvrxSbQ2FMLup2P68UpVT2P9sCPRLYQGJfntuIAalwMMsNkceYdHBJqhjhikQ/FrpIuouAJC5TpP2BZxB2G/vJLooAOITNkNvqDwifA9U5frJb2WCzQ5BmnFV2LsOtD7A20rpYIAZYhvcD33o95ubWQ2BZ+CoLoBckDmQ1VrzHmtFhJvFlx8kMNbK9fG9r/9m+kyr84jqGxHFJX86a+8532tPnV67giR8MSZkT6xIdoYYjROgWr0KIEI8Hr9uNktR5VFjMyblczH8OMA7n2Joaz2MS0sLHt92PK9axsHm4S/+jcJMxUcuCO4XMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IcyBKq1HT6Tn3zDB5BlSGU08DllmaKWyQVxeaXCJ9AY=;
 b=SxUIQSCRoxipTex35Iimd2f0nZd4IuR2L2ITQsPUv057LwYTI8//cgGSYdB91hERzUcTbiTwFh5H9cLvqXoZI1P0WTqwE3OvfQIYpvZbrTuubaz6sFiru6tZAUAifbgCSPzAW9jZDBHG46raPv98iEDsJ1aCMqWpsMuP7xfjz15IMPo5MSs6x/6Z5sCGJ+G+cnr82FxNGNHIxMGMsJLVE45LineIGCf6tzvc+udhggzIz/i6BPzRHOSLbQXMzWhA+PFah0PGjJN+Ru5w5EPlgtn+UYkiuN9UL35a/i6ne4xR/oVAvLSNqZDWbbFWWVkdCy8LFOL1ZUpubLZeNpbVzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8560.namprd11.prod.outlook.com (2603:10b6:408:1e7::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.24; Wed, 6 Mar
 2024 12:59:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7386.005; Wed, 6 Mar 2024
 12:59:00 +0000
Message-ID: <a877bd6b-7035-4651-972c-4c62399fc083@intel.com>
Date: Wed, 6 Mar 2024 18:28:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/scaler: Update Pipe src size check for
 DISPLAY_VER >= 12
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20240219055255.1099867-1-ankit.k.nautiyal@intel.com>
 <Zec5l8v6OAJCqYZs@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Zec5l8v6OAJCqYZs@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0070.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8560:EE_
X-MS-Office365-Filtering-Correlation-Id: 3429820e-7919-4b78-5f54-08dc3ddd30f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9qy31OnvBImtzsRE4UaND2bvEJdS6nXOWvWVg4opnhU7K01Co4Ypbsvo7lc5600QUSZNl/ZTFLpWK/KgVIx/e/AgcYRZ35i0Nyho5VYfUJnDqtdXbleEoTaCIMMNlUnf8qCxgs9ZF3XKzRfCxv70ATRm4NGvwOfE6w62/LRV+drdViwP/a6sMa18XPVttguccdz6ghuKi59AGj6xZD6V+tHm1iuU0yZE6zUlcI4WHA+glCrrbKvEa1lcBk0vVTDp+MKawJHnsUOv4wFk+/A8NFRWNqhPn5+gRFAbk52ldIzeJOeMzViZlTe0PrWiXLXuEq7kM5/+j4R6hj0dpPSSqvaFxo+P7OBxWv3qhichqGEowbpFcG1Gq1cTX6oKV6lb+BOHCnmEndP8y6WFZKfTJOTLKwBS0uQlRYtunHWms4KYsr/EZKHjCDqGAbsat4y2eCwsJujuGUx5a3PYuJ29q2kDVPZyt6mHd8ca/hSwzWgGNTVJn8gnvrBwyu71q2dNIJM9sLIOSmduvbvZygU2N7mHs7QoTBQzYf1o9DPgQ9r6Rq7YC9aLNIMy06XM6eHUIEM6LEzZf2bQJCz7sn53/aAFL5qMWtlrQhaiIacq9vRZ7ZiOmzR1MGdCbbANAOBDBO94oJy58MSquKcwwcusGyq0CeDhXX0Wd3sKCv0k6ug=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NWRJSmNLVjQwMHQ5b3B5Z3FqUmNZejN1TkdOdHBzSWp2ZTBCbE5vNWdPMTZo?=
 =?utf-8?B?cWNjb2RmSXZyOXo1VWNDZU5GWGNiTHludUZSMFFPdHJtR1pSRnpMYmVxa1Yy?=
 =?utf-8?B?VWZzS2l5Z1ptMXBpc0hFSlV1Uk5FQ2xobnZ3akxycWhwL3pETHllNVNUbmdM?=
 =?utf-8?B?M05TUDB1VU5QeXMwSEJjSjBOb0xXelNVV2h1SzBrVkVWNFFOY29xVkxicmRD?=
 =?utf-8?B?YzdBTTFKZThYK1cyZzZsY3FneVg5TEh1bjMwaGp4U29DSkdLM3dIVnROSmhV?=
 =?utf-8?B?SHBTUnBTbjRMbmhWaVpxSzlvU01CV1QvV3kwYTltUlFxUFBoTnUrVXYvSm81?=
 =?utf-8?B?eDN3MGJJS1NIT3p5SWNzb1F1V05ubDlxTlVHZkRFRmk4ejE3WEpMRWlYMXVZ?=
 =?utf-8?B?OUI5RnJmek13QS9VbDFhRlpVczFLKzY3d2x1dlFjQUgxRWtjR2psZnZoMHFo?=
 =?utf-8?B?M1dTV3cvWW9RVHl6ZjdKZkUwSElOWWF3dDYyVTV2L00xUVVTcnp3SS9JWUF6?=
 =?utf-8?B?Y3N5U3pvUUNBSFByZi9neXlFcjZDbSt4ZHZJREh4Zm83VDZVUm5naytFMFc1?=
 =?utf-8?B?cFZtZk9WZGlaS1FkcXNrRTd6VmlPb1dEYkdRaVcwc2t3NUJ0UHZqN0JxY1ZZ?=
 =?utf-8?B?Rk5EV0srVURZTUtTODZORmtvWFVvdGFRcTN4eUhQTnhLbnVyb09Qd2QwN3lV?=
 =?utf-8?B?WTh4TXVPMUNwV1F1S2xTeUprVHkwT2JDYzVwZnpzb1lBUW52VXhNaFkxYnE3?=
 =?utf-8?B?M054UE5wTmVsQjlzR0NxUnZlcTZIMWVRVnZuK2owWkZUUlQ2V296eFZMWU1Y?=
 =?utf-8?B?M2NzTFZvbzBCQW1sV0h3MEZmVTU4QkJ3b0g5dEF5Q3dSaFNLamErU3Y5SDE2?=
 =?utf-8?B?b2lCLzR1Q3lxTDUra1Z0amQwbjFxUnNldHlWL3loT2VJeFpDdEV6R2pCb1Jr?=
 =?utf-8?B?TnpIL0s0WjBkT1FVMS9mQUpJQ01uWmtzczA5RHcybEhRRWIwcWp0SXpOeWdN?=
 =?utf-8?B?SlBZb3AzVGhmRXpLc1hhZGZLTXlWRHpTYUord1VCYmNYNEEvVVEwK2xSckVT?=
 =?utf-8?B?dVFZSkh4WHg2Q3FPUU8wUWliVXp1VmRrbHF6SmRaTm9lTUU2eXZLalZkL3Y1?=
 =?utf-8?B?eXZhMitsMjhSa3JkV2FrWGRhTzE0cm01emdlc2xDbjJub3R5RS90eUJuajJy?=
 =?utf-8?B?RzJDM2RyNTlsT0tSVFFCZk9PaXVjLzdMVTIycUVjaU5rTjlTRUFCZDY4alRR?=
 =?utf-8?B?YTlTR1JtU0g2Zlh3WFphdEdVdGF2WStucjdQK2RNY0Nta0lJdjMzVUEvWmQr?=
 =?utf-8?B?TEF4N0NKVU9mRTA5RlBPVWxsd1F2WnlMM01Ec3c0SFRuQ1c2ZURxRjJiS2pG?=
 =?utf-8?B?SDkreW5HRlZuSkNKK3JGbVZrcGNQT1ExVFFvMEhGSTc5MWg3L09TNzV0OXEw?=
 =?utf-8?B?VVBRUXlvL1doU3UrbzMrR3AvZWdpY1JPcmMzeFZsTllkRERpV0dJQ3N4SVVy?=
 =?utf-8?B?VGJ5RjBaekFYUDNDSmp4WldMVXVkVWprRHVpNFRtdVI5SWQ2RDR1clFuakpk?=
 =?utf-8?B?NmdPbkJ2bGdhei9ORVp5d1lMS1ZuWXFhTGhSNzBTdi9zYTBacWcrRHE1bktF?=
 =?utf-8?B?NjJvclV6alBPVzRIRXdDYmc2bUF6ZHpJeTVVWS9BNFVDSjBJNkxDZGNIZDli?=
 =?utf-8?B?bjk5YUJ6OUh3bncvb0lNWVVVVkRBT09OREQ2dWViLzVjbFBXcGJBZk5RTXc2?=
 =?utf-8?B?bnlPWGsvU2pZVEp1c0lTYlJEMkNLQkpadUpLTndCUVI1RGF2V2ZqUm5FQjBw?=
 =?utf-8?B?UFNsakpadnQyUlY0aGVwZkhOQjhtZWxGbDZxZUtDeElhcEtLWHpKK1N4RFZF?=
 =?utf-8?B?MWhGUUdHSXNlYWpWWkZmUVF2dk1rR0pGRnY0MGpYMFBWK0hGVWFkeFRSSE1u?=
 =?utf-8?B?YnZ6NGRkNnAyLzNYQ2syRmYwNU5qcGtJVTlqZEpIVjNHTE01a1p5bjM1cmVX?=
 =?utf-8?B?bFplWHBzelFXQlZramNWZ0ZuWFJBbHB3OGtFQkYzTk94UGo5cFFYbGhYSXY0?=
 =?utf-8?B?d1FNN1ljOWhJRDdoNmFOd2oxQTdmMHJrQzh0VGlTb1ZkMDZhZnFhZDBDOXBy?=
 =?utf-8?B?aGhEZ1BKTlpDeDUwVXU0Y2Q0Z3BXbFFVWXFmc3hRYWJJbURQSkhrRjl2RXda?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3429820e-7919-4b78-5f54-08dc3ddd30f5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 12:59:00.1691 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lhlyA8jy/Kd5ad9Xosq2LqIX15UluvQrE9Tnvkz9eHTSE51lta0wpzw/+BN+LnEmoT2Yi6+/ebuKWcmmCU2eq04Yuo57YseTiwZaGKxfpOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8560
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


On 3/5/2024 8:56 PM, Ville Syrjälä wrote:
> On Mon, Feb 19, 2024 at 11:22:55AM +0530, Ankit Nautiyal wrote:
>> For Earlier platforms, the Pipe source size is 12-bits so
>> max pipe source width and height is 4096. For newer platforms it is
>> 13-bits so theoretically max height is 8192, but maximum width
>> supported on a single pipe is 5120, beyond which we need to use
>> bigjoiner.
>>
>> Currently we are using max scaler source size to make sure that the
>> pipe source size is programmed within limits, before using scaler.
>> This creates a problem, for MTL where scaler source size is 4096, but
>> max pipe source width can be 5120.
>>
>> Update the check to use the aforementioned limits.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_scaler.c | 19 +++++++++++++++----
>>   1 file changed, 15 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
>> index 8a934bada624..36342142efaa 100644
>> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
>> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>> @@ -115,6 +115,7 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>>   	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>>   	int min_src_w, min_src_h, min_dst_w, min_dst_h;
>>   	int max_src_w, max_src_h, max_dst_w, max_dst_h;
>> +	int max_pipe_src_w, max_pipe_src_h;
>>   
>>   	/*
>>   	 * Src coordinates are already rotated by 270 degrees for
>> @@ -212,11 +213,21 @@ skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>>   	/*
>>   	 * The pipe scaler does not use all the bits of PIPESRC, at least
>>   	 * on the earlier platforms. So even when we're scaling a plane
>> -	 * the *pipe* source size must not be too large. For simplicity
>> -	 * we assume the limits match the scaler source size limits. Might
>> -	 * not be 100% accurate on all platforms, but good enough for now.
>> +	 * the *pipe* source size must not be too large.
>> +	 *
>> +	 * For Earlier platforms, the Pipe source size is 12-bits so
>> +	 * max pipe src width and height is 4096. For newer platforms it is 13-bits.
>> +	 * Theoretically maximum pipe src height supported on a single pipe is 8192,
>> +	 * but maximum pipe src width supported on a single pipe is 5120.
>>   	 */
>> -	if (pipe_src_w > max_src_w || pipe_src_h > max_src_h) {
>> +	if (DISPLAY_VER(dev_priv) < 12) {
>> +		max_pipe_src_w = 4096;
>> +		max_pipe_src_h = 4096;
> That doesn't seem right.
>
> Hmm. We should probably we able to just switch this to check
> against the max dst size instead of the max src size.

Alright, so will change the condition to:

if (pipe_src_w > max_dst_w || pipe_src_h > max_dst_h) {
... return -EINVAL;
}

So till ICL it will still have no difference, but for TGL,MTL we'll be checking with 8192:

  SKL_MAX_DST_W 4096  ;   SKL_MAX_SRC_W 4096
  SKL_MAX_DST_H 4096   ;  SKL_MAX_SRC_H 4096
  ICL_MAX_DST_W 5120   ;  ICL_MAX_SRC_W 5120
  ICL_MAX_DST_H 4096    ; ICL_MAX_SRC_H 4096
  TGL_MAX_DST_W 8192  ;   TGL_MAX_SRC_W 5120
  TGL_MAX_DST_H 8192    ; TGL_MAX_SRC_H 8192
  MTL_MAX_DST_W 8192  ;   MTL_MAX_SRC_W 4096
  MTL_MAX_DST_H 8192   ;  MTL_MAX_SRC_H 8192

(Scaler + bigjoiner still needs some work, will start planning for that soon.)

Thanks & Regards,

Ankit


>
>> +	} else {
>> +		max_pipe_src_w = 5120;
>> +		max_pipe_src_h = 8192;
>> +	}
>> +	if (pipe_src_w > max_pipe_src_w || pipe_src_h > max_pipe_src_h) {
>>   		drm_dbg_kms(&dev_priv->drm,
>>   			    "scaler_user index %u.%u: pipe src size %ux%u "
>>   			    "is out of scaler range\n",
>> -- 
>> 2.40.1
