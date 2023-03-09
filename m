Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E46E96B30C3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 23:34:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65CF010E8FC;
	Thu,  9 Mar 2023 22:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6960210E8FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 22:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678401257; x=1709937257;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=juyX4DY4U0uyDs/nMEyyvjyHYzlLwFZPMm6qQ+HeuRA=;
 b=j0DX6TiPvnLh5nPky0/e2j+CIjxN/AziM6WCdpMwx0ptjZa8ny1isCij
 RGtAb2eHYQKkgGrp2tVF3dBopt14kgtfgSaqhCN4mVkCR6B1mNJNyRWVY
 F5/qOUGjt+Ab+69i/fDzsQDRF7B4rbh5MyjvjHTFzsDJjTtKIm9MQ0Co5
 DFMSFeixmHk59eMQRQmFxeFawDBkKPXv3dABZX7sboysFfFCfUFihZgh4
 HU0iXbbPQ3UPRdbjuXOBlP4G+9pTHz3vEkUfODuV9hGXOPBlclJskFAEl
 fqrmrzBvGhXy6pqRgFc7cFwzhEwwdwWCAY+6Rtqg05P7XMQzAfjC4o6Yg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="364239028"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="364239028"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:34:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="654948887"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="654948887"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2023 14:34:16 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 14:34:16 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 14:34:16 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 14:34:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L2Fh0MYhiHpH12yjWWMy5JR6v42E6VTGZSOuR3S9mFhCnMs/5o+wvFg7tiqq9LxwebGEoAPOoNh3arSbXn9wRxl11MvtMVXfI03vD3OjBU2JM3FpYdr3c8A02l27acvzDxqdA4W6rCuXgmbAlmJT6r8TSWAvRiDpAzobu72lhYiIN4r6ewABZmo/qMRt1+h8Ymr4wc4bnzCdSrr/RrsSO0ZL44Hg4UFbrnbO3ryjoEo7FVG3NHk77bSOFHQFWJbrJTpioUJr8IY7om7jVP6Kc54yXmgj572nfUkXuacb/k4qOqlJx0EPLLrZLxFFxuFrL+XaB6ESfte17xl2xi2q2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DCEyXxIqYQbhEMCvhw5OOjM7UdimD97/Tsi0CA2uiRY=;
 b=SqqLAi07ansuxZ6eXiLrjKf26iwq6oEIye5WJgpkMH7Ub8AvtTMbmknwcqIICzqmidWl6OyM2+Si+YmdVu9Y/w1oN34FOnFwgigmqlq+tKxOYoV2eJ+cHiG1IYhj+L0DIRm4kOEDAbshVw9WJJ41B851Qi5xi2fsiIc2cbV7C2sR1uDOBRgYc0ZinTtgZOoW9/Weqhp4xVmpmzIix6y7VgQ6VPxlaZZph5/7npaAnq2wRDzS2bCbI7jGPN89yy++VJRnWEvhzvjLenh6MEXFUx1YyusCUKRQPyUWHYOurRqQ8RHZqBPaizUryJoEjhGHIViKczcaIZxj47asaiFcDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Thu, 9 Mar 2023 22:34:14 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 22:34:14 +0000
Date: Thu, 9 Mar 2023 14:34:04 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZApe3KFGlrVO20vn@orsosgc001.jf.intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
 <20230307201611.773103-9-umesh.nerlige.ramappa@intel.com>
 <87h6uvm7zm.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87h6uvm7zm.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR05CA0009.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::22) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4628:EE_
X-MS-Office365-Filtering-Correlation-Id: 646e7185-48e2-4ca7-ddb4-08db20ee6957
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7OeTQkcIcg/b0Pl3Y9y06phX0zM3Z7LxOePjOCi+b+MS0JEWJRZmuJ6/FxPdd0+R9IXJiFfxoo4UQ2DCdVXa5pSF0XyxMuPph/YgSQnrLfQSRoXwX/2UXmPa8pkYfoo71hj9ZkCcJqUoIsx5JvcJfwxlTrBfQb5RyJc5/ggbr7/6ogxB/b05hJlQCBQS0FO72XIicU1LCbDDDBl4nFjh2niuJviA/LBQuy7jBDBT7HRFWWlHmcxWRFypo7QSUryuIVgF44n8ilcq1PI0XF8TiNq8IeyNmZge9dmDAphbEoJUtwEQMGW4w9OJEEgadaXdxLWGhauiFVpYF25yhr7EtZKbyjjc/lTwBeptLGEpDCaKe8zQG/vBoWbRrsTAWHbN7ztgamdp/E5G8SNchjVX9meIZBrwYwWtz1kq8UXtzuhlveqEI0xOVMebsjOZlAK7DeQ9CWJqhVO0/2vaBK7I9NIVgCPQXx/MjEugjiszKrlXr33xLGKK3aIMePonNhzUh8D6mBLyfQzEocXbqcKh3h/X6FHx5ep0oRHpyIL0RvNAM4Owsd91JlfjH5SXES1IO/Z88mZ21pYomvT/Aw8o5yBvfxM6HnTp6Jic1QKomJrOQONENOOwrOQznWhHyUozT5wMwKTP7VCKNMmvAW2IfQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199018)(8936002)(6862004)(5660300002)(8676002)(26005)(6512007)(6506007)(38100700002)(82960400001)(6666004)(186003)(41300700001)(6636002)(86362001)(66946007)(66476007)(66556008)(316002)(4326008)(6486002)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmxvaXJEOTJGV2JFTm1icU1hclpMZTc1bGNXdGdiWFFKYTkxMkUxL1g5UStv?=
 =?utf-8?B?ODFlMDNmNTJJbTI2OGhYY1JSdEdGWlRVZ3RwL0dMQVRoT1BlWFVvazBFdU81?=
 =?utf-8?B?Z2J4bm1qMTZzY1ZWVG1xOHFjbUNNOTRrRHNxRE9pd1V3QmFnQjdxSWZjbklw?=
 =?utf-8?B?N2N5TG9OZ3ZsSnFQb05Qanp0S1ZJbGZKeW1hbEZCN0grN3pYU0p4NHhYdzgz?=
 =?utf-8?B?a1piQzVjWGs5WG9Cd0ZxNnY4SDVhUCt0eHFWN1g5WUdCNjhjT3BkNjJWZ0Nx?=
 =?utf-8?B?VEJqaFNueHFkT3EzZjkrU1hMRnpvS3Mvd09rTEVLVTJsd1haMVJ5VVhmRTlu?=
 =?utf-8?B?NFBlM0FWekUxVWYwRmd3M3pkcUFNWFRmWU5QaEsraUF4czlkMXhLdEVSUlFU?=
 =?utf-8?B?MGl1K21EOVZGeTdMSVNiYzIxaFFNR01YdFppTWVxNFpTem9QZmhRaDJFalhs?=
 =?utf-8?B?QmVISlo2OHg2V3NjdDVYUzZMeWMzSGFDRUN4SDdpVnJDTGU0SkRrRlMzSWZv?=
 =?utf-8?B?UkJPZUE3aVd3dzNxOFV5M2tRL3VIRHhrSnQ4RER4Qk9Ud1h1TS9RTkJVQklB?=
 =?utf-8?B?dFUzOGdDNjh2OUFXd3NPUmplWVhNcm5lZlp2WjdTYlhtTFE5eXBsZTk4M1cr?=
 =?utf-8?B?Wmkyczl6Nk5KWVl5WGZMY085UzRSQVlPU1F1dFNGbUxhV1E1bFUvU1V4NjRz?=
 =?utf-8?B?U0pwTjQ3dFZZeW9WU0x1NzZ2NWhtUGlHZ0xQU1d0bUtuUHp1YkdHN0ZuT0da?=
 =?utf-8?B?Q05vOFRpa3M4SzNuTU11K05Sb2o1RGFzb2FWOENlZXhzZmc5YUcwOU05cW1M?=
 =?utf-8?B?NDJtR01jWE1STG0rOHJqNXdVV25ORzMwK3N4ZGlrZzQrZ0pSaGlSL2Q5TFp3?=
 =?utf-8?B?b2NSYnJFV3JWRzE2V0s2QVA4eGFKZFdXM3FTUEF4SHlHOTdhczFOcWZNUkpD?=
 =?utf-8?B?dXIrek9TY3RkV0FPbkZtaUppSlEwSzhPaERZeVJBeFk2ejhNN2k2bERwZ0NF?=
 =?utf-8?B?UVRZbHFmMFFKejFCcjBOTWc5NmNoOFR0aFdQMnVJcnB3dnpXY2l1YnZtd2dS?=
 =?utf-8?B?MDBSWEpOQ1paUmxvbThVaWlkZTc5R0ZNSEQ4dWc4RDRabkZUWUdkdmQzWXdZ?=
 =?utf-8?B?eTRtUmxVM29xL3loSDFIc1g1bHQydnB1bVIyeGVWaVdFU3RXSm8vbUF4cjdo?=
 =?utf-8?B?bkEzVTBJc2VwNFU4L3FCdTRKbnVxZEgzR3hYUFJQNCt0QndwcXNmck1GOGhD?=
 =?utf-8?B?b3lpQzFmTUJGbGc1NW9TRU5zazFZRmMxbVVKcFdXemtlTERqVi9sVTBoSXhv?=
 =?utf-8?B?TW12TDRUMXpOaVd6N0ZWSUgzaElLRlRKZm9lNWRuMU51QmhSNHdDSmorZ1ZG?=
 =?utf-8?B?YWRMaTNnZ08xSmdZRFFPK05DT2U2dlpjeVBucEFBUENxcUZPRktZUEo3MVlS?=
 =?utf-8?B?N0EybklNdkZIL2NySW85Z0Z6SU55TmM0VTk4M0ZLUklIdng0NEx2RUZYb0ps?=
 =?utf-8?B?dmhPc1R3d1YzMERzMTl2bVFIR3JxcGxKTUVWVHVMc1hFR0Fucy9PNjRvdkZZ?=
 =?utf-8?B?R1h5c1VMZmUxbjNuUEdyelpabDRLYS9ZZ2hLWUdFbVFWb040YkY4bS96NG5V?=
 =?utf-8?B?UktaZWlzQzRkR0xhNk5wOUg2YVo4V3NSZGhSU3JDTTdZQ1FlUE1RdWpWS0V4?=
 =?utf-8?B?S2RNa0EyaWlBaW1ka1AxYkZOUE9KWDRIM3BJZXc3T1FpMXhxWmVTbzBONzNo?=
 =?utf-8?B?ZWpXTllSN2tpdkVqVjRNSTdJRHgvTHcyYnpoa1JzT0xhTjREcWlCZmpUY2V6?=
 =?utf-8?B?RTJXOHdLOTBpSFVqdGVYL216TG9MV3N3MUViSE56ZTlnR0dqcnN5cVlWWGhl?=
 =?utf-8?B?ZEVVL3k1TVRoZ0MyNzBxRlN1UktaQkxnQ2VmbUltdHFTK0VvU2tRQ25jV3FX?=
 =?utf-8?B?YXlOajFWd0dXcTNRdG9rSFIyL2pYNVhja0h6T1h2K2hCcUxzeVNVVXh6T0Rm?=
 =?utf-8?B?dElWSnFVK2dhdUROL2pqNytKUkZLTFVlbDBUZFBwL2lFbUpzSW9kUTFLbFNz?=
 =?utf-8?B?dXFyNTJhUHBkUUpabGpSWVByTHRBWExFQkFPcEk4ZE1ZbFo0Wm1pVjVydXdK?=
 =?utf-8?B?WFNNY2JGOVFrYVBGR08vaGI0ZitucStlQ3YrbUtUWlErNGIvVkRVOUZtL3g5?=
 =?utf-8?Q?0z4Jj06gLgQXYrUwLD1nPro=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 646e7185-48e2-4ca7-ddb4-08db20ee6957
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 22:34:14.7228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h9XH00aEjFOk1ktUNEAzSUEDxsfw93AJAIyi94hFuakfedJkeGGWSAyoR161e95OKq0mHypGXnnYgy2k1XCaqwLmvjyTB4T+kWr/+CpsGT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 8/9] drm/i915/perf: Add engine class
 instance parameters to perf
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

On Wed, Mar 08, 2023 at 10:08:13AM -0800, Dixit, Ashutosh wrote:
>On Tue, 07 Mar 2023 12:16:10 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> One or more engines map to a specific OA unit. All reports from these
>> engines are captured in the OA buffer managed by this OA unit.
>>
>> Current i915 OA implementation supports only the OAG unit. OAG primarily
>> caters to render engine, so i915 OA uses render as the default engine
>> in the OA implementation. Since there are more OA units on newer
>> hardware that map to other engines, allow user to pass engine class and
>> instance to select and program specific OA units.
>
>I believe there is another uapi issue to be resolved here: how the engines
>are associated with OA units, since from the point of view of the uapi
>there are multiple engines and multiple OA units (even if in the actual
>implementation at present there is only one OA unit per gt). In the
>internal tree we had added oa_unit_id to engine_info for this. So if
>multiple engines had the same oa_unit_id, user could pass class:instance of
>any of those engines to get oa data from that OA unit (and generally know
>how engines are hooked up to OA units (the OA unit topology)).
>
>So the question is even if we don't implement it as part of this series (or
>do we have to?) do we at least need to agree to that uapi which will be
>used to associate OA units with engines?

It did make more sense for xehpsdv and other platforms where we had 
multiple OA units per GT and each GT had render and/or compute engines.  
In those cases, media and compute/render UMDs may have needed to know 
that topology.

For MTL, I don't think that an end user will benefit from the 
engine<->oa_unit mapping because

(1) media and render are separate GTs
(2) there is just one OA unit per GT and
(3) assuming media and render/compute are separate UMDs,

That's also the reason why the corresponding IGT series just uses a 
static mapping for MTL.

If we come across a case where the UMD needs this info OR we are 
supporting a platform with multiple OA units per tile, we should add the 
topology.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
