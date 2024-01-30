Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1404841E58
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 09:50:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA8610F845;
	Tue, 30 Jan 2024 08:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A676E10F845
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 08:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706604602; x=1738140602;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2Lo98ci/CUKgoA+dKxyFspl9j0yfTr7EHDOuKB6rvPk=;
 b=Vnh2IilT100InRCf3DwIWS9GgHm7FKkoUavVUTqT5IvuvJ9FTYWvxLil
 4n3HiST0n/ijYt75Z+m2YKcuiDJz7n+euD3aO/dTYGmUYeprFzfkusPdM
 4/JrZlJnjAAPuSvVC6zyxZldKRRI7Gy7MJtavuKNZ9/Lsr4qkakJuoIKm
 JEy7xkyItrZU6VIWiHONr67dyR72KKNkWLZcoAeZyCa6Z6y5uGzlrlClk
 F2d+PEVlxQ/GYIQGFScclNP/dGxPiifcqr3lZFEw3XGo1D20sT5C1olhp
 +6q5fprnvwdvN5mFyqo7CBLn0Uo4YPTottX6vSXOoqcDPLXoT/e640DPZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="406926691"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="406926691"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 00:50:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="858407116"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="858407116"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 00:50:00 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:50:01 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 00:50:00 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 00:50:00 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 00:50:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TCeUw9kc+1BSgqSchYkbzWe1X/O9ykXVckWi+/J0YyzznUuBmUnLnYXBK+3GTY96s2AlL9PccnBXAkGhwoa6d5QeJEStWvngIdvmfh9siuMxWe1j42A0atwN70QqboiXvbPNwaE/JnX5zEtd8w7naN9ZEvoXoMHYf5SmvrXk9NQV9MjQWJA9av6B9DfVLzVaZbC0zRoHFjhVaQPzLHyklIwTLl0EjuFkd93YqSbCl7aBSWStfOAc2xZEqrqeM0SVrTMlBgJcQ75tSqMpWdlV6tQQs5QdZcDvM6QzQ07xa18+huwS5s4vCdtvd0HBUZ2w6q1ySsQXNcz2Pd8C3XnRKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+d855GBx4DLmpv7B5RIqwyuADsfVOhj989w912LuYjM=;
 b=c2vizSUFKVGj6gp0CKT6Myyll0Aid5Ocnc3pSJs2MAVXTkG/cHq6H+httZGVXRT6rop4rj2PVHMxXwZEvPFxqXZZttorcw5/hGCKKmLY+6PLYl2kN4R1fWEv43INc6QQNxlty5ru7n+QE5u/sMXVNLE2kdavy455+80H3bieoO3nDgBlXPsKKQ9OY//Dlsj3T9PhqbAI3LEJtIwjFFltJSZo3LX4dDRzA4eqDloDWI12xxriy76gC7bCdMDb0hhDlGjH0pQbzti5NbkFflVcakh862wBv/K0+Kc+I5twidx4Fwfz+69SGJGOnP3LElAHK9Br6L4cXVyQEVAdQ9DIow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.35; Tue, 30 Jan
 2024 08:49:58 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::f931:40a2:bc25:d0c8]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::f931:40a2:bc25:d0c8%3]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 08:49:58 +0000
Message-ID: <d1bf1de1-0302-4948-a073-1c015c9fd6aa@intel.com>
Date: Tue, 30 Jan 2024 14:19:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] drm/i915/hdcp: Move to direct reads for HDCP
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
 <20240127071640.850392-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240127071640.850392-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::12) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|PH7PR11MB5982:EE_
X-MS-Office365-Filtering-Correlation-Id: 94caa48d-3c95-4ac3-c9b8-08dc21707008
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AbWnxy3XWKlnxXDj/Tp3knCKi9HKaBXCmIkJyQk2VLoqIyu/oGm/2Ysmx2uV5VrZOJk/ZzDFPCU120AX8NXCoVBeTPMIXzc4iRBbrMGf0yAEPvy1MI88bM75kSt5yCv+7JQjJQDn00A2/BFgofjiLnKVuHoSIcgsyMFVMmAsKJVII7EAfi8bnliWYRTKeECXpvEx82o07RHgXIhdKv41r7le7ybQrHJz6Ifs3IKzNStbsC/6Qxo9YqadSr6W+cjn/Ck43WikU5ECNk4jCxNuGW+qbAFQ6uFTUxYCsINTCMCgbjBJcq+jXuWvtuQrH1CEa44z/ioAwtBzMXqqNA/aobRqvVM99hy5mcHQ+nuSs2Q/NevAt4im1JGK6NJio2Ts3iz6RNlVCrIQXp7OrxB6h+CxWWp/fvg8yzphX86DV/Y8xpcH8Y2EEFkv2GSKwupneKdTe7JVs56dW+2bYupVYv8JRPpBiE8fxeI/2hvlpkF68if7Le5U0AwdJhx78pfXWO8QbZ8sX6aXjrhS7u59E89l6DVygEXJbJyT8RFH2OCSHSOd2ygiIvFc8bwS83FNqVu8/bDkINqMpU4/odhwMVbKp4/CyXdc5yi6rXuwKBorh2dAsQZhu50Iy3aVrxViowMb4DfZmqydq8XSxv8Pdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(376002)(366004)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(83380400001)(41300700001)(107886003)(2616005)(6512007)(26005)(38100700002)(8936002)(5660300002)(4326008)(8676002)(2906002)(478600001)(6486002)(53546011)(6506007)(6666004)(66476007)(66556008)(66946007)(316002)(86362001)(31696002)(82960400001)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDJuTTF1cUVYYWtpaHZqWnBmY3d5NS94ZnlFWnIvaVd4L2Z4dXZBT3lFaDVG?=
 =?utf-8?B?dWovcGVseEhXNjJkcXVOb0czSG16MVA0bTMzSUZ3VXl5eWRZNmthdE5Rd0RY?=
 =?utf-8?B?bzlIRjBhaldZWEJhaUd5K3NObmZzazF2SEZ0ejQvaHIxb1NYWUMyZVdQbUdY?=
 =?utf-8?B?cnAzbkIrTXBkcGEwNTRyZFhiUDJZYlBzbWlKYjg1Z2RpYnl1a2FKbWJZSDlj?=
 =?utf-8?B?YzJqaEk2cVUxWGUwc2tLMW1LcjE3S2FOblFLNmdaZG5seWMrYi80eHhFNy9r?=
 =?utf-8?B?ZTI1dFgzY0xxeTBMMm91WFRsRHh2dGx2dTlMY2hFcUR5OVJPVVFvWVF2VXRT?=
 =?utf-8?B?bzNyNlBMTk1GZnRTeDl0Y3Q3RWl4UVB5aHFEN2FnQVBVam1zMFliN0xWb1pZ?=
 =?utf-8?B?UlpFOHhvTmU2bDl5aGNEZDdZTC9kWXBJWkRYbGtmb3lGUkNHMUN1SU4zTlgr?=
 =?utf-8?B?bFlrSWYxbDBQNlp4Ky9JQmVYUVE1UTFzem5oeGEzSU5LYXM0VTFIdU12TG5m?=
 =?utf-8?B?YWNHMGtTRTExRUVRcWRZQWkzQSs4US9yODE3Ukg5WXh0OUJ3dndIaXdJUmdQ?=
 =?utf-8?B?b2hUa2FlN0NQVDBxU0JKL1NFRW5UYjhCTzJvbHM4SVUzdVhEd3hVdmoySThU?=
 =?utf-8?B?YVYzdkcyeXg1RnFDcmlMRHZxNDd6MHRaOHpTVjJPVnRIZ3RyakR1OXpjV2Ez?=
 =?utf-8?B?eEExdjJ1ZTNsSjFZNlJzSldFM3doT0JXeVFyVmpQM1dtS0V6Q0pmbUtxVERh?=
 =?utf-8?B?djFYaEhmanZ4dFpnSS9ZUGlmdGZEdGJFRmhUT2N4SFJ2NzJqT1V5eFRITTJV?=
 =?utf-8?B?VDlkMkg0UDZBQ243UXc3VFVRZTJ3MEtEMnlRSE1rZ1FHREZVekhsR1J3MzFD?=
 =?utf-8?B?Qkx4SWJaM0Z5UVhsejN0ZFVQczZnRkR1QlR4S0MyN08wbXAwTXFmaTMralRj?=
 =?utf-8?B?S3BBTXVhWnBFa1FlbXNKWkRHeExyVkpLRXcvVnk1eVRtNlB6TDhheDN6NFJh?=
 =?utf-8?B?MmVpb0dEMnR0UzlJS0g1K3NvM0JnWGtXcDBXa0RvNFpLTW8yZUJQeWswMVhl?=
 =?utf-8?B?aHN6Z2lnSVFJb2pmRzdEZFBmSlMySEpyNmJIRXAwdzJ0c0JFZG5rdlBjQ25s?=
 =?utf-8?B?SjBrUzlPOGpSNk9TZGNUR3k5Q1NGKytxZ3VlRlpzUWN0c05LVXNzaHVveGNE?=
 =?utf-8?B?QSs0TzF4djdKYUxSYU8rOGlCUndTbTFVZVBEb0x6M2doMFhZaEtLTnZtK2lx?=
 =?utf-8?B?UVF1bkVlQUJQS0dBL3ZmRnplM1VocjhvelMxODR1bkMzWFhKSDFVWDkwVXpW?=
 =?utf-8?B?QWRQc3MrY3pYM0NndVpQc0RqUHFjV3FBZDdIWU5nMUxDRmRnTTEzNUIyNkRY?=
 =?utf-8?B?alRVdmtENnYxVm81VURLS1JXZVRiVXB3NWRRc2NSQXF4L0hQU0xhZVYraW5I?=
 =?utf-8?B?MXY3SG9zcTRkcGlXOS9yOFhQMXBHN2VyaU4zSFlSbnRwVlBDdGMzajF1T1Fj?=
 =?utf-8?B?Q3hQc25KbVFuRVNFRzB6TDdCYkQvcllTS3BYaHhHeElUMDhZM3NRSUJ2Q3Iw?=
 =?utf-8?B?WXB5VnlKS2lVNWVqTk9GbDBIb0dFeVQzTEVsQnc3MW5yVkZEbndvN0tzT01O?=
 =?utf-8?B?K3V6SXgwdWhtdnNhMHNMUGNOa0s1L2hjQWlIdm9mOVM0Si9DWXZWTGtnSnRV?=
 =?utf-8?B?dmx3WkhWbkM5SnczaW1ZVEtJN1ZsZ25lR3BPcERmYmNKcUVKUElhVlRKM0RG?=
 =?utf-8?B?WkIvVVJ1UU0yN0UxY0VoVXRjUmF6NWVuSW1lRDBNdlkxYmZscGx3TkJsNHE3?=
 =?utf-8?B?USs4TmY0TmRQb09zMHNQTkRmVUZoMmw0NGh1dTBsdHdkdHF4V0N0RGxndHBN?=
 =?utf-8?B?VTQzdzF1Vmp3S1hZMVZyN25ySW9pV24ycDZWS3Y5WGljdlFNUHpPcVh1bVRp?=
 =?utf-8?B?eXhzNHN4YXJ0Zkl1amU3a0k1eU5BbWtKQk9MTk81Tkk5ZC83NklYR3lTbEE1?=
 =?utf-8?B?TU9HRUV6MFdNaGR4OGw0RTUxbGtOSU9LY2F6MU9nZ1FDRWVnS1NqVXhNNmYx?=
 =?utf-8?B?UjE0M0ZSY3FkMWZtMnJKWGtmcUFJQ0g0UEFVcFRtaEhoOENleU5OekZwQlh6?=
 =?utf-8?B?MjFCSjdEWUNxc0tjaTNoYStCWXUwOVF5M05JSnh5K2hXSGtrTmxxd0F3bnlN?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94caa48d-3c95-4ac3-c9b8-08dc21707008
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 08:49:58.2638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tZScw64zRW1Y4kjurvKbmJT/eVIMEYpU/7RYfEupzEHjB3IaRiRW1gzPA9CcerbvAEMNyQz3LTYbQxl5JHoVBjpspVm0AcrGNEESQS/btVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


On 1/27/2024 12:46 PM, Suraj Kandpal wrote:
> Even for MST scenarios we need to do direct reads only on the
> immediate downstream device the rest of the authentication is taken
> care by that device. Remote reads will only be used to check
> capability of the monitors in MST topology.
>
> --v2
> -Add fixes tag [Ankit]
> -Derive aux where needed rather than through a function [Ankit]
>
> Fixes: ae4f902bb344 ("drm/i915/hdcp: Send the correct aux for DPMST HDCP scenario")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 31 ++++++--------------
>   1 file changed, 9 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 3a595cd433d4..defc90936317 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -330,23 +330,13 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
>   	  0, 0 },
>   };
>   
> -static struct drm_dp_aux *
> -intel_dp_hdcp_get_aux(struct intel_connector *connector)
> -{
> -	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> -
> -	if (intel_encoder_is_mst(connector->encoder))
> -		return &connector->port->aux;
> -	else
> -		return &dig_port->dp.aux;
> -}
> -
>   static int
>   intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
>   			      u8 *rx_status)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   	ssize_t ret;
>   
>   	ret = drm_dp_dpcd_read(aux,
> @@ -454,8 +444,9 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
>   	unsigned int offset;
>   	u8 *byte = buf;
>   	ssize_t ret, bytes_to_write, len;
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
> -	struct drm_dp_aux *aux;
>   
>   	hdcp2_msg_data = get_hdcp2_dp_msg_data(*byte);
>   	if (!hdcp2_msg_data)
> @@ -463,8 +454,6 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
>   
>   	offset = hdcp2_msg_data->offset;
>   
> -	aux = intel_dp_hdcp_get_aux(connector);
> -
>   	/* No msg_id in DP HDCP2.2 msgs */
>   	bytes_to_write = size - 1;
>   	byte++;
> @@ -490,7 +479,8 @@ static
>   ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
>   				     u32 *dev_cnt, u8 *byte)
>   {
> -	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   	ssize_t ret;
>   	u8 *rx_info = byte;
>   
> @@ -516,7 +506,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct intel_hdcp *hdcp = &connector->hdcp;
> -	struct drm_dp_aux *aux;
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   	unsigned int offset;
>   	u8 *byte = buf;
>   	ssize_t ret, bytes_to_recv, len;
> @@ -530,8 +520,6 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>   		return -EINVAL;
>   	offset = hdcp2_msg_data->offset;
>   
> -	aux = intel_dp_hdcp_get_aux(connector);
> -
>   	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
>   	if (ret < 0)
>   		return ret;
> @@ -651,12 +639,11 @@ static
>   int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   			   bool *capable)
>   {
> -	struct drm_dp_aux *aux;
> +	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> +	struct drm_dp_aux *aux = &dig_port->dp.aux;
>   	u8 rx_caps[3];
>   	int ret;
>   
> -	aux = intel_dp_hdcp_get_aux(connector);
> -
>   	*capable = false;
>   	ret = drm_dp_dpcd_read(aux,
>   			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
