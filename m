Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8926EDCAB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 09:32:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B37A10E6AC;
	Tue, 25 Apr 2023 07:32:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8645410E6AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 07:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682407918; x=1713943918;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1RwhswywPHdA5+Jy6Eg2q38szprFT/EhgYFdtz1DO5U=;
 b=cgqk5kacAj3NmC2eYAm2vErRQVmUwuSHdSa0QrB6T7zFT1wafiVe8jQF
 /TNAFsXIFpBsteVn4UpFt04Lq1rr14625iDJwp9zR83FOgO02M76ganf4
 bdFNIlaNWntLY1qpVtaPdWW42+oF2wvuL9RfP2VZyEp2glISsF9Vmnbjh
 bFv5Ysy756fTiCNZX4lhSw8Ijssld3RE1/CMbJdoy1JLtfDjBliiqwwtV
 eTuv9BFM7nGsLBybklFz0JOMtpq70xwH6cF4N7t5oHpO75ZU96lB1+0tB
 NjtxecbZs8/O7gA8gPwcdgj4p75fTlu52aDRmd5NkgYDA7rfXrj0lrbZ0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="326994869"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="326994869"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 00:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="643683690"
X-IronPort-AV: E=Sophos;i="5.99,224,1677571200"; d="scan'208";a="643683690"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 25 Apr 2023 00:31:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 00:31:01 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 00:31:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 00:31:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 00:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LCL97TLQMWngP+TtrbjEk2Asn8HqENgNlVkg6ixpErY+zgasD6G6wM45MDOwY6YHx8UZd2ZvvvDfBUoNkfVqM48dCb0DnS9GZIODiJpPOcSv0UrJ8pv5L8zS+f5jl3GnsYFFjRS2CAgVZtrupQNwDnI7lzO5hD+pQCZpoZYK8b7y0XUTLb4jgr7ygmvdhsWRu2MWXhkABVa3j6plZufSQnV3ssp7MDITYvTzMVTsEJ1xF8QAIIiVyt+fqgvJrycNPipRRU+Q+ddk6ki/uOMeJu9ddA7A1elcJIacNwNjsc65NfaU2GKIHp4k4mY7mkdiJDu9hultDuvCeRDcA/S0MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZr07jQWKrdaTJIYwIrfGxCGr4tIWXEXMMUQXf4VLXI=;
 b=jmjwKp9DkPpTnBhtngDBz+/HI9516ZweRpKyoktNx5ulzY6xEO7DByqv5Myxv208fpH3U9Nz+G3Xo1mDKVC+VpEny75nnKc4qaHnBt2Mb0W5JqEeBg0YrWYilYQtDu62dfKqQLK6CgsUEADVizr4F8dvDc6E0bGhl2AqoD9ZwgeXjVTj00D6BarhCiv3nbmCIga66QnU2NWO7G9MxLfBuX2IH0+tEzOeq/qH2NJd8YM96SC3f+jU+HJHh7IM4AbZSU1B6fOrS9/E+E/tHHzriLjFDXq2JIITzk0NW76T9bfFdiOQRrir+pKg27R3xNOYmne36B/jpWkANcaiROf/PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5164.namprd11.prod.outlook.com (2603:10b6:806:f9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Tue, 25 Apr
 2023 07:30:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 07:30:58 +0000
Message-ID: <a698e2f3-03a8-3b8d-241b-977e8136adea@intel.com>
Date: Tue, 25 Apr 2023 13:00:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <ZEZ/eb4WKq9Mvsel@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZEZ/eb4WKq9Mvsel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0228.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5164:EE_
X-MS-Office365-Filtering-Correlation-Id: ad9740d1-04b0-4701-0bed-08db455f030c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: joUGGSQZMheOAPazJxDaqCnjezAwDYFQAeLp8WDJ0wVmWmNMe9T5Nxlx1bFMnAjbR2x5hQiOZneeCUaaJ/XdMXQPx+oPQDeTyLfzF2jFBYTxezb1x2KJ+8ZIEVsZXfwr6IS7LwHZsYYU9OqRT+mnYatHrr9J28rmDsPp3ja1XjdZQuZJZRUft5zJzpw2/VCY8pdOyhMhNT/QOv2TbW119KxnQRKZ/rrUISCFsjdVxfqSNbQ6knpfZT9heaRSTRa0NzZLf4JmfAcdAqGV8iEIQHvyvEtgEI/Gkmf/bZfFd4L/+NfXPo/Jo8ltNT8/MRzbvwXt8dzK89N28ubhp/9oONqZhE9uVl9neSOhqYM7DWP2TbeLx8mJE3VBJXM0znnJHx40p9MU6AJ6/26jCE9T5jKt+IOaG7+gCX2qfURSo+Vr4V9hOSFk5Pf5V05z8cT48P6Qo2m9EZUPSOKTAKFK666Ed/AxiTqbt5wpXERanPPGTUMb4F2Fvki+wJ9OXbL9vxWa4BVru0IffEHmjsHmOvesVxWKHRnKBH19wScbBKLzz7PIbqOgQ7FJzlkJ8D3siN67CTkPKRrckxbgx/M6faHyP+cNErxtcaxsxk6Eev1wT/zu9rtefzy4nak9Dp+Tq+V8Vpa3oR6GUE+hWGZ3LQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(136003)(39860400002)(376002)(451199021)(478600001)(38100700002)(26005)(186003)(6512007)(6506007)(66574015)(2616005)(83380400001)(36756003)(53546011)(6486002)(6666004)(6916009)(66476007)(66556008)(66946007)(316002)(4326008)(31686004)(2906002)(86362001)(31696002)(8936002)(8676002)(5660300002)(41300700001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzN3OEN0SVdXeUJQcFFJR0dIRlB3YzllL2V2SVcwN3FZczV6KzQ5dGpmZktP?=
 =?utf-8?B?VUlWRU9ZaEtTN3Q1V2NpSFFYQ01KVkJYWG9RZWdaNnBDeE13NWFPYVF1eHlI?=
 =?utf-8?B?RmxVTng3d3pnZmN0OVE0d1VhdzVhbEdHbTAzS3p2Sm9iai9MeFRJeFVkWlNF?=
 =?utf-8?B?SjlsdDQyZ3NmelBLOXlUMXRjdzBucXMvOHA2dUtIRHVrNGttSWw1TkdwZERy?=
 =?utf-8?B?WG1UVVRyc0p4UUlGRWxYZ1dtRVdNOTNUbVhCMXY3VHpmOUtIWmVQeGJrNUpY?=
 =?utf-8?B?eEFVOUlJcUt1UGErUmdYRFBRS3VzWUw3emU3Zm5jcC92cU0zR2lvcWJzbnQy?=
 =?utf-8?B?N2VMT3QxdU5kYjZ6N1VpS2lydEM2UU84dmlZSHJtWk1SMWJGYWw4V1VCMFIv?=
 =?utf-8?B?ai9wUFExcXpqNnZHdE9FREE1S29QVUNlRWNXY0dURitKQSs5NVNDbjNUYnF3?=
 =?utf-8?B?Q2VIRnh3MmpVVVB2Kzl0VVB1eUlXZWhpdURsZWNLSDJ2dnBHdkdjemc4aFdq?=
 =?utf-8?B?S3dkSUtBdEJwN1FEM2M4WFdlK1M3SzlsUTZSNm1tL1NacFVSeDNJQXFjZzUv?=
 =?utf-8?B?dE9UOUJ2TWxYemRGWXBjaHFjaHdjQ2xlTG1GT3k3TmQ2cTFaNGhYS283ckNn?=
 =?utf-8?B?eTgvYmh0dkFNeUcyTjJpM2tRenM1Q05UNEF2a2NDMnNqRDVGemsxL1lGaEJR?=
 =?utf-8?B?OE5NdEwxVlBCT0dJSFZqemRNZ08zcTBlVGo4QTNlV0lSK0pyTmVHNFdIV3dS?=
 =?utf-8?B?MldUYWIwU0hORkJ4a2owUExCWFRSOVdKOHBTdklPeWxXMmFyOHVjamxHTFZi?=
 =?utf-8?B?VTd6SDRITEg4TEIrbGthcE9TWWZKZG5ubUlwaDkvalNJZlR2elhMcUpSUFls?=
 =?utf-8?B?anRhN1JTS082M1J2OGhUNTNodkd0VlF2bTFvKzBzUm5UM1ZWbFhBdjhPQisw?=
 =?utf-8?B?bXhMWllpQzBDSEFJYjhFUFBUckEzYnJjVGw5SVFzaGIzS2RZSnFMK2Uxemdm?=
 =?utf-8?B?T0paVWo0a2ZtWTlwbm55T3J0SjY4ZVBkL3FCRHNFRlhhY0ZQWFNYK0ozeGJw?=
 =?utf-8?B?UjJMTlFScFVYd2dzbGhCU21BNXNkOWpxQWFTckxIWG9hcXBhR0k3a0tINTVJ?=
 =?utf-8?B?dVhOUS81UWRkTmZjOTRTbVo1WVR5d3RxTHBLU2NVOG5HV3pBMGJDYkVkVVpR?=
 =?utf-8?B?S1kwajV6MElEekVZRm5kbDVlS3JqUlpVUWdYNVdhd3NxWW40N3lPVXF5VHNw?=
 =?utf-8?B?SVhiR3YwV3U0UjRWUk80UGlicUFaS0QxMUpickpEck9xdmlJdkh3UDBPQzZB?=
 =?utf-8?B?ZmRqaWJmSjF1aTZjUnJwRXhlSk40bzFPbkJFYUo0bTlyOTNhTDlnaE5hbDBO?=
 =?utf-8?B?SXpPM1h1WG8xa25nRGJ1TVRQeDlIN09mTzBaYXpHdk1adTBNMzRNM1RmZ0Iw?=
 =?utf-8?B?cytwQ0g0VmkxWTRIVVBjNFVxRFllOXUzbXNReW1KNmVVUFQ2dnc4dCsreW1X?=
 =?utf-8?B?L3NURmkwc0FxODU3TzllQkJFTVRHdzJoMmp3V0VFb1dYWmFydzdndmkvcEFi?=
 =?utf-8?B?SW9OcnMzR2pXRThRRWRjQWVydGMzNFJXSlY3cW1jK0pwTWh6amZWNzFGZWtl?=
 =?utf-8?B?dWMyWVg3aGlNMms1UDFjb0c2SXFDdWJRMzhzbXVCRnJTNWlUOTQ0RnRnOUF5?=
 =?utf-8?B?L0lCYXIrSmNYb1pJa1BmWkduUXA1cUxPZnkyaTV0RWpFbm5Oc0FjZ3QxWlNs?=
 =?utf-8?B?dTZHU1lkVWwrZW9sNDRMM1NlZGZHeE5LUC96dld1SllOb05YNTNhcHhVclBl?=
 =?utf-8?B?UkovT2hIMXZ6QUFYRklBa2lwOUVYRHBwd0hIUGFxdGViWFRONkVYcUV0ZWxG?=
 =?utf-8?B?MkZPLzd1SHhkTUxRbWpYQi9tWnZ3N1NJbnhQN2k2UEZlc2pKNUkxdDNMMmF6?=
 =?utf-8?B?ZDRqOXVORzB6UU1zT3V6SFYxUWhVOTVmbis4UjJncE15R255QWcxakp2R1l6?=
 =?utf-8?B?VlVzYkp0N3pWWWl4NCtCeDRUT3pPNlFkdzF2a1Y5My92d3BRZ04vZnRkUXVh?=
 =?utf-8?B?Y2JUeExha2dFTGt2RURoR21sSlROWlpiendDYXQ5c3M3bThKbEgvV1ZwUVVB?=
 =?utf-8?B?NmlJM09DelFuSDlnT3ZGRkpzMDc2ZVNkNHllWXNybHhwR0t0cHo4enBGZGFn?=
 =?utf-8?B?Z1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad9740d1-04b0-4701-0bed-08db455f030c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 07:30:58.2438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TLEOXak7DwPKS1X5AVyl+7oCgcA1qy4UIY60OHgcjvp1IAbtW/utTjOD6j4LRP079WbfnTYO+JA1WCLgFlKtq7x9kaPGQLw0LFvWuheoN6s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5164
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 00/13] Handle BPC for HDMI2.1 PCON without
 DSC1.2 sink and other fixes
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


On 4/24/2023 6:39 PM, Ville Syrjälä wrote:
> On Fri, Mar 31, 2023 at 03:46:00PM +0530, Ankit Nautiyal wrote:
>> This series fixes issues faced when an HDMI2.1 sink that does not
>> support DSC is connected via HDMI2.1PCON. It also includes other minor
>> HDMI2.1 PCON fixes/refactoring.
>>
>> Patch 1-2 Have minor fixes/cleanups.
>> Patch 3-6 Pull the decision making to use DFP conversion capabilities
>> for every mode during compute config, instead of having that decision
>> during DP initializing phase.
>> Patch 7-8 Calculate the max BPC that can be sufficient with either
>> RGB or YCbcr420 format for the maximum FRL rate supported.
>>
>> Rev2: Split the refactoring of DFP RG->YCBCR conversion into smaller
>> patches, as suggested by Jani N.
>> Also dropped the unnecessary helper for DSC1.2 support for HDMI2.1 DFP.
>>
>> Rev3: As suggested by Ville, added new member sink_format to store the
>> final format that the sink will be using, which might be different
>> than the output format, and thus might need color/format conversion
>> performed by the PCON.
>>
>> Rev4: Fix typo in switch case as, reported by kernel test bot.
>>
>> Rev5: Corrected order of setting sink_format and output_format. (Ville)
>> Avoided the flag ycbcr420_output and used the sink_format to facilitate
>> 4:2:2 support at a later stage. (Ville)
>>
>> Rev6: Added missing changes for sdvo. (Ville)
>> Added check for scaler and DSC constraints with YCbCr420.
>>
>> Rev7: Split change to add scaler constraint in separate patch, and rebased.
>>
>> Rev8: Rebased. Fixed check for mode rate with dsc in modevalid.
>> Fixed scaler constraint as per display version.
>>
>> Rev9: Rebased.
>>
>> Rev10: Addressed review comments from Ville.
>> Dropped patch to check for mode rate with dsc during modevalid, as the
>> compressed bpp is already selected with bandwidth considerations.
>>
>> Rev11: Fixed the policy to use output format as RGB first if possible,
>> followed by YCbCr444, atlast YCbCr420. Also removed the scaler-constraints
>> with YCbCr420, as these are handled in scaler code. (Ville)
>>
>> Rev12: Added a patch for configuring PCON to convert output_format to
>> YCBCR444. Added patch to have consistent naming for link bpp and
>> compressed bpp.
>>
>> Ankit Nautiyal (13):
>>    drm/i915/display: Add new member to configure PCON color conversion
>>    drm/i915/display: Add new member in intel_dp to store ycbcr420
>>      passthrough cap
>>    drm/i915/dp: Replace intel_dp.dfp members with the new crtc_state
>>      sink_format
>>    drm/i915/dp: Configure PCON for conversion of output_format to
>>      YCbCr444
>>    drm/i915/display: Use sink_format instead of ycbcr420_output flag
>>    drm/i915/dp: Add helper to get sink_format
>>    drm/i915/dp: Rearrange check for illegal mode and comments in
>>      mode_valid
> Apart from a few minor nits that set looks pretty much ready
> to go in. Maybe rebase and submit just those so we can push them?


Thanks Ville for the review comments and suggestions.

Sure will make a new series, test and submit these patches separately.

Regards,

Ankit

>
> The rest might still need some tweaking, and I probably need
> to refresh mymemory on the FRL stuff before I look at those.
>
>>    drm/i915/dp: Consider output_format while computing dsc bpp
>>    drm/i915/dp_mst: Use output_format to get the final link bpp
>>    drm/i915/dp: Handle BPP where HDMI2.1 DFP doesn't support DSC
>>    drm/i915/dp: Fix FRL BW check for HDMI2.1 DFP
>>    drm/i915/dp: Add a wrapper to check frl/tmds downstream constraints
>>    drm/i915/dp: Use consistent name for link bpp and compressed bpp
>>
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |   1 +
>>   drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
>>   .../drm/i915/display/intel_crtc_state_dump.c  |   5 +-
>>   drivers/gpu/drm/i915/display/intel_display.c  |   5 +
>>   .../drm/i915/display/intel_display_types.h    |  12 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c       | 494 ++++++++++++------
>>   drivers/gpu/drm/i915/display/intel_dp.h       |  14 +-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c   |  27 +-
>>   drivers/gpu/drm/i915/display/intel_dvo.c      |   1 +
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     |  71 ++-
>>   drivers/gpu/drm/i915/display/intel_hdmi.h     |   5 +-
>>   drivers/gpu/drm/i915/display/intel_lvds.c     |   1 +
>>   drivers/gpu/drm/i915/display/intel_sdvo.c     |   1 +
>>   drivers/gpu/drm/i915/display/intel_tv.c       |   1 +
>>   drivers/gpu/drm/i915/display/vlv_dsi.c        |   1 +
>>   15 files changed, 437 insertions(+), 203 deletions(-)
>>
>> -- 
>> 2.25.1
