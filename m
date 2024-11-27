Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4D09DA1CD
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 06:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2D2D10E211;
	Wed, 27 Nov 2024 05:45:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iSbQo80G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA1D210E20C;
 Wed, 27 Nov 2024 05:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732686350; x=1764222350;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oKeg0m56KjyIkW8lPPnBFuT74QvRkSLzNHoddAFL9W0=;
 b=iSbQo80GneLqUUbJ6AW/UP7YFguKA4EYYmQkm0AKq+t+llNTntWzXgyf
 Grae4FMiBX+uIZ9u1UPmfNbc+NEFk6noVNO48i7ObK1s2yXABAEFQbvbe
 uXunwwT+HemxuCrXa0OfkJ1cNe7a6orSzyNmYY3+JqVI9ZiqQ5HAyvops
 aPoqviBlzwZGe8qVvDmr2jrlqEQ/tgRph+Rv8bXniWbLUo7tTlb/hbLZk
 nyz3+qrLQ8x/4NQEYM/gft7DtHCWGbCGYA9QhmbYFN/QMLVL1+AnLUIMg
 BDjoSm9Pj+xsmvsKwqgIx1a+P5m2Uv9NqmpINmtaSh1uD0lat6Xvq8AyJ A==;
X-CSE-ConnectionGUID: im/9UtweRQCyqvDQwyBfGw==
X-CSE-MsgGUID: pZG3qGksTS+j6pANb7yQEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11268"; a="44263071"
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="44263071"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2024 21:45:50 -0800
X-CSE-ConnectionGUID: fHwE6537QcKsI4yQQap8ow==
X-CSE-MsgGUID: cOj6BgMJRSaHoorDqOEI/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,188,1728975600"; d="scan'208";a="122811993"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Nov 2024 21:45:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 26 Nov 2024 21:45:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 26 Nov 2024 21:45:49 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 26 Nov 2024 21:45:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yYnSlJMwcR8N43sGzl6VwtHiKFmaidwNxyWjc8DT1NJ8RXngLHFwhXhTB6Gb+PjsgVAqkMo6y17P69QDFhFPdlGgkPa0CPCwiskEfSJXm3+C+OCaPpf4lafRNotF58h+TMAyfuhErsFKhiVXF72Zw7TZt+e8ptiucIyLuHIYRkSaSNt8QGcoqJc1WfH0XMlWZj33G5Y5BSz7PCEMRpSmyvosb8ACDYsrjgMWozCmJIZE+NFQXnQF84RWI3Mivp0jgQgVBSAvYjf0LKCJhuQskhkrhiaAkgymkZW/SW9HxTx7GF7lXfx9XktdY8XjedI2sUe5T+6jrfG+7ZKcOanPEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VHPaRgcroPa56qPccuCWO3tvZEyvEP61FuKyRBt0bYU=;
 b=b3AQhQVgjj8Kw0N18yx2xDG9dHRNt99mxanE26jwLS0Vyrl1JjOc/3kpx+lf2W0ZfyBimhHblEkvVPAZTaH3ynmnjFy9TgJjpgz2BtjtzLtuW6+yc7Hoq9mtcL3oXiVbMt7H6Ufu4VzEhCa/kZsZsmiqNW7mmRYMnsT5zIh9dtSTyVwy6MzujlvEPY5/BcN5Ylfw4BgtoiFO99vUkDwzs23xYEPQS/3pafNPcxfi9ItQov/Mcmd9of67GGpthKPkcHeFifKfTSr9QH1x0fMsh+FPIURzMdL7l4EmbaZgAXoS1JKUDoBchsl23MtfJ+xXk8yodyE89xu78CY2ygKo+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB4920.namprd11.prod.outlook.com (2603:10b6:510:41::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.21; Wed, 27 Nov
 2024 05:45:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8182.019; Wed, 27 Nov 2024
 05:45:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 04/12] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Thread-Topic: [PATCH 04/12] drm/i915/dp: Remove HAS_DSC macro for
 intel_dp_dsc_max_src_input_bpc
Thread-Index: AQHbOzf1m95TT8DOwkOLMML2oEnJFrLKqHqQ
Date: Wed, 27 Nov 2024 05:45:46 +0000
Message-ID: <SN7PR11MB675042B4919A1FF3AA643F14E3282@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120103802.134295-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB4920:EE_
x-ms-office365-filtering-correlation-id: 7684a662-8ac6-4eaa-9a2a-08dd0ea6bda0
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?x0Sodwos1KclRWLn+fivw6++Cn54UURAItn0VNL8zpVu7zrVlwJXWQsJCFnD?=
 =?us-ascii?Q?6QmR7Of7yT3DzHu4EA8IhBgBEbrg93CSsuvDd0CbBU09Suag7MU847qB618f?=
 =?us-ascii?Q?OhxNpvVsZZKvWFHLuGk7wg1tfAlNQB8CR64ojQbeo840UTrNqCPlponQYrbw?=
 =?us-ascii?Q?yCPjQXRkL495Ung5zBWLzXL067Xy0P8Ic9l0mW1nuOTWvHEkR3CXNBiKrEXQ?=
 =?us-ascii?Q?FXfEXhyhJT6i9kcWAOEk8MEfztegGPAYLcFCzVl4gvOtAJ+ZvjmM1xVbXb+1?=
 =?us-ascii?Q?r+sL7BiApAFf074KTBCRyZ7j7iCYjvfvOOCQuJdQlLHW/iP02IOSOBIeaaX4?=
 =?us-ascii?Q?y6q1zQzicdAjS5sUK+w9yY4P5kaP7Jrj/3VG+dcF8YWUgwoNWjaOV+472nkj?=
 =?us-ascii?Q?GOyL67BFxjIZRxJ5PGvwUh3opf5raeRs1era5LEVbsBuYeYk8hMeS+S4BbAa?=
 =?us-ascii?Q?thNvuxjmdXXt3PkwJWCQsKGv4faBXCiri7walVrjcx6r+Hf7eUYkz3QiSVUk?=
 =?us-ascii?Q?LEvqqFZY7AjG53cNwwVbwS/vsu4wlEm0inuTRfgRoanV7lCQMC2M489SUfBw?=
 =?us-ascii?Q?WMSXioEV8BHpushi/64serpVl2qcgzWUg0xhlhLhUn1FPidbhKI6jnpW9WfD?=
 =?us-ascii?Q?lMGauP6s9HRHOyabgdC2tpJizWVWcv87RGr7vbJ+2fDN/CLLynjp+5DeKrLh?=
 =?us-ascii?Q?02YU4jPHY2cPpVgfqmi4n6C1Oc55wnkZVidSJPES6KGqrqZwsvxyBp6sDow7?=
 =?us-ascii?Q?oVIveUmdrXOUNFezFAXyDLU7x2eqXRU0E4W3GXw/oRq3uBqzuHAEN+9+o0JZ?=
 =?us-ascii?Q?RfRvE9uEdrCCcJIq29RTqzEw/jzVXs33LrZbtFq92axmLiB/xgYoUoW+kwCj?=
 =?us-ascii?Q?Bbvo/BZotvfNkqiV2byRhgZwpYrOy/elrGEUZRxLvqxuOGTKTYpfd6BhyDsv?=
 =?us-ascii?Q?d1BQhAgsAZNwsNdEKTlKu5PxkHKXVKnrxjhFot/arkNplS61+RKV2uxEF8ja?=
 =?us-ascii?Q?aLg4MhDoLFMuuaEJY6/G00I26ORHAH8MpZoxdE/HVWNyt0KUsyHx55sepX5h?=
 =?us-ascii?Q?6ObPkhP4aZwRF+NRuC2Rq3gy1RF2W/xEr1ePUuZgZxCQcyX3pY/brL7fY3B6?=
 =?us-ascii?Q?RNNqRunbNgsbI4ELDJ0BxTxDdSglQPYKDjcgQ1Nj28/wZb23yzp9QSgalHpQ?=
 =?us-ascii?Q?QxiaI7lVdbpjhv01ux3wKGKrCYTDN37H8ptQ72h8QM6Ein2c0smRJI55R4C1?=
 =?us-ascii?Q?sDXgwQruS5+revkwtGGQGe8N51Ap5M5g7UIWEaOxOUzMTZ3xex9bKcGtIRSy?=
 =?us-ascii?Q?wlJoqEADUn8heOTSVCLoxBNs41IhTpo3h85xhLdB3UiYHKM7ug0Jiikzeufx?=
 =?us-ascii?Q?RS1sbXVcTdx4/PkFR+69PqItr5xTIhGzbh91NJyauY4D3mTgpg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?xVIQWLpMzTGy36H8zsuJRkjWGAOwk7io2zoeSv+gQe1p786tDFYYW6w+v6Dk?=
 =?us-ascii?Q?nRzFcV4DH9LPdHfa9vTTSa/lwnTrPwy9G8j75sZCAT8UNrqkiIbHRjQc3RCi?=
 =?us-ascii?Q?SFtJY0bFmyeQlZDApSCXlo/tWcNJEhPZ57EAwRR6Tpz0dDLSjmtlvcWC723+?=
 =?us-ascii?Q?8afkucHh/qrPPg5MP73GPz0nvOtxFZALzWXBfuTlgpa0NNMzLlFMsVYP+olz?=
 =?us-ascii?Q?4+bUkYLaI7D+uurkVwyYLC7JQHgIniwd8taD+6zYucVsSlQFGAQk3GeO6k6F?=
 =?us-ascii?Q?T77AP7jKa6MzOxZmujDrpUapVp9nIxnlPuWQbPNl+2BMtu6Mbj7luMeM1Myp?=
 =?us-ascii?Q?2NokmPChSjMsbpBMgu9vEu5LANLKbu4bVvM8KjP8Ho5P31wdZmerhd5zdC5H?=
 =?us-ascii?Q?1vXgg4JAwcz/JHRzmSFUAeA/vakO6pSuE57FaTVcBVX9CYOy+igqOIQ5vD/W?=
 =?us-ascii?Q?XJseX0jFtrUOjYq1tsRTjz3hWwbkgm1h5ZAR1W46Ya6MvdLFPPSUuH92zRCa?=
 =?us-ascii?Q?07QhWiWla+8LoNfgkuNxZjHMW12YiyFfcm96BswrfmBoPIMS/nU8yHHaSjY1?=
 =?us-ascii?Q?aWoFMpuo4CrR9HhC2Cn+TbsQ+kD3vpYUnKW27dtzCPalyV6wfUmUzJbeJBB7?=
 =?us-ascii?Q?z+PAaogQeCqxRq5srtGwRw12NokG6hljHDyhwvdkaOGeObR50s9Nem4STBCx?=
 =?us-ascii?Q?OUCvOyxK9MGPMOUEIXSEZdBMXeCmI7cLiwnTzAvGvpBJ57LstbxkuATQyxiG?=
 =?us-ascii?Q?RbMHFWq0tzhPCyYMErgD1wRV9wOXzxF3W5S1xhfGcJib7YTzHdhai6zPfMWP?=
 =?us-ascii?Q?kVW1Wpxr5rckFcxffU/nlQ5HPzu7U3dXAre3KCKBmQ6WjGHC2eAvFJf5B5jl?=
 =?us-ascii?Q?jGW6uj4A/nH0MynmHvoET6mSEHWga8VS5n8On2DI/EwRrEfdM8lglJLFQ7ho?=
 =?us-ascii?Q?ITSRomK+FqWK8hYEHK4/LY50alJN2v73WpPK7dL4Y36jz9oSdDeIc8+UD4CS?=
 =?us-ascii?Q?7GWptJ2bigoPNU3sEdKLP0mTgUNt4EKtZYVl625Hf642HyAN4FIpsM0fggp0?=
 =?us-ascii?Q?PhyDgoqgjHTBVTr1f/Jnuwc6VYnuQ5U3dGzya9QaR99nfxCYIBfWkr3N6TiG?=
 =?us-ascii?Q?VUzNlL9rDARnDxzMzADurTQwjoRNknoAB5wYG0pmChnuE4TVBhSW3PvVmQrh?=
 =?us-ascii?Q?SXcAmLaexIDVVyi40HE7+rgGg2RtuB/xEob/bc7M8sOs2UIghpkMJHlW+hEQ?=
 =?us-ascii?Q?D7S8UmO9t2s5BrxAd82T4yLvd7p6bBYKfqVQH8zU4S7z8ShFMwqxjvy6gEZq?=
 =?us-ascii?Q?IRHreUBRB43qw5QjMlrPpk07Hm0aJaS8eMlHQixlrkXPj3qf/RG7doExeGrO?=
 =?us-ascii?Q?NyMXE/rr6Zy8qgZiksObc4Jv/vVq2EWD8s4cL9taxE5N5at2iUKhOCukcqmw?=
 =?us-ascii?Q?+yRsWodOgpd575gg97m2GpIRU9joOS7R2SJHGr8n8hvSU6dxu5X6luuNLYGm?=
 =?us-ascii?Q?7y6+0CvDgUpikgmtrjT/NwZAYHHWh2tLIryBwYUyhk5pwtze24oMnJrKPAta?=
 =?us-ascii?Q?G3y2doyoWsD2F/YEFWwZ3/N5vN1ZGc/JF/hCqtuu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7684a662-8ac6-4eaa-9a2a-08dd0ea6bda0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2024 05:45:46.4826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QXF3izFTUDK7qER36LKUk9izeopWK9KgnYiy9TovzPCrjxcx95sADJH+SymT+c614EzeT2k2+9lG8NLBtqJSIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4920
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Wednesday, November 20, 2024 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 04/12] drm/i915/dp: Remove HAS_DSC macro for
> intel_dp_dsc_max_src_input_bpc
>=20
> DSC support is already checked before the helper
> intel_dp_dsc_max_src_input_bpc is called.
> Remove the check from the helper.
>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index d82e25d0dc5a..dd60ca532ae3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2195,7 +2195,7 @@ static
>  u8 intel_dp_dsc_min_src_input_bpc(struct drm_i915_private *i915)  {
>  	/* Min DSC Input BPC for ICL+ is 8 */
> -	return HAS_DSC(i915) ? 8 : 0;
> +	return 8;

With this change we don't really need to pass drm_i915_private to this func=
tion how about we make it a void function
This also helps us move away from intel_display

Regards,
Suraj Kandpal

>  }
>=20
>  static
> --
> 2.45.2

