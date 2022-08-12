Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6EE590B60
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12DB511B226;
	Fri, 12 Aug 2022 04:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6281B9FBA9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660280102; x=1691816102;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8yjhzKR0vYIiJMdNexV7rkJjNQ7R5OXhhNF02fkQro8=;
 b=E68OwL0I3MsDfmoCuWA0BZmMBeZzNtABA7GhIQBtlcJiuWJ4Jw5zsT6F
 3xZSLq8B0WIWL7qq6CTcJllkc2rlp29lBFDqb4KkbhmXX108AMwI1EuCc
 QbL7bWyqk0cS8FResc9uZsKkdRpyXuoeijht7a8T+6cmd7Z75L4j7S/nZ
 uJBGIYlp0sRZwJzJ6opD19qgcnAvQs9yHGzOEvnT7pcKp2cCAm2U+rsSH
 ID9C229lpldTkJ7S6zvD5MXCg5pqDntscV6ij/2CD3/GHWk69yugglekP
 7O5JzRTQORrlO3r5ROYYimlKqhcW12sq2Gu28xBzfc6Vye8sINW6Rnhpn A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292315952"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292315952"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:55:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="695146785"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Aug 2022 21:55:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:55:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:55:00 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:55:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hp6q0cPyiAr3afu26Ehn7jsfPUs9T+Lb1hdHE3EwjiWWTQ4r69JzVQWYk/UhWCogexef1eYY220ArWl1RPDUMmhxNpwo9vDEvjudS+BQSm0POhZ+HAbulTDjMlE2glKxazCiF/s+/vuEXT24XeFkuADKzq3343PSr0I/jw4XotdqYlf9/FDOfy/vheDpXGZGAEiEXPOCnzBrlvYz4xED/xhG20E7cDFT0DvJkJlMKNj9JmU21RvOl0GPRrfJglYnXJepOD8RnpSRtn2WiOG/bS4KyHWvX4xZHA9T58mRWNAjWof6UH/l57Ap+MKFLL5Tg47ytdXDUPpJ7hD7VT889Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5jO8XnI/MiPRaz7twYwk3Cu/4nCDF52sGcOQhR8NcO4=;
 b=M3qdaoK3BFDT0eNS19xV/5tiY0wqmX3YkGtU8CPT56mSc8vvXxg0xzVzfnzNeTLwmrpPz9sUjaCIEmY41JsAgTggZqhY2NikY7h+zKsy/nZ+D5IseRpJ1aCoVoWRKPsJ4EDnG2mvN7ByGr43qqAdcjBXYebOdgeAK6wk7DkR7+WWTMSd/FZ7EoWU2WN0km/0eLs8qRJAsVizG9pzZAwqhJoDVyFw8AEVNPzWuDALcpQBh5yLIULo2jGiULYF3lF3l4HcnIJjOTvPXF3dHIGqJw82xlBR2rl3KJ9qgTzUcR06nNEfWHcd8SPXFWByhsefY2fjDlNz8cbh6g8XWcOO7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3287.namprd11.prod.outlook.com (2603:10b6:a03:1c::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Fri, 12 Aug 2022 04:54:58 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:54:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
Thread-Index: AQHYrZWrjw/dhPlSaEWVchxpB1mp2K2qs8yg
Date: Fri, 12 Aug 2022 04:54:58 +0000
Message-ID: <DM6PR11MB31774748A084ACF353F837E0BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7eacb863-f98f-4b06-468e-08da7c1ecee2
x-ms-traffictypediagnostic: BYAPR11MB3287:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qnE12Alpbiy4kZwyAf8Ownr0jo9jal7MhuDEBMNXCya76PC3iNMVlU1Gv+CxgBAvAj142U/iLLg0e5vDoT1Foqa4qfsbzHFJAtLkB4YtCOSyDiLT3ljveZMdzXY5atr5KBtGXSeGQnkmNAWpZwk9Ugc+Cdn4Rrb9g/KGOIQqmeAjuRZ+Yxw2qWcjsM7M5UfYqg7aEy+DH/xDDqaWwE65fERmcMAHFT5s+DrKUVVZWeu7ABidVNnnd9Ms47AerN+jJj4ZTtJSKw846gWHMmzjPf0tw3NB+B4hFfeEJbBwAyI5j/H/SOmTToipmzEgs5gm7s81ySrzgk4Tt/DdQaaDYawP3sQE+AkrC+7ZYZ5rMVZReIG15gdeZaq7q2jaAI8aufOP4EmNvp+IMucNapYwJ1izOftbliFmqvyo8yDmjs5bi3cCoXj0QL5mSSt5uujiw98WgkmbVpfI0tqivz5dhN2BXTW+dK5D28FYxyqS8fpdWQBBKJbpPA/slJus/YScXJQ3JVL0PB5kKhyeFZd96RuoK5eM6folVIqfjCSK/yhQeeJwOxIeUYiaFZHLri327sHUx2xfnrZT/8Efcv3JWR1/uUoOFAbyiK2cajhf+J4/v2A1TjIjLkrqyAGW+rKP8N0Lt/Tu7CA0oRRhnzKQ+qIPa+qh3/VoHt50UC9ee6mD46N1bOIZ39jdQS6WY+VGwxKA6AZzGqFEfl1I5EquOUr6Ys+wcc/mC7LCDXb0ElEPIOf4mLeuZmr3vCvSQFN8I6ryhdXwLOwRtCuMsl6Dvvy+beFrA/a/Ud/XAGQ8zUsxIi1sjVeuiJYBkeJsLOwN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(396003)(346002)(39860400002)(136003)(107886003)(186003)(83380400001)(82960400001)(55016003)(122000001)(38100700002)(478600001)(71200400001)(110136005)(66556008)(76116006)(41300700001)(316002)(54906003)(52536014)(5660300002)(38070700005)(2906002)(66446008)(8936002)(26005)(55236004)(66946007)(64756008)(9686003)(8676002)(53546011)(66476007)(4326008)(33656002)(7696005)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Dm427bzoMFRFA619kzPEpwrpzq7gNQ1cD9214CHN5vxv9z7zluzuCPXDxuKM?=
 =?us-ascii?Q?zJ0X715sXNja6a3TLqjz2Unen9OupdZit5m4NJ3CX1rFATjPPuzDrzu/H86W?=
 =?us-ascii?Q?7vx8FDvQGuGKhgVyrm9ZDW/RaV8KFydlhcfz07QfGZWdgmQ3APzC9Qzn/bHu?=
 =?us-ascii?Q?kbEjq1cCiuzhf7hFppH46ZkdtrThy0vPOQa/o+z0abL36NpM0HaiUw3zBLDK?=
 =?us-ascii?Q?jol2DNLI6QZRSUlyGJQNxakHZ4BOD8L/epzHO45W/LKGDQRtrqSBTdKZQ3Z6?=
 =?us-ascii?Q?8LVc3US5Yk6hrjkNW87E5Qm6uFJ1lnyXr8FsS4y/zlqjS3bK0glbHZ/XSdtB?=
 =?us-ascii?Q?VQg90EqlhnMVyu0wd/UMu6PWLah4NdXq/PIRb1+htkQdJv8f4dx3rjTBUIev?=
 =?us-ascii?Q?W9JvkXgqIaYFAZLW0cYtzE9F3yFFIRaB7lZVE/BWtCv0Rd3yqynj1cF3YXvd?=
 =?us-ascii?Q?dxxlP36J2l/Zw1kBRSZCG1NfVxlwg4PMmhN7qwUgkXebmpnvXKU3IjyQ2S+7?=
 =?us-ascii?Q?I4HO5e9GjL4pRgL0IRu/oYPLjLOICamUkJEZ/xcfOom4WWyGOf3KaZ97zLBT?=
 =?us-ascii?Q?Vy0i5cGNVIuIKZBbCz2In3nyPJgEZCGyva/kjAvpSRBlMpuupJz/2w1rpukw?=
 =?us-ascii?Q?7Zgd8KsFyIMCexSdudj1R1YsMHw3fo/0plCEqNQwVqfuErRuHLtSzRr/YRtP?=
 =?us-ascii?Q?UJXNAhAt/kAw5AcNN79/g8DM6pikAlIXr5RilCN/mI8DjZlRSCZb2Aqwpk1L?=
 =?us-ascii?Q?UAUG5BnQRQXrrEr/Fs7bV2wTmBqYYAzHOQTf/AHqyy0Hpywxma8PiIf0iGGd?=
 =?us-ascii?Q?rtB3dkE/ahQfmO/1Q+NebUXQpHu/bDWZZkee0mIv/7rPzN6iucjHzihxSlQ+?=
 =?us-ascii?Q?77Wy3AfTSA0ySfHeBvmLS6TUjWxcq4UhUzN2GNus+JbHK9ISboi3HXWW3TWl?=
 =?us-ascii?Q?bf+f9Gre3uQ+KrgUP0cWQeFXDUr9WuwrUS8DPeWnvd3LuO/L2FJHjd7eh6/r?=
 =?us-ascii?Q?jKxw0lViEV0krvuPNQXE+s73ekCIi6DeUGDcssCS5or2DT4IqpW+fLohsg4X?=
 =?us-ascii?Q?zHQHP0Be++cxDJHMhDXTX7HcTHmoc3N5WUk017BlemmBL1vr2ACzG/CB3+dz?=
 =?us-ascii?Q?W+k+q1VjcJxLEJZduhKDMEt8zrttj/njdF4PnbjtivTQR/ChqjwN5HL15Lwk?=
 =?us-ascii?Q?bFdUBuNKU+OJ2ujDOv9kP4ASZc4VUj+dp6TBKroa5+F893BK2moTqQqAtvft?=
 =?us-ascii?Q?+lYw/6o2Uicfxmbi+zCWTb3q/0dCa3+ERE4twFre4AOJVRxjN5epOcsblapZ?=
 =?us-ascii?Q?Rr0SpkKRznzmsPCYdUIqHkjf23KmXdKJQ0CkRuqWsM2SE28q8qJTQ/imxYAe?=
 =?us-ascii?Q?HCdh7+yudsce8NdD6DMhIv/64ClAw5wvn8wiu2RrQL3j7zFaKMRB8+fcWSt0?=
 =?us-ascii?Q?GEpABAqYFtFBAOVY9nNyatkGv/t0Mr3ICFHrGoGphwMGVIU7Fvb4OmH+/y11?=
 =?us-ascii?Q?N6P29yJ2+5kGEtnAhzq+NKjm7L4A+7zUP8DtQLRlvGk6dwAWm8HQJbuQKcKx?=
 =?us-ascii?Q?T+1P6DXkAF0WNKD1F9gFb500cCcFR95tiuhrgIwU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eacb863-f98f-4b06-468e-08da7c1ecee2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:54:58.7520 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uswLUZpiMfHo33Z4vWTtziR7elT5Ju3VSxrjSx8ekCUmiVMVfpIAyJj2NbTfqXWExiyBFPOLxuA31sAT4nA+bQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
> under display.pps
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  7 +++
>  drivers/gpu/drm/i915/display/intel_pps.c      | 48 +++++++++----------
>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  5 --
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  5 files changed, 33 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index fe19d4f9a9ab..030ced4068bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -101,6 +101,13 @@ struct intel_display {
>=20
>  		wait_queue_head_t wait_queue;
>  	} gmbus;
> +
> +	struct {
> +		u32 mmio_base;
> +
> +		/* protects panel power sequencer state */
> +		struct mutex mutex;
> +	} pps;
>  };
Again can this power related to be moved under a substruct intel_pm ?

Thanks and Regards
Arun R Murthy
--------------------
