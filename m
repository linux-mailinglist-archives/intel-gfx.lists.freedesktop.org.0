Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4DDC88035
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8E510E0F7;
	Wed, 26 Nov 2025 04:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jin+W5R3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 304C210E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 04:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764129785; x=1795665785;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2XCV0l5WuXrmacxKX8+fWKiiqYANr6JqpLF5oOxfx4w=;
 b=jin+W5R3jVcQ9rvrs+mftJj4yisWVBEWxHauwpWG26U1VfAo6HMQ+UDA
 kE849KSkv/Fp6BPXsN8vkFt/AWB/TaUcr2VlIBF0Ximo33vG5HwejR4+M
 po5tWCHM01v7igvYcuFQqHEtaQuCnPGEE7L/htnaSiuR5qRQTtanvwtEc
 we6PBOv1To2P+RiW1mKWbfPtNUUSeXDVHjKweC5MAumo+7Zm2e5R5jYy/
 LDH4t4eb9WjWLjuVS1QKNXKrXc6L77knMQxYYCDQsUW0yT4uFQEL6Q7ix
 939issGksCsPdC3dBhbckkxAh7UTZa9UGwQzQZRCwYCjbbRp4HQh6ceO+ w==;
X-CSE-ConnectionGUID: ex31SRXjQlCwD99l0ydvhA==
X-CSE-MsgGUID: 4FB1fLAESKSqXMQ2qDIKKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77633610"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="77633610"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:03:05 -0800
X-CSE-ConnectionGUID: hW6LcDaBQbayCfwHbEUNsw==
X-CSE-MsgGUID: XNLP9G/IQpmooEaVcfhXXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192617899"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:03:05 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:03:04 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:03:04 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:03:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZRSSF6Fh6G7xtuu8oZxpWp1pwQKXV3qzhdBK1/qPBYiHxCNc4P6mJriL7Knw6z4AVgF1YHhTTgXz0X0I+NCclNevk0hBRU3CDrD/h9Zztgl+S8IaLa6qXRm41m0HMll4EUGNkILlePBrywRGa+E1JyLPj8F50HYZBvN8IwMjUKPN6BB7IzaYR7hYovXQyjGmChsMgGp5lEgp8VfRl5Atn2bs8ROLgpXTnNfSK6LLxsSJjT7dC1xZ5B42NDmQ/XqcuQ+KwHfMpm7VR1yHeEdTbwW7BFqcdl7HWXI+PEDl2YvUFhxs33mUeJbvGfN21QTsH/lpk3pANbp4xyazojgPuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/QEqauubKVWBQ2FUklva1zTI5rYs5ZryEoqF0hzZ1YA=;
 b=klOR0oYz+XGDHLbsxJh15znTwqSUB3x1du8RXFr1NsYEfiBwEHoZKnE7BT75Q5Q0JxkabUZnNe9adsvomlUHyhIhA2ugC45k2WexzBfivrV45oPkOFsQvt1AwhzGDoA3Zv/86Ez0B3XzezrhbB8GCSUwuAEAb+urRw2snXjb3oGLGlbqAOg04h9nDtQFFnDjYvCZqY1vRDiCRs+NfANAzuM0JHYwhuZK6DMtmTRM6Ad4y3GBcJZ35eGxrm5spa4cREyoExnRGDqIA6gX2ZWTHAWO4oQpTTMV+MFGIuM6KEaYvdeRZYvqgN/kgMPLLk+r5sdkM08sf2nTRTWEe1CLcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) by
 MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9366.11; Wed, 26 Nov 2025 04:02:54 +0000
Received: from DS7PR11MB6197.namprd11.prod.outlook.com
 ([fe80::94d6:d249:877b:756b]) by DS7PR11MB6197.namprd11.prod.outlook.com
 ([fe80::94d6:d249:877b:756b%5]) with mapi id 15.20.9343.016; Wed, 26 Nov 2025
 04:02:54 +0000
From: "Upadhyay, Tejas" <tejas.upadhyay@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>, "Kumar G, Naresh"
 <naresh.kumar.g@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Thread-Topic: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitialized
 fence usage in xe_pagefault_handle_vma
Thread-Index: AQHcXfXVreZpZOmX+Ey/AjSNPlFCy7UENtmAgAAf95A=
Date: Wed, 26 Nov 2025 04:02:54 +0000
Message-ID: <DS7PR11MB6197158210E54E897CA68FF281DEA@DS7PR11MB6197.namprd11.prod.outlook.com>
References: <20251125101841.2325554-2-naresh.kumar.g@intel.com>
 <aSZg0+/3HaV3L26e@lstrano-desk.jf.intel.com>
In-Reply-To: <aSZg0+/3HaV3L26e@lstrano-desk.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB6197:EE_|MW3PR11MB4748:EE_
x-ms-office365-filtering-correlation-id: d08d9c8e-49fc-4749-2f5b-08de2ca0acf7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?EtEhiWUjYBUE24PSc6//9e9RskUEvTG071uCIludti8zn9C8Rh1V8+qbLqLZ?=
 =?us-ascii?Q?SzplgCS9xKAHGgrZHTs3EuuX34uEnn3Ry867nCmVToUuaClvhjsZxtunC1py?=
 =?us-ascii?Q?rjETO8HiTPFZZ+s4L0JjGRPsi+sYMFMEhU0juUXdxZhYcleXaVvqoRCBd2bE?=
 =?us-ascii?Q?KATyciGJ53uiWT4pY7qJltwAT6zfB1B7PjsBX6dX9+DlZImqG01ZGO6BRvSw?=
 =?us-ascii?Q?GEs9MEy7sedkL1ZEgm6kJhFwQ7FW3k+5AxnhI4nJ0Nj3rA6biZ2ZPjt4Qmgt?=
 =?us-ascii?Q?Y+Q6vC/sCew94oyhFNle/FJL11rO4dxdquAABzdq+avyiEvQBDut94f9x+JO?=
 =?us-ascii?Q?jExJGvmUT8xqfy031XIUDXgSTnyhQmcGbr/djYESn1wRa8eO8YCQ+sAZ4yLB?=
 =?us-ascii?Q?Evx/ShcZ0SUiPEl1pCmL93Bz6idwAlQjDy5xMEXIV6bS1PSLU8wQQv4dqcej?=
 =?us-ascii?Q?O4h0uc4KIcAZQ4lAb4c5zt1+5q50qcEF3ISkzGoRtAcd5fDEbi4E0JEbhznu?=
 =?us-ascii?Q?87fJ8vsNhMdJMxHaRhozi7Z0FnyUds8UhF3FfUDOLhO6hvYSMSCT9glldzTC?=
 =?us-ascii?Q?a1T7vcHBFPGO+woSxCs5r83LzMfYIaqwRRumDD2C5XzH1n06lHNhFLt1AZ1t?=
 =?us-ascii?Q?TMHen6pf5Gu9M5yFEIehXlnexpUQ4vOfDKgPThAPiKL7pHuYIt4ZdakEDUXJ?=
 =?us-ascii?Q?WVVMTEQ2EK6HpErO0TsI2+YYURus4JHu+NNhDMLqQgd1mJy9Ovl9dRZ6wEWR?=
 =?us-ascii?Q?bZVaW4wjlwHwQ/vXKLLBz9JCzYDms9z2grvk7z0/HcfK+RmMjZkEL+8m9L7T?=
 =?us-ascii?Q?p6PzawCVauHM3JL0iEQDeb/ByOri6H0PGZ5Ww+NXBE4Hx/q8nXWJEOX6jjXi?=
 =?us-ascii?Q?ZrFApql0a7eZuPYeE0Yim2CYaJ3LyJ9aT9YjwYzfo97kZGQIfbuV7ZLxGSOh?=
 =?us-ascii?Q?rPnIuyQ4OKsoaw+0DK3fTRgCcwpdcAKkr8DyF+hVeNDQVcEkakdQnX7CLMDy?=
 =?us-ascii?Q?93gcTP+KVcf/55pGOZVMw0PpjPBjqBfbeD9kj9wVF0tu5gIR8LTQDcBz9Ehw?=
 =?us-ascii?Q?ZWbQnJ39Ph1vJQ4agkOaRtXFOhpJF85ubtvFHjvNsP27NyMBX+Af/wJKeP9f?=
 =?us-ascii?Q?BNO17JcSV3SrTt31TKQHpf/saS4UEwe/bWB75pUyIx47iZmdCF/HGWkX8wzS?=
 =?us-ascii?Q?NgkV4iJ3NoSoNkuk4wNcyeamtsOx3xuFwYPK0pXxlKHH9Qt4ZaL+YSsjI/o9?=
 =?us-ascii?Q?QhK7l5i6LSHYJybrzbc1bUtkHrWkPvqKOP9gMk/Xn8/EUNBdfFUAeIlN6tXk?=
 =?us-ascii?Q?cREKJkLzzgR8xlLvaOWTiwdc+dRXkMAxh8ydwpJVX6lUEFeUgI0fw2qA4vMP?=
 =?us-ascii?Q?NoJThBRl/3gLRdxQUcQJgzbscNKvVpUpsd12hla7VOWjtm+aYO8nltfXW9XV?=
 =?us-ascii?Q?D7Ue4wf9hvGFP21xyXtGZz2D5Bu+5vDrxMMd5jN9OD188TxL57/CQs8QooDB?=
 =?us-ascii?Q?oaNij42sJZpuRR/B1aWfJBp2A6IlI0nHwH25?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB6197.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H1xBGLZE02f/WOdeG9G8c4NKKNs0z7u/fFPyOovPsN/rDXFqv1hAemjiDeGc?=
 =?us-ascii?Q?P0mfQUvxxfFCkKkm0Q26GiFOt/BfLZ/5eiyYn2DQ/IsPAAYlqY4JjEGunbYS?=
 =?us-ascii?Q?SWkpBye7OV+oav5kWCeGm/GOuvcHF4CZrRvLe/9buR8dRYeMkAboBF5aP4ir?=
 =?us-ascii?Q?jt6rO4epPUemZB88x2w6f7B5L77Rdknf0MhnJQOomfvSsZ2Nx1OStI1O1AQ+?=
 =?us-ascii?Q?7mx92dJ5JbUBlbKgRU3tpjlMYfpfb2q3ZXBfWdhWNK8MtDn5Wi/LGdRalFkb?=
 =?us-ascii?Q?m5lpZsq2YOU4hkIq6v+kBQF03YQXEvGt5LTuPaGjC2xgmPbanSvTlFO1LZYS?=
 =?us-ascii?Q?sL8GVGDtdw9fy9gEe5WfVrHLP35GYYQaxoC6vbzQpvUduEqxRJ8/jaOgfQYT?=
 =?us-ascii?Q?KIQBD6wqU/kXGFh6noiD21MWYbt85GVoiirt0E01JMI4neHF/cOeCKsOoM+/?=
 =?us-ascii?Q?J8wxNco0B6jAOwvSqbu92AHCLeEmdzomsXhRcadOIQcEJRHqtXsfm6dlgi5x?=
 =?us-ascii?Q?nZkEiSSrmuvKmcibQiyJF0BbR3j+Wi0R4lHHL5fX8JsVjKvkIldoBB86Fhzg?=
 =?us-ascii?Q?jZBXfSl3rjqAO2hP1YPYyd46vRl7gdCDgGsKPdl29cIeFIEaGFBc1YVdCih1?=
 =?us-ascii?Q?5oXsZtlyp8WzkYEvise934yX9ECRadph/BopPBntSv3sqkqR7IqH8BirvSrk?=
 =?us-ascii?Q?QQC3oDOiq9cnjtl21udhJa6u7tepZB8L5p0gBCqZtXf4aWFsZUVlu0gbmGN6?=
 =?us-ascii?Q?joj/tZdo//f1JSd1uiqAfWvxrcK62J4es9PFwHN/mKxtr8rhYAOYM5fET15t?=
 =?us-ascii?Q?TB0FpdQQdt6w1DAwkK3/37w+7ophO62L3oSsOA2OxEbeNJNFtW52qY7b6ba/?=
 =?us-ascii?Q?mvoCm+QFe//FU1kfbGk+IWB5hTBQypomjfJ+i1fqeIyWOLAbRKKyayrFZP7U?=
 =?us-ascii?Q?q4okJGQIzaDT5ttzz9pyQ6MJzB++gKWIrIr8iCFy8L/pOHFwpK+vI7br7rF9?=
 =?us-ascii?Q?RvDEGQ0/9H9MnjYK/KYu2N7b+EOl8HJZHR6LS76pDDtlvgxYFtv74W/emxOZ?=
 =?us-ascii?Q?gemTLaTcCUtYap5RLDCky3m/AaAohgKSXpF36AKyQ3BJJCTJXjhAlqXUAgO/?=
 =?us-ascii?Q?QNpqvYuD3ajGsJGaXfdFVXZfBjZwuFoSiDk29InpfH8fa6Jij55G33GBvAkO?=
 =?us-ascii?Q?BdjZ1pNjb5h9oXlOs8jNnD0m2At4tj2TGRA3qk8LenfoTqJy/tbOZcD7IDO+?=
 =?us-ascii?Q?nIEkjvhyxjZ6tvFmpPk1p9o5YkPTmIdSCST7Hg2pDh0a7/7PBe4qP5olou8y?=
 =?us-ascii?Q?VLFk5Vi5IS3Tohfy3vvDRNa3/HHAIvOcOpRft0sNdaYakIski+BcyBauEsQn?=
 =?us-ascii?Q?Fbe0ITMztY46uM9oZ/QIoA16DpT5sTvtd2fuZ0PHcddJbFHNqpWID9eUaoNC?=
 =?us-ascii?Q?WRO1IlZkpoqmMXCW6jdBkiFIL0F4IDgBjklWhiL8KPiXwLOqL9OnxTpTwB4e?=
 =?us-ascii?Q?/NSTH4wgKFHnBd6+tnPutAqLMlYODgFGXOyBUM99WBHeMQM7KJu0H0BACxEY?=
 =?us-ascii?Q?IJAbeG5bsJKvuAgitXmI/imnOe2D3M5DeyUmOrIc?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6197.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d08d9c8e-49fc-4749-2f5b-08de2ca0acf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2025 04:02:54.0893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3ca8MISOqZgNHBvF1P5CC5LHg89J3dzgRPgAHs0linYzQQsUPKP3GeTun8XA/P4mAlnFtK91obQpoJoNcsX5Sb0nWAndQbrA/FLzaTBIJcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Matthew Brost
> Sent: 26 November 2025 07:37
> To: Kumar G, Naresh <naresh.kumar.g@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] fixeup! drm/xe/xe_pagefault: Fix potential uninitial=
ized
> fence usage in xe_pagefault_handle_vma
>=20
> On Tue, Nov 25, 2025 at 03:48:42PM +0530, Nareshkumar Gollakoti wrote:
> > The variable "fence" should be initialized to NULL, and any usage of
> > fence should be guarded by a check to ensure it is not NULL
> >
>=20
> I sent some replies to wrong list, see those but from Rodrigo:
>=20
> 'fixup in the commit subject is absolutely no no! This is a git
> indication that the patch should be squashed to the one introducing the
> error, but we are in a non-rebasing branch. So you need to provide a fix
> as a new patch and using the proper tags indicating which patch it is
> fixing and Cc'ing author and reviewer of the original patch.'
>=20
> You kinda ignored this feedback on the resend too...

Naresh, lets discuss this offline and regenerate patch. Rodrigo and Matt, T=
hanks for feedback.

Tejas
>=20
> Matt
>=20
> > Signed-off-by: Nareshkumar Gollakoti <naresh.kumar.g@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_pagefault.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/xe/xe_pagefault.c
> b/drivers/gpu/drm/xe/xe_pagefault.c
> > index afb06598b6e1..401f1835939b 100644
> > --- a/drivers/gpu/drm/xe/xe_pagefault.c
> > +++ b/drivers/gpu/drm/xe/xe_pagefault.c
> > @@ -70,7 +70,7 @@ static int xe_pagefault_handle_vma(struct xe_gt *gt,
> struct xe_vma *vma,
> >  	struct xe_tile *tile =3D gt_to_tile(gt);
> >  	struct xe_validation_ctx ctx;
> >  	struct drm_exec exec;
> > -	struct dma_fence *fence;
> > +	struct dma_fence *fence =3D NULL;
> >  	int err, needs_vram;
> >
> >  	lockdep_assert_held_write(&vm->lock);
> > @@ -122,8 +122,10 @@ static int xe_pagefault_handle_vma(struct xe_gt
> *gt, struct xe_vma *vma,
> >  		}
> >  	}
> >
> > -	dma_fence_wait(fence, false);
> > -	dma_fence_put(fence);
> > +	if (fence) {
> > +		dma_fence_wait(fence, false);
> > +		dma_fence_put(fence);
> > +	}
> >
> >  unlock_dma_resv:
> >  	xe_validation_ctx_fini(&ctx);
> > --
> > 2.43.0
> >
