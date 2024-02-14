Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C39854C28
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 16:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D6F910E36F;
	Wed, 14 Feb 2024 15:05:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SsZHImwD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F47310E36F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 15:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707923148; x=1739459148;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lPArumevyGpTeoHq3zH3tSDRR8VTBAZvm2s9czs1IHo=;
 b=SsZHImwDpGKb00aS2faPCXS+flMVf+YDUEEeYghnfUFcBOs9CxpVMM01
 UcfVhBZdHzDeBvh/B6F+0sLYdx9xmCAxKqEHW++8qts9YtMMROHfQ47vs
 UgHQ+fAsqarOb+74GiTipvxj+PvAwyy8BOcfWxwG+dsVoPunr5TmMaBkn
 Lt7icoi5kKKnPaDt/zgQjVlrb5jvNRPOfl2P4l66pEHFncoOFaArJ6aMS
 cC5gAP7EYFA8RxiKBrxxH7jgXL0NnbBcwSsw6EVf6yO4XEBmiyF53hhhm
 dcL4aDk45IZCbH92Z4TerNsHUF6q74O8gfh1Ls8hj1XbFI5kQUIzAT66i Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1879747"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1879747"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 07:05:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="34274098"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 07:05:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 07:05:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 07:05:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 07:05:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ltNUC1M/ahrNZG8UCR9XghFGSe71QlhICe6au7fQZ3aYXoYRUeEqVNLyiX+hLXMiX5ZG9LAwsSIWgcmJtxgUK2vnG8S7f60mFZ8mGzc8Q1TRME65942Sb2IH+Pit3KmmtJU8ABON0y0Xd/zclv3hxlWFWQrYhOcRxmBaYO3VT56hzI/NV/37SM6YzB1fN9DsdbXTFVXo02CFH3UK8Zt3+F/nqT7SQLhFt5IBwLUN11+H66cLPUkGusQr9br96dLxBlkNKXGOM7F6NcK3+vjgzJdgHuOCtLGJP1E4HdfFr8ZSxOFJJIpGZVCfeApq4IDD7cyuHiLoZG0ZGyu5VltEYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Vdh7c9uYieI8SeWiO0vcYJda3ccJ6EnZmsp0VUfIuh4=;
 b=gFf8yeDbIfBxhZX5GXzvrhlBb6peb0bm2JKVlYK5NLYA8I6HvzScmy5TOrLJ0AUrkhTlurAss+QpO8BfUYmWEN+zuqpVEuWlzDniZjqh2fMNQMfMrt+VRejeDPpcc1eHV111AyBiKqttduIwoFAFRCZYy6lk3qpdHsS/IWhlRFxepgFdS3YqZHudgH9FcC2LYdbXfUjKfv+Yp70tcK689UE32tbYc7Tc8+9UGlwboskkoVB0SIZAkyOifRiyoSBVEQZKe5sc8sDwDKOx3xvgaKR6koy5VBCqaNSjeHadvckGRVDPWNZQIJ2/NrbYV5WfS5tPmnhWyoI356pjV0JM5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by IA0PR11MB7356.namprd11.prod.outlook.com (2603:10b6:208:432::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 15:05:42 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::39ce:3349:9acb:2619]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::39ce:3349:9acb:2619%4]) with mapi id 15.20.7270.033; Wed, 14 Feb 2024
 15:05:42 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: Update ADL-N PCI IDs
Thread-Topic: [PATCH] drm/i915: Update ADL-N PCI IDs
Thread-Index: AQHaX1S9IorG62bTJUyyFW+1hhu/F7EJ72kA
Date: Wed, 14 Feb 2024 15:05:42 +0000
Message-ID: <IA1PR11MB6266F88D19883164CBF08FC2E24E2@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240214144629.106702-2-gustavo.sousa@intel.com>
In-Reply-To: <20240214144629.106702-2-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|IA0PR11MB7356:EE_
x-ms-office365-filtering-correlation-id: 887c6bd3-e0c5-4007-7855-08dc2d6e699f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y5mfpj1J6XMFOvVT/taMajJO7eA2Z4cBGaJ6+/OgMC0i771eUKqL5wSgA85Rma/t7j82PQdwJaLP8+6aGIzhF2lsWOPSpGH30H/924oxzrfAxK29y6qr6P7o7Ab3YdnrViVWpXoSU/AWUg5JoNMIyrdDDJ6cB7xi9MXCdwMmiJwjBMqlAcn10osop9KUU2GtbQY5Qn8BLiyp5H4TpDnvzEysevRr5T/V6A85niaErjcrQtX//OfjQBRNyEPhf2fpqG5LqKOE2090FeZ9Iczvh2ZSPc+2GyEwGfm2l8MuukLK60G/ZaaC2OAuvN45VEcsayQ4DDLL398xIhA3kd9s2iyyf1Fn7rgtF9i4f05rTpBLfnYQKMPjgLukZUO6n/Sibc3xExz/qESJLmmq3jGCepG1VHP0SOi67/D6tz4ptolaWAfJkfj8zMKmA8if8tkPQ+l3gssPdb6AovbHdMdb+H0TZza9pywPSXzjdPb0Xe/w0CIatNxV0RvK93De2c4ds4+xvxeEQNu9CoLTYbhAcFtXGbq+yEKIlKLiczXBwf4kNljfTgDdjK142RjnXoGbwyHY3Gdtp83pB3akWr3FYuEIjxOtLBH4lQztmDKSnclRkyE/hGJg6lzlePSkKTq3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(136003)(366004)(39860400002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(38070700009)(55016003)(71200400001)(52536014)(9686003)(86362001)(55236004)(8676002)(15650500001)(8936002)(6506007)(5660300002)(7696005)(2906002)(53546011)(478600001)(38100700002)(33656002)(122000001)(110136005)(316002)(82960400001)(66446008)(76116006)(66476007)(66556008)(66946007)(26005)(64756008)(41300700001)(83380400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y1afcxMLY/ua3U6kFqQlubwA87n+SFIUq9w0TgthGMKa/cJsnO33m+VtiM/g?=
 =?us-ascii?Q?vCUfFTTneoEvbLF0VdyaodMLpp+oXahzRymnEn/5zSilo5fA52N68ARJUbIx?=
 =?us-ascii?Q?1oDSSRwcrK3gMvjIRJAOE1C1bSBhIHPGmDIV8cbWVt8wA0k1cN+yFtUaq9bs?=
 =?us-ascii?Q?ExB8YtF9xzWpqt5WnwzJjnuD6PsZpumVXTDl13d/1NDL0YjOBKhqDnXCmSQ9?=
 =?us-ascii?Q?HMtolCYOhgHneklSC+v8BfhjN9v1mMp1djmpyenIMaVjXD1pTokKDDfo2xXN?=
 =?us-ascii?Q?HCp1faVo9kE61KpbB5updHJZ4rF3f76bvuREN2bDyFJQ18N8l5hRcrqpbt/c?=
 =?us-ascii?Q?Y//onufcFby38TmddQRrek8YdhOE+8c+z6RGq0FPA2QC4siYQeiOj6R7lShQ?=
 =?us-ascii?Q?rHsUMKEwLVsNeseDLp2H8qruHIniLYXRXBxG3k6b/Cb8SYaDekTzgIbUh5pe?=
 =?us-ascii?Q?bH5yXYt8E/8HsM4/7z6ezVt08f8GLk7e2JPO3UnYM3ZA78xm5opJ25RjOpHv?=
 =?us-ascii?Q?yv3EqcYlC9iNudSjkvffwyB1lLplDKcxfqcqOHBSdYCzWlgh2uKf8BzQYqwT?=
 =?us-ascii?Q?BWMR+gvt8SNoX9TZAxWOMmPzcJeCmCpZ95Kzes3SIRGtoSNXzfRW9iUBLP1x?=
 =?us-ascii?Q?3emURONNh5aeh5DgNMs9lRLWNEYdydjPoBbLirX9tD3IOURol+bVlBCQ4Xi5?=
 =?us-ascii?Q?XW/oqZ7EnNuf6DxaE1T377MXtzx/LqaveQ4VE4sI09appmDxfDIsnOfUYnne?=
 =?us-ascii?Q?pPF+fNQT/KGsC0hjDmd2SPf6ipObFv3DsZWK0l8cis0MyJAtXb6ki7RWi9+1?=
 =?us-ascii?Q?AhLMK4PWgoPxI6+nzCfbbR1UR29gcSm7lFekkT1wxErsvgJDpbLUFje+L++P?=
 =?us-ascii?Q?GA0oN4W0JtmgUN0I721Uzu/xtINGSoD5Ple7ERSl0VN6oHKzgabbZvBFlT6v?=
 =?us-ascii?Q?dPycJ+HyOBNrt92k48kKYI0OnjJJ/wLNp3foJt1x6/ZXBqvd1CSSS08YlVNZ?=
 =?us-ascii?Q?qHYoMjGXNQu7BQGCXvxZ8hJq8TD16gR9HC/7MRsl1JYwFXlMzehfkZbt9KhB?=
 =?us-ascii?Q?RBqrvxy/KKQU66jJc+ucoq9YXbge8UIaLxOvEd6Sqo91NhVJJCioWKup6+/T?=
 =?us-ascii?Q?pDax+QsXTPHTyyxbX9dh70gS9MOHeFXVVfHWiU44bwB1vM7SVmEegXGQ4vPP?=
 =?us-ascii?Q?GX4rqz/vtRbt0noTBwKLZYvptnagmLQjqH9EkQP2pt2hyRB8R9iml6KPdiwi?=
 =?us-ascii?Q?Y/PB38sa4wCbi5wPzAe+RG7J5gI0G3kIiQHMgD/Eslsnp6rzO4QefDAShaXc?=
 =?us-ascii?Q?hg4/s+PhLycEOYWQHjltgsaioXY/D+ZeRMd2lQr9GJ9ezsl6DetGnxOlR5fT?=
 =?us-ascii?Q?pNIV+OhKtTP0JniMbaO8ebAyl348Q3WaMe90YbGiwqF+BbkO1G8YE/DqLoOr?=
 =?us-ascii?Q?fLiaaad8+uD12d3dfKkY7KUPrTW0YJBLzlyHFEMJX8lLoPq8q6Ldu53ExGrh?=
 =?us-ascii?Q?ajtRsfWUcF4139FMeD220ZPl787C1Z2oqFwrjUqXnwcIkNPPDUhdSTciRozu?=
 =?us-ascii?Q?EeP9GCqJJRo+8h6SdBJP4WphzoRqvHnD00MYOGyRyXHs2uvdZDpKLVhKdhcy?=
 =?us-ascii?Q?eg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 887c6bd3-e0c5-4007-7855-08dc2d6e699f
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 15:05:42.1157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aZL/jHOqNC1NGmJhM3qGHdp5aLjLm5T5k/QsmYd4lZIIQrCHAZBSYltToV/jT3OY7Fv9lE6Kfnh+efC4zR7cdrK/vTM9nMxD4G3f02arFDY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7356
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Gustavo Sousa
> Sent: Wednesday, February 14, 2024 8:17 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH] drm/i915: Update ADL-N PCI IDs
>=20
> Extend the list of ADL-N PCI IDs to contain two new entries.
>=20
> Bspec: 68397
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Looks good to me,
Thanks for the patch.

Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Dnyaneshwar
> ---
>  include/drm/i915_pciids.h | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h index
> 07779a11758e..28a96aa1e08f 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -672,7 +672,9 @@
>  #define INTEL_ADLN_IDS(info) \
>  	INTEL_VGA_DEVICE(0x46D0, info), \
>  	INTEL_VGA_DEVICE(0x46D1, info), \
> -	INTEL_VGA_DEVICE(0x46D2, info)
> +	INTEL_VGA_DEVICE(0x46D2, info), \
> +	INTEL_VGA_DEVICE(0x46D3, info), \
> +	INTEL_VGA_DEVICE(0x46D4, info)
>=20
>  /* RPL-S */
>  #define INTEL_RPLS_IDS(info) \
> --
> 2.43.0

