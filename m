Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF83870081
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 12:38:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27655112038;
	Mon,  4 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oEpn1hGe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29D0B112038
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 11:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709552295; x=1741088295;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VLiV0FXCo+znRb/6O/I16Y+gSlBMeOJu1wmRdcN/Dno=;
 b=oEpn1hGekprq48IuqaN0mTphxsgfTYI4pgr+ucOL9WGbf/WXs7QjlZJN
 7+cUc+YqE/7xgsrhYF0xJJ367xnyXFUXcsTkTbGPRe/+Ah4xKQzpn0QBR
 eZJ8JoqkGOz1RSntll6DC+sj3z251cYOkzH6iS9oGoY4lthM/aW65ZzIc
 TuxGlIIh+2bDnHez2QoaIeDHAscdXlRf4T1Tjz4FiH9hm6bKv5sae/TR6
 PnZe5ESLV5hDVUVNMtdiOb+/U0eNxR6h2tv5EgzL4b9rGZwgP9VZuZyyS
 4CporP+iZIUheXW0bXVGWSeDuM/XlZgsndRqi8SF1L+CmTOQ8E/EZaVQW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="14615482"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="14615482"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 03:38:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="46484246"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 03:38:15 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 03:38:14 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 03:38:14 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 03:38:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V21/zuIFku7q8SsJaRNP5LfhDhSAjC3RFmBPnupOBfvif6TLK1LJRDAORbPAslE2kG7WVJzPAF5T1wEWOhr8vUq/Tsz4PEmMuwCJuf7KI7qgs0e3DcSJzJmROLSo4lyTw3vl8ORJuF95bwyHTB6gLZcfc+YjyOspT4dKV17te+n7myv04Y88brNgYwwCXNhrL+aj0EH5/FqNLBy9/AL5npU9CUetKFUKJdbK8bptclVL1L42/9etdLgK4z9bYv8VSIthX/hr1CfGOxabP+i8KdEePB1pmt12wUBWQyrnphxR9wlgQp6ba0TiCEzBZMjU668MIG2IZxV7kMuQElVjtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CEfz24wOv5SS+DYFUjs/iIBHz8QUGJfuHEqiPm86zmg=;
 b=DduVlsnlKrn77gUoVQWqiNbJJKqd/sLzHWLDxs4vKGUM+YXlX8N/ldUu3CBXWulDNDfqz6NfxrCJ0WcQ+VvFdtBHX3yeGLFdtulP4lhSM63xWD/5GvNejCfFN0hTTiR+QRuItSYtgp7jcTLOTMG1sfTyAFxHrVpZpyNDpDbOKmAnEofyymzco8nXOuSkqIubbGPz/mGL1drSm5vnz/FkwQ9oiUOrU0CVwfqy8qp3P6n0910w29mrDn8pw7sqzG/KmcDq3O5JKo9naZG9pq4IjD5mhoL1VXJWuEnHrgVWouimiQJl1OJvFcI+6dZvudm8DEh1QOrdMus77A/kpiB9kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 11:38:10 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::ce60:5b9:e62f:ed8f]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::ce60:5b9:e62f:ed8f%3]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 11:38:10 +0000
Message-ID: <38af1ac9-d40f-42e8-9bc4-fb4095b06923@intel.com>
Date: Mon, 4 Mar 2024 17:08:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/dp: Increase idle pattern wait timeout to 2ms
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <matthew.d.roper@intel.com>, <clinton.a.taylor@intel.com>
References: <20240304050631.774920-1-shekhar.chauhan@intel.com>
 <87il225qpo.fsf@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <87il225qpo.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0216.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::14) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|BL1PR11MB5303:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b873d6d-f487-44b7-e113-08dc3c3f917d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cQBEGOKGjaPk/9VlXBwAKDu2z//60xWSaCU7LLtV4QxNr1+4lJiRriahipbb2lyOnPDGrlJnEN7xVDasG915CLen1nhEYdSFgPEZfriHBbHzwMiLrbOnAlDx4M/Xku/A1+oy9o3bz2y1YhBZVsPPTHsHLIgkIr3K541qnRUV4yREhahZ5jA7gcrnG7XHltocP+gHISNv3SY8g4rQOF3obJTErz58WRcSmrXMUQCiZLGIntGCMitgNQYgCOgY4JSx/rVTwbumtmbcMuiDrkkhjvNJnXOmgMArZEM8Gf7b5Ng/QJfGPvd2nlcNNiCZ8isFnAxpiKdgzes2BNTIfpz6UbaH/lWrwkMXFarH4eHqxpfxQemA5h1wzpfjl4XoY6CtZ2EkHbHwhES8afJ00+qUIFT7w8e95sEAcbaGyCAjDXrhOeG3Q+NICF8q56r2GHrNyOoBzHVTANviA+pxPLoY1k/LYChNux/3kldxEU5Sb+rkVahrSyM2YTi0SwvJPh1X88rXzTvKabowuE4oH3uq+5CmeOl+MHHQ67rEqlKRe8bZPGfnEJhMFfLcdAn3XDsk9XZKjUwJzDPBSYQmkk9YQzWEY6/9K2cEnY/ZV1uCgbMjvtqZSE34XSI6of2qR4H4KDIwrQNV9bbnCFc4MeFbOt6dDo2KJkZecYm52B+TN0w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MG4wZHpDcG05bkJ1dUR2c3VzWk5kUVBBYXpQUjBZQUtSUUlaS3hlb0duZlN0?=
 =?utf-8?B?Wk1FSWpyY1BEZWhGaU5MdVVUb2hFUE9SeUpyd3NOUjN6WDlBeWFiYXRPUzRX?=
 =?utf-8?B?TkpLSmgydGJLN0dKNjZPNS9MQ0ZUTVhjZzIyYzhFL3VtN2RFLzU1cGZwK1oy?=
 =?utf-8?B?ZTFiN3Y4OFRVS2FxWkd2Qk5JSUpneVRZbTJoN21mZmliRjY3SVVxK3dNY2sv?=
 =?utf-8?B?SWR5Z1ZHRVVEckg2WE8xbkJSa2J2cDZYS2RsUnp1dExwcS9oTWhvVzJ0aWxX?=
 =?utf-8?B?SHA3NldCQWF4OG1haGI4eitzOUFERzBnMVhEQjRmb3c2cVgwbFJ6QXQrODRO?=
 =?utf-8?B?V05JREtTMm1kNzZzNlh6Yng0eEgxRFhhMEJ5Ukx2Sm00WDd1ZXhDUmt1d3VR?=
 =?utf-8?B?bmhJZytzQUNkejdKR2xFUElmOHI1dE9ZeVFRWStyUFMrOXZrcWxaWHpqdlZ3?=
 =?utf-8?B?Mm5UVzljTmptUFJaZlRJdU1RbTN1djVlQjBaSll5cWZ3K0E2UDRmbWJLVzlB?=
 =?utf-8?B?QnJmcnQ2VUJmelBkaEhTNGNuY0VmSkV2a3NUeng2YUh5SVFxRlBZcllzMTJo?=
 =?utf-8?B?QjFnRmVFNEVPK2RnbDIrTFNrVUphRmlCZTVHbUYzSlZhdFQwcVhiR25aT1BI?=
 =?utf-8?B?NmZGRVo5cm5TbnU5TG1zK2RoTkFrV0hUU05KczBnc0EvWkpvL0t4VFBFTzJF?=
 =?utf-8?B?T09zUlh0V0hiTEd1RFhOMm9UMXFRR2tob1RYTUhoMkkwdHF2SFNTcXRXTDg0?=
 =?utf-8?B?THNEQ2crbDRBamplWEsxWEh2bHVOa1FJS2VPZGlSMEF5eUUySVNxNjRyMUIy?=
 =?utf-8?B?NTYyZC80SmhHWGEyQkhRN3d6cnAwZFNYZUhMT05MZm54U2VPdEVVNS8zajZh?=
 =?utf-8?B?Tk82NHEvWkRsb0gvWW1oMitsMVAzN052Yk45cFU2ZDRlZDVxUWhWdVBCS2Nz?=
 =?utf-8?B?U0dLclI0Rmp1WThjVHdQdno5UEVoWUJ5cklnM1ZYZE1rMy9pZmR4VFhYSGpw?=
 =?utf-8?B?YS9TVmE1UFVOUktHWlZDUWRqMkJPUVFsbFMyNjF1SkVucFZvLytoeEdWdTQz?=
 =?utf-8?B?N3lDcDVkWStxVkdIazNEZHpqK0Y5aVc3Q1RPRmxhL2FKSnoxdmIvVXVBclUr?=
 =?utf-8?B?V1RoNjFWY2R1UWlwK1dueHMyZmNNbjc3Mk9nMHpPU1FwN1I0a0phSFA4bERn?=
 =?utf-8?B?aW9leURFRmJRR3VYaVhiTjZvbmxnNHdDakhiaDFoK0VtQ0dKS2VEYlVFdVN5?=
 =?utf-8?B?aGZqVHpvajJJUytmdDVESUxjWDhBZ1dVWk5JVEJFeUtzMkFkckhPSW9jUnRH?=
 =?utf-8?B?L3RFVmdXOXVGL0xIVFNraGFNYnBvWEl4bGFzdDhhcEo2TkF3T0hqelFFeCtu?=
 =?utf-8?B?UGNuQWkwYjRQNW1nUXdZNlRZZ3VaNTZYRVJFWjBWTVZrSEdMV3dJeHNQWlVN?=
 =?utf-8?B?NWFwbnFpZlo3bGJFZTU5cnZOYnhYWTdsU1lqZ0REOEhaUkNCK29JeGtOYllM?=
 =?utf-8?B?d25oQytOQUZtSXZHbWxjdGZ0N0t2N1p2VER3dWZ4RWNFd29GTWl1dFRNTHl3?=
 =?utf-8?B?ZStkZDk0NlByRGdFWm5UU21KVllmVEU5VGxjbWw1MHFvazNOS1JXamtpRkVK?=
 =?utf-8?B?bVYrU1pRV3g2QkhZRUt1ZWlIL0p4cktIbkNsVFQxWUtmUnBQVDd1MjFZbC9y?=
 =?utf-8?B?clhWTFBDRmYwZ0NwT0JHSDBSODlTMVFrN1g2V0Fic1VPN0NoemN3R0RYc0JI?=
 =?utf-8?B?QVR6R2ZKdDJkaDVETjduOW5aTk51VXBwL01vOEI3ZWsrYldCWDhZaEdGeWtO?=
 =?utf-8?B?ajFhckF3K3pZMkxZZWs5OVFJazFKMnd5cVJFa3U2SDNOZ2lPZHlHTFlmNlhB?=
 =?utf-8?B?UC82emc1N1pWYkU5a2kxTit0cld1MmRTQlBjcTk1UEVKZ3hYTGxtR1pWV3RQ?=
 =?utf-8?B?K055QllJanptWVBWQldVeHdBQ0pXK1FUVGRBTDFLYmxLcjdkeUxNeHpETW9y?=
 =?utf-8?B?T3loQ2dmMm5XQmZUZ0x0Z293WVAreVVqdHptZHQ2aDNCZHRCclpmVUdsL3BU?=
 =?utf-8?B?YUE0RDZ3RjR2VUJxbis4UGtVUEFPbWI2QmxTcCtGYjRJcll0eTRmOWEybWda?=
 =?utf-8?B?OVlnVFk4ZTBmZCtIRTNmbDJLSCsxOUQyZE0yaHRSZklTSHdWK1JMa2NwZzBJ?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b873d6d-f487-44b7-e113-08dc3c3f917d
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 11:38:10.4313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3yv2NlSofoEBn32zuHWwSsZ9liq5TATT1nk7sAMVDnID/Olrgq54EhdT+E0HOwDE/Mlag5BOr4awMtsN4VOM8rqZUXUUVOKIYgR15zdvB6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
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


On 3/4/2024 14:16, Jani Nikula wrote:
> On Mon, 04 Mar 2024, Shekhar Chauhan <shekhar.chauhan@intel.com> wrote:
>> Currently, the driver is only waiting for 1ms for
>> idle patterns. But starting from LNL and beyond,
>> the MST wants the driver to wait for 1640us before
> What does it mean that "the MST wants"?
I wanted to convey that MST streams require the driver to wait for 2ms. 
I'll rephrase.
>
>> timing out (which we round up to 2ms).
>>
>> v1: Introduced the 2ms wait timeout.
>> v2: Segregated the wait timeout for platforms before & after LNL.
> I did not ask for this. I would rather all platforms used 2 ms. I even
> said the original change looked fine. But I'd like it to be explained in
> the commit message.
I felt that when you said "why bump for non lnl platforms", I felt that 
I should be segregating them.
But, as discussed offline, I'll revert back to the original design with 
a change in the commit message.
>
>> v3: Fixed 2 cosmetic changes.
>>
>> BSpec: 68849
>> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++----
>>   1 file changed, 11 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index bea441590204..b59adb7685b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -3677,12 +3677,19 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>>   	 */
>>   	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
>>   		return;
>> -
>> -	if (intel_de_wait_for_set(dev_priv,
>> -				  dp_tp_status_reg(encoder, crtc_state),
>> -				  DP_TP_STATUS_IDLE_DONE, 1))
>> +	if (DISPLAY_VER(dev_priv) >= 20) {
>> +		if (intel_de_wait_for_set(dev_priv,
>> +			dp_tp_status_reg(encoder, crtc_state),
>> +			DP_TP_STATUS_IDLE_DONE, 2))
>> +		drm_err(&dev_priv->drm,
>> +			"Timed out waiting for DP idle patterns\n");
>> +	} else {
>> +		if (intel_de_wait_for_set(dev_priv,
>> +			dp_tp_status_reg(encoder, crtc_state),
>> +			DP_TP_STATUS_IDLE_DONE, 1))
>>   		drm_err(&dev_priv->drm,
>>   			"Timed out waiting for DP idle patterns\n");
>> +	}
> So I'd like you to go back to how it was originally.
>
>
>>   }
>>   
>>   static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,

-- 
-shekhar

