Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7288868892
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 06:24:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE47710E56A;
	Tue, 27 Feb 2024 05:24:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jM7O16vX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2593C10F16A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 05:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709011441; x=1740547441;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bgGQD4GvzicW6Q+v/OOKro/jS9NBO26QDOg2/k4aBqE=;
 b=jM7O16vXJ0dls+1tmdhWdZAVRNfJI7eYUauuvIl1dzPm7iOWZ1X0uFCT
 sqRyMlnu9TpH8iuyl4uIVwH6SDAtWnGv0cQe2KqbacgUC7S+hXE1sHt/Z
 rHMYTPYPeG9JZe5rxjORZMLOcKgJ7++eVlkE/GO67xQP55dvncNhCiwL8
 y1a3zlk4pToF8NHMW3GxZHaZx1baCZvX4aDCS+qZb+vN8j0lT5KLcE0bW
 4mK+VV5ED0SB4VwpahDaqTLW8soxgwAqffNF5qvBTSPZM0lE8McUF49sH
 CPwLwYpYlflbm6sFKWkm0DQC4YLoi6q2jHAr3zogpd78hc79Z4AAvpfIk Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="13977368"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="13977368"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 21:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="6791762"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 21:24:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 21:24:00 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 21:24:00 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 21:24:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WGH+VvJnnsKnmRMgEBZgP5CFOBUPrc/TnOX/TCSI1eJCMqmjDAyOLihyohlet9h3JcQ7k/3PCyJWahTdj9Xk/Wyut2ynI5wF+uyOjPucEuvN5eLjlp3UHbmyv79SZHMj1KSQxEegatKgbwirDIqKCgs6Upl+IsNDViEl6+Kx/TA6o/mdar0WjUKSDGCMYGHSRIl/hSzH/uliXlhIYgJV+Xc/QkJ+kfnpRIxRRD5p1V2G91K3a3WmJ12ux0ukMLarbOrfmj30WnGulRXuLrqxG9dZNxhZJOWFqYeyveaDdIc6WUXJ+AafMCAGHiwRQJRY1SHRF2l+S5pG36KM3Oapqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oritExwjdmp8DiFFbEkSxbE62frLE0Lmzwfb/7MKmkk=;
 b=YMiBIpWWAnU4NdYGxy7iJsRySc/MFRhpz5N6GyU0dlpMYXqFyrZhIiPzof3K4gVjFYyy35yU+e6znJN6vKawcb6hgf8xXCqYoDEZ4coasYsTG3WembFEVr3S/XJhjexnOPcPt5S6Farus19At+w129BGAlnNzM/LTZHlU2XHnTaAZm0OK+l2GiZZnZeiMQQIWicbdciyXFZXGa3X0Tj4Tbsa8dTapKasF9RlJKXtIeh5551A/KkV5ataSdlaey3QByGdK8ARBagMhzN7qwNsYpMq66zFV5zSUfq4Os1XcZq+4Kd7G4XsZmJuCrippiErDRqPqgPES2/gYU2FB6v4Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW5PR11MB5930.namprd11.prod.outlook.com (2603:10b6:303:1a1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Tue, 27 Feb
 2024 05:23:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 05:23:56 +0000
Message-ID: <ff169a4c-6eb0-431b-8900-aff3efb8ca9e@intel.com>
Date: Tue, 27 Feb 2024 10:53:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
 i915_drrs_status
To: Jani Nikula <jani.nikula@linux.intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>, "Modem, Bhanuprakash"
 <bhanuprakash.modem@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
References: <20240221111223.2313692-1-bhanuprakash.modem@intel.com>
 <IA1PR11MB63487164DE1F2C03BDBC1C54B2562@IA1PR11MB6348.namprd11.prod.outlook.com>
 <b8f2bb3d-30fd-42f7-b120-af851f594225@intel.com> <87edczmhn5.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87edczmhn5.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0231.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW5PR11MB5930:EE_
X-MS-Office365-Filtering-Correlation-Id: 39735f64-44bb-41cb-4154-08dc37544b65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: znW+squgi9oOqVmIM3Exh8vpK2eUViYkNnr6GrdIux3qr7rTyieGM2ea/QnwxvuacoYX/qV7Ycvg4t2S9IwN91t4Sal0KXQdTMck4y8u8WROVXWfi1Tryh5MKFaLTIK1BjaftcKB2VBawBtpQdJ6HBXtKh0X1K8tZArCkn+4ORZN/sfWzVSB1H+GbvVGddy/nO0BjY7CM7yRMy7EF1Hl2RE5lU7PFri4gdFJ6mCiXB4l5BqDsDYZB96wyobHFNEoRt2J7NXcVWs5Q3XmhSw1Ehgm8Z+eiqqcuMePxufQkXSFzNHZEUtfSeQpCDRW9toiyxt93qnvKDpFZwr/YO901LxHKMDskX7fswucDCE5ozChSosrLQ8/yO1umy4fGqagb3EjDwOt9dgP4Hq3WB+oXzxq/FKFDfTycwZQW8o2mP0/KKnelqc2mFapIfg+I5xj1Agk5VmNhYrqRns555xmtB6qHZD0SrJt1JWjmWP2qv+5lna04df0TOjmSP6AEWY2EY1dvwuFDjOFvgp7iOGPq21la3BW0F6RHQ5X9+fLOEKw1t+MaJerxdHEKFH+CGPN/b/cSMwCLiminvNGzuCfH93QMB51+uf4RszBJLmfrEIpdroqog7D8G+gte5y/saI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVVlTnlhMklEUEo2aVFHb3k4N1d3VnBDL3dKenN6aHoxWEFCZmx5UXlMb2pz?=
 =?utf-8?B?Y2JtQjNqREVRM0NEUmpvL2dPQkVjSFRNSTB1Wlg0bXA1TUQzVjZmYXErUFQr?=
 =?utf-8?B?Z1VkdFcvbEF2TkhBVm1kRlFqWjE5S09vK2pGY292ZkFjSSt3UVgvck9pK3gv?=
 =?utf-8?B?b3AweGJ4TDFWR01zZnZ0Q1FVMmEwV3d0UW4wYnlTeE1jWXRERUF1dERWWTZs?=
 =?utf-8?B?WVRVVUtiQWhHcEcyZjVoOUZZbkp3WFgzWDVXYWd3SEZQeWU0ek0wa2ovUDRk?=
 =?utf-8?B?bTlSc0k0ZGJFWkZ0L3BFaDc0dGhEWFN4R3Z2WEJaM1hLT3ZpUnRWdmRCQlhr?=
 =?utf-8?B?R0g3S21ydE1lUmNabDIvNUwza0Nub2I3YWo5RmpVdERndG01MmFPMkN4a0ht?=
 =?utf-8?B?VEVDNHlsRUdNUXAvOERDSCtQeFh3NkR0V2RpZEU5bWQzWFlGMHZBais0bmFw?=
 =?utf-8?B?bzh3RVFHK2R4MFcwaytOS1RDK1lVekZyWk1odG9oajNydlZ0Y1M1dVlZV1RR?=
 =?utf-8?B?M05RNjdOcjNXYTVhbkt4UG5GQlptUFA5Q3BDNE1qd0ZvdEljWVlZdDAreDFD?=
 =?utf-8?B?SHI4TFFLNndBakFwQU5DQ2FDeERyTDE2ZXR2R1JoL21IRUNTRUVVTHRXZmtS?=
 =?utf-8?B?YUVZZGk4RldGZ29WaWlpZnlGaDJhZ1FRSlpKUm1DZk5tUkU3NTNIc2V4V3E4?=
 =?utf-8?B?ekZjSnI3MnJvVXhrNHJqNmFmQ0FDdFZ1OHZ3bmdCbzcybjF4Z1FwWGhCUEY5?=
 =?utf-8?B?UVpsVkdXTE1raklXZUVjVEk0NGtwV2dNSS9yMExFcnNjZEtpNzhSRnE1UDZN?=
 =?utf-8?B?WGdQMmFVVmhrVzlqVjluWGYveDBRaG8xNElTRm9lQis0RW9PbWFCcjlFSlly?=
 =?utf-8?B?QkRtcnhtZEkvZU9FZU5LeEpTMzBLUzVQa3NTMjZRRm92d2ZhSm1HNDVycjVt?=
 =?utf-8?B?ZVYwTFhrSzR0T3V1T3NDbGUybnFNZkdieklGS0ZjR1JHV2hJdzA2bnQ1aU40?=
 =?utf-8?B?VFBJZnFGdENDd2Z1WmdSRk1HcDRmTm0rYkFQUmE1aFRVMVpLcFBiNW5qdXVX?=
 =?utf-8?B?V09VdURST3RDUUNmdWJwUHBwaUJKQm5wem9rdWxSaHphNmNxb1pNeDZQR1dw?=
 =?utf-8?B?eXI3LzREN0hrb3BDdmtuaE1BcGJYK24vWDMzZDZxRGFFUjFxcUluSW1VOS9a?=
 =?utf-8?B?QXdNd3plTEw5L0hZd3dGZHA1WHptbjBZb0l4VGpDekpQU2NSRFViYlJRNi9t?=
 =?utf-8?B?bXBGOE1JVDJDVnU4eFR2bnVzTWZwUnVHbW1majcwSGRuUExuZ0NOUlB5aVd1?=
 =?utf-8?B?MTN1Z2lvVGduQ1duVHJzWHZZK3lsVWdMcWYwdWpKUk5NbjRDRlFzMUt3K0Qz?=
 =?utf-8?B?NEJWeDNqWkk4VmRYRmE5Mk92S3lpdEtOU3hFYUxjNEMvaFNMK0RabElLclI2?=
 =?utf-8?B?RUVlWk1KWEdPUUZCT1NsNVJldlJFWURQamVBSXc2ZG55TDl0eEdVdGw0UmRZ?=
 =?utf-8?B?am5XcmtOaDY5N2JObVFVdkhoUFN0WUh3aG85cStVcy96TDZIWFZoUFEySDNE?=
 =?utf-8?B?dEdxVUIvQThPdmF3S0JXWk1NNzNrek9SWVJhVEhqRkFQSTFSWWJZaG9EOGQ5?=
 =?utf-8?B?d3VFbHFlcWVJV0FLT1V0bVNLOVJxbW1XeVI5MEExZ1Q0d043aVkxOFhESFhT?=
 =?utf-8?B?TDRleWJveE9DQkhHR0FhVEdoZnJDektHU3NUM1l2ZFNJbi81cVI3RythUjdT?=
 =?utf-8?B?d2syNndyTDlxY0YxcVFWNmlNZjluU25wSi9jWWxjQVhSbXJJb2ozdzY2NXFP?=
 =?utf-8?B?Y3BZNkxmZSsyTmpDeEY2TGxTWDlDVlNKNWt2MEE3VTNDSFBRbEI4U0hydUJW?=
 =?utf-8?B?VWtBWTN5OVpPWFVGUXZTWXlIS1hJOHYzZzBSUW93ZGhiTzZNR0VHbUx5WkZU?=
 =?utf-8?B?STluZEU1cWN4UUhJY3krWkRuRjVEK0xtNDRxVDNoMnR3bjJXa3NoQnV5Tnln?=
 =?utf-8?B?bGpqc09UYWJWdUFXWjVldnVUcWFURUdiYjgwMCtqUENiZ3JuY1dlZEVVd2NZ?=
 =?utf-8?B?eW1lK21hRDFHajJmV2ZUYStNUE1jOHRCWjM1WGF1MHU1Zm9ZZDNkMTRMUlQ5?=
 =?utf-8?B?dHQzR1g3SVhxeDNEd0pWTUI3Sm5hRHphNWVPUlc3NkZsT2RGWVhMMTlPL0FT?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39735f64-44bb-41cb-4154-08dc37544b65
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 05:23:56.5239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qkbQdLkyFgvAfsFf080IR9ikBZs/7cDU14n0rHL4lXEQaZD5ybPVl/yI4sa3td/t0GAORgVBjOUVmqhkyF9RZ6uwjngwiQsu8apFdO2QI84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5930
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


On 2/26/2024 7:50 PM, Jani Nikula wrote:
> On Mon, 26 Feb 2024, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 2/22/2024 11:27 AM, Golani, Mitulkumar Ajitkumar wrote:
>>>> -----Original Message-----
>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>>>> Bhanuprakash Modem
>>>> Sent: Wednesday, February 21, 2024 4:42 PM
>>>> To: intel-gfx@lists.freedesktop.org
>>>> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
>>>> Subject: [PATCH] drm/i915/display/debugfs: New entry "DRRS capable" to
>>>> i915_drrs_status
>>>>
>>>> If the connected panel supports both DRRS & PSR, driver gives preference to
>>>> PSR ("DRRS enabled: no"). Even though the hardware supports DRRS, IGT
>>>> treats ("DRRS enabled: yes") as not capable.
>>>>
>>>> Introduce a new entry "DRRS capable" to debugfs i915_drrs_status, so that
>>>> IGT will read the DRRS capability as "DRRS capable: yes".
>>>>
>>>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_drrs.c | 6 ++++++
>>>>    1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> b/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> index 6282ec0fc9b4..169ef38ff188 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
>>>> @@ -299,6 +299,7 @@ void intel_drrs_crtc_init(struct intel_crtc *crtc)  static
>>>> int intel_drrs_debugfs_status_show(struct seq_file *m, void *unused)  {
>>>>    	struct intel_crtc *crtc = m->private;
>>>> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>>>    	const struct intel_crtc_state *crtc_state;
>>>>    	int ret;
>>>>
>>>> @@ -310,6 +311,11 @@ static int intel_drrs_debugfs_status_show(struct
>>>> seq_file *m, void *unused)
>>>>
>>>>    	mutex_lock(&crtc->drrs.mutex);
>>>>
>>>> +	seq_printf(m, "DRRS capable: %s\n",
>>>> +		   str_yes_no(crtc_state->has_drrs ||
>>>> +			      HAS_DOUBLE_BUFFERED_M_N(i915) ||
>>>> +			      intel_cpu_transcoder_has_m2_n2(i915,
>>>> +crtc_state->cpu_transcoder)));
> Why would "capability" look at ->has_drrs?
>
> Why didn't anyone question the duplication of the conditions of what
> "drrs capable" means?
>
> And what *does* "drrs capable" mean here anyway? That the platform is
> capable? But what if the display isn't capable?

As I understand,  for the display there is another debugfs for connector 
i915_drrs_type which can be none, seamless, static.


Here drrs capable means whether the platform is capable, which depends 
on cpu_transcoder_has_drrs() which in turn depends on

HAS_DOUBLE_BUFFERED_M_N and intel_cpu_transcoder_has_m2_n2.

Regards,

Ankit


>
>
> BR,
> Jani.
>
>
>
>>>> +
>>> Adding DRRS capable property to debugfs.
>>>
>>> Change LGTM
>>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>
>> Thanks for the patch and review. Pushed to drm-intel-next.
>>
>> Regards,
>>
>> Ankit
>>
>>>>    	seq_printf(m, "DRRS enabled: %s\n",
>>>>    		   str_yes_no(crtc_state->has_drrs));
>>>>
>>>> --
>>>> 2.43.0
