Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FF0951B50
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2024 15:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E3410E469;
	Wed, 14 Aug 2024 13:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BSnZm9GZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AFCA10E469
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2024 13:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723640504; x=1755176504;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sqB1R1emblIjyeT/TFgUTYEDLfdRBLfA81SLFHQ0rCE=;
 b=BSnZm9GZXdV4aUF3KA1MFHtfN/UJppb9kotzjREGp8ZmDNcDQoD0eHn1
 uap913t8VstIcJizZLO5BrKMcD4JT62NIp7M4uFGOGMyVM1IwGV2B8EVH
 OFeL1+1p56tyfecPgbiSFdPeMy9HpyOlpgsFaeVnhjg1blNGX3lWtZocX
 7hzLSDu5Exid/iw4TLE89OuUwRdUV34Q/2Xy6pSHtVmeCx8G4BYZg+odL
 ffiBprdCduVC3FIMySzarGvIA50DCXiiPF848cPyQ2QSB1EWItXwzqVbz
 60j/4YkD0tnzE5mbR1IH65SP0YBxo0OQpqW644PHdrbqdSjvXe7tPD482 A==;
X-CSE-ConnectionGUID: bNApVu6gRLi7MmQQyajB8g==
X-CSE-MsgGUID: uiUxvLO4Qy2th/y7OaNnDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="33238291"
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="33238291"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 06:01:43 -0700
X-CSE-ConnectionGUID: 9ImIkG8RRk2zn5SXM3Lb8w==
X-CSE-MsgGUID: x0B6GgP9SY+GxQAlREz3WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,145,1719903600"; d="scan'208";a="58971443"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Aug 2024 06:01:43 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 06:01:42 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 14 Aug 2024 06:01:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 14 Aug 2024 06:01:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 14 Aug 2024 06:01:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SjAyaLPRSgj0kqWlBrO2oQzwfM27X4uhOUqfua7l7NjK6q0DC9CKESYMS6uqOIOrhguZZnpDWkOjlMlfErgi0PBp0azHqbK8DNknxCRFctynLB6npOigC0C8N6bYJYzxa980t61dcfT6cEyn+25hu2aFYuHAvGZAy1mqCzXBvAo/hLZfMXo3AU7e5WWVpbirX8pEgchRHBwxPbdfIQzR2MLjevIFemSKLAvpbi6oknrI/RfIqf36BQkcxki8uisS/3/yw6QAk1ty5CdrN0bVA3WjxhnfLnwSlvh7P4Xl5Udtz56RgZf5ByOtWj+sm5TTQOGMl48F3bZiBSqCGpFbxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZVExQhemFei459R4CdncEkZ0qOBmkclJElwrNrciZzI=;
 b=TQh5+ttN2oE4CS7nmBrzondpwyEHVlrWrvt5ptWI0aQ1rpLnG/0c43zmzikJ+8fgfkI9FZLYiQGo1WyH+G9SR+xgnLP9DjUIHzFP8cnGI6s710GnsEwTecNK/GqBGr8OizUGFA6JXLUjR2u6X/ObkvazIC3KXasIoyOlaaF+zti1jEvKcJbaen2GJa2mrYKmoPXaxp2VyiVjLhHxPCaEx3FrrbHFc3SN8YFWk3mDXO9UWeC/5hw+EwF/INgGJzkh67Y0mkrW2fd197aGWtgXQQAVSpornV7wuQoS8Exr2Hq9oCrGchs/wCV+DaeUwkx7ey8p+/cmYXiTqHqV8B6J2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH7PR11MB6697.namprd11.prod.outlook.com (2603:10b6:510:1ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Wed, 14 Aug
 2024 13:01:39 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%7]) with mapi id 15.20.7828.031; Wed, 14 Aug 2024
 13:01:39 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Topic: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Thread-Index: AQHaj+I+mSDesZPgD06ItMjjpVKUf7GOYmeAgJbwOICAAiAo8A==
Date: Wed, 14 Aug 2024 13:01:39 +0000
Message-ID: <IA1PR11MB626677469AE05ABB9F3690E9E2872@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240509032922.1145558-2-suraj.kandpal@intel.com>
 <20240813042807.4015214-1-suraj.kandpal@intel.com>
In-Reply-To: <20240813042807.4015214-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH7PR11MB6697:EE_
x-ms-office365-filtering-correlation-id: 18ef9194-2f6a-4c29-d8d0-08dcbc613c7c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?M3aJj7AVodNZ44OwwF3ysSAjmzKE5jiJTY/+/jrTCIPuoG6LSHo0lakckIz6?=
 =?us-ascii?Q?qNdObTDJAyld+/DeYI/V3af6ShRL98pJTefrVVvSzVS9JKGPymEwuCl9NsCA?=
 =?us-ascii?Q?4qXLHh/sljRlIOHbKXlKBYufFc6V2TgKkLftoZKxbZo5/dAOpgII8Smq7px0?=
 =?us-ascii?Q?2PDde5I414zdiWtWKITnRTUoEETTClOIGTGXsJcywEq9pk4WQ/YW0oxL1D8h?=
 =?us-ascii?Q?7wKYZRBWuAnV9OSIbLTl1Cbs0qV0H56KZPiVf3dPPtFdhRcHVVy2KrMCQGGQ?=
 =?us-ascii?Q?qYjNJhffEqGGs1G6bSn9C8YJvAVMDqWaAYuHpQbrYlUZE54GvHolv9QxwL+f?=
 =?us-ascii?Q?xrRW6Ax80WRuHZ2Axm6FtuEvOPWb6Pe+vgXJe+DwWZxVfdRtPGIk7zeZwJVw?=
 =?us-ascii?Q?80RZVDN+HctjU3AvRjE4CB6gvCFCVZmva7wqGHytqe2dY6kfwEr+BvKFkbv0?=
 =?us-ascii?Q?qBJQiiHTQeUUz+zEbg8hdhWkAPbUswZSFAJrscILPTL4b75+SrtU2qEOOiy4?=
 =?us-ascii?Q?lioBhJp/R2kgihB2ux2QRVyQu/tZYSP7v8wkaLJ6kgswqopP2k5ccSjZwFSa?=
 =?us-ascii?Q?s2k70eJeGnkRoUqP/ywfLNnU0aofXH+oaud6JtBKGRtBR6ScpODJc48WqedR?=
 =?us-ascii?Q?Qx5neoxZy2LTZTOhVlncGILkyHRt6aAdEDfRhR8WSbjyzVctTgqgj0dGJQ/M?=
 =?us-ascii?Q?ay0Y0ECLbQkHKJRafe/os6HMRHw2QjD4KvnrBpCgFuX8a6z/tbKhMUhUDXnU?=
 =?us-ascii?Q?X/JMtILinFezEMwhvDuUcZ9N5fgyTLtb1QUiaYnhrDRNwUPALZ/opOIW2VVu?=
 =?us-ascii?Q?B935a9OD8nl/4mp4qQ7UjaNdeU51weGv6MDORjzRULU5szdUeexwGjnMHdd7?=
 =?us-ascii?Q?aCkgDQQgXKNLzXy9zjbKNm9pSd+IMcQhMNk6xGSHPsbfddGzXXvi1ADUGikN?=
 =?us-ascii?Q?vwHF1VvepZMFbAqD3eFRWAYyXTDcHu/7/Y4gkXGs812zubjIt+xuBXHRrWMK?=
 =?us-ascii?Q?D1q8JtX/C6up942N7x8GPV+VszLYPin/dV9dD3sPneiFDfbsPx/T5oECLZ1V?=
 =?us-ascii?Q?WIKDZawuTJbhQqbSrif+0GjMmt1p9R0+5O1BOdCuwdourxDO2uOXM7sukeiK?=
 =?us-ascii?Q?bFWK8x2dIMjNqB8H0/Vk55ueRPVk4GrO14PusCUb9HzK8KzNtiku8RJEaGUv?=
 =?us-ascii?Q?/kbUYBilRqnjnhqrzQqFlO5LjSeYGNtEfZbJz8zcZmdk9Ms9SdWMYis0cV0V?=
 =?us-ascii?Q?VOtKaiiorDzMjHj+GAuWtkKyDLcurzotZcagSLT3qz28GIlaC4QJYX4RJGY9?=
 =?us-ascii?Q?hlajlcoHS3u1r09vD2/C7ATTgKnZGzuqtWSsV/Ava6sGMlSsq7qEbqOV7Miu?=
 =?us-ascii?Q?xHGEbZNas75HkoimOfoef2aWFvw0OFOFFgR2Z8VHcwTErabq6Q=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G3tmZOC7V6zC7NtsA3M0IiJwHfPD6JYS6adn2gU5+hDJdycCnfmP3apKiJnp?=
 =?us-ascii?Q?zqQdi8FeJgi4Yrh44QnxNF1pvEEIQZX0hP3r/LltazAoY3GOrnQY3kYzCGRO?=
 =?us-ascii?Q?0DAhlxg4SlSQc0ZDQnwLVOwP/jdYoHp/WdoOwtL2qTsIUln0gh9gahx6vYeZ?=
 =?us-ascii?Q?crRnHa8AQec51wqS3KamchSmf0791sCqdwNzoiL61Tv/+Mou9ccF6bwnW8zy?=
 =?us-ascii?Q?JyaKP6cNqnYCk6+U3C1I7pQ8sjjTfL2WV2kWAqOF7r3rZ9drH30lKTNxzpRb?=
 =?us-ascii?Q?AvODjArwcSxYQbD4U4hjvj3Y8VtlKHSsfFcnOwrAs+PZKrgf14P6eeEmy6Tc?=
 =?us-ascii?Q?fxwhRX2fitBx2vL1zZaNM64BW38tWMjJUH1pQZZqea7sNvmFia8+q+NLqZ8u?=
 =?us-ascii?Q?RMSRIv9J7NY4zO9Bkbbyl9bXv8eYi9aDq+l9K8uSLJqf5cal2pyFHI87N+FN?=
 =?us-ascii?Q?mCPtQU4KjCJqOWhN4cvHFnEsC1hE5l77K2BbihcbYA7mjYK5pLFc5JKctvAB?=
 =?us-ascii?Q?K9kxLIbQo0SoKXUSciiYul1pCu9weZU0K4ykrYAyxzQUl2G5OQH1oiEEEIhh?=
 =?us-ascii?Q?kA1mwGeUThnkM56PIMSP5thob7SctSmqWHQ+ooVoMFD1bIU8pRh62PIJ/g0r?=
 =?us-ascii?Q?bv0eTJbvPxouFYLQSLCn6Si5zVCQqbyMc0FJ0FoP5gAK39mNkN1b8Whg8x/b?=
 =?us-ascii?Q?63fUqUGv/A7Ml99ZGe5OFr/xl0yM9h/wFOSKXesTDuldRDoi+VYWSA0DdreZ?=
 =?us-ascii?Q?/tDOL8zOKoSOFFJiJ6mpIwtQsYdBFC+FTcMBR+arWTERqAKV1HLlUilQq0H/?=
 =?us-ascii?Q?DvT0MH5eF2WLai1TWqPyFmsq+EOHgXXNMwlbQAk63iM1gjvRRnIYLdRHqhDX?=
 =?us-ascii?Q?lcoZc9glTgd37C3MOLwOCntg9YToBEGA9TxncjCdhuzJRqxE+UbEi2AgRCCG?=
 =?us-ascii?Q?PaYYEL7HALGJWHQpi8Bh44+b5tsZjfEvVoD45WWTF5T7OUxOW3f3uUr2P4f/?=
 =?us-ascii?Q?W+XRAa8M77EnIvccbO/7JfAgTcySgT7pAc+eZAx9GxXCi1ff8pEDRC2IJwU7?=
 =?us-ascii?Q?N2kuzRlMk05BQJ9AOHUvZfJ2MTVYswoa9qTscPPcqVxWkWZ9b+eRPRQLoaLo?=
 =?us-ascii?Q?GISiDQ/OqMcBy/PLZgaubaXK7nRCaH8LCuxAkcMSeggQB6k5NkyNMiQ/gPxW?=
 =?us-ascii?Q?0XlfG0X0T8ufwHCJbYWrM1B0ocu16KIYyHU/C91rQ5zB+HF0dEPF78UC0y8v?=
 =?us-ascii?Q?S4Bd7EnWvYUc/DzM5KyqOzeX2BKMuivJwQPCANUXQVHHIV6tLkU8wVr4o4/d?=
 =?us-ascii?Q?2CdTP0R97AaYlsO+wZQml2CJEXLvv7r5E7s8Ae0Tq27z/0ovZqrc6AQsgoc6?=
 =?us-ascii?Q?xrw6oPv3tiFuUnpANlFHmAwmNGAhmMBHN5Gj3OmnsGbKcvcxvyB0iyEKPqq0?=
 =?us-ascii?Q?Esvd1edFyN+VP+8scAGTMtZiL9HEP6m29BB+YkoWIURlXb0uIIpxsxAW+yRy?=
 =?us-ascii?Q?FWOhFSO4lQHAWOaEBEvEwkhQ2wZbFtn3tiYipF22auRRXPVb5QvVOW35kVci?=
 =?us-ascii?Q?SPkE1tSqf8rlP6JSN4cxnG2YH9nVJRkRVwZMnojq9Q8PLkrVD8KKqVmXlTzK?=
 =?us-ascii?Q?GQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18ef9194-2f6a-4c29-d8d0-08dcbc613c7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 13:01:39.2411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ILEKVxFFleiVg5UdCkNhPU5h06/IE6pKopPzz5a+r75N1fhnoqO9tmcLNIPkSI+zsP0eNSSpR/5rhQCcB921PPjJSimAsfs734khU1QAsKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6697
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, August 13, 2024 9:58 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
>=20
> Disable bit 29 of SCLKGATE_DIS register around pps sequence when we turn
> panel power on.
>=20
> --v2
> -Squash two commit together [Jani]
> -Use IS_DISPLAY_VER [Jani]
> -Fix multiline comment [Jani]
>=20
> --v3
> -Define register in a more appropriate place [Mitul]
>=20
> --v4
> -Register is already defined no need to define it again [Ville] -Use corr=
ect WA
> number (lineage no.) [Dnyaneshwar] -Fix the range on which this WA is
> applied [Dnyaneshwar]
>=20
> Bspec: 49304
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM. Thank you.
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7ce926241e83..0918eb218fc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -951,6 +951,14 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>=20
> +	/*
> +	 * WA: 22019252566
> +	 * Disable DPLS gating around power sequence.
> +	 */
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14))
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     0, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
> +
>  	pp |=3D PANEL_POWER_ON;
>  	if (!IS_IRONLAKE(dev_priv))
>  		pp |=3D PANEL_POWER_RESET;
> @@ -961,6 +969,10 @@ void intel_pps_on_unlocked(struct intel_dp
> *intel_dp)
>  	wait_panel_on(intel_dp);
>  	intel_dp->pps.last_power_on =3D jiffies;
>=20
> +	if (IS_DISPLAY_VER(dev_priv, 13, 14))
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_DPLSUNIT_CLOCK_GATE_DISABLE, 0);
> +
>  	if (IS_IRONLAKE(dev_priv)) {
>  		pp |=3D PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(dev_priv, pp_ctrl_reg, pp);
> --
> 2.43.2

