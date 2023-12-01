Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D47668013C7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 20:56:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A7310E953;
	Fri,  1 Dec 2023 19:56:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D000310E94A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 19:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701460601; x=1732996601;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=/GMpReEsT4IizEbD5FNUtfWKP+X9yV4DFDFr44KWd9Q=;
 b=e/jty3+qKURv03V36B/59mT6Mvv5pZQV5s+g7ld99P5FA4kkfDFotSjo
 ulRdzAkZ5Qu15U+RoNjRMXpaf8uSjak4zJuHIF/MXCHNqKe8lkpyrYfDn
 X4uhzA5mpK4bxxkI/Ph8RtPINlpQK5wyA45DKxziFneA17JKh7iFlPKd5
 /qr8Ye/3DJTCf9URmFUeBthFyPaknX28xC5Fo4de59wZ4luZrazReIXp4
 xFaz+gXS28vPOJ6w4FO/+QM3aTpeHB9FeC4LXMVKWctiOumSozL3c75iH
 EkVRh7uUWc6fZBnf74Pia6q4iNgowHyYkRXCvDYPSmQnGfELp2AdZMxB+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="6795631"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="6795631"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 11:56:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="773543006"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="773543006"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 11:56:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 11:56:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 11:56:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 11:56:38 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 11:56:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ebW1bxLTuJyIzb1TlicbZD2MeSbGn/jEWhOOQ4FLp+85cYXQp3xAHnsNwyVRWMAtfruaW667eNgFCF7lpUHvf18tWmTw81cM8E05zudWT6xZV3Qgwl2DWcqjhxWiKgls8gVcxjO2IvqghdA1Slmeg+wm5NpPthxRCanOGo4NIa8+7zmyQ/3dXd4bPEk3jZhcv4JFsQJuNcncQgJfEFbEwBbfeco6rlPBoK55eaXUEdVcujfgjjeJAA9SxW7c4iyLEXYwVjs2gs0u0FMPX+Jku92ruL9J2CYTGwlNoe1K1Twah78bb1/RReykRT+orteTnRNz+ZbW2gU978BMzqp8LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1TQCNPs9549pmeCBCvToMMAG/UQNJMAhGfZ89Xd9Wjc=;
 b=j3zdwS8V1Pu1jt6eC3cXwE5e8FWa8BJKH9cq2y/QXk+RThx945bRry2mKiok+q/H9fjWwgrPWQ/7QMZsDG26m6UJZ9IAeVXMICKALp/zMea5/KPiMUqF52Urkydu/yZZ1qbcquUYWaNWE7a7h7l6K5VokEms3TkXNnvXWpebfjx3mOQ69V+IMsuYGhMWDJphoY1tMoHZMBGlkr8KrkMuoaF7G14hN9UE+0mECJxnTUhte2IB0CE+pXmdVXAVRILfawgXNCAastSu/uAmmSWkrzMKl8uKSvXzlYuKClVVg3LRpsRrblXzZ5feWoC1Ib5FzUn92moVNwtxvyMs0o+FIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB4784.namprd11.prod.outlook.com (2603:10b6:a03:2da::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.27; Fri, 1 Dec
 2023 19:56:36 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::3964:7725:b677:28c6%7]) with mapi id 15.20.7046.028; Fri, 1 Dec 2023
 19:56:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231128115138.13238-3-ville.syrjala@linux.intel.com>
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
 <20231128115138.13238-3-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 1 Dec 2023 16:56:32 -0300
Message-ID: <170146059250.30932.3685141608986291696@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0082.namprd05.prod.outlook.com
 (2603:10b6:a03:332::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB4784:EE_
X-MS-Office365-Filtering-Correlation-Id: 6305607c-3779-4cd0-2a3e-08dbf2a7a03c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jmqtUgyEoWxmm0xbAjohy9se2DFBuDyOZpa4eziMbBOa0wbDDxGkwS08oLSa3EucCXCXA/KmvqTjSl06a5bA0CQpGNW4Ee6upOPPiJROoCxR4et+ma2WkdRx5MfPMs6rwD9MkqWefNX4ah8qigPBvNFitq0M4d0dkGmKfZVZ3+pLKG+WEnmHA/vz9E3l/9Y1leKD5b1NDdntZTnBfqqxmTxlo2e7a7akLkxKS/gZZa9/8N9LngJXNtRvtHA8koxPQyq51HLN6zJFtH7pbExyb9GTCHzCnMiVdv39j1m0z0dSWFIGnXADR6h6mTFb5lKZ1CKYRsY8geaBCdyyd7pqVvHX3CYT7i3y1kJawPFI0czPSTZ7DFtvF2vlUC+9k9JF7ehGdTZPcBSYNLK9VJykmvAiEXd8ew22t7XTmagGZBL2vQhMBMClGaeX0lf9S/7m29XfKKcXlQhkxGx3rRR0sktCy/ShBDqCislNC5IYYlxn4nIM8wEqG5B7qR4j4LX4Sm3msV8K6ncRBJhSv++9AKiQkPDYg3fgkq9BCoRJDn6N3YV3sai5/CTBykfpGlN8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(376002)(346002)(366004)(39860400002)(396003)(136003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(86362001)(26005)(6506007)(83380400001)(6512007)(9686003)(6666004)(5660300002)(8936002)(8676002)(41300700001)(2906002)(4001150100001)(6486002)(33716001)(44832011)(478600001)(316002)(66476007)(66556008)(66946007)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzVnMjBVbmlvNGhHaXBTaEtucUtFUGFRSlF0ZUU4NGcyaXo1UWZad05uS2ly?=
 =?utf-8?B?VFBqcnVaOXlUdXB3d2VDMU4vd2ZmZEFDejM5YnhDMXAvQjIyQU81MHdpRzR6?=
 =?utf-8?B?VXV2WjZFc3VmSElqNFRBak1rcGowV3VDZWlEaGU1YXpvSzZFdjJCZ3RHVkpJ?=
 =?utf-8?B?cHdQd3ZJNXNIZkp5VVI3ZTM4ZXU0RmNVcFo2Y3RzNytDMzM3aDRUV3ZGMHpU?=
 =?utf-8?B?UEcrNnZOSU5XZ0dPU2o5VHYxdll3KzFNREJBVVhlaEs2aDNWdjQ0N1IyWWMr?=
 =?utf-8?B?TlFJa3B5N1dUK2hNZWdCem9uVEJwaW5wN2k4OGJvUW9GcVJVQnY2RjJjYVpR?=
 =?utf-8?B?N2Z6bG9uQ3p2MVdvNmVmeW9maFZpK05FQUZabi9ySHY3UDVnMTBneVhVMjJx?=
 =?utf-8?B?S29iM2V6NVZ3TGgzZk5rR2dOYXUxUlhnVlp4OUk2QnVYOW5MUHMyZ3NvY2RL?=
 =?utf-8?B?S2Vnc1pXSzdtZkpWeU1ZbkdDQlFoOWtFUXhVR3lsVVlIaXJUdDE0UyszSVVE?=
 =?utf-8?B?cDJ3eHNsQ08rMi8xVENVMFN0dWd6ZVJLT0hJaStCemF4ZE90dDBSRzMxdkx4?=
 =?utf-8?B?MmlYdWwvekhZWVhJTXVtK0x1RHhuUS82eTU4aHVrUEM3RmN3TnA2TUphZDFF?=
 =?utf-8?B?MEJCSTBLdzNTRXZFYU5qRng4eXpmN0lYVDgrMkpNT2lLOXBFR1NubDZHWEtL?=
 =?utf-8?B?cEdEVGh0ZmcraUUzRGVKUDBZQzVrYzNYQ1NMb3FlM0dHK2JmMFdYa2xBbGRC?=
 =?utf-8?B?WUpWSjZVc0RDeVV4MUlPTUpYTExQeGxUb3VjYUhjM0I2d2ozUEswWWdQYllz?=
 =?utf-8?B?ZERyd2xkSW9iS0grQTFhVXlvRG5zcVpVU1lBaDRmb2lvdXZEbmJHaUI0Wm5O?=
 =?utf-8?B?RGFOZWpQTkxNalhwaThnSitwdXN2elZORjRqVHZTemFBNXZJamtBWUxiOFhC?=
 =?utf-8?B?R0RzemRscTZEdE9lNE54TktGZGNZVWxMdUF5d1BXWkZhaHU5ZWJJQVFOZEl5?=
 =?utf-8?B?d2NaektyVURlWTVFSTNibktOL2ZWTmsvRWZERjZjYUlCRkZSY2ZIQUtRbTRt?=
 =?utf-8?B?U2svNEpkbW9uTEh4aXQydUpvSFJ0ZzBJZkRJcktlQ2YvOHdDSVpMeGxWc0x6?=
 =?utf-8?B?Q1pwNjZsVXhHU2xPQlBLVEdGcDBrRTg0UVIrSFh6R1RhNFdLOGlXU2FrTUda?=
 =?utf-8?B?ajFXa3hZVGk1ZnRITTVSK1JiZDU0bEh0MlIrRUJvazFIWnpXSm1rZ2s3Njd0?=
 =?utf-8?B?czA5dkRHVmh4UCtRZXVGUDI2bjU3MVNDYlh3RHhvZGYyTXk1KzZBdHYxTmJv?=
 =?utf-8?B?MWhLWkRBbmpwVDVyUmgrNzFoNmU2Sjh3emtoR3hhKzBJTGtrMVZpV3lOSHRY?=
 =?utf-8?B?a25QZUVYS0dJQlpPZkZ5ejk4WUxaMDRsL0Z1SXIrNkIwdmNEMHhzVTBNSEJM?=
 =?utf-8?B?VjAwVXlSMTJkTlNuY3pJSkJaS1ZjRkpsbG1BVGFPSkNFRyswMWszSUNIak9X?=
 =?utf-8?B?S0FRU0toSERuc0FuRW9EWU9DSE9mazc1T3JnbW5HcUdnc2laWXMyajYvTGZE?=
 =?utf-8?B?dEpBejZhdk55M1VVWFNlTmw5cDl1dUwxVm5HVWJmN3VEZ1ZXUlRxTUFYdjZ6?=
 =?utf-8?B?NE1IZUprUFlYUlA5Z1R5d1dtSnkwTm1GR1dXa2lZc2J2ZkdtUjM0eVRUM1Ev?=
 =?utf-8?B?RkF4MCs0OVorQ2FiU29pQU1IVkFjUnZjcU5zK0FqSzlrdUpSSFEvcXRuZklO?=
 =?utf-8?B?UEVnWWZLZmJvTzByT0gzNndCL1NxT1dibEFwaW9Rb0xHNTl5UGhaNnF5cGFT?=
 =?utf-8?B?ZGkwdWl2elN6ZEJmcy96b2xoN0JLSWttcFovSlZBUG9wczNSMmpaTTkySGx1?=
 =?utf-8?B?Sm1jcUNtc1RKMUhpWkp6TjlMcmdLcFltamxYYXZRTk1xNkFhV1ZQVXZ0U1Y0?=
 =?utf-8?B?ei9TN0pET0ZxYjQ1dDhhZGhObTU0TDltaFVxNGpRNU5kOHczaW9nSW5xSW1H?=
 =?utf-8?B?SCszZCtVR3RrUEkzR1MvRVhaQnY5WXpIVnEzQUdZUm9sdGYrQkFGNkZvVGpN?=
 =?utf-8?B?ODBGRW04SWpiYXc5Y3ZOSHFsR3RmTFdwWEY5TzV6dUNRdkJMOWNnMFlGeXJp?=
 =?utf-8?B?U09pcnB3bERFZHIreDJyVWJVYk5ELzlyR01WZzhYbjlJaGo0RUs2WkRTS0lJ?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6305607c-3779-4cd0-2a3e-08dbf2a7a03c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 19:56:36.6403 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2QSwhhkSNjcjWpe74h4b3Fgc1YU+x+zD45wL4lCyrmLn2cOJDQii2KaPwlyS9vI59fH+Oj5wKHYLwF2gJpqa/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4784
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/cdclk: Give the squash
 waveform length a name
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

Quoting Ville Syrjala (2023-11-28 08:51:32-03:00)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Replace the slightly magic 'size =3D 16' with a bit more descriptive
>name. We'll have another user for this value later on.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_cdclk.c | 6 ++++--
> 1 file changed, 4 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/=
i915/display/intel_cdclk.c
>index 0dca29ec799b..87d5e5b67c4e 100644
>--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>@@ -1800,6 +1800,8 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>         return vco =3D=3D ~0;
> }
>=20
>+static const int cdclk_squash_len =3D 16;
>+
> static int cdclk_squash_divider(u16 waveform)
> {
>         return hweight16(waveform ?: 0xffff);
>@@ -1811,7 +1813,6 @@ static bool cdclk_compute_crawl_and_squash_midpoint(=
struct drm_i915_private *i91
>                                                     struct intel_cdclk_co=
nfig *mid_cdclk_config)
> {
>         u16 old_waveform, new_waveform, mid_waveform;
>-        int size =3D 16;
>         int div =3D 2;
>=20
>         /* Return if PLL is in an unknown state, force a complete disable=
 and re-enable. */
>@@ -1850,7 +1851,8 @@ static bool cdclk_compute_crawl_and_squash_midpoint(=
struct drm_i915_private *i91
>         }
>=20
>         mid_cdclk_config->cdclk =3D DIV_ROUND_CLOSEST(cdclk_squash_divide=
r(mid_waveform) *
>-                                                    mid_cdclk_config->vco=
, size * div);
>+                                                    mid_cdclk_config->vco=
,
>+                                                    cdclk_squash_len * di=
v);
>=20
>         /* make sure the mid clock came out sane */
>=20
>--=20
>2.41.0
>
