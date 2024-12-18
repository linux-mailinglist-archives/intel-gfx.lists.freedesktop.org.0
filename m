Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C14779F6328
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 11:34:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC3AC10EB50;
	Wed, 18 Dec 2024 10:34:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H5kaV9G9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A5B210E268;
 Wed, 18 Dec 2024 10:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734518066; x=1766054066;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=54CcnvYu7+Wedm3F8keFsmbNHLPE/ywswmrRqbGr7Ms=;
 b=H5kaV9G9p2/3wrquUfjJEhKJyZzUD13bW9lvcAurBSQCS3jp1olXj5as
 2foDlpxrz7vVVw52ZuYvKksg72lTbCDpB1jNuFOb7MUK0b8X5OYGxCA50
 ygbOJsFobaWBTLKBFgyRi8KZCDk3ZAyt5WGv+e/54on2z8di6l7J28Uo9
 lUQa7izENopgasHt2THbmJ5kR+zG8QIU7VuaXgM0CG0O/CZir0DfsMxIc
 5jQILD6Wwp+pNok01dVqOQiU4KwDCy9bhEElCMz3FWTplDwOt5TIcaEkV
 nrxCbG9xwzSQGxzIoMPdh3FqARygaKpZDb2cLlaZE8QOhZQU/PuWyxvtU g==;
X-CSE-ConnectionGUID: cHlDzJJQRT2nNL5GsWUUtQ==
X-CSE-MsgGUID: A+qI5mAkTXKJR6S6dflbXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11289"; a="38923585"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="38923585"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 02:34:26 -0800
X-CSE-ConnectionGUID: YNHYXk5SSFayI8YzNU52EA==
X-CSE-MsgGUID: KvjsHP6TQCOWAnM9gDsVhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="98399740"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 02:34:26 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 02:34:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 02:34:25 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 02:34:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mPfK/LSF1R8b5aNmX4uCRcgGSyN2ONG7KAt20kBQWMMvRVIQTY4BimnCMIDXNd6ExYzemi7HaFCpD39+S2QuWEoGbvbrAs2TyOidHMo1tnnQFHvyNK0gniCtkUqRxrPSznfotydAVeQEr7RTo+sIMS78XkxHluf0FTfYxu1ts+AaqAPpzfTuX2ZC499n/OhpCRv93WslGFLRosfVm9MhOwFG/gwGnJnqg+r6x8A3YRtzvCCDZxuoXRJ5ybG8BC7MZ6mBwON9m5pxU8E6gs08F5eQ37o8bkKNQ3UZUdZ6NEduo+/JQQJa9ivrrMlIPJ+2mOP5MRL0tqBlGBgrJWwLRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nS/vIzpQkKIfPSe8KNafVPKmJ3TCzK/gsA/zMfwUXYY=;
 b=ctGIWy2MHlHbGPa+Hk1J6DleOvK95drIwPZ7CE+H6FAysFRAm+c2bgnE5po9gCIrg97A7VMUs/v8jrVkedyaktAuH4QiuPvJPcaekKLPRB5W0oD9QtsW4sFiXqXCFiGriBsgApEB0ujqrobkARGIn1gkAJfzKZ304R5u9ihVqL7TnPuf2WryMAyrET+Tk3d8405VTMzwG/0TkVpDXvUQxByqA6qv7JnW1k0Q6JV7ueL/VRQ7bIsPcb3D1Tu+7svOgmVn+451nVWG/uoKArlVcXBpgf05MmmaZMuEVnWGIbhtDY/uZ0KGoCx5OQeaNFq8qzbPxt4f/wV0k4jTd5su6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 CY8PR11MB7745.namprd11.prod.outlook.com (2603:10b6:930:90::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8251.22; Wed, 18 Dec 2024 10:34:23 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%6]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 10:34:23 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Topic: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Index: AQHbShFdO5OZ9WbjEE+PeNIHyHISKbLd7iKAgA3hSLA=
Date: Wed, 18 Dec 2024 10:34:23 +0000
Message-ID: <DS7PR11MB599032AFB7CCED551CB979B2F9052@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20241209074702.3975702-1-animesh.manna@intel.com>
 <SN7PR11MB6750190413E1B10E267487D4E33C2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750190413E1B10E267487D4E33C2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|CY8PR11MB7745:EE_
x-ms-office365-filtering-correlation-id: aaaaa4a1-722d-4380-a5ca-08dd1f4f89df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/1L1iS5vsAN+JzHgrmEW0m7JVLHongiJWVMge52cwrJmP/JaXY6wl+LwFTt5?=
 =?us-ascii?Q?rzEs+YCyUKE6gIsCVHLKLWeGVyD6yNx7rpQoJoEbkrCeGZ0yhc1dVCqf+zJQ?=
 =?us-ascii?Q?TCY4Bei8xthD6NxLndJdWNMjoPTI2JpKzp7JKh1bmufX8jrXoulXQzMhXaJF?=
 =?us-ascii?Q?sLcQIdThE0QDbAoUdRccuA4QSN+p6y3DpS2BbtGz+Na4PhjPlk4+qEIDkAzs?=
 =?us-ascii?Q?tIFuxTEpGAmohC3dOobef6vrH6i8H/Awz6O3myQRdcG/SN2vaMMC/wIQU9/R?=
 =?us-ascii?Q?hc2Q6TmL29tKxOkTXn5h1QmFN1kKfuidtjyLPmRpR0UAHeq2VMaIsY2jveLH?=
 =?us-ascii?Q?uvMM+yHbCwdez4Q2wnUtTWvoZWLvD1NSgdbILyoD0jnHf79EXsannbSkXqgb?=
 =?us-ascii?Q?pfydLddicHQfPC4kGMfvTGfX5yAYPVo98QYd9Whxy4QmjvxpoNEEGQqDQx3Z?=
 =?us-ascii?Q?HmRqUUsvjtyINbS7n6Edjp9vnEexJZSCGDa9FUyMr1OXkDLJCcsfsjyaskIA?=
 =?us-ascii?Q?tkjwAaVdAl8XMf8YK5gDRM/vRqedt+8aAyD4qQw70nBXux8sM0lXw/f1vewd?=
 =?us-ascii?Q?8cpOh/Rb9OrLF4sePit5BMDiv4Abm0t692s55RJr7j/rl+fDYB8u0xOqVZY6?=
 =?us-ascii?Q?PMkfEVoHWj07++5ALEiDpouB5zXYJghgSmXXI1/fus1FI9xb6x2HdJGkvYct?=
 =?us-ascii?Q?NrNeRoL1ePuNh9+jWDaUyewuxRvgB3+WsDZC+xQWSwxLRtp1SJA+CHHe8oDi?=
 =?us-ascii?Q?zLoltN0ZnoS3elavO2/vsWk8VtAMOcz9sxD5Qm4J56+EqBlmJx/RqbLK1GvV?=
 =?us-ascii?Q?ZnqvdPaH7dSAvxhIcWmFMzEX8kHkRYtn1ljHZ1j6G3jgB/uv8viv4CB2fLm4?=
 =?us-ascii?Q?GUF3nxmLm3FQGKyJ/+ulV6MlRHf09197ca0CBI8iajPw6Gr+C/pR7XNkIXY5?=
 =?us-ascii?Q?Nkjfg34zs0SHQFpjHLwZdTsN6WiM4B1laMjDvu3R0x9XzyymKVgSHqNzk94A?=
 =?us-ascii?Q?bx8gwAj4/AaMNNlyMtD/tuFB6Kd64uBxR/vzKXztUU3ZmeDMh44yYj3xlcJA?=
 =?us-ascii?Q?H+XaVgNJWphJqWOyxp9bnbK9+4n7iSVtfEZoV3MjK7kgjxIE8ipWZuAJJUyw?=
 =?us-ascii?Q?LITLAdgQ/2Dh3joknuh79nBjGJbt7pipAN+eaM17GuxnlK13NhUZx+g5URcW?=
 =?us-ascii?Q?XHBD3djWWQ8AkK263k7T5EVJEcWTbjfViRT7jfkWjJEJCRRj0B2YfEwWV/mN?=
 =?us-ascii?Q?QiUDOIZzSYzHDi9SU9OwaD/GM5aJpXNwxqnpGY1hyS2mLSqdFHfwdAJ9tPkW?=
 =?us-ascii?Q?HOK6Jikuz89LGpvJg6pTEGADk5m8jxbqYMM+kUXe/KPOobcWkYDn39F5sjG7?=
 =?us-ascii?Q?+VS+BpXdZ14WwoYdBxgWRY6AaOrChVolixUzQpIjrMDOTRXMHWBGS4abN+wv?=
 =?us-ascii?Q?B6lJXbkU5J59UJeFqcPGinxG/E5Q5Nvu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uVjMEkoEhd0+1HASaOInfo5sgrdzoEE4wE6oWgjwbltwb5qrDJk+gFZ2YdCR?=
 =?us-ascii?Q?g0Ia2o4TsriZJCGn/gehCOY6ZXUIL5lOn/R4Zch/N6/ibuZheiAkONimxQDF?=
 =?us-ascii?Q?zDvgZv+nACSbsN3deOYqUWR91BotrxyT+P0Lpv99SBP5xhwS6tY9VDpU2WJc?=
 =?us-ascii?Q?WomtwXz6zgF/MxI5/k3W/w+b9vpdom+S8Y9xZzAwSRS+bOkYCn7k09GTAQXY?=
 =?us-ascii?Q?k6cvlAD1vd7kW8xgSDopk72nKJPqE/HS0o+RQV658TTUAmTIzfFiuIBp5wTY?=
 =?us-ascii?Q?tGZh+RZMGUQ2ZhmqtoUJu+kwWg8YyLMEwuwMDo+BpAYIrBQltAN0xQerHexY?=
 =?us-ascii?Q?QRE2sdbOf+f8ZiejH/eUuB6JGmAseTegkXTg6ZaOUTpj9JnQpBG8HTvh2WYV?=
 =?us-ascii?Q?LYOliBofMZ7P7WaftNxcUTUnOGs/nF4w8yfM7kreilSg2z8k1CTJS4+7oCFl?=
 =?us-ascii?Q?aIAFUV/ehBccMIyLhVgNdV0andsoINXHeC5ovYmO6K2705i6fifaCMICeWZr?=
 =?us-ascii?Q?9+a9+WN6PnJZatPq74KO78BcBDHtQxfadj1exWHTqJR5JK1IJRonulIkixUo?=
 =?us-ascii?Q?2mR8GGMGDXtHjDu8lnfouRFd00Bs0uxcA0J3jG8L7qv/QZrcpIoepkXcFpjB?=
 =?us-ascii?Q?wAOrTO/gB2hqNP10yEZjb1HGiE2znEvCId/IuvSAzUvvgeZjDg/Yl674Fy3Y?=
 =?us-ascii?Q?TNRDq9fWPVteJAOyDPtx7NtAeuxMzhH080aI4bup3S0iLndHuN9o7Y/IUyux?=
 =?us-ascii?Q?/eElriMU07//8QlY7s/yVIwDepfK+k3RqZjZ5vDlKTGDpkZNzStG5U/Waidp?=
 =?us-ascii?Q?LjGVADS3Y8B8wN/HqjKItmiRvzpINsBbwElHFzeSOek9UWIxKwQRMQvqivZd?=
 =?us-ascii?Q?2kEnZTs8PibASgoWJi9N5tPYDvzxgMq+IkpU34DTe1/U09mjr1pPNsSMvTGG?=
 =?us-ascii?Q?uF0OPcKz+JcGJfMJESgj/hF1tDCEJUN3I2GdcGsF2meqoVGSx66XA6T4LOZy?=
 =?us-ascii?Q?t683Z+yD04XNaZuLAPR+ydHfJAhpj0ZqxlxcbEIxlDuHRXRUsR7a0KrBgbYh?=
 =?us-ascii?Q?KdAZ9VQ4dB1fSMqKlzuQ3YlLaLKdxwFtB8OoC9EqAmlnIahEkTmRj2fC0BW7?=
 =?us-ascii?Q?EgjUrpG9HM4Bg7vWCRqaTDHlJTvqDCX7iQWdW/8P83cWr93rvDCKv+ZHxfZB?=
 =?us-ascii?Q?LTW/8J28MUNSl3RfZf764OG6+kmu9dZofZdVVQEdPBNVqYevf0CWSx0HVBgn?=
 =?us-ascii?Q?4DeHHFwi98U0qqY4xD/YCmxOHIyteHo/VWDTg76wfPNkz7QsPgXOznj43kg0?=
 =?us-ascii?Q?ZwbRJ9MPeTWZVVUQ8jQw/XFHMPSPI4aPkDephTMK3SkYP8pHPz3vZUjaqJSG?=
 =?us-ascii?Q?3Pap2ftWAuT2UV8qCigCBpmSu6Fcd8jcPd+DZIOjoMIcjWzbpv/fgfdZsdqr?=
 =?us-ascii?Q?nC90oOcMW+Zo6Ly4BkG6BLd5rWFyNyCcjVMbmk744L+0g6YR9Wxwlwof/ak+?=
 =?us-ascii?Q?CWcvOj62LGec9VIOptnY3pv4tRfyvFbN5O7Y9cdz0/7tBbchl7YgZX8M2hmo?=
 =?us-ascii?Q?XpLNPkx3ng8CUiKBkqz6Y8ILw5Y4/Pjc3TSJabcy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aaaaa4a1-722d-4380-a5ca-08dd1f4f89df
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 10:34:23.2450 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rVSynDAwrAtXDQeOpMU5MjRsFiyqzp6UqmJscm4zuUwpHCHZK7oti3JtH1kkF804GuYQGo4krzujhSMCpqw1vA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7745
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
> Sent: Monday, December 9, 2024 7:19 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
> PKG_C_LATENCY
>=20
>=20
>=20
> > -----Original Message-----
> > From: Manna, Animesh <animesh.manna@intel.com>
> > Sent: Monday, December 9, 2024 1:17 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>
> > Subject: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
> > PKG_C_LATENCY
> >
> > The PKG_C_LATENCY Added Wake Time field is not working.
> > When added wake time is needed, such as for flip queue DSB execution,
> > increase the PKG_C_LATENCY Pkg C Latency field by the added wake time.
>=20
> No need to mention the issue when It comes to WA only what the patch is
> doing the Rest of the info is present in the WA

Thanks for review.
Is it generalized rule? Not sure if want to add the background/workaround d=
etails what is the issue.

>=20
> >
> > WA: 22020432604
>=20
> This needs to come just above the CC with no new line in between CC and
> WA no.

Is it generalized rule? Good to know if captured somewhere, I see from git =
log many are not following the above.
=20
>=20
> >
> > v1: Initial version.
> > v2: Rebase and cosmetic changes.
> >
> > Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index d93f6786db0e..f6f7205e06eb 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2894,6 +2894,12 @@ intel_program_dpkgc_latency(struct
> > intel_atomic_state *state)
> >  			display->sagv.block_time_us;
> >  	}
> >
> > +	/* Wa_22020432604 */
> > +	if (DISPLAY_VER(i915) =3D=3D 30) {
> > +		latency +=3D added_wake_time;
>=20
> This wouldn't be the correct place to place it in since this would change=
 the
> value in case the latency fetched is 0 From skl_watermark_max_latency and
> we actually want to write all 1's and want to disable the deep pkgc The b=
est
> place would be right after fetching  max_latency  so it plays nice with t=
he
> other WA and makes sure that pkgc latency Is a multiple of max line time
> when latency is not 0 So something like
>=20
> If (display_ver && !latency)
> 	latency +=3D added_wake_time;

Got your point, Will take care in next version.

>=20
> this may also require you to move around where added_wake_time is
> assigned so that's a different patch
>=20
>=20
> > +		added_wake_time =3D 0;
>=20
> Also lets not re assign 0 to added wake time variable let it just be writ=
ten its
> not going to be used anyways and wil Not have any extra writes from our
> side

If added_wake_time is adjusted to pkgc latency then writing the same in reg=
ister is not logically correct atleast from code readability POV, so better=
 to reset to zero.

Regards,
Animesh

>=20
> Regards,
> Suraj Kandpal
>=20
> > +	}
>=20
>=20
> > +
> >  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> > LNL_PKG_C_LATENCY_MASK;
> >  	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
> >  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> > added_wake_time);
> > --
> > 2.29.0

