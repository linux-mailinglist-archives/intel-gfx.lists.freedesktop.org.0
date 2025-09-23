Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E57CB97908
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 23:23:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF0010E1CD;
	Tue, 23 Sep 2025 21:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SxHTjs7R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B847710E1CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Sep 2025 21:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758662594; x=1790198594;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OaRwxvKfHeeszWvi8ZcNbbR3sG98MC/USKuo9V+mJhM=;
 b=SxHTjs7RRkb0JEKerFejzZhyF2H7qVQ0jrYMeeE2Fw1OaYvRE1jjgRPv
 ZRKsqpwHp6Y4bsucLCsj2br7EM1cP2/RnNMe3H1+15M0IJ9737LeN28Cn
 pQETvRu/idVFo1njdoFQKOBSKtuX6hVVsXcnF1fBXUkEwnPXDo0v5fZDM
 BoUGXovdOh3vFLVeDy9pacDEPNl5sLsvM4YwX0/itqOaTPAEDNi5/ISz0
 jPlEh6gNYz7M1l7/tanMeYIZJWLhHOmpwsB5rrF/IIBjeuoGTCG1AZ7So
 06gTpXGOCAvCUhY/MCI45zqqxaKa3QpHF/Se4ORn6ZZGhspr35h/TPiww A==;
X-CSE-ConnectionGUID: 2gPWJc59R9KUO1tJB/uGfA==
X-CSE-MsgGUID: JLES7xilRfC83Rnld2BKPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61004956"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61004956"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 14:23:13 -0700
X-CSE-ConnectionGUID: xydD92kbR3Ch+1YM/xTjFw==
X-CSE-MsgGUID: dSmIMJzRTpiOwtqXyQuCQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,289,1751266800"; d="scan'208";a="181173267"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 14:23:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 14:23:12 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 14:23:12 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.13)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 14:23:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gr0TC6SrHnpQW0ItVa1iyypsXuRRk3/uU1Ii3GUliF2ix9Gwh91E3A3wYqAI2cg3Bp4Q8yyqVcIFJKG8U+T2VlTdAoRJSm3rc81o1+POUc+DMPlMgfi/cuHdiDoegcN8fAqMzVLYwW2SrBXEM6HNS50rI5PBP5zMCz0IY1zLv3pJIBzGZbXp8Y8M2MezN+cdno8c9NRvutjqNw66hYNMizegZnGNojCrrVedzNEdanBcRex5YmLBwpR8lhijysTSB5mOb/BZPVLLReTXqKYgKm2GUhJIekxiAYv0eVn8uVCvgC/qWm3s0Gh0Vjl0xbmT5soprkH/qaoo6qcmdfHpqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lQZq2DO7WCH39qH8p2gCqghWUjjslxJBPxOFEZaoFdc=;
 b=UkApvbCpz1Dhox5oQ/9tWcMF7Cii6jW/nW2cFrCwBUOgEJY2g3+vPgGGyiXD1jZMwP9TsWjrKT6/AYGVA4TegMmj2pYbJPOJG9aAxDyJV09oe7L2d++K+DgLHZq+f6VnH7vmcxOLsCgx2A857ta/TeQWg+SQMrvCls1PTHp2IeizkjFEbZeaSiqwPqtD/VyleMm67kadekTobRYFM2RAHXEWpnQddDEL4+jddHk4afxiuuLQqsqusACQmKVt6DEqvvaBzJXK3EXs4UClcFfjUaEfLg7c1VvXfSYp/yEgneLjzcVwjcAhcMejFjiYXn4+AAe6iM62F/wlB+pGJktoYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM3PPF733C3E759.namprd11.prod.outlook.com (2603:10b6:f:fc00::f2c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Tue, 23 Sep
 2025 21:23:08 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5081:cd4:1a4b:a73e%3]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 21:23:08 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "andi.shyti@linux.intel.com"
 <andi.shyti@linux.intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Thread-Topic: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Thread-Index: AQHcKagQJjJpbgiL7kScjkGmorjforShRtsAgAACJkCAAAOwUA==
Date: Tue, 23 Sep 2025 21:23:08 +0000
Message-ID: <CH0PR11MB54440868CB9755354CE2E0E0E51DA@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250919205740.77847-2-jonathan.cavitt@intel.com>
 <4dhrlott2fhqpqtk5p4k27hgrji4lt53w25mnpjy5kx3zzj63n@s6ctnbm2mpb4>
 <CH0PR11MB54440684AC8E34E855520EB1E51DA@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB54440684AC8E34E855520EB1E51DA@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM3PPF733C3E759:EE_
x-ms-office365-filtering-correlation-id: f41b0d4b-0919-4bc3-f2d5-08ddfae7648f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?jPsi2yzDuevQ2WjC+tPmCT6d6Qmq7lAHljrx7cy4y+O5dgq1J/ktfYP+Luxc?=
 =?us-ascii?Q?5GVVaEHhhDH6Fk+985x9VQf7nuXg6chLTwXIkV3GeDIXeRvkTxT1wjNjcX4A?=
 =?us-ascii?Q?kOFfH9ROrJo7cWKGLnE77EVNipKKHC4YTuSu6TypT+ZTVaQoyw/xXgUedQea?=
 =?us-ascii?Q?XteKJQfJlj6lSwZYrM0PfA4P2bAWlwKGN0NrxUlaYfC5DkYY0BjGTgq+hwCl?=
 =?us-ascii?Q?BgGmNcF/mX/ekmkQQIzyjnKTd+Dk5LrXq1F8wi9neBehHmyd9tJYzTk0nems?=
 =?us-ascii?Q?RMTY99QaO2KhTP2oyXuwMJKzoL75OUo79X9SNo5XkT+2nCN5aJ+BohhJcsiS?=
 =?us-ascii?Q?3J6hrBx4S9xuGl6GYcgTFP/EGjEJYhjmfW10cuaxtNV4sR1+eHO0xqSN+Hm8?=
 =?us-ascii?Q?bPPuqh6zsxMywJn4D2Wpvk4C3kpumeXzk2IxgfDDzb7+16q3X3GYXGHmJZBk?=
 =?us-ascii?Q?+nYPR/iczszNrVy0lCzQ9KpkvOnO7pepa/BRjlk2kbq3OKNdYMGctzZt6nrH?=
 =?us-ascii?Q?MYR9uR6ckmSHuoabuo6qbWbgI43ssgUDHQ+PZIjjZor9JvlGMy09jINQgmA7?=
 =?us-ascii?Q?f25zV8v2BF3gyyOwHI5ha8y9ktN7u/OuH2n8p0B9ye4DJlclPj2b05Bn7J2F?=
 =?us-ascii?Q?9iqgphpt6I+etACPDI6FudI7rkmULOhY4fg+IWXgXgSaIx1ZJtDx9rdZ+vC7?=
 =?us-ascii?Q?Y6pFGKXobNL+cfSr6oG5+GSaeDAmmyFQdBe0lPUhYfbV8hmmlfZXIFfZ7vU9?=
 =?us-ascii?Q?z/V6Zc02SOdWTGQXW1HpPZvtmU3vNZfTdoTF3Yn7Gch9a2r6kjRbeAf8+Jn9?=
 =?us-ascii?Q?6lkGGXxvJPjutHwCghtRYMtKY30INAaSjVmeW7C3a4IN3ZJjhPBuZlnpMipu?=
 =?us-ascii?Q?in6UH/x+6E9oH6AiknUWOqTPqh4kdZ6e7mKq+L0xDsVfZAMXkaVmGvAH+G6e?=
 =?us-ascii?Q?cS3lql1FVj06iJWFsnfvylYQsUkG7F7dgXPzBK0kdBw2lt8Kevi2gDTTpO4d?=
 =?us-ascii?Q?5IBQ12O6HD7gDj9ZsLFlr1s1Rw62HNqLGEK60ebEcUJaruChvIIndUU3qd9I?=
 =?us-ascii?Q?0veNBpyViiLUENqQY/uA3VNsijcQIhXbzcaqz3HL3FArecyQf1WzeQKftq54?=
 =?us-ascii?Q?Ia4FoMPsqhUvT0/ELIVAFn/4DzIEiiof9B5IHBMERRZR66n7mhooc4Gqtcac?=
 =?us-ascii?Q?TGkQVnjmBMxfjHj7ZEq9ak8zOyCKM0a28gaL79gA0tMWY+2flMFY5pz6Wn+c?=
 =?us-ascii?Q?HrbmdrNDveYd1WZpKeyna0HiSKKy10PVPuwqqPDiQICSPSLnqwxp8McgrLa3?=
 =?us-ascii?Q?lnUdrqmIhyRybHqZDyzB4X8ur97G7lVqvObHaaep9Sti/5vRPU1DLCHSx5Fb?=
 =?us-ascii?Q?f25OSGhRMoa0ucmfAHAEoGwmYj18Jmqonp4ZoalOoF18msQ3jpwExSsHlFv1?=
 =?us-ascii?Q?qjIQ7WN3eVmo6PQzbZ0R9hr58nnS9h+C43KVeHkOVm0X8DhbtliVnXbcaGYY?=
 =?us-ascii?Q?40n0moGCwDdSfZE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kamnbIiweJiuMl0yhIoZDR/F9uAddY5L8r7czOZ5KBESc9rL8t5BiQFI40Tu?=
 =?us-ascii?Q?pGaMaLez5xdGa7UTj5NMwMH4Onaqp5GDFnLiHxBVv4JJkWkGJ7DmIBhydNx4?=
 =?us-ascii?Q?LnMnmkMBibnjaS5k23Mni8PW3/Z0stQyXKfmfzNkj/fSLipfPSE/x5Uiyokd?=
 =?us-ascii?Q?+0/eXEpd2A8ABpFY8Dr38mozHCtx2jR101IVPOb0+ZWcPqQG/dQ4MXQnL5WF?=
 =?us-ascii?Q?5m9aDJMzozzYVfppoG1JL1Js47iImsPvYT5hGNzP10hoJ0rfjAphA5pEvZtA?=
 =?us-ascii?Q?5DYLdo5/uv59H5uz+3swEj75SbvcFYlImYggoqXdNBg/5F435sNBJFemJtEi?=
 =?us-ascii?Q?tR7ebhaAtm1zlm49jRMyDQ7ZzzSTu24yiwbdrTWv7jiVtdQw68EL/5uSoN5+?=
 =?us-ascii?Q?Z9IjHpb8bOyFy6Oqk4u+amPhaAJOu3Nvtz1vQtrGhHrMJ86PnWHOWIX2If3o?=
 =?us-ascii?Q?IVyg7WEmCJnfLM8Y5pM7+RgHCin7izOWAGE9tn5GBqMs63ogQkgqzcJSyV3z?=
 =?us-ascii?Q?NB9yCTtELL3+fQbr08uIszNq1haKiCi6vW2oBuwUZKDlCauGIumrnHHSUwrK?=
 =?us-ascii?Q?iaL218kjHHlZCCqMdAQOlpUwqOy/u6gli4y11Q9muwIcMSrXiBgKhrxwDaB9?=
 =?us-ascii?Q?vNfyieGm5SwQQ0nQYY3ZOL/jgCHgBlEZa344Y7cRUFTBPrQXn1/2DRxtbFux?=
 =?us-ascii?Q?UXgUNMw5kNpAWCfPXcydXq35cNi2C60z4CcAkpCOOpQv4wWt+4IRreXV89C4?=
 =?us-ascii?Q?Vj+IIdr0DaW74kgAfFGq1dq3Sg18GoQIADPn5RCAiUQI/Zmb655wAtJD8N2X?=
 =?us-ascii?Q?3sOQJUL5AE+qvpD8VTxXY7kfcj7P43FsXHQN0SVUSe3n0OJMtkwj7PSu7J42?=
 =?us-ascii?Q?sDCc/9g5IjhIQUL8hc1e0jPB7srW/MPXOiUmmHPyeLu6CNyi2uaqRrpuSnJk?=
 =?us-ascii?Q?gzNCHfZkrSrdlcwTRNWHNhV22MNV+Mgzwxe/43xuMOV2JReaQGFCmmR7vgbh?=
 =?us-ascii?Q?igGMOcwfI8YIpDJxKisw+NlaH3gfsBIsGTq/wUcKsnQYYlbVAt2YGWQVe6zb?=
 =?us-ascii?Q?fLlNug7TXkz8UOgN/amvuhlz4h9jZ0LJVpKINLa8CKQpW+i7y/6MxGN4sqHu?=
 =?us-ascii?Q?uF0XTy5Wd6anV+/OeRseVq4+AAbpB24XSY7e5h3MKebpfyU2FatkQOHrECbu?=
 =?us-ascii?Q?fH2Kx9zYTFIK4on+xaUfD/f+FY7+nuw2EMAyB1gkGwHccEAH4evhLTVCD1k4?=
 =?us-ascii?Q?y3i8XQsvYtSnkwcwxbHQ1c6FbB504py1jieZ6sLedHdzCVm3pjaG5njVb/7U?=
 =?us-ascii?Q?AroJY0fw8EXHm4fRl3R68/WA0eEzZODtWpktF3Fco0C6F3WZk0DgEoGS8XnI?=
 =?us-ascii?Q?B1i5BFR3yBJ+X3FyhJhc/1wW4+kdu6Qg090Zt6LSSCqaJV57CNm+qDvpItxL?=
 =?us-ascii?Q?49xA5+X4yL4s/+0oIyjuZorS8fw3WMjR3O2dOK5Fz+8m4WivghRq/yoqunbr?=
 =?us-ascii?Q?WZOALTtVH1TSQK0kixb+y81bRxZW9xDcI8GDB6wOxtj0tlztuo0xaz6M7vZl?=
 =?us-ascii?Q?8MzV0/fPvBgWXrVernKc8GzmRwEUynzztILmJddy6BZ9Q/p5mIfi0uyM+si6?=
 =?us-ascii?Q?/nYfQBihd6B4M7zKdgfD+hdqylvdRJM/kQN6t95MIGl5?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f41b0d4b-0919-4bc3-f2d5-08ddfae7648f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2025 21:23:08.7694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J6tGfOZDhgakLEb+9nlBbZZYq6ojTGZE7aHFkZrw7m2ESx9BGkp+WHCIlYPJcGh6DLH0oQhwoFw03mDvE3FG5TyrNG+nYg8aUfxQoz7cS5k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF733C3E759
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

-----Original Message-----
From: Cavitt, Jonathan=20
Sent: Tuesday, September 23, 2025 2:11 PM
To: Andi Shyti <andi.shyti@kernel.org>
Cc: intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@intel.=
com>; Zuo, Alex <alex.zuo@intel.com>; andi.shyti@linux.intel.com
Subject: RE: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error ha=
ndling
>=20
> -----Original Message-----
> From: Andi Shyti <andi.shyti@kernel.org>=20
> Sent: Tuesday, September 23, 2025 2:00 PM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Gupta, saurabhg <saurabhg.gupta@inte=
l.com>; Zuo, Alex <alex.zuo@intel.com>; andi.shyti@linux.intel.com
> Subject: Re: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error =
handling
> >=20
> > Hi Jonathan,
> >=20
> > ...
> >=20
> > > @@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_devi=
ce *vfio_dev, unsigned int cmd,
> > >  		if (copy_from_user(&hdr, (void __user *)arg, minsz))
> > >  			return -EFAULT;
> > > =20
> > > +		if (hweight32(hdr.flags & VFIO_IRQ_SET_DATA_TYPE_MASK) !=3D 1 ||
> > > +		    hweight32(hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) !=3D 1)
> >=20
> > How about using:
> >=20
> >     if (!is_power_of_2(...) ||
> >         !is_power_of_2(...))
> >=20
> > The rest looks good.
>=20
> Hmm... Yeah, looking at it, that does seem a bit more efficient than what=
 I
> have here.  I don't know if it's worth spinning another revision of the
> patch over, though.  Perhaps if it's considered worthwhile enough we
> could just add it in at merge time?
>=20
> Thoughts?
> -Jonathan Cavitt

EDIT: Never mind.  I'll send a new revision anyways: it's easy enough for
me to accomplish regardless, and the suggestion is just more efficient
than what was being used prior.
-Jonathan Cavitt

>=20
> >=20
> > Andi
> >=20
> > > +			return -EINVAL;
> >=20
>=20
