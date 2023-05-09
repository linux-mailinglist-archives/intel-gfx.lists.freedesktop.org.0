Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0506FCEC0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 21:50:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F1810E071;
	Tue,  9 May 2023 19:50:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C29310E071
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 19:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683661837; x=1715197837;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=RLrIhpWL4EzSt6xzsDxIFJSi52MN7ekCZc5mCdGCIe0=;
 b=hnpnYH7FlLrpzKpDrwnHlnBcjP2rcm61AmIvzynwSVGUjD+qtQD3IbhJ
 RUcgT2GkMpSba/1raVbmbJSRWNaaVBASUi07YVEynUj74vyZsxu5wFbLf
 buCuAY8o4d9xwA9K693RX6DCsi+BCU3K2gUAyZVFzqvj0BmWct6Q+zARy
 rc9ZkRwTg3FZgeLfKXPv9ECdpJzNG10+W2BVHP1OO+IP3OYD2jzMVssAW
 5Zmosp5eEk1Bp0ml+81vTTfldMYLh6VVDp1UP9kN2+r0+Ou5QBlaG+M4K
 fvgJn0o6X0rcj3qO5zpfp2ppnbfXSSeuwr+ch9LqwuNetF4nX+71wMpzy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="378132489"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="378132489"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 12:50:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="768638708"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="768638708"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 09 May 2023 12:50:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 12:50:35 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 12:50:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 12:50:34 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 12:50:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JdlIQWWNVFEAbRtlj0oyjlfUIwKf32dxyhq/ddMUZxvNLcPZAejDZrmRmFw3K7jtWa6u3UsTUN0hJ4aUJi2/4QhCvs0gCQsujoFeplE4xneWlWG+ZCbLoYC1nFnq5Q67rx/cy4VDZ7fJwfgt46ZGphVMnJ64xOcviBiRxo6kYkz1Xp8BFaPX/vf7XWWsdh06M6mduHqVdkKnRRZ0O7FMVhTBm8+TCGx3UjRmztLOf/emFMyUND2kXvTnQuaa2AC/oS9mQuTUO9bPWWN/4DxwuIYWKmkULTjUBJiXLn6PQ01Rd4CLzYSqvdRgqE1ooJIUAR4WazeeZBKynF+swnpOlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFlJVisYTOeYSYYTqN2kIrNOmojcbxpIHYgxE3117qE=;
 b=DZN2HYsfVwsFfq7gcQNTxrW+oDdCL5bZM0kvXvHtCw1A37UPVCzuM6cPkNgK5sg1NqLHV3rWOhcbrVobiqGPVs1zRUgPQBLHubXSf1dF1Oo6rGBs534ptDo0bRe3gRzlC+6EhWuM9dyylimRfJ31CPv4cWebOPfW5tmPDw3inMPK4bdMXW1/jTM9PKBsKLPYnYOakf9ohuUnei4F4WxyrCTSXclIhC1xjbXsRF0dg0/FGEbmdXKrdeEV2aXiZkOdmybIKts1U8aAPxgB1GB+TIkCUt46v1lvTb3fqsHlGyrfS2XODS4Y+EYF/pOHeO+IsKvuHcnz7XDv2goH+Ak1DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB6574.namprd11.prod.outlook.com (2603:10b6:a03:44e::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Tue, 9 May
 2023 19:50:31 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 19:50:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230509160206.25971-3-ville.syrjala@linux.intel.com>
References: <20230509160206.25971-1-ville.syrjala@linux.intel.com>
 <20230509160206.25971-3-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 9 May 2023 16:50:25 -0300
Message-ID: <168366182576.1309264.8613818833801275880@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR11CA0072.namprd11.prod.outlook.com
 (2603:10b6:a03:80::49) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB6574:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e8f6b91-e83b-4ae4-69e9-08db50c6a57b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gnVEIe9RC7kjuHv3vmiIyiK0FUQ8ghyZJG7HKgRaOQH6Sw/LA/sLQtSuKGJCT2kbnsDtl+Ha2yBkt6ajZe15ohRQxMTFqwxkCje1HJPR9SbaD0TegRnXWpyUGrZqpulFlfslE3JaVyfYSaRENXJPIxHVcfVNVx3yNa5z1nmsNUYY0THanmi34wdjcx/nMMvuHi85iPIV0SdUZ/YdF6RIjD/Bt8f0tlqesYAGvNbqwjne0/GwHdwj9OndOXpmk7+P72q8a8m1ar9CgY2m+pEzKS9AiIIDahb21yTMuQ0gl6oCN3kbDZnwmNCLgmRuCu5dk39c15f7ZmZAB8Zh/Z1GclF3TkE9RABep82qdx6SUag1ytC3+V2rQnt2/GKO+o4a3ynr8y7P1m/KNF1/tr3EvYO8eWmcWGyuaGPi2IRXGDktYgYXF8R8J2oPElVBFws9bx1KHBpQZkzH8ix/dzT1klmINZP9iT43Sljht2vj9J0h6KjBlgns5WGIi4ls1vILRm1iYd9YjuCmeJHKIssiqULc7x8HQ+EiBK5w6OZ7WPGfC9HoXSnHZqiquj7FDZZu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(376002)(396003)(366004)(136003)(39860400002)(451199021)(8936002)(26005)(2906002)(5660300002)(66946007)(66556008)(66476007)(6666004)(9686003)(6512007)(6506007)(44832011)(8676002)(82960400001)(86362001)(6486002)(66574015)(41300700001)(186003)(478600001)(33716001)(38100700002)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TW5MQld1d29WRUZReWlLTUVlUGV6M1J1bmdFZXh0ZmZPZzhHVllqa29iVlZH?=
 =?utf-8?B?VDhYbkhnTUdJMGFLYXpQYUwyQTJxOUc4VTZOem15SXg0bkdVSGxFSUdDRERB?=
 =?utf-8?B?ZUlIQWVsNGIxeUNaUDJ5RFFHYTkvM3pCQzRwRnVXZG1DZTZrbnUwV1NuemdP?=
 =?utf-8?B?aHJ0OCt1cXlVcklLaXNQbmR5WXlmUlJaSmpYenlzeVljVXNHamdPRjRYcmd2?=
 =?utf-8?B?Vkk0SVJST3U0SWt1M3FrNEZmMmNGQ09weVExb0lGRnltc0ZNODJiWldJU0xv?=
 =?utf-8?B?akhJK05qWXRTQ1VsR0FDck0weFQ0TFFQc3RnM0dzakdxeUZBMXNhbkkxMzhp?=
 =?utf-8?B?UlR3bEV2bGxkUkdtajhndkoxTDgxQUlBa3A4MlJZcDVWRE15Q2R6Q25NR0NY?=
 =?utf-8?B?Lzd1aktrQU1tRVhZWlY4WDVhczJ3bFoxY1hDRjJLS2NhZk1iTSt4b0ZRRjFj?=
 =?utf-8?B?M1NjNXNReXNJSWFjUGFtVGkrVk8vNkpqcE8xYTNYYWY4eUNqMVRHRHhwYktk?=
 =?utf-8?B?SG1COU1IcUFuWktiK1NrOWZvTHhha0tVNCtHNkVJU004TXFRL1RuMzh0MHlP?=
 =?utf-8?B?aDJqYmJ4VE1DTE9mMWVWRDNMZWJHOXdZd24yRCtYaExNeG10LzNlUnhrTUtp?=
 =?utf-8?B?eXV5Yy9kajRyQ2hWNUJJQk5MQmxhSkNYdEFRRUc4Y0VOMVRPeWZSWUZZcURU?=
 =?utf-8?B?Wm5YMC9nMTBmNklJemZmcmhQQzU1bS9VM0EzeC9LWFRxUFBjaEd6ZmhGeE1m?=
 =?utf-8?B?b1RzRWhibE5yR1NidEhCOGs2Q2xLcXFzMmFTa3BXZjNKR3JSWWxYWTNzU0Rm?=
 =?utf-8?B?WFZOUmRtbmo5RVU5MG1NWDdRaVVhVjhrRFlvYzNMNW10U1BqeVF6KzllSjFB?=
 =?utf-8?B?c2czMUI1SHFIaS81eU5PaXJXdnhYS0dGWGRvMkN5cCtReklwNnFuT3pMSVc0?=
 =?utf-8?B?clc3c1RMVGlFVm9OQVU3QXM1cEZMMnpWbmF1TDhnVVpOalVwMGNkVnNwSWVT?=
 =?utf-8?B?eFlBVVlzSjByQ3ZOUzR6NGJTcUJjYUNQVEk0MjUzVTNHbDR4K09vaUV3UmQ0?=
 =?utf-8?B?bmVkWmVpa1B5eWtmenJpSUtGTm9pNndGNjRTMHJUdTNaaVVZcGlicE9BV1hT?=
 =?utf-8?B?SktSUFN6VktjZk11V2poVGkzaklUT1kwTmFqdW9SdFlEaWZBUWhVMkFzaFV6?=
 =?utf-8?B?emhIY0pUQy9mdC9rRHl0YnB4RUI4OE50VFc1dkVBdVhHSmppYjkzamN2UjBO?=
 =?utf-8?B?dXV5YStHOXArejRocG8rQ28wWk5UZlpQMXhEY0J1VUpxMFhWYkJ2SDYyODVB?=
 =?utf-8?B?M1Zad1VZc1pjbGwxalUzTmN6ZldaV1U3bVVicmdFRXpQWUpxYU5RcWEybGRZ?=
 =?utf-8?B?UFlPNG5wdGluMWdoZ01qeTM3TWRtZUdaN2RqZ29MMHl6ZkFWeFdPckowaml3?=
 =?utf-8?B?cjJYT055MHVPZWR1cXVkVFcyRUhvUm5MN1A4cjUzNE10aVRWTnBMZVpnSlJU?=
 =?utf-8?B?SUJTNUZkRDQ4VUVUcUN6TnBudmc4d1hJRk5QZmtEZWNuY2NmUUtDYVJraUl5?=
 =?utf-8?B?Y3hPNkR6RWFvQ1pCWmI5TnBqWWg1UmYzakxSdkc3alhrVHcvT3NSMnYyL2Rz?=
 =?utf-8?B?VEVpaGVMbXRGQUdmWUR3YkFzQ0FGdDBsK0haQWRkOXpJTjBNK3hrdytBM29r?=
 =?utf-8?B?RzFlV1dCM3hraVVGbExDSXZLMWRNNHRKY3RKcGlLcVd6b3NSQUNGTGRDTm0y?=
 =?utf-8?B?bVBMZnhHc2RxZlNKSkFicDB6Qm8xQVp1V3pGdGQ3SUVVZmptMkVIcnltS080?=
 =?utf-8?B?b1hVTlhvMFAwaE5jYXpHZkNmRENFdjlGZjE4a3VCdkJja1ZIbUZheEJUZVFB?=
 =?utf-8?B?Nmg1cEI2RitzZmFvR3p5ZTM0UG03SFU1cE1lc1VvQnRlZmtmMWFSZ0h2VUxp?=
 =?utf-8?B?eWdOS3BxeWxUcmNZaHVOWGdld2Q3dVV3OXFlWkhvTXNSOHBBcjUzRlhxalk1?=
 =?utf-8?B?enNKYStOMXErd215NVNzWFZDTUk0VWVlQUFaSmRVeDhwMUg3YlR2REdlTVln?=
 =?utf-8?B?Qmx4TWJNb2pVZnRkTUl1N1ZxUE5uSS8yemI5M0hmMDlrLzJjbUp0STFxZkpY?=
 =?utf-8?B?RXdXQjF1SW9hWmhnYmIySXhnNzR2b29ReUJoVFNIbjFpYVZhMExzQVVrOTlE?=
 =?utf-8?B?a3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e8f6b91-e83b-4ae4-69e9-08db50c6a57b
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 19:50:31.7389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hkGaYMSH6cGMrv8AxpDorIjBb7h4k5FDzU9MlS5ah9rIgosUvSVdm+uQUWLd3yEsLMdkTLQat9zGwFXTaSSF3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke
 intel_bios_is_port_dp_dual_mode()
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

Quoting Ville Syrjala (2023-05-09 13:02:06)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Now that we have encoder->devdata everwhere we don't need
>the intel_bios_is_port_dp_dual_mode() wrapper any more.
>
>And while at it let's include it in the child device log
>dump as well since the logic in there is a bit more complex
>than just DP&&HDMI.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

As far as the refactors go, they look good to me:

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

Regarding devdata being everywhere, I did grep for places where
drm_encoder_init() is called to see if we populate devdata. If I did my
homework correctly, it looks like we don't in some places. However I
guess devdata should be available in the contexts where
intel_bios_encoder_supports_dp_dual_mode() is called. I defer to a more
experienced reviewer for this part :-)

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 14 +++-----------
> drivers/gpu/drm/i915/display/intel_bios.h |  2 +-
> drivers/gpu/drm/i915/display/intel_hdmi.c |  6 +++---
> 3 files changed, 7 insertions(+), 15 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index ac0fc1993376..64eb11a45265 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2677,8 +2677,9 @@ static void print_ddi_port(const struct intel_bios_e=
ncoder_data *devdata,
>        supports_tbt =3D intel_bios_encoder_supports_tbt(devdata);
>=20
>        drm_dbg_kms(&i915->drm,
>-              "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%=
d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
>+              "Port %c VBT info: CRT:%d DVI:%d HDMI:%d DP:%d eDP:%d DSI:%=
d DP++:%d LSPCON:%d USB-Type-C:%d TBT:%d DSC:%d\n",
>                    port_name(port), is_crt, is_dvi, is_hdmi, is_dp, is_ed=
p, is_dsi,
>+              intel_bios_encoder_supports_dp_dual_mode(devdata),
>                    intel_bios_encoder_is_lspcon(devdata),
>                    supports_typec_usb, supports_tbt,
>                    devdata->dsc !=3D NULL);
>@@ -3426,7 +3427,7 @@ bool intel_bios_is_port_present(struct drm_i915_priv=
ate *i915, enum port port)
>        return false;
> }
>=20
>-static bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_b=
ios_encoder_data *devdata)
>+bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_enc=
oder_data *devdata)
> {
>        const struct child_device_config *child =3D &devdata->child;
>=20
>@@ -3445,15 +3446,6 @@ static bool intel_bios_encoder_supports_dp_dual_mod=
e(const struct intel_bios_enc
>        return false;
> }
>=20
>-bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *i915,
>-                               enum port port)
>-{
>-  const struct intel_bios_encoder_data *devdata =3D
>-          intel_bios_encoder_data_lookup(i915, port);
>-
>-  return devdata && intel_bios_encoder_supports_dp_dual_mode(devdata);
>-}
>-
> /**
>  * intel_bios_is_dsi_present - is DSI present in VBT
>  * @i915:      i915 device instance
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i=
915/display/intel_bios.h
>index 8a0730c9b48c..45fae97d9719 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.h
>+++ b/drivers/gpu/drm/i915/display/intel_bios.h
>@@ -247,7 +247,6 @@ bool intel_bios_is_tv_present(struct drm_i915_private =
*dev_priv);
> bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2=
c_pin);
> bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum p=
ort port);
> bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port =
port);
>-bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, e=
num port port);
> bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum po=
rt *port);
> bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
>                               struct intel_crtc_state *crtc_state,
>@@ -264,6 +263,7 @@ bool intel_bios_encoder_supports_dp(const struct intel=
_bios_encoder_data *devdat
> bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data=
 *devdata);
> bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encode=
r_data *devdata);
> bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data=
 *devdata);
>+bool intel_bios_encoder_supports_dp_dual_mode(const struct intel_bios_enc=
oder_data *devdata);
> bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *d=
evdata);
> bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_dat=
a *devdata);
> bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *=
devdata);
>diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i=
915/display/intel_hdmi.c
>index 61a2b63ab4d2..c2464f98c76e 100644
>--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>@@ -2400,7 +2400,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector =
*connector)
> {
>        struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
>        struct intel_hdmi *hdmi =3D intel_attached_hdmi(to_intel_connector=
(connector));
>-  enum port port =3D hdmi_to_dig_port(hdmi)->base.port;
>+  struct intel_encoder *encoder =3D &hdmi_to_dig_port(hdmi)->base;
>        struct i2c_adapter *adapter =3D
>                intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
>        enum drm_dp_dual_mode_type type =3D drm_dp_dual_mode_detect(&dev_p=
riv->drm, adapter);
>@@ -2416,7 +2416,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector =
*connector)
>         */
>        if (type =3D=3D DRM_DP_DUAL_MODE_UNKNOWN) {
>                if (!connector->force &&
>-              intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
>+              intel_bios_encoder_supports_dp_dual_mode(encoder->devdata))=
 {
>                        drm_dbg_kms(&dev_priv->drm,
>                                    "Assuming DP dual mode adaptor presenc=
e based on VBT\n");
>                        type =3D DRM_DP_DUAL_MODE_TYPE1_DVI;
>@@ -2439,7 +2439,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector =
*connector)
>=20
>        /* Older VBTs are often buggy and can't be trusted :( Play it safe=
. */
>        if ((DISPLAY_VER(dev_priv) >=3D 8 || IS_HASWELL(dev_priv)) &&
>-      !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
>+      !intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
>                drm_dbg_kms(&dev_priv->drm,
>                            "Ignoring DP dual mode adaptor max TMDS clock =
for native HDMI port\n");
>                hdmi->dp_dual_mode.max_tmds_clock =3D 0;
>--=20
>2.39.2
>
