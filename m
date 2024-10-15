Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA78A99E202
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 11:03:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF34610E030;
	Tue, 15 Oct 2024 09:03:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hANYWI/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1FAB10E030
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 09:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728982981; x=1760518981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zZUD7nhD8oa8lNybf/jtHW6AKWK7kl7ny+Rx82FA7Lk=;
 b=hANYWI/+me1bYq/bKq0AHbJJv/addw5yK9NpEpwGVYRV/uSNH+67cd+k
 XIRpVXAfLQBzsn6vCALa/1/BuK7gR3FHP5ahUuXbt7hsTCvFnHpIcIhW6
 1Pt2amXCrl+fog+Ek/o+YX3ua8uUfPXm/xJ/jrD9nvV/AupmalYb/bkqc
 X6E6jO7N+FhEHpExsAGzC/gQSJj9Jv52DtuH+/5K2/vMpXva+kc5iJI6e
 /kOubRAKadOGpQrLoohlqAvVWMt+wfES8L2Ml+Dzjoj6gPeEO8VTc8Oeo
 q22RWjtXGZzpL5DKv9huhYIRuBJkFduUifJb5e8NrPFv5uu/fRo53a+SK Q==;
X-CSE-ConnectionGUID: gy4B7e9cR+e3bmptNDD7bw==
X-CSE-MsgGUID: jWEsvtIIQAKw18w5Fij0OA==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="53773016"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="53773016"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 02:03:00 -0700
X-CSE-ConnectionGUID: wHU/nDjhTYKcmhzlS2fXfg==
X-CSE-MsgGUID: pCEmYE5dT4ajkXJCGW0Rjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="82876354"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 02:03:00 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 02:02:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 02:02:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 02:02:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JT6u+x0mRJWJrAe0EydjwDAAhBTblyqAg1nUA/YClmYptCU0Jw+QtMkIMkxvIIm5HynC0w6Efh5if2LQV9cX6Ys9nJx3cr8F3oLyx8VI8TOjrRczoHIW5esCLWkQJLkG8AYo3ub6c4kb4hurE4oC7wioejSU9S7A8T2zDiI36mqZSds8J9TOLfDV/1ljYnXooPvnItMddYoZeSsmDzD1coJcXaz/+jc0oVyRooao209TKb6fn0Nd6EY3u9mmJgvnPKHLj7qMizlPykLLiy2/fGVzBbZ+hlpowUpwaGmWmeTV8HUwFSllGFUG6n5J1eq6FGiTAEzYND8sHc9aKxFWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c5ZhXfDVoLcujUsJH6d34OmwugYZQD8yu+dOmHKuzCo=;
 b=cyp4x/JtyB0qCHqc7Eg4LQvXI9Jh7IxC32SjbjCTyws7UQiW9M6DmEb/JClePHcF9+kqFPflyeoiDqSRoVnH0e3eHgSrntLSvuaw4aJmi2Awt0Y5/feGmkE+7+a+Yy4cNuHzsgVL2JYzbA+bJUR4X6j0uIqjA6I0gfLB/tH/3eE3hdcAImCNQuukr7BZDo6d+uAwYMIaaEeQJBQYQvBZPWC2mPlKZOvEJwp3g95D79r+d9cSfw85n1h6uWBO2G+1QimJAVaZAyw0fnwwyW499kvVf5rrpqUvj1fC0L38HqdmRBkMUr6vdSc1e46BMasDJaw7yO+p9VYhw41cX3n6hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7569.namprd11.prod.outlook.com (2603:10b6:510:273::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.25; Tue, 15 Oct
 2024 09:02:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 09:02:55 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEyss5I8hhBCHpEq+5+sR31waxLKHmhlQ
Date: Tue, 15 Oct 2024 09:02:55 +0000
Message-ID: <SN7PR11MB67509E290DB4807E294502B8E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
In-Reply-To: <20240930112343.2673244-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7569:EE_
x-ms-office365-filtering-correlation-id: e93c7885-e001-4333-d5eb-08dcecf828a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?eJ9ATzLWOtxvmTMc7pHwknwQcop++BErOXbpwH3qSxhINsXtAVSLFYIXea8c?=
 =?us-ascii?Q?ZGHeCQ6bqWqPt1Uok6ZXyR3lZxsJ4+gFi2M9y2GWZa7Sd7pIT3LtD6AV6Oht?=
 =?us-ascii?Q?pnw5+UklvjTlZwWJoC5GYDfhqgvwP7+3Fk3CnHnElBF0Li2bq5mdDHMFLoaV?=
 =?us-ascii?Q?0LGR9+cl679Y/NruFnYQlFK5Cyd0IiNqlm/UOq79jSBQYKDCZ6ZxqsZMQLlK?=
 =?us-ascii?Q?JRQrPX8n2u0NtrgyRwZywu8xs+w7huNvII+lBUbEdVaKGnNADj6LggqGeNq7?=
 =?us-ascii?Q?dYSBhDDcvxzPgr5LLJ6DbSpSh/TowF0KYGDc7Q8+EEasdvzEicMFhC6I2uSV?=
 =?us-ascii?Q?4eAMMh9y/jHoQCb+hUKvMwvG/u7t4izs5Xu2wzKPBm1QA6SsaEYhMLf1IaFF?=
 =?us-ascii?Q?hwzjalbhPJqBEziMvu6OVRwkiN5vajIzcbowowTlxHQH17+aWJoHo83KKTNa?=
 =?us-ascii?Q?2NKxK7GMfd3BN8+m6VkC66ILH2p68mA/HS+T35agXnsJ6adegGxYqawYeHpz?=
 =?us-ascii?Q?xal4Fbl98zIuAO/kp0B+sA1Zrh/9i41WEp2QkWkRYOtexJ4kjTN8xyRwuBiF?=
 =?us-ascii?Q?wAewvT4MMfohYuicnWADqDcyq2oJ+hnV0lYzVTOHCOp1yjY04I2sGNAYRkJe?=
 =?us-ascii?Q?tYcLVhur1qWxOux1OuVJuWLv3HgxaoQ7wb7h39v2skPnC97yocAGS8t0BmPg?=
 =?us-ascii?Q?5gLzK8OpfAnEPKAuCQlylrywlsmzKkGPdlhSmCizcr1SoMUzntgrHeQkwZbx?=
 =?us-ascii?Q?dTJPengJU3dBlSPP1Dsd8Pfs5ThMFbT42xCbY6VWaJkxQqbq+HThtS8Evtma?=
 =?us-ascii?Q?NfDf6bVx2Q6i7LxP/BkTjf26EvaCepnK8U2PIg/Y4jOVQjN1+WzbCATeG+zL?=
 =?us-ascii?Q?7MTxRcXLu4SydTN+oK7Y7s53i6RPx4AZ00ZEbO6zgLERPyXwMidZjlyQfzt8?=
 =?us-ascii?Q?R9aY26xqHhkplAuaUdlNKR1hQI37rAKKLixgaGuBlxJ4GSEcHFQEyPwpjnug?=
 =?us-ascii?Q?NS+Z6x2WP0kjzxIW28WFehNJnT/WyK4XbYbu7ohePEYziN1Fna/4J7tTyaNQ?=
 =?us-ascii?Q?i9fRczvjIzCRvYdPA/WPZxVzwwCZymNv8hsSQQYxVbfNHMCFlosLzHd6oVI4?=
 =?us-ascii?Q?Qqku55pMeNCnVI5I1Z/7xHOA+47rPx/D1IJaDPaJnqxjU9Kde0kk1K9/vXHR?=
 =?us-ascii?Q?T1ifo9QBJEqPR8fFvlxutlE1u1wgmgtgG2OQgMNrQ6DA5pZrubFlPjRPTJnR?=
 =?us-ascii?Q?BuPccvQKm0DEn70Hqbq4Um3QCFYSKNLKKI3st9epyUBi+5Rj8oyT8FcDTrn9?=
 =?us-ascii?Q?o2SG5JnBLb7FS1D5yKJ/q4nw7v8ldt5kefEjBsiVsi5b1Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FIFpJ98ZYfhLFWgmpZfgr/ryXtSx2Q3HJd5l+zpz1DKtMQiOl2syPOVh+TFj?=
 =?us-ascii?Q?qdGKwUIFCGgWYK03EIGogKtJTBWZRL40iEOH6qmIN1/OEw+JqHNSw8psrlCa?=
 =?us-ascii?Q?UyG6cPxb8DXqrX6O5VTRZBv1Takz+r0C/2kgEyYqLNQXX9HGdcdP3tEgtYXF?=
 =?us-ascii?Q?LqBsXj7aowMegeh3Pzsb2hAV72eUVm4SKavvdngjEfjXZ1kbnjDSLyv3ymiI?=
 =?us-ascii?Q?v/1GlzqSNyaxCySYgM64UDRxn/vescGsBvmuRuatzAhoDXfjSXL80RPep7K7?=
 =?us-ascii?Q?MNXxgWEzKiy1LOlT6xPF2khheRqjHy+AvfzLw1K3CeizlxoLgbNB0mSbvDsb?=
 =?us-ascii?Q?h3vZ09tWCjTZ2urx4byos/3gQS8CD2MG29egBJ9lrBPsPY3yo+BAbu3ngykT?=
 =?us-ascii?Q?O8Qn/o/khLLZg6l0m8/YodveYlpyx1VMRolFT9P2rpMpz655hnzjh3ZIOdRu?=
 =?us-ascii?Q?ChXNSREySGYSVjIrhiaGbfBUuzYNwsDx2Nt3SD4JIv/lMSd3KOdrhjDF90Tw?=
 =?us-ascii?Q?27hMkwSnwYxABhr3MW9fKssF3af5dtL7rna95jw9eIbrrb99cBPGb6baFxq+?=
 =?us-ascii?Q?224ub9m90viEB7wSEamCUdgtoTZPlKzeNIP7Arvn6geiiFE1yCynF0B8G/zg?=
 =?us-ascii?Q?/bwmtpOtoMm/SK4HZ+8TvAt2Upp4pH9VyjD18QinYVUi2DjFTlIiU7C4WBLA?=
 =?us-ascii?Q?ZS56Qf1M9eAZ+f9Ro8dufl+9F8fo1XD6VAYbAf85L1oWfruLL1VO/Y3hRKVt?=
 =?us-ascii?Q?60RQ9xEDL9NE5/cq0HjlqvfBeetzbRDLXleuBS7GFDLk/ipQKuJQhjXO4dra?=
 =?us-ascii?Q?V6fD3McVaZAzLgQ0UenE+TV3b12tNhxuhjbFdz+sc6YTaeJwToR6K4pk4fTY?=
 =?us-ascii?Q?7Xy2/uQY7SjT6KirYZ93cKuCj9hNuo4iwc0kuVSS/8enCXxosptztOR72YNP?=
 =?us-ascii?Q?3QRQHOPEhSgyNXDIWmQ19KxxanvMWJAB37NT/ysAKFW35+242XeA4r1oNjtE?=
 =?us-ascii?Q?Iz5ZdlOifqHnZ+DJxfpmRlGitF/aEnQqrPU7SSAaWbClMtENbv7cFIemMtw3?=
 =?us-ascii?Q?27+mVLa2dqrb2qMs6GTveJNHvrtMBri8dKmtUVhTDVoD+tkK9stgfahFppy0?=
 =?us-ascii?Q?++VQld8WBHhd3mUga0aysfJb9WHc8x9VhUzDyGJDf4VwXLcwaFTDtUZLuA8c?=
 =?us-ascii?Q?eruOEyY4nkBCGuraihetulw+1QryilnAxhYTGHAmezeKIvsTHHn/KnMzJPq8?=
 =?us-ascii?Q?+BRaA7lHXl4rYAra8gAFYy1aEaerTayHX/5OyPMnwhnzIlrxrtrkktLyE9no?=
 =?us-ascii?Q?deZT+B1RS+cNtSEuoVeOgeeMQYig1PWh+QK8uvWs7AxXgde3a/BcFsWYev+A?=
 =?us-ascii?Q?UHzR96JRJ9PpVN3bKzZQgqBoaO6Qb7PeGz5DyiVGh2YgSx8nD7iV6+Vudgsv?=
 =?us-ascii?Q?y9eMmaeKwl11l47wARx2Xs9+kfIZmm56wfiXU7VjYtV+zRgAtKxnrV1/IgFq?=
 =?us-ascii?Q?SDIgexdbhpoVjjKLXazK3z1xGhYgginCFgjB8IwdeB9dZwvHzzC+dDo0vDeu?=
 =?us-ascii?Q?0951HEXWbdWCCN2AvMAvYi3rzZkOM1E6Ngb8Htca?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e93c7885-e001-4333-d5eb-08dcecf828a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 09:02:55.7390 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XK02bE4RfRpfxinKLShIP1utfP5esJYYOZ0jvZnxL2REgLLndZKjqs4e6J3QwYlg+1VonTYDgMYgZE7W/4XWOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7569
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Monday, September 30, 2024 4:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar
> yuv
>=20
> Disable the support for odd x pan for even xsize for NV12 format as
> underrun issue is seen.
>=20
> WA: 16024459452
>=20
> v2: Replace HSD with WA in commit message [Suraj]
>     Modified the condition for handling odd panning
>=20
> v3: Simplified the condition for checking hsub
>     Using older framework for wa as rev1[Jani]
>=20
> v4: Modify the condition for hsub [Sai Teja]
>     Initialize hsub in else path [Dan]
>=20
> v5: Replace IS_LUNARLAKE with display version.
>     Resolve nitpicks[Jani]
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index e979786aa5cf..e3401a4f7992 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> intel_plane_state *plane_state)
>  		 * This allows NV12 and P0xx formats to have odd size
> and/or odd
>  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
>  		 */
> +		/*
> +		 *  Wa_16023981245 for display version 20.
> +		 *  Do not support odd x-panning for even xsize for NV12.

Only mention WA no here the rest anyone can refer to by going and checking =
the HSD=20

> +		 */
> +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> DRM_FORMAT_NV12 &&
> +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)
> +			return -EINVAL;

Also rather than return -EINVAL here we set hsub =3D2 and vsub =3D1 this sh=
ould make sure odd panning is disabled
When we have even size since we only need to disable odd panning according =
to hsd not even panning this return may end
stop panning for even sizes all together.

Regards,
Suraj Kandpal
> +
>  		hsub =3D 1;
>  		vsub =3D 1;
>  	} else {
> --
> 2.25.1

