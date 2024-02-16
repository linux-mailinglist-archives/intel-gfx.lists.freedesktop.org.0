Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAA48573F7
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Feb 2024 04:17:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EAE610E84F;
	Fri, 16 Feb 2024 03:17:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQMIRSlr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADEF10E84F
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Feb 2024 03:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708053455; x=1739589455;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=M5AHL6aN9u8tRc/T7vObZ/jDULIya/Y4IFk4RpTobXc=;
 b=KQMIRSlrSP0/qdDWWfu9h5UHm9NjmkHYHK4JsWYL10WYzWN3bF92iVUT
 ymaw3/Jm3vNp0YeRCUYPlDGauJWbjeNWdIDAoY6dkPGPPn0OP+KhrD6kP
 mTokPPPs/Nbv/gKqBStd978gu7uW302ZQq/MyZCky1mHycwNk/yOFIaQ3
 66/9j55GF3is2OUaVEbW/OMBioXPs4DngzTr82wWAsdI2MWazFzImM5tQ
 oJqEpg8l1nJBpksju/VWiRL0I1a8hD9t2zK567rrfTyZR/KdEwmPswo9F
 ZRjUFVa4RxwhNqTYaE1iSjlFNFH8FRueq8BjZ9HY/+s7qXWkqF+sQlrIU w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="13568481"
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; d="scan'208";a="13568481"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 19:17:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,163,1705392000"; 
   d="scan'208";a="3659392"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2024 19:17:34 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 19:17:33 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 15 Feb 2024 19:17:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 15 Feb 2024 19:17:33 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 15 Feb 2024 19:17:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SosbT5gsjNR1YkjRqjsTg3Wmq7/l8qvTAGj3H/FjOBJgL5EnzqmiCwCjkDO4XSnYNRzO5Gv6roX8408uk7Npt6GKlaBKP/xBQPp/iaziX1B2pg8uA3WGv5Ef059GIRF0G/3wv7XTHdnH3MSr/dJu/htitURwR/RHF3C0B7qxwo86myp6irksQ/d0SxrjSiKGvvpFHYIDOaJ8o2hlTxk6DiWGA/DU86OKXkiHDNjy/iWpqwtsxr8wXgD2KhzzHixfRt+6feN/blA3tz0DDL5hESJBaOMf3iKpD2pcAg8JgF0T68AMKzzLr6JD8BplIGdAtiYj2xMmEQo70cxqf1GjNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aihaWUP4Z68P98lQ7ZgvtUGfuiEQHNgjm/2Kqj1HyVc=;
 b=GHPZ3myphvBnnMFU6Ukt1/Q4cOPd3B+2AxyGXPq4vqOd4HfRu2QCfPc8Ozf/g3Cuttq4Ip/Rau4JiXAwgvkZsRgUC2kaJ9duY5bBSi2SGXgWgCjKm11dM5PvS7H3fQ28Q4j5aUTl0VUAdtGhRsg0DPRGEcUDoQsxN7fOJZMUzPkxVlPDpwQs14Qx4cTQk0THwrO/EKHCpKxrBRozmwWHbeBD49nWi1jwMk7ISjtHIeMv2hD/GVSAqgezFDmlRswxFrMWpMwLUkjjVL4uu4FIT61Ymcux8nrWw5bmE4vmV8pLANaLHQJ9v8bBSK+irl95nyypm5OADE4NNvQbbyAJ9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8719.namprd11.prod.outlook.com (2603:10b6:8:1a8::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Fri, 16 Feb
 2024 03:17:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::12b:4490:b758:75c2%7]) with mapi id 15.20.7292.029; Fri, 16 Feb 2024
 03:17:30 +0000
Message-ID: <39173f4d-8792-459f-b91f-2fbbc5685ec4@intel.com>
Date: Fri, 16 Feb 2024 08:47:28 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/13] drm/i915/hdcp: Don't enable HDCP2.2 directly from
 check_link
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>, <uma.shankar@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
 <20240215105919.1439549-11-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240215105919.1439549-11-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8719:EE_
X-MS-Office365-Filtering-Correlation-Id: 45810eee-4fb0-4822-7d07-08dc2e9dcf20
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h+vCA/s4jhmNfLj/G0uoLQgTqqGJQbQ0uce2sZUZvht44FSWJSC066iNOt4VxfORCRSpLdKYJaA8SOOGg6HuF2KCnlsS2SO3Dn3Ut7L9GR2NoDJD8KmqSoY+k4cndpl2AkkxOvHwTDOAWzKoJRDjM3ohnfHoCM3iG/DMGcihOLR9I0yDhxaGtcRVLL+x1iEAOK8LDzhdlNqTlM4Z0szFkj0DUdvFsgd6r1hkjnZgidluYteo/gFPHFHpKKNSaj9XDAwsThm3POQYm8iOpJT+3LtYWkuaB9fc3kbkf65m1kxd9poqVdfdc9QxO72FZ5umylyK++2P5j9tj+YOGkMqib6tdWacXr/5F6z7/Xsp+TgoH+EeTaG+ePOTeU0xY6XzyZJxDDpor5HrnI9i2qmGIOGKrQ0BweyO6Qe2yyJtjH6HG1Fi0e/gv25RRsTM8hyQVdz3Le7BcvklbXzrnRTnQGg3qSC80zIAYebx8fkdY+mQCfdasVuztzcNw43iil8P6kgSV+0asJxARa0jW/VpLW1/Uy5+GWigC7CR4oLk1GhN2c/5r40FO014qCbBv5I7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(366004)(346002)(396003)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(31686004)(478600001)(6512007)(2616005)(53546011)(107886003)(41300700001)(4326008)(8936002)(2906002)(66556008)(5660300002)(66476007)(66946007)(8676002)(6486002)(316002)(6506007)(26005)(38100700002)(83380400001)(31696002)(36756003)(86362001)(82960400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VkZweUxJOENMb2VXMVZSMFd1dWRNQ1U3NkpLN09OVlVxK0ZxYzB4YmVZZXN5?=
 =?utf-8?B?bnBBajFZVWJxK1ZaczgrM1A5eGNrV2tXci8wVW94M1ZWUkZjK0lxZlMrcVNQ?=
 =?utf-8?B?SmV2TW9VVURiUEQwTDZjcXJRRmNvaWFhVGMxdFEwWkZTYnMxVTZuVVBwbFhB?=
 =?utf-8?B?VENHSzY2aHJpalFvbGcybnM3N2w0bDZkL2dFNGNyUVJHY0UzRzlrcU1qTUx0?=
 =?utf-8?B?ei9KRFJLejBxY2tWaWErZWpTLzF4SWx4ZlN2U2pJWDBZUXpOaHAxUHBsUXZm?=
 =?utf-8?B?UzNRcUc4SlEvSmptVmFHVnBESnFnNmpNeVU3NU5ZU1A1a29RS1hyU2R5S29Z?=
 =?utf-8?B?UURNeFR6VFB5bEY5UU9hVkQ1eXdZaDVLdS9zSmRyaCszSmVIVDhBb3JXMUlL?=
 =?utf-8?B?bXlrNGZCS043YjcxS2dPQ25iMnQwVUZqWXNMcUNLMFpGc1FYaHZGL3lZVGNt?=
 =?utf-8?B?S25xN211eUY3TFZFVEtwUWVPbVhHOE4xZEFjOWV0V1JFWU1RcTQ2d2RDN05J?=
 =?utf-8?B?NVFkTHp0LzJlSTdXelZhSGJGSWYvZXhUZFJ4Q0tGU1FSd1VnL0tZbVhaTkN0?=
 =?utf-8?B?QU1CWUVDZFgxZUdSdXI3M3dPYzBYV0tLMGRwcFhZQkg3d1kzaSsyWDdNc2Er?=
 =?utf-8?B?SUJ3aXZrZGVReHJBRXR3WGxTc2VLSzNMa2xGUDkzSHJFMTRSZW1TMjN5SWhk?=
 =?utf-8?B?UW1QcHFKczRRcDhNUU9rVHN3cVhTb0tKTjJISDA5TmVRWUR2dENYMWZSVHFN?=
 =?utf-8?B?NVNJRGZrcmVEdjJvYjM2RW05YUx5cHNTVHZFcWt1V3FOY2lZeC9SSk0zeGFV?=
 =?utf-8?B?SEpkZ0t2YUQyb3lwUzVGVFZsOE5hMFk2Uk1iYnY5eElhRHZCYTBHTWY0QmVt?=
 =?utf-8?B?OCtFWjRMRHIvWDByRUJsZ3h0eVFaQXdMaVE3clY0eUppQVVCRnJ5eVZXbk1N?=
 =?utf-8?B?Wnh1V0lLUWZHcGlXbit5MWVUWmpBMnQ4UlowL2k1OEVOZjJGanNvQmxOUm5O?=
 =?utf-8?B?K3BwcWpFVTFQVDcyakFobTVnTlRFMUdZcGtQNmpkRy84OXZwL3NVQ2Q5Uktz?=
 =?utf-8?B?M1A5ZStnNDBGeFdNRXp1RFlEYnZwbnp0dmk3UW5VTHNqdDdkV0tNQk5GaTlz?=
 =?utf-8?B?UzhzMnMrMEo3WDYvMytaOGJVZjU1a1FvL1JLd0RXcjZnNi9yR0toYnc0RHZL?=
 =?utf-8?B?ZDNVUWxRaGZFQWNiMVhYT2JaYW5KVytNcTdIcnhJVzgxSzRRMlBrVFVGK3JK?=
 =?utf-8?B?TDhNeDBDdHJJYlg3MFpUd1NJODVPQzNTcU5SaGp4OEJJOFdMT3pqdlZuQW84?=
 =?utf-8?B?bWVGcEV3Wkp5cFVJZnZCbUxMVksrSVRwYytmNVF5enFIakZoZE80azFzRUhp?=
 =?utf-8?B?aFdDNTFvUk9wRzRUZUFweXVUcEFiYitKd3VmUHdZT05Cd0VmajYrWFpxNEUr?=
 =?utf-8?B?QVdCaVhDZnEvT3grNlBjcWhUaE9SYzhDdHhUVytwZ2h6bkFkcEhzMEhyWnBl?=
 =?utf-8?B?bG9sUXoxMHI2RCt0Wm9ZcDYyRUFpYlB0SWZsYXhaeFhPRTk0Y2xHTTgvN1V3?=
 =?utf-8?B?TjdUWitnaU93OUpKbWhUNDZLTmVySDRrVmNGZkhWQXJVYVEvWG9xbWp6UWpD?=
 =?utf-8?B?WngrMmkyQVlhTnRqVGxCTE9OOUJFeE9ySTBBdVpKbU45Wk9XMjhFUGxFb3lu?=
 =?utf-8?B?dTJpYlAyTmtBUnd5VHBqTjZsSTVwang4Skw1MmpnQ0YrRXhaZDBuNlhtZ1dJ?=
 =?utf-8?B?ZklxTUM1NitxRGx2VmgwbUFiUmROelh4amxVbURnWXJlM1BLQUVDSi9RdjQv?=
 =?utf-8?B?MVhkVFZRSWl1TU4xc1RZYjJxMENHWGV2WURCVzhta1pLNUJvVEEwbWU4N2N1?=
 =?utf-8?B?TlB3RDFNRkREcDdqeDdFWFZRN000bXBpU0lBdk9mYjNPQ0hST1MyVUwxV3kx?=
 =?utf-8?B?NjlUUUF0UWxhd3dzdXRRV0R2dWxqRytyZVlpM05GMmdpcnJUQmRqUEwrR2xh?=
 =?utf-8?B?USs5WW9PVGwzdGIvd1R4SXVxK0hjeFpxRldIRUgzd1BlUXlzeUkxdmN4b3cz?=
 =?utf-8?B?UndaS3JnWlkyTU1rNk40Q0JFaUVKR1NhWWdLUmlVbjlOS2hHZGdtMXpKYzdO?=
 =?utf-8?B?Yy93aVNjVGN0ZWIzNnV4R3hVdm5XTmtRL21oSkRHTXdQUHVFSGFmTFcyT0tC?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45810eee-4fb0-4822-7d07-08dc2e9dcf20
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2024 03:17:30.3106 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tw4/7ZPYtDAZHc/NZQRhE1aqIYSJxBbT0xfBQoyjJPYt5xQK6n02dOs0MxpLmeztyotQDdvpQf3FauF+p4LjEENo4RMX2C1KyM/7HPaUVEY=
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
> CP property we directly enable HDCP2.2 without informing the userspace
> of this failure in link integrity check.
> Now we will just update the value to DESIRED send the event to
> userspace and then continue with the normal flow of HDCP enablement.
>
> --v2
> -Don't change the function prototype in this function [Ankit]
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 25 ++---------------------
>   1 file changed, 2 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 16b2b180563f..3bd783b8deac 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2068,17 +2068,6 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   
>   		drm_dbg_kms(&i915->drm,
>   			    "HDCP2.2 Downstream topology change\n");
> -		ret = hdcp2_authenticate_repeater_topology(connector);
> -		if (!ret) {
> -			intel_hdcp_update_value(connector,
> -					DRM_MODE_CONTENT_PROTECTION_ENABLED,
> -					true);
> -			goto out;
> -		}
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] Repeater topology auth failed.(%d)\n",
> -			    connector->base.base.id, connector->base.name,
> -			    ret);
>   	} else {
>   		drm_dbg_kms(&i915->drm,
>   			    "[CONNECTOR:%d:%s] HDCP2.2 link failed, retrying auth\n",
> @@ -2095,18 +2084,8 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>   		goto out;
>   	}
>   
> -	ret = _intel_hdcp2_enable(connector);
> -	if (ret) {
> -		drm_dbg_kms(&i915->drm,
> -			    "[CONNECTOR:%d:%s] Failed to enable hdcp2.2 (%d)\n",
> -			    connector->base.base.id, connector->base.name,
> -			    ret);
> -		intel_hdcp_update_value(connector,
> -					DRM_MODE_CONTENT_PROTECTION_DESIRED,
> -					true);
> -		goto out;
> -	}
> -
> +	intel_hdcp_update_value(connector,
> +				DRM_MODE_CONTENT_PROTECTION_DESIRED, true);
>   out:
>   	mutex_unlock(&dig_port->hdcp_mutex);
>   	mutex_unlock(&hdcp->mutex);
