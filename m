Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4945094449A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2024 08:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC4C10E89A;
	Thu,  1 Aug 2024 06:41:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gV07GUNX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE9210E89A
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Aug 2024 06:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722494489; x=1754030489;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DKsekRalfyBLupYLiM/Xf9mGD36kg+SbTpjvFzD3cy4=;
 b=gV07GUNXk/OEnYTtcz0Ggs5pv/BTiFXrl/38e2XjrUcbJPMxSdiA5MKw
 A4dWNeg0fFAizXJTJpqia9qeAP4Xc6z94nLPbynlDSoRA6rtz7mt4jxfG
 71/VBllbzq3cJjeDg0rAy+UxxqSB/+V91/kCYukIKDzPYuSOX048n+uaM
 gZsRnhTCla85TtGKqKWqODxNU8o44p89P77BJ4TJPNV0VcHh8HbXUwTJF
 mekFf2FpPGcAeUWB7Rx9SR0IrGuAJ7BwklRp3ReO4tu9bDzWSoNR7nIug
 WbaP7UAFw5iKDfRrdGzEfe7YBIMG/iP37WArAK/8qM824X6lIfqeQ3JQb Q==;
X-CSE-ConnectionGUID: ZsIX4knuS/a7as20bRZvdQ==
X-CSE-MsgGUID: y9ENb/GaT52kO99P6L4gSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20108740"
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="20108740"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 23:41:16 -0700
X-CSE-ConnectionGUID: k1KqyMEJTzqYBlX8wSjIzQ==
X-CSE-MsgGUID: XuUtQ1ZYS3uGYtrjPtxenA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,253,1716274800"; d="scan'208";a="59060516"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 23:41:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 23:41:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 23:41:15 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 23:41:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M7MF93LiPnpeZ9QoBdi/tEuFSTkG1irGgy/Ptpsjzmxhjgz+GQugox8OVvOLQwOHpScoKxuzrsy7oV+INltQyv7VqJpMmMBqvjsWqYBoP4SHraiQRa35ScVj1G6C7iBJQDizjp+m9hr6GYeScuhOTzRZYqlN84KBekL60pRePa2Ts3PspSI7Mw6f/2d2xr/KV6Btju5XUOM+TyajqNjD8DDWLWC5rqeIi2iuKvoFRK6+jlOze1IvybN5BKJaj+SVz6F38w50FM/dK1s0bS8AvtXdFcDAQsP3LsGIu8nIz7RZLDdlSaocxy2qytb4vDTuTTaIS3v8OU7M5LZ26U0x6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D0Z2G01apksEVUywr7PE6v4q58WANU/M99mh+XFSAbA=;
 b=aHoTh2ieG/s68EpS5X8OoIKDAv3fheOnD/NAwIFCtgh6OhXMxZlarjXZDrE4Oyn2CWzmGCqO/khqIKPHonaVaVFgqvUgpqi2/vTroLU6Uy1Qv1ytw/KRhylIoxu7FgRAX/MIyh78mB4/mXBPiQS5kkC5ENLlJd0anELt4jslcKD3ZgslBs4PoeI59pt53yWybfakqdVLek38807n2sK5wromqatZzTyOX+JqFRhDRc80rqi2neqlVGEgIEMBE43iaE3xpJlwN7P1mpd/c8G1fOPTdowvJkOawFb1zkV7MPpfhV3dElIBBK+flA24tGEM9gBQo2lTAnbtPK2aDnfXAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by CY5PR11MB6307.namprd11.prod.outlook.com (2603:10b6:930:21::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Thu, 1 Aug
 2024 06:41:13 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%6]) with mapi id 15.20.7784.020; Thu, 1 Aug 2024
 06:41:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 09/12] drm/i915/display/vdsc: Add ultrajoiner support with
 DSC
Thread-Topic: [PATCH 09/12] drm/i915/display/vdsc: Add ultrajoiner support
 with DSC
Thread-Index: AQHa2Or2U5Ay+99tokKJrVgAE9T48LISCZzg
Date: Thu, 1 Aug 2024 06:41:13 +0000
Message-ID: <MW4PR11MB6761D18CA471C5D0517BB3C8E3B22@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240718081803.3338564-1-ankit.k.nautiyal@intel.com>
 <20240718081803.3338564-10-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240718081803.3338564-10-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|CY5PR11MB6307:EE_
x-ms-office365-filtering-correlation-id: 687c2c04-cc00-41be-b164-08dcb1f4efa8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6a+sQuhinXcslikmzu0Pnrard3A/WRq4uJPE2s3yk9sheBNX02+0AZIfIzG8?=
 =?us-ascii?Q?O2ZdKNfc1JvmjIB3Icch4TUflk1huqgJSwMF2MiiE2+pl9KTWMSkT00PxsN0?=
 =?us-ascii?Q?Bct2vdm4bsUr6M59OM35Oe0g8n8nqLJ+Bf7xdJaQsPLDHiTqNX/NhrtSIR+0?=
 =?us-ascii?Q?b5K3HoN+3vAvPS3mqxSUrelvMTvQaCQ1kbRHNFfnM9JH9L6XTpT79tfkF1ZZ?=
 =?us-ascii?Q?Zt26mWLErEIGFMOj5oYyo18+uTBmas9BDFx/ITo9TaGHdb+DJX8nsAJCEm1Z?=
 =?us-ascii?Q?HrHsyjGS8XhZiNCW2WkxcSV1SZ/G5wxmhmmv6XNrVZiUleHXQLl+P69R1HCH?=
 =?us-ascii?Q?nkd/yRMm7sYU/U+w7k2Z/SEL7aW0M8msCJrTVJV8djNywX2JHDqUAYR5M2x5?=
 =?us-ascii?Q?9edPfuVd9LMAuGMN4Zwwmo9wItHyrzbw4kqnhIDeQTaS2l7w3XxgJvf+bwgB?=
 =?us-ascii?Q?zoCq4F5z6frzowng3TqfB1MJNK+WdLoBZbieZPNzFAbwypp5BumtoHXHJT1G?=
 =?us-ascii?Q?fbRXCRJ9pMEVhgdLxGkEPx5rm3Ul+9QHywCZx9HT7pSNEyxjLt7qL9pH/KE5?=
 =?us-ascii?Q?gQLMTiTnRgpR3Ogdgcd1W/2CI2fg3h2f6TQoXYxOrpKilUA7KnyBvdlwNQQu?=
 =?us-ascii?Q?oMTgErGKzFoykDs+BtG0TtubUuClel4NQZyj1OU1VoHP4aBFmXQ28KXmqTkr?=
 =?us-ascii?Q?DY0m4MZfJ8gSAToIri++evrcPq4Yvq/EecJfzhg3Oxyb5Dc/51Qkx5MPYLhj?=
 =?us-ascii?Q?qvmkBh0jEYt5rrKcmPqtlYzc7Xc+pENjiR+DUSAme5Ykyn/naYk5NTeez0cR?=
 =?us-ascii?Q?wPCKD9LYFGTxKQPAguHOm7ikR9WybWFH5hokTgCHGngmT7hEaCiqYaqTeLJE?=
 =?us-ascii?Q?xRgsBbasncDeX/4YpvadZ1RUyNr6Ko0AHFhuM2QphlTjNTeJLyRxW3rtaxx7?=
 =?us-ascii?Q?YMmV2/VdKNSmpYGLl1DEGJ1pC0JNUxsgz9AworTB4WpdQARMRoIjOsoLVSZr?=
 =?us-ascii?Q?ah8s9oJf2wg7O4LgLdxAWRsQWv9iuynVZCT7RGZF5FJFYuuQ/bkAGQzdzQsc?=
 =?us-ascii?Q?lyNrmJ8QmKlolZeYmwUXmxp4EmxDfqv17NWVFgDUWthFOMQBrSNq4pIeLfWW?=
 =?us-ascii?Q?m4tcNcAP/kkxO632lzeN0uHm1J+6I4qRQCatteSQ8byt5cI+lp4wn4vYOpQl?=
 =?us-ascii?Q?mBl3zAbaApNUzo6Zy2RNw+QlPWE+k1BBsramlbjt98QuTIHJhKmizF15B5LP?=
 =?us-ascii?Q?lgoiQKbuYbsa4KY2djIWHJXRY+G7TXN0YHX3wd9QQfQJy/7thWpbFNsRV8sr?=
 =?us-ascii?Q?YUjUzkClBVRt2OYjRgXQjSmaXd38FgL58DnjVMOnY4fncSxG/oOFJOgd3AXy?=
 =?us-ascii?Q?7YbA8H9q9b0Uo+ImOwhGmSjB5wRlnmK4f8rI/14cgDv+Z+z16g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?NZeAVJBttq0H6cf5P4ImHuvW/1Q153rfUDyxZ+rJHUHPGz/9bnJ5tR2PqGpN?=
 =?us-ascii?Q?AccxTUoOAZ4MFVVWmkeMymAvZm3efOhb7XSNc91FejxN+aMVGToKibSkYu1Y?=
 =?us-ascii?Q?INNU4snx3SyGrYcJCRKzN+ZIHabEodt7kQGWqwjvoRuGgyLLjgJXPVEBvu4J?=
 =?us-ascii?Q?H9fBzcg/4H5yvniPZidtKKhDH68I1ymukDSfKEcgn7dIU4fdSomJCbr1XFi1?=
 =?us-ascii?Q?sg4Ku521WedoLMD32see7VowvMqhbBBvkuFMYyhkg2UmEGh0zWc8pd3ixI1W?=
 =?us-ascii?Q?H4FtWVRz8sC2Au2lQbSGr4xEckrE8MhbudN4K5mjuBOSExpgCEye9nJag/Qq?=
 =?us-ascii?Q?RrEPFxIXjMPgUiQ3TQXzvIA/RiVv2WlDf1gTxM2h6OT0dYkmXq5szd9xXwrS?=
 =?us-ascii?Q?5nh/kbN8JNrReg80HNeed6F1eAjZeIMj4ONxTNwV0/QnpRvx9LhgFBVYjgA6?=
 =?us-ascii?Q?53jPI+makItWzCqHPNW5LiWPjXz1bNtnu92MIWmI40it5NNBDjpFPv0W1bvF?=
 =?us-ascii?Q?NkrXs935ko10xIvHzRE7TajB8l7lsMcEFyHrwGowP+qmOXnzbJ2R6z7zpfsh?=
 =?us-ascii?Q?sWbAeN8aRpPrzlBR5sl+59lXUAEJIAj2jtyfvnaMJs9pW1WxeuGU3TG3iri4?=
 =?us-ascii?Q?Wt/BW863KCzmebT2n+kAbzC8BLvVz7dmjFJ8b0t5FBfiEhSgXApcUN8Xe7mL?=
 =?us-ascii?Q?5Jmfrf3ND7mtnpJn/zvctjuwDuL0fJuoqR7zzxiEHOLkVT/I3zWBLJXCmlEp?=
 =?us-ascii?Q?r1OFbVkNIho/oB6Drs0wQKIfu7Mr7eLGz6YxAkGvQwBHHWkcADCX0IZjfDii?=
 =?us-ascii?Q?DUdYExQrC/c/GWV/2jUJ0W6PH2iIgHXcpD+Pni+mFqR88BRS/FWIIXlJrXIe?=
 =?us-ascii?Q?mMWBCHTRQhO5qhckZ5DI26Gw1MDXjZ4wexdsxoGGxszinG5jRXnWYSqslDlE?=
 =?us-ascii?Q?qokvFybJA+KwvDYIZwPanYNsFuOcYMRky1Ja7EjLkzzk3cM9snM7NhgIrauJ?=
 =?us-ascii?Q?pzGKz5h2NnCOigsISLRVufwv0EwlzTV8ZXquHfCHEOe6Euy3Yvx/PfXOp+5U?=
 =?us-ascii?Q?8XFtBzzq3mwj91LfWTtPwFr5EowLtsK/ScVATESFJ/0jEvz5/Mth4Esxtnt/?=
 =?us-ascii?Q?iteO6eKGXKcHsD6+WOl4OOtyrDDRswgH9v+mqf8SQP/z1RWPgeCII/CN4Dac?=
 =?us-ascii?Q?mB01/ACaD3U1ZHBwyErPR2Gqti2meK/w+ss5fVAWb6hN1pvEHBvER9qp7QJP?=
 =?us-ascii?Q?aNUjwuQ4tOydlxCRW0cCxfWUGKudRsddxiCIwGDlggurf7dJ7i/CIglC6lEK?=
 =?us-ascii?Q?r7h+/7JLuenZhfzXfBdfnD9ZDMvcdzxO42l73tQWl6s+wcI88gzMn1GxfKKX?=
 =?us-ascii?Q?+aCAG52ofrSN5023vQGu7U6gyHVN/9JADR8DSWLcwGE935lUon8SkvgGzt7i?=
 =?us-ascii?Q?iI/ts7XFuRP9+uYnoVoH3qmxPuZEzfsqqhpXxtJJNo5e48LZ763atHOOMkiI?=
 =?us-ascii?Q?aRU29aRNjeoYEt+BsABpgHPCqvKcdQueHU1AKMRppFIAPgMsb6Pec1cmdJk3?=
 =?us-ascii?Q?GlyT/jcw7iJNcHHB07jyGbY51lj8pT3PxarbQv8I?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 687c2c04-cc00-41be-b164-08dcb1f4efa8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2024 06:41:13.0551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zRvwlhxeNdqFNskvf09tnMhmRo+yczrLmxp6wm2UbABlMwSFIq8Y87WUnoftzE6342CQXOzVZ4ieX68IcXDXQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6307
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of An=
kit
> Nautiyal
> Sent: Thursday, July 18, 2024 1:48 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>; Saarinen, Jani
> <jani.saarinen@intel.com>; ville.syrjala@linux.intel.com
> Subject: [PATCH 09/12] drm/i915/display/vdsc: Add ultrajoiner support wit=
h
> DSC
>=20
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>=20
> Add changes to DSC which are required for Ultrajoiner.
>=20
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 26 +++++++++++++++++++++--
>  1 file changed, 24 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 11058bb37d5a..815fbffc2d97 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -378,8 +378,11 @@ static int intel_dsc_get_vdsc_per_pipe(const struct
> intel_crtc_state *crtc_state  int intel_dsc_get_num_vdsc_instances(const =
struct
> intel_crtc_state *crtc_state)  {
>  	int num_vdsc_instances =3D intel_dsc_get_vdsc_per_pipe(crtc_state);
> +	int joined_pipes =3D intel_joiner_num_pipes(crtc_state);
>=20
> -	if (crtc_state->joiner_pipes)
> +	if (joined_pipes =3D=3D 4)
> +		num_vdsc_instances *=3D 4;
> +	else if (joined_pipes =3D=3D 2)
>  		num_vdsc_instances *=3D 2;
>=20

Use enum here as well I think just doing A check of joined pipe no !=3D inv=
alid or none and then num_vdsc_instances *=3D pipes_joined Would be better.

>  	return num_vdsc_instances;
> @@ -770,6 +773,13 @@ void intel_uncompressed_joiner_enable(const struct
> intel_crtc_state *crtc_state)
>  	}
>  }
>=20
> +static bool intel_crtc_ultrajoiner_enable_needed(const struct
> +intel_crtc_state *crtc_state) {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	return intel_joiner_num_pipes(crtc_state) =3D=3D 4 && crtc->pipe !=3D
> +PIPE_D; }
> +

Ditto=20

Regards,
Suraj Kandpal
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> @@ -789,8 +799,20 @@ void intel_dsc_enable(const struct intel_crtc_state
> *crtc_state)
>  		dss_ctl1_val |=3D JOINER_ENABLE;
>  	}
>  	if (crtc_state->joiner_pipes) {
> +		/*
> +		 * This bit doesn't seem to follow master/slave logic or
> +		 * any other logic, so lets just add helper function to
> +		 * at least hide this hassle..
> +		 */
> +		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
> +			dss_ctl1_val |=3D ULTRA_JOINER_ENABLE;
> +
> +		if (intel_crtc_is_ultrajoiner_primary(crtc_state))
> +			dss_ctl1_val |=3D PRIMARY_ULTRA_JOINER_ENABLE;
> +
>  		dss_ctl1_val |=3D BIG_JOINER_ENABLE;
> -		if (intel_crtc_is_bigjoiner_primary(crtc_state))
> +
> +		if (!intel_crtc_is_joiner_secondary(crtc_state))
>  			dss_ctl1_val |=3D PRIMARY_BIG_JOINER_ENABLE;
>  	}
>  	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder)=
,
> dss_ctl1_val);
> --
> 2.45.2

