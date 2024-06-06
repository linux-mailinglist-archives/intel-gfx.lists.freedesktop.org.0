Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E248FF7D5
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 00:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E34B10E0DC;
	Thu,  6 Jun 2024 22:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jHs5NszO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25B8110E0DC
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 22:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717714441; x=1749250441;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sK37fqJ4rCxjhzyI8VQyGHM96LTgwi8N8d262GilSt8=;
 b=jHs5NszOotg32YOGzAFKPcVTGKyW5IVYfSe8r6Wy35SDw5U3wBdTbP1p
 9bkeKXVbHPE2jZWtiS4IO8KXOAlYDM0+qoUukTc2SrCAr+nRDNCrwdJ1y
 SJVhhllqKnvKPWs/8fKsZiajsKkD46wdE7KOkeUi1/DSMJFSacoU9V1g7
 FNdEAAkjUHpNTeeD6Tk9m7NZrv4IM95ANUO1naDWT/pYPyd+0i0HgCpzj
 QTikIZ+wWpVTBt6TlCWQVJV07Yrs+nIPnP23fys7oaKPy873/n0AX/SWy
 9VwXmblBSaGZT9g0VuqMsxjSno57J9Ne21l/td1UqXOuYDNuFly4h8b88 w==;
X-CSE-ConnectionGUID: ZG1ji0NQR36vjlzrxvvslg==
X-CSE-MsgGUID: LEA6rRnBSK+hkoEjUbsO/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18244411"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18244411"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 15:54:00 -0700
X-CSE-ConnectionGUID: 0dh2wxxhQySV0YpE4hJWGw==
X-CSE-MsgGUID: O1IDjGCzQ1azfUeiad2uWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42700099"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 15:53:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 15:53:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 15:53:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 15:53:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ch4Nquc9OkqnBJ8hUc8850UP8bA8nAKL6fNSA736DRnDXscn3FWJK0IDeojg+3we60XP0gpTuTqx5m4zlaogvz+mmd+GI3/ywIwVTZT44n2Secb0KvokNSMEhl3W637Sq63NPBn2YjwAkRMu/YeKNpesSWsWoRwCxEw5cSOLq8/V9RXz3P0Wi4Z5Fi0qOK1X57UYDRC/cOyiGK1obXfFdOYEFQl0K/o7rla8Jq7a7DjD1ZcNqCY52l8Hx6xr2PDHvCSSvtguLym7nym7h76Qe5VOLOvQYwtXY28jReuzc9Fyu7vT8ytXkvTiokI6Ivot7bYv2SBIAEAUYlnBx6Iz0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIucFU6Ck371d9HjebFuu3N9HLKUOspxU5k07BqpFos=;
 b=Kgy6bbkH0M8gzRUbcANWHfkF4n6SEqbFo7va9LsySLgBv2q7iAIBvMyqbUkxQBQbpRTsJCX20dOwPCJ3jPRB2447tsj+00pyInSGzNp38XZOCvI2uUQFqx/c4ZwZdXiQz2GUndY5RCJk8YJLXN/rECwmVSi53RaEcKCijls6hRA5aT8yQM6h/HN9Y22vuUPsuhnvf+ZTXxWht3jt5oa5AP4Dx1pSKMFEW+0aYxxbOQJYDLVc5JJzTS/7AfU5/5ZsQAQP7BLhfSFkEcBPyOl4N5LIISMNv2k5vfKnRVIxJMSQfZRPE6nbC/yk7VzJ0XP0DDaYbkUre8OgjrIynS9zaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA1PR11MB7698.namprd11.prod.outlook.com (2603:10b6:806:332::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.25; Thu, 6 Jun
 2024 22:53:56 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b7af:93f:f33c:20e0]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::b7af:93f:f33c:20e0%7]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 22:53:56 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Sousa, Gustavo"
 <gustavo.sousa@intel.com>, "Vivekanandan, Balasubramani"
 <balasubramani.vivekanandan@intel.com>
Subject: RE: [PATCH] drm/i915/display/bmg: Add platform descriptor
Thread-Topic: [PATCH] drm/i915/display/bmg: Add platform descriptor
Thread-Index: AQHatodsjhV7JnoWdUmJDzAnbBi9NLG7Wwpw
Date: Thu, 6 Jun 2024 22:53:56 +0000
Message-ID: <DM4PR11MB5971D226ED147FE641BA3CA087FA2@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20240604140021.1357502-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240604140021.1357502-1-balasubramani.vivekanandan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA1PR11MB7698:EE_
x-ms-office365-filtering-correlation-id: b9cc9a24-709e-4bf5-1d38-08dc867b8bdb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?xpsVvpukRR40maPd6VNrL7U6cNxPpri5HRNxFkAsSXsCgYohT36kMb7QvA8X?=
 =?us-ascii?Q?YPrY2Kx4ZEMhXaX8dwm9kr7S/8rdt2FTd06eNc/RxjxbQ2rhq9h7yWKbYKrj?=
 =?us-ascii?Q?wBXD2TkERJwnSfio4wlUfyGSpRTcRGd0sCct0LvETU6NWitzZDpR55fq3tjT?=
 =?us-ascii?Q?2whZETdvtRxMGffyLsWssYjU2qaazqtqvUK41Cne9Bsg3ZWf6tlfe0Zjo2Hx?=
 =?us-ascii?Q?s83FlF6w+ol8LAx2O+rs3q5CZDUeZ936qal2+bbX8nDf/+7WIDUBmmFazF8C?=
 =?us-ascii?Q?xOpYknaZbjZ+MZbgwsV/vVnc53gXLqRI8rnaGMT/u4k2FVIMh9euRpR6hWQV?=
 =?us-ascii?Q?IW/nbuS/i+e6P7psDfvu4dPIFySBHOZSFXjBYtV3PDSO7t3IM++dLDFo2xxv?=
 =?us-ascii?Q?EJ7a5Y7p98HRE9gSgAe1Xx1CEpLWtKknqPU+FQvfGqTokJtPzzKRVhfQ947k?=
 =?us-ascii?Q?88YQH5XHgK0+kxOS7AaSdSmkrCP8NndVxKuJbmv7awHod1bf10SBgklufAc5?=
 =?us-ascii?Q?FAJoKfmOdFBKYuFAt7dfBGqBhU46Ndy3p7uUrW/yUcZ+qSSjSIJDKRuFipwx?=
 =?us-ascii?Q?8YEEapcVnbwr0QtOcgNy1vSTO6OKyK1OsE3D/+VfBXFHLXFJESV519iT1yoh?=
 =?us-ascii?Q?ztCT6JmcN46h2X3iPN/r8tmrwsLwIK/R7LufxJWYHFG8AMWinWO4UfmQqD+B?=
 =?us-ascii?Q?oPJ09l3qxq0YzUpjYyQnD365TJmjd4KKaTepX282te5W7qBkuNmhANOYkgPE?=
 =?us-ascii?Q?GGhgEfStVRsucicTwrmvJA8b4mHLWFlInAfPW/S0S6G+DnG3dDZJQu4u1Lm3?=
 =?us-ascii?Q?Yfwtb11Ow66wkMvOqJstrZ22d8TreRHqkQmJ5P7CZtrEuj9JyPjdmJvZgzi5?=
 =?us-ascii?Q?8/kf9LM+KO0pXCM+2GAs+m/D/HCoQ0eaNQALX27vMSdj2m/fYQeBcRzenGfy?=
 =?us-ascii?Q?KEvP1dxVF2+QOMrwdD936IfBc8gvdv3MggnfOyZYeLtYOoq6uR1XD573Htnu?=
 =?us-ascii?Q?dzKk93t42+OHVD+VJ0TWkH/ePkd4S1Aru0Sy3oCZQippxSO4NP/XK433JSxU?=
 =?us-ascii?Q?IyZ8Z4esM/Go1wVjlnAWe1+rrjCsDc0lT/oekeQG5eX07LFoJthb8mEe6s3a?=
 =?us-ascii?Q?AjWMgVt80UcF2uqUDuoPvq5ozLxmwhugJUKkutC7yNOOCEIoCaXMn7QlJ7my?=
 =?us-ascii?Q?lhGa9HjEmLpKbvGqrf5xpUXxGigeS4hQTfeBwYD8yKiovek6pFFIRgn7stqG?=
 =?us-ascii?Q?mwLil7rIOjsfJTeE3Y2UTdeva1j63Z2mAKQ9Le2ljuvsU2PeXFzI0YjhRsTJ?=
 =?us-ascii?Q?XAFCnfkbAJb0dCIYzIZuTqffE8F7A9BytUpiX+zeUbrjNAZQu49vdcEwYP0R?=
 =?us-ascii?Q?dQE3pdY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?koHXXo05hDyLVn1b4dsOQZ7ndPIA6n2h167KBPd25lKO5ESKqfX4zVvx92uG?=
 =?us-ascii?Q?MlkghdBM7mbIj5bI82hWWZlkKWWNbhhaaHoE8dMZd64auGzLUiXrf7i8bNjk?=
 =?us-ascii?Q?M4mN05MHkWCYOupLEUHwg9ajIOg1XyodpC/OIAiJH7aMGIFY0nfusxcEwTVi?=
 =?us-ascii?Q?J0pARthwxb8vOFW60DJFvpk2Pc/iF7fsubFSbFBXWmaavCSgwx4AXIDxHS+r?=
 =?us-ascii?Q?Adz5cfEGZl1bMHOhc0b9X7U9bcB71bUF7LtHkziB4/S9Z7iIdm7n7qRhmJpS?=
 =?us-ascii?Q?bOTlb80/p4i7hnxydLulOy43vN2Quz9xza3FrgDJh3sz8QMtFLa7bNbt1cPm?=
 =?us-ascii?Q?PbLWLvStl4XGEby5z6IF9nNJ/atf54fwBDTnLNppxjFyV4o3DCSFcChjMA40?=
 =?us-ascii?Q?dVhWxt46mjtNb8A8/b8KMuH2/2svlSuOVC+VKI/iNxvkXboXreQ9uQ2BIIcy?=
 =?us-ascii?Q?tsGowWNLX8yinERikEyCWSx1PNo42lgdb78Ka6pGAPNkabZAgpPse5I6mrzQ?=
 =?us-ascii?Q?mMT+EoBuxPyaif67fnoLN0VSkkV1wkNWyYscooHnDYXQf5mNqXdq8uc7PTsU?=
 =?us-ascii?Q?zGPH/iKhEEc9V71+CtEYG3UwedPQyR+db7aW1bw5fwLlIpYBCmMOZhri+iHW?=
 =?us-ascii?Q?8ayOMnzFA3T8recd7qN46fEww+nRSXYqS/r8NuOrdRlQCFjj1amCXZKJSYAI?=
 =?us-ascii?Q?Mhw7nK9/lpT7gjhZ09Ci70pyViCIvUDtDV/MrE8aDopDyzAHE0p75B4A4ifs?=
 =?us-ascii?Q?Tbr6gQQMpvObDPef/gnucT5Zo0b/YyW9H96Ze7BsuNK0Q+CvmBh9eeBzhOzM?=
 =?us-ascii?Q?xrhuid3cPzNR/Plqihnu+rre6sF+QDt6hNUk1IgvuXOE+I7p0JiqdWKuqZ7l?=
 =?us-ascii?Q?xIWlkxfz1qScDPvCCcK9wHe4sR6s1QxSVl0YCDp53KsqMRTgh3S2eVXGm3ww?=
 =?us-ascii?Q?A+33dFw4u9B9vhcY94yLTeuxmecy3NHt4nU56Jw4Xu/tbtYblmwXOBNrZza2?=
 =?us-ascii?Q?mk1CjAZWHMRQNmPlKYq56AYpxDZatrQOqBTTriLuSxgWmE5b7TEwSgMoXzBQ?=
 =?us-ascii?Q?NwVS7YpmZBin2M/FozDsFff6038GCKpC7ITOPXesQ5Jy4SOPG0jOJz3teGms?=
 =?us-ascii?Q?1x74pl7btNrJWlkf0/+Swo7uIumQCuEdJrO9EeBXLOWRAUifG4d215GS40yS?=
 =?us-ascii?Q?80yF4hyQ8/4eUyGFY86IIzJyZ/Vc0oEK/1fehjHXbP2ahrj3cTnRhqs7hGLb?=
 =?us-ascii?Q?/VkWUnbYSlBGe6kBALbivsvW5JXT/DfVt9kqCTUc5oIg4zbo40+iTxVhiJc7?=
 =?us-ascii?Q?UaYoHhRFhzm+BV7pFXPSuyc4DlbfKv48hr7k2SpE1zpYreMzhZ2e+d9hp8fL?=
 =?us-ascii?Q?RkAxDnJrwrY4Gy4YzMTQe3WXLn3hUpJPUAnkU5ZE0nX7MzZeBBN9u3R0ea2Y?=
 =?us-ascii?Q?KlWL0HpSen4RNfxtTJ+TXXB0E/qxw0nKmw3x4XJ+lIqcb09iKuFOe40Mxgob?=
 =?us-ascii?Q?ZC5uhZeaZGcMU6Nv/mqKUDx4vnjjqZKVzO305m7xKLt2g+3geadr8lsAESsg?=
 =?us-ascii?Q?HSpUhJRo3DpBRPWC9toD7PkmaRbc3b3P8CdCI9xw8CZJ13kuGhIdrskc9jwc?=
 =?us-ascii?Q?6w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9cc9a24-709e-4bf5-1d38-08dc867b8bdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 22:53:56.5066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5PxKb2P+Mbm4Fwdzrw4NPq3Vz+MmTfgdsXZESTKYTV47aSL4whxbs3Ph9iXg/QWCeDKHCD8NIuRF9LqI2nnQ90SqFWp0q5q+Gi1kRIkk2ek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7698
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

LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Balasubramani Vivekanandan
> Sent: Tuesday, June 4, 2024 7:00 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Jani Nikula <jani.nikula@linux.intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: [PATCH] drm/i915/display/bmg: Add platform descriptor
>=20
> Platform descriptor defined and PCI IDs added for Battlemage.
>=20
> Signed-off-by: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
>  include/drm/intel/i915_pciids.h                     | 8 ++++++++
>  3 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b35422da7f6c..dd7dce4b0e7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1110,6 +1110,10 @@ static const struct platform_desc lnl_desc =3D {
>  	PLATFORM(LUNARLAKE),
>  };
>=20
> +static const struct platform_desc bmg_desc =3D {
> +	PLATFORM(BATTLEMAGE),
> +};
> +
>  __diag_pop();
>=20
>  /*
> @@ -1178,6 +1182,7 @@ static const struct {
>  	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
>  	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
>  	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
> +	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
>  };
>=20
>  static const struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e1d9947394dc..44cda6c3e4d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -68,6 +68,8 @@ enum intel_display_platform {
>  	INTEL_DISPLAY_METEORLAKE,
>  	/* Display ver 20 (based on GMD ID) */
>  	INTEL_DISPLAY_LUNARLAKE,
> +	/* Display ver 14.1 (based on GMD ID) */
> +	INTEL_DISPLAY_BATTLEMAGE,
>  };
>=20
>  enum intel_display_subplatform {
> diff --git a/include/drm/intel/i915_pciids.h b/include/drm/intel/i915_pci=
ids.h
> index 7ae7ee11ef38..b21374f76df2 100644
> --- a/include/drm/intel/i915_pciids.h
> +++ b/include/drm/intel/i915_pciids.h
> @@ -789,4 +789,12 @@
>  	MACRO__(0x64A0, ## __VA_ARGS__), \
>  	MACRO__(0x64B0, ## __VA_ARGS__)
>=20
> +/* BMG */
> +#define INTEL_BMG_IDS(MACRO__, ...) \
> +	MACRO__(0xE202, ## __VA_ARGS__), \
> +	MACRO__(0xE20B, ## __VA_ARGS__), \
> +	MACRO__(0xE20C, ## __VA_ARGS__), \
> +	MACRO__(0xE20D, ## __VA_ARGS__), \
> +	MACRO__(0xE212, ## __VA_ARGS__)
> +
>  #endif /* _I915_PCIIDS_H */
> --
> 2.25.1

