Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C668F43DAF1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 08:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900E76E04B;
	Thu, 28 Oct 2021 06:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBCBE6E04B
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 06:00:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217240653"
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="217240653"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 23:00:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,188,1631602800"; d="scan'208";a="537871766"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 27 Oct 2021 23:00:03 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 23:00:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 23:00:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 23:00:02 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 23:00:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyrdPKts2xjHla/IXLjFVXE0NgW7M/HoqPWX21Dp8euaGf9MojZXhpEhvgqXtuucrkpX/bebxwl58cdNnR4RbsPQSxRvJzso6b36UyYnNkHbGyb10tF0ngv6sXB0EnxuMvH30N0SawJHB4fG7dbpNNqSs24AdT9z1ZXr4OpO1aFeszBvNnoF7O0QHa2rq8chcE1L9VfXWbotMJAYf3JsDL76pUYmEV9DYpqTzWrFOksNZKPvj0Ej2R67eZUnKC7UDfjuyWZGKLpjCD4JU5PHbwIA4vNUnMYY4v6hIvjBdwYeCAM/eNbaZ+Q5mh9zKkbkZ8e6n4YlVvSzhIVuHbgtEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zlBrxGvjQqp5anZVtNoYa1jLDCSWMsk4lHTCpTzrxXk=;
 b=ezeG8NwoxgfgIJvqMYkkbHDpuVbOPsZciUHjITgjvw3TLDrvfPVoiVgzTAAocsqjFpjf7L8Mpi/fprr9p70HFjbwzsdTYVfL5ipVKdgmqJFg1NAw5wB6n0QVixuiHLa+WaMBErXN+FxHwK+giCQ9VREQRUsQ9qqO15A/ZypdF0ihnYvenw0jCntJ0A31cqRUnSySiIF+CSKmmDwGaWzAYZ4lNiZUPfP6GojfiAnQTRvfWVFxeb88aoSWe2bM5YUFjMuB0Mk3QxhuDKsLn10+A363we/rSzVn7yzktKdb+wlgdHtk3lcBb6I6bZ60QY/wtVMTVYCtY4yUtrMJGIyxOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlBrxGvjQqp5anZVtNoYa1jLDCSWMsk4lHTCpTzrxXk=;
 b=Y3x+oqfR61lWpLUDg5zDJHmFnL0+V13/QeYDAU4Mo2OUU7SOsXC8sHWeNl8sDwGHDY+EWObxpVO3KuhxlDEPjieqa25dY/i7LP7vlNdIVTpLYNm2dqLd77JH0Gu3iNY+FA6MTosS7jkkfv/Sna3nSH38MSC5UFkSmxkz1sEA5yo=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO6PR11MB5634.namprd11.prod.outlook.com (2603:10b6:5:35d::20)
 by CO6PR11MB5634.namprd11.prod.outlook.com (2603:10b6:5:35d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Thu, 28 Oct
 2021 06:00:00 +0000
Received: from CO6PR11MB5634.namprd11.prod.outlook.com
 ([fe80::912:121e:18c9:732a]) by CO6PR11MB5634.namprd11.prod.outlook.com
 ([fe80::912:121e:18c9:732a%8]) with mapi id 15.20.4649.015; Thu, 28 Oct 2021
 06:00:00 +0000
Message-ID: <b32de17e-5fab-0c79-7a55-0a5a3145330d@intel.com>
Date: Thu, 28 Oct 2021 11:29:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.2.1
Content-Language: en-US
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, Jouni Hogander
 <jouni.hogander@intel.com>
References: <20211027184855.108731-1-jose.souza@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
In-Reply-To: <20211027184855.108731-1-jose.souza@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SA0PR11CA0051.namprd11.prod.outlook.com
 (2603:10b6:806:d0::26) To CO6PR11MB5634.namprd11.prod.outlook.com
 (2603:10b6:5:35d::20)
MIME-Version: 1.0
Received: from [192.168.0.68] (49.207.202.69) by
 SA0PR11CA0051.namprd11.prod.outlook.com (2603:10b6:806:d0::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14 via Frontend Transport; Thu, 28 Oct 2021 05:59:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 292b32a0-75b1-475b-3fc0-08d999d82d49
X-MS-TrafficTypeDiagnostic: CO6PR11MB5634:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CO6PR11MB5634BEB789B0A6FCC02D59F9B8869@CO6PR11MB5634.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BNC5Y2Q3TDQdJIBh8Oq0zNYnn+L8yXoGXYAjWBkTiMAwUz+6D6+fdcR9xEC4UT8T2EwwVZ7QkVnPQZXdRNZELX6DEokeULP5guc8F4L5E+Bd784dwTJzAjNUzl1zuvZkQoSmUKpNTofqop6rSy604zyZA7p480ue1f8pPMPMvKbuDPajCn4gga1HqqBTr8ecs/h8MGyZdRDIFZO9k3HIKAuh6f5/3AXIRbJ0XsjZyC9L8mnpaJtda2TM1zLF75wP7mVqte6h6VtWcPiUEdCyTvG3Qy3y5232mEPDtpxXvE55peH0RPWmVNqzdQKk4gAWX6S+Zajj7fAID6JRiTPTIvXSMV3pajRXE3XdFJEGPu7qxGGUxLfqhOC72EolS8zgAN8u1NOpargj46zCumeWFn9g7Cz/4FS9mgFdaNuxSS5x/8z3zn9jh8EkkoxIVR4KhP9GjRBt8kEg4ZU1WYYSI3nQWqO0B3ZJdTOOx0g4mva8cNq3HHlXOiXurDktQlnadaemd6vKeki7sNeyclmON+tYAIDPDSU3ZBdmZVjpWMYcWYW1wtDE5qSIThQ3LQJL4/q3KPIlAbyAQmQ9Gz1uiwvhz1PA+RwjQjOmnt46EOtFOcy70TVdwovDOQykku+qb4Iyti5oZApHS1PjCABajYu294HxTTlggu6VDKtgLu9EbADnwGa15RsKF/Jbqr8Ua29oUrs37FXdh1l2sznw3wk5/NOOYUk7CWCREHKD/hI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5634.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(53546011)(4326008)(38100700002)(31686004)(1006002)(956004)(2616005)(6486002)(6666004)(316002)(36756003)(55236004)(2906002)(8936002)(5660300002)(26005)(86362001)(186003)(66556008)(8676002)(31696002)(16576012)(508600001)(82960400001)(54906003)(66476007)(107886003)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWRlNHZwVUxGaWh4bXNhQitSYy9tc3ZLSitwMXVJczNnSFMxdC9ZQnkrSGwr?=
 =?utf-8?B?R2tVQ2N1eDJsYnpjT2x4cmx3WDFXbHBCZy9LMWttNkpHUDZHTnQzeGJTOENQ?=
 =?utf-8?B?eWpKYTFtZE1pd2Z5S0lMUUZQdWZBTzcrMnNBT0ZBU1dhVzJTOFg0Tk03RTZC?=
 =?utf-8?B?UGQxMGdEZXUrQVlkOVV0L09vWnRWVFhVNTlTMUttWGQ3b1pBRVBWWFNtZTRH?=
 =?utf-8?B?UmJYT1RlVkpWT3ZrL1dua0lQYzBpeWZPSzFGUjRhWDlFZmVZNVVOcmhUbzA5?=
 =?utf-8?B?eE9rWW1WZnBTOFZCdTZxbGhTVWJybVhMMFZtK2pZT3FrNWdMUmVHVC9GNkQ2?=
 =?utf-8?B?QnVEQlNlZ2xMUzF5SnVDQmxURkVYMENpMUhMRWhVSjljWm80ZzlCZEdSc0lV?=
 =?utf-8?B?R1UxaWJucm9wZUN4dm9iaHIwaVRPRzlhRDdBNmxrV3h6bWFRNENXTlROQ1NQ?=
 =?utf-8?B?QzQwQWFCcWppNHdUSzhyRVFrbXN3WVFPS1NQb0VGS0pKUWgyUmtPWGxqMkJV?=
 =?utf-8?B?MHJoOFpDeDJjODJxM1FEN09xL2RvYTFOeEZFYlNrZllNVDMwV1d0TkFINGNS?=
 =?utf-8?B?OGhIZDJTNC9Kd2JHZTNNMWpnZTN5TGtyY0djUDNJbWZpNEwxNEoyNFA3VFJ6?=
 =?utf-8?B?M0pJajJQTW1pQXllWjF6ODN2TU54cGNHSHpjY3ZuLzV5QThoeStKdWVCbEc4?=
 =?utf-8?B?ak9PUlQ0UnFSZElHQ0dobUdnZWg0Q3RoL1lXYnEwQ2ZVN1pzZHZjQ2RQWWlC?=
 =?utf-8?B?NTZyRTY3WVc5Mk9iNDhuZGRkbTlVVkZvbXQ0M0k2cDdnVTVSNjJOOXgrZ25Y?=
 =?utf-8?B?TGZBSXJOOVhPVGRCbnIzK3M1dGZzV1psY1BUY1l3M0J1VHFqaVo3blVlTEMz?=
 =?utf-8?B?VDJDQTRCN2hZUFpYRk8yYk1YMGg3RGRwTy9Ccnh3T0FMd2FjcEJpNGRpUGRO?=
 =?utf-8?B?a3VWY1I0ZFFqeWdiRlo3KzdUZXVGN2hkRDhYVzNwczdTeERKNSs3V0pUWWJQ?=
 =?utf-8?B?S05hRHlFY2RPVG9zaUlSc2NMSlk4M1NKWGhqR281c2gvTDJWY25tSWRXcE4w?=
 =?utf-8?B?RkhvSk1xRGNpbUZUblhDYXhrZ2czZ2R2VXRoaG5BbDNrQWRWc2xHU0xTYmNT?=
 =?utf-8?B?SlY5c1RSTU5wbXdHblJ0MzNlWXpqRFdBaHkzbkN4SlcvSkFLUjFWUHZHRmo5?=
 =?utf-8?B?Ni8zNlJ1d0xuVTNibjI3dDc1dnBBcFZsL0o0K21MekRBQ3lRUXBwQ2lQQ0VC?=
 =?utf-8?B?eUZhVkJQM0lWaEE1a044bk9Cc3VGUHFRWXFNbUVGbkhTWnZLWkZoaC9oRFUr?=
 =?utf-8?B?dU14SjUzT2JHUGZsVTVPdkh2NysweUdEM092RDF1dlJmY3dFaUJvQjNVU3BU?=
 =?utf-8?B?TitxWGN3MjN4em1jNFZ3bmx4cDRJbGlCT3VwanZ4ZElsdU0wR0IydTZkeEpM?=
 =?utf-8?B?UHcwazFGSDcyV29wV25xNy9pNjkzN2RGd3hjdSt3K2U3NExzcGpsS09Jd3FR?=
 =?utf-8?B?RitSYUlyUWQ0a0Y5elpVMTZrOXNYejc4NXIvY1cvYUh1SEZNTmZkeERrYTMw?=
 =?utf-8?B?YWhVYVlqT2ZZb0cxay9mYUdoLzIyNnRybVdtZWs1TFIxak51UFU1dUJpUGJV?=
 =?utf-8?B?VHQ5Y1g0WlpwbGpCMmkxMEJNS0hmVVhRSWhqcXpIeWxrUGFGN0VVV2RiVS9i?=
 =?utf-8?B?N2NiL3ArMXFSZCtpWmxieFRoMnE2LzFSL3RjSmtDNkw4Y2JWbkdvajhpSDJz?=
 =?utf-8?B?QVFBcG16TDJxODlYaldyV2pBditVT2J3WkIzZVJ3ZWgyS1d5dUl1RU52T1VQ?=
 =?utf-8?B?aStaT2JJSit6RzFDanZIcm11VS8wb0pnQXRzZ0dMSGxPcVpkUWkzR2FMZWx5?=
 =?utf-8?B?WTFLL3p3SGpVeUlZUS9pVHdEekM0QTd0UEpvejNtaUpVK3hpNTB0N2hCTEdY?=
 =?utf-8?B?S240a01tY1IwZ2JzZHNJVWJhaC9oNi8zU1V1SGxUMnlJRDVtMmRWLzNsK2c0?=
 =?utf-8?B?aUxJMHVqN1pURWdjY1RTenFVMGxLaDNVVjI4c1RrL0xsWEp0Y1N2ZUZYK0JK?=
 =?utf-8?B?YiszWEtqM21WQTM5QmZMQk12UkFKdk1zUW5PRFNTWU5Tdm1sS0dtNnB3K3U4?=
 =?utf-8?B?RE5YR3p5aFhjdm45dHdNeVdwQWZOQ3dTRlBjU2FxcU5VbDU3Skg2bTBINXMy?=
 =?utf-8?Q?/92dvYQQ05cym4uAc9Sk69E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 292b32a0-75b1-475b-3fc0-08d999d82d49
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5634.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2021 06:00:00.3059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t8qxkEvv/rmKxvuAtA2pnptxwlOK2dzPka78w16mibTI+art+tRhxMLO8tYSXBNDINRgBB6a0cHURUbdLmez4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5634
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr2: Do full fetches when doing
 async flips
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

On 10/28/2021 12:18 AM, José Roberto de Souza wrote:
> Async flips are not supported by selective fetch and we had a check
> for that but that check was only executed when doing modesets.
> So moving this check to the page flip path, so it can be properly
> handled.
>
> This fix a failure in kms_async_flips@test-cursor.
>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: Jouni Hogander <jouni.hogander@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Karthik B S <karthik.b.s@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 8d08e3cf08c1f..ce6850ed72c60 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -729,12 +729,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> -	if (crtc_state->uapi.async_flip) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR2 sel fetch not enabled, async flip enabled\n");
> -		return false;
> -	}
> -
>   	/* Wa_14010254185 Wa_14010103792 */
>   	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>   		drm_dbg_kms(&dev_priv->drm,
> @@ -1592,6 +1586,8 @@ static bool psr2_sel_fetch_pipe_state_supported(const struct intel_crtc_state *c
>   {
>   	if (crtc_state->scaler_state.scaler_id >= 0)
>   		return false;
> +	if (crtc_state->uapi.async_flip)
> +		return false;
>   
>   	return true;
>   }


