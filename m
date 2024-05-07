Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 115538BD9AA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2024 05:20:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E76C10E1EE;
	Tue,  7 May 2024 03:20:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iKD3Zava";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401A010E1EE
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2024 03:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715052002; x=1746588002;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uiLrEoINZRi68MpDI3ad/KASI6kNTf7hkmxv2UvUAW8=;
 b=iKD3ZavacQ+K4YTBRLv7U847pXg3dpAXzDJHNtjFqnrwa921sw9hGnd4
 xV/CkUNDx8Io9f8v8EVDgzl65uTQ68BOHVTD1oPAOkzo5LFyWJ8f2xjUQ
 17Tn2lwlEqIzb4iw4lmZdV3UzVAdM9zFESEFy3wod9wG0ZSH+Cuch339b
 z8y1DzCpd8DfZ7SxOBrIWzmizmqC4qW4fdNICFePAlv+rupuQ2x5Kdz1f
 yObQ4xEBNJq4l4bhu0TKplqoXpvsgDgSrTU01HGAjNdG8w/Fi94OYr4BC
 /GF0/NR1sLF/0N5BlkRgaZpTk1Xz0uxfZwo5nkCIPSxHOl/Uo11nZrC3H w==;
X-CSE-ConnectionGUID: 04Yr4HtfTQCB6aoM3AJsrQ==
X-CSE-MsgGUID: N4ivqluNSSyvfXEfSiCCjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="10673780"
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="10673780"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 20:20:01 -0700
X-CSE-ConnectionGUID: y+0egDY7RX6OM1xzV7XNkw==
X-CSE-MsgGUID: 1f41OTukTAOWvFplM9N2cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,260,1708416000"; d="scan'208";a="28769459"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 20:20:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 20:20:00 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 20:19:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 20:19:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 20:19:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpj7lBqEEICivwC+BIa7pv/JPKpymRJy5oFWX3OHZn8F+kyD36DPiaxgJdIRtCvKRfMOYo2SUyCtVfmW/s0uFQtQdZIoxYA3ob+kByPYLQ6SFNvFT1muwdkkDyD3LsfT3+q7YiSqTD9TTLFB2aQanHGhVrtdq2dzZqo8lTPfgzNpCIT31sXTXJilrKWeaV2tNkULMyyl5Rx1XIQngYFibpRUx5gR8L+/0PAdy0TIyjwTkFHfbLL7OycmdDsmhnt1gYO6ldUE2FvV/jPJVEPdEChP1kPdIge3M/MFJdPbz2jLCydxCY7CCqZpHXx2aVMY67cQhMj2l7XewakhBl2rDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZNlJ1kZ9dvp7MvBFXRAip1U8joFTYzmkGRu4/erWGxo=;
 b=MJKMUmfngPzDED2cmiaDFy13lQHC4CkjSgv1pj1kH4b9qwEFUzb42A+6Vf+yVxM5/Z0Hn9jvj7/bkwIXMX+ve89ITfLF7YEGJeDxyxmAMtO+RsS6YEjTH2G+ocMir4OomSRrQMBd32bVEbETKWrrkmUlDrRWYHHrPXTW2/8UOxJIbtbWSyfZ2VKWzZnqiI8T14oGONnS+IkQNlT1hT+9nMrn8E6SmkA8nakAX1ti5eQZqYJV48h7/5F0H0XawLOhD+/hDUpV/liceuN4ngQbhCetLyDUxkk2FJfw8fGFp9ohD/vh5KUQDg/EcgRbmRtnGgRCeO3/CrmWG+sutvuvww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3258.namprd11.prod.outlook.com (2603:10b6:5:e::27) by
 IA1PR11MB6393.namprd11.prod.outlook.com (2603:10b6:208:3ae::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7544.41; Tue, 7 May 2024 03:19:56 +0000
Received: from DM6PR11MB3258.namprd11.prod.outlook.com
 ([fe80::f3b8:3e9:6f2d:6bca]) by DM6PR11MB3258.namprd11.prod.outlook.com
 ([fe80::f3b8:3e9:6f2d:6bca%6]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 03:19:56 +0000
From: "Kumar, Naveen1" <naveen1.kumar@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>, "Kulkarni, Vandita"
 <vandita.kulkarni@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>
Subject: RE: [PATCH] drm/i915/display: Introduce Display Metrics info
Thread-Topic: [PATCH] drm/i915/display: Introduce Display Metrics info
Thread-Index: AQHah6XSh20iT+T6BkmwGFh0x0WpkrGKJXHwgAB/JICAAKONsA==
Date: Tue, 7 May 2024 03:19:56 +0000
Message-ID: <DM6PR11MB3258FD6237F6B92ABC227D73A7E42@DM6PR11MB3258.namprd11.prod.outlook.com>
References: <20240405220832.689229-1-rodrigo.vivi@intel.com>
 <DM6PR11MB32586294016CD6DD51F1D730A71C2@DM6PR11MB3258.namprd11.prod.outlook.com>
 <ZjkRx4EymaPTh1CZ@intel.com>
In-Reply-To: <ZjkRx4EymaPTh1CZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3258:EE_|IA1PR11MB6393:EE_
x-ms-office365-filtering-correlation-id: a2411a81-4184-4796-2494-08dc6e449218
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?byxVY89jIp3AS2Gm12JlpUjsJBbArJlrRWFKC3f3Vtb7+Aehv2PpomR8rKWF?=
 =?us-ascii?Q?gcIiMm7vjd/UqEOAB9Y026iWHvYNdBpWXRzvA7m4A3h691iYhroMgoqRCc/B?=
 =?us-ascii?Q?TohhW8In88j27uPwTvNCtCRdGCkJHwWgbNfh5JedhKt8n+swKbNgQDy1R+2N?=
 =?us-ascii?Q?p5wsmuU7AxPLt7/SAYeQa1mUdDtxuEMED4jUeXzSnmSzXKO4wnCYLHoZ3PoI?=
 =?us-ascii?Q?BwgrUkQIVHXIL+WB/I5GJCCiTZhoiDy6feGLpDVR+uxC2smRi13M20iT3xtL?=
 =?us-ascii?Q?GQ0Lzrvr1jBS6VeAe3AGYD6vrwrT+w9e/3UzS6ReGSfaQbnUNb37+BJT2Q4x?=
 =?us-ascii?Q?tu709aX/lB5ypKyDkPfJHbJR9gACY9kz6fZXhkk1of7dcOCSadRQP+FfS6qj?=
 =?us-ascii?Q?n4bajYr8N+LsBSSF3/Qkyx/9d8xKY6eoIirBaiktLYhCFLdJgzA7mSApZt1v?=
 =?us-ascii?Q?RJzz/azhsA54yqWfMKr96tWV1yrZifn1CUzUNPuWU2DT6qHI6+1ut3NVkMXR?=
 =?us-ascii?Q?IyT/0TpfQxLygRQohzUffSY8IhEpfCwFfJqqU4sUnSuGQ+7jJou+AodLNV2G?=
 =?us-ascii?Q?j4Y7kw8R6NZGk5uuA2VKSxHEYv1zP24TK0aJI9FCqXJssip4aLuqU1fBK52b?=
 =?us-ascii?Q?yWPmv1VkcaVx/R7eKV2GfU04kCuF1In0Oh2Hg34JjoVcWgQujxaWyflY9Ezd?=
 =?us-ascii?Q?a4M4LVhQx4GAXlcDTjh5bErc5DYFYoeZuhoawnrhSRs03B0J+cXKtr5o59l0?=
 =?us-ascii?Q?KnSWrmL/0LldwSm40nouAN2pLNeAxk3tReqlQ165kqTECSdyYweiu0Xg/v+l?=
 =?us-ascii?Q?kjJVSGUzWTtE/+0AKe8ojVi2Ehq4IqI3iLSjvkf/JO/l3mbxCzQp/S7M4rrU?=
 =?us-ascii?Q?QlKQKxCxiYe2fE8gl20/kmYNeQg3ElEmE6PTZGhw3TdbUp7ASNdHkT4bdvRh?=
 =?us-ascii?Q?xl7RiwLKnav+iUpHgYGxIg5VIsDt3UYi9AVZEf+87sTTHyTlW0a16dj3SAY+?=
 =?us-ascii?Q?LmTX0W1qyncbJHan1gvikxYlzfcTCMufTQeZ13dxSsc2nZ6hHJP93nKIGIdR?=
 =?us-ascii?Q?UX8vA7aEm0PXMNbnNmriaLbU4iTbEO2z8aZCVNALEZRsJrIXJdzeH5tBWbOI?=
 =?us-ascii?Q?dFXxmAfB1Qr62ZTDkHTeOZ/VvT6lqfUj+ExS9O4fxad9/lg2RLcaTtvpZlPA?=
 =?us-ascii?Q?48h7GEGcqkboWWVNvC+7ISxPIDCx05bHn9ZOOgtc9Wqi12O6uW9IeY4HQFgq?=
 =?us-ascii?Q?R/yaoYTaZ7rnpnE+ecHTftkJ3BDQDvjl1a1L0iVgmA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3258.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OeQY3uB5IGVudjDw5hgSvL8+CPQDMh1F9pbWPzoiH/uJ1y5ZjTOnqHPjY52h?=
 =?us-ascii?Q?7K7S7YoiA5SPfb/p2subTHhnD7h2shq0UDTQodHcWD+kdtfcuLstB65vr7lY?=
 =?us-ascii?Q?y1aQ7EHr3Qpi4RBP+HoBzRer+hNqe5WhOoV6oJ2QW5FgOjzOgqFfaHnha3ku?=
 =?us-ascii?Q?E8/pgq+kgWChbuhZ3FMCoLIvptLVqKctH3HauVW+gf+cakmLRlZhLlBo8MuR?=
 =?us-ascii?Q?H94YoHzBhcWggAvq4d6WT6MupJMPnEYr+DHHGYGrrfZNYwrpIq5PdwAdqjzE?=
 =?us-ascii?Q?H4ZQIX/yCNZw7zKNF5NR/shVBk/pdtG7CO1YOVxRIdtJETGhiihJSn0UQl74?=
 =?us-ascii?Q?p5Yn6G5ElSQGYJBxNupVUeBPHAJUVzAPB1c20OEDV+Uf9rWEL6j67Cri2vhK?=
 =?us-ascii?Q?lyzIUospyJIO/oZaUpDOoqexczw5XMdsggw+LBNks9vadlkts6v5n715P/l6?=
 =?us-ascii?Q?PNccAca2F92BVJ8ZOAHStOJNmejH/tC6Egr+Oy2NkCYqqLbW9YT6W/py7DB0?=
 =?us-ascii?Q?x+ffTwRMTTRYnf39pp0ftt1S0as8hWtT0aKrufr+DS30uUCrmVk1htTXlrQM?=
 =?us-ascii?Q?JOLYrtUqI/0sdd0bwHFhdBJUAKIuYfkRm76pDhDkkbSn3uQI+NUWgEPwgB78?=
 =?us-ascii?Q?psxTOz7xgSr7pm33MojBi3K7rP2+y9JxQfVzCXEktZ1v6svYDwxyMc0UFxPh?=
 =?us-ascii?Q?I7Nfjtbum2pPlpdHnND6lLAp7KsIpatmbfiS08ylL+R8Dl8L/Oa+dI/1R/59?=
 =?us-ascii?Q?6foSSBTlOuJK1v5lpl4tTTwCB0IVmaXCvBz1nXOH85uaMlCdIJSAW7ULnZ4a?=
 =?us-ascii?Q?1zc3PtvIT/Wq37mPnUKN4ZItsSYsVe3Rpu0VLqVg8ItVuIslf2yc0wdWXYds?=
 =?us-ascii?Q?54nZIetLZQtqTgwIyGtgJCEZkWfJSavfTXYOvTTxGz1hMFZpo5o4UjH7HrjC?=
 =?us-ascii?Q?MTBvOiTwdRdCuTH2MBAkZgJN+DLAb0YKm8dxe7aeepuRV9MkkgxwfaRoPSf3?=
 =?us-ascii?Q?x6bWILdSmaRu7QEBd7eLSPW6vUaLsVcl5/EgKIsL19pVMsxosjnAexZUecNq?=
 =?us-ascii?Q?zYJZ0e7pR9UUfCtrPYfmjszI6YAXzgQxZQDBwMVG18qeyS4DzytEO+vrcPH0?=
 =?us-ascii?Q?hMG7YTvp+mQ39dTfAoKW2g/IJYTGzzCkessQ6iynv9O3XKx9RbIKJyoJRT8D?=
 =?us-ascii?Q?HWDOXTLurBXUBGU8z1O39nmmFOiZEzxf2LW14NTXk40wdFkOUV6oC8q/my6o?=
 =?us-ascii?Q?YCBRhVPq09TFv3qe8QMIQn+GwxOUfB7JEpUOMHg5aRVCy6r9hgOsdnTcR57D?=
 =?us-ascii?Q?e/STU2M64jL9DaoRKbYFYg07K2+KS+fvlxHMwCWoYT2jTxNR7oPB1BH9NkU6?=
 =?us-ascii?Q?VNrMM7LTLMADGrm2PJk3b6xlq1FItMtMz4GuIm7crCBNeSi/PIe4iMDqbNBu?=
 =?us-ascii?Q?DoAZkM3VOZs3UeCx/+vI2b+TKnwIID4JCidaPZ3zdtnpQdBiJK/RqtTPAISV?=
 =?us-ascii?Q?YDxCGdncqREFd/RwZt72LYxobw8JaKCCKlCcqgKMwFP7ASxFqzg4P/YDC/uT?=
 =?us-ascii?Q?sZeB3vptX8PSJQo+JSuItzTYphM7mVX5d/evIBzN?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3258.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2411a81-4184-4796-2494-08dc6e449218
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2024 03:19:56.7281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kvvAFyj87IuO5wVJjXTOF4w/HjCj6jTTvtF8EJnZr4SuVFw5kuitdOVq+HCoZ1Yh1J7lCvjNkZYOV6rV9Te5Zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6393
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



>-----Original Message-----
>From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>Sent: Monday, May 6, 2024 10:52 PM
>To: Kumar, Naveen1 <naveen1.kumar@intel.com>
>Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
>Kulkarni, Vandita <vandita.kulkarni@intel.com>; Nikula, Jani
><jani.nikula@intel.com>; Belgaumkar, Vinay <vinay.belgaumkar@intel.com>;
>Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
>Subject: Re: [PATCH] drm/i915/display: Introduce Display Metrics info
>
>On Mon, May 06, 2024 at 06:03:17AM -0400, Kumar, Naveen1 wrote:
>>
>>
>> >-----Original Message-----
>> >From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> >Sent: Saturday, April 6, 2024 3:39 AM
>> >To: intel-gfx@lists.freedesktop.org
>> >Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Shankar, Uma
>> ><uma.shankar@intel.com>; Kulkarni, Vandita
>> ><vandita.kulkarni@intel.com>; Kumar, Naveen1
>> ><naveen1.kumar@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
>> >Belgaumkar, Vinay <vinay.belgaumkar@intel.com>
>> >Subject: [PATCH] drm/i915/display: Introduce Display Metrics info
>> >
>> >Introduce a display metrics information through debugfs for a better
>> >view of the vblank and page flips, in special Async flips behavior.
>> >
>> >There is currently an overall expectation that whenever
>> >vblank_mode=3D0 is used with an graphics application, that
>> >automatically async_flips are happening. However, while implementing
>> >the Display Metrics for GuC SLPC, it was observed that it is not
>> >necessarily true for many of the expected cases.
>> >
>> >So, while the GuC SLPC side of the metrics doesn't get ready, let's
>> >at least bring the debugfs view of it so we can work to understand
>> >and fix any potential issue around our async vblanks.
>> >
>> >Please notice that the every struct here follows exactly the GuC
>> >shared data buffer, so the next step of the integration would be
>> >smooth and almost transparent to this intel_metrics on the display side=
.
>> >
>> >Cc: Uma Shankar <uma.shankar@intel.com>
>> >Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
>> >Cc: Naveen Kumar <naveen1.kumar@intel.com>
>> >Cc: Jani Nikula <jani.nikula@intel.com>
>> >Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> >Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> >---
>> > drivers/gpu/drm/i915/Makefile                 |   1 +
>> > drivers/gpu/drm/i915/display/intel_display.c  |  15 +-
>> > .../gpu/drm/i915/display/intel_display_core.h |   2 +
>> > .../drm/i915/display/intel_display_debugfs.c  |  12 +
>> > .../drm/i915/display/intel_display_driver.c   |   5 +
>> > .../gpu/drm/i915/display/intel_display_irq.c  |   3 +
>> > drivers/gpu/drm/i915/display/intel_metrics.c  | 356
>> >++++++++++++++++++ drivers/gpu/drm/i915/display/intel_metrics.h  |  27
>++
>> > .../drm/i915/display/skl_universal_plane.c    |   3 +
>> > drivers/gpu/drm/xe/Makefile                   |   1 +
>> > 10 files changed, 424 insertions(+), 1 deletion(-)  create mode
>> >100644 drivers/gpu/drm/i915/display/intel_metrics.c
>> > create mode 100644 drivers/gpu/drm/i915/display/intel_metrics.h
>> >
>> >diff --git a/drivers/gpu/drm/i915/Makefile
>> >b/drivers/gpu/drm/i915/Makefile index af9e871daf1d..a3c8d9f5614c
>> >100644
>> >--- a/drivers/gpu/drm/i915/Makefile
>> >+++ b/drivers/gpu/drm/i915/Makefile
>> >@@ -291,6 +291,7 @@ i915-y +=3D \
>> > 	display/intel_link_bw.o \
>> > 	display/intel_load_detect.o \
>> > 	display/intel_lpe_audio.o \
>> >+	display/intel_metrics.o \
>> > 	display/intel_modeset_lock.o \
>> > 	display/intel_modeset_setup.o \
>> > 	display/intel_modeset_verify.o \
>> >diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> >b/drivers/gpu/drm/i915/display/intel_display.c
>> >index a481c9218138..ca30b8d48e1f 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >@@ -94,6 +94,7 @@
>> > #include "intel_link_bw.h"
>> > #include "intel_lvds.h"
>> > #include "intel_lvds_regs.h"
>> >+#include "intel_metrics.h"
>> > #include "intel_modeset_setup.h"
>> > #include "intel_modeset_verify.h"
>> > #include "intel_overlay.h"
>> >@@ -1021,11 +1022,15 @@ static void intel_post_plane_update(struct
>> >intel_atomic_state *state,
>> > 				    struct intel_crtc *crtc)
>> > {
>> > 	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>> >+	struct intel_display *display =3D &dev_priv->display;
>> > 	const struct intel_crtc_state *old_crtc_state =3D
>> > 		intel_atomic_get_old_crtc_state(state, crtc);
>> > 	const struct intel_crtc_state *new_crtc_state =3D
>> > 		intel_atomic_get_new_crtc_state(state, crtc);
>> > 	enum pipe pipe =3D crtc->pipe;
>> >+	const struct intel_plane_state __maybe_unused *plane_state;
>> >+	struct intel_plane *plane;
>> >+	int i;
>> >
>> > 	intel_psr_post_plane_update(state, crtc);
>> >
>> >@@ -1057,6 +1062,12 @@ static void intel_post_plane_update(struct
>> >intel_atomic_state *state,
>> >
>> > 	if (audio_enabling(old_crtc_state, new_crtc_state))
>> > 		intel_encoders_audio_enable(state, crtc);
>> >+
>> >+	if (!new_crtc_state->do_async_flip) {
>> >+		for_each_new_intel_plane_in_state(state, plane, plane_state, i)
>> >+			intel_metrics_flip(display, new_crtc_state, plane->id,
>> >+					   false);
>> >+	}
>> > }
>> >
>> > static void intel_crtc_enable_flip_done(struct intel_atomic_state
>> >*state, @@ -
>> >7139,6 +7150,7 @@ static void intel_atomic_commit_tail(struct
>> >intel_atomic_state *state)  {
>> > 	struct drm_device *dev =3D state->base.dev;
>> > 	struct drm_i915_private *dev_priv =3D to_i915(dev);
>> >+	struct intel_display *display =3D &dev_priv->display;
>> > 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
>> > 	struct intel_crtc *crtc;
>> > 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] =3D {};
>@@
>> >-7261,7 +7273,6 @@ static void intel_atomic_commit_tail(struct
>> >intel_atomic_state *state)
>> > 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>> > 		if (new_crtc_state->do_async_flip)
>> > 			intel_crtc_disable_flip_done(state, crtc);
>> >-
>> > 		intel_color_wait_commit(new_crtc_state);
>> > 	}
>> >
>> >@@ -7314,6 +7325,8 @@ static void intel_atomic_commit_tail(struct
>> >intel_atomic_state *state)
>> > 		 * FIXME get rid of this funny new->old swapping
>> > 		 */
>> > 		old_crtc_state->dsb =3D fetch_and_zero(&new_crtc_state->dsb);
>> >+
>> >+		intel_metrics_refresh_info(display, new_crtc_state);
>> > 	}
>> >
>> > 	/* Underruns don't always raise interrupts, so check manually */
>> >diff -- git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >index 2167dbee5eea..992db9098566 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >@@ -42,6 +42,7 @@ struct intel_cdclk_vals;  struct intel_color_funcs;
>> >struct intel_crtc;  struct intel_crtc_state;
>> >+struct intel_display_metrics;
>> > struct intel_dmc;
>> > struct intel_dpll_funcs;
>> > struct intel_dpll_mgr;
>> >@@ -530,6 +531,7 @@ struct intel_display {
>> > 	struct intel_fbc *fbc[I915_MAX_FBCS];
>> > 	struct intel_frontbuffer_tracking fb_tracking;
>> > 	struct intel_hotplug hotplug;
>> >+	struct intel_display_metrics *metrics;
>> > 	struct intel_opregion *opregion;
>> > 	struct intel_overlay *overlay;
>> > 	struct intel_display_params params; diff --git
>> >a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >index 3e364891dcd0..f05b9a9ddee0 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>> >@@ -30,6 +30,7 @@
>> > #include "intel_hdcp.h"
>> > #include "intel_hdmi.h"
>> > #include "intel_hotplug.h"
>> >+#include "intel_metrics.h"
>> > #include "intel_panel.h"
>> > #include "intel_psr.h"
>> > #include "intel_psr_regs.h"
>> >@@ -642,6 +643,16 @@ static int i915_display_capabilities(struct
>> >seq_file *m, void *unused)
>> > 	return 0;
>> > }
>> >
>> >+static int i915_display_metrics(struct seq_file *m, void *unused) {
>> >+	struct drm_i915_private *i915 =3D node_to_i915(m->private);
>> >+	struct drm_printer p =3D drm_seq_file_printer(m);
>> >+
>> >+	intel_metrics_show(&i915->display, &p);
>> >+
>> >+	return 0;
>> >+}
>> >+
>> > static int i915_shared_dplls_info(struct seq_file *m, void *unused)  {
>> > 	struct drm_i915_private *dev_priv =3D node_to_i915(m->private); @@ -
>> >1059,6 +1070,7 @@ static const struct drm_info_list
>> >intel_display_debugfs_list[] =3D {
>> > 	{"i915_power_domain_info", i915_power_domain_info, 0},
>> > 	{"i915_display_info", i915_display_info, 0},
>> > 	{"i915_display_capabilities", i915_display_capabilities, 0},
>> >+	{"i915_display_metrics", i915_display_metrics, 0},
>> > 	{"i915_shared_dplls_info", i915_shared_dplls_info, 0},
>> > 	{"i915_dp_mst_info", i915_dp_mst_info, 0},
>> > 	{"i915_ddb_info", i915_ddb_info, 0}, diff --git
>> >a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> >b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> >index 87dd07e0d138..767b2d5b3826 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> >@@ -46,6 +46,7 @@
>> > #include "intel_hdcp.h"
>> > #include "intel_hotplug.h"
>> > #include "intel_hti.h"
>> >+#include "intel_metrics.h"
>> > #include "intel_modeset_lock.h"
>> > #include "intel_modeset_setup.h"
>> > #include "intel_opregion.h"
>> >@@ -514,6 +515,8 @@ int intel_display_driver_probe(struct
>> >drm_i915_private *i915)
>> >
>> > 	intel_overlay_setup(i915);
>> >
>> >+	intel_metrics_init(&i915->display);
>> >+
>> > 	ret =3D intel_fbdev_init(&i915->drm);
>> > 	if (ret)
>> > 		return ret;
>> >@@ -611,6 +614,8 @@ void intel_display_driver_remove_noirq(struct
>> >drm_i915_private *i915)
>> >
>> > 	intel_dp_tunnel_mgr_cleanup(i915);
>> >
>> >+	intel_metrics_fini(&i915->display);
>> >+
>> > 	intel_overlay_cleanup(i915);
>> >
>> > 	intel_gmbus_teardown(i915);
>> >diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >index f846c5b108b5..202400a771b2 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> >@@ -18,6 +18,7 @@
>> > #include "intel_fifo_underrun.h"
>> > #include "intel_gmbus.h"
>> > #include "intel_hotplug_irq.h"
>> >+#include "intel_metrics.h"
>> > #include "intel_pmdemand.h"
>> > #include "intel_psr.h"
>> > #include "intel_psr_regs.h"
>> >@@ -25,8 +26,10 @@
>> > static void
>> > intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe
>> >pipe)  {
>> >+	struct intel_display *display =3D &dev_priv->display;
>> > 	struct intel_crtc *crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
>> >
>> >+	intel_metrics_vblank(display, crtc);
>> > 	drm_crtc_handle_vblank(&crtc->base);
>> > }
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_metrics.c
>> >b/drivers/gpu/drm/i915/display/intel_metrics.c
>> >new file mode 100644
>> >index 000000000000..2cb2b8189b25
>> >--- /dev/null
>> >+++ b/drivers/gpu/drm/i915/display/intel_metrics.c
>> >@@ -0,0 +1,356 @@
>> >+// SPDX-License-Identifier: MIT
>> >+/*
>> >+ * Copyright (c) 2024 Intel Corporation  */
>> >+
>> >+#include "intel_metrics.h"
>> >+
>> >+#include <drm/drm_modes.h>
>> >+#include <drm/drm_print.h>
>> >+
>> >+#include "i915_drv.h"
>> >+#include "intel_de.h"
>> >+#include "intel_display_types.h"
>> >+
>> >+/**
>> >+ * Display Metrics
>> >+ *
>> >+ * Provide some display activity overview such as active refresh
>> >+rates,
>> >+ * vblank activity and page flip activities.
>> >+ * For now it is informative debug only, but later it will be
>> >+expanded
>> >+ * to be used for GT frequency selection by GuC SLPC.
>> >+ */
>> >+
>> >+/*
>> >+ * An event using an work queue is used to avoid any disturbance in
>> >+the
>> >+ * critical path that could cause performance impacts.
>> >+ */
>> >+struct display_event {
>> >+	struct work_struct work;
>> >+	struct drm_i915_private *i915;
>> >+	struct intel_display *display;
>> >+	bool is_vblank;
>> >+	int pipe;
>> >+	int plane;
>> >+	bool async_flip;
>> >+};
>> >+
>> >+/*
>> >+ * Although we could simply save this inside our crtc structs, we
>> >+are
>> >+ * already mimicking the GuC SLPC defition of the display data, for
>> >+future
>> >+ * usage.
>> >+ */
>> >+#define MAX_PIPES		8
>> >+#define MAX_PLANES_PER_PIPE	8
>> >+
>> >+struct display_global_info {
>> >+	u32 version:8;
>> >+	u32 num_pipes:4;
>> >+	u32 num_planes_per_pipe:4;
>> >+	u32 reserved_1:16;
>> >+	u32 refresh_count:16;
>> >+	u32 vblank_count:16;
>> >+	u32 flip_count:16;
>> >+	u32 reserved_2:16;
>> >+	u32 reserved_3[13];
>> >+} __packed;
>> >+
>> >+struct display_refresh_info {
>> >+	u32 refresh_interval:16;
>> >+	u32 is_variable:1;
>> >+	u32 reserved:15;
>> >+} __packed;
>> >+
>> >+/*
>> >+ * When used with GuC SLPC, the host must update each 32-bit part
>> >+with a single
>> >+ * atomic write so that SLPC will read the contained bit fields togeth=
er.
>> >+ * The host must update the two parts in order - total flip count
>> >+and timestamp
>> >+ * first, vsync and async flip counts second.
>> >+ * Hence, these items are not defined with individual bitfields.
>> >+ */
>> >+#define FLIP_P1_LAST		REG_GENMASK(31, 7)
>> >+#define FLIP_P1_TOTAL_COUNT	REG_GENMASK(6, 0)
>> >+#define FLIP_P2_ASYNC_COUNT	REG_GENMASK(31, 16)
>> >+#define FLIP_P2_VSYNC_COUNT	REG_GENMASK(15, 0)
>> >+
>> >+struct display_flip_metrics {
>> >+	u32 part1;
>> >+	u32 part2;
>> >+} __packed;
>> >+
>> >+/*
>> >+ * When used with GuC SLPC, the host must update each 32-bit part
>> >+with a single
>> >+ * atomic write, so that SLPC will read the count and timestamp togeth=
er.
>> >+ * Hence, this item is not defined with individual bitfields.
>> >+ */
>> >+#define VBLANK_LAST	REG_GENMASK(31, 7)
>> >+#define VBLANK_COUNT	REG_GENMASK(6, 0)
>> >+
>> >+struct intel_display_metrics {
>> >+	struct display_global_info global_info;
>> >+	struct display_refresh_info refresh_info[MAX_PIPES];
>> >+	u32 vblank_metrics[MAX_PIPES];
>> >+	struct display_flip_metrics
>> >+	flip_metrics[MAX_PIPES][MAX_PLANES_PER_PIPE];
>> >+} __packed;
>> >+
>> >+/**
>> >+ * intel_metrics_refresh_info - Refresh rate information
>> >+ * @display: Pointer to the intel_display struct that is in use by the=
 gfx
>device.
>> >+ * @crtc_state: New CRTC state upon a modeset.
>> >+ *
>> >+ * To be called on a modeset. It then saves the current refresh
>> >+interval in
>> >+ * micro seconds.
>> >+ */
>> >+void intel_metrics_refresh_info(struct intel_display *display,
>> >+				struct intel_crtc_state *crtc_state) {
>> >+	struct intel_display_metrics *metrics =3D display->metrics;
>> >+	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> >+	struct drm_display_mode *mode =3D &crtc_state->hw.adjusted_mode;
>> >+	u32 interval_us;
>> >+
>> >+	if (!display->metrics)
>> >+		return;
>> >+
>> >+	interval_us =3D crtc_state->hw.active ? DIV_ROUND_UP(1000000,
>> >+						drm_mode_vrefresh(mode)) :
>> >0;
>> >+
>> >+	metrics->refresh_info[crtc->pipe].refresh_interval =3D interval_us;
>> >+	metrics->refresh_info[crtc->pipe].is_variable =3D crtc_state-
>> >>uapi.vrr_enabled;
>> >+	metrics->global_info.refresh_count +=3D 1; }
>> >+
>> >+static void metrics_update_vblank(struct intel_display_metrics
>> >+*metrics, int
>> >pipe,
>> >+				  u32 timestamp)
>> >+{
>> >+	u32 vblank;
>> >+
>> >+	vblank =3D metrics->vblank_metrics[pipe];
>> >+
>> >+	vblank =3D REG_FIELD_GET(VBLANK_COUNT, vblank);
>> >+	vblank =3D REG_FIELD_PREP(VBLANK_COUNT, vblank + 1);
>> >+	vblank |=3D REG_FIELD_PREP(VBLANK_LAST, timestamp);
>> >+
>> >+	/* Write everything at once in preparation for the GuC SLPC
>> >requirement */
>> >+	metrics->vblank_metrics[pipe] =3D vblank;
>> >+	metrics->global_info.vblank_count +=3D 1; }
>> >+
>> >+static void metrics_update_flip(struct intel_display_metrics *metrics,=
 int
>pipe,
>> >+				int plane, bool async_flip, u32 timestamp) {
>> >+	u32 part1, part2, count;
>> >+
>> >+	part1 =3D metrics->flip_metrics[pipe][plane].part1;
>> >+	part2 =3D metrics->flip_metrics[pipe][plane].part2;
>> >+
>> >+	part1 =3D REG_FIELD_GET(FLIP_P1_TOTAL_COUNT, part1);
>> >+	part1 =3D REG_FIELD_PREP(FLIP_P1_TOTAL_COUNT, part1 + 1);
>> >+	part1 |=3D REG_FIELD_PREP(FLIP_P1_LAST, timestamp);
>> >+
>> >+	if (async_flip) {
>> >+		count =3D REG_FIELD_GET(FLIP_P2_ASYNC_COUNT, part2);
>> >+		part2 &=3D ~FLIP_P2_ASYNC_COUNT;
>> >+		part2 |=3D REG_FIELD_PREP(FLIP_P2_ASYNC_COUNT, count + 1);
>> >+	} else {
>> >+		count =3D REG_FIELD_GET(FLIP_P2_VSYNC_COUNT, part2);
>> >+		part2 &=3D ~FLIP_P2_VSYNC_COUNT;
>> >+		part2 |=3D REG_FIELD_PREP(FLIP_P2_VSYNC_COUNT, count + 1);
>> >+	}
>> >+
>> >+	/*
>> >+	 * Write everything in this way and this order in preparation for the
>> >+	 * GuC SLPC requirement
>> >+	 */
>> >+	metrics->flip_metrics[pipe][plane].part1 =3D part1;
>> >+	metrics->flip_metrics[pipe][plane].part2 =3D part2;
>> >+
>> >+	metrics->global_info.flip_count +=3D 1; }
>> >+
>> >+/*
>> >+ * Let's use the same register GuC SLPC uses for timestamp.
>> >+ * It uses a register that is outside GT domain so GuC doesn't need
>> >+ * to wake the GT for reading during SLPC loop.
>> >+ * This is a single register regarding the GT, so we can read
>> >+directly
>> >+ * from here, regarding the GT GuC is in.
>> >+ */
>> >+#define MCHBAR_MIRROR_BASE_SNB	0x140000
>> >+#define MCHBAR_BCLK_COUNT	_MMIO(MCHBAR_MIRROR_BASE_SNB
>> >+ 0x5984)
>> >+#define MTL_BCLK_COUNT		_MMIO(0xc28)
>> >+#define   TIMESTAMP_MASK	REG_GENMASK(30, 6)
>> >+
>> >+static u32 bclk_read_timestamp(struct drm_i915_private *i915) {
>> >+	u32 timestamp;
>> >+
>> >+	if (DISPLAY_VER(i915) >=3D 14)
>> >+		timestamp =3D intel_de_read(i915, MTL_BCLK_COUNT);
>> >+	else
>> >+		timestamp =3D intel_de_read(i915, MCHBAR_BCLK_COUNT);
>> >+
>> >+	return REG_FIELD_GET(TIMESTAMP_MASK, timestamp); }
>> >+
>> >+static void display_event_work(struct work_struct *work) {
>> >+	struct display_event *event =3D container_of(work, struct
>> >+display_event,
>> >work);
>> >+	struct intel_display *display =3D event->display;
>> >+	u32 timestamp;
>> >+
>> >+	timestamp =3D bclk_read_timestamp(event->i915);
>> >+
>> >+	if (event->is_vblank) {
>> >+		metrics_update_vblank(display->metrics, event->pipe,
>> >timestamp);
>> >+	} else {
>> >+		metrics_update_flip(display->metrics, event->pipe, event-
>> >>plane,
>> >+				    event->async_flip, timestamp);
>> >+	}
>> >+
>> >+	kfree(event);
>> >+}
>> >+
>> >+void intel_metrics_init(struct intel_display *display) {
>> >+	struct intel_display_metrics *metrics;
>> >+
>> >+	metrics =3D kzalloc(sizeof(*metrics), GFP_KERNEL);
>> >+	if (!metrics)
>> >+		return;
>> >+
>> >+	metrics->global_info.version =3D 1;
>> >+	metrics->global_info.num_pipes =3D MAX_PIPES;
>> >+	metrics->global_info.num_planes_per_pipe =3D MAX_PLANES_PER_PIPE;
>> >+
>> >+	display->metrics =3D metrics;
>> >+}
>> >+
>> >+void intel_metrics_fini(struct intel_display *display) {
>> >+	if (!display->metrics)
>> >+		return;
>> >+
>> >+	kfree(display->metrics);
>> >+}
>> >+
>> >+/**
>> >+ * intel_metrics_vblank - Vblank information
>> >+ * @display: Pointer to the intel_display struct that is in use by the=
 gfx
>device.
>> >+ * @crtc: The Intel CRTC that received the vblank interrupt.
>> >+ *
>> >+ * To be called when a vblank is passed.
>> >+ */
>> >+void intel_metrics_vblank(struct intel_display *display,
>> >+			  struct intel_crtc *crtc)
>> >+{
>> >+	struct display_event *event;
>> >+
>> >+	if (!display->metrics)
>> >+		return;
>> >+
>> >+	event =3D kmalloc(sizeof(*event), GFP_ATOMIC);
>>
>> HI Rodrigo, after changing kmalloc -> kzalloc, it works fine for us. It =
does
>correctly prints Global Flip count and Async Flip count.
>> Prior to this change, event->is_vblank in function display_event_work is
>always true and hence it never increases flip count.
>
>thanks for pointing that out. kzalloc is indeed better.
>There's also another kmalloc down that needs to be changed to kzalloc.
>
>Anyway, when you mentioned that you saw the async flip count increasing,
>you are telling about the igt test right?
>or do you have any special compositor change required?

Hi Rodrigo, async flip count is increasing using both IGT and Weston/waylan=
d client app (https://gitlab.freedesktop.org/wayland/weston/-/blob/main/cli=
ents/simple-egl.c#L1294)
Additionally, we had to hack mesa code to use async flip supported modifier=
s. Mesa needs to handle async flip scenarios and select supported modifiers=
.

>In my environment here I still only see the async flip increasing with IGT=
 or with
>a very limited cases...
>
>>
>> Thanks Chaitanya for pointing this out.
>> Regards,
>> Naveen Kumar
>>
>> >+	if (!event)
>> >+		return;
>> >+
>> >+	INIT_WORK(&event->work, display_event_work);
>> >+	event->i915 =3D to_i915(crtc->base.dev);
>> >+	event->display =3D display;
>> >+	event->is_vblank =3D true;
>> >+	event->pipe =3D crtc->pipe;
>> >+	queue_work(system_highpri_wq, &event->work); }
>> >+
>> >+/**
>> >+ * intel_metrics_flip - Flip information
>> >+ * @display: Pointer to the intel_display struct that is in use by the=
 gfx
>device.
>> >+ * @crtc_state: New CRTC state upon a page flip.
>> >+ * @plane: Which plane ID got the page flip.
>> >+ * @async_flip: A boolean to indicate if the page flip was async.
>> >+ *
>> >+ * To be called on a page flip.
>> >+ */
>> >+void intel_metrics_flip(struct intel_display *display,
>> >+			const struct intel_crtc_state *crtc_state,
>> >+			int plane, bool async_flip)
>> >+{
>> >+	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> >+	struct display_event *event;
>> >+
>> >+	if (!display->metrics)
>> >+		return;
>> >+
>> >+	event =3D kmalloc(sizeof(*event), GFP_ATOMIC);
>> Same here, had to change kmalloc -> kzalloc
>>
>> >+	if (!event)
>> >+		return;
>> >+
>> >+	INIT_WORK(&event->work, display_event_work);
>> >+	event->i915 =3D to_i915(crtc->base.dev);
>> >+	event->display =3D display;
>> >+	event->pipe =3D crtc->pipe;
>> >+	event->plane =3D plane;
>> >+	event->async_flip =3D async_flip;
>> >+	queue_work(system_highpri_wq, &event->work); }
>> >+
>> >+void intel_metrics_show(struct intel_display *display, struct
>> >+drm_printer *p) {
>> >+	struct intel_display_metrics *metrics =3D display->metrics;
>> >+	int pipe, plane;
>> >+	u32 val;
>> >+
>> >+	if (!metrics)
>> >+		return;
>> >+
>> >+	drm_printf(p, "\nDisplay Metrics - Globals:\n");
>> >+	drm_printf(p, "\tVersion: %d\n", metrics->global_info.version);
>> >+	drm_printf(p, "\tNum Pipes: %d\n", metrics->global_info.num_pipes);
>> >+	drm_printf(p, "\tNum Planes per Pipe: %d\n",
>> >+		   metrics->global_info.num_planes_per_pipe);
>> >+	drm_printf(p, "\tGlobal Refresh Info Count: %d\n",
>> >+		   metrics->global_info.refresh_count);
>> >+	drm_printf(p, "\tGlobal Vblank Count: %d\n",
>> >+		   metrics->global_info.vblank_count);
>> >+	drm_printf(p, "\tGlobal Flip Count: %d\n",
>> >+		   metrics->global_info.flip_count);
>> >+
>> >+	for (pipe =3D 0; pipe < MAX_PIPES; pipe++) {
>> >+		if (!metrics->refresh_info[pipe].refresh_interval)
>> >+			continue;
>> >+
>> >+		drm_printf(p, "\nDisplay Metrics - Refresh Info - Pipe[%d]:\n",
>> >+			   pipe);
>> >+		drm_printf(p, "\tRefresh Interval: %d\n",
>> >+			   metrics->refresh_info[pipe].refresh_interval);
>> >+		drm_printf(p, "\tIS VRR: %d\n",
>> >+			   metrics->refresh_info[pipe].is_variable);
>> >+
>> >+		drm_printf(p, "Display Metrics - Vblank Info - Pipe[%d]:\n",
>> >+			   pipe);
>> >+		val =3D metrics->vblank_metrics[pipe];
>> >+		drm_printf(p, "\tVBlank Last Timestamp: %x\n",
>> >+			   REG_FIELD_GET(VBLANK_LAST, val));
>> >+		drm_printf(p, "\tVBlank Count: %d\n",
>> >+			   REG_FIELD_GET(VBLANK_COUNT, val));
>> >+
>> >+		drm_printf(p, "Display Metrics - Flip Info - Pipe[%d]:\n", pipe);
>> >+		for (plane =3D 0; plane < MAX_PLANES_PER_PIPE; plane++) {
>> >+			val =3D metrics->flip_metrics[pipe][plane].part1;
>> >+			if (!val)
>> >+				continue;
>> >+
>> >+			drm_printf(p, "\tFlip Info - Plane[%d]:\n", plane);
>> >+			drm_printf(p, "\t\tFlip Last Timestamp: %x\n",
>> >+				   REG_FIELD_GET(FLIP_P1_LAST, val));
>> >+			drm_printf(p, "\t\tFlip Total Count: %d\n",
>> >+				   REG_FIELD_GET(FLIP_P1_TOTAL_COUNT,
>> >val));
>> >+
>> >+			val =3D metrics->flip_metrics[pipe][plane].part2;
>> >+
>> >+			drm_printf(p, "\t\tFlip Async Count: %d\n",
>> >+				   REG_FIELD_GET(FLIP_P2_ASYNC_COUNT,
>> >val));
>> >+			drm_printf(p, "\t\tFlip Vsync Count: %d\n",
>> >+				   REG_FIELD_GET(FLIP_P2_VSYNC_COUNT,
>> >val));
>> >+		}
>> >+	}
>> >+}
>> >diff --git a/drivers/gpu/drm/i915/display/intel_metrics.h
>> >b/drivers/gpu/drm/i915/display/intel_metrics.h
>> >new file mode 100644
>> >index 000000000000..9e41dc9522f3
>> >--- /dev/null
>> >+++ b/drivers/gpu/drm/i915/display/intel_metrics.h
>> >@@ -0,0 +1,27 @@
>> >+/* SPDX-License-Identifier: MIT */
>> >+/*
>> >+ * Copyright (c) 2024 Intel Corporation  */
>> >+
>> >+#ifndef __INTEL_METRICS_H__
>> >+#define __INTEL_METRICS_H__
>> >+
>> >+#include <linux/types.h>
>> >+
>> >+struct drm_printer;
>> >+struct intel_crtc;
>> >+struct intel_crtc_state;
>> >+struct intel_display;
>> >+
>> >+void intel_metrics_refresh_info(struct intel_display *display,
>> >+				struct intel_crtc_state *crtc_state); void
>> >+intel_metrics_vblank(struct intel_display *display,
>> >+			  struct intel_crtc *intel_crtc); void
>intel_metrics_flip(struct
>> >+intel_display *display,
>> >+			const struct intel_crtc_state *crtc_state,
>> >+			int plane, bool async_flip);
>> >+void intel_metrics_init(struct intel_display *display); void
>> >+intel_metrics_fini(struct intel_display *display); void
>> >+intel_metrics_show(struct intel_display *display, struct drm_printer
>> >+*p);
>> >+
>> >+#endif
>> >diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> >b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> >index 860574d04f88..fdd21a41d79d 100644
>> >--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> >+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> >@@ -17,6 +17,7 @@
>> > #include "intel_fb.h"
>> > #include "intel_fbc.h"
>> > #include "intel_frontbuffer.h"
>> >+#include "intel_metrics.h"
>> > #include "intel_psr.h"
>> > #include "intel_psr_regs.h"
>> > #include "skl_scaler.h"
>> >@@ -1392,6 +1393,7 @@ skl_plane_async_flip(struct intel_plane *plane,
>> > 		     bool async_flip)
>> > {
>> > 	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
>> >+	struct intel_display *display =3D &dev_priv->display;
>> > 	enum plane_id plane_id =3D plane->id;
>> > 	enum pipe pipe =3D plane->pipe;
>> > 	u32 plane_ctl =3D plane_state->ctl;
>> >@@ -1404,6 +1406,7 @@ skl_plane_async_flip(struct intel_plane *plane,
>> > 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), plane_ctl);
>> > 	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id),
>> > 			  skl_plane_surf(plane_state, 0));
>> >+	intel_metrics_flip(display, crtc_state, plane_id, async_flip);
>> > }
>> >
>> > static bool intel_format_is_p01x(u32 format) diff --git
>> >a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile index
>> >e5b1715f721e..5133dba2c7de 100644
>> >--- a/drivers/gpu/drm/xe/Makefile
>> >+++ b/drivers/gpu/drm/xe/Makefile
>> >@@ -263,6 +263,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>> > 	i915-display/intel_hti.o \
>> > 	i915-display/intel_link_bw.o \
>> > 	i915-display/intel_lspcon.o \
>> >+	i915-display/intel_metrics.o \
>> > 	i915-display/intel_modeset_lock.o \
>> > 	i915-display/intel_modeset_setup.o \
>> > 	i915-display/intel_modeset_verify.o \
>> >--
>> >2.44.0
>>
