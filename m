Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5690397660E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2646A10EB37;
	Thu, 12 Sep 2024 09:52:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bAkK3SKl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E5510EB36
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134735; x=1757670735;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H19aCGCqiQ0oxzzrzdglLcCZqNNkPIfquihVeSFNIF4=;
 b=bAkK3SKlZsx6D8nE7dOs/P63JuoAz+93cfbaXnclXfMhyEX7puqtQTHu
 EA2udfrLtyEiUbyszUdh8vrSwReCRro8tBoJ5hOAdj5Ry8mveUoBj/bKL
 IALqaiWWv27BZI6B55xVd2aLygEVQlQHpuvP/KgVy8LM9V7kE9Cc/K7GV
 9a3P5cfeggEprJ8IxZvBb8NwDIOnepnEkU7n3R3edRVcp9JpY4bCKTtfM
 6RXtoE+BlZw+kkGTSuoycsv0XUXR0Z+jDdDlHSMvnz3YuY1XkceX4S1x+
 pVqQgdEzCFZ8yaL+G0WJ/TBscXyPkCbbH0+0sM+EMHjgVG0AOeXg1M/+8 A==;
X-CSE-ConnectionGUID: MDVNlt/NS8uacbgaHuhFvQ==
X-CSE-MsgGUID: kv3E/jsiRXyMJdZLcujr8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25172308"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25172308"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:52:14 -0700
X-CSE-ConnectionGUID: YtcqG2fkTjKONdyYdFZ1qQ==
X-CSE-MsgGUID: khgt11YqQC6s6aJRhfd8zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72246023"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 02:52:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:52:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 02:52:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 02:52:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 02:52:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CbeWwHbZWoRBuLpciNTntDw9PzPnu2ZP2h3MFTrNqxl8KuVIA19h2lxBzDJh7XWNcIWitr3GaBSUOBV9m52qJpiTDCWfsOojbpe6sGirfRscVeiFK+zSqhG42nsaiB/IzaK96ldcIKwBzeC9+KNS3jEL3/qpKu3v1BBkfrtBiZD9KM5R+ullOtnAkFG9QvTl/HPXmL5YfsoCoqbjHqXpyXzc+D7Ni3qv2b/CTj/o2zX+MfKq5gPZMYfeIjfn/7qROc7HQIGig8z0z8cOR9G+9htSA3At5ckzw8uzIAtfYibFsxsbUGvgtMgm3tIyzsSsp5AoOH134n+8F5uwxpMJoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t05tCuFlTNU22QymuMXO7PAu2rZy7Wd2miJNhOoUd8o=;
 b=EAcghdCkPwuvKLcZNU4WWb784awZNmJwIkLF0N84CRXTBfekjRB/s3gGmFOllx0p9nvD7EOecJVHtwqTa237/6k0uLXBus5fB1DeFQRbW4gZVSP1oGisohFojLiqhz3VSKRDVrmgzQv2Ge36j+jNynro2m9eJINNqRIhk5kyicQgfFo7P15TbGwxrlAELSKQT6TsXocb7G/0VI+t6xGcFHNK0TyaXETcsAVrZydW1eeyw2wHxIJD2uUgcpH84G9dtGLLrklXNiEEKQtJaSEUaLJAzrDHTIIoJTaXsC0vOWtvu5Df5yC6ON9Ho2PgzUH0x39kPCJd47+FAbE7gTAHMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by BL1PR11MB5224.namprd11.prod.outlook.com (2603:10b6:208:30a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.17; Thu, 12 Sep
 2024 09:52:05 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7962.017; Thu, 12 Sep 2024
 09:52:05 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/5] Add crtc properties for global histogram
Thread-Topic: [PATCH 3/5] Add crtc properties for global histogram
Thread-Index: AQHazsL0znkcFXfG40iUXf2B2ytMb7JSdcUAgAGV4iA=
Date: Thu, 12 Sep 2024 09:52:05 +0000
Message-ID: <IA0PR11MB7307A73E627200EAC58B4E3ABA642@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-4-arun.r.murthy@intel.com>
 <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
In-Reply-To: <SJ0PR11MB6789D70ACF2DBDDFD80EAD6D8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|BL1PR11MB5224:EE_
x-ms-office365-filtering-correlation-id: 1d8081f0-03fe-45c5-91ba-08dcd3108f0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?GPuldA0Hquo2POGsXNvMXPX00MZe3MHkDc6mrSf5BhOSX2c6LMGfkKH15wm8?=
 =?us-ascii?Q?ntP466xLpTVDrO+xmJGW/GE8BEwxdnplUDoZPIkXbvooEAq7rJ2vHyk3MeaN?=
 =?us-ascii?Q?tBftYrHUltoX0MTxJP5uh5MVVKf1cLggI0J2oqgtKkPzih6O47gBgMCytzPk?=
 =?us-ascii?Q?XH6KteqMHtTpxMIL6haeIBzyv+63wtk5rF0E+h5+l8BY4c5uPQfyVQPmBHQC?=
 =?us-ascii?Q?h3OaYxX7m5NF1qM84oY2Y0nWRrMsyAP5cazVKNrXoLC6ohSQglKV+EUQ2euX?=
 =?us-ascii?Q?RLrBOs5xSJEVcp7KisUEhlNvN5fAZAxDRn1q9UMl+CnmPioLkpgqr/nyeEG8?=
 =?us-ascii?Q?1jCBWez81HKx2AfxAH7m3fcBR3eJgWEnbKFAOaU0wHx1fMJc+GM1hMifABiZ?=
 =?us-ascii?Q?7mNBW/i3Yb2Nwdpbb36iELWBr3yHCTawRCw6eFPNFObp5h9T+PmvUbnxePt/?=
 =?us-ascii?Q?rjbt78e3wS13gSgAEiz8ME9P/ncfNzoaqPErtbwZ4vo2KVKux8+c2cg5uZTP?=
 =?us-ascii?Q?iZsUH4z7VvuMacVNeRvt0Vwzha+Okd58U5hHKVfXHDFDdIJIsGe/y6QG0zu3?=
 =?us-ascii?Q?zW2RU7TVcUD05AzuyWFXWiQdoOca21bDVQmJTFDEj+fRDuMDgSEhqGhMx/pI?=
 =?us-ascii?Q?9gM0JwURaz+Z9UtVIuEZwE9L5L7i8visF3KVOxRvO0awvFspAiYCMWjxjSUS?=
 =?us-ascii?Q?/+dDkvbNp+HFMNJpvJ+uiCSrjkTfZ9fIh/9bXelk1gs09H8030CYc+psFgpt?=
 =?us-ascii?Q?Bq8TUf4WSfmOLYhWMScZSrVQK56o/0uWE1dgEvn7GJkfWL2dRMTj0PT3kLA+?=
 =?us-ascii?Q?32yOJYU9XtgFc23M0bJkVQvtyxGiboywUsg7x04Cuoy4cv4vA0QIz6XPY11s?=
 =?us-ascii?Q?zdtOzrvBQ1UNqDErW1m9uXTT5Js8/ZJOH/KadB74DLAfPfHLhfdhx8AOETRy?=
 =?us-ascii?Q?PbtGRCs1yIXAfg8nz+Wk3RMjaklJlw4x+na/CGtU9W7SKoL38pPRt1h2gLVY?=
 =?us-ascii?Q?fGKgLvDz13zh0T05TZOX1Q5VYjj/O1ysxo2tQa8X9lAsPprPQMHmx/jEePS8?=
 =?us-ascii?Q?2Uypd3LRUDkp1BqQKBBjE/x4POMGln3zQ3J51vikahDAktEvRxSJVV76d4hZ?=
 =?us-ascii?Q?aXQRDfaHvKBYS+a47QFRcQiIge0jJxb4LPv9ckD5e4ewUkS3oQ9JiDs7MSpQ?=
 =?us-ascii?Q?HdijpNO3NjXno5cNF3wV1z9AuOpTS8a/1mm3Cz6Fonws16ZE9h6FpdL4WmoJ?=
 =?us-ascii?Q?CXl3wtDgSc6H5jHDiKZp/M8xQ8FMlTY4iDfgMfmQnr9rEZCTc6B4vovJqMBl?=
 =?us-ascii?Q?jhXxvLK+sLTxqYS2I9Pid1oBn23AU+7rH2EvhiYhMhd6qXbqM6L4Flzj3tv+?=
 =?us-ascii?Q?o5s4ATlcuJwdu45dlpzrT+2smcPxbLkzrpc+iJUdEALDInJCAw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yTLCbMf9r0JOFNqPvbsU8lEy13uNpyWy4BT4l/ffhuKmNFSjRAQx5duy1zro?=
 =?us-ascii?Q?USd50LC9zksbd8Jt6ccUW1dq1P7z2njpB8Yf25OtXZQxCwZ+3NnvxQMRspUP?=
 =?us-ascii?Q?D5/zzkVWb8y6Sw4K39NwOqEbRRDUp50RtLaMmJVYczheysRZDpTuLdl4wbHf?=
 =?us-ascii?Q?nXZvrda/0QhwO0WFk0FMJhf7eM+qUz4k3Qkj4buJLDMRZ19CwHMwkex80mKk?=
 =?us-ascii?Q?4jINTvaC5wHYkPRAvxar8rCNVpPDwxNzI+nZim2UE+HerBlPpqREATKfBq+1?=
 =?us-ascii?Q?z1TrfJAINUEiXs/VLmHPaNYJWUKx2yfC2HW8P8uxst0Y9aTAce8RfraEr4zW?=
 =?us-ascii?Q?jUomcxXQbfYSRu3gfo2ECXGVTI8VUj+xxQu6pRG9wdIH22vnQkLUYmG5YpxD?=
 =?us-ascii?Q?hV3C/SLv6uuZIXJcGFfxJTSwLtGKXxpcdzFTvL1MZaCkvnXPEGEyia1tUUIj?=
 =?us-ascii?Q?9lasgH7X/7G4KsI9qgtEmT3gCkPUu5Hee9rWvq56tSe2DBqpxvNOsJXNz/hU?=
 =?us-ascii?Q?D1+7kWdhBDx1pa0I/VgOolg27wR9Eyr4ixrMmSiGFvhu2tK1bB7jY1tLfSrX?=
 =?us-ascii?Q?6K14t25nE1f8mHipl0XQqEvrtFMmRJbKw0eZq8eV+zToFpMfm455YVtM2qvJ?=
 =?us-ascii?Q?b1XGHSbHd24/rbDJqrIzrDwYsFP1LbXIS5Ko3J4jO507IRd2auSxsIlrcwmi?=
 =?us-ascii?Q?GpCiC6aMAJV5irZGSxlyLnjDdVzeg7dh8CNtrOsi0KjDPLBAPJjQPDEwAIZt?=
 =?us-ascii?Q?IUvp+/B+dBQKkj2z3Gqb+T1VKLENWJvLuu8FCVMUY89IYyBp9fOoCVyaweLT?=
 =?us-ascii?Q?R6jDZeGUjjO57bB5v9VOXydnxvCvhoOPZGmqzEGgBjFmL7fvaycW+2K+vnJt?=
 =?us-ascii?Q?WD85seWXS4B53QvZ+03g9Ol+pUDrsfSUkffZFUPxxL9Jr+DeajZShb7CU8Na?=
 =?us-ascii?Q?FN2BP5LsrCm2mTkTDsXOhatGmHRN3vo1XTj3Yv8qAQKaXdV31OFPf2HeVbok?=
 =?us-ascii?Q?RanL3PmBdPlNHIUaVYebprX0dxS2RI7s1pDTPkXNym5RW683G+rZYlTvgqSc?=
 =?us-ascii?Q?/pOfh1XvBg/D/31V3IirUg/mrVCHxAWH5molSDMfWojhgLETOka97d9OBt9j?=
 =?us-ascii?Q?lRF/tNiuilNyB6lFEhtQTSEhXPsy4pUWf85b4tHfGBV/sqkRacwsQVoTS4Wi?=
 =?us-ascii?Q?cU6KatWiSwBMRw7cRvayb8FAaqC6GVPmokzFFckBi4vXWbOuv58it8DZV5bp?=
 =?us-ascii?Q?Ob6gxQZ04XOASe7gChSBN7mCDix62vlV3QcZOwDpkpggshH1ZXi8pvZnEhQ7?=
 =?us-ascii?Q?GdNxO6oiKPiVZG7WjJpZF7gs05cC27nbhu12fZ/vQrgJuC2YVCulzSKG/Irk?=
 =?us-ascii?Q?FGFI4XyMWourHWkhNkNYaho/blsE9Iw4XTcsQzwRa1G+x8kKzrQ/P5qHHs76?=
 =?us-ascii?Q?/rAKZCMqPZfyq+fkZbl4iEuEQdvwq+lVUUGiutRD1Xn9h8I2cFZjuNSZKpxW?=
 =?us-ascii?Q?nHbSsR0fph0mG/RGguF+EH70QusUP8XKyOYeFDxn7UB4RZe6Cqy0ym52Hw/j?=
 =?us-ascii?Q?9+Xk06YBJec1gRdixQAoQMgsd7KH/HQSzJgyq7Jf?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d8081f0-03fe-45c5-91ba-08dcd3108f0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 09:52:05.2584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s5R2J618Wetx6DFCx7zwLB8yssZKBvc3ou8PJJkL4l0reG6I5wfZZ6ajr7mjw5qva6H2CouWgJacZdUwz6LNHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5224
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

> > @@ -7503,6 +7508,14 @@ static void intel_atomic_commit_tail(struct
> > intel_atomic_state *state)
> >  		 * FIXME get rid of this funny new->old swapping
> >  		 */
> >  		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state-
> > >dsb);
> > +
>=20
> Since there is a wait_for_vblank in this for older platforms only, what i=
s the
> expected user space behaviour here for enabling histogram and updating th=
e
> iets.

This wait is for all the platforms and is required after enabling histogram=
 and before programming the guardband registers.
User space will have no impact as this histogram event is not generated imm=
ediately. It's a statistics of 'n' number of frames.

Thanks and Regards,
Arun R Murthy
--------------------
