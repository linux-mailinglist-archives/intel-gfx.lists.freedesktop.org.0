Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E6A715486
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 06:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B53C10E337;
	Tue, 30 May 2023 04:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A24AF10E337
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 04:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685421503; x=1716957503;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Y0vBzCRRc8clsaAD+k3sOgtXhZ9DTJUlFLCpPwqutFg=;
 b=I3kukjcmZ20yf9Jr56BvJX/sfCgfPQG5y1LlJSuuZwKdcm9WiqA9o8hW
 BLNzenxrbnEWORPjWOMBNhqNZSt7ZJ0YBdU4poT+QkmuAbyFzD1ZCVQVX
 SZU3l8/t+RGhZawzQodEeth8i6diBfyvIXZolb/EGA6T8UZu7OFxpdwQq
 3en8TjRLhtog3LR+mA8xXOhShJRSSzuInpwJm84a7Zzdc119j5WML9hNp
 DJ6C8yS+QzBA4mVC0dh6HiTYem+zQ9XefoTv5HkrML0xT1cxUgkmR5/ZR
 PkntUkO8VwapFYMP2y6aevMrB0rA4I+jINK+9vxp5/RDuZmn3IOgrUz52 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="344315373"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="344315373"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 21:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="700460793"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="700460793"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 29 May 2023 21:38:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 29 May 2023 21:38:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 29 May 2023 21:38:20 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 29 May 2023 21:38:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OKaOuXIYw7vXj2CeQalDE6n5E8z0uJULqeYyttytwjxN2lvTHGpKdGUCuurtwpgKfNKHVHGy9YrCq28BkOJvLSrv8ThWuTdokKtCpW4lRs1PvsFqi5jOquwyV/MgBPmUp8OFZpujLaHV6uTa3evks3jtzezBIOXj9loHrm7mfQlaXzt/Q3tOazIhXWdSpDFon9hkXDZ+4ndqc/D0Qi667gUyCOjL09D6fHdX4j3Pd/6bmza/XHLmjKpw2Xm92bVfDvs7VK6rhTwQ2GwGXpMq8t6DhK3c/lqv0jm6cu1fQ8vRVf/gSs3Hxy2EdfT48g3s2JJmzH2d1vGr90i/1hCF7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u4d2zsOYa7kxIaGXUfPmCtrz5ubRIawiLwQjHluSGpI=;
 b=PN7q5xTiaE91jRb1tmcMuPThrYTWIXI46GHP06R9SMZHkyAiYcdZW5Mn+ntKtCqq0EyVurRTRPvaAuHnr8OrTiXfk3s0K/r9kgC61MGEilbYNWa7j3JhDEROimi5Ldif/ZEDHgoFmngQ9MT5GgvuoLBlvHIjbnDlcPsJTrlkyTRvrCpN0ZUAplV/yETXc2quKk8cuy6NcLuaIVQt+hKFmupj2DledgKWsGXYo6C0DOOd7fSSrO/GM0FgGoRVacTrP6iwePIOrf2I6LnK82BvGaHSSIe3pTyu4Bgvd2yRWwaJDnbdMZduSiaak73RWprcYSHLshvliRJWJp48D78Nug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8279.namprd11.prod.outlook.com (2603:10b6:806:25c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 04:38:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d264:d3b2:c14e:3b24%3]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 04:38:18 +0000
Message-ID: <2044bf02-580b-82b0-d6fa-603ff6f8afe0@intel.com>
Date: Tue, 30 May 2023 10:08:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <cover.1682077472.git.jani.nikula@intel.com>
 <c05fce420aa338ac7aa69ecc68cb15fdfa0f2f48.1682077472.git.jani.nikula@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <c05fce420aa338ac7aa69ecc68cb15fdfa0f2f48.1682077472.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0123.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:6::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8279:EE_
X-MS-Office365-Filtering-Correlation-Id: 0638d167-f032-4081-ae24-08db60c7b001
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cu8Lr8Kq762OHVBxTp1N7z6wSZKSeLD7yYrHU6ZMj92Y+I2bYVnVib0WsR2tySAv8P8DZBt5T1ck3zvH4kjOpOcpy9avuldyBW1uDBgQOh9RzRDME7PYdCAp0F6JkwzdY8jVjaAiUCxPkz+QYH1JWKByC1Ay0l4qb5hDLKhcM5Z6rdtwoc7YpHt0O9m2B53HZZ8f+7nr9FSPwe3WkRzHl4wbKXX95ptH3T8qowJkIyjNmwdFuk/mJ+hLS7F5g8yQNnEj10idTIeND52dwA0RP8IPirPsk7og4WQlD9l4wqlSXB2tUFsGf3gfMvSgsuerAoBgbfO0fofBC3uv2O+mR7OX1iPatlFhoZMc+6kyQU1PBZnbKXb9W35ZDuJNwgt3aebdXfv+2C2JA6S3KijyC8EWpCVC3ylI2N+8t7ufd83ke4L4z3hbmczbZMXSPMOAXtcG44W8jvDdUpDyV+WTegGYNef+v2YH1miDkJ0rPuIbmb2iyPJCtDQ7brhS1B8HmTpUqQXxZ0sBluNNugyBIjb9Yq7OQIKeseXSxCupnEpGs57I+SgXicD6DFK3SOW1dOm3/eDPstkAUQkN+1TWbBi74xjhNPG2ImlOYBRuB2R9hAEBtkPb5womWm5Elahmoo15X6j8Ax9/29l2c5WbqEbYKVfDfPZHcHYFOnADXx4QApJaApJktvPkuZS2jiFy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(396003)(39860400002)(376002)(136003)(451199021)(6512007)(6506007)(31686004)(186003)(53546011)(2906002)(2616005)(30864003)(478600001)(26005)(83380400001)(8676002)(41300700001)(82960400001)(38100700002)(8936002)(6486002)(6666004)(66946007)(5660300002)(66476007)(66556008)(316002)(86362001)(36756003)(31696002)(45980500001)(43740500002)(309714004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?djgzODljeEhMZ0RhQ0l0ay80MjBETUNra1I5NnRnb202OUUzOHhuK3QrUVVt?=
 =?utf-8?B?VVNOZ0VTS0FlVGtyaUpTSmlCWDE4QkprVThUL2NOU0MxNlVVaU5kcHRIV3Bw?=
 =?utf-8?B?Z2Y5Zjlhd1NySE4rVnprcnlLaGMrdnA4NVg5WW16aFR3TUQyUFluTmo4M2J2?=
 =?utf-8?B?ZUFzSDd0VGY5dnovWmR3bDlGbkNTaWttZmdmR3UwQ3JsWXBOeHBIREowNmVm?=
 =?utf-8?B?UWpuVW9UK3V6a2NJczU0SUZFemt6RFd5dFc4YlY5TSttRlY0L0dkNHFzN1BG?=
 =?utf-8?B?VjM5U1RvcWo3US91VG1GYTRlSk0zbXdGbTRNTFhGUW56Z0pzS3JNNTR3L0ZJ?=
 =?utf-8?B?T0psa244N3F3OHdjT01HUnBaSUxlRUVJOEtGeTJYNlUvMmdaLzQxUnAvT2E5?=
 =?utf-8?B?T3NEM3lYdzFpZGZHV29DYmpubmlEaHExcFZEaS9XeUtTRnNzSFhHSmprVjVO?=
 =?utf-8?B?SWV4VzNNbkczejdXWUJ2MXRJNHBMdCsxRmRueWxVNSs2RmhyeFFPWmw1UThW?=
 =?utf-8?B?UGlDZWFVTFRrSytSYTErVGxBaWxaUjI0aVBJOTZzcU5ZenJvZW9BUytScE5z?=
 =?utf-8?B?UjJILzdoWUZwOEx5dSt1bk11bGovbys4U01XSjNPR0xoN1VlSzVHUFhUd1dv?=
 =?utf-8?B?bnMwc0F0Z1dlckxVeGpya0t6MUYrcW9taXNDSWgvRkgxYkM2Z0E1Lys3bDlt?=
 =?utf-8?B?NlRycmJORVBIb2FyNjVZNTJHS3EzOUpCeENMSjZyN1VPUjRON21SUW52cmc2?=
 =?utf-8?B?ZXVlT0szQ291cXRoZ2xPL0tVV2txcmN0aCtXSmg4OTNPbmw5b0ppazNtUWdm?=
 =?utf-8?B?bkpiek9xLyszT0JaOUwrOTlINTdsZ2VZM0hJVVJRL1E4NVJSbjk2R2U3K3dY?=
 =?utf-8?B?U2tQdnFiem1XUDFPRzBTdS9rZldyRjlMR280QXBvZDllYjIzaFlNTUVqSC9X?=
 =?utf-8?B?bzZicS9ob1I5TkVxaWZhaC9EbkNBcGljKzBjNVZlL2JDYmY5bWc4SmZOZXRj?=
 =?utf-8?B?YmRiQURnZFJFUEU5aS9veFhpNExmQTRHaEhITGt3ZHJqK0pNNTNYR2lxVHc4?=
 =?utf-8?B?WXZLaExqQTJTbUNiNjRFWHpwUHBRWnZ4UlE0MHE4UnRhbjZZbzJlL252OWI2?=
 =?utf-8?B?Z3hDMVprY2pzMTlENk5ZZGY4Nk9mV0c4MHNOSy9HMy9JUWxaa2FvL0lDTWFv?=
 =?utf-8?B?aG9DTFd0L2V1ekFsVyt6WkczT1FkOWNrQ2tFSXZ4TnBCNDhHOFR2NS80dG5L?=
 =?utf-8?B?T3k5UXo0SUg5d2NNUXdEM2dDdXJwTG03OERmaWpDRTVYTTVzM1N4OXd4THpJ?=
 =?utf-8?B?dk5yNjhmelpDTHZYQ1BOK1ZGM0NKRjZhanVYbGVzejdteVVtbE5ZVFQ1VkhS?=
 =?utf-8?B?STlOMkJZc2pnajNGWHhkNFZKcTNHWXZYRWlOdW51TXNRd0p0WkFOR3V3L0VI?=
 =?utf-8?B?c3ZhUmpsK2xXaG90dkNtVzc2YkcxcnRGSDBoeFh2Sm1xOE02eE1uQzIwUG13?=
 =?utf-8?B?c2QzeVBZY2lGMGVuSUFYTVNEdFA3NnFrRDAwbStxS3FaaG4wQXBuMFQ1L0N4?=
 =?utf-8?B?cHFsdGJ6b0RSdHFFdTVsT0YrZHFpb2hkeWNwa1Z1NThnSXVpSEpVUWhGdVFF?=
 =?utf-8?B?Vko3K3Q5L2RNelFTTks0NWY5RUpGSUNNN0NiWTF6ejd3VThaZjN1MDRqOXZL?=
 =?utf-8?B?RHUzK0MyL1lVWU5YQkFzVnYxM2tXV3dLM0tNODA4bzlpMG5HWkV4S3lsWjJi?=
 =?utf-8?B?WkZtU1ovbW9FdnNOaGNadXpONFZ4ZWllck0rV3JLR01HbldMWlQrcDVtZStq?=
 =?utf-8?B?bmhPUVVkb3k2VzgydDlzMzRaM3czVmxMMEh6c1gzY3hNZXp4Y2JhR2VBazQv?=
 =?utf-8?B?MTVVN2VsYzFjV2xZa0VEaS9EZnhmS0N5M2dKWDJpMkk0bCt4RWh1c2V5VVR6?=
 =?utf-8?B?NG44VmZSL1dWRmxLbFExS09aa29MdGRvTnVaWUpDaGFzWlA1VDBBQWFYSGdS?=
 =?utf-8?B?eGNIWHVvNHNFdytwMjExWGZOcGpMb0hDSWFaeXRTTDVmbHNyUjBMVUlJaHdF?=
 =?utf-8?B?d1RoMnBMeXBjRkI4Ymk4K1hnaDkrQ2FrTGVUQ1YyWllmUVZPalRTZjlwS282?=
 =?utf-8?B?bW81MFN3VGlLSVVUZ3YxQUdzQUdXQ3QyYnE2dHpwV0huQkRWallHdTRpZzhW?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0638d167-f032-4081-ae24-08db60c7b001
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 May 2023 04:38:17.4900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PK/bYEZMhESGxrOha/HBg7PtplObNRtLL0vIfQAg8O4lzaCzIqXS9OASO6fquuBZuyDQsgxA6gt9SME8jpmc7eZers08Vq2si3o4Lf0aqUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8279
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/display: switch the rest of
 the connectors to struct drm_edid
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

On 4/21/2023 5:17 PM, Jani Nikula wrote:
> Convert the remaining uses of struct edid based drm_get_edid(),
> drm_connector_update_edid_property() and drm_add_edid_modes() calls to
> the struct drm_edid based drm_edid_read_ddc(),
> drm_edid_connector_update() and drm_edid_connector_add_modes().
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_connector.c    | 18 ++---
>   .../gpu/drm/i915/display/intel_connector.h    |  4 +-
>   drivers/gpu/drm/i915/display/intel_crt.c      | 34 +++++----
>   drivers/gpu/drm/i915/display/intel_dp_mst.c   | 10 ++-
>   drivers/gpu/drm/i915/display/intel_sdvo.c     | 73 ++++++++++---------
>   5 files changed, 74 insertions(+), 65 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
> index 257afac34839..00ea71b03ec7 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.c
> +++ b/drivers/gpu/drm/i915/display/intel_connector.c
> @@ -176,15 +176,15 @@ enum pipe intel_connector_get_pipe(struct intel_connector *connector)
>   /**
>    * intel_connector_update_modes - update connector from edid
>    * @connector: DRM connector device to use
> - * @edid: previously read EDID information
> + * @drm_edid: previously read EDID information
>    */
>   int intel_connector_update_modes(struct drm_connector *connector,
> -				struct edid *edid)
> +				 const struct drm_edid *drm_edid)
>   {
>   	int ret;
>   
> -	drm_connector_update_edid_property(connector, edid);
> -	ret = drm_add_edid_modes(connector, edid);
> +	drm_edid_connector_update(connector, drm_edid);
> +	ret = drm_edid_connector_add_modes(connector);
>   
>   	return ret;
>   }
> @@ -199,15 +199,15 @@ int intel_connector_update_modes(struct drm_connector *connector,
>   int intel_ddc_get_modes(struct drm_connector *connector,
>   			struct i2c_adapter *adapter)
>   {
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   	int ret;
>   
> -	edid = drm_get_edid(connector, adapter);
> -	if (!edid)
> +	drm_edid = drm_edid_read_ddc(connector, adapter);
> +	if (!drm_edid)
>   		return 0;
>   
> -	ret = intel_connector_update_modes(connector, edid);
> -	kfree(edid);
> +	ret = intel_connector_update_modes(connector, drm_edid);
> +	drm_edid_free(drm_edid);
>   
>   	return ret;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_connector.h b/drivers/gpu/drm/i915/display/intel_connector.h
> index 9d2bc261b204..aaf7281462dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_connector.h
> +++ b/drivers/gpu/drm/i915/display/intel_connector.h
> @@ -9,7 +9,7 @@
>   #include <linux/types.h>
>   
>   struct drm_connector;
> -struct edid;
> +struct drm_edid;
>   struct i2c_adapter;
>   struct intel_connector;
>   struct intel_encoder;
> @@ -25,7 +25,7 @@ void intel_connector_attach_encoder(struct intel_connector *connector,
>   bool intel_connector_get_hw_state(struct intel_connector *connector);
>   enum pipe intel_connector_get_pipe(struct intel_connector *connector);
>   int intel_connector_update_modes(struct drm_connector *connector,
> -				 struct edid *edid);
> +				 const struct drm_edid *drm_edid);
>   int intel_ddc_get_modes(struct drm_connector *c, struct i2c_adapter *adapter);
>   void intel_attach_force_audio_property(struct drm_connector *connector);
>   void intel_attach_broadcast_rgb_property(struct drm_connector *connector);
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 13519f78cf9f..c198145effd1 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -607,37 +607,38 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
>   	return ret;
>   }
>   
> -static struct edid *intel_crt_get_edid(struct drm_connector *connector,
> -				struct i2c_adapter *i2c)
> +static const struct drm_edid *intel_crt_get_edid(struct drm_connector *connector,
> +						 struct i2c_adapter *i2c)
>   {
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   
> -	edid = drm_get_edid(connector, i2c);
> +	drm_edid = drm_edid_read_ddc(connector, i2c);
>   
> -	if (!edid && !intel_gmbus_is_forced_bit(i2c)) {
> +	if (!drm_edid && !intel_gmbus_is_forced_bit(i2c)) {
>   		drm_dbg_kms(connector->dev,
>   			    "CRT GMBUS EDID read failed, retry using GPIO bit-banging\n");
>   		intel_gmbus_force_bit(i2c, true);
> -		edid = drm_get_edid(connector, i2c);
> +		drm_edid = drm_edid_read_ddc(connector, i2c);
>   		intel_gmbus_force_bit(i2c, false);
>   	}
>   
> -	return edid;
> +	return drm_edid;
>   }
>   
>   /* local version of intel_ddc_get_modes() to use intel_crt_get_edid() */
>   static int intel_crt_ddc_get_modes(struct drm_connector *connector,
>   				struct i2c_adapter *adapter)
>   {
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   	int ret;
>   
> -	edid = intel_crt_get_edid(connector, adapter);
> -	if (!edid)
> +	drm_edid = intel_crt_get_edid(connector, adapter);
> +	if (!drm_edid)
>   		return 0;
>   
> -	ret = intel_connector_update_modes(connector, edid);
> -	kfree(edid);
> +	ret = intel_connector_update_modes(connector, drm_edid);
> +
> +	drm_edid_free(drm_edid);
>   
>   	return ret;
>   }
> @@ -646,14 +647,15 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
>   {
>   	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
>   	struct drm_i915_private *dev_priv = to_i915(crt->base.base.dev);
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   	struct i2c_adapter *i2c;
>   	bool ret = false;
>   
>   	i2c = intel_gmbus_get_adapter(dev_priv, dev_priv->display.vbt.crt_ddc_pin);
> -	edid = intel_crt_get_edid(connector, i2c);
> +	drm_edid = intel_crt_get_edid(connector, i2c);
>   
> -	if (edid) {
> +	if (drm_edid) {
> +		const struct edid *edid = drm_edid_raw(drm_edid);
>   		bool is_digital = edid->input & DRM_EDID_INPUT_DIGITAL;
>   
>   		/*
> @@ -674,7 +676,7 @@ static bool intel_crt_detect_ddc(struct drm_connector *connector)
>   			    "CRT not detected via DDC:0x50 [no valid EDID found]\n");
>   	}
>   
> -	kfree(edid);
> +	drm_edid_free(drm_edid);
>   
>   	return ret;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 506118a13866..deb926c2c1c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -837,15 +837,17 @@ static int intel_dp_mst_get_ddc_modes(struct drm_connector *connector)
>   {
>   	struct intel_connector *intel_connector = to_intel_connector(connector);
>   	struct intel_dp *intel_dp = intel_connector->mst_port;
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   	int ret;
>   
>   	if (drm_connector_is_unregistered(connector))
>   		return intel_connector_update_modes(connector, NULL);
>   
> -	edid = drm_dp_mst_get_edid(connector, &intel_dp->mst_mgr, intel_connector->port);
> -	ret = intel_connector_update_modes(connector, edid);
> -	kfree(edid);
> +	drm_edid = drm_dp_mst_edid_read(connector, &intel_dp->mst_mgr, intel_connector->port);
> +
> +	ret = intel_connector_update_modes(connector, drm_edid);
> +
> +	drm_edid_free(drm_edid);
>   
>   	return ret;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
> index 0f0c1733cd0d..cdd8adbd5432 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2035,22 +2035,23 @@ intel_sdvo_multifunc_encoder(struct intel_sdvo *intel_sdvo)
>   	return hweight16(intel_sdvo->caps.output_flags) > 1;
>   }
>   
> -static struct edid *
> +static const struct drm_edid *
>   intel_sdvo_get_edid(struct drm_connector *connector)
>   {
>   	struct intel_sdvo *sdvo = intel_attached_sdvo(to_intel_connector(connector));
> -	return drm_get_edid(connector, &sdvo->ddc);
> +	return drm_edid_read_ddc(connector, &sdvo->ddc);
>   }
>   
>   /* Mac mini hack -- use the same DDC as the analog connector */
> -static struct edid *
> +static const struct drm_edid *
>   intel_sdvo_get_analog_edid(struct drm_connector *connector)
>   {
> -	struct drm_i915_private *dev_priv = to_i915(connector->dev);
> +	struct drm_i915_private *i915 = to_i915(connector->dev);
> +	struct i2c_adapter *i2c;
>   
> -	return drm_get_edid(connector,
> -			    intel_gmbus_get_adapter(dev_priv,
> -						    dev_priv->display.vbt.crt_ddc_pin));
> +	i2c = intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
> +
> +	return drm_edid_read_ddc(connector, i2c);
>   }
>   
>   static enum drm_connector_status
> @@ -2058,11 +2059,11 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   {
>   	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
>   	enum drm_connector_status status;
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   
> -	edid = intel_sdvo_get_edid(connector);
> +	drm_edid = intel_sdvo_get_edid(connector);
>   
> -	if (edid == NULL && intel_sdvo_multifunc_encoder(intel_sdvo)) {
> +	if (!drm_edid && intel_sdvo_multifunc_encoder(intel_sdvo)) {
>   		u8 ddc, saved_ddc = intel_sdvo->ddc_bus;
>   
>   		/*
> @@ -2071,15 +2072,15 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   		 */
>   		for (ddc = intel_sdvo->ddc_bus >> 1; ddc > 1; ddc >>= 1) {
>   			intel_sdvo->ddc_bus = ddc;
> -			edid = intel_sdvo_get_edid(connector);
> -			if (edid)
> +			drm_edid = intel_sdvo_get_edid(connector);
> +			if (drm_edid)
>   				break;
>   		}
>   		/*
>   		 * If we found the EDID on the other bus,
>   		 * assume that is the correct DDC bus.
>   		 */
> -		if (edid == NULL)
> +		if (!drm_edid)
>   			intel_sdvo->ddc_bus = saved_ddc;
>   	}
>   
> @@ -2087,17 +2088,19 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   	 * When there is no edid and no monitor is connected with VGA
>   	 * port, try to use the CRT ddc to read the EDID for DVI-connector.
>   	 */
> -	if (edid == NULL)
> -		edid = intel_sdvo_get_analog_edid(connector);
> +	if (!drm_edid)
> +		drm_edid = intel_sdvo_get_analog_edid(connector);
>   
>   	status = connector_status_unknown;
> -	if (edid != NULL) {
> +	if (drm_edid) {
> +		const struct edid *edid = drm_edid_raw(drm_edid);
> +
>   		/* DDC bus is shared, match EDID to connector type */
>   		if (edid->input & DRM_EDID_INPUT_DIGITAL)
>   			status = connector_status_connected;
>   		else
>   			status = connector_status_disconnected;
> -		kfree(edid);
> +		drm_edid_free(drm_edid);
>   	}
>   
>   	return status;
> @@ -2105,8 +2108,9 @@ intel_sdvo_tmds_sink_detect(struct drm_connector *connector)
>   
>   static bool
>   intel_sdvo_connector_matches_edid(struct intel_sdvo_connector *sdvo,
> -				  struct edid *edid)
> +				  const struct drm_edid *drm_edid)
>   {
> +	const struct edid *edid = drm_edid_raw(drm_edid);
>   	bool monitor_is_digital = !!(edid->input & DRM_EDID_INPUT_DIGITAL);
>   	bool connector_is_digital = !!IS_DIGITAL(sdvo);
>   
> @@ -2149,22 +2153,23 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
>   	else if (IS_TMDS(intel_sdvo_connector))
>   		ret = intel_sdvo_tmds_sink_detect(connector);
>   	else {
> -		struct edid *edid;
> +		const struct drm_edid *drm_edid;
>   
>   		/* if we have an edid check it matches the connection */
> -		edid = intel_sdvo_get_edid(connector);
> -		if (edid == NULL)
> -			edid = intel_sdvo_get_analog_edid(connector);
> -		if (edid != NULL) {
> +		drm_edid = intel_sdvo_get_edid(connector);
> +		if (!drm_edid)
> +			drm_edid = intel_sdvo_get_analog_edid(connector);
> +		if (drm_edid) {
>   			if (intel_sdvo_connector_matches_edid(intel_sdvo_connector,
> -							      edid))
> +							      drm_edid))
>   				ret = connector_status_connected;
>   			else
>   				ret = connector_status_disconnected;
>   
> -			kfree(edid);
> -		} else
> +			drm_edid_free(drm_edid);
> +		} else {
>   			ret = connector_status_connected;
> +		}
>   	}
>   
>   	return ret;
> @@ -2173,13 +2178,13 @@ intel_sdvo_detect(struct drm_connector *connector, bool force)
>   static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
>   {
>   	int num_modes = 0;
> -	struct edid *edid;
> +	const struct drm_edid *drm_edid;
>   
>   	DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
>   		      connector->base.id, connector->name);
>   
>   	/* set the bus switch and get the modes */
> -	edid = intel_sdvo_get_edid(connector);
> +	drm_edid = intel_sdvo_get_edid(connector);
>   
>   	/*
>   	 * Mac mini hack.  On this device, the DVI-I connector shares one DDC
> @@ -2187,17 +2192,17 @@ static int intel_sdvo_get_ddc_modes(struct drm_connector *connector)
>   	 * DDC fails, check to see if the analog output is disconnected, in
>   	 * which case we'll look there for the digital DDC data.
>   	 */
> -	if (!edid)
> -		edid = intel_sdvo_get_analog_edid(connector);
> +	if (!drm_edid)
> +		drm_edid = intel_sdvo_get_analog_edid(connector);
>   
> -	if (!edid)
> +	if (!drm_edid)
>   		return 0;
>   
>   	if (intel_sdvo_connector_matches_edid(to_intel_sdvo_connector(connector),
> -					      edid))
> -		num_modes += intel_connector_update_modes(connector, edid);
> +					      drm_edid))
> +		num_modes += intel_connector_update_modes(connector, drm_edid);
>   
> -	kfree(edid);
> +	drm_edid_free(drm_edid);
>   
>   	return num_modes;
>   }
