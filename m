Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB7462760D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 07:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 538EE10E269;
	Mon, 14 Nov 2022 06:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6516810E269
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 06:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668408345; x=1699944345;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=K5Fmb4RJLhuD3KfZG+WGL/Ic727oEC1e6rDhw56eD9o=;
 b=EeOP6xP+JX5gqHB0/MbUxnWDhzTjZ9thyoJ/K7BFe+OF4yofAiKc85Fr
 xO4gD5hHP3UurtZMc2W+QVfTUN6JNKMooHqVfSybEAdEMa7igWxYuH1i3
 vysY7WYP2bCD4K/cigOK2ZOgPOUB4attMaAXdf1BEsgfDjCLw6Xtx8g5a
 /jRE005f70M9+ZOvOoCUJNLPGux5swoQS1Ib9JdGtP+zM2qNrGTbOFP8n
 B+gh3Orb95EyNwgkdqTklJWNsrMRT9pulW5tExBQH5tlmhPF4h+WCbVBC
 6unJ3/9VFeC6uAh3WJtj0oSSCJe1sBryZHqKTH4eBGxy7t6CNzXAvB9ic A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="398186691"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="398186691"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2022 22:45:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671441856"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671441856"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 13 Nov 2022 22:45:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 13 Nov 2022 22:45:43 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 13 Nov 2022 22:45:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 13 Nov 2022 22:45:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSYvnVGumekNnkAJTXl2kB09YMc8S0Il2SDG8z04KD4aS+4xE5h3iTgr5XZ+HG1XNLsU2nK/pdPvxuqr0As+gD/e6p54KRaNj294EstaTQhO4iCom4BgT2s16mO5FSXd8ZkEY6kmmfGKo+IKPQXsaufqsHaqD0YGabYbO0RMVZiNSzL3x4c2AW7g+h/e745QgYKUsIUEOy0SERtaSn8gPJattHvOof71xBv3YWAKXNJU0NS0rH/KZIJq/fAW/AhjFcEYxApeDqtcMhczdMKoXCnfwVpMXeg/zfHXVT2Mdud28TRdAV6+0OHADeqXEfWGIskJhbjPxsa0qD4A55Wnhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vb5J1fY9lEkzR7bk+9rbIA1KGvEBoyxgxPLveupFmY=;
 b=j/+LNAHQxtnF8cwPX50DpefZFNkqSdnm6sPzzvCBGi6xPHmb3Uo0Mf80rXZLe/8tKpnVK9BfdkdQFL2flIHVUverDiMBDrvTh2UH2QIoipo648AkigNc5MazWb45fw6baIob4eJ+chgOX4RsZpCvuFS9rJKcduepQWnPXuGBbRk8eC+ftjwNuwmv5t8FZjB8WfYCjkg2sEMrIkeXnhVVJxJvLwfT/boRlTuOXiFExenxhGAoc+QsEx1bcPoDpn3AveS/zNF0HXBh63IRyHp5tlMW9v5RnNIZe3aN06+LqE76lCAktrKMzm4G3rgyjolvc3ioctHR2RBNf18URdijzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH0PR11MB5877.namprd11.prod.outlook.com (2603:10b6:510:141::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 06:45:42 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::7d38:853:2b5c:92ae%8]) with mapi id 15.20.5813.013; Mon, 14 Nov 2022
 06:45:42 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Tauro, Riana" <riana.tauro@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2 2/3] drm/i915/hwmon: Add helper function to obtain
 energy values
Thread-Index: AQHY8mTYxY0wRH0aNEOZO8sZKTZrSa4+AQyQ
Date: Mon, 14 Nov 2022 06:45:41 +0000
Message-ID: <CY5PR11MB621146C289E19A0B9782D45395059@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221107045240.4164358-1-riana.tauro@intel.com>
 <20221107045240.4164358-3-riana.tauro@intel.com>
In-Reply-To: <20221107045240.4164358-3-riana.tauro@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH0PR11MB5877:EE_
x-ms-office365-filtering-correlation-id: dc89a738-3ee3-4cba-5f61-08dac60bd954
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6+8N4IyvYm/WrYuQDis/Q3h+OP8KTl42nszTue4ZJXKF6elO9o/cm90+C/wpQgG5ckayXO4tftoGzNQ8BYGVw5W4JDiqEaE2PNkgmVYmizH+J489BuOYjaZH6uLEYsO9vfq7ohfgHu2BqybDsxEBGNo5lJ1fXTwg/+Wuo1CavK/Ll/iJXMGX1qk9WzNWUQGY121EQVvqG5YER8ovhu1j6fVpugjAtaua6RA7IEPOkEa6tFJMwUkPVvSzRQO0TAjfooHG4CxspOUWTSUHeSJohV+rMluRASh7mOLRduF+BmVDEq9cP5SzHL24WPLKCKko65KHCkNOkHI3akzWgaal+RiLoIqDDV8yRffcPUPq5gFs4BIAESVlv6+vF5MHdnrEMKKawLg195WwEWJICJKpJgv42cmzufByqGAcqWUY/+uVd4towfvG57HtFthBU5fECtchVa07QWLhBd2KyqlhMDOtXtLYnHmU2/IkdeaOg7F75UVNCoTavpCkJu8wVdNJpzcbt0GmC42cBUiJ8tqWX/SiZd6RQqXObW7sd36j4MJC3+yQ05VsQRDMyCv2U1VQUd6L/+bHiUodYIGsj9OxA7e/tvoe+6zsIGjGMAP/E6JqKxfyx2YAzJmMbbG/BClz2XW6+qQmBfaqDvZbq64dFQxDouC9XEpH5k+pYIxyfo1zJ7q5Gnt/v28VMlga8o6FOMETxFoYgj+YaK7bWHxEsIjR82FDywGkyDGdc9huKTDy+tMAPsKVhSNgXXJZcVUO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199015)(2906002)(66946007)(64756008)(66476007)(76116006)(66556008)(52536014)(5660300002)(8936002)(4326008)(8676002)(66446008)(41300700001)(107886003)(110136005)(55236004)(26005)(6506007)(54906003)(7696005)(53546011)(55016003)(82960400001)(316002)(83380400001)(186003)(9686003)(478600001)(71200400001)(33656002)(38100700002)(122000001)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+1LILfmmW+z5ENHKiEtEVTNGc/p6HfiJOg7DrFgrtvy3yIWSCzp2O62lArIU?=
 =?us-ascii?Q?Vf7SrVbkBNaKpTxnLYPRafcV9IyyPAgn9PX1CYeXNlXjkqhr64OBHEcWYpam?=
 =?us-ascii?Q?QBaXwZp725zwcZm+BZ8j+ebEJYggvihLhCMi+tD8Et1g2Nh6L0TnbOzEK5qu?=
 =?us-ascii?Q?YoxKYYVbRyYBOcIJlHp+xouv/OPrxufkiGpZdnTv65s9WbL1wS0RBmOmHwDv?=
 =?us-ascii?Q?Yz+bN4F9iKqmH9eL54XzujQrK5rfBZ7/wAhIsCGrkqg8Uxh0BcIf+TmT73t7?=
 =?us-ascii?Q?hdYxEOP+sTJwk0VG7e88idmd+UMCJI9V+wsKEnA7GYALouVhhrctxGZOwOCX?=
 =?us-ascii?Q?Z/QMN4WnBvyidsZ01ZLaPmfsAGMqYK9lQkMOA3Okw+VJ+lUOgbh+q2L+TuYr?=
 =?us-ascii?Q?eriNJu76V6cPFM41q+Z6ugZs30evHP76QaUsmuO91lA0tcWV80kqWq/nh9rG?=
 =?us-ascii?Q?83yc3Pbcbn84Zxt1LlgnF78CAOuesdxXFAlIsnaub4vj4S7kVWVxZLNAUtZw?=
 =?us-ascii?Q?sMqLwGvRtEGOFL1Aee7ugKXPBFlun8vOiCfu3tSK0kSs0+XQyyun2SIj1B59?=
 =?us-ascii?Q?AddgMLIlNAyFng6ODUwibBVBy0czM8NEa07KMFD75efhNmhC0fH1tCgM9zvZ?=
 =?us-ascii?Q?7THjsjE0XQwmIWj4kzXcf9oP0YEnqyRWjkfWu6iBeYkbpGWz7w2gNmUdWulU?=
 =?us-ascii?Q?Xwe1ebtN90DnQJiDiHS0xmHS2VIS0gwhzxVFnAxJ0CAm5K1jw4JFb75/iR5b?=
 =?us-ascii?Q?as8bbG2p0efYx7nUhYOiVBk6M9QdsmBVCwia0bKP3B1k+PugDLuzVtJ4p/Gp?=
 =?us-ascii?Q?wpDLOgox7LMf02LPxCr34+aObnuHGF6yvznrh6nBLZ3/n599LeH8ny0fDdfB?=
 =?us-ascii?Q?T5oJ0P1e+9S7qgCPXOmRe4TqUBsLD5AgUD0jTQaBJerGs6Cwnn7fDPbqvu70?=
 =?us-ascii?Q?xwiWIOKsOIZpZqri3661y7kVMbdwXdKT7mVufWCea+qcrEFi1wrqLSgQyNu/?=
 =?us-ascii?Q?vD/BrV6Gql3leKV6dPtUFIKWp3AKRqVkPXxcC2XyvknBq76SlQj32WEyNYjC?=
 =?us-ascii?Q?3nNCxJGwCANbZmWhwyIPQgh8wj1GzjNz7PirwSgn7iZHd9cxPYtJSUkOdz0u?=
 =?us-ascii?Q?3rUzeq9+w9495aqaMlfp11vSLgK7wMV/0B9PQKgXpl29zVEVmhpOfeCIHWXJ?=
 =?us-ascii?Q?MNzLq4ljQRCib+RKsht1eQWfQCu2mfv2M0HLjE0y6mIoKE6VMj2ZrsfdMOCs?=
 =?us-ascii?Q?wLFl4Kxv6hla2SIuL2aBO+KZcsx7Ecr+N8eiO4DjLsVb/FTZo/oWYvw3/fU9?=
 =?us-ascii?Q?5AnBT+Y6BKs84b+H/r32ZErr6zr+FO+Ti78YDy0lWTCwTFGKGhE4DpjXIk1Q?=
 =?us-ascii?Q?aYvmeqDbrOoiIfupvhBoyv3mS38t1aIb3OJ1ggCcyfIIu6iiIrDZc3LFLQXo?=
 =?us-ascii?Q?762BR1A2+OsyzRjnCFZBejzf10pr/Q5vjMQpc8LdWi5kB/1jA5tcy7sMtL8a?=
 =?us-ascii?Q?3H0vWHjLFcI85uvDGVV42V6VBhr0Cb/Ev6oK4PFqYiW/+H6mzUBc90XbdUS2?=
 =?us-ascii?Q?KVpJQTbR78vS20QIP/QM75QnxruRFs95CdYsP/D5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc89a738-3ee3-4cba-5f61-08dac60bd954
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 06:45:41.9159 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kWTtdBZ5/foOJp9J2Lm9fxx1Mzm258iVXK5B4ODJoKuC0HuYbIUr8pjiQowmS7o/LYSde7SanYbg7uUfjbLe2wi4vLMCSHr3DVVtgI1uOMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5877
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915/hwmon: Add helper function
 to obtain energy values
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
> From: Tauro, Riana <riana.tauro@intel.com>
> Sent: Monday, November 7, 2022 10:23 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Tauro, Riana <riana.tauro@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
> Tangudu, Tilak <tilak.tangudu@intel.com>; Nilawar, Badal
> <badal.nilawar@intel.com>
> Subject: [PATCH v2 2/3] drm/i915/hwmon: Add helper function to obtain
> energy values
>=20
> Add an interface to obtain hwmon energy values. This is used by selftest =
to
> verify power consumption
>=20
> v2 : use i915_hwmon prefix (Anshuman)
>=20
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 23 ++++++++++++++++++++---
> drivers/gpu/drm/i915/i915_hwmon.h |  1 +
>  2 files changed, 21 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c
> b/drivers/gpu/drm/i915/i915_hwmon.c
> index 9e9781493025..8fa861ac0712 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -138,7 +138,7 @@ hwm_field_scale_and_write(struct hwm_drvdata
> *ddat, i915_reg_t rgadr,
>   * hwmon->scl_shift_energy of 14 bits we have 57 (63 - 20 + 14) bits bef=
ore
>   * energy1_input overflows. This at 1000 W is an overflow duration of 27=
8
> years.
>   */
> -static void
> +static int
>  hwm_energy(struct hwm_drvdata *ddat, long *energy)  {
>  	struct intel_uncore *uncore =3D ddat->uncore; @@ -153,6 +153,9 @@
> hwm_energy(struct hwm_drvdata *ddat, long *energy)
>  	else
>  		rgaddr =3D hwmon->rg.energy_status_all;
>=20
> +	if (!i915_mmio_reg_valid(rgaddr))
> +		return -EOPNOTSUPP;
> +
>  	mutex_lock(&hwmon->hwmon_lock);
>=20
>  	with_intel_runtime_pm(uncore->rpm, wakeref) @@ -167,6 +170,21
> @@ hwm_energy(struct hwm_drvdata *ddat, long *energy)
>  	*energy =3D mul_u64_u32_shr(ei->accum_energy, SF_ENERGY,
>  				  hwmon->scl_shift_energy);
>  	mutex_unlock(&hwmon->hwmon_lock);
> +
> +	return 0;
> +}
> +
> +/*
> + * i915_hwmon_get_energy - obtains energy value
> + * Returns: 0 on success or a negative error code  */ int
> +i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy) {
> +	struct i915_hwmon *hwmon =3D i915->hwmon;
> +	struct hwm_drvdata *ddat =3D &hwmon->ddat;
> +
> +	return hwm_energy(ddat, energy);
Is it possible to re-use hwm_energy_is_visible here to avoid the check  if =
(!i915_mmio_reg_valid(rgaddr)) in hwm_energy ?

If (!hwm_energy_is_visible(ddat, hwmon_energy_input))
	return -EOPNOTSUPP;
hwm_energy(ddat, energy);

return 0;

Br,
Anshuman
>  }
>=20
>  static ssize_t
> @@ -441,8 +459,7 @@ hwm_energy_read(struct hwm_drvdata *ddat, u32
> attr, long *val)  {
>  	switch (attr) {
>  	case hwmon_energy_input:
> -		hwm_energy(ddat, val);
> -		return 0;
> +		return hwm_energy(ddat, val);
>  	default:
>  		return -EOPNOTSUPP;
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.h
> b/drivers/gpu/drm/i915/i915_hwmon.h
> index 7ca9cf2c34c9..a6c8efeb868d 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.h
> +++ b/drivers/gpu/drm/i915/i915_hwmon.h
> @@ -12,6 +12,7 @@ struct drm_i915_private;  #if
> IS_REACHABLE(CONFIG_HWMON)  void i915_hwmon_register(struct
> drm_i915_private *i915);  void i915_hwmon_unregister(struct
> drm_i915_private *i915);
> +int i915_hwmon_get_energy(struct drm_i915_private *i915, long *energy);
>  #else
>  static inline void i915_hwmon_register(struct drm_i915_private *i915) { =
};
> static inline void i915_hwmon_unregister(struct drm_i915_private *i915) {=
 };
> --
> 2.25.1

