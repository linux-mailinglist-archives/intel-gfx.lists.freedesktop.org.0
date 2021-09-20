Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DED41223C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 20:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD1A6E7D7;
	Mon, 20 Sep 2021 18:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA156E5CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Sep 2021 18:12:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10113"; a="210278691"
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="210278691"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 11:12:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,309,1624345200"; d="scan'208";a="532380171"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2021 11:12:13 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 11:12:13 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 20 Sep 2021 11:12:12 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 20 Sep 2021 11:12:12 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 20 Sep 2021 11:12:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJ565OSqCZQbCPSWke1r2mCx+WApdZTcIXppzDOJXw0oOlTSMEnOjLO3ZtObhMjerebtXXAv31Yk2gsllJY0jhCVogOb2ng1LUefjbSKNbTyoLI61tDVuN+e95o0QBPWPWI5kju7cxXxF4sSS3EJVtAqLdM6ECWbdaOmHpW6waV4l9LdwEguO+kMO9o+31AioupmSClJ2nGmOjcyTeHf10krubDxS2uCvsopQKjiwkc/pseTk8YugL1hv/AyqNga5mn8bqSBpV9JkmOcC6gjvoHN1QC97+ijneIMU1eoQ0wKmKYmTa030plax+GuWYdUEh6XvPaRwuU4ZAqtwVmNRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=kNJd5ayYZS0cwelz75arWrjocxUw/o2cX9IbfEEeTaM=;
 b=BZc6IJ4FEKpjyWVF8lA8wKVFJHFZ1g7NPf3Z1MINhVWAQGQ5g8YplfMjCcbv47Eaon+20M5qozEA8Duhr51Xe8U6TUQ0rCkkr14rN+GgKrowKd2/1xhzD0kBxivq1F22zMXzuXmr/2+pRjrqLVV0THv+doYowo37M98Y5G1i+3gZIWDHtQ1QO5Dv/KeeoZWaut05vj+5rYPSAwy/FjvXNpkKLlnoqqAt/PXGzNFNgPgQBtlIprkO1LeiHhVjBrkcta8ONx3d5s0gOdjPCSkTwXwLozmTvjtsXCt2bbiHwTMrBimQ4r6sLIEGYmD72cbDd6SxFMZAHSQO4hkVWS9Bgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kNJd5ayYZS0cwelz75arWrjocxUw/o2cX9IbfEEeTaM=;
 b=q6zhh4L4CvQb08UQN2nw3QkGrMS/wKsorE9JRC9qS+el/vl4JJ230C57Id+G/d0Xc6uiKmMzbeukTnZvdOj9GUjUATYubuWT8CrWBMvck8DKn2C9Cr2Bohpbu+FY9zNlBoAAhyZS7GyGRXAtgQxqaxikcgZG6G22TWO55R97bWs=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5331.namprd11.prod.outlook.com (2603:10b6:610:be::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Mon, 20 Sep
 2021 18:12:10 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::c3e:dff7:364c:ba7%2]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 18:12:10 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210917205241.231527-1-jose.souza@intel.com>
 <20210917205241.231527-3-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <d3fa328b-8600-0185-49dd-b0da87ac1b93@intel.com>
Date: Mon, 20 Sep 2021 21:12:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210917205241.231527-3-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB8PR06CA0061.eurprd06.prod.outlook.com
 (2603:10a6:10:120::35) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.208] (134.134.137.88) by
 DB8PR06CA0061.eurprd06.prod.outlook.com (2603:10a6:10:120::35) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.16 via Frontend Transport; Mon, 20 Sep 2021 18:12:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18e64b42-1c0d-489d-0286-08d97c6229db
X-MS-TrafficTypeDiagnostic: CH0PR11MB5331:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB53314D74E56857F7FF8589DEB8A09@CH0PR11MB5331.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:428;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1ksUibh5nN6sBbB4ekXMkoRlqklJkyheQhohKuWUuk24WuYnPwxU73VMJ/b3n2Tbzili3/xd0Aei4aZYSQsp9+9u474prBbPLogWwsP0Bf4eV+Fsek+qQ34b5HbDdEukMqlj+G+87sXqexx4T+WMTwzBxdVffaiDQKpBOfvYXP1pPEeuJLkQV/9nDozAKYFgTyYfvz3iBH0jdLe28FGsogdy61ytmTdgAGm0wzcvG4yApKH63yjil2SiULX6PYaYOSa6srscHw6vEfWpEgE3JJ/ApBzacDSq2cFviV7upi8uV/kLzFmjrVr37S0PDT9FuS+sS0TpSQMOnUqyB4K4Dw6+k0xTMjg29E0jPRGbDr6Q7x1kYfqujBmTUXWqabwtP26ijtw2Kcwyu1TO1biTKsJtK9hV9+gEZ/TyUInmarqCTf+sKDb7AuI4tF43CcD9s+y+u4rBwwhJrJxUE3dDwYfCYjMLVOeLqQHVdghuLYWOm3uUayFwFAh+UisVhYUC6/40tE4ryvhQHT1VUetVE0OS7Pvkblu7Oynls7HEYvEgiUdNM2pYZYHKjVtnzpl0RWQTmpp9ktN70SDCehBhvsGUI9xFcFg0UXL36Icmzl+kTAWE+r6+APeBt2vJAMTdMgdLG6QODWU9LiUxGzLBIuybRzKb1SpW5HkhqvapjqR3iUko8h/wjPFJPWK7yEqx0vtcSHg/crqjZ+fdxg62rjHQyrIjHlm1zdlFmGxUaONpVtoyJf24fcX+TEeTvGpk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(26005)(2906002)(186003)(956004)(16576012)(6486002)(86362001)(53546011)(5660300002)(6666004)(508600001)(38100700002)(316002)(83380400001)(2616005)(66556008)(66946007)(66476007)(31696002)(8676002)(8936002)(36756003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHJxRDMvbWxlSzI1S21YeE9rVkppMGpLNHVDQWtpa3FYSzVmb0tkTWxEZGY3?=
 =?utf-8?B?M1dvZlZlVFNheWwwclZJMkxLemY5OTBHQ0UrL0dPQjBZVU1MT2tuUHBOS2I2?=
 =?utf-8?B?Z1ZlTTVrT3A5V2tHc09nZkZQWFpObkwrdHFnQnlQU2NKWU54TTgzTGJCVFlR?=
 =?utf-8?B?SmJKd1hhcDh5N1ZDM1hGV01NS3hQbEU3ODlQMzdmUFkyNjBvdHRxU3NKcXpE?=
 =?utf-8?B?cHNhTWhGaEdpcExVRHF0S0VsWklBd3pmbStjV0RzemtMbXZjaXZIM0ZQQ0NX?=
 =?utf-8?B?N2hsZ3hNaGx0Q1NvNjdTSEovQStReERkdy9VZHZYNDgyT1NPRnNwcTFjWUlx?=
 =?utf-8?B?TVcvKzN0L0gzK290VldUVjBSeDFrbW9zczlsRHFQMFB2R1dLMVZndVI1ZW5T?=
 =?utf-8?B?V091eStiZUZ2VGxWWUYxYUl4QlQyc3NEK1kwQnFQZUxod2hiNWJZYkVIVGZS?=
 =?utf-8?B?cEl6aWVISStSYUJuaG1IbVpsdVhpMTFyNk4yZjcyVis4WXhNYXN1d2Y2N3hj?=
 =?utf-8?B?UkdicEF5M3prTFBUOEx2dlBYUVc1emxpd3g1eHZKQXdRZFFzcXBMUG12RlZp?=
 =?utf-8?B?SE1DRVRJZ3pWL3pMbnBMODBOditHTjk1dXc0VjZMYlhaaTJEL0NYQ00wMWZu?=
 =?utf-8?B?VkZkNG5EMG9iZVdrQ0FvdDhsdm92dkczYklMQ2tab2liRE11QVo2c2k1VWgy?=
 =?utf-8?B?MHdCcE1vS2ZCZ0dmbjlicU91WkliQ0ZGNm1QMWRMZkQrNWJWNnBFUWR1aE9a?=
 =?utf-8?B?VmhvOThRSEFyK3N2c2tDeGNJSGxlRjduZGJueFdtcUFEUmhHK3J1QTV3dGlK?=
 =?utf-8?B?V1JxajVzUEdUYUZ1N2x2NHhMV2pLSER0bUlSeGdMWnpJVTk0Y2l2SVhXVjdR?=
 =?utf-8?B?NXg5amo1VU5sZFpsVTZmWGtKZlVLaXRsQ2o5N243Qnk5RWVhQkYxclhmUlN3?=
 =?utf-8?B?OWErekZpcllXcmRId08wVGF0Y3Q1SGswN3huOEZlMzBtRkJwY090ckh5TUMz?=
 =?utf-8?B?Nk44TndtL3d3b2NvNHhHd3h1cXFVcVNMaWVRejBwQ1REMysvZDkxMmFxbldL?=
 =?utf-8?B?YnI4S1ZWWW8xVzRzeWZ6NXI0UEQ5MWtSVjQxcEU1WFFyazZwa2tOUWd4cVhT?=
 =?utf-8?B?dlJScWpybTVHNmRncG1Ea0FGUUgzQk56RlVnN1VnU3lOb3J2Y1h1dytXR01O?=
 =?utf-8?B?VWNPbWs4NXhxZmhiRzNHUHNaU1pqN3piSjJBMGxLQldQMUlkZTZpemdreDhY?=
 =?utf-8?B?ekVBK0FBYm83dXFacm92dDNRQzhTYi95b3ZKZ0p0ZHVKMlEyV3FDYVBKVHV6?=
 =?utf-8?B?cVNnSGtEZXNaWmEwWnhqRWxycTZkL1dLTHdHTnd2eWtyVFcyeWhyQnNBKzlP?=
 =?utf-8?B?aHRHQTM0VmJiaHFiNWNxOFlISzFiMUc4WXFIcmk2blI0NXV0Yi9CV2dLK2hE?=
 =?utf-8?B?MEFKUmtNQzNVQ3dCbkFLL1V6cWJGS0V1RW81WTRQYVZaVFJtdnR4SEZmTnor?=
 =?utf-8?B?VWJZOGtOMDVKbDhrNWN1cXQ4V2FwRkV3cmxPSjFXcjE4dldnbm9KaHRzUDNC?=
 =?utf-8?B?azZmMU90MG1UQ2t6SFA0djBBb1NSSUJOZ1VMVXVCODB6MytBTWlhSiswbkRE?=
 =?utf-8?B?ZHlnUHBHLzRaYjlLeDFvQ2s2RjFXRG04ZWdPa0tPUi9WQlAxVUZ1WGczVUp2?=
 =?utf-8?B?aDNKRTQxdDQvYjZhNTY0QUthcy9wNTU2Tmwrdi9tcm5tWnF1eGpMZUZBaDBx?=
 =?utf-8?Q?AYp2reJdDHqvdoU1281pKwQAiwjGIkM/IuHFhYw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e64b42-1c0d-489d-0286-08d97c6229db
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 18:12:10.5302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yVnCvAjWpu8/nCI8li7xaC5xfIcybQNnozb8pH5sa5GiozcBCPPY/akafrnoWkDPEXwSW+OckJv1GNihCkpRrx3kW3EA2CbitzpmEvJmZnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display: Match PSR2 selective
 fetch sequences with specification
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

Looks good to me.
Tested-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 9/17/21 11:52 PM, José Roberto de Souza wrote:
> We were not completely following the selective fetch programming
> sequence, here some things we were doing wrong:
> - not programming plane selective fetch a PSR2_MAN_TRK_CTL registers
> when doing a modeset
> - programming PSR2_MAN_TRK_CTL out of vblank
> 
> With this changes the last remainig underrun found in Alderlake-P is
> fixed.
> 
> Bspec: 55229
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c   |  4 ++-
>   drivers/gpu/drm/i915/display/intel_display.c  | 12 +++----
>   drivers/gpu/drm/i915/display/intel_psr.c      | 33 ++++++++++++++-----
>   drivers/gpu/drm/i915/display/intel_psr.h      |  2 ++
>   .../drm/i915/display/skl_universal_plane.c    |  4 +--
>   5 files changed, 36 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index c7618fef01439..901ad3a4c8c3b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -536,8 +536,10 @@ static void i9xx_update_cursor(struct intel_plane *plane,
>   	if (DISPLAY_VER(dev_priv) >= 9)
>   		skl_write_cursor_wm(plane, crtc_state);
>   
> -	if (!intel_crtc_needs_modeset(crtc_state))
> +	if (plane_state)
>   		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, 0);
> +	else
> +		intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>   
>   	if (plane->cursor.base != base ||
>   	    plane->cursor.size != fbc_ctl ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f6c0c595f6313..224bf622a1c1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6812,11 +6812,9 @@ static int intel_crtc_atomic_check(struct intel_atomic_state *state,
>   
>   	}
>   
> -	if (!mode_changed) {
> -		ret = intel_psr2_sel_fetch_update(state, crtc);
> -		if (ret)
> -			return ret;
> -	}
> +	ret = intel_psr2_sel_fetch_update(state, crtc);
> +	if (ret)
> +		return ret;
>   
>   	return 0;
>   }
> @@ -9709,10 +9707,10 @@ static void commit_pipe_pre_planes(struct intel_atomic_state *state,
>   
>   		if (new_crtc_state->update_pipe)
>   			intel_pipe_fastset(old_crtc_state, new_crtc_state);
> -
> -		intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
>   	}
>   
> +	intel_psr2_program_trans_man_trk_ctl(new_crtc_state);
> +
>   	if (dev_priv->display.atomic_update_watermarks)
>   		dev_priv->display.atomic_update_watermarks(state, crtc);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index bd13325782f11..101a23bdd7b5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -561,15 +561,16 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>   		val |= EDP_PSR2_SU_SDP_SCANLINE;
>   
>   	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> +		u32 tmp;
> +
>   		/* Wa_1408330847 */
>   		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>   			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
>   				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
>   				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
>   
> -		intel_de_write(dev_priv,
> -			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder),
> -			       PSR2_MAN_TRK_CTL_ENABLE);
> +		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
> +		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
>   	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
>   		intel_de_write(dev_priv,
>   			       PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder), 0);
> @@ -1450,6 +1451,18 @@ static void psr_force_hw_tracking_exit(struct intel_dp *intel_dp)
>   	intel_de_write(dev_priv, CURSURFLIVE(intel_dp->psr.pipe), 0);
>   }
>   
> +void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
> +					const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> +	enum pipe pipe = plane->pipe;
> +
> +	if (!crtc_state->enable_psr2_sel_fetch)
> +		return;
> +
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> +}
> +
>   void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>   					const struct intel_crtc_state *crtc_state,
>   					const struct intel_plane_state *plane_state,
> @@ -1464,11 +1477,11 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>   	if (!crtc_state->enable_psr2_sel_fetch)
>   		return;
>   
> -	val = plane_state ? plane_state->ctl : 0;
> -	val &= plane->id == PLANE_CURSOR ? val : PLANE_SEL_FETCH_CTL_ENABLE;
> -	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), val);
> -	if (!val || plane->id == PLANE_CURSOR)
> +	if (plane->id == PLANE_CURSOR) {
> +		intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +				  plane_state->ctl);
>   		return;
> +	}
>   
>   	clip = &plane_state->psr2_sel_fetch_area;
>   
> @@ -1487,14 +1500,16 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>   	val = (drm_rect_height(clip) - 1) << 16;
>   	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
>   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
> +
> +	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> +			  PLANE_SEL_FETCH_CTL_ENABLE);
>   }
>   
>   void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>   
> -	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
> -	    !crtc_state->enable_psr2_sel_fetch)
> +	if (!crtc_state->enable_psr2_sel_fetch)
>   		return;
>   
>   	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
> index 641521b101c82..e502964697c62 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -51,6 +51,8 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>   					const struct intel_crtc_state *crtc_state,
>   					const struct intel_plane_state *plane_state,
>   					int color_plane);
> +void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
> +					const struct intel_crtc_state *crtc_state);
>   void intel_psr_pause(struct intel_dp *intel_dp);
>   void intel_psr_resume(struct intel_dp *intel_dp);
>   
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 724e7b04f3b63..247155f2a5538 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -656,6 +656,7 @@ skl_disable_plane(struct intel_plane *plane,
>   
>   	skl_write_plane_wm(plane, crtc_state);
>   
> +	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
>   	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
>   	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
>   
> @@ -1096,8 +1097,7 @@ skl_program_plane(struct intel_plane *plane,
>   				  (plane_state->view.color_plane[1].y << 16) |
>   				   plane_state->view.color_plane[1].x);
>   
> -	if (!drm_atomic_crtc_needs_modeset(&crtc_state->uapi))
> -		intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
> +	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
>   
>   	/*
>   	 * Enable the scaler before the plane so that we don't
> 
