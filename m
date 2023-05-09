Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 893E96FCD99
	for <lists+intel-gfx@lfdr.de>; Tue,  9 May 2023 20:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A3110E0A3;
	Tue,  9 May 2023 18:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9967210E0A3
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 May 2023 18:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683656347; x=1715192347;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=V/BbFE1kiXOIQGBIB3k3IfigDeBl72vk0wqOFWopmTk=;
 b=hTUFmviFS9UjIui8kAwlhtcA8tgOaiSkqAaMMG/G/UVvSup65uOHM0DF
 Y+1n5dkA1rXI0qpLhbKbNazshkK6yHJGVM/j4ORGbEcT/CDt6NP3kV/eT
 HIIVOHnc5kGAtjJNPAvqKd2el+ThA4KteEOMsTENI2+mr4II8q7ZCE+41
 Yx3VNsnhG6eEleRXjfzyeERKi4btIvb5NlERuqtZUNwLL8wNrsU/S/Fue
 QFGkQDfvnOpa4rg+ba78jwH/HXSF4lael4rtj1pRWrQIR+iEihV8pZB3k
 l/m8Om7K4TEJ6FH8niRZZAoD41ktfpF1cbHxxCOyDPvYd61yQqWwQrvoD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="413296404"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="413296404"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2023 11:19:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="729632343"
X-IronPort-AV: E=Sophos;i="5.99,262,1677571200"; d="scan'208";a="729632343"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 09 May 2023 11:19:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 11:19:06 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 9 May 2023 11:19:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 9 May 2023 11:19:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 9 May 2023 11:19:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zoqmofjxp8k9n72N2wl6gKTuK3ysnptcKH5l1esbGH2pGjRrtIxPFGSG+vOU4HkS4NvDHEPk9EeLczFPGvO79w4DbC5SXPhOE2c0qNO9xDUZOrStNb/S4IuXjvCF8Er5gncLs+ciIi62OT0L0l1LdIQgMD0VDOXvTsSFr39GcFd/SLV/W1jrjTM3blZOXcwb6EVdm799QFQGI365wkkup0n6FnMOgk2lbFV5VXGGUyag8n2xk8tt5USWyA+nrNV5gBZExqLZvwBE+r2jN3E9kd0yekhNgrXv1OHs8zXVi/amSfmLmWmHd875Qr9B9sUByIlblyQkiRB0XoGqmzaTUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LnFKyjW5Jk5N1/lshOiSJdyRQOjhf2ApULWWq6iNOhw=;
 b=N7cOGFcy+emP5Qua6o/A+/0WqOgDt5JemEq8rc7VGD2kBhTvVwdtYgmnZRfC1legpE4NEq90WTGyL5UlngUaVPYcub/hpMVDlIOcoaaTd+W89+gXRqnUyxaBEfmr9liLmJrJeiDW/LlIhVlsMpqvq/G+lX+mt893QtBYjDyAELOe8LNP2q/4Xwvkd5FqHQG2qLiK7zZhld7bGcHZiKJNFW6gJmu7JtnUuW8dr1wSSt38e46IEI5kHVlEm10wmzpXJ2Q1CHFiHfxJN8//uODsK6/KGJkk0+nQ3sstosxTQdWGfqtbOygzhCdJq45exhXuPaUDratZhqC93OV2EI5Hyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by LV8PR11MB8558.namprd11.prod.outlook.com (2603:10b6:408:1ed::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.18; Tue, 9 May
 2023 18:19:04 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 18:19:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230509160206.25971-2-ville.syrjala@linux.intel.com>
References: <20230509160206.25971-1-ville.syrjala@linux.intel.com>
 <20230509160206.25971-2-ville.syrjala@linux.intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Tue, 9 May 2023 15:18:52 -0300
Message-ID: <168365633292.1309264.8591963246145804651@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0177.namprd03.prod.outlook.com
 (2603:10b6:a03:338::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|LV8PR11MB8558:EE_
X-MS-Office365-Filtering-Correlation-Id: 0388faea-0ee1-4ce4-4fbd-08db50b9de8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sIppyfc55aZofeKUufmwsBOX7Zzx2jzFPeKqmrDeIlcTAGNx/ReVbYQvI6XCHMPdFj3iLjz1sFYgyj30P57IJh0rsZ8qflKVEg8PDbVK37MPixklxaRbefmE7QplCLA+uvyviGUfDgU3lOt0/t/wkfCJS6a8pZb8RIhN9hw8Sy2tbtXNC3bYfHwK3Z7W4WXOKLn57a+3Kq8ExrX8nyiR4eOpyZ4f0/Iqi2Z4Xn/KjUS/Vi8v693wkfe8x5dwBHgSMh/Uj3hbH7ZtEoJG/h9AP3PKzshHAB8/5yXxgcpnyBy8EYY7M7+I3p/Z+f8ye/6hYEkm8aLGkccuaC2P22WiooQ5PxLLbkVRMRTOmossld5gGHbnDHAXXeyy0RuxFBXRO/WLXaBoHLd6soKwsxEiKnqX4EB1UWwxpphm8AxJzLEOSUQ65ecC75sqUvK6teYl2IIXQhEKOHBj7M9pCXbA5N+6pa/Y4sFpHj6sOw9a/XTnMeH1b0/kd74H4Aoy/9cTnsAXpidrY2mb0/pfXn6e1RfkBmYmRvQA77umZNADoNLysb+83rItnrXauloRQQM9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(396003)(346002)(39860400002)(366004)(136003)(376002)(451199021)(6666004)(2906002)(478600001)(186003)(44832011)(6486002)(6506007)(41300700001)(6512007)(26005)(316002)(82960400001)(9686003)(83380400001)(38100700002)(66574015)(33716001)(66476007)(66556008)(66946007)(86362001)(8936002)(5660300002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVJEaUU2TktLencwYmFHdHJvUFQrTHByN0ZhMWt1QWUxNEZNY1hyWUtnekMr?=
 =?utf-8?B?ck1Id0dlVFpCbWMrMWNPdjNiem05TnBJdVdIOGtTZEdXWVRnRkhCSjB6NUFk?=
 =?utf-8?B?Q1k4N296NDU4aFFGRGZ3dTRxTjljRmpEZWMyZ2RVZzJpNHlhdlNuRi9sdzJO?=
 =?utf-8?B?ZG9RR2lZelgzN01mWGlMTjdVUkl0YVMrWnFZYUJiSC9LVHJFb1B3eWMxV0Za?=
 =?utf-8?B?TW05dnUrc3FrTEdFVk45MnV5YkxWaW1zYTVtR25XZERpN1Q5NFB4aE1vTElr?=
 =?utf-8?B?Q1JTeitRejNBYnFiTE44ZThiamljRHJrTmFhaHhlQ2U3R20wMnA1cDZRbXd0?=
 =?utf-8?B?QUg0b21xcmkyZHVvc0Z0T09SazBMcVRDOVZYZDhqb2NRNU9pejIycGFha2k3?=
 =?utf-8?B?UVgzYXFvMzBSVnhJZXNydjhhaXVRRzd4Q0pmZDBuVEQvM2lUSFdVejkzbnZV?=
 =?utf-8?B?NkNva2ZiNVBjQVROUzhNZnRBWW5xNFRpMWg5MEw0Rk1sRDlad3ZPUk5uQWFu?=
 =?utf-8?B?eXZkN2lvaTNsSWxHTy9jWWRBVHlYZWQ2MXZXdEYydGtDWWJlc1ozK20xTVB5?=
 =?utf-8?B?dHhCUnhZRDV2czBZY3d6bGxDNmZQOFRxWmU5REVJRzIvVVRDYzloVnNydWtQ?=
 =?utf-8?B?dnhWekhLdVlEeEZYdXR1eWR3YnV6OXh1SDh0ZjZ4UExZbUdkRmo4N3BOUXRW?=
 =?utf-8?B?WEl2V3VjY3g3VHlQOVJhZnJSKzNycjFtY1VCZGV2UVZpd25rbDd4dVYrS3Y0?=
 =?utf-8?B?S2dRSHJ1OXJQS2xibWpsaGhrL1d0UFFsZ0RFbUhEdjNWOW9lTXdraVpUMnR3?=
 =?utf-8?B?dEd2bHhXaGprN2Z4VVZ2b0kxWkNxNlBncG5OaERXc0YzQy9Cb0wxNnJRbVBV?=
 =?utf-8?B?YmFaWFdQV1pSSkJLc1c3UWh5ZFJhcXN2VTUrQnpZNFJCb3liT0N2dUUxZWNY?=
 =?utf-8?B?dzQ4VDgrRlRFVjFhWWwydUdsU0ZaaXA1am0rN0kyZXUweERveFZ2OXJCVWpG?=
 =?utf-8?B?ZTZQcmtFODM0S3hFS1YvdnIyMysydnBQdXpxeGFIMzIvdWhtWFZxRW1rYVdR?=
 =?utf-8?B?VWFHeWpOTGRJK21qbzRSNHFIWDdoZktPWUw2NEtnZ3FwMVJ2V1Rrdm0vNDVZ?=
 =?utf-8?B?Qk1SZDlPTEFHS0U1L3o1MkhZZm5KZmFqWEs4VitEd2tzRUczN1lmSEdyM1VC?=
 =?utf-8?B?bUFYbG11YjZXbWl1YkRRSndHVW5WN0pYVTg0aUd1a1NMMXZ4ZEdPUnNtWFBu?=
 =?utf-8?B?bERWUVhKVitQNFdzOTIxdVJWRzg4YXQyQlJCY2NLd3R3UmxQN2pQeWJxTWRs?=
 =?utf-8?B?ZFZtMFo1K2QzaEFsQ1N0Y3BvMEpKNnJLakxuTU8wWHBidDY2TkFyU0lDdTZ3?=
 =?utf-8?B?OE5yWCtkcmplOVJpOXhnWDdvcHg5UkpQb3UzMGxjeithQk01Z0FYSEpyT3Vo?=
 =?utf-8?B?OE50UVN4RERlK2g1b212Q1o2ZXR4aEZIbWNCZDA4eXlrMmlKV09HbzRnZS9X?=
 =?utf-8?B?ZFUwUEFkbGxsdW5kd1I3TTA0c0h0YThZa2NLU0JqOUNFM21qNlpQVHhmR3I4?=
 =?utf-8?B?MVRVUWFXZEs4cnpjWk4zSGs2YS9KTS9mUHZjZkFvbHozN2Z0QVE3VWRaV0M4?=
 =?utf-8?B?bGYzaVlzRENPZG13QkJpUTAvczZSaXJ3Ym12K1p0U0JQeFZwdSs4R2o0YXFS?=
 =?utf-8?B?OEt1VWpFVHNxSm9STlRieERvOFVWTFZmU3E5dGFzQktBK1QxVVJHSVBQQnVp?=
 =?utf-8?B?VGowVFpOdnJyWGM1V2E0STBheE0rR1g5OHRHalo4NGZNbHBOQ05aWlV6Q3hh?=
 =?utf-8?B?STFOdWswSWZNcGMxOTIvb1VvbEgyRlVsNkgrVHhpVjRHQ3p6T0pSTXFKampX?=
 =?utf-8?B?M1dHdk04SUNHY3dhYVdPTVNHSkxEWVVTZjNwM2l6WXNMVUdDeXRKV3hQcU9j?=
 =?utf-8?B?T2EzblBaajlRRFRGdGRwTHhmQ2s1VGpjSmd1dEhYUVVwRTlzWUxBN0pINjRZ?=
 =?utf-8?B?LzlBY3Ivd0VEMkdvRit3c0QrajA5UWdvTFRoNFpxQlhoTENYbjN5YlZEdml0?=
 =?utf-8?B?R2NmWlNBa1RHdHVVMzJINUJPNGg2WWd4N1hFVFd3RVJ2QU56ZWkyUFJ4WEth?=
 =?utf-8?B?emQ4eGtqMmVycTR4SFBzRWttTnZ4d2xhd0Y0MXAvSWJUajUwM3FadlNabytk?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0388faea-0ee1-4ce4-4fbd-08db50b9de8f
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2023 18:19:03.9971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JiLiIddaXCpArlLGF/2NpGz1Gc+0ExljBe1oVUU535b5QQsmgwyaqa2Bg4gf2TKMoR5Z4BiakXcgVp+USNDxSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8558
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Flip VBT DDC pin maps around
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

Quoting Ville Syrjala (2023-05-09 13:02:05)
>From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
>Swap the roles of the index vs. value for the VBT DDC pin
>mapping tables. This is not strictly necessary for DDC pins
>but it will make this work exactly like the AUX CH mapping
>tables where the role reversal is necessary (or at least makes
>things easier). Consistency is good.
>
>Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_bios.c | 70 ++++++++++++-----------
> 1 file changed, 36 insertions(+), 34 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i=
915/display/intel_bios.c
>index c77d40535fc4..ac0fc1993376 100644
>--- a/drivers/gpu/drm/i915/display/intel_bios.c
>+++ b/drivers/gpu/drm/i915/display/intel_bios.c
>@@ -2141,58 +2141,58 @@ static u8 translate_iboost(u8 val)
>=20
> static const u8 cnp_ddc_pin_map[] =3D {
>        [0] =3D 0, /* N/A */
>-  [DDC_BUS_DDI_B] =3D GMBUS_PIN_1_BXT,
>-  [DDC_BUS_DDI_C] =3D GMBUS_PIN_2_BXT,
>-  [DDC_BUS_DDI_D] =3D GMBUS_PIN_4_CNP, /* sic */
>-  [DDC_BUS_DDI_F] =3D GMBUS_PIN_3_BXT, /* sic */
>+  [GMBUS_PIN_1_BXT] =3D DDC_BUS_DDI_B,
>+  [GMBUS_PIN_2_BXT] =3D DDC_BUS_DDI_C,
>+  [GMBUS_PIN_4_CNP] =3D DDC_BUS_DDI_D, /* sic */
>+  [GMBUS_PIN_3_BXT] =3D DDC_BUS_DDI_F, /* sic */
> };
>=20
> static const u8 icp_ddc_pin_map[] =3D {
>-  [ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
>-  [ICL_DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
>-  [TGL_DDC_BUS_DDI_C] =3D GMBUS_PIN_3_BXT,
>-  [ICL_DDC_BUS_PORT_1] =3D GMBUS_PIN_9_TC1_ICP,
>-  [ICL_DDC_BUS_PORT_2] =3D GMBUS_PIN_10_TC2_ICP,
>-  [ICL_DDC_BUS_PORT_3] =3D GMBUS_PIN_11_TC3_ICP,
>-  [ICL_DDC_BUS_PORT_4] =3D GMBUS_PIN_12_TC4_ICP,
>-  [TGL_DDC_BUS_PORT_5] =3D GMBUS_PIN_13_TC5_TGP,
>-  [TGL_DDC_BUS_PORT_6] =3D GMBUS_PIN_14_TC6_TGP,
>+  [GMBUS_PIN_1_BXT] =3D ICL_DDC_BUS_DDI_A,
>+  [GMBUS_PIN_2_BXT] =3D ICL_DDC_BUS_DDI_B,
>+  [GMBUS_PIN_3_BXT] =3D TGL_DDC_BUS_DDI_C,
>+  [GMBUS_PIN_9_TC1_ICP] =3D ICL_DDC_BUS_PORT_1,
>+  [GMBUS_PIN_10_TC2_ICP] =3D ICL_DDC_BUS_PORT_2,
>+  [GMBUS_PIN_11_TC3_ICP] =3D ICL_DDC_BUS_PORT_3,
>+  [GMBUS_PIN_12_TC4_ICP] =3D ICL_DDC_BUS_PORT_4,
>+  [GMBUS_PIN_13_TC5_TGP] =3D TGL_DDC_BUS_PORT_5,
>+  [GMBUS_PIN_14_TC6_TGP] =3D TGL_DDC_BUS_PORT_6,
> };
>=20
> static const u8 rkl_pch_tgp_ddc_pin_map[] =3D {
>-  [ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
>-  [ICL_DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
>-  [RKL_DDC_BUS_DDI_D] =3D GMBUS_PIN_9_TC1_ICP,
>-  [RKL_DDC_BUS_DDI_E] =3D GMBUS_PIN_10_TC2_ICP,
>+  [GMBUS_PIN_1_BXT] =3D ICL_DDC_BUS_DDI_A,
>+  [GMBUS_PIN_2_BXT] =3D ICL_DDC_BUS_DDI_B,
>+  [GMBUS_PIN_9_TC1_ICP] =3D RKL_DDC_BUS_DDI_D,
>+  [GMBUS_PIN_10_TC2_ICP] =3D RKL_DDC_BUS_DDI_E,
> };
>=20
> static const u8 adls_ddc_pin_map[] =3D {
>-  [ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
>-  [ADLS_DDC_BUS_PORT_TC1] =3D GMBUS_PIN_9_TC1_ICP,
>-  [ADLS_DDC_BUS_PORT_TC2] =3D GMBUS_PIN_10_TC2_ICP,
>-  [ADLS_DDC_BUS_PORT_TC3] =3D GMBUS_PIN_11_TC3_ICP,
>-  [ADLS_DDC_BUS_PORT_TC4] =3D GMBUS_PIN_12_TC4_ICP,
>+  [GMBUS_PIN_1_BXT] =3D ICL_DDC_BUS_DDI_A,
>+  [GMBUS_PIN_9_TC1_ICP] =3D ADLS_DDC_BUS_PORT_TC1,
>+  [GMBUS_PIN_10_TC2_ICP] =3D ADLS_DDC_BUS_PORT_TC2,
>+  [GMBUS_PIN_11_TC3_ICP] =3D ADLS_DDC_BUS_PORT_TC3,
>+  [GMBUS_PIN_12_TC4_ICP] =3D ADLS_DDC_BUS_PORT_TC4,
> };
>=20
> static const u8 gen9bc_tgp_ddc_pin_map[] =3D {
>-  [DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
>-  [DDC_BUS_DDI_C] =3D GMBUS_PIN_9_TC1_ICP,
>-  [DDC_BUS_DDI_D] =3D GMBUS_PIN_10_TC2_ICP,
>+  [GMBUS_PIN_2_BXT] =3D DDC_BUS_DDI_B,
>+  [GMBUS_PIN_9_TC1_ICP] =3D DDC_BUS_DDI_C,
>+  [GMBUS_PIN_10_TC2_ICP] =3D DDC_BUS_DDI_D,
> };
>=20
> static const u8 adlp_ddc_pin_map[] =3D {
>-  [ICL_DDC_BUS_DDI_A] =3D GMBUS_PIN_1_BXT,
>-  [ICL_DDC_BUS_DDI_B] =3D GMBUS_PIN_2_BXT,
>-  [ADLP_DDC_BUS_PORT_TC1] =3D GMBUS_PIN_9_TC1_ICP,
>-  [ADLP_DDC_BUS_PORT_TC2] =3D GMBUS_PIN_10_TC2_ICP,
>-  [ADLP_DDC_BUS_PORT_TC3] =3D GMBUS_PIN_11_TC3_ICP,
>-  [ADLP_DDC_BUS_PORT_TC4] =3D GMBUS_PIN_12_TC4_ICP,
>+  [GMBUS_PIN_1_BXT] =3D ICL_DDC_BUS_DDI_A,
>+  [GMBUS_PIN_2_BXT] =3D ICL_DDC_BUS_DDI_B,
>+  [GMBUS_PIN_9_TC1_ICP] =3D ADLP_DDC_BUS_PORT_TC1,
>+  [GMBUS_PIN_10_TC2_ICP] =3D ADLP_DDC_BUS_PORT_TC2,
>+  [GMBUS_PIN_11_TC3_ICP] =3D ADLP_DDC_BUS_PORT_TC3,
>+  [GMBUS_PIN_12_TC4_ICP] =3D ADLP_DDC_BUS_PORT_TC4,
> };
>=20
> static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
> {
>        const u8 *ddc_pin_map;
>-  int n_entries;
>+  int i, n_entries;
>=20
>        if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
>                ddc_pin_map =3D adlp_ddc_pin_map;
>@@ -2219,8 +2219,10 @@ static u8 map_ddc_pin(struct drm_i915_private *i915=
, u8 vbt_pin)
>                return vbt_pin;
>        }
>=20
>-  if (vbt_pin < n_entries && ddc_pin_map[vbt_pin] !=3D 0)
>-          return ddc_pin_map[vbt_pin];
>+  for (i =3D 0; i < n_entries; i++) {
>+          if (ddc_pin_map[i] =3D=3D vbt_pin)
>+                  return i;
>+  }
>=20
>        drm_dbg_kms(&i915->drm,
>                    "Ignoring alternate pin: VBT claims DDC pin %d, which =
is not valid for this platform\n",
>--=20
>2.39.2
>
