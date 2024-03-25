Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1097B88B4FD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 00:06:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 595BE10EB76;
	Mon, 25 Mar 2024 23:06:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O3ApnneX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF4A10EB76
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 23:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711408008; x=1742944008;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=2wjObwSJl9EwgN3KmKu6WMOldFDzxmuZUJ83ByiVLN0=;
 b=O3ApnneXcREeTCFHRa05mbLmUauVVYDVUYgcQrwb8gBbSKjxSAk1wXUb
 aVi8yD4BwSknoX5UixsCSUaUnNxIhmvhqLMxh5z9mNKLapKGL8ePADfpV
 Fw/sP4of6FKuUeJhWQrhVJc2iOH4r1UGkMo0ir30D/wASHEeq6dmE0dTq
 xgtgsSt7MnDyq5F321GyZS7XmeBTm3RXoD3OSHahH9SFcWsRf42rvKb3/
 W1No9mRLI9giE0IPRh45zEYtBhfTJYpzm519TFCe9JTiiAc0jGWfQ3k7n
 i3Z/0lnhVvoxbCh4/pJJtyMtTqzRRU3nrdJQfkemWqcb9GYoLO106jXBY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6566871"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; 
   d="scan'208";a="6566871"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 16:06:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="38884089"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Mar 2024 16:06:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 16:06:42 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 25 Mar 2024 16:06:41 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 25 Mar 2024 16:06:41 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 25 Mar 2024 16:06:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lcJbHUgD4tHhaJOThJXg1B+e9BBEIENUK7ijdqpFep7NO54Im8WJHymfqbTOF8M4U/gtNq6dzG0aQPAvAYKCQ4zoVdlQ4zZYpKGEUKKh9z1dloNTKbL5F4TcEopvPkUSaZx1j9EVkoU0sRnAskhkSFAvK7gM+494kZyWTVWjuwXRx7Sun0xpWmfsxaOq7PaUYfDR7M0y8n40UFhqC0FKPg99Kk8ONgeM5qoKsvuVoPjCWt0HRrVsVgLTTlptozk7C7Xwwo+VI4nPK+njUPRkCIOVH7/kFsEtgBbL1XZ7SnbENrzT36N9GircN+MG98bQzB+hQfiYXDXTzFF06B43rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mU36ZIQj4vbB0BnYNzLbgxPh8ifI6PQlBRtIbbrRrHA=;
 b=MNr8E/T3gppS3KFveNVdEvBuDlO1Zu6BADMYQ9yC3HM861snQiavWF35qYiwUrbq+Wc3DXdupsxZt1LGF9q5Cj29KLmlY6h7LjSqpDZTiuANlFYpQS2naNfmkni/n84c9j76BZjlF5ZrNHVx4ibPOTTCQM0mL6bq/qCUAlppaES1tKFxQkCk7M+lPjv2kXpa8opMagvoc2EIA7MAC0JjouoqIqMbmegyyFH+27KLT4OQdJr1XZPfjtaPlHCuffc1fCIU86AhQzLEl/gmMJV+l4xEyBTi1FG2psyo7Bt1PArIj5t2+LR5rqZ9Qvdo06PdjFiqatfQ7DW5/KWxptH5qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7290.namprd11.prod.outlook.com (2603:10b6:930:9a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 25 Mar
 2024 23:06:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7409.028; Mon, 25 Mar 2024
 23:06:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240320160123.2904609-2-jani.nikula@intel.com>
References: <20240320160123.2904609-1-jani.nikula@intel.com>
 <20240320160123.2904609-2-jani.nikula@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: prefer intel_de_wait*() functions
 over uncore ones
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 25 Mar 2024 20:06:31 -0300
Message-ID: <171140799119.3229.2640338175396121038@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0145.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7290:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E8f4+HHFPHrXcs/DJuHBX4rRZyNcWhW9UIGrSc608mrgJpunONjrbNvJEOdkgU+1gT4spau99iyaJvA6UJUVMbKpM02nn4m3CoKATbC9K1a4IKt5zej/vZaPJxbdUEWn0RIT1DQv9nZH+32mhO0potoVtA1Qh+xQiCwA3VKx6N4+/bGHj7RxRiwfc1TQ2kaD2MUIRPZwGn4nUJin3Ga7KXEnMvQwfG4RB8Ki2Us60v7kndELV3tgFml2wnJbL2+loYw2HbGvySY23rWNlPVLgTXPq2lhWG0f1JBXrHAu7RsIRgMqmVqYmqdCjQCeKsQlPG1curdZLGpuI+eotByVnw1MZBZ2IGgSzrQF7YCRkTBKqFgkzCpYrAqXW70cIO2CHmT+WJ/bW0sS6nVe1xEoreiZKmbb8EW4B/javxZAXL5Ui/lbuEwoKdRmqidaGQrnuemwGlYMVPWWbIMQsj9IlLzZvvYswHl0ydxmUR0YDiOAGLSh9RnoLLc8xGyJ3+AxUOywCTYM6ogTJP9gaVnIOrs9NvPk7alDIufXFsQR5cXrlcxKmMn/anFA/XkHgAb5qVaGuLNEyqRUpEIBHkd7ZUF4uDri7x63hKqNnrp+NXhgOnfmsEa8FQnrOpzwAv5qqQlQT+nrN/+UBwPvcpmb/eGdpzoyzb6dHDIUT651Rr4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWM2RExXb3Zmd3MwaHFKTmZKclpta1JLWEZNaU4vdDZJTHZJbHpBQlZsWXp1?=
 =?utf-8?B?anlraS84ejhhQk40VlZ3YTJ6cTh6WWR5SUM2cmRGQkJtb0NmM1J4UkV0M1VN?=
 =?utf-8?B?clUzR0FjNngyNXd6SGJLanZZT2ExYXZQZzdMeEd3Y2VXZk5xZlZHOXdRS0NP?=
 =?utf-8?B?bjRHTndaSWtwVURFRERjUjhLZzNIK3pFWlZxTjNCdUpXRkQ5TzJKSjBtUU40?=
 =?utf-8?B?S1dQcWp4enlSR2JJUzBPTTVoZGVzNjk5MHRiYnAwWHZXV20yYUFxUWYzMHlH?=
 =?utf-8?B?K1hpbWROZnJkcHExaHkvWEl4cFBsaVZ4QndkbHhzN1FzWXRWbGtqNk5MTndN?=
 =?utf-8?B?NEJsd0Z0cHFETy80M2F3ay81YTZQV0tyb25JYis1dE1PUTBaR05xQzdwL3I0?=
 =?utf-8?B?THNNWlVSK2cvQ0R0TnRwM0lxZ3laRXJ1RWdGNW9ZQzFybUdBVXlzRjE3K3dT?=
 =?utf-8?B?QXBtMGFSbjFSa2x1Tmp2YXRRZFNaK3ZvaFlrZTZjbVVBL1JWUlpoWGJMU0t5?=
 =?utf-8?B?aWdLRmxVTWJaSGR4TStyNUJpL2o5YzNpcXhkR2VEOEdTdlk4NVBTWisraGhN?=
 =?utf-8?B?Qyt2UzBXQW9USDFjdmFwTHBMMWs4TWU4L1piYTJCRG1IR3JHcHNsUGdOOWZv?=
 =?utf-8?B?WC9iVjQ2a1FOME9XWktsdHFhN1FCencyQXJyeTRlSEtkTlpZaEo3MGhUMDVQ?=
 =?utf-8?B?Z25nR2pqQ0krajFjYW11cCtQbDc2dnhiNzhlOEFLSUtSRDZJMmYvV0NlbVRL?=
 =?utf-8?B?SndQcCt6SmNIZ2F4Uk1zNHJ6OHEzdldwZmJtUVl5K0s2SWdhQklhazZ5SVhI?=
 =?utf-8?B?T0JMbkdlMytWRFNpSWNydVRHcm9UQTRkd1E3Zk1NSXNzUnU5a2d4enpad1c1?=
 =?utf-8?B?QzExdnBnWlQwV3RvaTByb09aRW1rUU8zVDV4NEZtWVNiTDdLbFBraDJVVHRL?=
 =?utf-8?B?YW5tOVNZaVFSZzU4OWhRYXZVd04wYjY1SjRUYTl2NEh2K1EzZjVZa0RJQTY4?=
 =?utf-8?B?c1lVSEFpOU9Fa3BNMDNGc3gyOHlSc0xVOUlGRVdNbWFUcW9uOW42ZHJhTW1G?=
 =?utf-8?B?WC9hODY4bWRwQThlZ3RMeEs4aWtjQTQ4V0lIbDhUcURPcVd6U1ZKUStBd3Zo?=
 =?utf-8?B?ZHVaQnBzNEZ3RE9yRlNmNXZONCs0TTFUMFpyQzBLQlNiZFZYSk5sZ0llS0Z1?=
 =?utf-8?B?WFkxYmM4YWVKZC84Z3dZRFUrYVVxMDVFb3NIdVdFeVJHd0VoeW1PbGQ2bzRX?=
 =?utf-8?B?RE1zWUVNMGx0bVhCRWR6eHdQaVVobklHZ1ViaGhxV2libWNLZ0lJaFR2M0tJ?=
 =?utf-8?B?NmZka3RxMUdVbDJad09SL0N1UUpZM1lvYnJxR2JxUVlmVHNuY3ZVTXhldzRR?=
 =?utf-8?B?MG1RSVN5V1RGZzNNMi9pdVlwUi9Wb0hSU3FGNDM1cTdNaTJ4bXMrWXRCZ1NZ?=
 =?utf-8?B?d28zL3l2NmdwYmZnUnMxeDJtQU5sVWFFZVlCTTRUSUZRWTkvak1kQnlDckZY?=
 =?utf-8?B?TzA4UEZ4aUo5aldRWjZVU1JNTUwrbm4xQzdnbmZTRWlaQ0UreElIRzZTY24y?=
 =?utf-8?B?MkZKNUhvQlpMK2hSOVQ0Q1FsRDZ6aWhrbFZtdnlGandpQVo0alJiN2VsZzVB?=
 =?utf-8?B?MW1zbUlKZHFZZS9nK3ZCeHhRcERYTkt3ZmpWaGV5VTBLZXNnMlRJaXZObzEw?=
 =?utf-8?B?SC9oODBhVFRTT1ErVjlRclpTMzdYNk1PRDkwM0tyU25GM1ZTMlhpUStVVVFI?=
 =?utf-8?B?WVFCRkdZb01HSFRoOUZjcUY2TTlKRnZWaTZEb2ozOTFWRWJJWThzOE9yKzkz?=
 =?utf-8?B?UmxQOG5RWSthcTBWRjVSOXp1RTd6WndHSjg4S3AwZW9HbS9JM2JDTEtQYklq?=
 =?utf-8?B?QUFTdGZnZjI4V01UVDh6VG91ZmNuU0p4SU1la1pMQlFIYlpERFF0ZzJyZno2?=
 =?utf-8?B?aGo4TGErZU9oL29nVnUzNGt4STAvT0JYaHlZeUtiRGQyL2dUbkNUN1Y1citU?=
 =?utf-8?B?NnBnYm5BSWYwV01ZdU1kRWNOSkUwTlpqWmZuMU5acGJ6OVAzdTh1ZmVsTTZl?=
 =?utf-8?B?TUduNC9oUkNVV08wc04vcXNrYmxncjhJbWRDRDNjZllXdkZKZ0UyR0gvODRw?=
 =?utf-8?B?TzVNNWQwSURDdjBvUjc1bWU4MUdVb0lCYTNWb0M2R1BFa3hKTkRsNWRYM0ho?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2faae464-890b-40b6-99b9-08dc4d203a71
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 23:06:39.7511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZqkHLHIIhypoV4eX9kWn3p9wlBdeJt3UdX2qPuM8HPupOWhtcNPKhe/tL2JYERf7Z1E5J08zzKOh8t5UvhSqpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7290
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

Quoting Jani Nikula (2024-03-20 13:01:23-03:00)
>Prefer the intel_de_wait*() functions over the uncore interface.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_dpio_phy.c | 7 ++-----
> drivers/gpu/drm/i915/display/intel_hdcp.c     | 6 +++---
> 2 files changed, 5 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/d=
rm/i915/display/intel_dpio_phy.c
>index 4ca910874a4f..2d7a71c8c69c 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
>@@ -399,11 +399,8 @@ static void _bxt_ddi_phy_init(struct drm_i915_private=
 *dev_priv,
>          * The flag should get set in 100us according to the HW team, but
>          * use 1ms due to occasional timeouts observed with that.
>          */
>-        if (intel_wait_for_register_fw(&dev_priv->uncore,
>-                                       BXT_PORT_CL1CM_DW0(phy),
>-                                       PHY_RESERVED | PHY_POWER_GOOD,
>-                                       PHY_POWER_GOOD,
>-                                       1))
>+        if (intel_de_wait_fw(dev_priv, BXT_PORT_CL1CM_DW0(phy),
>+                             PHY_RESERVED | PHY_POWER_GOOD, PHY_POWER_GOO=
D, 1))
>                 drm_err(&dev_priv->drm, "timeout during PHY%d power on\n"=
,
>                         phy);
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i=
915/display/intel_hdcp.c
>index 9edac27bab26..d5ed4c7dfbc0 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
>@@ -369,9 +369,9 @@ static int intel_hdcp_load_keys(struct drm_i915_privat=
e *i915)
>         }
>=20
>         /* Wait for the keys to load (500us) */
>-        ret =3D __intel_wait_for_register(&i915->uncore, HDCP_KEY_STATUS,
>-                                        HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD=
_DONE,
>-                                        10, 1, &val);
>+        ret =3D intel_de_wait_custom(i915, HDCP_KEY_STATUS,
>+                                   HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE=
,
>+                                   10, 1, &val);
>         if (ret)
>                 return ret;
>         else if (!(val & HDCP_KEY_LOAD_STATUS))
>--=20
>2.39.2
>
