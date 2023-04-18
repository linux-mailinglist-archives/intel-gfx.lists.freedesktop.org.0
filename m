Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B05576E674B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 16:39:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA6810E16A;
	Tue, 18 Apr 2023 14:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A993510E0CE
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 14:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681828770; x=1713364770;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IMqKZd621BkjTDu/ZHocbpzY1RoTH/XSE/HkyGXFnVU=;
 b=I3DJaKQyNzgm0tBeb+5zDjxjBN4VOd0SERUrMpuGXjMoR+DCEmYYKxr1
 9oqXv2EOhEBmqBrz/fim/a7GYCV8fIBrO6OPub+dNV5o4qP7+onttvnA/
 axngpFJ9yFK034hKkFylu9PcvS6SWIN2SVFPYrtYX1UUqDCbmCTq7lIYg
 AA8vJnRbZf4tSWYr48+qiPEpsXZCq+vUh+pDVU6XhM582Qq3EVSbNooBR
 nOiE1uaggMmjIUI7M2TyZdFvYv6r0AEHIhUEir0l+gPPUtGZa2Xwoglmc
 xxg2zjJKSWkxWkffJ9RDFI3ImBMfYCeI4d2XhVQCuPvCH7JETuINz9cNX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="325525285"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="325525285"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 07:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="802558904"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="802558904"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 18 Apr 2023 07:39:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 07:39:28 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 18 Apr 2023 07:39:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 18 Apr 2023 07:39:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 18 Apr 2023 07:39:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ehskFZaTgqIFKkhh1G2WTd4QYiJ1tZOr7NGLsLTmNP+ax6jbGJg+s1hQU+CzzbmY2XQU1431HRqj4ldbVGMKpaHSnekB/EZdGGOh/ytg/fN1T37ujGbJ0oW1DGnkTITYfYPy2rDZJ/G7yrchdy7rYXuUS9+B1KH3yq3ChkW3XVG9rEJwyrpjAU1xCjUbDRZ/ainUAVDNdIFVfhZ3BRURJLBwJ6NpuS7u8RLtvNYhRZMexNKVLhe3cuVQQCQ1TcgtEpQqshEWDVNj407i4mG43wGwxXH6EfZoaru3y8IPeQPIhvOzsGjtJfQ36kWPKwU+LXPIJs2gL2VO5xcxjjztEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hs8nIDvbnvB+v7JwFohiol2TN9ydMidUq+8GCcQK/Es=;
 b=QhiTeLfoTRVh0ZZBPOSCPfblZB903jkop4Ck/084GAomwDZTUuXE7EQQG9FjvdAl4t9XxL+fGAPxAPdQuu4Ro4DjeOIdjXiSth/ZlBG2NvtIuO2p5mYHHitgdS80KHJ4bDR1htVt1i6L0GOaVu60uanHJKRKtV2Y5nOyibhQ+POO/K7VJ8SZ9zXpCnpKWCi359UnQwu/mYObN+NTBkfv7IEJ3fYLp/+Dwh7d5WHdH7SXqxJ59H9H8pjnzeOeKVfmgyFRvax65F60166RTYAYIFZ3R1tWbg2R/iRfmJXTdiDS1AjHa2S/uoJyGyJI8ILXShbfv1Zf8+SPEAx/8l2DKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6144.namprd11.prod.outlook.com (2603:10b6:8:af::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Tue, 18 Apr
 2023 14:39:25 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6298.045; Tue, 18 Apr 2023
 14:39:25 +0000
Message-ID: <fc47b7d8-0a93-716d-337b-405c601f2a6d@intel.com>
Date: Tue, 18 Apr 2023 20:09:16 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Manasi
 Navare" <navaremanasi@chromium.org>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
 <ZDWcDhmJyMhQpQBa@intel.com>
 <CAE72mNkzD4fpXeTVyFaP+xQqDbSFm+yiQ8sBvGoD+beequfeaQ@mail.gmail.com>
 <ZDZAHj4PPaDD9HHj@intel.com>
 <CAE72mNmd2wAdLFQFLgKeDazyn+Qogd1h4N75hfJrtBsOndB2Vg@mail.gmail.com>
 <CAE72mNmy9Lm2vZz9S1q18-yAGWXsBkjhFkYDzoHZFQY6LqvOyw@mail.gmail.com>
 <ZD6RKS972byO+Fpa@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZD6RKS972byO+Fpa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0236.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6144:EE_
X-MS-Office365-Filtering-Correlation-Id: ba8185ff-d2f1-4e70-d015-08db401ab4c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: as/gs63dm8YBYAGTn9HHI1Ons4mnT7QVOjDy8yu1tKl6C97OIQxoTZ2YPQDCfkVfZn4tuNlskafJO5hJUtpc/FsAMF1FjKI9+EdWSnLZ+JdbfG4abdkg+n+j5bpKAtJ2/73jKCHNnM4XrA33XTm+pfvO2nnSnBDFn3laofobHXKRjlZDNv0Cqsy4IbEXgtiq8/3TmJ0k5WraGIDsMcN5BO3Wo8tIMmgNb41B8k9tG+cOkCpE+DzUkp2hEbdmnpoMYd+jSNKco2ApM67EaFyTO5yW1ULfZaULBhQNS5vZ+x1GfUyFp0eNUfzioxz5DE636A78pd1ym+D1P6TFw5fh6TAA+/u5eVerLhMqhMXn5HUETX3foc4XNZ/QzJhAOd0l459OfNVPq0yyEwhQ51FglSjzvfyEYwF5XqFIxJmkesoPJKSd/rTB2H5pLs5gNI9qKBmexMxjKp/nyrmGV+tnrujquJNqsrSGcst7TFZavYUabGjwhwnb/fXZSYgj9Lu8fyMQ0areTjI+qHjY8DxdpSjVEAbobUZAdUGWn51Cm9uB90SZ4PVk3l5zH8yLaQyek6VYllBvXQ5Ho/kB0ap+SxktgtLFdvoJ5SyUJcqpymU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(366004)(136003)(376002)(346002)(451199021)(478600001)(6666004)(38100700002)(8936002)(8676002)(316002)(82960400001)(41300700001)(4326008)(66556008)(66946007)(110136005)(66476007)(186003)(2906002)(53546011)(6512007)(26005)(6506007)(86362001)(31696002)(83380400001)(36756003)(66574015)(55236004)(2616005)(31686004)(5660300002)(966005)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RGdMSHpzNGU3UHRMSEQ5dVJRYU1BRGJEYkhRY1M0cDBmZTZNNHBLMlFkSFFF?=
 =?utf-8?B?eXdBNWdERlpvcjJuY2RIS1daT3pIbGtFcEgzdkhqYlZhK1lmVFErRmU3bnBm?=
 =?utf-8?B?eXlCTFQxMHE0dkJmTk5hZ20wallMS3AwUllSc28xTUZPeXd4a0hTL2ZZR016?=
 =?utf-8?B?V3NGUjBIQmsvV2srdzZhNmVnNTlQZ3dZRHo5QThJSUxjWENOdlJyK0NtUmtS?=
 =?utf-8?B?OUxnckZidGQ0cXMyMXhJa0RGWGdZZDVlT28xUlB3Q1d6UVNTWDRFN2kyRDBh?=
 =?utf-8?B?Snl6NlErMW0zRGRZczUwMnNQMnlPT3pXT1pGWlhXL3IyY0h6aXNzVWd6aTMv?=
 =?utf-8?B?Y0ZSUG1SSHBFeE9vVkt0aFNNT0lMTkpXS0M2RXVhOEl2Z29mcWp3Y1I4cjNa?=
 =?utf-8?B?VHIrTGRZdzBqS3FFc1B5WDVBK2lPVVpQVm53S01zaTM2UHpIUXB2bzJpZEhZ?=
 =?utf-8?B?a2hGQVNZZmRKbXZVbUd6aVYxZnRHdUpBbDlERHpMMktSblpvdGticjhmd0Z2?=
 =?utf-8?B?SXAvbzFOUlZUM29iaE5mRGU1K3dkaWRNTEo3eG5SdTZuTTVJdVNPQTRCSGdU?=
 =?utf-8?B?THl0UXhCQ1dMRzRoTTBmaFd5UzdFUnRTVEZWM0dsdERtSUp1OGw3VGlDb3dv?=
 =?utf-8?B?REhwczNKODhsN3lXajg4RWdlWDErWWlsU1l2dFBpUkRNNk9EOTlyakFTa0ZY?=
 =?utf-8?B?SGxkZkt2Zjc2bWJqUXE0a1RWUnByOVJTWFZUN0pXQ3FEQ3pjeE5INjNSWTFO?=
 =?utf-8?B?YzM1b0dxaks5d0ljWkMzQkd6UmFBRGk0L24rQUF0L2pQdG5KL3VEV3pVY3ln?=
 =?utf-8?B?L2RkZzVaNk5wMEhVTkdDU2lXSVIyb1JQeW5mUzZmRTNjSFBuNFhiU1NsdFpN?=
 =?utf-8?B?dllJeFBPUmhmcmxrQ3JFaWxrSTk4NDM5d3ZHdTJJcm5JNkNzWTNYa0cxUnA5?=
 =?utf-8?B?aXl4OEhheEVabVlXUWsyREZqNFdhTVozcnZRVUtsbFZhS3ZBcHZGNlppSndB?=
 =?utf-8?B?akRlbmtFbzRpN1ZxSUhVQVlVZlc4T2xQamRFOUZ6WHY2NFhPM1MvcjY3bkpZ?=
 =?utf-8?B?SFpxb2dMNFFDdXY2TFYzNklUV2tTYVhrY2RmL2RBc0w1Wk9vSjczTjFRUVRO?=
 =?utf-8?B?T1d3aS9rRzNGTnRnTHYvVVNCTVNra1JpekZyanVPWWdod1UralNMQ0VuQjUz?=
 =?utf-8?B?N1M4Rzg2WkJ5YjVrVzl2Q1I4YWhNN3IybVgrR0h6Ni9ObWdsNk1qK1lrbnRx?=
 =?utf-8?B?c1BjUmxDZmNNNVh4L1kySjRJMlI4TGNZdEtYdmZVOEtLV0lrK0w2M3NQSTZL?=
 =?utf-8?B?cUFSZ3E5MTR3Ni95aUVkSHNyZnlCdEpaRXFTVHJ5bUZuWnRqR05SRU0vQ2pr?=
 =?utf-8?B?NlNqVHVBalNOWEFQdEZNVTBBQk1RcVFtVXpxQi9wMUJYVFZIMmdHbUJkeCtw?=
 =?utf-8?B?dWh2N2dKcFp4bTg1NHBPZmtOSm9qV0V0dTdzaTVIYW02VExJKzVLNURhV295?=
 =?utf-8?B?WUxRMWwzQkhrRmxwNWRZU3p5QVJTVzl2WDI1cWYzc0E2dWJzTXRLRXVtOFAz?=
 =?utf-8?B?bDlITTc5SWxaV2NSOGYwT3RQQk5wS21lWE5rdXlTV00zOTkwc1R6d0hCUEhO?=
 =?utf-8?B?c1BqTzdYdUJrME40d2xZNUxuYXhZNEMwSjMwNHQ0OHhGZnQybmlxRk5BRkdS?=
 =?utf-8?B?Y2EwaGw5a3dpWXFidDFaRXJGcUhCU2tiaEsyOVpZaTdVaEZFYkJ2aHhYdFl3?=
 =?utf-8?B?cTl1eXNVcFArSzZkZGxuWFRsblM1cXlHMzd4aXVSRjYvSll3U1F5Rm1WeFFp?=
 =?utf-8?B?ZW0yWW55RVA3ekNaejJLWHNjdDlxM2h4UG5mdHFMMVJrallqNDFtZ3dvMWZ3?=
 =?utf-8?B?N2VSam5yd04vR0J4eFBlVkNOZHZOSTAzbndnVXNHVTVVeU52L3BEbWJDS1N3?=
 =?utf-8?B?cWZwNy9aTFhCUlJ4ZGZvTUZNczh4Um9FaFl0ZHQ2azlSWlN3eWZzV3BIeW5D?=
 =?utf-8?B?bXBWYUoxWVVnQXZoWFNsUjBBdndIVHF5bnZhQlVzRmtkdlY0Sll0UUV1Zzhq?=
 =?utf-8?B?dXJ5TE8vc2ViM0liejdwRXV1V1NmN2xNSlNHZDNhY2thd2lzZmZZMjYyeklH?=
 =?utf-8?B?R3dyQ0FuMFI5SE13T2xicmdDZGVCY0UwSjdaZVB6bHlrYy9BTElaclg2ZXk4?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ba8185ff-d2f1-4e70-d015-08db401ab4c1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2023 14:39:25.3096 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /7nlnp+vLF7kqatYbWRUHcXg3iiCPaPwfhEYRq/uMSi8y0Q8mpRpn3qEmuJinQ7q9sK6nrgdSy8HDR08Z9D0wIOcQjYz9xwqVoO5gTgkE9E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6144
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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


On 4/18/2023 6:16 PM, Ville Syrjälä wrote:
> On Mon, Apr 17, 2023 at 03:48:12PM -0700, Manasi Navare wrote:
>> Hi Ville,
>>
>> Could you suggest how to handle the intel_dp_link_compute_config()
>> when the max_bpp is returned as 0, currently
>> it just exits the loop and returns a -EINVAL and this triggers the DSC path.
>> While we should be completely failing the modeset and encoder_config
>> in this case instead of trying DSC, correct?
> The DSC path needs to handle the bpp limits correctly:
> 1. Take the baseline limits already computed
> 2. Further restrict them based on sink/source DSC capabilities/etc.
> 3. Make sure the uncompressed bpp value chosen is between the min/max

I have some older patch to try similar thing [1]. We try to iterate over 
bpc to find pipe_bpp in the limits, then try to find out compressed_bpp.

But if intel_dp_max_bpp returns 0, limits.max_bpp is set to 0, so we 
discard this for dsc case and re-calculate the limits.max_bpp?


[1] https://patchwork.freedesktop.org/patch/519346/?series=111391&rev=3

>
>> Manasi
>>
>> On Thu, Apr 13, 2023 at 8:23 AM Manasi Navare <navaremanasi@chromium.org> wrote:
>>> On Tue, Apr 11, 2023 at 10:22 PM Ville Syrjälä
>>> <ville.syrjala@linux.intel.com> wrote:
>>>> On Tue, Apr 11, 2023 at 05:07:01PM -0700, Manasi Navare wrote:
>>>>> On Tue, Apr 11, 2023 at 10:42 AM Ville Syrjälä
>>>>> <ville.syrjala@linux.intel.com> wrote:
>>>>>> On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
>>>>>>> In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
>>>>>>> we return 0 instead of returning an err code of -EINVAL.
>>>>>>> This throws off the logic in the calling function.
>>>>>> What logic? The caller doesn't expect to get an error.
>>>>> If this returns a 0, we end up using limits.max_bpp = 0 and in
>>>>> intel_dp_compute_link_config_wide(),
>>>>> since max_bpp is 0, it exits this for loop:
>>>>>
>>>>> for (bpp = limits->max_bpp; bpp >= limits->min_bpp; bpp -= 2 * 3) and returns
>>>>> -EINVAL which then wrongly goes to enable DSC even when link BW is
>>>>> sufficient without DSC.
>>>> And how woud max_bpp<0 prevent that?
>>>>
>>>> The real problem seems to be that the DSC code totally
>>>> ignores bpp limits.
>>> Hi Ville,
>>>
>>> So I see a few concerns/questions:
>>> - Why is the Max bpp value 0 in intel_dp_max_bpp, is that a valid case
>>> and how should our link configurations handle that case when max_bpp
>>> is 0?
>>> - This is happening in a bug I am looking at with HDMI PCON, @Ankit
>>> Nautiyal  have we ever seen something similar where max_bpp for HDMi
>>> PCON
>>> is returned 0?
>>> - I dont think its a problem with DSC code, but rather
>>> intel_dp_compute_link_config() outer for loop where we vary
>>> from max_bpp to min_bpp and see if any bpp works with available link
>>> bw, how should we handle this when max_bpp = 0 if you are saying thats
>>> a valid case?
>>> - In this patch if I return -EINVAL instead of 0, then atleast the
>>> entire encoder_config will fail and that will fail the modeset, since
>>> it assumes max_bpp cannot be 0
>>>
>>> Could you please help answer above concerns and how to handle max bpp
>>> = 0 case if that is valid? This patch is simply making that invalid
>>> resulting into modeset failure
>>>
>>> Manasi
>>>> --
>>>> Ville Syrjälä
>>>> Intel
