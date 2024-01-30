Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFD5841EDF
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 10:09:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20393112E70;
	Tue, 30 Jan 2024 09:09:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 056BB112E73
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 09:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706605751; x=1738141751;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MELJ7n9BNi2C8QC6oEZlNBzDqlhmeYd+xsjJiZaHCeo=;
 b=BnXhGolSWBXhufocvww4VhWNoChJ6b+9wzLzfYFO9hr7bvwpWQMi7X0d
 y7nUPCHax1t8l6ncXx6t5Huc7BeckTKoL3C35a17lfOqUt2HOKj1gU/rL
 0adIJqDAWWJKa8oJprnxSSmCUuhhzmvcQk0CzBqNU8EzdOepaIXzWd0U9
 Rp3CYL+wxLYhox8hh8JOmg242FUNeUsuZX97rVIPB7d6lwlE/OHuoFoAN
 B0SakJr8N549+rDOU4/I6XQwV1ynvTte9gxdafjFsZWWYxL82oOmBOwSl
 aIH18fm+INLSKuBpy2r03lc2JehNDMOk0XvzsDou0QqubS69Z3J9aUQUb g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="434390378"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="434390378"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 01:08:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="30091169"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 01:08:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 01:08:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 01:08:22 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 01:08:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 01:08:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FpAaDHR4cwmAa9278uOuU1IwNq+lKtc13nlCk1zn0nsktkncaaQPzyWLhH0qUNI/3jvGK8scY+1iwzDMk7ctDdGLZSXcvty3En+mwqURFV8cFYailKUTs8f3DKDuEM3hU7S3ematdUhKXx9RCpne372ViApIGXxfF0hpeY1/p5EkHzkMbSiPhLGIg95n0+tHDcLBYjuZv1Jf3vpn3p/Y0K+5umH9UDA2GMet9Z1Ii5sLsK2Wr0UrsBU3R+A6dhf/tQ+dwCShniXJ3yUfL1WCTd3RemqkMSzBuqJGG4r8somd49SlRyDCyOmIL0tusyM1ar2IJRvDIi8+xViLvuh6og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MITIDDogXJk12NAW3aJl2B/1WVn0Gjg0/y67xprK/yk=;
 b=arLyDk0wzzTE7EdLJ3viFOlOkLdHCIFuE1Q8IsyJqMRste5fz8GFFWKz8wZ9kQoiK2ksIxuaNUxs+Rq/EqpgWsBEo4btCafc2D7DIyj8kiVuA8eaFYolA2mNuH4oZ6NffElQtsV0g6s+YL6PBrXE9vYT0BGnao5vKEFWMs0hFLFy2rbINTdBIihhx3p2/0YGVHQNv5NG2cLnGXSKKatg+CP9R7ZP6iTMbhLVyBhBhULNfYDcG/sWteppYDHP1xg55Poo3L+n6e6qd25iP7cEuhqMUs1Lo5axvyDqbqZska6BUhZltiE+Q/yfwpVo1OvQl5dlnCiFOomGEOFYUYr79g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB7758.namprd11.prod.outlook.com (2603:10b6:8:101::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.36; Tue, 30 Jan
 2024 09:08:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Tue, 30 Jan 2024
 09:08:20 +0000
Message-ID: <e0575fb1-ca88-4907-8e63-eb992cea146e@intel.com>
Date: Tue, 30 Jan 2024 14:38:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] drm/i915/hdcp: Read Rxcaps for robustibility
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240127071640.850392-1-suraj.kandpal@intel.com>
 <20240127071640.850392-7-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240127071640.850392-7-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0149.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB7758:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d04f085-8644-4c82-b5fa-08dc217300cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xvBQWN119J+z/hKdpl5+8yXKMdy94eqVD2XQSzzaLFfY/HU4bVUOe+RqmZjuc7xxJ0GWSWcgd0FJ+kWtn7+oCetTu0upTDR+8gQ1OYKHBgl/hv7pS5T9cS9OZYO1r7/XZznE59vVKm05rSIuROxylMzWOlKvaA+CR2prsmEiDRI5K8y2fXRb7ddyWEN72gmJX6nednVcp/7Eju7jnH8XA79e1V06ouF2NLBZTSRr0adyUGhnyLhU4J8nZCLLpw3QJFK7GbozjYiS7e/b3JkZqqnsuLfXwCuf2DAqYsiYytF4U6H92pGiGh5N8Wxj5L5XPi8vM+G35ydnzfZzTrCqHaKphZtfI+e6jusdYeToGFb0H47wd25IyY13Uh4z/A2YW9ayp9hw3remz476xD2+T/Gtna35xrXsknFKGYK8o0eSDnGnHU4R8VWnSCdQHz9rYMhAOvsGT7iQpSN3XhfwlgFCi/udHESPXr/uSNP/kNmliJli2fk14i0NOgz3at5A3HvuW6dYR5s7dcPQYkUDoVfaaK4NBho1cLKhRdQ+R3HCx8j0k3X1HSRHdZe8wwALVCFKVb0yKE2D8/X+xNebmABt01VwtMad0NVgATTwCt4uiQ43jrNbcNEvr2KILdT3
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(396003)(346002)(376002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(83380400001)(31696002)(86362001)(82960400001)(41300700001)(36756003)(38100700002)(478600001)(8936002)(8676002)(4326008)(66946007)(316002)(66476007)(66556008)(6486002)(26005)(2616005)(2906002)(107886003)(53546011)(6506007)(6512007)(6666004)(5660300002)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SE9ZVlFRTU9acnU3RjFlT0I4ZG02QXA3QStEVVRpMFlzZTZhcytaYVc0eGRH?=
 =?utf-8?B?MXRpM0wrSjI4cWRlaHlCLzhyTm1YQlk1NGFET0dDTVltY2ZmSUZLS0w1T1Nn?=
 =?utf-8?B?ZysxaE85Z2VCK3VhTE05enNVRDlEdFg3UDN4M0ovOFY4cGhtV2lBdjBkMFIw?=
 =?utf-8?B?L3pLZXF3Z2IyOWVOOGNGdGQ1V21KekFUSHRiRzdWYnE1YjRMZkNQS3lsN0VT?=
 =?utf-8?B?ZTI3aERwYTcyZWFrU2tEK2lZaDJJSUErS2RObGR1WWltdEhwSFBPdGp2c001?=
 =?utf-8?B?S3UwUUY5YS8wQyttc09NakhGZlVNOFRWRWVtc1dDeHIwUUw4UC8zRDlXM1k0?=
 =?utf-8?B?OXBSRDRldDI5dm5IeitkWmhWMnBsbURLN2RKVXVnRVZnUG9ZYWJ3T3JSUk9M?=
 =?utf-8?B?K2xQVXZ5SlY5b0dkUnpWQWttSXR0MjlDYWlqSUNPQ3BFZFNwM1o5NHlpRnVK?=
 =?utf-8?B?NGxZY3Y5S2FONk5IbGJLblA3dEVya1FPTmxZeC9qeUdXbkZUZDhyQnVHb2lL?=
 =?utf-8?B?SVlqNnJBVzJMR05IT3JBeHZlenJwRXpKSFpTU1pzVjBnZExPQ1lHL2ZzOGJV?=
 =?utf-8?B?ZElVMGpsQWc3TEdtb29FbkMwRXNmcUZ5dVJRMVJkM3o5SGZ4L1N2T1NFYzNi?=
 =?utf-8?B?NE0zdE9XTHVzazdIQlZuemlocUx0M21CY1E2NUNucEJtYUM3eGJqVGYzQkJh?=
 =?utf-8?B?U1BFZ3FTTWo1WitIK0JEYkdSVVg0NTJrZysxR0pSQ3Z0eVlwZHBwMDdZdGsy?=
 =?utf-8?B?a0w3Nk9YQlBmR2QzNWdwNmFaYTgrMHhPcjN6Q2prVzIzdjkrdW81eXI0U1dN?=
 =?utf-8?B?Tnl1aFMwUXNWTVRwNzlpRkMyK1Yvb3RmV1d2RW5UVUtOQmZ4TWVpWUtScjRo?=
 =?utf-8?B?N0NaZ0hqZzNpNC9qQm5yQlFpajhFWXl0aTdQdS9DT3N6RmV2WWFSZmNSK2xN?=
 =?utf-8?B?UnR4QUhncGErNnUwNkpIbWhFYWNjbGxBTkN6RWlZeDVXTjdGZ3NNeE5SRzZM?=
 =?utf-8?B?dmlrWjdVcmVXZmdQSTQ2WEdQSFk4bkxjdFdBM2t2cVAvejhXK3FYZzlsWDcr?=
 =?utf-8?B?RFpQdW4yU1M5WThvUjFXejNNVGl0RWdKWjJjM2V5SDNKRXozVmFoRXR4bUFJ?=
 =?utf-8?B?NUtkTFd1UFU0dTEza29uMnpKR2h0djhPdGRHc2RuT1pNZjZMdCtra3NSVUM2?=
 =?utf-8?B?VCs3b3BWbFNyOXVBaHBKYmxoVzdLeGtXVlNReUl5WlhoSlVranNBMEhKbHpY?=
 =?utf-8?B?dDNNYlpPdjgyMHBoNlhmeUVGTXU3d05uNFhiNU1hZFVFaXl4Q1V1eWhPVmND?=
 =?utf-8?B?U2c2YTZrR3ZmZU9XK0ZBVlNEUlBLVEJVZGF4VndmVHZKdWUzL2lRQzlaYW02?=
 =?utf-8?B?c1puTll5R0hjVWxBZG5NZVZwYVlzT2N4Zk5BSU1tZmtjZ3B4OTUycHNlV0RT?=
 =?utf-8?B?dWo4aXo0NWE0Z09UUkNGR2NCUjFvZmhjZTZ0bURYMUtuUXFzRnJFRk9kcVd5?=
 =?utf-8?B?QWNPS2lSMklqMXd5UUNyQXZhUVlvVk9lVDlETlEyZGRaOEFyMGh0NkIrZ2Zw?=
 =?utf-8?B?KzJ0SWoxVnI5dVFnSFEyMEVYa01ORGtpUllSUDRuOXF0Z2tzQXNNZ09TNTg5?=
 =?utf-8?B?U0pHYUZpSE9LUmNPcUV2ZDFxMEtObzlrSjVmbmpsS1JJUllkL1JlRXUySitn?=
 =?utf-8?B?R0tKWEgvSGZoRHBURmdQaTRwKzRxU0RwM1M3elNZU0ZQNE5tUy9PSU5qTkpu?=
 =?utf-8?B?bDVoKzkxRk9lazNWT0VQV0dKQ0c2VHFCdHY4cFJrMDByaU4xZGk3M25LbnNs?=
 =?utf-8?B?NDVRK0EydkR2VGUzRUlOVVZFSEF4RkZUVzRLSlZrWk5iQnF2RW1ZYkFoaUR2?=
 =?utf-8?B?WjBXV0VjQzBuNTlwKzJaWDNSSjFuUTg3dDRJSlZJWWNNQW1iN0ZwWHR6QzhL?=
 =?utf-8?B?YkFETG53YjdnU1hIK2VvYlR0Qkxtd3hIbzI2YnVVZlJHa1dhVGhBWVIvM0lW?=
 =?utf-8?B?bTJHV1V6SVBGa0JyWjRPcW5QaHFCU1hPS0kzbUR0REhsdkg2UWg1YjAwQTQ5?=
 =?utf-8?B?TjBkZmVUR1pPYUJ0dC9sTVQyZTdVS1RPckR6QnNRaUdZMG5zVDBMV2ZpcFZE?=
 =?utf-8?B?aWdDMXdPUDhRRS9iSUplV04rNDlEUjJiWnBFVzhtMFE4a3FhZEozQ2J1WmRE?=
 =?utf-8?B?TWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d04f085-8644-4c82-b5fa-08dc217300cf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 09:08:20.1664 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QISGejYcuu+KyRoLgH/FxmUL+6CkJTnQ9xOday9FHVyd6X+ylSEQTJia+9MRi2c76ooXznSP/iwy5xikmf3hr4xhbTyKjSqSVsDc5Uy35ZA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7758
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


On 1/27/2024 12:46 PM, Suraj Kandpal wrote:
> We see some monitors and docks report incorrect hdcp version
> and capability in first few reads so we read rx_caps three times
> before we conclude the monitor's or docks HDCP capability
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 22 ++++++++++++--------
>   1 file changed, 13 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 5b724bd89329..f1b96bb3b727 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -640,7 +640,7 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct drm_dp_aux *aux;
>   	u8 rx_caps[3];
> -	int ret;
> +	int ret, i;
>   
>   	if (remote_req)
>   		aux = &connector->port->aux;
> @@ -648,15 +648,19 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   		aux = &dig_port->dp.aux;
>   
>   	*capable = false;
> -	ret = drm_dp_dpcd_read(aux,
> -			       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
> -			       rx_caps, HDCP_2_2_RXCAPS_LEN);
> -	if (ret != HDCP_2_2_RXCAPS_LEN)
> -		return ret >= 0 ? -EIO : ret;
> +	for (i = 0; i < 3; i++) {

I think it would be good to document the rationale behind retrying 3 
times in comments too.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit



> +		ret = drm_dp_dpcd_read(aux,
> +				       DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
> +				       rx_caps, HDCP_2_2_RXCAPS_LEN);
> +		if (ret != HDCP_2_2_RXCAPS_LEN)
> +			return ret >= 0 ? -EIO : ret;
>   
> -	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
> -	    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
> -		*capable = true;
> +		if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
> +		    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2])) {
> +			*capable = true;
> +			break;
> +		}
> +	}
>   
>   	return 0;
>   }
