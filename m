Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AA26E4029
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 08:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D5710E381;
	Mon, 17 Apr 2023 06:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01C010E381
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 06:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681714297; x=1713250297;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uevFe0JU8hOQUSzycZ2Q41t2dX+tEuWo2wKimXr7gfg=;
 b=mDxkzRWLcqJswmQPvWQe7qX1YXVXqwKWg5cPjF1uk9EDHaMxi17z8HDX
 6wyHdDUmH8Eqy5Yq7Vyrws7ylI0WZ7vDWcdkNyqTVsxhB1lTWX3cjoxzR
 BgxUuSH7f3H03/12wrKYQohiZRfzFgF0kPNLiU4ZHS5SzADKVP2whruBD
 Bmz5G3mlkEznFMObJGhcp1naq+UUWx1IXxzZMb1yROqQAZhwKKH0myaz1
 gR7m5v6dy5a56O/hy8ECEmENE9ppUYg6yN8jul0jvj4ZxUnoGmcYv4Vnv
 KvdYu/227f05NQoXJuLhJnCwmM1aPTlsRWLvpuSoNhU1Z4W58hyXvts0V Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="372697817"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="372697817"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2023 23:51:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="668002938"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="668002938"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 16 Apr 2023 23:51:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 16 Apr 2023 23:51:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 16 Apr 2023 23:51:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 16 Apr 2023 23:51:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 16 Apr 2023 23:51:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CM1usRV5B20HJHZb1aBZzuYwTmXfaO51e4AAfoOGM2iN1sPQFJNPIZLLT4diFraBtobePdnAWbq3zM0sI0yvJ6Ip09EnQMGXDARj8N6rTiMssDjCZHLESVpttiZm1jLRVWEbzVYlCru/2T7y7R4Hzh8WQhRUGMuxjGs0EuLyICeMZNV9M+/aRLG5yRgyp85IwlTm+d+6IvMXIV/8cRNTNJYo0dMMEK/JkNLynBnyJAPAPytou216SNfLKw/obcG018ej1AU7PL2O5NaaBnBZLgMDxJOVpedKt1ICeoyxHGpLfT/atyb8+eKMSx2xCoOHxWhMl2mZs6mK2EqNehc/CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vzDgJwx1aWi8FoEMbi6/FOqkoUH8UqgvWLrEMEhXCjc=;
 b=eB1iNtSXUUiEht1RJ0D4mFZ0OHT5klHQNECUNVNT3USlJC64Av9VGS34KpurLTKaiUd/TRyYd0HtQzNSFB77DpwVOxLOA6CvtqmdBmgWq8kX1tdUs+TxfTTNPj7poiGEOpDUNe8G2ysYhoAnTkENU2+ma5eNHY8akuJWCOVFiXTqrttOlW689eOgRfXygbvl4seWfk777tcS3CwbHDm8+12hRMDzDHNX5wj5fTtuVD6MOEp2mgR+WahgKzJ1wqS+vWi7yg8+tZ3RDHynuC5nGy1W88x2EpPxGbIFgcMJkxmU+zc684uG81bbtggN0iSyoK4lnoW5lb593TcY/nf98A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB7494.namprd11.prod.outlook.com (2603:10b6:510:283::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Mon, 17 Apr
 2023 06:51:28 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 06:51:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68u+4GAgAAl6qA=
Date: Mon, 17 Apr 2023 06:51:28 +0000
Message-ID: <SN7PR11MB6750FFB8B5D19B1AC08FE1EAE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <DM6PR11MB3177E1A5DF6394F2A668E86DBA9C9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB3177E1A5DF6394F2A668E86DBA9C9@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB7494:EE_
x-ms-office365-filtering-correlation-id: 899b134c-a332-4706-c971-08db3f102baa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7Mxaf9VYsr/zwmFRZSSgNMz9ox8eqanEGsUpaIc/xtCioRzgZrPUwwbWb9WMlUuScbNop9DRmoX1P1k7MIPevyGb4ho0YMeilziIlXATMDTRfnaFCAVx1sWpfO47DZFXqILD0hXFetRCyuP9iJ7IF3k69OW+8nBcbgXC9uM0goX/WuZp21rVLKqYebHCR2sZT3TVCOlib61BPr2/1geBO1N1X/g0fZimFLg4zjnkCBkM97S1e7Z0LS8YVd1WH+LXP/bGjIhLxcgj48S4bclu3MxAY3kKrl5xUhco1DAUw4bCcfJoGRVbmeA/sR6Q10ZZyTe3VGAk893LWp/VXQxfqZiZ8322KwzsRL84n3qMEIqsoCUkIx8VocGyG/n+6WNU6OPFNx+tCfwUzPgAU0MNW6JHhRUoaagY9BiVeWCne36F6f82j9f4WXTOIUX4GRv3BfNq/TUd7JHMFxmm58lWF8cD03l/MdbTLat9GJrUvijCrOOkrYItoafU1Z0jS0a1H76wXao1SERie5c48ODvD1YaTzi4J3LjwuBmqlg08AxdZsKLdKZT00eboAvjPtL5NtL+wfNp/iwxW720u0y3hOVObv3UZhnMOi1VP0+2xxUmOhrNaDe4whvsqeQWbrIC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(39860400002)(136003)(366004)(451199021)(33656002)(38100700002)(5660300002)(2906002)(122000001)(8936002)(52536014)(38070700005)(86362001)(66946007)(8676002)(66446008)(66556008)(55016003)(41300700001)(64756008)(82960400001)(316002)(4326008)(66476007)(110136005)(26005)(6506007)(76116006)(83380400001)(186003)(107886003)(7696005)(9686003)(53546011)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VhXiSUs9vJ4y82kDyljerW/7etqDDOT8ZiCdsre1ovXzBzq0PJsqq1vMHzey?=
 =?us-ascii?Q?vpqOvDJUNOb2ticilDHw6S8HnjWC1OdukTCzoRYlnRu6d2KNhqYs+NxAlBUh?=
 =?us-ascii?Q?Ir2iFcAmENb7QjbpDJd6EOCGOcsZVuO/Y9y2nIFgKsgkyPOw9ZdMlyOI7GvV?=
 =?us-ascii?Q?Ook4HvjcO03I+G7V6ccnZ8rMxMP7HAyRDF/PKd00juc7VredyS1FONhTalo/?=
 =?us-ascii?Q?6eEcFer8f8qDyPjVrh+xyKz4oXx9iPAMMNoXzam2rQlxpw4B09hxOWYjF5Zq?=
 =?us-ascii?Q?p/1mRnQBWPYtJ4FvYfRQaSxBosBe1e4PaRR/17nVMQf/H1HgymIuuHYkk0OL?=
 =?us-ascii?Q?WCEqOZU40FHhl5CAprqiLDMAt3a221/1bfj7xnz3OKlFdPXKDptFDXZIxomS?=
 =?us-ascii?Q?pqXb86oQfe95ynxnc185p7vqyY8khhK5dnAPGHHel05sSo3gCc5RohxqaRZc?=
 =?us-ascii?Q?ceIZAhSPluwSaO5HByLQf4ub/fwjhm86NX9Pwc9woT/yu4pq0rKoZSEJBMzG?=
 =?us-ascii?Q?h57MNvmyeturmgGjljU5kFbU4ZAm2+C/VTk7sKmNjr16jKU9iFmKHwHnRj3S?=
 =?us-ascii?Q?j/RyA7MS+nAjBVFUHKMtvbhcdOUS+7MS15+R6qyS8HMsvNoFzORdUHXZyuZ9?=
 =?us-ascii?Q?5GndfD9/lndsVDSY8fXmp/kBxTPvAlIUvgu/FUKfF+qU8nhe4/Zo0+65klX+?=
 =?us-ascii?Q?lSFIwY6HftVw1pnLmY9Nhk6DvTbDNG2EvzTbLoFbXbojSVQP6QGpqwALw1yS?=
 =?us-ascii?Q?9wYzO5XpUv1ZXoosbCB5afTeH5QsKU8OZaORwcV0mqCTtx5Gavocn6tJJ131?=
 =?us-ascii?Q?yel7DnhaE03nNmUv0T7WXQbpsrl4q6TXs4M/1ivJXRa6r+g3BlK5L0kUNg9n?=
 =?us-ascii?Q?VwDUsae0yFKlvtOsFTLgfUEPQehvef2CkUrfU15bO4eOmkrOqcDGZdrPmlPO?=
 =?us-ascii?Q?cmo7OJjnCZ/q6NdZDSlm0YcXQ6dBN+kizDrb99Q6/tVUCA1dM21bJIia5Axi?=
 =?us-ascii?Q?aaeXHe/STWN/QuJNNVjnE8cXyJ5u10+YgKmqIQzRgdlpBsn4WCAfsHh2UFf7?=
 =?us-ascii?Q?Fl44dRBrLXgp4suEYXAbW5ESS+UX/TIIItNN6XMkdzoaSKfsLMXTnZ9mM1l1?=
 =?us-ascii?Q?M+3C6dRa3V+oe2/llHvCxrGMoeIUHRam3x32EL90OWTAoOfQ5CYPoloazFGu?=
 =?us-ascii?Q?21DrLsF3EV8p7a9yQnOXZh1hCG5sM28jDE4a9nFcTNP19t9RrIjh6nIR+xkA?=
 =?us-ascii?Q?ONj+NUBEvsixYsZo8Mwm1DxjeQWR+WoryUeDoWG8fnHYVHTT1WenEAlGVTBI?=
 =?us-ascii?Q?/sgWF6fN0JZk7x6WyJoO8a6zgMbGccNpa5f5KzfXUzq7XgGakCcrd8ZcX7TX?=
 =?us-ascii?Q?zZC/yZ8xRBej+kMZJMPtZW2lzE10ty0mHN5onolxmxc2oyDT9Cp5kvCgSz0s?=
 =?us-ascii?Q?mtVYAJmMThyfkKdthTb4WcUkwbK7o4btaUs5v3f1CcGOWqt3DqkuG9JCypXr?=
 =?us-ascii?Q?zCYsBWQXuqt9vJZJQqMvISG0LK89gxrtqa9b7VwoT/PKpx6x/ASHpWfiwdy4?=
 =?us-ascii?Q?3q08AJIx/56otFVO8i5uv/KmsD1hROgzebDTHCZb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 899b134c-a332-4706-c971-08db3f102baa
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 06:51:28.7104 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vQiQ8QpRgc16CjhDZN0pGwc0CvSzhcqJi6C/U4ZOjJt7QZ7jA6e6ObLd0CjI48hZ3C+5gqXAwhdCY/F2QvpvZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7494
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

: RE: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, April 5, 2023 12:50 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Sharma, Swati2
> > <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
> >
> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> > Workaround: Increase the timeout.
> >
> > WA_14017248603: adlp
> > Bspec: 55480
> >
> > ---v2
> > -change style on how we mention WA [Ankit] -fix bat error
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 62bafcbc7937..52f595929a18 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> > drm_i915_private
> > *i915)
> >  		    "succeeded");
> >  }
> >
> > +static void
> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
> > +				   struct i915_power_well *power_well,
> > +				   bool timeout_expected)
> > +{
> > +	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> > >regs;
> > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > +	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> > +
> > +	/*
> > +	 * WA_14017248603: adlp
> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
> > Enabling.
> > +	 * Increase timeout to 500ms.
> > +	 */
> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> > +		if (intel_de_wait_for_set(i915, regs->driver,
> > +
> > HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> Feel that v1 patch was pretty simple and clean. Only change required on v=
1
> patchset was to add a variable for timeout and initialize that variable w=
ith
> either 1 or 500 based on the platform.
>=20

Hi Arun,

If we see the rev1 we were able to see some kernel pointers issue in bat wh=
en we try to
retrieve phy and check if it's type c because hsw_wait_for_power_well_enabl=
e is being used in many
different places and not just where aux c is available which made me go thi=
s way.

Regards,
Suraj Kandpal

> Thanks and Regards,
> Arun R Murthy
> --------------------
> > +			drm_dbg_kms(&i915->drm, "%s power well enable
> > timeout\n",
> > +				    intel_power_well_name(power_well));
> > +
> > +			drm_WARN_ON(&i915->drm, !timeout_expected);
> > +		}
> > +		return;
> > +	}
> > +
> > +	hsw_wait_for_power_well_enable(i915, power_well,
> > timeout_expected); }
> > +
> >  static void
> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >  				 struct i915_power_well *power_well) @@ -
> > 517,7 +545,7 @@ icl_tc_phy_aux_power_well_enable(struct
> > drm_i915_private *dev_priv,
> >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> > intel_tc_cold_requires_aux_pw(dig_port))
> >  		icl_tc_cold_exit(dev_priv);
> >
> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> > timeout_expected);
> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> > +timeout_expected);
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> >  		enum tc_port tc_port;
> > --
> > 2.25.1

