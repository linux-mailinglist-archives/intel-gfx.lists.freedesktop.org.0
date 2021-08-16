Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCC03ED23E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Aug 2021 12:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10ACC89DCF;
	Mon, 16 Aug 2021 10:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 663B789DCF
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 10:48:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10077"; a="195422343"
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="195422343"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 03:48:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,324,1620716400"; d="scan'208";a="423501313"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 16 Aug 2021 03:48:22 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 16 Aug 2021 03:48:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Mon, 16 Aug 2021 03:48:21 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Mon, 16 Aug 2021 03:48:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Mon, 16 Aug 2021 03:48:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ep6W06Dtv5NhSreQaGPWeqQfcPBX0zxyxcnNxN0QnrC7AOol72hbUIjO3iu2lSr080D/Gb3KNr7Wm9FJinyg70VI9XOKxayzcoHvDCshWGBJ15LbYSi5pSOcTkmaUOx4YP4lXA0sIkUetAnaDyTXORSlPqny4avPRY8W8f4RY4IJl2bhngWw+vI4VnTKdnj7+EJtY5sOTUsQQDe+/lxyYtLwp/n+1PAzPXbQGtsUS7r2nWhVu3cKqoqPk0AI6D7W1eQ5lBX1ZwjufDXf2H70kVDrAET7aJ4IEvRaSWJ8dZRZtLipxIovyVzRZwJUIgi+fr7oBAW40kXZ+JJMJDbULQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+W5gYjTp5thiNcIQw1dX7R0P3iHqr77gqpS3+HuQGc=;
 b=kV4espiA3xdp6QEuFwk5KdNpku1se2bHqXBzYemmhCFI4/9FTAVg4240wgBnqUy+fElQnyqKnqMXZ3x374HCh7ts+ka1m3rA4X6GWyk1tfEqkZtZ9J5UrO+R7tocVy2ERouhEttjyLPZiXgUrSe8O0CLp0ux+LnHTpk2anUaAkgbRNGYsfqtefZnzr5JHcIP9vPXNtgqBcs3ki2JeaiP8PdnhVhlSRMkrP/hrspXpOV9l0BUP6QVYz7pfi+vwFcxc8rYFOqIVfQx1Ey5QTFs3Z3KZeI+ib187I3PX3jvaXY8lr6IRlESXSpjyIDcV3wKOeP4hfkhXz1Krv5BvUeYFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+W5gYjTp5thiNcIQw1dX7R0P3iHqr77gqpS3+HuQGc=;
 b=FzZdRPxSV3e2CKBxcC/NuZ1ozpB1qS6HbJOFNd/KVvXoBFeFg8wAlr27zot5HxZ6afE22oe4cratmz0HmNMjOKUDzsRrGQMH2FnyIHexek1V+sBBVQJ21efZQEhim3JDdNykoT1WLs97wsvq1LZVIKIX7eq44MzVgZPIcO/e0Z8=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5501.namprd11.prod.outlook.com (2603:10b6:5:39d::23)
 by DM6PR11MB3561.namprd11.prod.outlook.com (2603:10b6:5:136::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13; Mon, 16 Aug
 2021 10:48:18 +0000
Received: from DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::35e6:f152:6236:6c61]) by DM4PR11MB5501.namprd11.prod.outlook.com
 ([fe80::35e6:f152:6236:6c61%4]) with mapi id 15.20.4415.023; Mon, 16 Aug 2021
 10:48:18 +0000
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Swati Sharma <swati2.sharma@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
 <20210813070121.48530-2-ankit.k.nautiyal@intel.com>
 <87sfz9kgva.fsf@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <ca091042-8551-eceb-b173-171cf690f930@intel.com>
Date: Mon, 16 Aug 2021 16:18:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
In-Reply-To: <87sfz9kgva.fsf@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: PN0PR01CA0045.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::8) To DM4PR11MB5501.namprd11.prod.outlook.com
 (2603:10b6:5:39d::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.0.113] (49.207.223.26) by
 PN0PR01CA0045.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:49::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.17 via Frontend Transport; Mon, 16 Aug 2021 10:48:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2bf6f56c-2808-41e3-2664-08d960a35b7b
X-MS-TrafficTypeDiagnostic: DM6PR11MB3561:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR11MB35611264600D78943B5CA144CEFD9@DM6PR11MB3561.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TikOSLRvJeu7dPgll8EUKp9YZ2fjvIZsGOiZFVOzLp4G3SjtQFNQpD2ATaRxMNzZQ0KcHNqHCw8Xfl04sD6ejKqYJ+OOXI3f4E1eWVN3nAk+NvVOQdsSCcZVPye5ahITRB6Dtli9uFLpLeJy1qD76I42V5OY97/MQ+KxKcDjqEBXbdowFLBMV2suP0IYIcnLuWN+EGAbTsornJw+mLk09iY+kqJpe+o3IRJt5vGMuCgj4GVtvEmXNhfFUjmKTmRroZuPe4ZyqmipUmYvkpsqHYAuPqLLGX5FuUpjY4667Kr/x8auVWkx4mA0VrUT1O7Wcx2JRJ2O69K/2cFNMW0ZozQV4d237fkipwFcYMC/GBMZnwtDXihi2R1mQaDJ6MuQ8dFscLJBxhxE6zXxjC/a7K4HFtfnBRuxVTbdDuuU9HdfLJIICfISjoRXaYqWO2BjJSJYdkNEunaiOFLMq5uUstc6+nwIOWHpqJooTKE5SxuZDufK2Bbi9/RVElVdIpXqhWA7qQXJlyQ0itLYqdZUo34AcGlwjz9WzPUONhtFknwCZ3yHob0RJh65yxsrI2XyCFsf9PxuXPakoVrA0J6XyWsTHCRa2PgmIcYz2RiDOqEfJZOvTVZ0T9hZEYcAGyMHv5bSrcQzY8KnhU/GLxvO+YR4dnXU3Hj1UoDgEf6k6OU2Tqt5EvjV5jF9FfqQdm2Ym801vM37NPGYt5Y0Y0vrs0/r8XVmvmSW4IRbjl/U1Qk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5501.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(396003)(376002)(366004)(66556008)(478600001)(66476007)(55236004)(66946007)(36756003)(8936002)(26005)(2906002)(5660300002)(6486002)(86362001)(4326008)(8676002)(186003)(6666004)(1006002)(53546011)(316002)(16576012)(38100700002)(2616005)(83380400001)(956004)(31686004)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODFoNlExeDNhSDMrck5LQmZLbXZpcU5OTjlEMm10MzhTOGxUblBsRDlNQTYz?=
 =?utf-8?B?ZzZ2V3dqTVVjUExOLzFmTEg4S1FNWEgzcDFtbmpoRlRPTFJCUW1GRy9CZHNM?=
 =?utf-8?B?TXZFSU1xK1N5Unl6Zk85OU9vU0lvbzgvcVNBWG4zQmdDd2tqNzRjWnErL3c3?=
 =?utf-8?B?YWFwNlFqUUFERW5jaXo5VGhjNWgzRXo3T2dIcDZDa2V5NW8zcDUzL3VDeVUr?=
 =?utf-8?B?ZXVsdXBjbDBLT29ETkVjNmFJSHhtSjhyRmVQeEpMcGtJZEhTMDRtYmtwTkN3?=
 =?utf-8?B?Q2Z1LzFlY0NmaDJ4SHhtekRVOHBQTGNBT1Y3VEFMT2F3QlFuVmpBblBDZmdv?=
 =?utf-8?B?ck14Tm9ZaEZiNHo0V1VhUmQxY2xWV09Wa3NjWkZnbExpaS9tVE8wTUNoNjlt?=
 =?utf-8?B?VzRPbjJteEN4Uk5YWjNVd05meFFZSkJiOTQ3Sm9qTEFCbTJ5Q09NcnNkTE14?=
 =?utf-8?B?RGtSM1h4UC9DYnkxYmxqRnp3Q0wwYjJvekM0THVBcVRqSmRJVlpCVDlSNGFI?=
 =?utf-8?B?RCt1R2cvRVFRcDF0RXp1RG9MZmRDVmFwUnBvUDVQZ1RFeklYcGNsajNHdVlm?=
 =?utf-8?B?a0g1YVVSWjVUa1BSYmJhb29OUFhXV2JxbEtLMXlOb1YxTDcyTEdPZTBNeHhZ?=
 =?utf-8?B?NU04ZWFVaDhxR0dJQm1pSWJQeDNKSzRDSW5NUnZ5MVBsMjJuL3R5QWduanBh?=
 =?utf-8?B?YjdnMjM5ZFd3dVZKMTlKREtncmVETXYrdk5XUWRMRjQ2NEM4Ri8yTHphUWVH?=
 =?utf-8?B?TFEzNjE5UHJ0Mm00VGM1UmpBYTh2dGt6R1BMR2ozYUZGcjMwTEZrVSs0TElP?=
 =?utf-8?B?UHVrNU5UL0NmdU91K1diUGdDanZGdmloQmxLZnc0UGpHV3dXam9NY25LRDlW?=
 =?utf-8?B?eDdFQ29DRmkrZVV1a2NQMll3Z1FRbGlGc3BIb0JBRjQ4akpPUXlmeWtoanlR?=
 =?utf-8?B?SVd6VCtVRFYrZXZzeG1YcUZJU1RUSW9uRjhkR3lMWkxGNEhoRFBQVzBqK0tB?=
 =?utf-8?B?ODdDem8weUc4dmZoUGNBcTJacHBZK29yV3M1UnJkYUJScHdoQzBic2F5bXI1?=
 =?utf-8?B?OGhhV3FCU1YxZEN2ZGZtaVQxd1FnRWY4eXBGRzZtWTdSMFpCOTF5MVpseGxT?=
 =?utf-8?B?SkdaNkdMRmIvS1F5dWtPdGhQd3liZVhsNWhBQklFUmQvUHQwcXBLSXdzT0Vy?=
 =?utf-8?B?V2VqN3g1TEpJY1YxS1VpNlpPVEhTc2duUUJ5TnU2OXRuNnJ6RENRYmQ3Qldn?=
 =?utf-8?B?MGpZVHh0c2k5RFRKSUppOUhNdmNyRFl4SnJ6WmorQ2FSVE9jRFlpMWNNR0pL?=
 =?utf-8?B?VkYrcVdOcWVKUTFtalA0SVM4azE4OWlCdmIyVFM0bkdJaWxoaXROd1dabm9T?=
 =?utf-8?B?c0xlT1QwZmxBQ2hJaFN6bDFEelFRNXczdHY0WkdoZjhic1ZhQmpGUXpkQjVK?=
 =?utf-8?B?NCtJOGxQWVVqT3ZEMGVNZDFjRHJET2xVdVlGREtjOGU1VFRrYmpSeG9DcU5F?=
 =?utf-8?B?NkVVa1FwSnVPa2JENHRISmRLVnI5d2g0N0lUVHI0T1FsbjBySWJYQmdERGNJ?=
 =?utf-8?B?R0xoaGZBN2N4dUx2R1o3L2xHeGVxU2pVckhWbmgrZDhNNjhzNG4zWnRDa2Rl?=
 =?utf-8?B?TVZaYmEwTkxGSGpGcUNxQmtBTldmWUVvRzVUM2Q2ZXNwT1FnVWNsV290VFZh?=
 =?utf-8?B?eGxRVWMrWDFiOUVXcm0vWW5HY0szU1gvckc5eE4vczNGQVdneDJKeU9VaE1V?=
 =?utf-8?Q?xTltrQDBM62iywBepSA+eQeicuuNMJNAm1DkqMt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bf6f56c-2808-41e3-2664-08d960a35b7b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5501.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2021 10:48:18.1613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vGFV8YShO9z4gw80TlQ1FHzcz0asleLEqxEBQn+L0Qf6nDCB49a7V1jsIK02se6SDyIlOeYNwRLDnFqDyTdvU08p6ibR5At0dQtCUt3jBYg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3561
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: Export
 intel_hdmi_compute_avi_infoframe()
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


On 8/16/2021 12:37 PM, Jani Nikula wrote:
> On Fri, 13 Aug 2021, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> From: Swati Sharma <swati2.sharma@intel.com>
>>
>> Instead of re-writing the avi_infoframe_compute func in intel_dp;
>> exporting hdmi_compute_avi_infoframe func so that it can be called
>> directly while encapsulating AVI infoframes in GMP dip.
>>
>> This is required when HDMI 2.1 PCON (dp to hdmi) is used and we need
>> to send AVI infoframes to PCON in source control mode.
>>
>> Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++----
>>   drivers/gpu/drm/i915/display/intel_hdmi.h | 3 +++
>>   2 files changed, 7 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index b04685bb6439..0fbcdddb7ad5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -702,10 +702,9 @@ void intel_read_infoframe(struct intel_encoder *encoder,
>>   			    frame->any.type, type);
>>   }
>>   
>> -static bool
>> -intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
>> -				 struct intel_crtc_state *crtc_state,
>> -				 struct drm_connector_state *conn_state)
>> +bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
>> +				      struct intel_crtc_state *crtc_state,
>> +				      struct drm_connector_state *conn_state)
>>   {
>>   	struct hdmi_avi_infoframe *frame = &crtc_state->infoframes.avi.avi;
>>   	const struct drm_display_mode *adjusted_mode =
>> @@ -758,6 +757,7 @@ intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
>>   
>>   	return true;
>>   }
>> +EXPORT_SYMBOL(intel_hdmi_compute_avi_infoframe);
> This makes the function visible from other kernel modules; I don't think
> you need or want that. Non-static is probably enough.
>
> BR,
> Jani.


Thanks Jani for the comments. Yes you are right, non-static would be 
enough for making this visible in intel_dp.

I will fix this in the next version of the patch.

Regards,

Ankit

>>   
>>   static bool
>>   intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> index b43a180d007e..2bdfd0838753 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
>> @@ -54,5 +54,8 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
>>   				  int src_max_slices, int src_max_slice_width,
>>   				  int hdmi_max_slices, int hdmi_throughput);
>>   int intel_hdmi_dsc_get_slice_height(int vactive);
>> +bool intel_hdmi_compute_avi_infoframe(struct intel_encoder *encoder,
>> +				      struct intel_crtc_state *crtc_state,
>> +				      struct drm_connector_state *conn_state);
>>   
>>   #endif /* __INTEL_HDMI_H__ */
