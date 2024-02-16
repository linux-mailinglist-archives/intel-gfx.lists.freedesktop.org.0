Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B5E8573F8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 04:18:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22A6F10EA8E;
	Fri, 16 Feb 2024 03:18:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IERk+YCf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16E7010EA8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 03:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708053518; x=1739589518;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ueHqcVJrixxliI3BfHsQJzod3mfii+OxDX6gpqdDPo=;
 b=IERk+YCfPAeKusOTd0qeObUoQVVgIwxYIwEaXAGs2IehRqGJYHkAWuLq
 z0JEeKzWaPx8bATyeBGMRKZQK7tCIQ/3YCRNZm+U8tRzbzgrV8NFmQJ8x
 XSrmJY/XlVVGBHrCS1Ontz18bVxp9ygnaZVNMWbFezCFmcGd3ZhOnoqqk
 HaXTtGPES0+52bDdXtoo+lE+3kdDbmEFcgbx9E34ZXXKqD355SFO3+X2F
 9KBMQ8z7jBpn3wI5sHp+vDBCXRJylxeCE+TIrag+15YD1/fRowC8EiNBV
 rjzjqCvwz82GNKF4ZibVetVETykJXSn8LBM7UcWDHnQYVZ6AA6Miz7G+2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="13568549"
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; d="scan'208";a="13568549"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 19:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; 
   d="scan'208";a="3710855"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2024 19:18:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 19:18:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 19:18:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 19:18:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 15 Feb 2024 19:18:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0ggV01+HEDvYFGaxtHvxuGcDZT+zSfVxyeDuUhH6U5SqKmrob+a4RvrIMmXhZKFSdQuLMUaC78CTZLU9JKEplzQEdAEzz9KAmVucKGM/Ys8e9PNr48XF8gyARbCH4j6aFryNoGpjlvO1/FB9VB5wZGr6JdUc7UrlqhCoVMPpejpIrF16fOOMOUrsAoluqX761gwJ9uNVqk0j8f5bHDIWcMt1kZ6pnpQzynSnAA9qxaNkXmFEAUh2x3S0t/fVErrT+T59P7MKdopXrGjfDZk2wdOb+tbyDGxXswJXFJFaFAxBHrJTKz7qw3xp/TNkkypFZ/6kfmBbFUj4PfaW3OTvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yeAMXN8NECceo1FGhX6jELBdW4vx/0GLOYomtSQ9Sqk=;
 b=mB0j0AfROFCvqGny92cLNMCirIt4cqJPKAdvopKNQPwKXr7MN4r3CduW7FDEbribcsx6qPV6lagPOjmx2Y8TCfCMl1PQaILJAdRCWhfY2Lp836Qh1zFbBjA3PivqEtjqaE6yhoCA0HDvKH3KTi2RaJCG+oOnkcIyx/XxsQObVXsFA47MNtfdqnsB93dTJgllju7LHKLP0wtMPdhdBLTiLmfD8+FnclQ7DGyXVLUCAc0Lk+hsShrv5pz01+m4vdhHkvYfVrk3PDobq2G9PcVQraeZ7xik9PKAg54NApmDWBY0rmQGx9SQ8IdFaMRaUetwRz/y1KCZTg0g6GA/fR8MvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8719.namprd11.prod.outlook.com (2603:10b6:8:1a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Fri, 16 Feb
 2024 03:18:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 03:18:34 +0000
Message-ID: <7661361d-e2f3-4079-8274-a7df4fa962ce@intel.com>
Date: Fri, 16 Feb 2024 08:48:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/13] drm/i915/hdcp: Don't enable HDCP1.4 directly from
 check_link
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <uma.shankar@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
 <20240215105919.1439549-12-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240215105919.1439549-12-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8719:EE_
X-MS-Office365-Filtering-Correlation-Id: f9b77c4b-ff10-410f-c43d-08dc2e9df582
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VrJTFba/dXG0IuxC4Ji0WOrwR4UtCnYC35RgaIcIsdOWYjao8YcSSgAj0kOMrmx6F92e6ZHkQM/5+Q67/QU7fmvOg9JrQrUyrREDGTfcj/HL71ZVfqj/2mcTPrCc65WQi89QHFxlszSzMltu5JamBcFdCg5zeIqJ0r+Kw+54pmNk4ajLUPkzQX8D1p9NurGPDtSmXxVrg98m/vQ++AfzfbKjnxmdOC1HUOt9moSf8VBcJlkZSbU43Dy9ZlOavlv0YfnF0K/ouG/0wpxbv9gLqn3dqNxrzGIbYWoTiarxVPEO0zhjIdFnBwxVMOv3MNBD9hgbW+L3X68pQyAK7ztEp9TnbzIf7sNZ0p3Sx34ggZW7yjwkosD96bC8H8p4cGaHQCuC66/BxjUt0VSzfkrJ3OEIqKVCnWJoNGtzwcr/HjsF+9Vk+SCt4E/vTJ7vvSfH3rZqL3bsBKUHiJBG+D+HeaUAHKNqIlDynvSXULhbPQzC/j1dMA4dCIwptYZ++alKJhX1TA1qgd06iF4FD1fYaBBJbLlu9Av9DlOXnySX618=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(366004)(346002)(396003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(31686004)(478600001)(6512007)(2616005)(53546011)(107886003)(41300700001)(4326008)(8936002)(2906002)(66556008)(5660300002)(66476007)(66946007)(8676002)(6486002)(316002)(6506007)(26005)(38100700002)(83380400001)(31696002)(36756003)(86362001)(82960400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1EwckZlbzRzMTFtVDZXSGViWXpHSnUyT2hMVG9CWVQxVXdxZ29YRzkxSjdU?=
 =?utf-8?B?RXdXL3VFNDBsWk52YkplcXQwbXZ2SndrMloxVFpOcFFtOGdMV0UyUnltUy9v?=
 =?utf-8?B?aVRnWG94MHVEQ1NEYkUxWGZSK1pXcG5vdXU3aFdvbUF2ZEw0MGVEdGROZXRw?=
 =?utf-8?B?ell3citBRHd4clBMM1lORjZPZ21aZHd5VTBTclMyNFZjRkdvc25nR3pvVXFL?=
 =?utf-8?B?d2hzTHk0aUxZVXVaeC90OXRxZkMvYnFXV3NiSHJUczFrNitaeUhGV0hQTEpj?=
 =?utf-8?B?d0FFblZ5QjJ6Rm11UnJ2TVpqSFRuY3grWGNoWjI4ZGpyVDhkN0UwV04wd2VD?=
 =?utf-8?B?am9LMnNFUk5ya2ZrQXNUZ2xqL1RXUWo4ZDJEZUhDQ0JvSmhIaWs2Tk9mZmxK?=
 =?utf-8?B?M0NjNUxUSGJVK0ZodUlLMjhCQy9YSjlydWtLQVYrdFVvRldCajU3eG1CTWtS?=
 =?utf-8?B?OXhaOUw3RC9vRFdFazc2WFNvbjZGWnBLaWY5cU5RVlJQTWVWeUJRSmI4SFd1?=
 =?utf-8?B?aVd5bmZPTEJwelVaaHRJOTdPcFcxczUrSW5GVmZQckc2WTFzNVMyc2dQM3dh?=
 =?utf-8?B?eUg4dEc5MHBRRTIra1lobXV4eTNiVytNMnZxMjNJUzRvS3pDdS9XQXhqK0l6?=
 =?utf-8?B?bmtFeDJCNFo3d3dTNjBCSmtXVkFOZVdITnNmSkxnNTg0akxiWFZrZXFRR05w?=
 =?utf-8?B?bC9iYWp1RWVnSDA4R2F5dXJYaG5QTCt6TnNZaWhNa1NnRWlxM0xWNUNYYWFi?=
 =?utf-8?B?R3VuQm1HMVFNdUIwNVpSUWpTZUUzb2RRZGtTYVBkTkhlYzVyV203WXNGTzFj?=
 =?utf-8?B?MXNNSFNaM2d2Sk5SZStMUXJpRnV5SGJYUGh2aGl5RkFncXhUMG15VXdnVWpy?=
 =?utf-8?B?c2h1L3ZUQmtuWW9TNndlajhBY3NZZ2d3VXJtRy93c3lXejFNWDR6aWR5NHNa?=
 =?utf-8?B?YWJCc0hrOWtMK0U2OUFiZzNiNmlVc1R2bGdEMDRidVllNll3NitIU0RRUURP?=
 =?utf-8?B?ZW1xaG5YOHVYWEFZVGI1RzZzb2l5OUpNMVQvYWRrOUw0T1FuUkg4bVJxK053?=
 =?utf-8?B?emVXbnFubWxCSWhHMld4K0JLaWRHdUVIVmV0SUhGdE11MldUU3JWei9Od1dp?=
 =?utf-8?B?U2tkZEM0TUczSFNIcHB0Vi9BNmxaSnZwT0o3WUliYndHY1AvcE5mUnQ3Q3NC?=
 =?utf-8?B?OE9hS0d1dldRZXMwaDEwNyt4cnZCVmlQdC91OHJiNHRWMCtyVUxISkV5dlFU?=
 =?utf-8?B?a2JPSnQ1eGVwd29xY2haZ0dYNDU1Q20rN3BOZ2xmMzNSeVBlOEt6TGVqTjdw?=
 =?utf-8?B?UE1kZGtCUFJaQ0l2a3UvZ0Y1Wm5SRXV5TmNpUUR3eGZ2TDZJcFMwMzNGTlNW?=
 =?utf-8?B?NHZQaldMSzBuZ1dQTEJxL1N2eWVVUUkxZEhlYk0yblJheUdWUkQ2Z2Rpa0k2?=
 =?utf-8?B?ZjZmWGR4emVTVWs3NDhUa0h5cFd0d0VxeWZaZXFzSHIvOStuVk1LSllZNm91?=
 =?utf-8?B?bm1oUk1Vak02MTZxYkZkN0dCY0JRUkR2cmxsWHlkcWRzRXA1VnkycG84cnNN?=
 =?utf-8?B?bGlMR3dlS255V1EyUGo0dnFWMEVlYVJHTElFUkx4b3Bzbk1BeklyMEdPNFJ4?=
 =?utf-8?B?MkhlODM5MjI2WnFjd3AwQVFldy9uZ0puWTRwWnhEV0tZQmFOQXpCdUdMaFR4?=
 =?utf-8?B?SWJwTkFnZC9ROXBIR0c3Q09BdjdxTUs0ckRLQlV4NkZ4aVJLakYveEtZbFdG?=
 =?utf-8?B?eTZpdm9SUDdwM1dZOGJwWGYxVmlxU2JsY0oyV2duRWF1RGQ5OTdpc3MzZVJi?=
 =?utf-8?B?VmtobEIxd3JhbDhkN2ZiT3N4dE5uajl0SFlodEhXVW9qcWVpWmx4VnhwYjhQ?=
 =?utf-8?B?Q2VER1RKZExraE4rZmRRU29RdlFhcGNlQnZ3RTMxMjBJTnVUK3NLbHB3cUl0?=
 =?utf-8?B?dWxvZDBKcjZLSE1sK3RCSWk1Y004bVlLS1c1ZXRFZHAzNXpYSTRmVFFCMHJ1?=
 =?utf-8?B?MHlvSXZGcnV0OUtrbDNQeWxRSDhwa2VqY0NFYzZPQ2RLRC8rRllidTNTOC9M?=
 =?utf-8?B?NW1qT1A4eGM5OTlDQzVVbWtnQ2lIYkEzU3YxK1h6WTFnL0JrR2ZPYzBiMVY4?=
 =?utf-8?B?RGNIRzdybWErVFJKdS9ZR2NNUHgyOUlmNUZhNTJYdkw3V005aFpNM1lXQTBl?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b77c4b-ff10-410f-c43d-08dc2e9df582
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 03:18:34.8518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xcmdWkMIwG8hlsou4nBnSpemfRdMFCN+vW/qIWw+tvjoVtotnXgAOAQRGYDmq39Y046EyPGarZ4QZS+idR/TsCQ31AKRyVPxlcwXxQPTHpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8719
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


On 2/15/2024 4:29 PM, Suraj Kandpal wrote:
> Whenever LIC fails instead of moving from ENABLED to DESIRED
> CP property we directly enable HDCP1.4 without informing the userspace
> of this failure in link integrity check.
> Now we will just update the value to DESIRED send the event to
> userspace and then continue with the normal flow of HDCP enablement.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 3bd783b8deac..ad05ab899706 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1088,15 +1088,9 @@ static int intel_hdcp_check_link(struct intel_connector *connector)
>   		goto out;
>   	}
>   
> -	ret = intel_hdcp1_enable(connector);
> -	if (ret) {
> -		drm_err(&i915->drm, "Failed to enable hdcp (%d)\n", ret);
> -		intel_hdcp_update_value(connector,
> -					DRM_MODE_CONTENT_PROTECTION_DESIRED,
> -					true);
> -		goto out;
> -	}
> -
> +	intel_hdcp_update_value(connector,
> +				DRM_MODE_CONTENT_PROTECTION_DESIRED,
> +				true);
>   out:
>   	mutex_unlock(&dig_port->hdcp_mutex);
>   	mutex_unlock(&hdcp->mutex);
