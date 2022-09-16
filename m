Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A475BB28B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 20:56:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C1B10E079;
	Fri, 16 Sep 2022 18:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F6F10E079
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 18:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663354587; x=1694890587;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nea4WACh0hy5B/WVF3uTaoS2RG3PN0t5hZKlzhWpIWw=;
 b=MUPeJDz9GP7Yn2krvbJLxF0BaCNoqnkvGYQ83nnAK5qddoJp5zPy3YBR
 GQsB5CUuh0Ljj2zxqNk27d8Wj8wmmEdAwjCeAXfIN9uLsP20uVa/Ke+vq
 9nSjqHpQEIQiBQGbfSWmKmONNJ1HR7gjoIhbWMd/fI8Y71Hj++VPKEIo0
 JPsyXahZFoMnkuhBEpbrwgB2lboab3RVXMvGDL+OtCfvM/vIWAo3dqdh3
 4UQ85m97xjUW54A8GNIG3TxcYiL/ffeLlf7tb8J/YWwgJrsk7Ep3woWQu
 LMepJ2NDsRFzJDTNgvUYaXQGb5JM2nygdvVTxXM5k8fDCcE58G+XMaMvp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="282084088"
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="282084088"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 11:56:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,321,1654585200"; d="scan'208";a="721523679"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 16 Sep 2022 11:56:18 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 11:56:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 11:56:17 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 11:56:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kKOkv0WUTPqzx99G5ZQxX+olyzdE3ec4Yv+VMsciloePhQ18Ft1f1brd8OenjJJiGSXAdqKkws+6IGYPXg6o6/TZ+H9bmNWrxpZFjz32BDRs36m5xlH7NZU4Hy2kV+HCYhUdGs2ZQRyt7AUnIZj+7HUsnWHZGO3svQNsqvtLi2yaYWYF4PcpF9Sl6Nl9SKoI5a8ikUM/3P8/15PNF80v7Paob/Z5mktycE5SnqFTQ3L7CSJorAIIs8J+r38S6MGwCgNOitxB7E9kcpL0EdYskk6gEfS0enmTTx+Cb1Ic2j/T27C7f4lBA+BKHWMHabSblWd0n7/ppeDuh6hBGoLA5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XG6aKWAmO0H7QqkvKhRNwLcVJepQKoPPzWbl48C74KE=;
 b=ZkwmagONJV13cF4i4T9duWmiqeOAMD3hgLFNUwUtJlVKAZgUSGvOGA+RWppv5PWQpdNKxk4MeKVcyAczayuxH68cChwpGC6tnmGo2Poa3fY7Ph/BSnoTgqFpCx5ZWFwoYU84RHaJfIVofgGP7T/ZjK2A6VvfuO+tdValTg23IYyMf+Zxam9eLbRldxfeEdNpUC4EFEiTFfPiVQUrF/jZ2+eqivRSm70fk5QwYWpNrFWj/aCrB8WP7/EaMluqN7minO4zgUJP6GM59HnAEsEiRePteeHcX8jSqrCS4M1lHmYCnKzoZkQw2dQ+byHad6X2Wlx7ynbQ6RxgIrYWa/gIkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.16; Fri, 16 Sep 2022 18:56:16 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 18:56:16 +0000
Date: Fri, 16 Sep 2022 11:56:04 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <YyTGxJ7LCYqnKoKb@unerlige-ril>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
 <20220823204155.8178-17-umesh.nerlige.ramappa@intel.com>
 <875yhn526p.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <875yhn526p.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR02CA0053.namprd02.prod.outlook.com
 (2603:10b6:a03:54::30) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM4PR11MB6120:EE_
X-MS-Office365-Filtering-Correlation-Id: ee354f09-d87e-467b-59d4-08da981521f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X1huVkbrfJooABun14BKnuKx69u3zAmXKesTraz1rB9aKQJyNTpQJ9eWNpJCSBcn2nvepUJGZOmtUetetjidsbK0cOA/fdrImVl7LaGgZe5gtrt18CAINtpAM72TV4hd6KLbr46pSF0p7Qiclu9NRMIf+DaSpu3MlUNrh6HB20HijnZ4iRykoui5NYjqSOdMDDn1C4szdrzmY3X99MGFKaiGlbTvN4NcnmAL+5gDY2k6S4FrVfaYGESagqwuhDOY3ihbelVf6h7PaCB5pcd9zG6ybFCpLSWGWxj5p1tGf/R8F29FCGj6aRF23cYiNLuDoHBuP2cNpw6vKbGn2EXtfaXcyDvjnJFsFIn3T/qpmVwRwcSd/bpaKvwMNJZYHsIeCa6r/iDbcEN7W28iL5C93ryGKaq9clYnYq3UmZtInYzKONq2bi3Vbs2zlpVKhBqB3ztqz8M73ODs8Qmqw92lrMLsMq2XTt1IX19+7JBtDWbCw9eSRMqtz6yQmT8fGcuQJ8y97OXLMom688XcGglo3skJoCwRFQPSll3bv5e2RVl3xKmeYXuw+4N6Egh6bT9X2uFw3Ynm2y/P//yvwnNDBQmL3O9ljyCvQs0DBE2iEtLjoMHHSQsmHAxOjiqyXMKm8OnJBM9x1oHjT49w2WrMtA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(366004)(346002)(396003)(136003)(376002)(451199015)(86362001)(316002)(6636002)(5660300002)(82960400001)(6666004)(66946007)(6862004)(38100700002)(8936002)(2906002)(66556008)(66476007)(966005)(478600001)(41300700001)(107886003)(26005)(8676002)(4326008)(6506007)(186003)(9686003)(6512007)(33716001)(6486002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OFgvWTdqcU5rT3REVU9TN3BUV09haUpiVTBsRXlxQnJuZHRMTEsxeTM0YVBv?=
 =?utf-8?B?cmthdFVCbmJXNkJsZjJsZUo4c1FxaUhqdjE1enJwM2hwY1RqaHZlWlFHU0hP?=
 =?utf-8?B?dGRyUTB5THdGVTY3elFlVDZlRGhPeEdML1Q4dEh6WkYrbncwaldOLy9EdU95?=
 =?utf-8?B?SmxoT3hkNEIvOFQrdWpmd2tmZnUvNXd1TzI0a0R0S3hBRW9ielhBL1UrUElh?=
 =?utf-8?B?N2FhYkFDVjJBTVJ5QnU1RlBTV2V6RTlOT1BYYW1nK0s4eC8xNjJYcUVlY01j?=
 =?utf-8?B?VHVBQVpsWGVSenpzR1J4NktiaTFQU1VWd2JQUEpTdnh2VXRhb3VlSm14YjJE?=
 =?utf-8?B?Q0N4Z09rYkJKUDB4ZW1VZjVLZEUxRjhkbXYyZkhPdFEyLzM2WXV3V3dLWWRC?=
 =?utf-8?B?dS9jL3ZBdzZrVFRxMDVkR0RrdGxOVWtuVVA2d3daVVJXemJkMUJLbUpGcnNS?=
 =?utf-8?B?VmE2SmN4b1NlWTMzeXBtU3FOd0kzcmV4TkFyQml4d3lqVnJDVURzOXlZTlZT?=
 =?utf-8?B?NGc4M3FXUlBWMVhPMHF5SVh4cmpRUEdMZ244Q1ZYSU5RdHgxU053eUhibk4v?=
 =?utf-8?B?cXhKS213VWNZQ24vT2dOVDY2Tnlnd3JhOEl2RGhxYi9MNGR0L0Z1NDgveWh6?=
 =?utf-8?B?NzdMUTJkSmtNcDI0ODhUVDJrN2gxUzJuV2Y0MDZQTE5rLzNjN2dpSmh5Zy9Y?=
 =?utf-8?B?VDVaRVpKbjZFNE1JcTdLSTJKRVh1dUZaWEp5aDZWNEVFN2ZRbFFhb1V5NWZp?=
 =?utf-8?B?am5kcTd3ZE1yTTNYaGFVdGlGOXA1RFh0czI4K09nU0hhVWpkZVFsZnE2R3RR?=
 =?utf-8?B?ZHhSZExheUp4T3pEb2ErNHhQN1hCTWZPNmdzY3hZMnlxVkxHUHBUMjY5SzNl?=
 =?utf-8?B?dk9DWFpPRmdBSXJpMXdxQmhTZ0ZtOGcvSUx6M2p1eW9SbjVPUHlkR2lRcUx2?=
 =?utf-8?B?ckNOUFRZeGM3Sk1vVk5reHJla25YUUE3aEtDU013L1J6NUh2VHRmSXZzLzNG?=
 =?utf-8?B?QytVNFBGUU40Z3BmMk0vSld6d2x6SGt0Vy81bUZ6MGxwZEpoRkJXSEo2YXh3?=
 =?utf-8?B?Rlc0VnpKbWh5NElVMFRXR2ZSbktMcmF5Mktzbk5SK3RpeGp4Nms3WUxPUUhN?=
 =?utf-8?B?cmtPQnNMWUxBWXZtOTRKQkpUSWJQYlNpajNCQU1BQWVtOTRtdURCZGtkTTNS?=
 =?utf-8?B?bFpDRDlQa3VqT1BFamZSb1JaREg3N2FpcXNFSG0rU1dFKzAzWWxRUk9jVFZ5?=
 =?utf-8?B?R0dZUGlnM3VTL1J4Q0diTFF3M1lsSkxrSzBHcEE0S3I4amlibmx0NU5QUmp0?=
 =?utf-8?B?ZmlDbC9HVkZqeC9pQ2NCRUkwbVJPTVhBOU9FYmpPcjBvSUxObnJFU0dqY1c5?=
 =?utf-8?B?cm8rWXNTbjl1R01YOUNRTzJmRlE1d0lpZzlyZDBBc2dzUmpiN3JOVmJXNDJL?=
 =?utf-8?B?NTN1dFg4NDluRjJNRHdOVlFGSXNBS2RRVXl3dmVGTWljb0t6T1dMaU02RCtp?=
 =?utf-8?B?OEIwd0VMZC9RbFZ1WFFtcDEyZXMxSmxvTVVJR253dk81KzgxaGk2bzVqVkdI?=
 =?utf-8?B?b2JzNlJ6VEo0dzczZEFMZjhYa1FkdWhBb3hCbkZ5VUxGZmE4SVA4ampkWHJM?=
 =?utf-8?B?NUs4Q2U1Uk8zQkZ0dXpEUU9TcWJvS0RQSEdtcExkcnVPcERsVHRJOS93VitY?=
 =?utf-8?B?R0xrODFjK1pUcERNZTRCKzdTYnZUYWxPT3VKbG1VSEdUMTVRVkp6MERQSFpl?=
 =?utf-8?B?OXZURytUWnN2UG42RDlESm1sOVl1N3RKaC91dUFIQ3ZRNlJYeEh5RmR0cmhh?=
 =?utf-8?B?cU9NKzI2NDBhRUdWang0My92QlpvWTZtWUtZSmVMbURWRFF1N2lpVTZuc01G?=
 =?utf-8?B?bk5Gd2MxVjRYU0pycHpsUVgyeTlpV3RVZG5TSVMxUDlEVVo1bDZ6b0REMHY0?=
 =?utf-8?B?UmhpZEkyenRTT3BXazZHa1V3R014ZmN1WUpXTkROMVA1elpMOUxlcTFvVjZl?=
 =?utf-8?B?M3BvNXFWU1lXQWhjL3Z6ckVOTjFyMGVZU09UM2ZSM3QwNlBkODg0aXhqdVdY?=
 =?utf-8?B?dGNuWVpMNENKWWQ2VXE1YkRvMlBMZ1lOSWFJVkpFWHZMdXBlemVsYTZCckpy?=
 =?utf-8?B?OWY2bnRINUc5MjAwQWJvTXVvNUhpa3NEd2VySllKT1Fjbjd6TEx6ZzhUMGpQ?=
 =?utf-8?Q?7bwoV8GTRWkTTAJvOSdnrHc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee354f09-d87e-467b-59d4-08da981521f5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 18:56:15.9527 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DKdFgQvu1nUm+EW4pTBAb/OfqpBdN6KtQcr5Z6yv768ikwCjDMoP3lnXHl/XxL0oMEwCddr2qj3NlDVLZtuJM4XRXTgWdyA94v0HK2UTqr0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 16/19] drm/i915/perf: Apply Wa_18013179988
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 15, 2022 at 10:16:30PM -0700, Dixit, Ashutosh wrote:
>On Tue, 23 Aug 2022 13:41:52 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> OA reports in the OA buffer contain an OA timestamp field that helps
>> user calculate delta between 2 OA reports. The calculation relies on the
>> CS timestamp frequency to convert the timestamp value to nanoseconds.
>> The CS timestamp frequency is a function of the CTC_SHIFT value in
>> RPM_CONFIG0.
>>
>> In DG2, OA unit assumes that the CTC_SHIFT is 3, instead of using the
>> actual value from RPM_CONFIG0. At the user level, this results in an
>> error in calculating delta between 2 OA reports since the OA timestamp
>> is not shifted in the same manner as CS timestamp.
>>
>> To resolve this, return actual OA timestamp frequency to the user in
>> i915_getparam_ioctl.
>
>Rather than exposing actual OA timestamp frequency to userspace (with the
>corresponding uapi change, specially if it's only DG2 and not all future
>products) questions about a couple of other options:
>
>Option 1. Can we set CTC_SHIFT in RPM_CONFIG0 to 3, so change GT freq to be the
>          same as OA freq :-)
>
>   The HSD seems to mention this:
>   Is setting CTC SHIFT to 0b11 on driver init an acceptable W/A?
>   Note: Changing the shift setting on live driver may break apps that are
>   currently running (including desktop manager).
>
>Option 2. Is it possible to correct the timestamps in OA report headers to
>          compensate for the difference between OA and GT frequencies (say when
>          copying OA data to userspace)?
>
>	  Though not sure if this is preferable to having userspace do this.

It does affect other platforms too. There's no guarantee on what the 
CTC_SHIFT value would be for different platforms, so user would have to 
at least query that somehow (maybe from i915). It's simpler for user to 
use the exported OA frequency since it is also backwards compatible.

https://patchwork.freedesktop.org/patch/498917/?series=107633&rev=3 is 
consumed by GPUvis. That reminds me, I should include the UMD links for 
the patches with uapi changes.

>
>A couple of minor optional nits on that patch below too.
>
>> +u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
>> +{
>> +	/* Wa_18013179988:dg2 */
>> +	if (IS_DG2(i915)) {
>> +		intel_wakeref_t wakeref;
>> +		u32 reg, shift;
>> +
>> +		with_intel_runtime_pm(to_gt(i915)->uncore->rpm, wakeref)
>> +			reg = intel_uncore_read(to_gt(i915)->uncore, RPM_CONFIG0);
>> +
>> +		shift = (reg & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
>> +			 GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT;
>
>This can be:
>		shift = REG_FIELD_GET(GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK, reg);

sure, will change

>
>>  static u64 oa_exponent_to_ns(struct i915_perf *perf, int exponent)
>>  {
>> -	return intel_gt_clock_interval_to_ns(to_gt(perf->i915),
>> -					     2ULL << exponent);
>> +	u64 nom = (2ULL << exponent) * NSEC_PER_SEC;
>> +	u32 den = i915_perf_oa_timestamp_frequency(perf->i915);
>> +
>> +	return div_u64(nom + den - 1, den);
>
>div_u64_roundup?

true, but that is statically defined within intel_gt_clock_utils.c. I 
didn't think there are enough users to export it outside.

Thanks,
Umesh


>
>Thanks.
>--
>Ashutosh
