Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AB76FAFD0
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 14:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A904A10E268;
	Mon,  8 May 2023 12:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9CBF10E268
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 12:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683548504; x=1715084504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+LftfHDutIUxuI/KnqCKC1ZIrIbmufcuICriDSU0BZI=;
 b=erQp2G3X8bYt2MqqyUluSNKhd3/ad/oRZSmHU193I7uk3gK2dw1HG2FS
 6vchNyNDpcp/GBzuaQWfn8JQRyvxRUR4F7A5tUSnXz5Ide1m9e+qyrv8T
 micO4F1CR+aw/GgwIvioTWyYPJOxmn9v78S21VHaL1gmteETKoZqAun/b
 AXPHj15Lhn8bD64DyKe54W67+SdM61Zi6f3kAnGQAfPVJSVWW5LGbDqPa
 ZZgakRycbkPlUS/MPapIi/VHDiaydPhKnW8ewOdDRi73HPYxLFWncRkrg
 mVmkF0WBkhbQQ+M95QJ2b/+QpUinbp158odvSXMUfOvDfovQ5ZhudOa2a g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="352685762"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="352685762"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 05:21:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="842669878"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="842669878"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 08 May 2023 05:21:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 05:21:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 05:21:43 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 05:21:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 05:21:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hQ4ddlX5qN5zQf3a6CBc6LezCetDSvRUpD8NW6+zPU9GfMUOpoDqAgVZuSgljSI9SAW0gIbRpKrDN8PGtKmkxsJTOLaI/QS3qas1CnlXkn6PbhQg/cwBndAxrsl1JByTEzecBK/xiSCgBexAsJyRa99i2t3iZuTFKVWfeiRNOj6Nvni65IuzR8NnCtHNRG1q+5VZXJNwzyXv73F8Mp15NdFHYygWHlo6v8MJo1BLJsiq7O82v/69/Jtpo31g6pfw+yX0jUt3eJoLzVynLPD8qhFpoaNseM/pKU6GE8HfEe3R6qN7pEVW0KEKwUA4Tu92d9OjtOAue2/x8q0ZLpP/uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xtduaYAMMRon2H+jJaxnOH+MOrQJmAKDoRF9QGfOAIw=;
 b=SS1JbMH5wL3OKRkgayw62lG/p1jwaZUb3Oo9GVjqwPw/1Xo/x4Kzlziv0Vt0mbJkzBFdPa4nxaWCAzhIgBtSdQyLhsR1pOoaTG+Mzpv60HJnbhIl8x7bI46Aya3pe3p6BRSUo+CGWQJptA3fxF16nmdP0yPirabUBTKZr+D1tFzECq8Y7yQtV33niOcKu+Mb6qSftJnqjswgtcQbC8qSJdrwIoOSGFWBSO1FDx/7ywmILkKDnkIzH9FBfieALtYZlZnnd9qKtI9Z8cWZS0sN6z3Yw+f3fikt0eew7/ArYTrjZ9PmE3/h61LujkuNFfxx7CJe91LZ4w0hbe1ilILdag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19)
 by MW3PR11MB4586.namprd11.prod.outlook.com (2603:10b6:303:5e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 12:21:41 +0000
Received: from SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::f6ff:ca66:f20b:bd43]) by SJ1PR11MB6204.namprd11.prod.outlook.com
 ([fe80::f6ff:ca66:f20b:bd43%7]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 12:21:40 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
 Wa_22016670082
Thread-Index: AQHZf6vxyIsKyulA+ky1NNoSvT3Eia9QTyXg
Date: Mon, 8 May 2023 12:21:40 +0000
Message-ID: <SJ1PR11MB6204FAA51CCDEB35E62F718181719@SJ1PR11MB6204.namprd11.prod.outlook.com>
References: <20230505234544.4029535-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230505234544.4029535-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6204:EE_|MW3PR11MB4586:EE_
x-ms-office365-filtering-correlation-id: 68a846a9-3b4d-4995-e9d8-08db4fbec735
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EBTqz7RWNHAacwUMO69P1bF3sQs+I/mD1fFD3Nni73LSU3dajGV05AfJOqFF36rFLUqENSTM47aRRsoSH14dOsEPBeyfJ0d0E0zPaOTUvimcWTwqGCDx8f4RpWG2keoECS6ezi/5lvgUJw19sKErvpRvzSCIWMAUk4m2v11ck4qd7jigDbTTH99Hf5bQ2MJpqi+MqUr1YbjCXMDTOwlJychWDZXKPugOZwcItYDTPnZvWupPnSMzELk93tbQnw9CGihrJKCqkjZU59VSModq/uDzcIRDLsjlN0P6YRSGJZgyFJldJwjmQFhhpTOHdwmGf+HxM+bOc7ckNyd7ZJbqtMe/UwKGUv5jRqqQ5zQQqSqEK/RKpQDIDuUiwEl+/Cn7+UBRMAF5o8XY9xj6Wb2QiAA8zaXH2Eu3Ufch3IdP7d/z278RXfvUvf/AFjAX/2eh94Y7q0E4dVTj3JwKQnegTS3hZ2YgeqwSavYow3BZt0G+R6A29yAVU9gsLanDY3o6ZNC3vI42KzjLAMWWmuba590umL2IMPCOvUvgQdSafBDSJB6kfanTBoDg14F6ZhRk0Q+f8sj0YTGDhGPYLzhk8I24fUS/zYVUK73AOpvlPvRxWCehGg8MQ9zCJkDbcfMu
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199021)(6506007)(9686003)(26005)(53546011)(107886003)(7696005)(83380400001)(55016003)(38100700002)(33656002)(122000001)(86362001)(38070700005)(82960400001)(186003)(5660300002)(66446008)(4326008)(66476007)(66946007)(2906002)(478600001)(8676002)(8936002)(66556008)(64756008)(110136005)(76116006)(41300700001)(52536014)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5bx1xbgygZ3/XPXIfOuNfEYBuTpWeE/ZmzHCnOuR5f0zBv9OV0lRoOsWP3Bm?=
 =?us-ascii?Q?tnqy9/uMHeJ5+WnA4GCTRDyqXQpUa4emB69XGwl5jBLLRvB0DJWho3S1hpll?=
 =?us-ascii?Q?8aEFENZCpDX+uogfEf5QtNe64iPiV6gZOoQZ9v5rubi/mBeJpQqqzDHN6fUb?=
 =?us-ascii?Q?d9pW8ZdgYQvJOU1fEMCETjwvNC+W6YfNtqMD6m1IoPWlpUAh7WmjlaVjdB/c?=
 =?us-ascii?Q?3Wyb5CqxyWaxMwfPWhPNCeYFl/WnZMjJX93mPDWXUYq0W9f5GPiQdlfZoysp?=
 =?us-ascii?Q?lkyIWDq2FQFIcUF/7U8P/FC4DGkqs9pKjyhxoYQwqeq1e8FhH39QJwOyUu2J?=
 =?us-ascii?Q?xpUXb5C0du2KdXPwZjNCsFy6QYDpv0WCysaMylpXsorQtEA5ADg1EboXw1uE?=
 =?us-ascii?Q?nX+NVUUEQvcWMLmpr2m5et0HlGNOiY+UjUT6XBXRpRVVkY6PEJOcNkegvYu8?=
 =?us-ascii?Q?e08hNa5W0ypAFRDLRoVDsHXY4IXr1Zn5RmwWSmbYzPdKR8ncY+p6S4SBCnYD?=
 =?us-ascii?Q?BFrMluBbjdJW1S7bPiKFg6gQNb14TM8yjVcc+8v/Xdmc4hqIgdPQbSMk5igO?=
 =?us-ascii?Q?Dbp5rn8c1+7uF+6T2ptWllY152DjVE75X1IsDpTeA0BRBlziplan4wbB+opz?=
 =?us-ascii?Q?qUphpkiqNWmIq1VgFj0pe4ZoHJuhYyAIJ4pH9sz2gTQNGiV9XwOnxXWwm5JL?=
 =?us-ascii?Q?MB7c9O5c+6IEUddc6C8qRHrKFfZjTaqfdUv+hXPasJNO1k4+7+3Jy14Hd2Y/?=
 =?us-ascii?Q?nAHuTxda4T1y+Q0UZxI7HPah8brCbaeQAmJpsKSDPHjza2BWh7aIb7W23lDJ?=
 =?us-ascii?Q?VWR/lG/3XbupCZhjLgjZHBaaFbqb9Jpxi6R7kD1nwy5Os20P+fQlg5E7wgwb?=
 =?us-ascii?Q?88sdXx7Quz9S6CdVnIY0HAjkryc3Z6qCoaZIiG7tziQxu3bxn5G15oIOm+43?=
 =?us-ascii?Q?/9Ra4yAQnA5fmR/A+Gr8mKEjPALspM4tXewGzijP/skAUljjUE/lnqD7ew1y?=
 =?us-ascii?Q?Njro1Nz/vp0cOKQleatST1OACfbalU1VnUshL77oPYk/HXcGPrpdYA5YJ3I6?=
 =?us-ascii?Q?X/FLx2p0+wqOw4gxHXsrLZ35n/SJ6xsCCMlrRDdKC2Iar96CQ2+/P34sBjP5?=
 =?us-ascii?Q?Y6tQqPqBG/gyiaS6a/bLoqo1gcpMG4Bgpsmvc9txc/YEPaJvkfWGLIvpP+Qk?=
 =?us-ascii?Q?v7UL+gkIhdczblv/1XoahbJvY7J7MfBBrtU5sFK5Xewck77aV/053OegI7Kb?=
 =?us-ascii?Q?Ichs6jQqQCm46z0TEVsv9xmz3SHhNyotGmQvVjQbZjf+bbyV/EasHbk5f8XF?=
 =?us-ascii?Q?/nvkGa8vL+adEXoDdf+10lFTusakcsohyupxk6k1EqH+Y6wA9FeC8sqoor2I?=
 =?us-ascii?Q?Sng55NoEe8eOV4errTkNqJGgAgd76D9SiF+kp8UnMRwzaJPNbmzBHPf3NjW1?=
 =?us-ascii?Q?bPv5Y4E9mhRofCnPumi6izMG4+LVzPYtQUzpP97D10irsclTMTgbXoO9lGRU?=
 =?us-ascii?Q?U0TzPsZmfFW2c/cNWHl6ebib4VwP4t4uqdNJjLjHYgy9NYuFPhf3NzOtzVYU?=
 =?us-ascii?Q?2r++SiMSorI1SJBoFjEgTo2TtVYtJvuBKLlv5QSJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68a846a9-3b4d-4995-e9d8-08db4fbec735
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2023 12:21:40.7112 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VsiFUtokfENv+YU9Azq58whj44Up0sLwmPMaqQlbRMctVd2/6mpLfjmZSkkPPxzeCevCkDgNk2ke6Oo32e8Rce+xdi/Df/uC/2lHyUpwW8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4586
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
 Wa_22016670082
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Radhakrishna Sripada
> Sent: Saturday, May 6, 2023 5:16 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>
> Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Fix the wa number for
> Wa_22016670082
>=20
> Fixes the right lineage number for the workaround.
>=20
> Fixes: a7fa1537b791 ("drm/i915/mtl: Implement Wa_14019141245")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ad9e7f49a6fa..786349e95487 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1699,7 +1699,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt,
> struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>=20
> -	/* Wa_14019141245 */
> +	/* Wa_22016670082 */

Lineage number looks correct to me. Thanks.

Reviewed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>=20

>  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>=20
>  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> --
> 2.34.1

