Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0A893BB1D
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 05:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC6810E6FB;
	Thu, 25 Jul 2024 03:16:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QS5WgsLD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AE8410E6EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 03:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721877373; x=1753413373;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pAFgOAWHB/yg6FSMMKlNgHxVxszPHC043JsrZ/Xi97s=;
 b=QS5WgsLDi2THHEFSWaek26EbZx9SVnV56QddH9UBrcRXiQe6hbpySduK
 dMwr6sCQEP30gurTexgwIjF8lR1CC9pQgjIi5t66nwPqtfALBPbVnn8ye
 QmOQVCOLyTIuDH6/4JXyZDZ4Wv04qAo+dvGmrj11gJ93/1LUmXWys7puu
 AsRriSMkB/BIdwwiZZ0q24KvyJHKI+Fd1YgJpP71SHHECL3j1Igp98QIM
 R1WBCXcG1hOnDmeIARKxAm/ugS54vAST5TAwr5na0WTBrdd+WNJfnfC1n
 CtZtI8plGZxorTr6tvk2lcJCixtPESFBQLCnX4ozzkeZ5GVzytJg6vAYr g==;
X-CSE-ConnectionGUID: X5nutpOVT7C6NK4cZt0OSw==
X-CSE-MsgGUID: XU0NPzchRaqaJ9iJtcB7Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19551954"
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="19551954"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 20:16:13 -0700
X-CSE-ConnectionGUID: TJcZMwjpR1CIfKDgwuw1TQ==
X-CSE-MsgGUID: BAXtLajVT52XsZWKJX+s2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="76008487"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 20:16:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 20:16:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 20:16:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 20:16:11 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 20:16:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M+Rr6oWMiHhoz3fDEzH/nXfIM2XbbkL86r22E92EvsfEDGCGeQbylb03dabzlE07tMgKYVOeYpzNqvHRERpBpaM6q2CDp3AxEZo9v9NosPB28E1AhA0LO2ShYJpdP4QloP2FGlPWgdxwdRoGf45XQ3oyfdwtvGsHV55URYU7MX9BBDlF/VcKw72LAJW65EyF/TDrga0mCWVBD5s/6svYxOPnUbCvJQM+5uFhOK5CRTqTOcWuQrLOj4lyBje6qrQJMwLFFaeLrLJsxdLJLgz4UjMY7vaJwFpbrGfC7ynjW7yOT6lAon+fM6/fM/XdVdQzWvZQI7tJYcyBCZIjd8sJCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sEWj+ZlGdlKnuANAjMOFwHdF+nU9mCbmnIlNBajan8g=;
 b=lkeVviD4ph0h7Bss+bGItffmwXji/mC4sJaJZwZoBSkoGo0FZ2i7oEgp7A4vF1s5v5bPcfnhvPkBsolVKtePqTwI11YOOXDKmwR1Pn4CvjP6P2lWttqqHvefAwamc0mq43E1BhLt/auegzYRF6+yl7M06z/o5EN0RtKQGvKTLgnPtaTnY7uz0/xQAOtzFmen2zxeXHFbOFst+zyfiuGffWikh48WJXv5w/J8DCHoljBBaPvkJBwXqhp9Zqqw/NoEgefX7AvimAvonaVQLi5HH7iCFEhJR0Y8kDLuUhL1ItUFnQHBJP3bV4RPQSh8cSRtTPIP9CqGGhHiOcbDUmUWhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB7144.namprd11.prod.outlook.com (2603:10b6:510:22c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.28; Thu, 25 Jul
 2024 03:16:09 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7784.020; Thu, 25 Jul 2024
 03:16:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Thread-Topic: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
 uevent for a commit
Thread-Index: AQHa3FlogQWC07hUKEeqHaByc3HtLbIFSNeggAB0OwCAAQvPEA==
Date: Thu, 25 Jul 2024 03:16:03 +0000
Message-ID: <IA0PR11MB730708C1C6C348D16DD3343FBAAB2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240722165503.2084999-1-imre.deak@intel.com>
 <20240722165503.2084999-7-imre.deak@intel.com>
 <IA0PR11MB730719E68DD305BF254B5F2DBAAA2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZqDiegIe4mPSuZLU@ideak-desk.fi.intel.com>
In-Reply-To: <ZqDiegIe4mPSuZLU@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB7144:EE_
x-ms-office365-filtering-correlation-id: c1df15f4-68d0-4934-f7cd-08dcac581dba
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?i7K6lg+PienlqAPmFtjWO98ySVnv47cgsTN5cT1lRoB+NycrnIA25xR7fasQ?=
 =?us-ascii?Q?3fluB/EB3jWfkHcbaLuSmOLKuZOKdF9Ek06QNMtxDd00l4NxwOMy85opQQ09?=
 =?us-ascii?Q?ggmS3XnCEqruL+RCPFl4opWMS6vTwlmdqtkVORvHEBqTJwhNFbZMTFkKM3LK?=
 =?us-ascii?Q?CwEUSHPAgNMmbdhlBjBRuG0YmXSsWuxqJ9V7iclValNAQNLkR5hsjbMy0buR?=
 =?us-ascii?Q?wApOScG7VTri0uJAlDyv9b41yjMp7QgPUawSOes2wq0mPdfFxfYpVZrKOduC?=
 =?us-ascii?Q?oOn5QLqmS86HhW5zigsU2nF0IO8jluO/mj+Eb1VSdXymVf8TICLGTVmnreYp?=
 =?us-ascii?Q?ML1CW36g5+5WQpkzaANvkUmo2Jg6EiH7ra6LJBPcnQJH54WaGdwxLhpTnTPV?=
 =?us-ascii?Q?KA3yDFOlh/e59RgQGYnu/tAd3xu59NAnzaSy6PirJjdQiBDzFTZ7j9v5YWzX?=
 =?us-ascii?Q?i/irjpszTcsUw4juntVnSwH9cFhF+jYvwFgRYA8bSomDRZIl+sLqtLkp222I?=
 =?us-ascii?Q?qVa8QO4wTk8Xp79UqAoEVHeNJnaSJBjAL+fqi0JJTwt6D+RNpyqYp5dIM0N6?=
 =?us-ascii?Q?GPWRQAAUX7mOC/WrYp/OSCxEO3kQ84v/0DgPFZKeMF1SBNUZGm9aEFnmmmfb?=
 =?us-ascii?Q?zrzYSjRFGeJ5HS07PKe3AFEbdGzLEi6rYM2CUyNCR7HDUxjJu7D45cEuhjwz?=
 =?us-ascii?Q?+vg+bYKtDC6D8jVBRaZcqwUf2IE5sR25t6+q5IclcueXDicj3AZoDgvXXcMJ?=
 =?us-ascii?Q?4tfRBEOkFTXaR168PRzduVywKAvn01zq4iTxkUg6DmcSmcFEV0ddCcp/t49F?=
 =?us-ascii?Q?0dTBcYeGPjv2luFvje9GFptEE8KvikhBvLK08sxJEtWXUaglay06Utn248NK?=
 =?us-ascii?Q?AgPX6QVKvjwA5ZnGKSIydAm7jb/h/2TW+rtiuaN42OOCqA6EfVutqb1HUyrZ?=
 =?us-ascii?Q?X4Q7p8N7Nj4q5Ny4qDGoXh8rMM4WOKYxkgZed0NwFjKlvV0F2HUhTaqy8RgB?=
 =?us-ascii?Q?QM88tRCLJJ8/OGO5TfZt8UZ63UT7V7CSaz2KhDdzfahWXARDN2J3W9QYRYnB?=
 =?us-ascii?Q?5qVbn4kXb4xjWMdYCmvlRwFZR6cwRUDcFxV2W2czZxdkKaQ3VMY89tJJdYOR?=
 =?us-ascii?Q?99YcB+XRUlAibu+3OXSd/QvnYtzTz9zcveQhJNBYX5W9MsaXX7sKNAWILTNt?=
 =?us-ascii?Q?OJlGHKsoGZy/XLwyqoQgthgstQopLWw6bmAT3oC2qfRg1uNaPukz1vrKNI50?=
 =?us-ascii?Q?SHSBcDNVzfWMCJrkZ+z+nVPtXQCem5sTyGZPaoDakJDW6M3tQhTOTUHq/566?=
 =?us-ascii?Q?EwNpbnzbHedrXYKH8EnJj0sLPdVP8Co0UugYVzWnNyIfK1X89DAaBoBgEjeI?=
 =?us-ascii?Q?LQ8RnzxwCubjf5VyQywTp3rKJCl7L8Adl6x3yPOKmjtnyni9kw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6gW1NjYVMxu/DuCILf7qo8OQ2vqh4LOcgvB5WK9sxngjJxg6B0S+IGeWqxHW?=
 =?us-ascii?Q?+gI34KYT9pbkEO6I59uafKs9jHfdPjt7tGmHE4YWDWfoGXekJXgzxdKff4sL?=
 =?us-ascii?Q?J8DoEDnT/Pg7kwIg46E8S2jXSgxJ1KyyazGjkz+dIYkx77qLWmMWhfy+kVSQ?=
 =?us-ascii?Q?ttCW3EhKxSELixCnq+hJZcDm3GH25Esh5I8eRuIeBCwfmJj2hQ8OHSgK40Yw?=
 =?us-ascii?Q?VwfI8HqABuaVyPUWlItYfb+pWdea7JKNOwnZNdvGgid+np+BAivyqvZPo9Fj?=
 =?us-ascii?Q?fGosq72obh3OnXb/NBigyU0dC6VGkfxCAYoEra4kcHG7PgRK3hT/Z2YZA0Q8?=
 =?us-ascii?Q?Ul/4NHx/oVnA6NW4IW/CqgGH7QW72Nacfc0/hObcwhuMOcjf7QCe4/TdlEke?=
 =?us-ascii?Q?eNkeWfGzMbJN6xrSwLX1MU1b/NnXy+ixGQ5MK3s6KKOuUXui5Uq68HmsF+8t?=
 =?us-ascii?Q?QFgwcG9yIj6U+vTxCSP1ImnFtFeXqDn6n0ipOclWhHSj/gZfpuDgvjWZjToH?=
 =?us-ascii?Q?1hU1ATyUlFl5mQmEUF2SEXsNKn7LEomlTshf7Fg4VEqYKz+kcYQOstQqbBF1?=
 =?us-ascii?Q?UQ3nIjitKH4WX8tyYqn13BTljUWVXHIEwFY+luF79KLfeYmXVw3o2qs4BXiM?=
 =?us-ascii?Q?4CKPND3XNKzPSWmlktqjCEEqGecJuIC6J48R2tw+nJ8rL1dIpx6f4b5qQ2yB?=
 =?us-ascii?Q?7ekkds7p71avO2LOXgW2K0Ue/FPbt6NTVYcmkiA1w8JRQPghiCyBa+/vPcRs?=
 =?us-ascii?Q?LI4V5iHwrf+M/ZqxU7Sb3/qsnBFiWeVjsN9TLvjZaaIiz8KYm08P05Z3qulH?=
 =?us-ascii?Q?F200yOe59qz7G9BSrmFSH75neVLBAcxNezdSvA4et9GgnTLSKs6t91VUmX6u?=
 =?us-ascii?Q?YHB686piNgGXqflqFyZQLrm18t999JXSTRpg8oCbwFLe0QU8gbH8438OULdn?=
 =?us-ascii?Q?501YftQjxQQ/ZgZP+QvWKckz21mjx7DmkyC9LfDIPmOcSMNvyTr/vbpl3IHA?=
 =?us-ascii?Q?J/YuezUWNE8LhLkNR/lKzXMBia+LaXDbSQO1BA9hUQg2YQJTiomzKOIuCEh5?=
 =?us-ascii?Q?gUGIg7BCTIVyBD7E0XmeqvNyFM/68SyHcnZC/DAgIfj7Fy+TKrcQ3TvEBHos?=
 =?us-ascii?Q?QHIdrCI+rNxDSsMXukARet5+8ovmlsTCPTVAC1+RSlCrUgue/S+EBL5nPzEg?=
 =?us-ascii?Q?8UAx6exSTXwczYTFaaYd2+uawgeExmWHAgio/llSNOutuUytlfDBVVB6YuIP?=
 =?us-ascii?Q?IzZD3uRaao8XEmBb3RJKI0CF6rFgiohGaLTPVxU32jQhHNM8Z7PmeN4IoqVR?=
 =?us-ascii?Q?foo2Pkmtgm6gHbV+7efu395sOgQQqcsi4+8NAPyZiMvC8g0m82bl6FrOyssd?=
 =?us-ascii?Q?mm394jDgkt+lqu9SGy33JKsyZ6rNLnO8rcohIGLn2Ah484TM4vwjbyFplwyn?=
 =?us-ascii?Q?jIrUwww4v7aR0M+kJbdtkEcqzKcu016R91m0vAqWtd2R6aet4EEKffiPwVG6?=
 =?us-ascii?Q?odJb8Ws2K7dHRVO3Z2CTuyvLqjXGBO3lSCIxS15X7gWU4QiixSbk3YlIsUKe?=
 =?us-ascii?Q?p2wSDCUbpZB7+LXKUseWLuu+6pT8MC2kGnbS1I98?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1df15f4-68d0-4934-f7cd-08dcac581dba
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 03:16:03.5611 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NYrm2oADgD97A20AhT6IhB9oS4LhEY7TeQ9xUA5T1RSDLjb6kuikrjefh0XwWm7V0lQVBu5T4BfkK883UG4J1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7144
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, July 24, 2024 4:46 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
> uevent for a commit
>=20
> On Wed, Jul 24, 2024 at 07:29:33AM +0300, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Monday, July 22, 2024 10:25 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 06/14] drm/i915/dp: Send only a single modeset-retry
> > > uevent for a commit
> > >
> > > There are multiple failure cases a modeset-retry uevent can be sent
> > > for a link (TBT tunnel BW allocation failure, unrecoverable link
> > > training failure), a follow- up patch adding the handling for a new
> > > case where the DP MST payload allocation fails. The uevent is the
> > > same in all cases, sent to all the connectors on the link, so in
> > > case of multiple failures there is no point in sending a separate
> > > uevent for each failure; prevent this, sending only a single modeset-=
retry
> uevent for a commit.
> > >
> > Is an exit condition required with some 'x' retry so that this retry
> > doesn't end up in an infinite loop.  For link training failure the
> > link rate/lane count is reduced and when it reaches the least can
> > exit, but for BW allocation failures/payload failure this may not be
> > the case.
>=20
> This is an error condition the driver reports (asynchronously) if a modes=
et
> request by userspace/client failed. It would be incorrect not to report t=
his error,
> leaving the output in a blank, enabled state.
>=20
> I think that userspace/client should handle such failures - in the above =
case a
> buggy sink - by disabling the output.
>=20
If user space doesn't then I think we end up in an infinite loop in KMD. So=
 would it make some sense to have some exit condition in KMD.

Thanks and Regards,
Arun R Murthy
--------------------
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
> > >  drivers/gpu/drm/i915/display/intel_dp.c            | 6 ++++++
> > >  2 files changed, 7 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index a9d2acdc51a4a..3501125c55158 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -1754,6 +1754,7 @@ struct intel_dp {
> > >       u8 lane_count;
> > >       u8 sink_count;
> > >       bool link_trained;
> > > +     bool needs_modeset_retry;
> > >       bool use_max_params;
> > >       u8 dpcd[DP_RECEIVER_CAP_SIZE];
> > >       u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 421e970b3c180..0882dddd97206 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -2876,6 +2876,11 @@ intel_dp_queue_modeset_retry_for_link(struct
> > > intel_atomic_state *state,
> > >       struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> > >       int i;
> > >
> > > +     if (intel_dp->needs_modeset_retry)
> > > +             return;
> > > +
> > > +     intel_dp->needs_modeset_retry =3D true;
> > > +
> > >       if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)) {
> > >               intel_dp_queue_modeset_retry_work(intel_dp-
> > > >attached_connector);
> > >
> > > @@ -3009,6 +3014,7 @@ void intel_dp_set_link_params(struct intel_dp
> > > *intel_dp,  {
> > >       memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
> > >       intel_dp->link_trained =3D false;
> > > +     intel_dp->needs_modeset_retry =3D false;
> > >       intel_dp->link_rate =3D link_rate;
> > >       intel_dp->lane_count =3D lane_count;  }
> > > --
> > > 2.44.2
> >
