Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A6A6E45E9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 13:00:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 425BC10E14C;
	Mon, 17 Apr 2023 11:00:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE88610E14C
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 11:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681729211; x=1713265211;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yj8ywO0aspfNGpNjG4oAo7jrNkvxsYHu6r3ygWiNO6k=;
 b=asjD/0VD0P9w95G9ii2SCERxLRItZy1bJgcVH8/AeeN9yd/5n7yQF6m/
 xwF7RlBvjpXnyL0EtF41Wk+8DxhKXXYVuV9WeFAhCF6tBG2GYy1Y6BtqM
 CGWH3er+8DKMZSUD8TlN31vUPMxy39Xat+JRef34+mn8qbvJ0De1kZLAn
 xCNfWyucZCwldzKQWLPCLV6Bo3mWuZ9IspYKatGeIqL3m4hewVFPA2/8Z
 yOZfHm07RPRiKum5heuPUjufj3dYndrnScTMCShu04e8mJofZ0P7itOmJ
 0J22YcnpWdX7qoX8jG4/IfUZP8toQv8fzSO9ZxGYIyM0J0HcuPvOE2dUh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="329028712"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="329028712"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 04:00:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="721073793"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="721073793"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 17 Apr 2023 04:00:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 04:00:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 04:00:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 04:00:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 04:00:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KGH9/3ORoPY30k3joGJY2f+iMKho3ii8iQHnzBRyGS9J3nJcIx8e8VW/G/SAWyPYzCcAN/CdRGWltj2Fx8Aua5d84xNRlDwz9OP811eMfcIc5Utb4Ix68LsriEkOhLe5Tp9GQWXmHJzue/Loh1yfHx+JmmuJqAQfpes4ivPDfjxj3QwX5zLo53W4fkKTSz94d4zlEYgJFGuRRTtrjf5RUBlrh7MxhTf03ZQWdsebcdD2rVtwf9glxv9WFHgVGzmtyCD0c84dxy/RiR8aEx62dVZb67rr0E0XJSStlLWEfDO94wNGx3pd4Q1cIdsPhoXgV65lTQer17fftgb+Pj2Xhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rte0DR6ObrcPB5Yg7WYwf5gUn11xMUQ372ihYxE4o8c=;
 b=Mp0BidQ6p4pYgWtweP0eGI4jRH8phsBS34C8BlCl7SU+P6iRCvFZdYZYd1QthG3pEFXSz3QTbeLS/WorTBxKWKISNb+CWgezrOLJfAF5sZlKMbr8PgQNHskWkXHFWSufkjShSa2p+pGf4lZNFmrPo0jOSHPSEUhMLvJj5usmZV3PJibhNzKnOesVJmj3SxvokfmYXcTR6q0cWsRcbqidtUwciYZ+bggzoIdiDK+dEMxQT1ErXVfUwxNtZZNNA0Utn3CbKK1+qlgzeA7AH1bf/suoxyJjLd8KKfoy50Ys32+avSEr4InGZQk4JYu8/PlkkkWAA64oEps2MNoTWc0cGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 11:00:07 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 11:00:07 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivCAAATIAIAAA/oAgAACTwCAAAA9YA==
Date: Mon, 17 Apr 2023 11:00:07 +0000
Message-ID: <SN7PR11MB6750CD1B0E64D77BE7E76A0BE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com> <871qkigabf.fsf@intel.com>
 <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87h6teer21.fsf@intel.com>
 <SN7PR11MB67501452EA239C59649E8335E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
 <87bkjmeq0j.fsf@intel.com>
In-Reply-To: <87bkjmeq0j.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ0PR11MB5040:EE_
x-ms-office365-filtering-correlation-id: 5fb1bb9c-8633-441b-6daf-08db3f32e7b3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9x4G5SMCQAr+oGx4A5bvknXh1uBBvW2W2eSA7KcIWKQTcQUlKXoc6WZfFl76myx4dFdSK3hGksr6FF0BokpKrNHIY/uyoXFxDA3eJUsQswNHL0hNZ/X4GsVK4qWKD/8iPSI4HpBLGhGkHV2o5w+FU08KfIZGvc4LCpSkBhECD4r4zzdpNSOjvCWSaUqaFx+uktisSR5iaNsKiAHpViuj4he/nLCycmSqhmeLlGGcbI/W5GARrHx7+0ocD8R3Tr2ljo4mptsOv5el/762D4gZJDznpJPQHaGdsUg8hXyxXWnm7dVPlimaLGN+quLH290Y11tWU6JU50QHsuzIYLimf1yi8P4A5D4NxEq43kwbLsBOKlOnRKWYjsaXt4Iuj5CDRtpykLKAviWa2dZ93mSOS/b1JAKiXgnSex33VvI99lPez5QuC2eVDAHyj+ELjkFh9Rz6O64ipVNyQKyhP6m6olo6J63cf5HDe5FARl1zsEuLSNcbyc8ADund08Bg1Lvnm/ATMjPyEmMr+t20lZEmeSj4Arf3cFJXFMQ7EPqkXfsjHbMec1iYPQYIz1h4BIwQ+tRkAIQJBJQ+Rgnf9Aboljhdcf9KbW9V1alFdNdWBmhzWYqmEZjzNrG6Q2FBrVTy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(366004)(39860400002)(136003)(346002)(451199021)(33656002)(110136005)(4326008)(316002)(76116006)(66556008)(66446008)(64756008)(66946007)(66476007)(71200400001)(478600001)(7696005)(55016003)(5660300002)(8936002)(8676002)(41300700001)(52536014)(2906002)(38070700005)(86362001)(122000001)(82960400001)(38100700002)(26005)(6506007)(9686003)(186003)(53546011)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0sEwSvPp784ou+KZE3UeOyzho6zoiyvOIonnx/cpZlwjNCeVxa/BZh3Jidfw?=
 =?us-ascii?Q?k2rhiulz7sTCsUd460H5X7vdmPVHJHvJSyZZPM+mZtmcgUimUlmA/ITTHqld?=
 =?us-ascii?Q?KN0cOYEMwu21Kx2h1F6OVnJ31cMroMgZnnkwYWOYnXZnTTxMaOkh64WS+UKE?=
 =?us-ascii?Q?OGN2d783oQC5WdbAWPvHT7BwleBNdJZoqGza81UB0axO5oxrZJOThYqzDbd3?=
 =?us-ascii?Q?pc54GJiw55LsyrBBvktLdYO6QKZ5OTsWgXQn5Q8z5YmVwGx3RIFsWW1WkbC9?=
 =?us-ascii?Q?oC5it8/diur59vorO3DB7yERPt4W4csbNzmOBHXPYE7162/7Y91OCpBD6lrs?=
 =?us-ascii?Q?RbgaP5OOm/Fy03mnpwaAmFmfdfUEpbxENkMjN5AL21cNk21QbC2lXTA6pkf7?=
 =?us-ascii?Q?mjJ3ZNnj8Xsdcfn0RhrIzSUgr72MvId97xTamvAxZ7ZEN/eHqW6EDycNiP0V?=
 =?us-ascii?Q?yqp7zPa9FBoo65ewIcYQ6Pp3g9949hRpKBwIu6nYvC+hnOdvFD94myR2oafC?=
 =?us-ascii?Q?Wy/min+y1NJNgneyjIFMAdfD2d6nHWm1HbY/hTSnUdFaOUqYGqYnRbqr2Aed?=
 =?us-ascii?Q?wkFu630Xlow3lvO1auIruAg5NNTMEZExZFHx3yeB2QyO9xnKj9kbSd/ddazj?=
 =?us-ascii?Q?eQCkbVXLKoRRLvOfvIz5Oq3//8+JEShroWzwAsgvnMRHumOT6rVmZE03E29X?=
 =?us-ascii?Q?JaU+q0dObaEqy6fpOFON1RpDjIU5kW6daeiopuhxW5fPUv76BetS6JZRhtZF?=
 =?us-ascii?Q?BxA1Og5pTyxlQgVQkMCDLklpjWzmWTpWgyL6DSqc2h/4H7HRm5dgYXA+VZsD?=
 =?us-ascii?Q?zGW2ZWfjOch/toTOdN3l5oV5WuzYA7QpFJrwOBdXYGGilaBmLB2u3UhRCzQe?=
 =?us-ascii?Q?vKb/mkvt7BXqGQLjstUXUyCMYDB+pAR/+ByNPvAd0aGk/fPmsfNQlNhMgOy5?=
 =?us-ascii?Q?zECXQyvtN8EGhSeONGr+w5gXsuEv0vb32xZvoLvpy47Pbo5nVGoFhIsI0Jdz?=
 =?us-ascii?Q?oTTBUjWCYVLaFCxzr6HTD8r0ICGHYLsVBUcu+U/Tfcs//v+O8a1i5mbjaFgF?=
 =?us-ascii?Q?F7B0zwWuGGxzXSSNipfkqTgYeVxE2wENttjRLlw+ZAhLC7/VZiKNUX+etscO?=
 =?us-ascii?Q?11aWKSZgRjw6QcO6x9Ajq3FNvTfpN5/etls35q+YCgzDdqDBrerh8Hs04Gzi?=
 =?us-ascii?Q?Dw0ZcB1X42glVqpRYg7/q5+8YblcEeuno2AAzcRYBzZ4WRv0A+VvUCuMmKYO?=
 =?us-ascii?Q?RaC1xm1EXMi0WoJafmpxaW0dLYQGv1+XgP/NGJb9wmIk5JckPSbOlTDyz050?=
 =?us-ascii?Q?tuUOVqid+MsMFbwzfP6a3nIN7poYHC3gzdDX9jZ118qcXTFLkdRygT6FyVaB?=
 =?us-ascii?Q?2vsOCWOHDVHrg67Lpu595XlIg7WLI2R3v3mnYchMdTTFfoU25ZVtpBLAaoEI?=
 =?us-ascii?Q?7zu3OyFCB0/5h5iFat8d6hA1Y1nqxhAyfFL+v5oYgJ7hlj6wC+rM9EW4rIJ8?=
 =?us-ascii?Q?QBhNp9wvkfnCDC7wnBZROw83O/lbNCho33c7KdpoEfgLlhJBHgGGvPzwj5n+?=
 =?us-ascii?Q?WJBfk/Xvp+OMzzcibHCsOLNsdhDzlBSCBPaaa9SY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb1bb9c-8633-441b-6daf-08db3f32e7b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 11:00:07.0553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XpRqr+r2NtAbjflwM+fpQ+zaWGpDWIMd/74HnbA3IDoTZXasyIMiFqh732L2mr8E0CS61GBIXvQZLXqo3e5CxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
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


drm/i915/display: Increase AUX timeout
> for Type-C
>=20
> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, April 17, 2023 4:04 PM
> >> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Subject: RE: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX
> >> timeout for Type-C
> >>
> >> On Mon, 17 Apr 2023, "Kandpal, Suraj" <suraj.kandpal@intel.com> wrote:
> >> >> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com>
> wrote:
> >> >> > Type-C PHYs are taking longer than expected for Aux IO Power
> Enabling.
> >> >> > Workaround: Increase the timeout.
> >> >> >
> >> >> > WA_14017248603: adlp
> >> >> > Bspec: 55480
> >> >> >
> >> >> > ---v2
> >> >> > -change style on how we mention WA [Ankit] -fix bat error
> >> >> >
> >> >> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> >> > ---
> >> >> >  .../i915/display/intel_display_power_well.c   | 30
> ++++++++++++++++++-
> >> >> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >> >> >
> >> >> > diff --git
> >> >> > a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > index 62bafcbc7937..52f595929a18 100644
> >> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> >> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> >> >> drm_i915_private *i915)
> >> >> >  		    "succeeded");
> >> >> >  }
> >> >> >
> >> >> > +static void
> >> >> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private
> *i915,
> >> >> > +				   struct i915_power_well
> *power_well,
> >> >> > +				   bool timeout_expected)
> >> >> > +{
> >> >> > +	const struct i915_power_well_regs *regs =3D
> >> >> > +power_well->desc->ops-
> >> >> >regs;
> >> >> > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> >> >> > +	int pw_idx =3D i915_power_well_instance(power_well)-
> >hsw.idx;
> >> >> > +
> >> >> > +	/*
> >> >> > +	 * WA_14017248603: adlp
> >> >> > +	 * Type-C Phy are taking longer than expected for AUX IO
> Power
> >> >> Enabling.
> >> >> > +	 * Increase timeout to 500ms.
> >> >> > +	 */
> >> >> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> >> >> > +		if (intel_de_wait_for_set(i915, regs->driver,
> >> >> > +
> >> >> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> >> >> > +			drm_dbg_kms(&i915->drm, "%s power well
> enable
> >> >> timeout\n",
> >> >> > +
> intel_power_well_name(power_well));
> >> >> > +
> >> >> > +			drm_WARN_ON(&i915->drm,
> !timeout_expected);
> >> >> > +		}
> >> >> > +		return;
> >> >> > +	}
> >> >> > +
> >> >> > +	hsw_wait_for_power_well_enable(i915, power_well,
> >> >> timeout_expected);
> >> >> > +}
> >> >>
> >> >> Please don't duplicate the function and the wait like this.
> >> >>
> >> >> Something like this is sufficient:
> >> >>
> >> >>
> >> >> @@ -252,7 +252,9 @@ static void
> >> hsw_wait_for_power_well_enable(struct
> >> >> drm_i915_private *dev_priv,
> >> >>  					   bool timeout_expected)
> >> >>  {
> >> >>  	const struct i915_power_well_regs *regs =3D power_well->desc->ops=
-
> >> >> >regs;
> >> >> +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> >> >>  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> >> >> +	int timeout =3D 1;
> >> >>
> >> >>  	/*
> >> >>  	 * For some power wells we're not supposed to watch the status
> >> >> bit for @@ -264,9 +266,13 @@ static void
> >> >> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> >> >>  		return;
> >> >>  	}
> >> >>
> >> >> +	/* WA_14017248603: adlp */
> >> >> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))
> >> >
> >> > I did try this but it ends up throwing a kernel null pointer error
> >> > at intel_phy_is_tc which made me float the version of code I did.
> >>
> >> Please explain what causes it, and how your version avoids it.
> >>
> >
> > icl_aux_pw_to_phy is called is hsw_wait_for_power_well is called
> > everywhere where its not possible for aux_pw to phy conversion is not
> possible with this change we only get the phy for adls version.
> > Will address this is next version.
>=20
> Cc: Imre for input
>=20
> Maybe pass the timeout to hsw_wait_for_power_well_enable() as
> parameter?
> Other ideas?

I did think of that but the idea of disturbing other functions stopped me.
If that doesn't seem like an issue I could do that.

Regards,
Suraj Kandpal
>=20
> BR,
> Jani.
>=20
> >
> > Regards,
> > Suraj Kandpal
> >> BR,
> >> Jani.
> >>
> >>
> >> >
> >> > Regards,
> >> > Suraj Kandpal
> >> >> +		timeout =3D 500;
> >> >> +
> >> >>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
> >> >>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> >> >> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> >> >> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> >> >> timeout)) {
> >> >>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> >> timeout\n",
> >> >>  			    intel_power_well_name(power_well));
> >> >>
> >> >>
> >> >> > +
> >> >
> >> >> >  static void
> >> >> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private
> *dev_priv,
> >> >> >  				 struct i915_power_well
> *power_well) @@ -
> >> >> 517,7 +545,7 @@
> >> >> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private
> *dev_priv,
> >> >> >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> >> >> intel_tc_cold_requires_aux_pw(dig_port))
> >> >> >  		icl_tc_cold_exit(dev_priv);
> >> >> >
> >> >> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> >> >> timeout_expected);
> >> >> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> >> >> > +timeout_expected);
> >> >>
> >> >> A function prefixed adl_ should indicate it's only needed for adl+.
> >> >> This change is misleading.
> >> >>
> >> >> BR,
> >> >> Jani.
> >> >>
> >> >>
> >> >> >
> >> >> >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> >> >> >  		enum tc_port tc_port;
> >> >>
> >> >> --
> >> >> Jani Nikula, Intel Open Source Graphics Center
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
