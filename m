Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 832766E3E78
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 06:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E37810E183;
	Mon, 17 Apr 2023 04:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D8B10E142
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 04:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681705821; x=1713241821;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sV3Fl6hJqU+OozMNE3e3nbflBklEB6MRtF3E9D/8C7Y=;
 b=cayyxeDzryB9VlkE9Lg4MD1DtrE9mni+fGmiNwVDCy62H6Aw6xyaooa1
 dXJ4wZfD091SZOKt5Zp+7SfU+0TmkoAlJVZV/a0lrx2JF2ixNKEwLcj1h
 uhH04KAwjdFyDU5shlGdN8xvCzOTsxu9OEP0HBc7i0nyHdxyz6I+ZPK7z
 asBgRtFFMVAIk1JvQtXHKgnUQatqYK1dq4dbIRDMv5l0uE1ifpBqe4NYB
 pL1Uq18cozNFg/6J1AXoF+f8eiAb5Mdzk8Jg71IYQyaEzpLjr2UcvBbmG
 PNVoad352tR0Yn+JoKw8sFFMDKnv2hREhW+ZyK9crYy3sjBqvxc/7h+lu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="325146811"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="325146811"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 21:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="759813253"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="759813253"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 16 Apr 2023 21:30:20 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 16 Apr 2023 21:30:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 16 Apr 2023 21:30:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 16 Apr 2023 21:30:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P+iPdUAGt4ZjxMTHVHHOHkM51i2F1Wn2qveJbgyMwyQBuJvKGYhLqw+S1xxiuGUBE+uK2cRrzTiw4TQzVBagdqhAriRSFlVEgvMwlNAfI2UnQniaZ672VX/6qNtR5s7KnFMahRsTqxFXFkr9gmHy7oN5hHYmxuFHDyHMwdciu16OJaCIrxH5hkXvR+HuKF7OCoJiLnL3oXa0YwGXe6TBr2njAsEWbWfUzUAlwBtIL/DCnE849Qe3XNLueRY5tTkeh7xXpKdLxIYq9S6tnw21GtqiO5vSH3moI2Pe1P7dIqaztWJMmvAUz9hvw6PpKZRGkhEEVARL8a2v4m4hvbxjdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T2YDUHDU1PVzNc+aRqycfLa9EICCAR9Qvzmdmr7fK70=;
 b=PlHQ8WJdJEeOLbvRT7rrs2WOkMY6rAb9nqsCN2Ti5OJmI6p8AQpix1Ddo9D5AkmQINiWWr1mqU7c7yJAlipzmfiP1gqsz4BkM91ZJDyPxlbAX0MIEkIOCkjIiKzqPuCuIVCQwPVoriooUFyEarSgVSVfUA6XrwUM4/bTU4fOONbSZh1z2qcUHdnHXJGEqwE2OcgrTmaNxcb0L/ZsRkLbeRAayvWtjHsLUy/sDY0LSv4Or22pW+i1y96LrmbY13WKqXHR6l+kRDVGNn3xoEX06+w6dHd5DFI+irxkli1vabP4x1IeEtS3Smpc+nd2dfGNuSwfc15W1w6NaP3p45vb4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH7PR11MB5796.namprd11.prod.outlook.com (2603:10b6:510:13b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 04:30:18 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::b522:b698:5cfb:bd28]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::b522:b698:5cfb:bd28%6]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 04:30:17 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
Thread-Index: AQHZZ48eMnElWjrRckOo2ZTAc2MdJ68u+xEw
Date: Mon, 17 Apr 2023 04:30:17 +0000
Message-ID: <DM6PR11MB3177E1A5DF6394F2A668E86DBA9C9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com>
In-Reply-To: <20230405071951.1258132-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH7PR11MB5796:EE_
x-ms-office365-filtering-correlation-id: 3ac6207a-28c7-41a7-2924-08db3efc726d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ghx1Pst7BMELi9wGKrjScJqSeg8tyA7vFTE44e4YSEKmwod/m4msJ3eG3H2O+P2G4PP/sldTXKgHPcLFVXtZ7eexLp+QDMPTt+P12NUIk9gAbgN+A+6T/EmBjlZ6Ymy/gJyENxw92Id515sBGMcYeeYMrMJTORLiyxZtllf6Rh3yccPeNWALpARyDRiIItlhMiT4C7zJpdtEZe4Yayz+ZFV09kC0WT1HHgN2EGao5dbxEnM7MMbgep9dzoYaVCNI7RFQWyJLJiN4i15CcLHKTcxUHtxLMgpbHjw2AqEcz7agXyQRYg8/Mo1SpzIE1FQxNCkbbd9lD2NRwL6go8JiIlNnNPhoFhaDrpIGUl1KtalCesyV6MloxyAK2UKRt+2ik8N8hoAPkSeTAFM2RI9y7waG99YnrWAJgHfFhIu+rJHV29kR2s2n41ez1xm8VjcR5VGfz1FKWKgG3HHpmZCJAqQHqWyYWb1oYT5VOOwVU0vagHnHWjMRy3EUrx1zq3C2RBPbfs6rxJuTIb3s4KH4mCA5Z00/ruO0PIc7PRv5Oc/Ee/mPlO3Vmzu0mN1pQz/RNtR4V/hb6iYwMPLrKpJ4raupJyUnW/XqdqbEw2VnI8+M/JuQtoYuVjrXMQpKP7J+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199021)(478600001)(71200400001)(38100700002)(8936002)(8676002)(316002)(41300700001)(82960400001)(55016003)(66476007)(4326008)(66446008)(76116006)(66556008)(66946007)(122000001)(110136005)(186003)(107886003)(2906002)(55236004)(53546011)(38070700005)(6506007)(26005)(9686003)(64756008)(86362001)(83380400001)(33656002)(52536014)(5660300002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cu33jvDkdOLXxxzzUuCZpF0Y6BNo4fEM6fnDSgEk5K7GCy+pDj8WuJ3yR7kp?=
 =?us-ascii?Q?jhmXelCVZhGk2fqUSBegn/X+S7u6GuaTjm3mlQp+ycYbsx72FfR4Gwu0InOy?=
 =?us-ascii?Q?t0a8PWd/LU/ckTLARdb2H9FuW9Dc/zPjjEoRW7adADq+GS6ML7Bm4XeQ2moT?=
 =?us-ascii?Q?fqp0QB8llwa6+NXFUFRdu5tYxJE6f6kmJ4BER5BW0bbFJPAIm51K3wCqbFTr?=
 =?us-ascii?Q?KPu5flrq8upoX9Uxct8yGGf3NJlsqQqED7PI0OM/+sFanHDO88X1MJklNkN7?=
 =?us-ascii?Q?z3YvJhqafidXcUrxCAyYN26SLUCO2Di8gLlZBB5gMz6A7WStJ2zDdWazxmpz?=
 =?us-ascii?Q?xeuAk/NQrZk4HicDFF851lTFE927+5kEIlgQS6Em/j2d4dw+HVUd5sgbBR9N?=
 =?us-ascii?Q?LtxxYxRNviqvicH1ZgQIFrAA6j5NpjaG87xOLzAYuMTPKg9NcGoIpGLXtfN+?=
 =?us-ascii?Q?tuAI90xBncA8/XrtuaKSIJ6tX4eBwnQMige7V2qbiPxfw9GrY2atLr3KvLdh?=
 =?us-ascii?Q?kn+xJdvldqV1JTGGzz7DKOczc7QRnDipdHHyPlOJerIEoCBl0GPD2jdNAhAD?=
 =?us-ascii?Q?vEEvk5ryz6CpDub7sFnQi4sVKiyR52oOnCF2tUqq5xLbspEVTxywg0r9olxo?=
 =?us-ascii?Q?jZ/wioUvnlntWncNVGmDkL5NiIjigsvZQ47JKZmsAdK5GNXbNsjREhBpmQ1g?=
 =?us-ascii?Q?AethDIPQ4tzQ8Ov/4O/IpAyzW2nc8WBxJ0sbbfDTHeRO+JxrlDsMkdXls8vL?=
 =?us-ascii?Q?OrA1nsfv1PIRtjxf1X2PIhuIhLBAYR4o2cbP17/P2rVnKk9v6QvcbZsH8kKM?=
 =?us-ascii?Q?E/yyUo76gfVCtZOZ3b3J6EXIKFCiO9m6e1ZcS4qY8ctmlv5qaXHUT6ELotSZ?=
 =?us-ascii?Q?znaW8Nxp1Y2sKkrIVB/WAmJl7i1CDYmutS+3kWP2X4jMbLzKyzm0kMB4E6Bl?=
 =?us-ascii?Q?iwkgiuFqK7QG9TAoIsvllVjSXK7EZtjcotbqSgMlqEfZGA3NVVycupxh4H5h?=
 =?us-ascii?Q?WWZnGTPKrf439zKRsIKfMtS9JF0xAytgG9EZNRDEurL4+aje2FU6lv5ZoO3j?=
 =?us-ascii?Q?6QgGyCh5p7nZn5rti6HJEepbVHwvdDiyJ1xwZlwJ0lsagQugaMDHpRKjteZy?=
 =?us-ascii?Q?qBuGq61QgaaLReGUbHJ82x9OQCo6wgn/9MfeP38rblcsxzhEAGwO1dAxcIir?=
 =?us-ascii?Q?rmPfMGv2EE4Q9euKbC1bthzEhGOtSq/GZToNilUBFphX7Rp5JcIHeeDvnYF+?=
 =?us-ascii?Q?BR0Ovh+SVjPEhjixACPeDIr2r9j77LCT1avaltbxSExeAbFL9MEnqDBbG3Ul?=
 =?us-ascii?Q?VEnUcCjfQBD89lGtFcd1ji3FgdvMsZEynPQ2rAxNu/ECgg0tq/zn/M8Dt/Sz?=
 =?us-ascii?Q?J/lwzZSuwEJYXln10XdHqye+6NRyC73LskcfTPAwuFqvardNuH53SOgWKvSs?=
 =?us-ascii?Q?0Q7oCoLYn1GxLF4zozfNI8Dymfr/aHGozA/u7nhPB+v0hiJhkHzm4iqXJLb9?=
 =?us-ascii?Q?KRbmLO1+qXWUDIYIN8wib74fBpAZH9lgeMyrwm5uCdZOzoTceaX3PzwPHja/?=
 =?us-ascii?Q?gFnFKm3tVYbhaH7UkQTFPEtaovjjFJ+8cqZHv+r8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ac6207a-28c7-41a7-2924-08db3efc726d
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 04:30:17.5457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vS33HXQGUxLm5N+++TEnlRkDHkJCqLT04Db+UXO83+YOJgwWPY0dDjrfTp/m0dxPQUXOM7suyUFAoOfDztHzxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Wednesday, April 5, 2023 12:50 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
>=20
> Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> Workaround: Increase the timeout.
>=20
> WA_14017248603: adlp
> Bspec: 55480
>=20
> ---v2
> -change style on how we mention WA [Ankit] -fix bat error
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 62bafcbc7937..52f595929a18 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct drm_i915_private
> *i915)
>  		    "succeeded");
>  }
>=20
> +static void
> +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
> +				   struct i915_power_well *power_well,
> +				   bool timeout_expected)
> +{
> +	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
> +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> +	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> +
> +	/*
> +	 * WA_14017248603: adlp
> +	 * Type-C Phy are taking longer than expected for AUX IO Power
> Enabling.
> +	 * Increase timeout to 500ms.
> +	 */
> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> +		if (intel_de_wait_for_set(i915, regs->driver,
> +
> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
Feel that v1 patch was pretty simple and clean. Only change required on v1 =
patchset was to add a variable for timeout and initialize that variable wit=
h either 1 or 500 based on the platform.

Thanks and Regards,
Arun R Murthy
--------------------
> +			drm_dbg_kms(&i915->drm, "%s power well enable
> timeout\n",
> +				    intel_power_well_name(power_well));
> +
> +			drm_WARN_ON(&i915->drm, !timeout_expected);
> +		}
> +		return;
> +	}
> +
> +	hsw_wait_for_power_well_enable(i915, power_well,
> timeout_expected); }
> +
>  static void
>  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  				 struct i915_power_well *power_well) @@ -
> 517,7 +545,7 @@ icl_tc_phy_aux_power_well_enable(struct
> drm_i915_private *dev_priv,
>  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> intel_tc_cold_requires_aux_pw(dig_port))
>  		icl_tc_cold_exit(dev_priv);
>=20
> -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> timeout_expected);
> +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> +timeout_expected);
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
>  		enum tc_port tc_port;
> --
> 2.25.1

