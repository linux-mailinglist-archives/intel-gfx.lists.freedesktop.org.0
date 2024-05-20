Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86288C983E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 05:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D5610E38D;
	Mon, 20 May 2024 03:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TVG92MBg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74CF410E38D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 03:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716175646; x=1747711646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=R7TkZaMQ1NAZ92frDmqF+pBzFL/G+DXw380QrzsjpBE=;
 b=TVG92MBgiDxEF/4xKvuy+Bl742l3Wln0Qjcaf9EWtjWdv2+l987HRcIw
 py1eHg7vSv1Uq5yCly9iSWqYytd7qnQeUrgM0JMGZj8OrQ8iUay+aQLKg
 G4gwlXmSDqMPjXGsCyPz8bywQpqWnU7A5Uc4+MojYE2EK9uX5tb2zic1V
 W9NXBPlIDktwELglzAYCZ5MMxUHgNnYziy1yBu80qdArRtQPM/e6NtUve
 O1LPoQ4aUidoaRU/BJkScLOisfFXJ9ujZa0VUOdtYtWP6UVh8kaVgFVDe
 lhEMEdNqZcs21EhlyvUm5UDFx94yg+J0gjoYfUZVt1KwsEmZsTd27tns2 g==;
X-CSE-ConnectionGUID: p1qIc26uQmC8Vhizj4BpOw==
X-CSE-MsgGUID: xlPodkEBQauJtLQSPFkYww==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="23426500"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="23426500"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2024 20:27:24 -0700
X-CSE-ConnectionGUID: IVgu1w1BReqiwy/ZT9/Y+A==
X-CSE-MsgGUID: cuHAHel2SXWc7BfRKxP3jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="55616063"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 May 2024 20:27:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 19 May 2024 20:27:23 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 19 May 2024 20:27:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 19 May 2024 20:27:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 19 May 2024 20:27:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YukL77zHDnTJhrUsAZtJmN2cDrp6v0iCZk/tFBCxy0wqQwSgbUpW9Bg3KBvdlDAmpEWuFVWpbpTKzQ2G1pqS6nW0c0ECE8B7lUapFB55n7f5LClL4whSnkl9739fmnI6YMhKIULQmBo5bxgG+JlTw9cFA2r5ZGRlfH91xnPRKTW7ztitBMeL9fW7VR33XDwx89HFCwKhPZJCDKGwzteCTMeeBIqXIH30mgVyIXKN5Lm9q3DAoBdus/nFZjciOwjV94LeKnAd3ZqFStjTGtEO9p/KH2wfgQRJGA4WKNQ0DqtaYrVSLMaU9svaR4Udxu9I94aYbDHyY1KR4K5gJXBWGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c2IZlEKrVgclTo5FXHNnlVTdWHTzsd7hEFQ0ZUYlRmY=;
 b=YuxjTsLsah7/+XvDwP5Ltu4YJP6EP1NiAh3gZXmAOCKJY7RS3zeAsdf/A51VzUyGb7MnFWC8wz80eL5/OgsGueUaAeWTTL3C6MT53rcu9LM9TOPzhUYWcczyQWkXJkDgVTOOmT9KTkzUP+f983qcH5vU+FoksZCwZxpcH8ffvXuXir1OkoRMNdXb0o0Wfe9iKdF5dJiC6hkd0yYN6Lv/wGrUqpZPs7MhBW+MaCZnAI3dUSCFM4aN1Hz5yufiCNALHT/woBmwJZb28wXtI00sAU1em7SUO9kZQUp87ANOTx9Qig69K/rSO8DBi3zSHUU9R4s24Gu+jwl3O7bPwDwrSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB6042.namprd11.prod.outlook.com (2603:10b6:8:61::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.35; Mon, 20 May
 2024 03:27:20 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7587.030; Mon, 20 May 2024
 03:27:20 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: RE: [PATCH v8 4/7] Add refresh rate divider to struct representing AS
 SDP
Thread-Topic: [PATCH v8 4/7] Add refresh rate divider to struct representing
 AS SDP
Thread-Index: AQHaoeeQ/qXxspIy1kavWRORQU5yorGbSSug
Date: Mon, 20 May 2024 03:27:20 +0000
Message-ID: <IA0PR11MB73071300CECCD53BA5B78D56BAE92@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240509075833.1858363-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240509075833.1858363-5-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240509075833.1858363-5-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB6042:EE_
x-ms-office365-filtering-correlation-id: 1b96210d-85e5-4596-2992-08dc787cc1ee
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?VPw+ujBlBsSkKUrt8w1haZGDsf8nKldTbH4Cy+Q3bN7Tr55tivLFxt7UiaDr?=
 =?us-ascii?Q?eUnBBSjh72SR4OfAqhu9liKXPftQUqN2zO5je98Baz3nGgVFKW6g6CgX1LGI?=
 =?us-ascii?Q?DxIij5G1vzXwXNMgug+Pchgv8WX0kVqIv8ZGP9cUvsZYpBb57NpEAtV8xHdK?=
 =?us-ascii?Q?fLR6eA18NcYxxShUKYR8OrOaZm50t7RRbeAQreaB+utjgNd9j1v7oHeDqjgm?=
 =?us-ascii?Q?EojYc7PYr60BR3k4lKRFi38cMRg0lS8IdiUpq7wQCGX9RbS0Yu+OlKi6xPtL?=
 =?us-ascii?Q?qRGMhkd0XxlN3QTZ5x2T0xbSkCaF4b03T0f7X0+53rS9nxc6ctDrSxp09wLe?=
 =?us-ascii?Q?BcEAofOAmquDeb5LSAtSCrXwfAaRMbyOIddlM6/Kbwi1thluC9jQ4bwobyia?=
 =?us-ascii?Q?DmnTMhNUIFbj5dgUV1rKbTHhsIWyf8gpt/HAPGYrFLkN6ZMoqrU0FK/PR8ao?=
 =?us-ascii?Q?c/o5+Hlk9G4rwl3zkRPqOB2VdzdQ1JSpaNtjyxHTTr5yVJnsaw4TLX7/5kSR?=
 =?us-ascii?Q?G+KgPG+54EA8+ff3IVnHp5LQsTp0XqJCJhM3uwHFGtZeaibkKzpTpxQnV1Ex?=
 =?us-ascii?Q?VyiXUnwifyFUgUxTCH1ohdhnqa6jT79ez5dkXh6awZJoqfw8Bk8cVU+y9Kp7?=
 =?us-ascii?Q?Mylsa5lguGJ04PozIoo5+MUPESc6DEAA/f/7vwKir8cqFz5+Bq3tb0K/mXeQ?=
 =?us-ascii?Q?oNUc9lsP37T8w5DcL0yGHM3o+IpfaT6wyKKf0hb7Eac6f48PB8xrA0SFGF+x?=
 =?us-ascii?Q?rwvJWGowX6pKeBc70AsNMpycdBeeXHnnjD0QzUgCtg5cBCEXrozlEKukctno?=
 =?us-ascii?Q?Y1bXy2k1gbtg8qgKmTnWOFP5KWnI6Kc5oYc/ZLA+Fk9ZkRMdBQaUjRE2j8Qj?=
 =?us-ascii?Q?YsQiM4jqkx9obdLNhMMnZUhd0osrFW8KpX+TaIvU+VMvCipaCBbZ2Wf7yxKb?=
 =?us-ascii?Q?PQSaIaaF0ogkY+SxEdmkL6SFaVni086Fw0N/bFhdXecR53IjfIBfdEQ2wpzC?=
 =?us-ascii?Q?f3pj7OZMvSjuQoKo+bbdrBomMGv0bX2qbW5C3RqSBXbfnRoLH9dHdM3xNjnF?=
 =?us-ascii?Q?eEnlu666W2ur1TMDU4GH55N5fd9PWKrvAGHW2oO/OVhJLZe5I532AGs6Rah8?=
 =?us-ascii?Q?qfjukmtXINN3JsrNsPm88gUI0NQTaB+m03AdR5XV5FG0rfPuMfCSrm1u9QSC?=
 =?us-ascii?Q?x5F9eJWluzHhnki2rlYdHPxhiCYQGdLP5xteqVgTXcjm3AT70HN3rZmkQh/B?=
 =?us-ascii?Q?LGrMujwobvqgU1OSAMy34Ne57W4Ar0nmmj6oulI9JtuT7E8MTLS4NuQ55q9l?=
 =?us-ascii?Q?JgEiajV9jzLVE+h7FmWYqv8PxJWJtAOZwi0eMN4z0c6Ktg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KssI9NIG2cg/eiK2YPF+F5z95WpdUk0mUEXdYs0K2lTkgJ85NNXyITBkfL/y?=
 =?us-ascii?Q?IT8u2oGATki3SBM7ZibKtStfboGxXoEsvpy0shoO9B6XFZiOwUiLZ/qQPJCN?=
 =?us-ascii?Q?bXVt9D9IaLxeLtiiPJivtF3KAH5zLFMc02E7N7YN4CUHW0OXI5pTxam4cNGN?=
 =?us-ascii?Q?3mxgyef7MnAKnvKmBHp4CXeGX5RiKLuM+KPsM9S/RHzOp4OO8kXNYC4ceOFC?=
 =?us-ascii?Q?vZbdGFfnIcItf5YJU1Pd/9bYVbFN0xp3pixCaVwe+nTZ82bWSeYBlHO7r2Ma?=
 =?us-ascii?Q?hj4remaVcqL6FJU8Iiiryl7ir+j80mouOG9pCdK+lxoMipZnE97KDy8Qfig+?=
 =?us-ascii?Q?qSb/94i8dLB7wcDW/lPicf9g5guNjRUUjHc8jLQ8/NPAm2qvidaxi33C7SoO?=
 =?us-ascii?Q?487CSEe2tAlsy0wEBGwnXWSnCmvDfEVyBe6fuZtTx4W4xuFDKzmHdbxXX+IX?=
 =?us-ascii?Q?O9ESyOmokD1WrVLZVTYA1Pvdow1daW+DjcXtSayIeTUUK/qbzwzKqQlvHIEa?=
 =?us-ascii?Q?CEY8W0Fp1OSRHHymzTXx3ghaiwKi5+IQuLoRKXYICHZ3HcYZbTNnbqKIqvFg?=
 =?us-ascii?Q?oelENWt2V1wKfmEmsuRhwUllfpTLq3eBfseWLnuLydJMaVMIVW7sNwugQazV?=
 =?us-ascii?Q?qH8UF1mcHIsgjiMt1vcNGxT2drLHDC34HmT5fiva1/cyejORHUSiV2JZRvdq?=
 =?us-ascii?Q?X1kI7jCqtbykjs5v7FOsYlW+KbU8Sow4qjwB5AK6VuwIb5RHoDU6/2dy+QNR?=
 =?us-ascii?Q?VT2cbmnDaIAoIja92m61+RKzOTj2Btf6JlMxGWpKpOiUy+5kFO4Qdo81usC9?=
 =?us-ascii?Q?+klZydwwc1km8GXiuR48QLakdtyLLcn/V/hTmiVykgWX7tgioq7XKJ1N88WG?=
 =?us-ascii?Q?D6OTGAg9APzYSrlFjHvB/mE8nXz6zP9voUix2VW20v5KT/Fdu8bN3AMi9SRn?=
 =?us-ascii?Q?MG+6Kuz1X1fXLBbEKOmtaH6+jW2XI+AN4GN0X+MGDA+XjAMD5PNIfiu7SMOm?=
 =?us-ascii?Q?BoAwBpqXTLaj/+MBikdTXekDaIZFf4S0YSknVfdkB5Ugl7MwhsKZfHh69Trj?=
 =?us-ascii?Q?ZfGqp+NiJInsfNbnxzI8wIKwSq7wwP2NarIAWDhza29aZGbER0XKvy89v4/y?=
 =?us-ascii?Q?oFLvFQXNAJ/vb/WyoaDZbjOCRh2vUjwPyoIO/kkWMOnreG3W37GnjGzsj49e?=
 =?us-ascii?Q?d7bypd58M15CQAOLUZLes+T4JBJPaenNzxjDBg96eQf4cC+n2eC9rcA9a80g?=
 =?us-ascii?Q?wtY/vHqgkYZ1FMfntT4XytdcHrMKmoPJSDQIEAgunH0Y10TLELFtdhlwVd6R?=
 =?us-ascii?Q?KsZwL7msfm2iuImDZDXD63qSJFX+J+yUTubs59xPzcs5NBNiiNMvpXW4h572?=
 =?us-ascii?Q?iyLSYxWoxbYkt4ObI6cuCqC9n32bsT+POX06DdFES27wYbL8ytRZuiGd80hW?=
 =?us-ascii?Q?s2ynKCHoAZECPf3yOjxFNQDb5ijAoCQ8fHlvhZnovcCiRrELCvSyDaQJoreW?=
 =?us-ascii?Q?xAZ/IftpK1xLXTmM9KngeG3kSQlBDzRuNz3AAV9c5Gywyk+8eKkyh3XVIUJ6?=
 =?us-ascii?Q?RjxXLbuMMneVaRiXf2oThlb/LyhlGd+oHmvh4jD6CiQgpycoDZhpUFuL3nPe?=
 =?us-ascii?Q?FTgM8sXt+Kcyu4c0zkiJPvdx7eiptOP4aVm0cpqJDVzH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b96210d-85e5-4596-2992-08dc787cc1ee
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2024 03:27:20.4424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O3Wj6+eVjHrAtGAXD4mBclWVWF72k9ulz10X/gDfxRwbONnaAw0mH7BCrvd7fwT3up0NF0jn49XZ+abJHtR1Qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6042
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Thursday, May 9, 2024 1:29 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>
> Subject: [PATCH v8 4/7] Add refresh rate divider to struct representing A=
S SDP
>=20
> Add target_rr_divider to structure representing AS SDP.
> It is valid only in FAVT mode, sink device ignores the bit in AVT mode.
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  include/drm/display/drm_dp_helper.h | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/include/drm/display/drm_dp_helper.h
> b/include/drm/display/drm_dp_helper.h
> index 8bed890eec2c..393dbf8cf6ab 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -122,6 +122,7 @@ struct drm_dp_as_sdp {
>  	int target_rr;
>  	int duration_incr_ms;
>  	int duration_decr_ms;
> +	bool target_rr_divider;
>  	enum operation_mode mode;
>  };
>=20
> --
> 2.25.1

