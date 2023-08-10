Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E34C777E7F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Aug 2023 18:42:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E91DA10E5B1;
	Thu, 10 Aug 2023 16:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3F3F10E5B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Aug 2023 16:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691685720; x=1723221720;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zrTXKTiQDgpuv6E1Uoxw6y/cNny1PJRswSgY7QaCGiE=;
 b=kXII9l1BrWxkw74Gy+9zEWRtnmgERBljng/WjeqgUHIXwrN131F5KAvN
 28GySQYO6bMIR7SR3bc/Tx5p4keqOgThk59a4xdxl9Q1hdKyNX3uTU3ku
 M0P29UB2v2MVuVwJyKRpiwm275ttlOVh+m50BegcKjJONvlOuQgL7/RXh
 pAFAia1HRlrP8C5QU1Ojjf0Qwu+TpBYv+zEqud4GdZAI0BpJK1LUPimxY
 YX8qs4uuMc4+mAEunWHitdYUYD/CIWaDm3ZkuA1h4P4wOqzzZ64+xQ55b
 3uJgakNut7CMlUAeXunAI0waGhPlzEI+M2drCXB4rjbkvro0V+wkXzbnQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="402434040"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="402434040"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2023 09:41:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="761858002"
X-IronPort-AV: E=Sophos;i="6.01,162,1684825200"; d="scan'208";a="761858002"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 10 Aug 2023 09:41:40 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 10 Aug 2023 09:41:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 10 Aug 2023 09:41:40 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 10 Aug 2023 09:41:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDv4+o9L2GO4mt87la+cTlN3c4kg/CTVKRoZR55rihCZx+YMQ3+y+/wnu1V6roz0EgXxhIGWA2dPCo1PLsISuO5Us+mYVRP1QpC2CzTgQNY+YxH+LLsljaJLdoIZ+xDLsLz4XrxUlJi6yV6+vHkHsIywI7Z4550q01wgWTHXdaFCpbva9Lf6fuWGjL0DfqdFcQdOTH6hOh/zvU5Nq0ydBDNpPCQpINZbjb8s6VtWUyTLy+LaLu+aSouk/zlGH4ELebeMFFT9Kq+Mm5XHaMtrtaRGqutJREZD6KvNsUECRsR/BNlPXyxv9LDDbWvWqHYI2CDbWr/cTL7G2oZfAlioow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=duVdrsQrO9wJLpuof/AVzfmw1bAjfcihVZrD1dCEscM=;
 b=iC3+IdRCshEPDGhEHfYagwpgEqLx3C6Zy5vXmEVOtr8OQ+PQf2PlITGAzuEMUv4oQ54mneHcLPoyNUmH1QC6cGs0YBqW/6J1NZy2VGQq06hS5/D3qwnES5EeSOoNIOgDqzNR856PT0RpDp17rwSBtqUdFyByV4IfzhyQZ0BK/Yf2WhjfsLB0WRmfK3H6QYNl3+mcdbzbSD2OkatTwhQm84d4Jf9316BO6xBvgk/djQVH0EXd9LhTnrw1nt5q9u/J5oyYKR5D6j3D3tknE+/wZrneuO0SR9axxcjQzOHOCsWppi4T1XRYjnnbaQn9GMiS79HVx8sVjSQbzUUiE3Za5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by DM4PR11MB6018.namprd11.prod.outlook.com (2603:10b6:8:5e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 16:41:38 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94a8:a58f:4cdc:f2a1]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::94a8:a58f:4cdc:f2a1%6]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 16:41:38 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Implement vblank synchronized MBUS
 join changes
Thread-Index: AQHZy2OUC9Ipn+k47kiwrLM+TrTNQa/ju80A
Date: Thu, 10 Aug 2023 16:41:37 +0000
Message-ID: <5dcba4c2a44acf5b87d69955abf9c2ea2a012bc5.camel@intel.com>
References: <20230810081727.12756-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230810081727.12756-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|DM4PR11MB6018:EE_
x-ms-office365-filtering-correlation-id: 321187e5-4ed8-488a-a3fc-08db99c0aabb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TKyK0yVbya6HMANAGoR2NJcNP9AKvMd1d9XqvopkRqW+Jz6oKKjjQieiusd5UGnEC8ssumg0n3PGpK7cwoRmhALr9LJ2BBdyxtLc6XT9ID4bCLtEOxkD2Vx0pMv9UfEdRGsnbJscgZahbPnyAY2JTzDzFP/qAEyV4ywT1x/coHv7tD3vGqso/UG0Di120UiLDoKACJbnNjnVBMmJz+Hwq0rS5BCR6co4iZNdENSsqXkTIM4CWaG9fSRyZICfs8UKVF3u5r7Q0GuzYfkUUX7dDsi46bLJVFcP+LPTehPc2GET0GYmwi91tCSDfD/4g+hk4UHmzkBybE7JQjIdZTfMozgiMin6QHmyYftxglem/PzRw4noT3bnVnxuZ/ObHYUNWEU602UT6lSSYatuADD113QoakXp+RzOHfKzDlZPDr2P52hzUK4NEAPfSYRhJt6QqOtZYc1fP/+NU5aQ0oqz9TzWLYx+q0T15qSB7KKH6kDIXKlgiI/5pa6ZUjNFvDxMpp7H51c2E4HCwqwv4hjkjHXbid9yyL9ARTTRZyztBtdpxhex+PzLuFiZZw7+r50fMX6E8P+G0DSw42J4h4oTLDZ1dfxhMkgOCgZTcRdQXRL9lfpSuGy9lzmtD5K7lfIB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(366004)(39860400002)(136003)(186006)(1800799006)(451199021)(64756008)(76116006)(66946007)(66556008)(66446008)(66476007)(4326008)(107886003)(6512007)(478600001)(41300700001)(36756003)(6506007)(316002)(8936002)(8676002)(5660300002)(86362001)(6486002)(38070700005)(38100700002)(110136005)(71200400001)(83380400001)(122000001)(82960400001)(2616005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?7+SquY/pVE61dYKt1XWc9ll0LWiAYizZXpPtmdtWa1JyWk4htfe+cV0+s?=
 =?iso-8859-15?Q?IMmrJ9vFMg/QLXTx7d7xsrL8YfvSY0eGkVv3NrgN+x0AISAsqHzMTSZgb?=
 =?iso-8859-15?Q?ERChQkN4mlgNxMn5OuKFwHPQu7kR9npeypCQcuw44NETAH7iFmHLNv3ZG?=
 =?iso-8859-15?Q?9g08e6j9y7f3CJWXNK/spHtK4DRaU2dyTQJH5/RwCyibaQR4++cI8BVNh?=
 =?iso-8859-15?Q?H3EXemamqQvcGhie6kMyufy12poBIkXH0taLlLXUOizX/FvDLbf9O5dyM?=
 =?iso-8859-15?Q?vU9nYdB+eOmA9oTx+AsDWwYgLqIHezf7X8P7SJMdFPipCrDxLcn35ajtc?=
 =?iso-8859-15?Q?e3qoxuDUI23foFsVoo5/JbRUfYg3G7Q2Akkwk5hfUIJcQmhw9nMBkJSC8?=
 =?iso-8859-15?Q?AXhth7sf7+8+cw4CcMiTQto3QRiowIABDiAI1SH2xDyI9UzZE9I+PAAAK?=
 =?iso-8859-15?Q?pWYe3ex6s3KHFof72IckdI0oqN7sbIMhKdNcsnJMvtorOmxbP+kuRhMhp?=
 =?iso-8859-15?Q?NjCRg2fOpHWrZYW/iIIVYbBmRh2Xw5H7+sLpJB/dnociSGrQ9qmXBptcT?=
 =?iso-8859-15?Q?LECsIVOGja+2qbBWeKGpmT3BCROLG42lYQklXzfMB0T7KYdALnbF0rx02?=
 =?iso-8859-15?Q?NjCsRgGDJRSnQZ41+qI9dh5SO0jDfHDxJIlaQ86TUWex8uPhy/3QTKbfb?=
 =?iso-8859-15?Q?aPrnbvtX+sV6qRPFwmfhe6njdPd0i9Jn0N/1CGjv6IC17+cU9tyLnXY88?=
 =?iso-8859-15?Q?VFWlWuTG8ceUYJ2twrWaLB5Bmf2/OxPpYNWfMiGEabuGfFwigytKkVz3Z?=
 =?iso-8859-15?Q?6sk/UIxOsdk2txO/CyvKiMFpB/UuxDX2lTaquiyeLCzs47uIKroDeCDAJ?=
 =?iso-8859-15?Q?6I4PkwsA6jKWaJ3W1gJhJgQX0qn4UrTfSW0xfLLNMCmZ/OvKSYQysuK+o?=
 =?iso-8859-15?Q?1iY8u8vRYkK9ipYFlUDk1E3FT8B+VobpOk9fx6llDcBvqY2mJBaikPLjB?=
 =?iso-8859-15?Q?RucP+GIi+7DOtA0KIepJTdidYLIRxjLtjkDb9gVRGPSR945YTyL7bAcO1?=
 =?iso-8859-15?Q?izyfcijy7mm2zKUChvaI8UG7cLNNaPJiGpbo0AFo6jKkxxosyGqE5jZ7D?=
 =?iso-8859-15?Q?bkr7hjqpcnABfqdPfruFTz0Oi+Vc2o8oESKRx93aUND1wBKHWOjiAzmrq?=
 =?iso-8859-15?Q?1JDzz1qRuPPN0SaBCJnUiQ5q4aftqECzv0/2XUmLlt+stpD9jhM3rWDOF?=
 =?iso-8859-15?Q?F9InGFVjZ3vWOyDD8TcAnNF59vLdqI/0nMKuwmZniEjkqutsiPU+q3WQq?=
 =?iso-8859-15?Q?NfQScsUs7/7dTW8TR+qmtjGSNKW6sqaRtbd9uJz+oNrU4BrqMMXT81cPN?=
 =?iso-8859-15?Q?ZrAtNTVjvzTkYJUAYXU8JfZaIFd1Hynw5hDCTLZ4S1BsqjBcLXtsGzDiG?=
 =?iso-8859-15?Q?SO5TeKNGtdbE1hdILR8VKK2VyuZ+X2cEB5CRfXVpq8TQ8aZ283wIHsRGd?=
 =?iso-8859-15?Q?jqER842tnwEbTgyqpc10EMO4MSH+VmXfex78YmHRiEKH/FfmPOe32K+mP?=
 =?iso-8859-15?Q?WNvlUp+VG6S1a5uln5WQNkfwblSXvPmHCFuR4AKMzA5upvgxUQV4IL5ka?=
 =?iso-8859-15?Q?AhUHSZ0SlfPDOdaD+mlZlZ/gJBPUO6YWoD3G/Mo8XiO6AUVpB9fRAlHCi?=
 =?iso-8859-15?Q?6spqpfic0hEU+zvssLHCtpTD7zhvjJjbKh2+kXR2sp1G99RFuDaxeJkjQ?=
 =?iso-8859-15?Q?65aw8QQXSHGPDtp61/e0oTxklWnNnNQKZxK0FFogE6m37iBwBQ+x4s=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <3F827501DB372A4A8CD0383EEB92FBBD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 321187e5-4ed8-488a-a3fc-08db99c0aabb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2023 16:41:38.0150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7H7vcy8u469jlmfBZsAYX106dW0TXUji6s5zrBjYKcoI6tZL+xtfjto6gZhiKjqUp6Q0vjgC/JH/xm7Ggi5oz5XLXjkPe9vw/Nx4m0aIIfU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement vblank synchronized
 MBUS join changes
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thank You for the patch. This does the trick. No full modest because of
Mbus joining

Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

On Thu, 2023-08-10 at 11:17 +0300, Stanislav Lisovskiy wrote:
> Currently we can't change MBUS join status without doing a modeset,
> because we are lacking mechanism to synchronize those with vblank.
> However then this means that we can't do a fastset, if there is a
> need
> to change MBUS join state. Fix that by implementing such change.
> We already call correspondent check and update at pre_plane dbuf
> update,
> so the only thing left is to have a non-modeset version of that.
> If active pipes stay the same then fastset is possible and only MBUS
> join state/ddb allocation updates would be committed.
>=20
> v2: Implement additional changes according to BSpec.
>     Vblank wait is needed after MBus/Dbuf programming in case if
>     no modeset is done and we are switching from single to multiple
>     displays, i.e mbus join state switches from "joined" to  "non-
> joined"
>     state. Otherwise vblank wait is not needed according to spec.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 36 ++++++++++++++++
> ----
>  1 file changed, 29 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 063929a42a42f..4fbc74e800217 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2614,13 +2614,6 @@ skl_compute_ddb(struct intel_atomic_state
> *state)
>  		if (ret)
>  			return ret;
> =20
> -		if (old_dbuf_state->joined_mbus !=3D new_dbuf_state-
> >joined_mbus) {
> -			/* TODO: Implement vblank synchronized MBUS
> joining changes */
> -			ret =3D intel_modeset_all_pipes(state, "MBUS
> joining change");
> -			if (ret)
> -				return ret;
> -		}
> -
>  		drm_dbg_kms(&i915->drm,
>  			    "Enabled dbuf slices 0x%x -> 0x%x (total
> dbuf slices 0x%x), mbus joined? %s->%s\n",
>  			    old_dbuf_state->enabled_slices,
> @@ -3528,6 +3521,35 @@ void intel_dbuf_pre_plane_update(struct
> intel_atomic_state *state)
>  	gen9_dbuf_slices_update(i915,
>  				old_dbuf_state->enabled_slices |
>  				new_dbuf_state->enabled_slices);
> +
> +	/*
> +	 * If we are not doing a modeset, that means we must
> synchronize
> +	 * our MBUS configuration changes with vblank.
> +	 * According to MBus programming section of BSpec, we must wait
> for vblank
> +	 * on active crtc, which was single display, when switching
> from single
> +	 * display(mbus joined) to additional multiple displays(mbus
> not joined)
> +	 * after Mbus/Dbuf slice programming is done.
> +	 */
> +	if (!state->modeset && !new_dbuf_state->joined_mbus &&
> old_dbuf_state->joined_mbus) {
> +		struct intel_crtc *crtc;
> +		struct intel_crtc_state *new_crtc_state,
> *old_crtc_state;
> +		int i;
> +
> +		for_each_oldnew_intel_crtc_in_state(state, crtc,
> old_crtc_state, new_crtc_state, i) {
> +			/*
> +			 * Need to wait for vblank only if crtc was
> active prior to that change,
> +			 * i.e this is a scenario when we switch from
> single display to multiple
> +			 * displays, without doing a full modeset and
> it still stays on, according
> +			 * to BSpec only in that case we need to wait
> for vblank on that previously
> +			 * single display. Otherwise no wait is needed.
> Rest of the cases, are not
> +			 * possible without a modeset anyway.
> +			 */
> +			if (!new_crtc_state->hw.active ||
> !old_crtc_state->hw.active)
> +				continue;
> +
> +			intel_crtc_wait_for_next_vblank(crtc);
> +		}
> +	}
>  }
> =20
>  void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
