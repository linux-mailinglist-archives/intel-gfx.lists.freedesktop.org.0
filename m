Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B60EB3561F
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Aug 2025 09:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83B7110E609;
	Tue, 26 Aug 2025 07:53:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sn7DKKE9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FC2410E609
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Aug 2025 07:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756194805; x=1787730805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:reply-to:content-transfer-encoding: mime-version;
 bh=3XBuXEe99c05ljWEackxDdWFr0S11+N5AdqRo0eR+6M=;
 b=Sn7DKKE97gpDV9cPQTUoYWj1mtI0QILG+Df6tP/ucsh0kkTimKsuDlCU
 gN2/nQ42AsTm0qmrpDC2Zukbh+Dame0aI/hZlzN2VoP6yCXASTS2RVN9R
 gjXNl3DkxH6qGOyCElsDP6I39LNu1CAkJwycoXWzmjR/cCzKDjnWt8jOu
 z6+MCFDTkKm3GTuN2ol/SoDPaZxeknYoaY3O2zjB12BFz68/GvS+2nfCe
 euyv5utxCqcfX+m7DeCaW2PrhrKKSl6jJmo+wdDlE8FIJv0CT9OJssasa
 roXDQvTKnfsD1149NbC2EKYh4uC7k2oe0ocsN4vvHlR2cKAbIQSMe8Tz8 Q==;
X-CSE-ConnectionGUID: ochvIWTHSvy9GjPYD2ZD4A==
X-CSE-MsgGUID: +QEPT7xjTiWqP+x1FmIw8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="58477552"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="58477552"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:53:25 -0700
X-CSE-ConnectionGUID: YvMD+xE0S0GJJwdVBYiWpg==
X-CSE-MsgGUID: wkzHAxgoTm6tEP+XZwPc4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="169413637"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 00:53:25 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 00:53:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 26 Aug 2025 00:53:24 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 26 Aug 2025 00:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ewj3hplFyryANzhEYFfKRYxbHFmXF/Ez3d18z82YHTX4Dz+MWoS84bfStDb3d+1i+ohYZDNOHWzEW3FILga2WzEI9P95ZOzKdsD5afGfz6qBcFEJ9x/a2kzwQWxpFFfrS14u6M2MjYh5mHRQF7tFTYQNoBJILQih2UMdR+Y6A6eDJSk0XN8O49RqXOOVcJoQoW4HBM9mzJUNIwoFPfRz25qxRShvJ8zUm9hJvmkyhLSx4uf1jWkgk7J6heIaLCwO/dTx/PErKwRRUOKWSfKxrpxUW73yVlvGI8OiEguwv/Z8WBA/zGoodMTa6xKr0+A1UkNaAjSkC7wL2pP2H0kUoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRPIoVi3DGljRLOvnViJzl4LcDlROxr+jIme+cxLs7k=;
 b=P7B8IgBeBg1yNG853JvS1RQlsHaNrxRU3PJkxijXEcvi9DX+f+6Bg7ytVIqfq93IWBouSpyzPSF+/0lqvER9z2DlIaGDvLXKYFcMBWJati4iq+XsZK8NejPSMRfrz1B9+d69eaVex3a39KiSAr7V4ysdB5v3SgtG+CsTLofyLgMVWq+3fqYdH1HLuYQDJ+1VirfGtqDUq1PMpX8YnNCdfxQIYuHVxr933VM9nK39sQvnxTZW898XdRk7AJexkR5UUmNlJ19N8nzcdeFmScoK53UB0O+Kl0pNJGOF1WJWtMe+Mkg70oYj9cEkPSHMwaPkW1tuQJuuKf1cYg5M4VRPnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7578.namprd11.prod.outlook.com (2603:10b6:8:141::16)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Tue, 26 Aug
 2025 07:53:22 +0000
Received: from DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c]) by DS0PR11MB7578.namprd11.prod.outlook.com
 ([fe80::ba7:2682:35a5:945c%6]) with mapi id 15.20.9052.019; Tue, 26 Aug 2025
 07:53:22 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Srinivas, Vidya" <vidya.srinivas@intel.com>
Subject: RE: [v3] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Topic: [v3] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Thread-Index: AQHcFlh2YAF43Z6iaUqO2b7ky7BpCLR0js+AgAAAWbA=
Date: Tue, 26 Aug 2025 07:53:21 +0000
Message-ID: <DS0PR11MB75786B32DF72A6CB01ED766CA339A@DS0PR11MB7578.namprd11.prod.outlook.com>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250826070547.151296-1-shawn.c.lee@intel.com>
 <bc9e3a90beb590292c58dfab433b3bf10da4231c@intel.com>
In-Reply-To: <bc9e3a90beb590292c58dfab433b3bf10da4231c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7578:EE_|CY5PR11MB6366:EE_
x-ms-office365-filtering-correlation-id: 91d14fbe-ec15-4be1-9810-08dde475a0ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?D82Bzgiml4pDPe+lbfsavoRto4/pFhAagleB/UtW8DsPSR5+n/wwXzJNTLXO?=
 =?us-ascii?Q?Mnm1FYDGs2l30id67ztSoFSIYWFWzHs3+oiZ/olPz2dO1at+7bf5f01p9iJE?=
 =?us-ascii?Q?tm9NtVZXCKquWtGlhW2PgKQJu0W+woM07uDHmSJdhZhkt//IpjImS3Eb23hP?=
 =?us-ascii?Q?ICKDSZxeLjjTaavTxyRVfoWd61pRapO+fZUiNAVq8ivLa7CT5i4z4IEVLOUN?=
 =?us-ascii?Q?akAjkbNe65rqXHd3qdhbOAgh0nl3KtAoGdKrDqrxSvp/xsu5SHnGj2seS9K6?=
 =?us-ascii?Q?KIznnkOI1Y8bwxx/1OZzc5vbB26RAaO7eFBhzUsLTqEf3NjiUgXyKZWGCttm?=
 =?us-ascii?Q?f6xMulZo9ytV52Rr7ixsQ3z4A7visaF5JdOwJJZ30J1CSED7f9BZxHXagtq0?=
 =?us-ascii?Q?m9j4dTb6GnJVeD2Ul5XjjsIcDiEwlQRX5oahdZZYgCTPyRddJ0iIQ+zE8L/J?=
 =?us-ascii?Q?6yZE0dMIuTuUM1GNhOMBw1dtm5elgK6878yMfOVSwcRxgaOISg8Iu5ioPm52?=
 =?us-ascii?Q?r7VgX7l9TcMLifipt6WZZmUQ9k8Wesl04+BJvmleF7dAQyfPIYoTCdDEiLtu?=
 =?us-ascii?Q?qC9Rwccxsuafe7MZb2Aq5zRaIgUQBAnP0xahhg7O+//nEyJdav2S6eXjqghE?=
 =?us-ascii?Q?ENU2dugPc6WQL2LjrohPBnDm0oPlOZOYEqoYaTdb7EC5N112FjinHq+wJUG+?=
 =?us-ascii?Q?XTXHmP0lhYAROYWtQ/xlHbhwXvqCZRpK1+hii+fbE4x5Nj7FlehdMXTavkWO?=
 =?us-ascii?Q?xmmInXXSUGj6EC+FylThlp84nHDc6JPHrq/72tFaq2TMmYCqGHoZyozn24nB?=
 =?us-ascii?Q?pTsSsp2iqEECD8P675QgHBlqM8vE6fUNnk7Bx+TcGBp0Zi2Vgj6l+hkSiNT2?=
 =?us-ascii?Q?gaPabZL0kH7PCJcBQjxR5ZlS99zmxvkqPF9T+kEg679MtQ/k3oksQsk1nHCu?=
 =?us-ascii?Q?yKkWS/dj0DKa9e6LOXV/22dwxNZSv9opRYbWAQrN8Cz9mYlKtwVNBKFOtD3S?=
 =?us-ascii?Q?P0f+xaHUeJ/VnvqTbKN9Sc7zVGxtLkK2sCVnkpyAM+6Q6THnaWBRSVewX5cB?=
 =?us-ascii?Q?tE8or5mI2cl4seShChS37+ZIAJsmxbQchhrsnDvwcwoKEFoWo1O2oGeXqHfy?=
 =?us-ascii?Q?RhUeou+NXQY0idx6zV6o9qmPGFudA1wigh+NNY1CRUSQB+5mBChcxGz40ZT+?=
 =?us-ascii?Q?PgOIR+AxOnnpCyM48jXHQfPscjPlfQL82EWwF3CDREpJGpGiMn4OdHmZsl3z?=
 =?us-ascii?Q?s/NiF8p2Gm0EFrxaXPuUtBtqQTGqxzrWZefpin0upY7NNOLBja0E5UEWbSIh?=
 =?us-ascii?Q?/vClKQUsJ+zfdMKdZkyLXE0C8Ec6dINJ0oXrpks175SxL39KtNpB6ONWVze+?=
 =?us-ascii?Q?aXTkeEekxxawP93c1OWj/snZnepPrhrHA5XhLkh9VeSxHyPfcMKwsYCWpZ9w?=
 =?us-ascii?Q?bRWwBPowrKTGP9myekxXqr8WIO8SpJ3bvp/YZ8n3pnLq369JsW8LqeKLlbJZ?=
 =?us-ascii?Q?9/5Jdbq+rBmdtow=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7578.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i2CJK740te6sf4hLnvfgXv7jAUiGFAon6SRFg6jYZyEc4lpSB65XDbJ5zzL1?=
 =?us-ascii?Q?emk1DVQLIJQj4yAiz7okDZ3tQsW3/Zf44KXBrTyRAtlZDOwpzIev/JIrfcKf?=
 =?us-ascii?Q?DDQd4ITEGBZGqCi2qSHIiAo9wgkVTKDa6syMCqrU0GOPz/bVkDwqM590GWa5?=
 =?us-ascii?Q?SIc5BEyfGaLogcKpzfsCCvGd3/Znm5wKAb81zoeuuQCDoNzRnCWmPX/x79ae?=
 =?us-ascii?Q?9bBp7lYUlNzJq2yWO3dYR63AKpk0kqcYs/sruyyg6M+/rj8YQlARpI7bBDyM?=
 =?us-ascii?Q?TE6kVlOcNyNCHOdv91ldPq6TS68aWLLosfpoynKLrXqtafn+GPkieqBFwRkR?=
 =?us-ascii?Q?4VL3oIS8YYJjdUlvKdzSynJjRG9mUdv0QDFlCRPbBJY6Uf0gXM3i0T+uy/90?=
 =?us-ascii?Q?XUveHSMpm/t4mA0cTPTGVEURugNGBU0WOEAJXfSOrNjfECIpLPeoXtEbeiDD?=
 =?us-ascii?Q?P74OIqfXKFg1PaSL2oVsNPTyQOwWyems2ZLlKZHRg3HG3cOnmpRIW2P8EbUC?=
 =?us-ascii?Q?oBnDkFm8yjmAZuc4szf88v3ALzmqyakZaqLZDRqb3T82ZGCxbqN7uUD2op6D?=
 =?us-ascii?Q?QcudtCdkEW/OxfD02SKxP09xJzQThQIHrIW54iKEwcIOUXp+qw51DJaAf3Xk?=
 =?us-ascii?Q?NlFYY/XELQEdKwsZpHT1vEQT5+75fEAKZGRLC6x/QdAMRnxfeKm4FUkeiiVr?=
 =?us-ascii?Q?BhQWyz5X+p6LAW1EjyX+BRh+DFPAG2hVVeCnB+3Hb+iKwZ3x2ZDDaO4LXzVE?=
 =?us-ascii?Q?NFmYIzBftLn2oBjnmTwR1M/atW9PuDa4iogN3/s6apCXQ6UShKhjTUms26pJ?=
 =?us-ascii?Q?zhtxSyGlp92W/anU8inxJ4ySN7igiWvFZknXkugKVSk3+mI3nTohSZHEpSIc?=
 =?us-ascii?Q?s+sCAaPSC/wPHtjUsJfLtN6IgjlxChY4GFnuQ3VGrTfNfwd68T/nkxdUHh5q?=
 =?us-ascii?Q?gWUsiJlbHwnH7LtTZ+6KxcR3zU0aItSbjQyKIbpC+YfjNj8lDFp66EuzcD33?=
 =?us-ascii?Q?rFQ2HWe9gJBBt2zD+Q7ATlzfrMrrjRpcfc/CXvDFLIOJCKzzSr86bBl1L7Dr?=
 =?us-ascii?Q?38NAZBq3jmQJUKcdZfXJhtQsgSrsM+lCcuXZLHCFJvq/RtrGtEmK+1DFIVhm?=
 =?us-ascii?Q?sGouy/xjNvMEFPCfMT5fNzTYWQvnwuCu+sykq9RFiINmtS5pWx6m2Ewy0cwu?=
 =?us-ascii?Q?MNbWdCzTaEwCxK0lmRvrNHEQPsZIbPPAVkctmyrw2D/TYkTZVc7Elcm4eEEY?=
 =?us-ascii?Q?01CCiXU8wRWhqn+4gpv6GlQ+t/EJxLTwOZqkIZJIrKJTile/R6TveHdFwOoh?=
 =?us-ascii?Q?YyrCZSyuSQmr2kycPoi0G2lh1nNH0x0lfaMjmoWEQJ6gQ+KMUtEN+XQpfRwG?=
 =?us-ascii?Q?6XFlzLOw12A4GsIsRZa9wh6Z8MOYqv+R0MMaMVTppL0YiL86yt7ZcUVjcEoq?=
 =?us-ascii?Q?O1XHVvcuTa1SwGWuKhj+0qvREgkVMBhPxsjbiEISSRsPfdr5+QuFJOwdbtX2?=
 =?us-ascii?Q?wA1O3ppt3XiwxqTERUcOISaiU5rmkRk19KqlGvoyGR84nodAcDxR3zbSEerd?=
 =?us-ascii?Q?4iYMrH4XWF/OyQWNJRaWNEzZLAjqoY+rSA7oU2C+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7578.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91d14fbe-ec15-4be1-9810-08dde475a0ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2025 07:53:21.9526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IOA1N4tfXYINR/SyeS936XOrRXkIGKONckr2LTpvXPMzNPbEpFNSEyYk6oegIR7fs37bXKOXfoGCfZYS/iQd9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
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
Reply-To: "20250826070547.151296-1-shawn.c.lee@intel.com"
 <20250826070547.151296-1-shawn.c.lee@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 26 Aug 2025, Nikula, Jani <jani.nikula@intel.com> wrote:
>On Tue, 26 Aug 2025, Lee Shawn C <shawn.c.lee@intel.com> wrote:
>> While performing HDMI compliance testing, test equipment may request=20
>> different bpc output for signal measurement. However, display driver=20
>> typically determines the maximum available bpc based on HW bandwidth.
>>
>> Introduce a new debugfs that allows user to configure dedicated bpc=20
>> manually, and making HDMI compliance test much easier.
>
>I don't know what the patch does, but it certainly has nothing to do with =
what the commit message says!
>

I will update commit message since this patch is completely different from =
before.

Best regards,
Shawn

>BR,
>Jani.
>
>
>>
>> v2: Using exist variable max_requested_bpc.
>> v3: Extend "intel_force_link_bpp" to support HDMI as suggested by Imre.
>>
>> Cc: Shankar Uma <uma.shankar@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 5 +----
>>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 4 ++++
>>  drivers/gpu/drm/i915/display/intel_link_bw.c | 6 +-----
>>  3 files changed, 6 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c=20
>> b/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> index 108ebd97f9e4..b31fb1e4bc1a 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> @@ -136,11 +136,8 @@ static int g4x_hdmi_compute_config(struct intel_enc=
oder *encoder,
>>  	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state-=
>uapi.state);
>>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>> =20
>> -	if (HAS_PCH_SPLIT(display)) {
>> +	if (HAS_PCH_SPLIT(display))
>>  		crtc_state->has_pch_encoder =3D true;
>> -		if (!intel_fdi_compute_pipe_bpp(crtc_state))
>> -			return -EINVAL;
>> -	}
>> =20
>>  	if (display->platform.g4x)
>>  		crtc_state->has_hdmi_sink =3D g4x_compute_has_hdmi_sink(state, crtc);=
=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c=20
>> b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> index cbee628eb26b..027e8ed0cea8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> @@ -55,6 +55,7 @@
>>  #include "intel_display_regs.h"
>>  #include "intel_display_types.h"
>>  #include "intel_dp.h"
>> +#include "intel_fdi.h"
>>  #include "intel_gmbus.h"
>>  #include "intel_hdcp.h"
>>  #include "intel_hdcp_regs.h"
>> @@ -2345,6 +2346,9 @@ int intel_hdmi_compute_config(struct intel_encoder=
 *encoder,
>>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>>  		pipe_config->pixel_multiplier =3D 2;
>> =20
>> +	if (!intel_fdi_compute_pipe_bpp(pipe_config))
>> +		return -EINVAL;
>> +
>>  	pipe_config->has_audio =3D
>>  		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
>>  		intel_audio_compute_config(encoder, pipe_config, conn_state); diff=20
>> --git a/drivers/gpu/drm/i915/display/intel_link_bw.c=20
>> b/drivers/gpu/drm/i915/display/intel_link_bw.c
>> index 3caef7f9c7c4..d194a366ff10 100644
>> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
>> @@ -449,6 +449,7 @@ void intel_link_bw_connector_debugfs_add(struct inte=
l_connector *connector)
>>  	switch (connector->base.connector_type) {
>>  	case DRM_MODE_CONNECTOR_DisplayPort:
>>  	case DRM_MODE_CONNECTOR_eDP:
>> +	case DRM_MODE_CONNECTOR_HDMIA:
>>  		break;
>>  	case DRM_MODE_CONNECTOR_VGA:
>>  	case DRM_MODE_CONNECTOR_SVIDEO:
>> @@ -457,11 +458,6 @@ void intel_link_bw_connector_debugfs_add(struct int=
el_connector *connector)
>>  		if (HAS_FDI(display))
>>  			break;
>> =20
>> -		return;
>> -	case DRM_MODE_CONNECTOR_HDMIA:
>> -		if (HAS_FDI(display) && !HAS_DDI(display))
>> -			break;
>> -
>>  		return;
>>  	default:
>>  		return;
>
>--
>Jani Nikula, Intel
