Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJZ6L8fCjWlt6gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:08:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0645912D4D8
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 13:08:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A4210E72C;
	Thu, 12 Feb 2026 12:08:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgg/cFEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E24510E728;
 Thu, 12 Feb 2026 12:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770898116; x=1802434116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/3uUAcVHWN1B/RdjiuoG92kwhBm5XzW3qonbs8HSrhU=;
 b=mgg/cFEEhSCgrGq73gJyUtLcVgpQNCTCxEjyUJrIfxDC4784J4Nw6pby
 KTcRzUhfwtgmYcZxcM22SLIzqR+ym33TBBtyXd1wc7TrinCnYoYtEMd5a
 rTX+4Zreo705k6Mbne3+5hQEgqKjMETfRcYpYo6Ddpd9Il6lNOujR/7up
 N/Um8IVOOtH4Lte7spCihQiom1VMNPpPw2krVLEJ92mNNMP0XpahPF/nA
 0Y3bZnRKfKjlG9anGLYyZIMnDOPOpC/a4Mrt3ldp0HFLMVPe3ffSYR/w/
 EChkRrKDSilGirrwiRyEARfgLEAsVr0dE+PysCiy/O71665c7IwluDEkT Q==;
X-CSE-ConnectionGUID: CdM8FEhKQqmd5CLxY8oiJA==
X-CSE-MsgGUID: iv5MFverROGbvgbPbQInKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="94708438"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="94708438"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:08:35 -0800
X-CSE-ConnectionGUID: P2+CWou5TPOVVXyc9MN0aA==
X-CSE-MsgGUID: 6hOF8q9QQJGk8QJnmwvKxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="211846490"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 04:08:35 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 04:08:34 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 04:08:34 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.43)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 04:08:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LYnssPjH8+/P0/pwb4wXMqSiRHnE6PkSPcsH3hlKXFCnyR07kCcYH+05zaRJVqP2JG3l81MVWCqfKWxaTbFFlQhuzP768VNjw1MbxdgUZaS2F20EqJ3sGPE+ENo4Lg0cbBXcHB5Fej5oX/flHJymlUVWi1vSSksl4KALYeWBWZuiunmpF+LS/Qcvi4IZzRo/s43ertUdA/A6AGlFN2oDzeF6nLLsLaHznlkiYY2pqzGE6/NdUGZZ3dqhpv8VncDWO46Xl7ouISSFd/LlHlqj8VkL59Fw95KOTTyJj9+Q2KQn8ABJua3GXRC3OAq0aT9e9UxVuFgT9ZDBONoppeOYnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/3uUAcVHWN1B/RdjiuoG92kwhBm5XzW3qonbs8HSrhU=;
 b=yoFiaSXjDgNF3olHfvonMfwZMwxpYOryiQy10qPrBiFIl/Fz7GPHOVX40j5+JHGX1LXZYR4YPJEFoEgQ5vvcY0xD49iU7ILPe4G5kgePcuUWhMARDu82kOlqH4NF20lO5nAS+NeMcAxmcfVv5iWRe8AVzcgQL0XDB2nQExD8577aFMTWpIezUj3RU0beFdXaWhm+tnz9jEfIcMVRkp6mOOu88vQUzusqPTyz67iPzDKE+cNvkF4RwcyT4iO8pIDN0mFk69fGVz0MekpNX8UDOR3TG5xyY2rSMwjz+0BWDiVzhQ9RIc/fyh+PhFwWg4Xu3GPyI2T7c2Mmw7NowNB0Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9611.10; Thu, 12 Feb 2026 12:08:26 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9611.008; Thu, 12 Feb 2026
 12:08:26 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v4 00/20] Make Display free from i915_reg.h
Thread-Topic: [v4 00/20] Make Display free from i915_reg.h
Thread-Index: AQHcloHD2qp/PytMrEG2cqgxHf+8qLV9f2AAgAAqTcCAAVmHoA==
Date: Thu, 12 Feb 2026 12:08:26 +0000
Message-ID: <DM4PR11MB636079C72954C99A353489C7F460A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <8db65f70ee8ee5e0f0b77b6b7b5c0405e1bc42b6@intel.com>
 <DM4PR11MB6360A896E2D3DC7AD71C9D97F463A@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360A896E2D3DC7AD71C9D97F463A@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS0PR11MB7382:EE_
x-ms-office365-filtering-correlation-id: 2f09c72a-3db4-4f72-1f5f-08de6a2f6d64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vYsAw6TnWO8OYVKF4tL/DOS6ZpNIHP/NKuck1DTg5IWNOv+32gk2yZvDkKNi?=
 =?us-ascii?Q?Q3aDEadF52Jhj1YgMUHqX9xok3XWKNzbWsmqHA2qhln67h+A1HOQQm/WvEgm?=
 =?us-ascii?Q?bfZ5ON1VX5U6WHqPxZb4ovSUii+/nXgUcCuA50Lu2FllLH6P97+ZBAVlcSaK?=
 =?us-ascii?Q?fRMly2iKo5R66+VC3t1649c8ZjfYPr8EBjdB2ctYf1FoZIAzVz1SJ9xNi3Y/?=
 =?us-ascii?Q?DQqrRI2XEXwxO+iYlew0cGVjXhb9lRECUbmkZi5+hGqjHt/ap1c7ON0QyV5N?=
 =?us-ascii?Q?masBH1KLE1RJj/wjzBXhX3SWHVZ3K9kj3vISWLZ8LWFSDR3rftVl+DAjFjqw?=
 =?us-ascii?Q?AL5PQTpdr1I+6ZkiMMnCBKQSLhtcIlG9inv3h5Ir5RY5ggp3ZWGZDP+Wcgew?=
 =?us-ascii?Q?Iq5y0pw/Qr1a17jKkJ1d7sazhG81cCAJj7lMciqxHPqLr+vFihvavgQT93V6?=
 =?us-ascii?Q?ezCT4exjcXYE3yIyhqLHXwitewApocGD5aCTQOwTaxQ3UJo1jpws4pSaeZGx?=
 =?us-ascii?Q?wIe/zQO8FNGGKKjjSUAE50rx3Ma164VOSCwZ/v1tZTVm8Q4QdTcFwCOzCdV8?=
 =?us-ascii?Q?wJme/WrezJXxbQVmEpBRXIMKLyuo/oaKyPNh9mHSzWt+CmQKzNpEoZ8To/9w?=
 =?us-ascii?Q?YHgjJ6EFjkmsjQv/RFXrRlRUzeYcpmHmUlGhG5Ai20ietO5jlwn94ntIxpEl?=
 =?us-ascii?Q?J3gMdGJuKVDhYexybGhp07Kz6hR1/oouk01BDLuHdivFVvrTNcrKcR8buWqK?=
 =?us-ascii?Q?/RSWHSD0DAcTp6TJU4fFRd6Tz3yLl8ZJeFOySvzNWLRguCTwpUAnZs5E3adL?=
 =?us-ascii?Q?OxmJyc7MisnrC3bWofJegoso6fPq0T+2Rhgg+92d1dbrCbipl11wXWkZhQg2?=
 =?us-ascii?Q?XVnbGDyyzS1wmtJOVokq8crrn2rSWJUHf9lHL8VD5Y3E2LXBrpUTvrwloduy?=
 =?us-ascii?Q?X+EfyrXk4IyG9KAWKFhe88c7LyyAJ9dYzOX3zOH/wXrxEh1x9BSPasZdUMIu?=
 =?us-ascii?Q?eqMmCFJPT5n/VyyNQ8DCpywqyX1WWXj4wlfTQecd1SZeF/uUftB5s8Fj9+O+?=
 =?us-ascii?Q?vzvwFrG58GlqpsY+vstUPV1xtEKMRGlic5ePnVeS7XYkeM0cpEKMCtnuFHUg?=
 =?us-ascii?Q?SIg30QOgSPPzcY86AKkFpnW8AJhzgXdUMeXMd628NJJb+0TCrfvD7GqBg0sC?=
 =?us-ascii?Q?emcaP6+JE98r96bVUYzxreBDPCgApXbTBJnt4t/B1VkYrVNw/G9PnoCYgC7i?=
 =?us-ascii?Q?okN9bAmFqMI+k/9mmRm78W+a3WiMTfkPYvN3iznW8XKOnrkD0hYjpz8+VRYs?=
 =?us-ascii?Q?govt2pE/8/hqWFUqVooKlCG+eJw1kDu2JjyzfDuM0Kka6AhhNnSXg077K6/o?=
 =?us-ascii?Q?BLwSSsHWDW6k+K4k+gvrZNXSZEqvkYFQrMNB16NT3ACV33dMXH7Hpx4x8JIi?=
 =?us-ascii?Q?olDQnzCu9xy2xzvDMEfdALB1k9xctmB/6/6rpGTBQRuAnnTDloxg/a92oybE?=
 =?us-ascii?Q?KFg04S/wpFdUpE8pEWLCNywUoLV2/n3aSBKMbaFpppnzfTNW+n7gj88hwA+k?=
 =?us-ascii?Q?NDw6SD05KFkCKREArOMA9IImSPoSCO+xx+85DraOlGLKQKsrI8P9SRwraUTb?=
 =?us-ascii?Q?MHd41svWEhTIJfylu+sGIlc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tWqWVMkW5n8A0ptJwUMeZ1f8IddKBzs5Tk03q3Gy0n0Nz2JWWEzozFbSqI7J?=
 =?us-ascii?Q?qDYMuCMWs4vf5OYZpjElw5jX6ynPfef/ZJkG/i1bdYOrsBK9+dNbIXb9puG1?=
 =?us-ascii?Q?QlEkq1Bf2/J4hmTDAwn+YYR1+2EimuwT69JvrbVOzE2pD41MP+bF5q8K3kos?=
 =?us-ascii?Q?spPjBjCh6P3PdDh54CELSDE3lK1hTiKkbPq4aNkkXi4/BvE0sRbiiqcjyIbU?=
 =?us-ascii?Q?/rec0Kgeikrdsk4ONJBTalYNIK1iU4t5b5YZgMFar+P95od5EFVa+uznV27Z?=
 =?us-ascii?Q?SOYu2uAVuoQxSDBW23/EgV3XdLT6pPqs2OvJzGdTYcsQh8bBQtl4BAcHEtrA?=
 =?us-ascii?Q?FCqVca9GVpNICxWyjeQQKYJmEtjfx21mhFqVYCF0f7p6gQGyqx8FoKi0M25a?=
 =?us-ascii?Q?YS06KYyfx24xCjHrpgIr31UkuU4Mp0T8fz/5A+MTH4vbE+QBsy580HwU8ogl?=
 =?us-ascii?Q?71VuQ96U5kFmOGI9bPoN/DhZRejpzkFv8moPmTKhZ6mJY/5JuLuGcnnF+QTS?=
 =?us-ascii?Q?Wl8lpTWJ503BhThJgmuKn/uY3nfdxgs2QrpYVI67N6WkjhAkLdhGy3NaJK51?=
 =?us-ascii?Q?sfcG0b6PQufkslZdKh2nQH+yikjsx5Hx1VuYxhArCXjX5UR2Sh1M3rhFEPkA?=
 =?us-ascii?Q?G9abwvBeC5ed9yzpg2NwG9EaLvSWEzx8fthdqw061pcyjNVpSSOWMT7TACC2?=
 =?us-ascii?Q?y6RNPazoyEfVXEbm1YidleaEDLtX6oLZmmnTTIgoWn4tz1XsxRjCpTU+597+?=
 =?us-ascii?Q?MQECz0TMbKGgPwgOhVYU35UCCuduJUI2HRGEimF8pEygPnbKawaBLn9caSlh?=
 =?us-ascii?Q?prYzPvi9a6EASxdlHtT35C3VLFAoS1OyDjhAr+Lg18jJ0wnteJkNgf7gRVPE?=
 =?us-ascii?Q?cak2rBkzKsZke2pjh/z1EMtQkU+byoPYErzGWIk2kgM6Vz0SZ6NeJm3GWijF?=
 =?us-ascii?Q?qy6Half8Ab3mn3W+iPERUKvxrGsRAJ1NfUEsYdxkeQd7z68arpzA8srwMa6M?=
 =?us-ascii?Q?Qm/OJEOqsXHGpGV1Cv9YSacAzsHZ1DgYqRkRSBq68DSL6vFcBndW9xl7/i//?=
 =?us-ascii?Q?mOjvVqY5EQxDY4rHa98vAmF89TTO6WGTFUh7sQHRBM7RsboqHNh9uWcHPKMQ?=
 =?us-ascii?Q?JlHXFZyhmc1sUGsUMafQryOolnJytaQyDdyIHp38O6TzdbZa+D6NFBaSjcPV?=
 =?us-ascii?Q?lC1OOjIxgiMRSCVHF6YPsTTJNE4i9BNw21qhSyQrCINu7cWxHfAFjT/29gsz?=
 =?us-ascii?Q?NgHR+kUXFoPPW4L2AgYe3FN9d9SQLyxFnpOQCMmoVC+003rczTQIF9CKNkXW?=
 =?us-ascii?Q?hXDeHW44SF1qVX1Pnn47CSZB8g/cY6aI4UlDf34IOCxvEJZC8EwYOxlOQwxi?=
 =?us-ascii?Q?rgghTHJtOR5uxl82dzN1kB023a7SsfqJRNecYApYlDD0wL/ENkod6cY4ysqk?=
 =?us-ascii?Q?vom5QpA5NB/7jwDwNMSqrNF7gjhhRVM2QXKbDync/pM1+KBfKuc0HV9/5Bkv?=
 =?us-ascii?Q?WScrA8UVZFUap7cES/uwFU9Uyf7xO0qUjVpTaEG9500iDlF+MfmIN43x9WSE?=
 =?us-ascii?Q?oBlykFDEEFuD9Ct787ml8OnvYshnbu4d39mC2KKmu8OPV5H0GT0qSMU8f+Hi?=
 =?us-ascii?Q?cqO7lGWSpQAjo06DEdr8cOEshhh2+/wzJBWBDtaZK+cO7tRzaPkpiem54wS3?=
 =?us-ascii?Q?lbxQh7O1KRijDls4yq+D5j2ED+KQvECX+lUTARTYt4DU899GWHRwgECm6WVu?=
 =?us-ascii?Q?ZOYAVCl+Tw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f09c72a-3db4-4f72-1f5f-08de6a2f6d64
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2026 12:08:26.4395 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9W5b/ZW/W1tjMq65U3Loj1pZQoJAOJ7jrchseZ2R9QGkOIgMAP9X+kQPEVyJxQ0/KcBL215RFdNJAlYGKIhgRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7382
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0645912D4D8
X-Rspamd-Action: no action



> -----Original Message-----
> From: Shankar, Uma
> Sent: Wednesday, February 11, 2026 9:03 PM
> To: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
; intel-
> xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com
> Subject: RE: [v4 00/20] Make Display free from i915_reg.h
>=20
>=20
>=20
> > -----Original Message-----
> > From: Nikula, Jani <jani.nikula@intel.com>
> > Sent: Wednesday, February 11, 2026 6:29 PM
> > To: Shankar, Uma <uma.shankar@intel.com>;
> > intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Cc: ville.syrjala@linux.intel.com; Shankar, Uma
> > <uma.shankar@intel.com>
> > Subject: Re: [v4 00/20] Make Display free from i915_reg.h
> >
> > On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > > Move the common register definition to per feature header which
> > > makes display files free from including i915_reg.h.
> > > This will help avoid dupicate definitions and includes and can serve
> > > as a common file for xe, i915 and display module.
> >
> > Good stuff, thanks. I think it's all R-b now. Please use SPDX in patch
> > 14 while applying.
>=20
> Sure, will use SPDX while merging in patch14.
>=20
> Thanks a lot Jani for the review, valuable feedback and suggestions.

Changes pushed to drm-intel-next. Thanks for the review and feedback.

Regards,
Uma Shankar

> > Oh, and a follow-up patch could remove
> > drivers/gpu/drm/xe/compat-i915-headers/i915_reg.h.
>=20
> Sure, will send that out.
>=20
> Regards,
> Uma Shankar
>=20
> > BR,
> > Jani.
> >
> > --
> > Jani Nikula, Intel
