Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E337079208C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Sep 2023 08:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AD610E436;
	Tue,  5 Sep 2023 06:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1209610E436
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Sep 2023 06:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693895209; x=1725431209;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OJLnptDi8BZEUYka7hW9vq/Cv7apdl8kkVWDpVliMc8=;
 b=EWXDfGfmpQn45tKwFl9bt0Ya5Cdbyg/XTHhySfzhFCVH6/3IA6YcDXIp
 iUC1qzfIkoPswlfpUsWHKIPBOZmT+qxyfokI1YX2Ub+/8cke8QGoA7W1H
 0T4K4M4+u/9mF6dPDKWx2bndNr7741ZyM5o2nrkCQFVkzg0JhVcn6wWyw
 1yp0/nD1joV3B4mSHJ7DAL2hChrww0FlMeB/ndeZaNNFFZE52QPZZHJl6
 HhX5WTyh6Ws7/KYksRFYMWbBJaV3+IP3MjCROHa0gD1mr8IpjOQZaLE8B
 Vi91yQ/hEOOCXPiNflM+WaZFTnbTzXD6OsbftoBzkQmw+OM0/XgvSzX4U Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="379435649"
X-IronPort-AV: E=Sophos;i="6.02,228,1688454000"; d="scan'208";a="379435649"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2023 23:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10823"; a="690820212"
X-IronPort-AV: E=Sophos;i="6.02,228,1688454000"; d="scan'208";a="690820212"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2023 23:26:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 23:26:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 4 Sep 2023 23:26:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 4 Sep 2023 23:26:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 4 Sep 2023 23:26:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NZjOAiy2Qt7nLKgmAuOpYYtwdYBYn/8pBtjg72Up5CrG44CmvWxWcRxpBfMJQYyN/OIMRs0uek56fFIomN5CEgolwhW+2JpuONeuRrLkF9R/m9s4gBBKNz7Y0KZQ5bIR+PhMGeBKcjbvnDstFrK5ciPjVEbynYn74pOr99pPKuFyP1+OGCtSQ+/ojOOdPVB9eM0U4Svu3jyRF3XJncu9qSVN/czb/AgLk3t+nyb4mLI3sKT50eyzIvJH2xihOoIOyR0Z49H06OvJppXzgiz635TcS8t9BICUKFmpjhjJsGAmDH9afkEV0I3rlJ4xtiO6nvmMu9w+QQUKsJfQ+Efe/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g3k637VRHyZFtqph6usjsVhH9nuiM1+4K9WWxgmPH30=;
 b=PSBL59Z7KQ2nogaoIA5QKZfp3aYXT+2CsgNqRh9iYRTSWBl21Z8zRDhLbl5ZVuWjocDLmuGjMiwwsM3UF1+m2AAk2LPL9UvSQNrTxaV6yzjWRR1z0tieh6kT8MoKsV8MIkxVxifHp3t14ohS5WfGSfss7yW9P8mdshYW8fj6rJUc1XWIgKLoW2ji1s5YgS4wMqew5fppg+eRQSkJev4GQg82nTAUGF0iFFVmWR/j4Gl6s7IehkyMX9TPySu0X0688vdrwy62j0bHMp8vkizgnlPvoGEVNOeQsVJQquL8Gj76ltB5BLuzTb4NmdaWJ11nbVO1nETDM7/J5DEAWW+1UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Tue, 5 Sep
 2023 06:26:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.030; Tue, 5 Sep 2023
 06:26:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm: Add Wrapper Functions for ELD SAD
 Extraction
Thread-Index: AQHZ1EmHOfid9XFacUaYRkauyCHLjrAL2Z0g
Date: Tue, 5 Sep 2023 06:26:26 +0000
Message-ID: <SN7PR11MB6750A17E903EC98197694B6FE3E8A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230821160004.2821445-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230821160004.2821445-3-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230821160004.2821445-3-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 526ecfa5-52b4-4476-c68d-08dbadd90849
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3E9HfdOQtYDY4caJ6HFz1f1EKyZV/YoaH6NDtB7/gfJZYdtXFZU/KH2hvQzmkO9l1Vn5M6jie5dmUrv06xd0qOsfg1oPpULAerunh208PJAIMV+oEMu09b2S2OqigBAOsnkY1fLaiLJCNcrGtMoe6NMpNzPQ3eAY3oEU6pWswKPwgJgkVVRD7j1xA3W5zaYHvBKESnsQAy9kr0Pl20CO/kEhFLNdq4gL3CPpkf2YHg1DPk0X/WUgGqL1JiCdePuGayCOKVeJdihqyNPIGBZsL0qGQ/5+fF6aQ7G6w9XdfMnCzbWuG6lmWyr3305Dm77GMTTS5ej6MnPsMF/YaJbHdHTYqiUyKP2p5yOKCfOhxECHYgYbH+bM+i/Olt3D1RdxdSqea+3C8+tB2ZtXjk4JYCeMeNDvlpdyhmyQHH+UVlBZdRu+ag3MB4Fp56rqV9na8kQTBE8RMsClyqfhOnNKuPLuWrTEoKlEIRighRQWGv1On+k5HBDh1T2YXqaXGool6wZQ54GdOEWKc3+0uRvVicn38o4OxkJMDkoIOdZzkZqYdyC+OO3ucWOlZjrBkYlxQwFczUGxItJLyAVItP4j5Oo8xrepNHZG2IDvrwoFwCM699WLI6BTCwnUrmn/e93U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(366004)(39860400002)(136003)(1800799009)(186009)(451199024)(38100700002)(83380400001)(38070700005)(82960400001)(122000001)(2906002)(55016003)(9686003)(41300700001)(316002)(64756008)(110136005)(66946007)(66556008)(66476007)(66446008)(86362001)(76116006)(6506007)(33656002)(71200400001)(7696005)(478600001)(4326008)(8676002)(8936002)(5660300002)(52536014)(107886003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oyCw9/i6rWlkhmPRi8mDw/ynpsb4Yq1cqZwytI1BzR0Q++4JcOPLl62MWqx1?=
 =?us-ascii?Q?+cZ0Lp6rT7U0LVWOt2QxwE+YAnshZqj8+BVqA4cMXqS/zGnU6+BbOPw/t4T2?=
 =?us-ascii?Q?jkKJCEotnpXPbFpdKdPj418vCDrEuCJXhLqAe6/pwFbvAJ8llnOT2rpUWY1Q?=
 =?us-ascii?Q?VfNEgBsdVlfsKFY5RTq74XHUFVg9jv4JyXi8hpxWl+TG1Q7TUT6ibdqiIP/p?=
 =?us-ascii?Q?IJV97uwenff1QRhmI8IlKT3jjHWVwzboXkrFrcCiMn9qvSWOIX4/0uI9Pq3m?=
 =?us-ascii?Q?GLQ99heLmiNmt6zy4+Lwi9LIAKLfDjPR1YmQJQTZIkan3QnmBzjyXVEJnMXz?=
 =?us-ascii?Q?1PJyW3gAe1MmvfGuQw7OipgWEXWSxROGKMPGJCmU7/CcJGJMyyI47EQwu1qr?=
 =?us-ascii?Q?1/meVbNgRRxyZaQpQOlXIFjuK9VA15ul+EVgJwKrYVfPvP1RgIrIgo0sTGTc?=
 =?us-ascii?Q?QoNL82oLPAK/urD2cULidmyfIAK64ZPF+eWNsKZe4ct9k5EpvyNEg+OuCP0P?=
 =?us-ascii?Q?43pn8zIskis2ba1hf08ntRInvUzz3hUxM+mA7bIJf/T2b2UMnKqbNC7ssYxu?=
 =?us-ascii?Q?jXFjVF/AUMiGkguX+cp16yxu2nN6FqhTkS6MOkE5YsjfZVaRc9i52D1TkHEu?=
 =?us-ascii?Q?QCI4J5ArZVLjQEyK5ph2QGF9o1BY1DESsq0CyQpZJyvEMdCSwPrqn+aySg6W?=
 =?us-ascii?Q?tHIHh6gMRvK/sg8lVEfGGILZJTngE6aJGktnxOcxV9WMm+j6JYtQKFXAY6ot?=
 =?us-ascii?Q?qWkf3gA7NplDTBcB7ZbKwYIeS8gUQkyoQVpK0YVlBT4kZI22PO8vx4gaUVAn?=
 =?us-ascii?Q?eKFYLpQzfsFN9JfztDOHLAm/VdkzcYLUXv77QkeXRmbRrN0CQLY9HcOOu+5M?=
 =?us-ascii?Q?SmZ9ssCUt9ICkEDRkVP1WpTbtvYZHHPHz7r4DNsSZrz0yyIIFmcyKocuN3Pw?=
 =?us-ascii?Q?xdQB7vQTtOfglakUbrF4uATG6etjkAOktAoBB5YatMtU8fwSoEmJD1S37qpM?=
 =?us-ascii?Q?DgE6kw9pVUtBP8f/V7f3Wsb0qOhlrlsbui8C2mEZXd2bNH8fCbQGj1iU8BiO?=
 =?us-ascii?Q?DmVUbjavDF8zJdhATfejnj19pDtWTEbubA/bEhBFirrtwWaE2lFvl6OHRMW2?=
 =?us-ascii?Q?D2CM6nz0yB1ix67BmXbOMc+XvamB/EzDCoxEmi5MP4KrJKlW+rMY4R/wL4S+?=
 =?us-ascii?Q?61LPToTYXpM5pi3Gp9E3R9v4MhOakVNp+5y4bnubPUmG0jOBDxoNNkS+brQn?=
 =?us-ascii?Q?DeTRgKT6S/7qJYMJzeopmzdptuP7FwnPECpNztWAFulD8bMcrBIr/V8BLvW8?=
 =?us-ascii?Q?d94oEQglMqrAR3pU8+qfnKyM8KDjXP96dWs1fsbgn9EU/oiVi0D6pox08CaB?=
 =?us-ascii?Q?ife6YXcj3uP0RbqgNW1XjIMmKedFsAH6XW0GxwlhbCUrsomMC6ArCqJWjrYW?=
 =?us-ascii?Q?3Ss4iPsRjqA37oLHTnZBwvkaCkz1hHWpCtKdBEf+ussOr9PNzL0DLa+e85WZ?=
 =?us-ascii?Q?0YYDjdZA8hH4ysXDcEpXqTtwPTDW6pdLe3rm/ZeaQYRxAghceJ+qJijP0DRb?=
 =?us-ascii?Q?MYzpAxGipkyxSK/YE8y6wXpdVswPa2N2Y/SO0iGo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 526ecfa5-52b4-4476-c68d-08dbadd90849
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2023 06:26:26.1605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SPz5rnOtovzHp0uKgb9DKNy3TrmAJ8wAoUwD1jzznX+6D4rhI3whjOA+L6VpXn1XdCyr9g4CCBm+llM+37ywWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm: Add Wrapper Functions for ELD SAD
 Extraction
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

> Subject: [Intel-gfx] [PATCH 2/3] drm: Add Wrapper Functions for ELD SAD
> Extraction
>=20
> Add wrapper functions to facilitate extracting Short Audio Descriptor (SA=
D)
> information from EDID-Like Data (ELD) pointers with different constness
> requirements.
>=20
> 1. `drm_eld_sad`: This function returns a constant `uint8_t` pointer and =
wraps
> the main extraction function, allowing access to SAD information while
> maintaining const correctness.
>=20
> 2. `drm_extract_sad_from_eld`: This function returns a mutable `uint8_t`
> pointer and implements the core logic for extracting SAD from the provide=
d ELD
> pointer. It performs version and maximum channel checks to ensure proper
> extraction.
>=20
> These wrapper functions provide flexibility to the codebase, allowing use=
rs to
> access SAD information while adhering to const correctness when needed an=
d
> modifying the pointer when required.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

This should also be floated in drm-devel mailing list.

> ---
>  include/drm/drm_edid.h | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>=20
> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h index
> 48e93f909ef6..626bc0d542eb 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -418,11 +418,7 @@ static inline int drm_eld_mnl(const uint8_t *eld)
>  	return (eld[DRM_ELD_CEA_EDID_VER_MNL] &
> DRM_ELD_MNL_MASK) >> DRM_ELD_MNL_SHIFT;  }
>=20
> -/**
> - * drm_eld_sad - Get ELD SAD structures.
> - * @eld: pointer to an eld memory structure with sad_count set
> - */
> -static inline const uint8_t *drm_eld_sad(const uint8_t *eld)
> +static uint8_t *drm_extract_sad_from_eld(uint8_t *eld)
>  {
>  	unsigned int ver, mnl;
>=20
> @@ -437,6 +433,15 @@ static inline const uint8_t *drm_eld_sad(const uint8=
_t
> *eld)
>  	return eld + DRM_ELD_CEA_SAD(mnl, 0);
>  }
>=20
> +/**
> + * drm_eld_sad - Get ELD SAD structures.
> + * @eld: pointer to an eld memory structure with sad_count set  */
> +static inline const uint8_t *drm_eld_sad(const uint8_t *eld) {
> +	return drm_extract_sad_from_eld((uint8_t *)eld); }
> +

Not sure about the wrapper here the point of the const variable here was we=
 do not want the eld to be changed
but adding a wrapper seems to make it irrelevant
Also why do you want to change pointer data that is a const.

Regards,
Suraj Kandpal
>  /**
>   * drm_eld_sad_count - Get ELD SAD count.
>   * @eld: pointer to an eld memory structure with sad_count set
> --
> 2.25.1

