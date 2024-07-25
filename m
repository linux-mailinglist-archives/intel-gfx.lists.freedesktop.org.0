Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F71E93BF4E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 11:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21B2810E286;
	Thu, 25 Jul 2024 09:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJJZtWLG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7D110E1EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jul 2024 09:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721900821; x=1753436821;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KZvBklzUCDuQWeKfLo4Z4tjjBCVjoYVIrE203RG1eS8=;
 b=mJJZtWLGiU2Rtfc0jCet+yjRjWAuqYaYZyZB3nZ4j6y1ggf+2AksBOqG
 owVNWk3iPUS0Cp+ahgVV4uvnIqpOa1Kyh7tj/Iftj8q6E9YVO7VoZ764W
 U+vFf9kc5cSnPXaZr4sqAxlrMUzD/Wb1kGYrcyF3JNx6Zy44/AeDVjKsS
 X/YvfKQzDLDuovlUsnqegkabhq6/e9DIrBD1lMr3/lpwYRX882gMcq3jD
 WoiR/OH1FG2zsU5tnODyTjMKNVFoDHltbA6SZYEuX40JBlUVMoAc1XGod
 DbRQKx4Kt9v4OSZy5qElxB6PhzzpvCUZIfDzAQc9aJJB4PD+o3IniigGV A==;
X-CSE-ConnectionGUID: BN1j2ZjIQMyEzQLJOYoG5g==
X-CSE-MsgGUID: T5ToQaEvTPqEgolN/4gBcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="19759904"
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="19759904"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2024 02:47:01 -0700
X-CSE-ConnectionGUID: NQMiGl5ZTe2bEtXg4hGotQ==
X-CSE-MsgGUID: lKL8JKmaSZyEPW+eoSpn0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,235,1716274800"; d="scan'208";a="57442245"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Jul 2024 02:47:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 02:46:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 25 Jul 2024 02:46:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 25 Jul 2024 02:46:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 25 Jul 2024 02:46:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yKZXJ+iULPadn2Mrnavshfu1Dg6v7e/n40Ptxz/52FZEzrH5J8PnNwhJxc2eRRc8Stuco3rZB2MzMK5MpyxaPhNZGZJmeSLwTuW4EnXc0HPzdvQdsOdDYtVs1fx4wbqYj922tr+ubY8Ww0vcuGKf43VqGw/Y4reN5WYqrMacR/Txqi1MLasKTBmEbj5VKZCtYQACqmCayYXCAvxHDJO03MFEWTmnzMFVDs2MuJiCtf0/d3QWC8ipZGGONiYAZCSwhlgDEVqaaUWhEjpUGZ0l01QrWTXSQknHbkkwi33WhTaup9jNdUN45FTSR48V/UWEkSpJUgSxJ6M3O/FYQ9W2qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M15P5tN4GXOIlNX+IPySYNdL8tjKwYcLHTqwFHmqmGU=;
 b=bkqlIaoLtPe+l6aeAQjJ8XOaO2SZlaF1IBrWvHPCFWm9HXvC8rBdoRGx+Vj9Vs2zBDTKEYgtsLpb+5Y7SRlqIlHJdLpde9ppJ23pHlD4fjoc8qcWObpWTd3eXLlD3y9kH+Yhfy0VsIZKW+dF0sG3P8c+US2qpNHf41OCJo57VVkt8Y5/ED+3XOXurwNyfL24pCsknugM2niGEvr8GmJvkxa5de1JWZM+KXApaWH30KxSCOH93HLExAaJsg80ak91gNI5WrKFXQvZ0GeMpzR7H0ch0A2e8VOfz38Uy1b4GTz87aLo5yfEG+9YKZSJ+rxrCXQxC4uDVfcFCl6uE1pO2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7314.namprd11.prod.outlook.com (2603:10b6:930:9d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Thu, 25 Jul
 2024 09:46:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 09:46:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Nautiyal,
 Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable routine
Thread-Topic: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable
 routine
Thread-Index: AQHa3LkbRSUG+lnzSEGNLzQLexSJe7IGFiqAgAEfWxA=
Date: Thu, 25 Jul 2024 09:46:56 +0000
Message-ID: <SN7PR11MB67505B23DBA9526C7C94A34CE3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240723042802.3618046-1-suraj.kandpal@intel.com>
 <20240724163743.3668407-1-suraj.kandpal@intel.com>
In-Reply-To: <20240724163743.3668407-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7314:EE_
x-ms-office365-filtering-correlation-id: a537e7d3-d7d0-4245-1a9a-08dcac8eb900
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?a3LBo/4xHv+iBdRzK2ageTSs2uZRTixbNu1jiu1MMqs/jZkAvaSVU9znWATJ?=
 =?us-ascii?Q?GAgfr+p0M8b8Sc4tKDFMhXAonjio40LuaeRQ/9P3SH52UZuC4sVVcUuEkRm+?=
 =?us-ascii?Q?NZ1Qnql5Agtmsdcowl0sKGG6vRtNFypwlQU9GSgYTOGYS1fRDQDG7G3qDU00?=
 =?us-ascii?Q?jDLb4Rp+l7spBufv6weL6FSuzU8CjAs9rPPvgK9NZ0im11HBQS9V1ElHj0dI?=
 =?us-ascii?Q?STEJocAiNLyaplwBOcfvEheXaEuewbz/E3yZsA239sPA39xx1fbmKiQAUIwG?=
 =?us-ascii?Q?xxMrfGb0SRTG5SKPFYIlJEZUMQLdDRe26EZyGUOMnWLFZP0Szm+ICbYnTshg?=
 =?us-ascii?Q?dsk55AoIMzaxGzVNSWLCIHp13DKqDIB0nnFR5xf28L1/7bQsYE33KL+WQaHa?=
 =?us-ascii?Q?gEZ41nefjnXwLY5rP1IxqiIIvsx8WfnxDfsz/qVL3sRJeU33h/ieVJxk/Lxs?=
 =?us-ascii?Q?+16H0fDOjMaeRi3h7CD+TpzayZfCjfP5ejhwWKzEMmPP/xypdhdKo/xH2Q3j?=
 =?us-ascii?Q?3beB1lRu19Ihk3xLOF+COCi+KjlGgexbS4HohDons3WKy9PgzxXMdbarGt70?=
 =?us-ascii?Q?yfZ6mOf5abuf63KcVcWi0frpKbaq3jnS3m4CdjjPApxE4ATOQ6Ml+pZbKHJZ?=
 =?us-ascii?Q?yIt8uAHEaJTonjGJl5Cc8PHGdO7U1ykrCC8DcU5TmiokU7GBBoR6oIUCiTeT?=
 =?us-ascii?Q?OTXa4way/WRr2mOG51HmxBjD/A6XDXmb1ItuetfS6f8lr0AA6EPM+kwLMyjq?=
 =?us-ascii?Q?hDjRNh33seUk+E99tc+ECX2g6HQiMvS8BLtchKDs2PH3X08qwnoyok4KMyUM?=
 =?us-ascii?Q?Smx4Uukliovbe6Zil2ceWWjrHe6PhXg3vk3fZAwCZuYA3gZYMS8E50NPgs6Y?=
 =?us-ascii?Q?ikEROj1khirRhxczoEC+us3hoFg2kfYXjKObDM5dcZr0EJgJepfFNpta60g5?=
 =?us-ascii?Q?U2MIboHg1AyzBkcoCwsqwx7wwmlGifmetLhk1JMnqaGczSIDRAux9/S1YYvQ?=
 =?us-ascii?Q?tvn3rRXfRm0i/iJQpbez+BFurlMdHEXPbahmyHZ4ZNC3NXgsWE9hmdlA/0yT?=
 =?us-ascii?Q?AiJgB7kQosyOnODUPdc4ri1zyjXS0Y0Xy4CfJHcfBJM6D8sFTveHG4Hm3ZgP?=
 =?us-ascii?Q?EOBmgz2hWI0/OB/YnwpJikKimjkDEjM1q2ROs5ne8u0lXcuwsEWOzJeGYKPT?=
 =?us-ascii?Q?404eTMp8RuP6dYmCDJF2/WY3NKgI0yW2a3GizzW6JVQpISZnFgPg1/I+DC+4?=
 =?us-ascii?Q?wqZLb7nTlI7rfG2s7N5pAvxCn0D8xLe9jS0iY0SmqUwqNGVUl5PgcfEba62E?=
 =?us-ascii?Q?oisP2ALiacUWBsY2HgP5Uv8dX35KTkiX5nVXS/PeeZw+F8NT2/gnWdc1iY++?=
 =?us-ascii?Q?IYpp3VtFoypRjSWJhh3k2drydybL8uI5HbQD743hW8kddyx2tA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OaX6GXhFJJMlxym6IKY8ZjSNXPeACOzkgAzURxLBgQVtq3vis1fipgb2JjOk?=
 =?us-ascii?Q?g5XdpIjeArEG6+RW9hIwNt7jBRGYJr9MikX43Oldeqaf8RMiNpV2qkY6C8TF?=
 =?us-ascii?Q?2XS7+WT41BnP34vmuwu9uwP8LQESD+3G8lIrcbuDDY1t46gN4gcmXt0gY2hx?=
 =?us-ascii?Q?tFHptk6qa0DzHtBTl9MRKhppeE9G2pl4XC1R28wiwERySno1ZxwWP6jgKT5w?=
 =?us-ascii?Q?UQETtggpiMvGrogRKkPseLYro5TEd0Zjt2dYk/+A/qFyx/TKl7QoxIb+olXa?=
 =?us-ascii?Q?iH1BO3BDvm1knTXyPLqqgESxRgGbL7IkhMPXLBTHidNlYF2RP5tCdrsuUaNX?=
 =?us-ascii?Q?HHf29iqf/Fs2RDH7nf1t13qX3gbsqWGUT6fUb8ZJWujNXdUHmldhdahD0lmf?=
 =?us-ascii?Q?WtPEPz5cGOOKcE8jTfxi4ag94lUolRmjnOhvv74ZRKjCzudZGzCINAqDwWmB?=
 =?us-ascii?Q?9rouBdcTmIm1M+x+FKIb7RhgUC1YFi4c8A/vRUmvKG8qZjMmP7s+4knCdikG?=
 =?us-ascii?Q?Rxju7V21cTcw+/ZQvcfo4eevbkVR/LP+0Gd0iwNTOzZbfVCS++KWHzzT+3nn?=
 =?us-ascii?Q?9o1a3MdlOlfNciPhyAUsf8IP1TYocwmiqhT8KC5x5boeFMJL3+SuJ+ipmv7y?=
 =?us-ascii?Q?F7jczQVzPOPXuwidOFk2RBBhIf2jZDtU62zHPnIsfAaGfdE/9CX7Sht6QTK1?=
 =?us-ascii?Q?PavcHB/ws/Lt/GsXYB6qXoMi3gU3RohEOSz9LDFVt7G3DYVhzwfqGN9faOMX?=
 =?us-ascii?Q?hOTPFLm9Jgh+wM+vpcnunKW5iiFnICgDCMj3OTGRGX2qhRPgtr1AQqCYDQF1?=
 =?us-ascii?Q?39iv78mps1EkdrJR3tK4dCWwLiryahmRGwPgIm/nRNiskFIOsYMmaBMusWLu?=
 =?us-ascii?Q?KxGj8YGguAUZI1I1Whb4sJLLORQb9IAwQ/KXofG8P8WDp7y73pQC7T4Cfefu?=
 =?us-ascii?Q?UPYMlNM+orb7QAYai4PHL4jfBNKjOZC1/IZ/LlotNdgKVpZWnH0xT+GwWgFO?=
 =?us-ascii?Q?cfFicTI8Zafcj/BwufrhBkD1JmbokI9iPnMF4H/6UkFjUpN0oLk2G+G5nXXV?=
 =?us-ascii?Q?szrYmqhDbsFHBU9Fvzm/RJ5dbOMFCQpC+Mwp5/Zwso6C5HZsGjmkSUIy4o0o?=
 =?us-ascii?Q?3ECq6inr9j4KyCKm9xAShG0w9LSJjtS5sYxshEmivJ6JEG1uLO/3pEBb+7bM?=
 =?us-ascii?Q?KCiv9IrN7PB+mYOEzsH+jlwYZR+4qAXHeAQ/K850KQpTGV4NgF3/Fmpv0GmX?=
 =?us-ascii?Q?nV/HqlfoSEkzVSWXpVZi1PKx2I+yT+UGUqqoXhSXiEocs3HdJyuiPKlGWfF4?=
 =?us-ascii?Q?SikrwKD7ujhTSmiv1drfrWBM5sfAnt3fszYMDN7lyBlV8YC2H6fEtazfJuAZ?=
 =?us-ascii?Q?Bg7pyXI9R96TdZJjWTLAtnLCSWBx+3FXAa3iwS8SIzsx1R6WPdsKJJNkmdOp?=
 =?us-ascii?Q?TqcUF404169j5aXfgSpgaEqPhZIK8VAXFq3Sp2+mVUE0R5nu3XiV3/oLELJV?=
 =?us-ascii?Q?2sPwNIJIVRq29HHYmYgYIIThQ4gbnBG06UH+O3v2Dn7uwOk4X0HS10l8XUyt?=
 =?us-ascii?Q?6m8FGgjVPqtgBKb8DARMptOOtgm8fw9SwEfnr/eH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a537e7d3-d7d0-4245-1a9a-08dcac8eb900
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 09:46:56.8523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z/89YhHIo/a9+9l4r+dly1NMKLnEon8j2ZWbuiA9eO62Gq8F3jqtaSCQeJy3Bu+egov25cPrzmkRcNAo3GgDyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7314
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
> Sent: Wednesday, July 24, 2024 10:08 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dp: Clear VSC SDP during post ddi disable routi=
ne
>=20
> Clear VSC SDP if intel_dp_set_infoframes is called from post ddi disable
> routine i.e with the variable of enable as false. This is to avoid an
> infoframes.enable mismatch issue which is caused when pipe is connected
> to eDp which has psr then connected to DPMST. In this case eDp's post ddi
> disable routine does not clear infoframes.enable VSC for the given pipe a=
nd
> DPMST does not recompute VSC SDP and write infoframes.enable which
> causes a mismatch.
>=20
> --v2
> -Make the comment match the code [Jani]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Thanks for all reviews pushed to drm-intel-next
Regards,
Suraj Kandpal
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1e43e32e0519..37cd7165a5b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4369,8 +4369,11 @@ void intel_dp_set_infoframes(struct
> intel_encoder *encoder,
>  	if (!enable && HAS_DSC(dev_priv))
>  		val &=3D ~VDIP_ENABLE_PPS;
>=20
> -	/* When PSR is enabled, this routine doesn't disable VSC DIP */
> -	if (!crtc_state->has_psr)
> +	/*
> +	 * This routine disables VSC DIP if the function is called
> +	 * to disable SDP or if it does not have PSR
> +	 */
> +	if (!enable || !crtc_state->has_psr)
>  		val &=3D ~VIDEO_DIP_ENABLE_VSC_HSW;
>=20
>  	intel_de_write(dev_priv, reg, val);
> --
> 2.43.2

