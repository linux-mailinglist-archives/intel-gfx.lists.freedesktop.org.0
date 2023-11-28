Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C147FBA12
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C99310E4FA;
	Tue, 28 Nov 2023 12:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44B210E4FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701174498; x=1732710498;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=VzSAN0HPr1LiXZmf37Wsg7j61Qx/mpMBKmYjrp7ZPoA=;
 b=cz3kcwD276WExJadptAY10Ya9u4D/MLLfTowTnCRqTe2YVah6eCWhyBb
 S30rdIFmj7mrxfKoDkPzzMhvXRgfhHg4hRFaOYhTLh4ZhL7YeUlkedMp8
 jwV3ZvzN4R+sRoPknWbRyy80oiA5oIrMPuao2tBxKvuVZAsFjTyywnbJt
 /AXQiS7RPn1qLkVPC/o8u7TJlwF0u0pIQwVk+bf0XXAYhzbmgW8U7AiQ+
 WbFhTQ7UXiuPcaJZ6B45xAwVPA87eZecHCHJ/sEjdapNjlJVkhdpbna0v
 LMcvM8urg0vaf+Er5MTDXAn9pc3XXqWoKSdH2+y6SRl+4lYDPxyEJTVTM Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="372288004"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="372288004"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:28:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="16929596"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Nov 2023 04:28:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 28 Nov 2023 04:28:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 28 Nov 2023 04:28:17 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 28 Nov 2023 04:28:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oh0TQnWWmu0ZpCk247UvvRzT6sKdEoMsXWcqZ/p3G3Hd4Vrx54+6OzOzoVH25ML0TJfYcIQpEg001HVNnWEw7gGkAqLa09eadxzy4xRkfQcC4BYlb4EEIbj8tfXlsg3tom/RlsF57ncf6ixYFVSX389VrtBIAH93vVlIa6nrrZZ4f9kMsYOwAmOCmT1b4vYjADaG3XDJJmhRRQoPRs7BVnVpwIwwiozBmpLhD7WGm51s9Bu0QN7llOQ3pZOaYy+dLhSj81sZxklQPG3tXmKEh/aUVkLX5VYnFll4hhn1THHmKnh8JCLWugpa2234ifBuGVeGZPMOb7tyE0ggn62jlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0hvAfzfHMcSeBxknGzeToDjy/M34vX99bPIjJ+FWtbQ=;
 b=KDLacdJZlc9c+eyYbJN5/w+kk5570sK8K1hFnlCzhPqR346hlMMUD/VeNdlKSDWL99YheVFXEMjpaF5WVHNvFTDAyEOVf93MxVDshaDTNuAsz0Twe33bi/sqE0DK6k5uZbufS9YYEWMv9LRyO0//Rjy+5885WxfejX9KL8F1b0XSoBEFwH1syJMmyOQX3dTr5jDZc5HA9UgYrR29uoSROMJoWhnt1+Jgqo/kRrAuT+EdQB4DHnwYvihaLqZoZbHs0+i8jKMsL9j44dVrL+dkgGbFbWZfc1E5udskE4malbBCBgtoNUiZBIubXKEMjsqeh/0HHN0mN/BPvU65+DiAUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SA2PR11MB5065.namprd11.prod.outlook.com (2603:10b6:806:115::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Tue, 28 Nov
 2023 12:28:16 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7025.022; Tue, 28 Nov 2023
 12:28:15 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128102451.825242-1-balasubramani.vivekanandan@intel.com>
References: <20231128102451.825242-1-balasubramani.vivekanandan@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 28 Nov 2023 09:28:09 -0300
Message-ID: <170117448947.1445.15491860650190873050@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0092.namprd03.prod.outlook.com
 (2603:10b6:a03:333::7) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SA2PR11MB5065:EE_
X-MS-Office365-Filtering-Correlation-Id: c9a7997c-f501-4e5b-5365-08dbf00d7e88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Rp/Hay8McyTWQSABbUUFfdJGUakym1s5lbKNOy8kM12NfWjwJBZ/4gw1BGETd3csMRbbHk/ImZO3DwXMkKr0mwFabQ/tV0lJ69yQqMqy06AzoRP9eZkvd2HW9YCSBHnF5s+X+CwI195zvUoWJLxjztAcG5a7wknOgZxsJb/lGiEiX4EKj9+qCvhbsjYeaC5AZAraIfI1sw3rHkHkhc9boAzAZ/OUn0V4c4Mw3A0j27pucA/2Y0oBHi8IzQGmX+kr9N3NMj8iCxgBvhMiZak8QaQ1tCJUn21+582GZMjbVhiK6PHRd8HI8pejMo2jGDzijHy1oNEmPQfCgFvBHO9/JbbhinlkoyQ1LmxK9WPYmdDx0Ot3xeFoaokcRRMh5MYy4reTCgr3fD2i2i5WjH0xomr/ix6sL+t8BbduSkvzLI1CKhpl794TTKWZlJgWCuVONlh7hjJg1yCfqVuj75lzV08nRJeEEjTSBP3wbn5VSUjJl2U0dz37KOIS9tDJVWdV2e+EQur7KMfMyFaUlCjTjYqYYuLrzjhsJ9sn0q1MIpfv7F2UaXVeCV+Q29sW7UGS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(39860400002)(346002)(396003)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(26005)(478600001)(6506007)(9686003)(6666004)(6512007)(83380400001)(4001150100001)(2906002)(33716001)(4326008)(41300700001)(54906003)(66476007)(66556008)(66946007)(316002)(6486002)(44832011)(8676002)(8936002)(5660300002)(38100700002)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXJMZk9mYmYyZlN2R1lHSEpZSm5vb3dLK3Vwck14ellpaENra0pmNVpwWXBJ?=
 =?utf-8?B?NW9FTUFYQkg4ZWxnb1pPTDlCeWZCaGl2NE1rTTdWVkMwa09NUnZ4aWxxejlE?=
 =?utf-8?B?cTZOM2d5b0N6c3ExcjFDYm8wak5tTGFyOXZNYzExL2EzVG1BaHU0SFNHUmhq?=
 =?utf-8?B?WUpXWUR2Z0dlT09QQXhrSk41Vk80dk9oYWlVZk9YV1VRMEhIS3JQZkYvZW1s?=
 =?utf-8?B?V1hvclQ5Wi9sNy8ycVRaWFBRalNTU3hYNGRHKzNGV3lJSjJEdmo1TitjVEVP?=
 =?utf-8?B?Y3J1ZDZvNnV0c0twaXFURGxjTEc1cjIxdEVmd2lXNGROMlRPb0dKQWU1QXdR?=
 =?utf-8?B?RnE3WC9Bc3VrbWFDTUpKK3RWLzJrQko5UmlCL1dtaTJwbjZFV1FtVXpUNldW?=
 =?utf-8?B?NVNLb29yWnVMY2pNMUVFYTFJMmMzeGtJQWRXOGZPMW9vN2QzUWY0THhYdEJt?=
 =?utf-8?B?eWV6VXVTUTBoUGw1VytFVnMzTld6UU5RaGhyN01GeDUwdFdPVzIzVk1EZHJP?=
 =?utf-8?B?Wlk5bzRTTGxQbld1MHBEWXAzdnVabnpjU0paUFpXazRIYjhLeENQUnZDM3lG?=
 =?utf-8?B?Nk9LcnBrMHZhVkpOZ00vbXBwY2NSZHJpZDBCZWxIMThxQksxanM0RUxwU3Bz?=
 =?utf-8?B?QXM5NjZuQ256NHRTOHB1cHFBOW1BUFJUNXc5YWg1KzNSOUtMRE1zdXNLckp5?=
 =?utf-8?B?L1ZaNFBVRnA2djNqV0RQRXRkWHo0TWtKSGlLbjg3MjZyM2xCdlppQjZRT0Rp?=
 =?utf-8?B?R0h4eXNsd01wR2xtYW50emNmNUlOb1c4VzdZTkRaQjZCdUNSVGVYOEorbVdF?=
 =?utf-8?B?aHE0NmtiWlNSaVRHbW5JUU1ZTFlWU0FSTzYyTXpMYldCTUJDMGd5UThPR1Rp?=
 =?utf-8?B?Q1p5QTZzblZUNWRDMFU0RENZeW1KTkhCVy9meUJkQzBPbktFK3IxOXNZQjYr?=
 =?utf-8?B?bjNpMnJFYk1vUHc4S1p5MzRWV09oN1QwK2x4L1BZelNjZEVSd0NqZlJkYm8r?=
 =?utf-8?B?YUlDU001OCtWS3BCdENVU21zL0M4aVNYRlNaLzFNam5oblZ3NTc3L2pVNnFn?=
 =?utf-8?B?RXgvaXloYWl3azVuSDFlRVBRVFBWRVFWbFhQamxiRjFobFYrYlk1YjVha2ZU?=
 =?utf-8?B?OWJwQ093UHBhTDFlN0NoUjd3K0ViQStMVFBNT25MSE9uSHVwMXBCSkN2OE9h?=
 =?utf-8?B?ZmZkMUxVSy9GTFdaR0xmTTh3cnV6NldHZWl3a1E0WVgzYmlHTnlZSlpZN3Jl?=
 =?utf-8?B?WExKdWZ0dnoxZ1pNWlR2MGFDZkNsWnJIbkNYendtK25FcE9Rcmowc2x4eVE2?=
 =?utf-8?B?RG0yWHdRaHhjWFBsSU9WdGJMVFZmM0pPWlBFWGlHclhmbDFjY2VVTm9GbHJG?=
 =?utf-8?B?MzRvQ3pqT2RlRFZ1ZzZVM3VYaTlueW0vMFhvbmVRK3oyM1Rlbkh6Z2dZNi9Y?=
 =?utf-8?B?elF3K3JXZHVsYVZhRFdXaU9MMklmWEE1YVlmNFMxWUJhcFhORkZuNUhnZHI3?=
 =?utf-8?B?RjVkbk9pYkRya2Q2dEhtNjdDSS83S0hsdUgzMXg3ajFkRG9MMzhLSkVtZkto?=
 =?utf-8?B?c1NVOTZsc3pEVXFHdVA3M1lRTEVOd0NUelFESjRXTnZkcEhIVVZWVGZVMjNm?=
 =?utf-8?B?S1pKSk1XaHFUSTc0UXovN0lTKzF3VFRkMENXZVR1bytiVnF0VUpPa2lzeTJJ?=
 =?utf-8?B?RmsyN1RycURqdmxhN0FUYm1tWGtlRUlOOHFZOUhSdXlyYjROc3pDOU0yUVVz?=
 =?utf-8?B?KzNqcUdML2F2OUx3TURZV3hlYk1SeTIvbk8rTkpQNGU4ZUpvRUs0KzR6UlBv?=
 =?utf-8?B?QWNFSTBkYjVYelpEcWhUelVSenJPeFRUdU9Zc3c1Z25nSjAvTjg0WUpVNjRF?=
 =?utf-8?B?Z25JSjg3bWJXKzBBTEMzQnRGWWJoZmFrT1AvQnlsY0ZmZlZqYVA3UG1MWGov?=
 =?utf-8?B?b3ByanR3VnRHbXcxVTYvT1JRWTZBTHpUbktWb3BNdk9hU29VTElXZE55bTBC?=
 =?utf-8?B?bndMMGFZUWxEZkpabkdxUGlvaS9GL3MxVlFNY3hSN05qYjI0UERlRUZoUHdJ?=
 =?utf-8?B?TGczdmhkd0hjeVVyak9vZU1RQ2lCNk8reTdSVG9iL2U1S1ZCM1U1cWd5d1Rh?=
 =?utf-8?B?N0ZlVHV1UmxJYllUalZDbXZLNkFSS0lxYWgvMk5zVGdBTE1abW42dEprTXpl?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9a7997c-f501-4e5b-5365-08dbf00d7e88
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2023 12:28:15.4581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dpMfB69dlS4BVm0vhOYSFsmlqifjUm961nlFjxo95vKMTTXj0RGWqxgLCQYHpqXrAKJZc1hYcnmmKk2k/zIWKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5065
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix IP version of the WAs
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Balasubramani Vivekanandan (2023-11-28 07:24:51-03:00)
>WAs 14011508470, 14011503030 were applied on IP versions beyond which
>they are applicable. Fixed the IP version checks for these workarounds.
>
>Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@inte=
l.com>
>---
> drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/=
gpu/drm/i915/display/intel_display_power.c
>index 18ff7f3639ff..5f091502719b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_power.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>@@ -1697,14 +1697,14 @@ static void icl_display_core_init(struct drm_i915_=
private *dev_priv,
>         if (resume)
>                 intel_dmc_load_program(dev_priv);
>=20
>-        /* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p */
>-        if (DISPLAY_VER(dev_priv) >=3D 12)
>+        /* Wa_14011508470:tgl,dg1,rkl,adl-s,adl-p,dg2 */

Nit: I with those who think the platform tags attached to the lineage numbe=
r are
unnecessary.

Either way,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>+        if (IS_DISPLAY_IP_RANGE(dev_priv, IP_VER(12, 0), IP_VER(13, 0)))
>                 intel_de_rmw(dev_priv, GEN11_CHICKEN_DCPR_2, 0,
>                              DCPR_CLEAR_MEMSTAT_DIS | DCPR_SEND_RESP_IMM =
|
>                              DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMU=
P_CLR);
>=20
>         /* Wa_14011503030:xelpd */
>-        if (DISPLAY_VER(dev_priv) >=3D 13)
>+        if (DISPLAY_VER(dev_priv) =3D=3D 13)
>                 intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0=
);
> }
>=20
>--=20
>2.25.1
>
