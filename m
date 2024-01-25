Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE19E83BA71
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jan 2024 08:11:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E979210F820;
	Thu, 25 Jan 2024 07:10:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C3B10F820
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jan 2024 07:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706166651; x=1737702651;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jPBZarQldRU0bGjXoS5SJC5MuOsL8WNCScU/7EDZguY=;
 b=WDJvlYV44Mkfb++DVrnXEIlbFsSRnXQk1M9/ZWnqVVloWwcRDeT54zkb
 siz3WO2B+Oy+quXpxP4TuslXttuZJRRQHtTCi2dd1vXPaMBZjtfBj4KHV
 IjeVt2+Y8UIyPpBkha27dldPslunw7sg4vrSfBTpAE2Vs9KYXMufcrhEs
 eRc6lTWthKoEq7cjovpZv30u6GJqUIIGFm5PHGdrhhdebdSCjU+dtlCbn
 rqJkvplPbox6S6XxA2sjNsUYDq1Sbxc0V7DB9yXy87nohNFzQVTFfyEk6
 qvoPlKJbip3Hr2CpVJCPcDylOg8oDUQ3NI2RZNk6O92q4iMtlbhCJpOr4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="9194443"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="9194443"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 23:10:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="736229331"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="736229331"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 23:10:49 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 23:10:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 23:10:48 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 23:10:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQCFbuAbrLqr8oaMOqBrQB6AQ0waiZ7wli7SdZgcRCbfKXN3UqIGR2OmyzDEunpPc76RGWwPe90LfukAT13+LcIQyPPWsHB8sJ+wOn3lwmgnwrrABQJvd4O7ME3KkPqFSxdelxvRpZj/OtUemX+o8aTnp4cRRB7zen4I/HI19f99bXGn5n3UOkoCFk1RTtZIAokfldqPHlqlo3xr6TcfUJBlPgAlGMxv/iLmtikowyoUsmaS3hqVza8fk7+2B2V+d2isGH5+TIJ5UYdvFjRfFo/9b5cM78ArCAvzGumhwe+Uwr8Vkc1kCI9yV3Fvq6hw+DQ0GxCJUzjnwy0C0x3cQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vTrlcv7r6vvisEE495ytd4c8KLGoZHliX3KirLwtpC0=;
 b=VKTb8lRaq44o/52U7v0pstnGtoCVoVzonFZvyuEAFM3cdn/fiLmNmBvbGIMa3T6M3WegU5ONaKCKwfwJGP5JMzhCAbEIGlvb4d+c0M0YiHujIiFtazkKKN04futd6Cz3vGvhWjNtdepjoFxPHQCfcY2RCvIJYzb0U6WhyWPsEdVyMofXrUUnXFp5ZzQUd7jlmJYxY2sajZm0nzOvSV9Fxnp3aGHfzqQU62OVduM5YMhMoqOIkmqDlkwlliKkzLpZUGy+c7gXG1eEmzQQSulJ/Na/UWY07GfUJY4JmeUsrOv8B5om9ybq3KzSO0vkZSNTqh8F3rkPjnVpX98DLqdfzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB6199.namprd11.prod.outlook.com (2603:10b6:8:99::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7228.22; Thu, 25 Jan 2024 07:10:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7228.023; Thu, 25 Jan 2024
 07:10:46 +0000
Message-ID: <5acddd6d-9e22-4ef4-ab97-9b1b4e642dad@intel.com>
Date: Thu, 25 Jan 2024 12:40:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/i915/hdcp: HDCP Capability for the downstream
 device
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
 <20240112074120.159797-3-suraj.kandpal@intel.com>
 <c1f454e1-b461-45de-a388-3751db5eade1@intel.com>
In-Reply-To: <c1f454e1-b461-45de-a388-3751db5eade1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0233.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB6199:EE_
X-MS-Office365-Filtering-Correlation-Id: e499f0c7-59de-497d-4bcb-08dc1d74c04f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ocemntlqBav+6OLWSioXgay0RzjhnYZTtl+hrgHfI19DYFSOaGg/drWDlU15e/Lerq439b25q9UnwxLapvewX7gC5OVJBQx0XrBXsEWbP/BsDJ4UqBQfCxLiyzfvn0U67fQVSVog3DqjtOXsbNYQQErHyDDOBpZbogZnPO+nZzw5nSfFUMu8Rn45u6OoBBMJB1hL1cYVLvlu9puNB8pBuCiQHzASUwClWnQHTb8+70TXqsJPXJqeuMp9O9Y6MiohRDl6lHRqwNCRYTPqim+FWZE1/j90b6l/SvquyJD0t4xg/mzxReLpGRRK69wkXUySH/NeX/J06pAFwPIu8XmBeaERXTkOmA3hmaREPN9zXcu9u1ilGsxVhPmMGLLC3VJ1n/m0knSeIJxKC+S0Dx6yQ51QvdcwKx01WilhRNWd/kRqO7RcvDih6ZqrNa6vzo5mgLxe6EBEIphGUxTobtbInmZ5uGvXRXroNRbLZywVExR5NZQUTTQJBIt9+tVn0NDne8vgAwoTIrZC88OKGqTyl9NxPKstkwF+93iMluPtdIlPeyZBHAU+/OvYqYIxeHOCFGrdupaiA6lH1zOzFwfDjOL7v60zB2orq2IZgPsXv6xbCbEwrWZKQgCqxVcBJeuVbAQsA79tSvd3Le2SZCrh+w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(136003)(396003)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(31686004)(66556008)(66476007)(66946007)(5660300002)(316002)(6666004)(8676002)(26005)(8936002)(2616005)(83380400001)(6512007)(2906002)(82960400001)(478600001)(6506007)(36756003)(41300700001)(86362001)(31696002)(38100700002)(53546011)(6486002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUFBL1kyN05MSzFQd3RBYTNiRUdpQnNqZ0sveGg2OFFZNUtnbzV2VUUwNVhk?=
 =?utf-8?B?VXhGZE1lVUM2UGZUN3pIY2FiUU40VzdaRkVKeSs3WWRVcEt0QVJkTW1VSmNi?=
 =?utf-8?B?STB6b0NZV1ozSitYREZOclIxeWcrYm5sSGRiOWU4eGFEZGd0a1pXOHVWUnRG?=
 =?utf-8?B?REs4RUU4TVdBMGxEVFAxRmFMQjZ4OHFXdHREYnZXR3ptcGV4RFRWREs0MGRt?=
 =?utf-8?B?RkZFSE4zVUNUSGlSdTU2UEl6bHdSR3U2dkRxYjQyZm9uUGVVQWJTU1AxUEVz?=
 =?utf-8?B?MDI5eWFJSmRPWkxaK2I2UWhYdnJVU1R2SE8vNis4WlZsb1VUUnY1bXhtdmV1?=
 =?utf-8?B?K2hYZWp4aGlIeTlUUlcwOXlOUzBnWUFmSHVZNzRPNmRBQTF3Vnk4U2pLMkk4?=
 =?utf-8?B?TEhZcGxnS1piNWs0MzhRWVZ0bWJ3cXZsekV1THNaZGxuMEdDS1dLcVQwdW4v?=
 =?utf-8?B?QUIrdDd3aGd3WFZVaXcvOFpuZTlZajgvUWs2eWEwZWQrOTI4OUJLZ3AyeTQv?=
 =?utf-8?B?Ry9BYW85V3o4MWRQTDNrbUdmMmpaUmtzNTR5a3M0OTY0RHBSVFJlaEdrdisy?=
 =?utf-8?B?ekhxaW8yNWNOQlV2bkxESWNwUzV3STB3L1VYb3BOYzRWMEVIT2tqN1Axdjdq?=
 =?utf-8?B?QlJsK3hvZ2JCcDJUbWdyK0tCZ25NVE9ZLzU1amwxWklKVVdFazFhMGZnMUtW?=
 =?utf-8?B?cjE5aUVKeU8zcFJ0TmFCQ01GZzU2UFVhYVh0c2V0QWFRK3NXZ3htc3dCbzU2?=
 =?utf-8?B?emJmZmIxZ3RlWmJBMmVITGRGRTdKYVVEZEpwdFB0c1A0MVBFYTdNR0ZIdktm?=
 =?utf-8?B?bmYxQk8xOVowTmVicWxvZjh0cUhKdW1RakZRZE5QTVA1S01tV2NseFRmTmlH?=
 =?utf-8?B?c3RxSG1oazgvcnVld2pqR0U2dGgra0ZxaDlrdUVZZWJvNGZaQWVyU0VkNUFo?=
 =?utf-8?B?aFBmSUw5ZnJWODZ5MG5aajBtdU5OWVp4R2xJNXM0eUd0c2dKWnZuZTNubXdU?=
 =?utf-8?B?V1BFeG8xTFVBcUxBZGdBYXJnRUpic2dyUmF1SkRQZndGWUVGVlp5ejNpa255?=
 =?utf-8?B?UGVWRER2U3phc0NZVTExbzhYVHFxeEdiM2xjYTdwZGFRdmNkek8yMnpLUmNM?=
 =?utf-8?B?eDhrYWpHOWFrNFFzdjQ2WDRSWTM2WWdJVTlYK05lQ1FETW9tbTVLaVBmVE80?=
 =?utf-8?B?bFpSQXVvdDQ2NzRkenpuVkRxMjNnaGV2Z0FkYTlIZTJRRUVjdzJGRDNoK0ZC?=
 =?utf-8?B?VWFuK1kyeWhGV29sblcrVk5BYlpQelYzWFlMRnJvUThxODRXQUR2ekxKOVRj?=
 =?utf-8?B?dWE1UGRPc1ZqeVVaUmF4UFFUQWtLOU4rWXpxSkVMc2ZyZHg3elZacE1oRkFh?=
 =?utf-8?B?NHcxUW52QVl6NlNjZGRQekt1K0Z5dk1hUllUbU1yY0FrZXdFTk81emp5eXV6?=
 =?utf-8?B?b0ZCN0FkVUpPajhrT2VTOHhuQUlTSEE1NDExMWZiUDF5bGY5cGc3d29KK1k2?=
 =?utf-8?B?dHBSVXowWGd6Z0p0Tk9RUTRuSSsyRmtQcDloblNHSWhRYUx0cHNUaTlLcm5O?=
 =?utf-8?B?Z0Qzc2toU2c5ZU5FTVFRdktlS0VOcHlXQk90ZVFIZzRZQW5YMzdybnV6UW1q?=
 =?utf-8?B?dm9qQXM1S1FOUXFyRHRMcWRjV0gvRmFZOHVaSU1KL00yNHZ5WW84S2tjTkY1?=
 =?utf-8?B?c2ozTmhETDQ0d3ZaR1JWTzNRRlJGaUpQR3lPeklpdTNDejAzbzZvZjVuRTNq?=
 =?utf-8?B?blVJNnFnM0lZK0p4RXJnVXB1TmxzMVN2WHFGNTdkY1l4bDBubS9nQWtucEhS?=
 =?utf-8?B?cDZQcmJhZzIycE5kdi9RZkZZZzFmWFlUUkxZTUhBTXJvMXpzSlB3T0czcE52?=
 =?utf-8?B?SEhsYTlkeU9Cd2g2dVZyZTlJcHN5R21MTTRZUHNOL3hqeWtqZTdpRGl0a0I3?=
 =?utf-8?B?MUlrcUxXWGlmcUJhRzZwQ3JuRGxWMDVabWFEcUczVG1Xd3dUUkFQRTRuanhN?=
 =?utf-8?B?NFVxTXNzeElmUy9HeVhkd1ZWNWJXOFNSa1hMclFEVjlGMFJxbjhEamZlT2VO?=
 =?utf-8?B?Qno4aHVMc3ZBc3RIUHZjcFF4dXlqcG54Ui9GNzByUUZNMlZHNmpIb3pmYUtJ?=
 =?utf-8?B?VzRqWGlFVmJZWmg1eEVadWZXNW01bzIwOHEzc0x5bytpeTAwbWx6SE9jcWM5?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e499f0c7-59de-497d-4bcb-08dc1d74c04f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jan 2024 07:10:46.3722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6PbG1cgckUbX3E+hYqWyFZxl685sBdj+uufxduSxaORlFpGgDUeIJAgkg7No54o91z57Qc0+qse8g6qdMnsNiAgSV570/Pl+VvIeFA51T8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6199
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


On 1/24/2024 6:50 PM, Nautiyal, Ankit K wrote:
>
> On 1/12/2024 1:11 PM, Suraj Kandpal wrote:
>> Currently we are only checking capability of remote device and not
>> immediate downstream device but during capability check we need are
>> concerned with only the HDCP capability of downstream device.
>> During i915_display_info reporting we need HDCP Capability for both
>> the monitors and downstream branch device if any this patch adds that.
>
>
> I agree cases where MST hub/docker and sink are of different 
> capabilities, this creates a confusion.
>
> with this change, perhaps kms_content_protection IGT can also be 
> changed to check for MST hub's capability.
>
> Only thing is that for hdmi the 'remote_req' doesnt make sense.
>
Instead of changing the hdcp_2_2_capable can we just have a separate 
function for intel_dp_remote_hdcp2_capable(), which uses aux = 
&connector->port->aux.

The common code for reading HDCP2_2 Rx caps can be pulled out in a 
separate function, which we can call only in case of MST when we read 
remote.

Also we might need to have similar thing for HDCP1.4.


Regards,

Ankit


>>
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   .../drm/i915/display/intel_display_debugfs.c  | 19 +++++++++++++++----
>>   .../drm/i915/display/intel_display_types.h    |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  4 ++--
>>   drivers/gpu/drm/i915/display/intel_hdcp.c     |  6 +++---
>>   drivers/gpu/drm/i915/display/intel_hdcp.h     |  2 +-
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     |  2 +-
>>   6 files changed, 23 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c 
>> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> index d951edb36687..457f13357fad 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> @@ -210,7 +210,8 @@ static void intel_panel_info(struct seq_file *m,
>>   }
>>     static void intel_hdcp_info(struct seq_file *m,
>> -                struct intel_connector *intel_connector)
>> +                struct intel_connector *intel_connector,
>> +                bool remote_req)
>>   {
>>       bool hdcp_cap, hdcp2_cap;
>>   @@ -220,7 +221,7 @@ static void intel_hdcp_info(struct seq_file *m,
>>       }
>>         hdcp_cap = intel_hdcp_capable(intel_connector);
>> -    hdcp2_cap = intel_hdcp2_capable(intel_connector);
>> +    hdcp2_cap = intel_hdcp2_capable(intel_connector, remote_req);
>>         if (hdcp_cap)
>>           seq_puts(m, "HDCP1.4 ");
>> @@ -307,7 +308,12 @@ static void intel_connector_info(struct seq_file 
>> *m,
>>       }
>>         seq_puts(m, "\tHDCP version: ");
>> -    intel_hdcp_info(m, intel_connector);
>> +    intel_hdcp_info(m, intel_connector, true);
>> +
>> +    if (intel_encoder_is_mst(encoder)) {
>> +        seq_puts(m, "\tHDCP Branch Device version: ");
>> +        intel_hdcp_info(m, intel_connector, false);
>> +    }
>>         seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
>>   @@ -1153,7 +1159,12 @@ static int 
>> i915_hdcp_sink_capability_show(struct seq_file *m, void *data)
>>         seq_printf(m, "%s:%d HDCP version: ", connector->base.name,
>>              connector->base.base.id);
>> -    intel_hdcp_info(m, connector);
>> +    intel_hdcp_info(m, connector, true);
>> +
>> +    if (intel_encoder_is_mst(connector->encoder)) {
>> +        seq_puts(m, "\tHDCP Branch Device version: ");
>
>
> Perhaps MST HUB HDCP version?
>
>
>> +        intel_hdcp_info(m, connector, false);
>> +    }
>>     out:
>> drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h 
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index ae2e8cff9d69..aa559598f049 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -507,7 +507,7 @@ struct intel_hdcp_shim {
>>         /* Detects whether sink is HDCP2.2 capable */
>>       int (*hdcp_2_2_capable)(struct intel_connector *connector,
>> -                bool *capable);
>> +                bool *capable, bool remote_req);
>>         /* Write HDCP2.2 messages */
>>       int (*write_2_2_msg)(struct intel_connector *connector,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c 
>> b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>> index bec49061b2e1..90b027ba3302 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
>> @@ -649,13 +649,13 @@ int intel_dp_hdcp2_check_link(struct 
>> intel_digital_port *dig_port,
>>     static
>>   int intel_dp_hdcp2_capable(struct intel_connector *connector,
>> -               bool *capable)
>> +               bool *capable, bool remote_req)
>>   {
>>       struct drm_dp_aux *aux;
>>       u8 rx_caps[3];
>>       int ret;
>>   -    aux = intel_dp_hdcp_get_aux(connector, true);
>> +    aux = intel_dp_hdcp_get_aux(connector, remote_req);
>
> Inline with the comments on the previous patch, this would also be 
> required to change.
>
> Otherwise the patch looks good to me.
>
>
> Regards,
>
> Ankit
>
>>         *capable = false;
>>       ret = drm_dp_dpcd_read(aux,
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c 
>> b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> index c3e692e7f790..b88a4713e6a8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>> @@ -161,7 +161,7 @@ bool intel_hdcp_capable(struct intel_connector 
>> *connector)
>>   }
>>     /* Is HDCP2.2 capable on Platform and Sink */
>> -bool intel_hdcp2_capable(struct intel_connector *connector)
>> +bool intel_hdcp2_capable(struct intel_connector *connector, bool 
>> remote_req)
>>   {
>>       struct drm_i915_private *i915 = to_i915(connector->base.dev);
>>       struct intel_hdcp *hdcp = &connector->hdcp;
>> @@ -186,7 +186,7 @@ bool intel_hdcp2_capable(struct intel_connector 
>> *connector)
>>       mutex_unlock(&i915->display.hdcp.hdcp_mutex);
>>         /* Sink's capability for HDCP2.2 */
>> -    hdcp->shim->hdcp_2_2_capable(connector, &capable);
>> +    hdcp->shim->hdcp_2_2_capable(connector, &capable, remote_req);
>>         return capable;
>>   }
>> @@ -2374,7 +2374,7 @@ static int _intel_hdcp_enable(struct 
>> intel_atomic_state *state,
>>        * Considering that HDCP2.2 is more secure than HDCP1.4, If the 
>> setup
>>        * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>>        */
>> -    if (intel_hdcp2_capable(connector)) {
>> +    if (intel_hdcp2_capable(connector, false)) {
>>           ret = intel_hdcp_set_streams(dig_port, state);
>>           if (!ret) {
>>               ret = _intel_hdcp2_enable(connector);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h 
>> b/drivers/gpu/drm/i915/display/intel_hdcp.h
>> index a9c784fd9ba5..72268e593cec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
>> @@ -39,7 +39,7 @@ void intel_hdcp_update_pipe(struct 
>> intel_atomic_state *state,
>>                   const struct drm_connector_state *conn_state);
>>   bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
>>   bool intel_hdcp_capable(struct intel_connector *connector);
>> -bool intel_hdcp2_capable(struct intel_connector *connector);
>> +bool intel_hdcp2_capable(struct intel_connector *connector, bool 
>> remote_req);
>>   void intel_hdcp_component_init(struct drm_i915_private *i915);
>>   void intel_hdcp_component_fini(struct drm_i915_private *i915);
>>   void intel_hdcp_cleanup(struct intel_connector *connector);
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c 
>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index 7020e5806109..d7feef05bc47 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -1733,7 +1733,7 @@ int intel_hdmi_hdcp2_check_link(struct 
>> intel_digital_port *dig_port,
>>     static
>>   int intel_hdmi_hdcp2_capable(struct intel_connector *connector,
>> -                 bool *capable)
>> +                 bool *capable, bool remote_req)
>
>
>>   {
>>       struct intel_digital_port *dig_port = 
>> intel_attached_dig_port(connector);
>>       u8 hdcp2_version;
