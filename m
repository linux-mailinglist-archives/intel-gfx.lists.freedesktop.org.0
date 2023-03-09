Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A1F6B30D3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 23:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4F310E086;
	Thu,  9 Mar 2023 22:36:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59C0810E086
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 22:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678401390; x=1709937390;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jL4a+Jr4ceWUBuNx7d9Mc/nGMi16td1PFTcmZFg37RE=;
 b=ajlTuBo5QJbv4e+SQnO9vaLwr1Wn1sRB9XBHDn03FQSepIfHcljlKQ5+
 c9UbnDQDIp/zzdW33XTTPjACsNrWL+vzSLNb5j3Y7nbcj4Pp49pAmoppT
 KKnoX8hEmzNRT5USYj/Z3gjFzVHYCzxcq6mjReYfwAbs1GYsTvYOh2kko
 APgU/Z3QrP9OxTQB0vHq3q+InqpIGuRpUFLnir7bUZNq2y1Q0SqQDJtg9
 SPFVhsnMKX1XqG2ZEPi9TkIy16+ydNR20ZbreltmsQxvKB5QXhYdZidJk
 3Ecs/0NS9Ct5QKXqTcdUddFNznlDXgVtnNZqLZSScqK/ewvu4rg3LCJcu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="364239604"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="364239604"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:36:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="654950640"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="654950640"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2023 14:36:22 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 14:36:22 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 14:36:21 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 14:36:21 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 14:36:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TNKau/it82r/870a//ss4rpqxlHXYlcFft3vaaQaneWX0O3OUroB1HM/FX2+qOvAMzkfUswgQDxmFcuJOkEDw4feFtxG4gGMe/lReWykp9aRgZxIYuF+FbMxbZgI3moaGdjFWGmneocbdDNXrWytj0/FxCzOp/jSoHXCOKrzkJQBWe4+V7f4niVswsxGznc4LtUnVSGWlZx1Vg2toWnsT/N3+Eb6xhY+WA9GbJPkcwv4vPMX1k9Dzlcz5IHQhG/WSXU3rOSJ8J+nV37FlC9R6mfD69tK7Yjz8YHQwaWMo35adjna6TvZ9KwKIXKez/hArOcSCnOw79RSmNai76ePhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=grM9qkNV414qQ9DV066XXl/Opo5w7ArXRxkh/o02A2M=;
 b=mRqBOUA/983ZW4GAqafB0CfV+OiL+lhUEbyMME4I5OMPZLjt8JM96DkpAqM6R3RU4Ir9AXla9i/20snf+n8NQd0Hvh3wVkKH/3c1WO8ZW89cpsCg5hkoGd0R3hELqlOGEfHZK78TzV7oXVHYH24RHlMvhdRWLXZhB+yMx0EQo2jvKRo/Coss53nxd8fpRbMvnHnklysQ+YXWa5LQZ7m+vQSbPUbcq2Gu0lmqJqAfB9oUV4/mq0Sf3O7kExkuy4stPo4wf0mlgHfB0qmdqKZtrtORF+F+bHIYtu/59RckP84H0cUM2SsgevRdPdVC3icqPGMk2JSfWoqk96yzP138ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.19; Thu, 9 Mar 2023 22:36:20 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::9bf9:4252:3ddc:7ac2%7]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 22:36:20 +0000
Date: Thu, 9 Mar 2023 14:36:17 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZApfYXEGHNywKeqf@orsosgc001.jf.intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
 <20230307201611.773103-9-umesh.nerlige.ramappa@intel.com>
 <87lek8m2wj.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87lek8m2wj.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR05CA0102.namprd05.prod.outlook.com
 (2603:10b6:a03:334::17) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM6PR11MB4628:EE_
X-MS-Office365-Filtering-Correlation-Id: 92cfa73f-403d-4a2c-5ea9-08db20eeb418
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vECHwfxOkHhThYy1yBgd0/qJqHEMiaYIJvD7m1EywcwtC47Vfw1KuBykdFyAhAHiOqwXEQCK/1cRs4I3pY1VgyRa64v+FG1PoQONBuDYKuGD5X/tXs1cn76FNfGIlslP8QpnPryJ5eIAwsIerwhQrIkXBXV3PTOdHlPTt7xJ3Hsy/0KpclA8RcEAjMMGyM0exOGYZpELfRqsGiPk04iwML+A+VXQA2TkHWJ9dNbxX1HIgLK4FcK+VMh8sJyQ+Jnl033RlQTvrTUKhgEm6BYyM6iACI7l9VdCS+5WacQOmKXLnMa1C137JLgqVHuk6laU2CjJq3rKAErOndnRIg6cGU4cpCS+OY7DcEa4iiLdZGZh/fuOXXmMnmqob1crAF6aN/OS1T2OcgTnfxKbkWgPZsH3p6bXYqUmJZI2toaFYHsYlEJCuBJtQsKwDOQbgToctNk5V41W3rNLV2SxZVGBr92AOXKWWJ6AqCafPZEYlypwRwvK/N93S+M65hMqcRXHEK7OVh8BJEBY3rnVJzp6Z9DjYRS9qNITb8V7sZdjQwNLwZ3i0Xkm0lnrFAVoNNvQaQTwC0wQfdffCMaGvNoxCevCvCWU/33oq7pId1YX+LBmYBLQNo6sfZ1UXHo1xwi4Q48MwOC5DtBOXwXnFEn74A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(376002)(136003)(346002)(39860400002)(451199018)(8936002)(6862004)(5660300002)(8676002)(26005)(6512007)(6506007)(38100700002)(82960400001)(6666004)(83380400001)(186003)(41300700001)(6636002)(86362001)(66946007)(66476007)(66556008)(316002)(4326008)(6486002)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WW4rOXZBc1FkMXlIemd3QTVmTGQvVkh3UmhSZHlPR2JMT3Q0TGwrNHBoRVI3?=
 =?utf-8?B?MWJ6TlJxamhxT3FXNnBNWlpUQVA4VkIyQ3JqVDlHN3E2eXVJaGlHZkpOMDhO?=
 =?utf-8?B?L2p5bVp4elJ2c1E5WDgvWkpCeGN6SDlkRXR5TnhNcVFhb2pWdVc1YmlxYnI3?=
 =?utf-8?B?c2lmYW5MaC92anFvWEdrODVtaU9GRDRyRWdPZUVJbExGSXlRVVVIbFYyNTdO?=
 =?utf-8?B?WUhlc21iRHcxWWN0cURZNXJoK3JGQUYxbk8vUnBVVms2QUJ4OStlUlB6bTRU?=
 =?utf-8?B?WDc0WXZ0VTE2L1FMNUhCOTdGTDdyM2pHTWRYblM5SHorUXVCcWtWamt6VVRW?=
 =?utf-8?B?TGxxdWllQXphZWVoNllCN1I5U1N1SndHZXNGMlVDZ0IzWXNyMmhDRTZjeWVG?=
 =?utf-8?B?aEZISys1NFdLaDVyN3FpZEVHeng5ZWwzSjhUbWU1SzRMTXVpTHJFL21SaXdX?=
 =?utf-8?B?RStIVytoTFl4WHpRa1N1dXdoM0ppV0JVSTdEbjZ2cXJpVFZRNCtqZWkzdzBS?=
 =?utf-8?B?eHRoSGUxREkzR1BkZFFDSkVYMW9taDFET2Y4NjdUdktHd2JwdnBtNlYzMzFC?=
 =?utf-8?B?ajZESGJnNTJiMVA1b2N2TGZlcDdFWjFXU2VQVTdXWEFacHBmbFZCWlhFVTkz?=
 =?utf-8?B?ZFlTbTlCaDZ2YTNDa2QyR1ljell2ZEM2N0ZOb3IvRHFTeENod1Nlc2hFcWJK?=
 =?utf-8?B?ODRMZ1FsbGM2QmZ0TENZa3RGd0FFTHhOTEZ0dTBvcEJMN0YxZ1lUVGZXcG5v?=
 =?utf-8?B?c1MyS0FsbXV5NFJ3MVF4Q0hLQ3Q2QUcvWlo0TGVjRTJJZXdTWWo1eVFCTHBE?=
 =?utf-8?B?NVRnNXdKdU1QdzZ6WWZkMmRSMG5jMG1aYWF1UlpzeWJDVHNHVjNjbTRWTVJj?=
 =?utf-8?B?WGZoNC9TMzFRYUZOY0lUSkpUUFd6MjdjTW02M2ZwQlFRQ1c1QXkyUE1MekQ4?=
 =?utf-8?B?NFdxS3B2bnlPR2ZMaXYzVFhvTit3ZlJ4cW5ZVithbythQjIrUlVnaE53K3NL?=
 =?utf-8?B?dGRjWk9rYkVyb2c1U1QzWnd1V0lYaGxkNkdpMjdkOXV5YTNNQThkSHN3M2VB?=
 =?utf-8?B?Uy9lVVZ2NGY1S29kbStzamh5UG1sQUd2aEI3UjJqZmI1NmMxWkVtV0RCR0hK?=
 =?utf-8?B?Q1MvZTlCNjVod2RvemV4dHZ0cFhOMDJ3dHlDY05YdGpJYi81THUxWTR6VjNR?=
 =?utf-8?B?SWNReVBJejduakltRXZGUy91emZrMXprTW91TWl3czBhN2dCKzhaOEQ3NmUx?=
 =?utf-8?B?STQ5bEt1bXJWbHBxdDZ0bDFlLzFlMjQ0ZHBxQ1ZjL3pucGo0NUY2ZnpSa2d0?=
 =?utf-8?B?dWk2YXpwZUJrWVR5cjhKUmovdTJOVFRxM3hyenpwMDRXSmFLR3lWWEVtcUxR?=
 =?utf-8?B?UWJOV0Q4TzZGSk10V1YrSFRMa0xYb1RZS0hBUjhMeTUzUlJLaWd5c0lPV0JE?=
 =?utf-8?B?Mmg2bnZlVjZJTHQ4RkdtUmFSZllqSWdqTTFDbXNZYWgzenNyS21oZTFVSTk4?=
 =?utf-8?B?VFF2aytPUU5iaDRlbmtwUHNiOU5TckRla2l4cFJKM2c3c0FGcE1heDByNkxN?=
 =?utf-8?B?QXdqTk9qMkxaTmczM242RnNtbmdGWUhkVEhoTVZtUkIzeDV6Z1RxRncyMnpp?=
 =?utf-8?B?eFZaWmw3YjNmZXJhQnNDOTJnQ1lpWjBSTGVJWm9rdUFvZWJUelZocHZlL1Uv?=
 =?utf-8?B?alowRHRFZHNGZG01OEFZbTRWcWwzckhaWkVKWEhjdXJvb0NiaXovYzIvakVE?=
 =?utf-8?B?bW0rVnpZakdrSUxWbFE4WjFYb0xtdllDN01hcnd0c2xyYWh4cTZ3cU9iVXVF?=
 =?utf-8?B?RElsNnlPbGhsZXpoUWU3RW1CTEJFajUwYWVKQy9WNnh4aW45bXJ0UFlDZGhL?=
 =?utf-8?B?NnVzY2c1YlNwRkRYQnJiWWpPSUFiYVhUUkhVNjFVSkFwSFdvNXN1QjB5NHh3?=
 =?utf-8?B?MENySU1VbHE1ckduZEVzOXBhN2I4Z3czMTdtYzZPTU0xaWNvQ1JNRWVVWWUr?=
 =?utf-8?B?R21hRUd1b3NGL1FOTDFZazFYM25DcVdmR2VOS0FVM05MT3NvN3laZFlCUzRp?=
 =?utf-8?B?VlgydXdJQi82Q21FMlJIKzJybTdJUnBHZHQzOTZZSkRYZE5qcXNCRDNyVEVC?=
 =?utf-8?B?M0laaEF3SHZleVUrcUV5enQ3d3krN3NCSnAydnpUU2gzbUxCcGJiVW80Rzlx?=
 =?utf-8?Q?vR2kFeLeWKjDIZhKvrqmCpU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92cfa73f-403d-4a2c-5ea9-08db20eeb418
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 22:36:20.0420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tLC79fpOlyuOTPi9Sdto5HJ+aoyHhdUfFjHXfFEGZmFTZzZTvFIfMoyswZYEF64j19QpnKPXP9iWscB1JIW2lHO8qeJmUKWy/Y/+gfWMunM=
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

On Tue, Mar 07, 2023 at 05:45:48PM -0800, Dixit, Ashutosh wrote:
>On Tue, 07 Mar 2023 12:16:10 -0800, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> +	/* Defaults when class:instance is not passed */
>> +	class = I915_ENGINE_CLASS_RENDER;
>> +	instance = 0;
>> +
>>	for (i = 0; i < n_props; i++) {
>>		u64 oa_period, oa_freq_hz;
>>		u64 id, value;
>> @@ -4174,7 +4156,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>			}
>>			props->poll_oa_period = value;
>>			break;
>> -		case DRM_I915_PERF_PROP_MAX:
>> +		case DRM_I915_PERF_PROP_OA_ENGINE_CLASS:
>> +			class = (u8)value;
>> +			break;
>> +		case DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE:
>> +			instance = (u8)value;
>> +			break;
>
>I am wondering since this is uapi we should make it robust. So if the user
>passes either class or instance he must pass both and we should check for
>that. If only one is passed we should not implicitly assume the other as we
>are doing here (if only instance is passed here we will assume RCS and if
>only class is passed we will assume instance 0). I think making this
>explicit will avoid confusion later. Thoughts?

Agree. We should only allow this configuration as a pair.

Thanks,
Umesh
