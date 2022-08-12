Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9690C590B4F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:48:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE32A5065;
	Fri, 12 Aug 2022 04:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E438F40C
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660279714; x=1691815714;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gRbnPJarl+N4etbeIuG8if18IaerxgykFMhSvlelHys=;
 b=fmrMZvcxAfxadC/Vg3//3B+5F1Y6nZ6O9G52QEj6+mhmnoTdeFxiqB/6
 jO5HppFsPCZ2wJU9QiZ4VMXEcRyKVofTkgF2EmKffLpjbaUrAqknGgrY6
 FdNA6wbOvmayab22C3NJ5m0ugRX5aucmeevahAHqqAd0xCPDAuqgVr9Wo
 aGPWtjsC/RfFzC0b/+i4QgVNuAKDfZDYaebxPDvbmtcd4u88idy3GI3WR
 b44S/U/pmagyzzn3dFlLd4Cc/s55uq9r0MKPsExsgVYq8uL5KobjvM0q2
 gdWkv/SB5C6wpIoJAZi2nUYO4YDj6UKx2DElAvKwqecshyxZCM2FkUBC9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="278470774"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="278470774"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:48:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="581951898"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 11 Aug 2022 21:48:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:48:27 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:48:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:48:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:48:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iigR1H4OxJCbBftwHOiy2HUd3CsmG/Hd0UtQCiAMQ9YLlLZ/KsrZK/fTPaJhV8VBE6u33tHXFhz5fwHcyXR6wNlN+Xl7Dd07IByTybSohFrAKpYl6/KiyGTKZdK8IuFHfoGVXG3IQzia/KKkYU81HS6+FzB3pu9/Qtb4Q5S6N9gb3hVHqShvCN/aQYsIWXvBUUfNdElCEz9hLJfX7+CQJuqEhh/BGFTws3pf1EbJ7OkTr3s/8gHEFlGc1oECH8RLn5qi/J9w0pdjoWzIXePQjxFATauL3D7rJnUcuJUKMSAp3tPR92NPJEA7yfPdbsLENCC64RyPjKBY2A22MSaumg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRbnPJarl+N4etbeIuG8if18IaerxgykFMhSvlelHys=;
 b=X+OG8XU9Dol1m9wp2gtQLocGfhQHDuZFHzhrb0HYODTyDxhU1fI6tqNFo1EtGZecnCB9vGl/TBx594q3kDcaZL9K9ptCLAFiVP2rHLHDtR2fYO/9TiZlgqzHi0wX4FxNeBrP5QTsSbenCnso0J2eKzoysp9Uz4VFAG1xNAsQwla6CGLBnOV8MG7JdVQrJr+4j+cAnMWnCWrrBOsd4J7d1wMbzrCq0ngEDZ7V7hl29qe8YuXEdta5fWKPddZeAc1+49/stVDamOoOBVvt046T4l/aO++eTmDxwqWjwTeL+jIshAkf6TWgT4J0ArBu+/3kAnQlGGL22bSCfqeM0XYnCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3287.namprd11.prod.outlook.com (2603:10b6:a03:1c::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Fri, 12 Aug 2022 04:48:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:48:19 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 07/39] drm/i915: move fdi_funcs to
 display.funcs
Thread-Index: AQHYrZWQAdhRQDOuKUeZ8AbbYTpJk62qsZag
Date: Fri, 12 Aug 2022 04:48:19 +0000
Message-ID: <DM6PR11MB317766AE3602D634663E54F3BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <4db433656df2476e337ad9b0e2db0c5704a3c8c4.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <4db433656df2476e337ad9b0e2db0c5704a3c8c4.1660230121.git.jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: b6b2a59d-c21d-4771-29b2-08da7c1de0d1
x-ms-traffictypediagnostic: BYAPR11MB3287:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GBiPQzbB/LChlwLkawdEMDuLBhrTCoK8yE9ACrOD7WGvzkwNkoemX8FG2KbUbYLOH6x3xQAJtqVv3YgF6CRbzjLitu1SYqSpY+e3KNk3tO2eRHZM2a75CnhBUp1MuDorcLYioYcoK9bgDp32PxYtITMbUuYKgEbHk4MT9hXhrr68uNOpiNxEp00Q3dwWyQ3mZFu9EhlRbMbW7E09MkYDy1+nQajHTLMOzPQJZdF0lSQaoJKzOsf1162GzOEOSWoHNycW6Aum8jrZGPvAuKI3+w+SJPvOEaTT64DjEGdc83ksbIL/xCZ1Zw1feXa1kwD/sz0/xnP813UuFl9K0lIbjJJ3DwrUFROMptzzrMPbZ2L+X8mkr/b4bk0pNQwHy1qEsawVIwhJXSDrha9Fku3o3shy2JuD0+DIDywOpofvP4X6XA/xYIgJ5e9jMEqNYTYGgIxXNF0K7dlAo1s+2C/so7Jhe56zAgMOK1bK+4Pg+OwuUXWnqTpYMbVcDGZPL5M8ErtRRCtBinXeQsIjme7iZy4u0r/0c9slZkUa23J0rJ6ddzjhwyC8mdEYZoAxYF4vo3tlpqFC3u9jnjileMoGPOzKAg/Gsco9wLN6QXlzWAaCSRbtfilGNYGrYc3hMlj/RPK/L2nCuApXjh5KzOd5lVjkb5gWPXgmAJEL3R2n1biFbP6GjunZs2B3L+qKzaGkvJH6Ln6qrQKaKWCNjmiV7wgUQKds7qwSEdrXzknAlZPL3yyASqhVyVPA6VF39RUkKaZtD8+YygNtj72AYA9QN+5lpYQYL4bCzOLqo+tR4cs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(39860400002)(396003)(376002)(5660300002)(52536014)(38070700005)(54906003)(4744005)(110136005)(316002)(66556008)(41300700001)(76116006)(66476007)(86362001)(6506007)(33656002)(4326008)(7696005)(66446008)(8936002)(2906002)(66946007)(8676002)(53546011)(9686003)(64756008)(55236004)(26005)(83380400001)(82960400001)(186003)(107886003)(478600001)(71200400001)(55016003)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?aDJ941YGFUUkjZV6o/khOoFoVSLJ/swrOjJmEbPt8WhQijXVZ86llaxZMxbd?=
 =?us-ascii?Q?ldq8Fpj4QvI6mv9xlt/8hh7o2uuPMY8BytGZXr8fFyfVypPDFZVna3vQytL9?=
 =?us-ascii?Q?1SZjnrBRTHqNsjz0xImTKyX7qz6Bguk77llgpMtFgy13jIibdF/anu+/KMrG?=
 =?us-ascii?Q?cgTbF3jHjvTm+QCm2RE5Eun75YAnr/LZbHZ7O8gqGzDqQ2aoG21s1EHQb5Fg?=
 =?us-ascii?Q?e4W2jhqOfB7CxjD4A/qnbOYzFHgt5NBHMroWfSkS23qQZhOU4iNQxKHQ1U49?=
 =?us-ascii?Q?NFRBtJVuj8ntf7lcAtYFzYAbvOS27/ogIjaukSMKgJ14UHgDMAt3NBMRm76X?=
 =?us-ascii?Q?C22s8nYD1Y5/mgWvgUpzziPVZrTcCRV+v1IaoQw00uNq2eEzXzlg9NYyOZd/?=
 =?us-ascii?Q?d1oCSoQtYvRvlQK8g8FkH785lOQXuEmTCtPb/cPnIdBCKb/YLhQkuR/MEm/Z?=
 =?us-ascii?Q?B3TCb4ES7Am78NCn7rG3Hpx/EV1oNNiRs3xx1X319rGAHlPtRRwJHykve5Fh?=
 =?us-ascii?Q?oQWMXOoQn0xASvqPEXZAC+AEJXt8yobiILH5d/DBahsmcMk7vqVcgyU/UbNC?=
 =?us-ascii?Q?MWxe/6YznM2tWRsDtsCBMX3Ky6G2DCOUpIt5Ty/gw0u9nFux7v8VdS04D4Yp?=
 =?us-ascii?Q?orsNR7BBG4Oz1qJaq/JKmCMAKB62C8qaHNjhck2TKdRFRVrsw638A3HH00WN?=
 =?us-ascii?Q?MW+LozngFnUdXToIchweiU5M4PgShJqBfuCIM8HP4iKx0oTGCVUxTz15fJwQ?=
 =?us-ascii?Q?VmVrfYVs5Q0ew9luGcusjBQW4DY9DARqYaNisILv6iNTuYApzEZyBdJMdH5s?=
 =?us-ascii?Q?onJQu5g63kj1F1x2+UeztyJuLWlYzRFi1VnPngkPPhXgErgJ6mrwATAdvgy1?=
 =?us-ascii?Q?xAt8u7kUncbLfiMCKqysqa8g91FaXJlbsJPShLJDnbMRtUsMSxPg0HRPaEPp?=
 =?us-ascii?Q?BzIdDoSjPYgjgeg9pVNs4vDTPya38Z5h54T/KQTxLn857FMhSc7Zt1Ck6of6?=
 =?us-ascii?Q?A225e/coR30kRyU+x76lgwYgzue990gAG75sYZhpzgZyXpPYhLGVbbM0PsKh?=
 =?us-ascii?Q?ehBx5lp5L+QmmNP+NEciorD2BadCxR8/JciDrGZ9r1ukCMelBWxUq+TZ0GzB?=
 =?us-ascii?Q?2Z/2gkXRYR8O7BFU0K+6qVqI0gWNyjyCJr2d5l9kIR7kLlu7XwrlHOqkCt3x?=
 =?us-ascii?Q?1jCrmuiL1QgsoFk6c0s7c03hs2jF4oByPEqDpx+NvC/wwm5XkljY23IgEymP?=
 =?us-ascii?Q?C87O5A2vaAbOm4qAT7ggv1hStDDPOZPVv0vqKl1OmkW/MgVf23Td+QbsKRh/?=
 =?us-ascii?Q?CBjAqFw1PlJg11voAFYeZwDzRgwjxUSeqnqMJHVynlsdRYh2UlsVN7hA5UYr?=
 =?us-ascii?Q?5PptxLt0JevtxfhwRUfoPcDW9m4Y0oeXl4FY9cWoxUkEWk+r70aFt8DVKe0o?=
 =?us-ascii?Q?vPhMp5wj3qnfShVTrQBKHp3tSr5jWG+xpvomyVfaYOQIAXJJxRHhFxN7ygMS?=
 =?us-ascii?Q?3cHQKCtiMdfOJiJLtisa4hGU90QEMcxBaiPY71WzkoeEBT805IgWm4ifSbP3?=
 =?us-ascii?Q?0ADIajeo0ztdQrRh8W8imlmjpsby5kWS6anu4tGU?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6b2a59d-c21d-4771-29b2-08da7c1de0d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:48:19.3890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ilaK2DE5RVswvbG6WzMOQ16CR3qiwWnJ5+YUWoTgCTyG8piL1kM6nCWnmYA4X9BwglDGlLIWKUs2bah+uFbSUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/39] drm/i915: move fdi_funcs to
 display.funcs
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
> Subject: [Intel-gfx] [PATCH 07/39] drm/i915: move fdi_funcs to display.fu=
ncs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
