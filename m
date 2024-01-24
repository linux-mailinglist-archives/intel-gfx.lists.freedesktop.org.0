Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3BAF83AA4A
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 13:49:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0F010F748;
	Wed, 24 Jan 2024 12:49:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0A610F749
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 12:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706100588; x=1737636588;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ut0YqYH+KKQdNuDZkUFA19a+hZ3GyVEhtsXWbnTNtZo=;
 b=gh1Fa37Pq3x7r0nIrJwskHMJQHWfhMiXM0WoEtDgDUDRNa+VsfLDylqm
 WyUW5pxEjN8+XkgTiLTczKOZk+8nnq9FCglqHcsz6+dkRE1k68gguEcO8
 P3oNOxmZoPxiWDrvES7Y3roXCW0nOm8dzXCqvZ3Jiy45iU6d8XdqFE7n4
 7dmjSN2vOpj5SoHT3mykHWX4uh4B8FxIvSxCWC6R8UbdU0SLHeo3SPtKS
 hUVCk0q8EltRQlRyJED82UPHfaklmkvfcYtghnLNNk+lCU5ocdmw8LoTC
 9OQodB0N/3phd0SwgZMYJZE1lqtsEpDxMDBQpLDMvxs0rU6Rty+32CLxf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="398989171"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="398989171"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 04:49:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="876684431"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="876684431"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 04:49:48 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 04:49:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 04:49:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 04:49:46 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 04:49:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Juc3gKNd0wxlQbeyKP4IX9IouUA0T6az0R0Sm/imYRKPzVsBl3posFmepbfrc4Ic3xO9gnkDcxl9h72tM2ZyXjy39iUaF9QL56EDCAGwrT2lmQmjxOBjjCUeD1ChgsfYcXkQRoIe8gu4HUdcs89M0qvLCzfZo8FhRoUT7dtCWQ052bIMvKEHldPVDjinxAc7GVEmqywDXX0gVtq93wZUAfJlagImgTS7Mqw0lhOQW1Z5Qn2l7Pi78jcI2e/u//E/Lvgn4pjj6aXPUgjCszeBRo3M99LcZCoIxZin5orl4fQANwKR9TbljmPUWN/0zxZm1DwnIMmngv+2wmaWr5vlag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aWbPCnWW8vUl6gGaAEvl6D7CQHTqqa6VI8gEYOnGB5c=;
 b=bzg5pRPs2JZvDGBP+ncBXmf+fpOH6Ov5tFFO78CNhwQCbfdKgEkkVfVD8GXRzx0vkWHSH4WnnEvA5pD9g8C8Fyza5+KBldwVCjExr1RENv4w/PnxTWB3M8vtWB4LIiwscml7hCqjywIfFq7dB9FyijWQ3+FIdVQjw5WfAmP5FbCKstASPMPIge5pAS5lMb1O7A9OBnV6ZR0MzPkmQ4ibGlf4y1yvcToABYmQyAr1Ngq9mTtwdapNuXdjeCB87WLWS8amTTKxX28ICRXxDoboBZZvB81Xdk6FAz9BdTv/EoEgii85OSMYrmvgI2F/CrMwe6mEHNL/X5p/5cnApH7oBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB7415.namprd11.prod.outlook.com (2603:10b6:806:318::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 12:49:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::9cbe:76c6:c834:b88c%7]) with mapi id 15.20.7228.023; Wed, 24 Jan 2024
 12:49:44 +0000
Message-ID: <b1ebe726-5a31-4f46-8d46-82c4b1068eaa@intel.com>
Date: Wed, 24 Jan 2024 18:19:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/7] drm/i915/hdcp: Move to direct reads for HDCP
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
 <20240112074120.159797-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240112074120.159797-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0139.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB7415:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f502bbc-49e8-4058-90de-08dc1cdaf05f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LOKn+mwTLdOBzulL46WQpxwrXUAei0gtZZycVYWOG1UdfgaeCknXDt9GkRM+WrE+fZNlUecoky8cdPdA7KTyBGDu5kmCZF9MpZEsIdwKSEGdqbrpITJItRkDqBT73V/dBge2Rg98AFpcStOdOpwesDCm3+IoVTovHtMmJCmlppd/uKIZnAG2bMrhNzWKy3Dc9EBGktRJL//YcKpLZl32bt9MiscdhIrFXVnVeXkxJqXP0c5TpnJdneSTx2/dn4TImWeMLuNxxzkPUp6o7vEhWK5M5EZGRw/NzNcADNfSjCwqpePVbKgv9uzj+fWPF90AN9/yq+I+F4s5+mmCdiEO2WuRizYp8weRQpO8nrQNsmkRlyskSPojBwPGGKZl6EcbFIbP3hv1qJgWx68cl7/jQYxrnuTMBEnURbwXTIkBcg7vh2V0/+B54iFx+aOAxz0ahv2uRq/dqblo7VYzrgan1EAq3zW5JYJeP6XGVJdwTvN12r7pSE/mhEWNkd03Xwvf/JXZSalEb6nveDTTPjNPUyoB/iTO3c6ynU6EPgl94BUe5KuM9HMOdrLCj72nWI0TLb8ttmhU6YnKi+XCQqx0vRhJCImKlfLpI/GfmY/r7hEHNewDLpHdyqBpLBN4TNHGleNQ54P3ogQoZYQpoEgsWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(38100700002)(41300700001)(36756003)(86362001)(31696002)(82960400001)(2906002)(66476007)(6506007)(66946007)(6512007)(53546011)(66556008)(478600001)(6486002)(316002)(6666004)(83380400001)(5660300002)(8936002)(8676002)(4326008)(107886003)(26005)(2616005)(31686004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U0IvczBudlJFZFFXaUU0aGM0cXN3Z1ZmZjNrbWU1eUE0dEw1bit0UjZxMWJ5?=
 =?utf-8?B?UGF3Zk45NE9rcy8wSTd5dUR0NG1XQXJHbXNhUFkwTlVPd3Zhcm5WWGNRTXRX?=
 =?utf-8?B?b2dUYVUvQ3o2dXhpZnQwUDBYZS9uWXhBaklabTlzaEh3cTVtODREMUV3enRI?=
 =?utf-8?B?eStJamNMSXF5Rm5qQTFpaE5HaWF4dlhiN3ZrNERmQ3R1NmNjMnhDaGJuL3NJ?=
 =?utf-8?B?K0lnN0VnMldNRzNWdktjY0p6RmMxazJuVnh1VHlaNXM1djdZQ2Y5Q1FaUDJ5?=
 =?utf-8?B?ME1nSUlXQXJXVndjYjJLMmViMXU1NUhzQTlBa0ZlRk4ySGhNZndxU0Fxam1P?=
 =?utf-8?B?a3IrNWRQR1ZRTi9ZaHVNSWxTb1NlL2p0dzhHYlgzVXhBSGhjWDd3UXVCdE15?=
 =?utf-8?B?QmxRSXVJVktna2p0SWVyWGlHa0hXQmpRZDZubzVhM2tPcU4zUDBuWG9WQU1y?=
 =?utf-8?B?NG9odkprK2EvZzFabXRyN2IxNlh4WVFOSHFDMFRnWFhJaVV5MGlrNEwrSXBl?=
 =?utf-8?B?YTBWV21BMFZjRVIyYXF6QWZDQWhWblcwKzhWeEFsMXNlWWRxT2NnbXYybnRt?=
 =?utf-8?B?eUVGemE4SHU4QnBLV2U3d0hJMUVVdnJCaloyaUU2RkpWUjlwaDdGVDl4enZK?=
 =?utf-8?B?cEVZejc2bzJXMHlaT25ZcURnN01NM0R4alFmSTRoNS96aXIvckxKeFZTNEFi?=
 =?utf-8?B?UWt2V1NqU3JtdVdESXNCeGtaZVRNVXQ1UHA1emtZSE95TmNIMW05cnNDMTBk?=
 =?utf-8?B?OGJ5S1dPNlpZa2Y2MHgwR1Bvc1pIdjNiTzY5b2lnd3FmTmREaFg0cXdSWUNn?=
 =?utf-8?B?aGFsRGRUU2VvN3ZFQWQ5dXVObHQ1c3Flc2RwZkNBSDJnaVVNR3JxK2o1WEdJ?=
 =?utf-8?B?eWx2Qjh4UnpjRGR1U1dWOUNNdzVaTVE2Z25LR0VXSzlUbE9KZU1tY09KR1Zw?=
 =?utf-8?B?cmlvdzNpUHN4RnFmQWMzTXV4dzJHdDdBbEhudlg5cjdnczFOVWNlckgwMlRj?=
 =?utf-8?B?c1NCM2pVM1V3YlowVHNsL0dGWWlBQmExSm8zT3luaXRLQlFnTlBnMWJDMkx3?=
 =?utf-8?B?SS95ODdOaHl4ZHY0VVRYQzNzbEU4S3VrMHZubzArbnpvWG5TTEx5Z3N6SnFL?=
 =?utf-8?B?TzBsdWVEa0kwa3AwU0NIbW50dU5JR2xaSDBpa1YrTGk1ZS9IMVhlYWdGSXBn?=
 =?utf-8?B?UVdVbk9LQ3BzR3JaLzNZdEE2YVY5VXdaSWFwRFJVTlVpYWd6OVpWT0hydGRt?=
 =?utf-8?B?Z05UWWVwOElHNUJWYmdMTEcxQWVNUUdOdHJ3UytnanRUSUpLK3pjS1NxYmNQ?=
 =?utf-8?B?YWkwNy9zTmVIODlEZzJKRkpWNlg3aU9Fa2wyemtaZFpEMm1YZ1hyM1ZJclIw?=
 =?utf-8?B?c3ZFczk3U0Z6b2NCSXZxa1NUT1J2OTV5bmovOEFNRmJPVzE1UmdxWDNHK2cz?=
 =?utf-8?B?eHhGSDVxSStKSkNuVUxqTjF0RzExMXlDWDJraWU4Y01peVNtU0hMSng0WTdh?=
 =?utf-8?B?TGFUemQ0azBVOG1LOFQwVCt0S25tVXVpRFVWTVExQk8rdFBHVi9vY1VuWDMx?=
 =?utf-8?B?Rlo2QlB0ZzMwcHA2SzRXeldVOEU3Vit5d0JrNStmSEl5OWV3YytsWWhzK2cx?=
 =?utf-8?B?ZzBaU0syc3FKM3Z0Qk5LdnpEVFNvTDdkdHZzSXFKVFBjS1JFNWhuNVBzSlMr?=
 =?utf-8?B?Skk3SUsvYXMyeWtwOXVza2NqR2E2RzVSdjIzMlpCZ2RucmZNMWZiaTNrRUJS?=
 =?utf-8?B?SHdQbTNNRXdkbnVoRjdlS3hialZSOVA5VE5OR0hGTFFvTkpwdFhPTCsweVF0?=
 =?utf-8?B?SDBoZVpjRHhkVVN5YzhWS0Urb3ZFWEdqZzA3aUprMCtFdW9XUStNZjY5UlNR?=
 =?utf-8?B?MW4vTDVjTzFRMmhsTk8rWFZqbHl4SmQydVlhYVZKSVdseHBBcXRiRmQrc01a?=
 =?utf-8?B?SENPa002RFo1NGFqOWdWeWgzR2FEQ2xOMDlIOEh4Y04xdGpNOHdhMllxcWRR?=
 =?utf-8?B?ajNlbHk2UXNsbEc2TkpVRmtnQVgvWlVQR1VONFZld3Z2TCs3WEF6QVpxQkhh?=
 =?utf-8?B?akh4L1RyNnN5ZlVmSG4zS1ZOQjFqSDZ1eGpieXB4Rlp3QUJZUkhWM09DYm12?=
 =?utf-8?B?MFIzM2JUT09mK1p1YlRmV1Q5Y0t1dFV3TXRlaEdEZ3RzZmNEbUUvNmVEazRj?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f502bbc-49e8-4058-90de-08dc1cdaf05f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 12:49:44.4725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T1GcyvI5xyVMLPjwJd8FDBG8Nz/Hk9x0hFJQmGji2RVY2XSuOtjYlXU//PxiBJRDT/ct5TPVpGC9e6Exp1g1/hrtw3lrdeP3WuHr1DBLDeE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7415
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


On 1/12/2024 1:11 PM, Suraj Kandpal wrote:
> Even for MST scenarios we need to do direct reads only on the
> immediate downstream device the rest of the authentication is taken
> care by that device. Remote reads will only be used to check
> capability of the monitors in MST topology.


I think it would be good to add fixes tag.


>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 3a595cd433d4..bec49061b2e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -331,11 +331,11 @@ static const struct hdcp2_dp_msg_data hdcp2_dp_msg_data[] = {
>   };
>   
>   static struct drm_dp_aux *
> -intel_dp_hdcp_get_aux(struct intel_connector *connector)
> +intel_dp_hdcp_get_aux(struct intel_connector *connector, bool remote_req)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   
> -	if (intel_encoder_is_mst(connector->encoder))
> +	if (intel_encoder_is_mst(connector->encoder) && remote_req)
>   		return &connector->port->aux;
>   	else
>   		return &dig_port->dp.aux;


For most cases we are not using remote read/writes, so it makes sense to 
directly, use dig_port->dp.aux in those places.

Only case where we are interested to remote read is when its its an MST 
and we are interested to know the remote sink capability, in 
intel_dp_hdcp2_capable.


> @@ -346,7 +346,7 @@ intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
>   			      u8 *rx_status)
>   {
>   	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
> +	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector, false);
>   	ssize_t ret;
>   
>   	ret = drm_dp_dpcd_read(aux,
> @@ -463,7 +463,7 @@ int intel_dp_hdcp2_write_msg(struct intel_connector *connector,
>   
>   	offset = hdcp2_msg_data->offset;
>   
> -	aux = intel_dp_hdcp_get_aux(connector);
> +	aux = intel_dp_hdcp_get_aux(connector, false);
>   
>   	/* No msg_id in DP HDCP2.2 msgs */
>   	bytes_to_write = size - 1;
> @@ -490,7 +490,7 @@ static
>   ssize_t get_receiver_id_list_rx_info(struct intel_connector *connector,
>   				     u32 *dev_cnt, u8 *byte)
>   {
> -	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector);
> +	struct drm_dp_aux *aux = intel_dp_hdcp_get_aux(connector, false);
>   	ssize_t ret;
>   	u8 *rx_info = byte;
>   
> @@ -530,7 +530,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>   		return -EINVAL;
>   	offset = hdcp2_msg_data->offset;
>   
> -	aux = intel_dp_hdcp_get_aux(connector);
> +	aux = intel_dp_hdcp_get_aux(connector, false);
>   
>   	ret = intel_dp_hdcp2_wait_for_msg(connector, hdcp2_msg_data);
>   	if (ret < 0)
> @@ -655,7 +655,7 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
>   	u8 rx_caps[3];
>   	int ret;
>   
> -	aux = intel_dp_hdcp_get_aux(connector);
> +	aux = intel_dp_hdcp_get_aux(connector, true);

As mentioned above lets call this out clearly:

aux = intel_encoder_is_mst(connector->encoder) ? &connector->port->aux : 
&dig_port->dp.aux;

Regards,

Ankit

>   
>   	*capable = false;
>   	ret = drm_dp_dpcd_read(aux,
