Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B17C5736A40
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 13:05:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 973C810E17F;
	Tue, 20 Jun 2023 11:05:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CC7610E17F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jun 2023 11:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687259132; x=1718795132;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tDKjIQksDcY30ckcMxAEf+E7ThhYKinuCvoOZUdQd2s=;
 b=gFwFW5ne47iBNlIaXOP0UjaM1C09GhNv4G9MpbBGzpWePn+j+XB19Hne
 qUQCpP4KWobtPmU0MgbeMRw83GP46pWbi9Xnwj+M5i4nuYyCDRwVVbiqg
 2pB4jIUPmewQYbNTpeJXlBH5pz0r2BvAg5Q/b75odGWUz+XpR58hPDHLF
 NDondliIqFb0a+JipqNOGtvrhPZPxDHngQsVjqxu5TwmYWDm6cruxPiay
 5Dt6yrvAMm0uT2BhlvO8wVc37v7T3VyYEheryi23/VXlJzG0VuGSJzOBL
 2+bDV5Eureu2kicsFODAxw+c9M6PZRtdTNw3VKsArACSIIEKqyk1Yz8PM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="446205474"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="446205474"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2023 04:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10746"; a="743752221"
X-IronPort-AV: E=Sophos;i="6.00,256,1681196400"; d="scan'208";a="743752221"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 20 Jun 2023 04:05:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 20 Jun 2023 04:05:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 20 Jun 2023 04:05:30 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 20 Jun 2023 04:05:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nx05D/d8RB/SAm7/1UplzShuYN40+nV6s/cwSi1YO7z65eX+0t9RoLFkNYs+82S2nVm1D6z5I3WJjLNeoxymkWBFYU0yfA6KRly77VUg/AnCAVzAGAmNeOhJAY84icIWhhN3JF9BoDcvxGER5CUI9fSK4EXRhtR1DfWwsVjcsbswd40fSZm/cXWTNM7e1JhdmWv6VCSBS9krO+4tvW7g2B3QIdhEGmjM1PsD9ZBRzVqh/mzkO/wCk8A8BOCJusmwgbRUa2tVnl6Van5f7COIURcvs3quAedNJb1A0SwYoC1blczDDIVApiEuUDxpJpx9f/45jVZaxqK8uz/KCWpREg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UG8maFA9AFq9jtC2iPaX1HDQ0FJt+6cyfNgulF/Bzio=;
 b=GzCnjMCToFdTephP81aDumSAJUf8nsORxSQAlM6aBQfxqVKP4vL8LKel1IdpLoF1GKN5eT2Jml8U0kJacBhNxJve2TUpZWm4sgmlrZ+WSsyccPQ71BjIezRf1/CwfNFhqGe61QI9ITh8tzFkUJuvqlsvtTLVa5NGolQuVpeTWKspNDsb8qVAZ4+MGsyH3gx3+oQJfrmSW9DVNzOETn+sdq+q1jE//AJ4nm7B/HP6FNjIHm3a4sshiEZswqGnkQQQJKBLx+CRoS/SkYDH1CVFO3lXQI79ihSjpglawqMGoulA3JF9VBA1LkwiqyOnMLpcioCY4LvBSXD5TxuWQq8C1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB6944.namprd11.prod.outlook.com (2603:10b6:806:2bb::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.32; Tue, 20 Jun
 2023 11:05:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6500.036; Tue, 20 Jun 2023
 11:05:27 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
Thread-Index: AQHZo0wTAQ6AnDeTq0KZ/es0Dq4qJ6+Tg4/A
Date: Tue, 20 Jun 2023 11:05:27 +0000
Message-ID: <SN7PR11MB6750BD50E996C01D076A3511E35CA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230620074400.1054530-1-arun.r.murthy@intel.com>
In-Reply-To: <20230620074400.1054530-1-arun.r.murthy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB6944:EE_
x-ms-office365-filtering-correlation-id: 822e77a0-48da-49b2-8391-08db717e4133
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dMd4/9l8Vi+bNavyJiTf5QYy0oFIEtHu7nYelVilKxViDaqPUmuwgdmD7I+r/5iopAYn8LeZ1+31+e3tGbC9/c8WhQNqObznSniin/Loqh+S86WQtWkPIhFWPbA6HE+V17+4usin0ivMZvTdPQ61ibEFELfdQ7UP49HlvgqgHIjFKzmOhaLXMSTrM7JtxUa+1Lnd0AKhGmPEi+Dh+qud6C8/aUTeOFiRkjsyMlns6M9OU7/F49C+HoCTRr/S5uKGbX13geKiSFUrpm8zDlCcyxU/k7e+MXqG6poKD5DFkIRm3w5cJnU68hOxVZxoQ/QkEqMzeuDAbFAjuzsXFjJ36bZLDI+NWiysTGuy3t88ETCulcPP/w7OYLpXGPhBFeykvLEH7omQBgj8Im9krPAy1oeIZDugWf1w4QvHc/JmO7AH/LDjyiCJlDU4dGerpwC3kFqGpmT68s82JDYKNLX0v53PNOyhixxveXPfDV0wfnxajFWkJ2aS9riOXojCzOPdn49KwewzWVa1Gm+FDKzggfBdP8iFvV++fNCdpnjoLOwm5CAMM7vd1zOh/1064wtnaHB2VEpdDnWi4G8EBbL3tWOJCcwvPI1gtQcXONuq1n08Yp+HMT9/zI0Pm9e0KKFBxf79EVRtf+EcDHKbVXP9X69GSWgMBo0n7I/4JUdQxqk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(346002)(376002)(136003)(451199021)(26005)(2906002)(186003)(55016003)(83380400001)(478600001)(6506007)(9686003)(110136005)(5660300002)(52536014)(64756008)(66446008)(66556008)(66476007)(76116006)(66946007)(71200400001)(8936002)(8676002)(82960400001)(122000001)(38100700002)(86362001)(316002)(7696005)(38070700005)(41300700001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZcJJYBKiczWEXlqHlq0nOSvfrth5IPeJSbLI9XDSBo9UOoxCknt0CVenElrA?=
 =?us-ascii?Q?U2iTGhCwPEQOVjNEJNkO1TOvozrA6kDHkagOuh2rKPQPAe6BslpRRhvnA1Bb?=
 =?us-ascii?Q?ZAfYZIxTLy6r0IyA1KsmEP/8LVnrC8NMfV3DWpN2L3jzpOTf9dFAbpox1/ff?=
 =?us-ascii?Q?a5E/KmpFLZRpiCg5qvy3MYdK5WcxACDdB07h6nLH/+xyBcZVCNF1jAj4Q8sL?=
 =?us-ascii?Q?398amzggYkgBXrOf5cBrdpXY0nv5mHLHjsGvLg7rAowEV+U9dw5SaPNVUSGk?=
 =?us-ascii?Q?9m4Rt4ypw92Sw8T8+TTs/zs3epDlgmrfhwwBIN1ZLmLNB9UCMjtUHeaeJSr9?=
 =?us-ascii?Q?vboU1mJGiZRXa+ee+mbe43YVcYSB+SOa3QbsI35EPHnHVp5UR/onImn5oPiI?=
 =?us-ascii?Q?XDIpbMmnvH2irY37hC9UZhXbWVU2HC6R/LuRehlmky0A33DUjSdowQJaiLgT?=
 =?us-ascii?Q?KDIS4rNYyhOfBnUv/+F7q0N42IyZt7wE7nMyt6MX/rWpbkwIe4wbgOB/j7ol?=
 =?us-ascii?Q?S/H0WjNUn/0Mi2KcDeFWtY97lUsbMk2BAVuWgE51/EqDRFEEusQOPBGirkqm?=
 =?us-ascii?Q?1HsjZxokhtuBSzY31wQcO1w1fibXhUFpxwPoNyrbirxWkxCEd2Gs5U8XRgOQ?=
 =?us-ascii?Q?A6kwUf2r063rKBXvnNImPQa0Q4enIJMtt3AoS28nJ0AvdayPrE7vuia8MJkY?=
 =?us-ascii?Q?09YqyvDWRzPA/5wwiOM2tmkfuQ2ZyHJFeK889VFIouDZm21JWQTDdRa58Ai4?=
 =?us-ascii?Q?4acD6UFQR+dgAiUS8wbabqlDhmtj4hMjV43GlRE8Pjub07+TESWlZUcXjB0N?=
 =?us-ascii?Q?c2TtB+Sn5CRNz5UrxGLkSYKnhGaCrBIOIYpOfus3k7Su1u48PGACRIfU1Ww+?=
 =?us-ascii?Q?2L6zA3imJbTXsBMLOtN1hyl88cZWoFUTvsJntkhrdTw4JtorUmuDRm5mqlUw?=
 =?us-ascii?Q?3TdOw16RiESBQe15ZipUpZNx0r+5h1fwzK81VcegtagwC8wKY8z20ZTbjBO0?=
 =?us-ascii?Q?rzSkwPQBeetb7Nl1i+yTV/PtrMC3FnUsu82dvJ3JFNAKzkJfPuFRzECQ9+jn?=
 =?us-ascii?Q?Y0NMKH+b0mRBwGiQzD2u86T8oviNE8qmbdf55auPns5jz/GXJ1NytRFbUnuo?=
 =?us-ascii?Q?h8S3wi4ZxHO2VikjUf+uOERP5M8pL6rkzJVvevPFTAnTd2oe+/PFb9ExH+d7?=
 =?us-ascii?Q?37ZX5bhJbkEQtZyQU22Z+2ywHhmCFh7xhw6JbhEJnWGPKPOV9M0rDAUQPnus?=
 =?us-ascii?Q?WWI09ujwGJMthKOu9oqdMxRW2hsG7lq10Jn77+mF1d1dEW6kFAJVuPVTex6z?=
 =?us-ascii?Q?YV0TWFjQ6/9u9KiQ/wPLtuam2LXBmNMrUBxZ0nY1QS7sNFIE3WSorf36jteg?=
 =?us-ascii?Q?HqN+vdQfPu6Wb7U97PPq01e7FHpaiMPvzTtqw/9o2T+Ji0j5GqSpfKyB2yOs?=
 =?us-ascii?Q?pWq/VL7UuW4IoLm3tpp8lFKV2Y/hOvFjUU76ci+jYW+Snu4Xb62GmhHnjEvF?=
 =?us-ascii?Q?qKeIYL7aBjLFScw5a81m4Wv4qqjWCUZeV/JIXWnSl6b3zmAHHNuq0td3/zYv?=
 =?us-ascii?Q?mkEVFpQYNBo0Ht1DRaGVddIvQSwcqos951K80Eez?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 822e77a0-48da-49b2-8391-08db717e4133
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jun 2023 11:05:27.6194 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AwL35hy6qxgabZvjLbI/qxI/PQLM9lSQWnzG4Cmwwn8LQ8HTLAf1XMwpzEqj6ad0Wkg7oqWoB5ecr5lQLnWb/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6944
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/dp: Add fallback on LT
 failure for DP2.0
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

> For DP2.0 as per the Spec on LT failure we need to reduce the lane count =
if
> the lane count is not equal to 1. If lane count is 1 then need to retry w=
ith
> reducing the link rate.

Maybe adding the section where one can refer this in DP 2.0 spec can help.

>=20
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 54ddc953e5bc..2b12ca45596d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -657,8 +657,20 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
>  				    "Retrying Link training for eDP with same
> parameters\n");
>  			return 0;
>  		}
> -		intel_dp->max_link_rate =3D intel_dp_common_rate(intel_dp,
> index - 1);
> -		intel_dp->max_link_lane_count =3D lane_count;

NIT: Can we add a small comment here on what is being done.

> +		if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> DP_CAP_ANSI_128B132B) {
> +			if (lane_count > 1) {
> +				/* Reduce the lane count */
> +				intel_dp->max_link_lane_count =3D lane_count
> >> 1;
> +				intel_dp->max_link_rate =3D
> intel_dp_common_rate(intel_dp, index);
> +			} else {
> +				/* Reduce the link rate */
> +				intel_dp->max_link_rate =3D
> intel_dp_common_rate(intel_dp, index - 1);
> +				intel_dp->max_link_lane_count =3D
> intel_dp_max_common_lane_count(intel_dp);
> +			}
> +		} else {
> +			intel_dp->max_link_rate =3D
> intel_dp_common_rate(intel_dp, index - 1);
> +			intel_dp->max_link_lane_count =3D lane_count;
> +		}

Also I see a little issue here so previously what used to happen was we red=
uced the
Link rate first and once we were at the lowest only then proceed to reduce =
the lane count
so has this been reversed in DP2.0 spec.

Regards,
Suraj Kandpal

>  	} else if (lane_count > 1) {
>  		if (intel_dp_is_edp(intel_dp) &&
>  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> @@ -675,6 +687,10 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
>  		return -1;
>  	}
>=20
> +	drm_dbg_kms(&i915->drm,
> +		    "Retrying Link training with link rate %d and lane count
> %d\n",
> +		    intel_dp->max_link_rate, intel_dp->max_link_lane_count);
> +
>  	return 0;
>  }
>=20
> --
> 2.25.1

