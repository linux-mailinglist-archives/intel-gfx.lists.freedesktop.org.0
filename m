Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KBEBKm5Rc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:46:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C16E7488C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:46:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C74D10EAA7;
	Fri, 23 Jan 2026 10:46:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mVL6OSPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D12210EAA5;
 Fri, 23 Jan 2026 10:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165163; x=1800701163;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RWuwlbRfa/Dnp2a4NIqSztuzNUiuT2+ujaiOlzpwzeU=;
 b=mVL6OSPpVEjcO8o1nO1RVH6WIs5IL6f2WpLcjtvSYSDyNKRdxLwd/GaB
 F0rdAwyYaznh3AzeSsKpITxKDk9EpZKBcHpxo+kwEuwaC7cvk9vFBHxc6
 StCxfk43BUaTVxFFwBrViaBrI/SNJIrB0C2PIihfUcjjLGY+cigDNEOp2
 VG542P8zSEF41aU/FA/QOK3+dwK5+4xRtQiF1kF+3MZtX6thbv/7BkKSD
 N1P05w+Pi6TjOoFcPFdvJ19vEKp7t1msBTxb2JI4yE+8lK9TAr52J8VrT
 ATU3tdRg9jQy0Z8VfKzliEsybtAq77m+YLsA7Gqco7ZIOOUVsVXgUNd0H Q==;
X-CSE-ConnectionGUID: IpaObzI+RZWvS1JmXMotsQ==
X-CSE-MsgGUID: HRxXaKG9TY6BngXWycHRfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="81135546"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81135546"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:46:03 -0800
X-CSE-ConnectionGUID: f742QJHnSRuSrG0xTXDYvQ==
X-CSE-MsgGUID: nV0iTaoEQsqZcamkLI9QKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207050599"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:46:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:46:02 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:46:01 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.63) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:46:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I5qkBzW4pBYfXGyjjXpRy3ktjD/GtE59Bx4V7P+Xqh6431C7yTE6aXfmFqGYlZB+ePsDUDbcYfoXjOzd1cyIXdkIXSJPC+CWerTRVVBd/ipoySxWTbHWOI8YnPvQjXPG1xNMnI/Aroh9iqojBo/RvRnfhFwLdD7AKHHuxj9kv+SejK97nQjWYV0MFLtkU3wAYjGFZr9W8oYuQQ8Apzcomhg2eMIDYvezkvymfSTJynpHPDcDf0GAi5yBOK/Ksy86FAM5VrjM9X9KKcB19J7Rsw9y35rTZJtmPq8SS0iOzzWFDfSfz5vh5OQjE9YZE6uGwmeuOJH81FxwR7NfZ/w5Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nzC00SlxGA2YVXOzO0BWFcCujwB79hz+caY1WpVnOvI=;
 b=yuRScihFqWgX9Vxv4yLhBdN2GaTlsgfYk957gGNcdjeDMbqO6uzzRUPSpJ1AXWNO1zhCMl1N/lwODkSsV/grkxAEwXU4QubkHs/VHciqo9KcN2VT295FYwiQrVc87m4LLUj/C4uj4D9BZmUgeN9bXlgVVmwTgZYt/QbF9WGlV8zwzkhBPjjXUfIlw3Z7Adb9cCJO7Ur0SdjXGX+nuGAmC2akIdq1R9jbxzzqbtim10l5jJcn4bfDo2ZNgzwoHYrtO//VILPParsAED+7KCYIvyTRec79N2XkoBnYRmWPn6UXsluziTiILAPoAiqqar1rcfGDJzIr/J9IsiSlVNoQ2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.12; Fri, 23 Jan 2026 10:45:59 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:45:59 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 07/19] drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
Thread-Topic: [v2 07/19] drm/{i915, xe}: Remove i915_reg.h from intel_dram.c
Thread-Index: AQHciyroJDdTdJ/E20acwxAzQlxyirVeEeUAgAGClHA=
Date: Fri, 23 Jan 2026 10:45:59 +0000
Message-ID: <DM4PR11MB6360411D534A232000E4C103F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-8-uma.shankar@intel.com>
 <c2f3a128c1b75d051e53942432603374b9f418aa@intel.com>
In-Reply-To: <c2f3a128c1b75d051e53942432603374b9f418aa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|CH3PR11MB7177:EE_
x-ms-office365-filtering-correlation-id: 16b2e305-e055-4a7f-5e90-08de5a6c9887
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ULCMaUNo+AiDeJddem6qY2SGCwIxB/YaKuksoy2bnm83+L7fesmgVcT29fFw?=
 =?us-ascii?Q?jKhdPqwIADKdOf2ETtAEmx7BFWzynlnqTFyoCIGQCv8cr7j7eMrM4TyMSO0i?=
 =?us-ascii?Q?GMkW8SS7aEM6rZJwc4S6z0p0e9hukbgK23nn1wGDxiApm8OBAsfYyt5DQCBC?=
 =?us-ascii?Q?mJNmpt6KNg9Kh5Avw4CRCaHe05x9a+JYcA9QQ7GT/akNJ9BQIX6NgG7JCSrg?=
 =?us-ascii?Q?AsgsAwUNxSJJQ7TOn+KKcTL9T6Gg9P64CEEUNC4I7RcoTmP+GwUojqxTFLRg?=
 =?us-ascii?Q?0AyvaV594aJ/iS+ZtRg15Z1tUBgHv7rbp1odlWwFsEgezLatr2hlskMK9pnd?=
 =?us-ascii?Q?jQLeLy5343wiQ3qJvt4lki+9aY/OoO6Cvx/IchRHo/ZcuielOkbCdF5NxJZt?=
 =?us-ascii?Q?ktsqALm9wbU6X6r6J7FsGANXOxJzyiqNaMRLWTqYN+ObrJ1Ui6svang0kG5I?=
 =?us-ascii?Q?JFa5A9s9ykoGDDE4NBxIPQOeZOpJrGYFlbzFWIxcphwRocDxNro3M5fG6BO2?=
 =?us-ascii?Q?3fAqB/ZQv4/jHOVQHq3FQQU0hhMWPBqCrhs3taOIQn7gXBcM3F+n/WwNPafa?=
 =?us-ascii?Q?l1ibF89xSFZy+KqutRX6Eku9lGjOOFRHnjVL6jSxpvPzCdOesuFZYwB/Iaik?=
 =?us-ascii?Q?5U1qRJx5PeiLWixOfEASq0+RXiPA9Qiftri603o1RHdmbDCUTqmtwrN/IO5E?=
 =?us-ascii?Q?X/KaBidU7VeAt0j2QskApIgDQxXj9IsRosP/Y3ms/jRg5X66yC03osj3JR8l?=
 =?us-ascii?Q?ft3krKvzKP4DoUsdmvuIbVv2z5p+AAbTr9/ZI0nDmYaDZAG6GcG5/E3xeSO0?=
 =?us-ascii?Q?U9WL4JoBY8FX0XdaWPuq5PZNgQh6ul2JEdqRxbry2iB6XYpJLMljj1B57ncM?=
 =?us-ascii?Q?+mPv0lFn4dIe8ANAKdbcClpMc4yk2AGOcsnexcSRX3ktlKQnkjA1IR4DP6ak?=
 =?us-ascii?Q?A5MM2/85BtLZsAx2BOuQTneE3GjnFXpg0/2RVVFiIWWiCT7o4tOkaKxoO6cs?=
 =?us-ascii?Q?81c3aVxfNYGWwshHCr3t9lgPkh8WbHIvHX2FbDCLd/MEwQ+1cJXLvKu6uuab?=
 =?us-ascii?Q?BnZbmljyaiuLBRJX6LRbVZ7ieFx35rrIiTBXS51e/TUxpeZjAX7cKP9M60GT?=
 =?us-ascii?Q?+pUTCGCEX8tW985yiz8jrctkaHgowJpqFu4vawapZDdkSfR1dnt6nxoDGwJy?=
 =?us-ascii?Q?c/3qsyXRiXpj3To5FdvtDqmi3j6plaLrPS9eeqWjmZExVsP3jRtpOd/8vlEH?=
 =?us-ascii?Q?my2VvP6RlJhIOQlfp5KNmhRnVFVnl2yUiNxa2oeBezXBJm7YR8naHRfabC7G?=
 =?us-ascii?Q?4XgfmQHSkyPZU7OOtzPtZR9r56Gvig3tF4qXGctERLfAS18LCDpzBLaL8g0c?=
 =?us-ascii?Q?L2Szazr4EJhfBhD+Ap0IiNG9dgQAzNczuBMh5/x89VSjVS6VtMVbXOTVKnMs?=
 =?us-ascii?Q?+kSn4OwmSwpJyZ9xcSGD0vI7b+m7Z84cVRehdd8IKk+gCw3DsRz0B9yTVU1e?=
 =?us-ascii?Q?jMO3iD3+NzJhTYm+DZCDbHynhqDUUjlIvL5S59GiZ6KalQddyJCZgHkLh59m?=
 =?us-ascii?Q?kXkQOfHl2nEeyKlurOiCBOYzRlhQX3n3V/tOi91j7a1awr1g8GKoWugxjVSm?=
 =?us-ascii?Q?2uTIk4rshMghm8f1nKlDnMo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fx4Lxy9xCGaT+/WAjZ4aaybx4ssnI8+WO1OOJ+Td/XVLt3LEsZ2vrLpQfx5i?=
 =?us-ascii?Q?hlxQbHXOfrXA5i3YjWDQHx5YppQToA1RtkGpNHQqdjv9uvfL32wQqynNQwyp?=
 =?us-ascii?Q?dw4ZOZl555ZxD8YCRJec/9h/9Get1i6OgC3kdWJEebFdQLUPvfDs6VuRXrQ5?=
 =?us-ascii?Q?fdwKv/T6hopbDcD2ZqUeS7ilSt5s4kxZNEy3vff0NNKTIB/a/RDUM52AEHLT?=
 =?us-ascii?Q?W/VvFLQJX2Bftdd+9MvITYtK06RIfakNOtOK5L87m1lVAPmw6yjAdfGa9+Qf?=
 =?us-ascii?Q?dB92LaNVkypjC9o8L8gSKqzEfZ2fP0tZFkrdVOm/H+tkVN7ezubhNf3JffOu?=
 =?us-ascii?Q?ahwOnW9wtMIkdtuXyWL5DUW8IrCQ5mMTCz+rjvy44BGFnGhL0LwgH2MBY1oR?=
 =?us-ascii?Q?66jHg6D0p7+nks0S46+QcD50SqOZWELjMV04oGroWCpfZPlmUVjrLZrXHUp+?=
 =?us-ascii?Q?NIUEHYkjPPSnUtmBC3JcvbfMC5Hdgy25fyV90AY3ow7HVbbjQbo6G/+J+Q7a?=
 =?us-ascii?Q?m0pQVFbfdqXaVGLd9xCmXtED/9yOagB1guDUm8ocN1UHEIUxYLyvvkhmlXQx?=
 =?us-ascii?Q?j4nFQSLsDglxozHoU7kpXQMTQimsHJQb/Z+8y29a3az/hoaNnajDxfs/bzYX?=
 =?us-ascii?Q?tkwTuUqZ1SfvBjUYryx47P8Mp5wqH8+B2oNTRtFvGl77ulzzNAsshLThzjRX?=
 =?us-ascii?Q?tD+EjjLzrKaHqHQQ2Dhk8pvESqZ694fdUloKVMpIwMHYjcwOVkAKJlzN8mQd?=
 =?us-ascii?Q?zokftaXPICy4jparfym43zwN95UuhdHExBqgmM1SNiDr9M8dHg1XXUrRnODk?=
 =?us-ascii?Q?ZUDGnAif3p97QFHfvMAoDB6/pAWJtgwIbglvyNndnvIjC7WvB3THX/jDVhD+?=
 =?us-ascii?Q?jdcz3UgolE7kn7iKEQLzguvrBYHnxbZvcXPePQyaOz4N7W3B0EmQvxmGrsJD?=
 =?us-ascii?Q?8OFwh1O4mxUjfCrQyTs8aWCSAkGeC+2GzG1h5xp+1O8fpcDRpsWJ0qA2xru+?=
 =?us-ascii?Q?IKudkfwqCPfjROa7icydHfvew1PiHm5blc+y/pPFRXtK/FhG+uXQbk0FLYqr?=
 =?us-ascii?Q?F+ck/I30eE9kMJiGFH7s2O7gBJMycEPC//E2KI26u5YMCwacQsxpGjkh39uZ?=
 =?us-ascii?Q?wM29dB3ly+5Kc6CkbPUzOm9fX9T0glTrpCH4kHpQyj+Olqq73x6LHvRRKyw1?=
 =?us-ascii?Q?+jJTeUWB/96mfPnOY1x/0mLZ1bFKZWqR3QBJQjbzTHsI0alK/0YOH48NUKr4?=
 =?us-ascii?Q?L6bDCrUc8mqgfePHekRR4WWHfgm0fNHrQ7kcqgNY8CCcLM+X+qXwq33dUzS6?=
 =?us-ascii?Q?IZPr6zhUIHRjfOV0B0daQtHaTO2TU8DMzHRRbRhCsxiaF9Tth2vkaI0hs45p?=
 =?us-ascii?Q?1U6UI5nTB4qK4pl9/W5q7K4bfyCOWp9qN4Uiy81ryGmcV99GxUmgU4A6RVdo?=
 =?us-ascii?Q?B4L0ACtijzI7fXZYY9/2VSDbdnfTsTsygh7D2GEpg9As7VY/l1eRGWkNfZyU?=
 =?us-ascii?Q?pd1mluTvxv3+hDSfEbt6iPN8n/3/+KuPW47NDA2ESF9VGn/Iqop8PB+gOh0b?=
 =?us-ascii?Q?vxpmWPcV6GzL2jhnl9HpST/mBZt4KmyEuOxmI3HuRyv2XJtITZhSIutieSPI?=
 =?us-ascii?Q?JXYGuPPV9epvCON6ww5W0kj+w0tvSzOFy44eMmE1up1+PludTy87/A2VYaH8?=
 =?us-ascii?Q?CxNtqng25Q2gtwUgXYsB1q0B6dhW5kPk2B128yAJcoJU6/EnjcN56skfD26q?=
 =?us-ascii?Q?y+1GjyyzvQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16b2e305-e055-4a7f-5e90-08de5a6c9887
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:45:59.4911 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LWQQnYGIDdnFwfJl2HpOn+1h5eY4MkEK2JZl9FUYrbVztjHBgFZuqsF28G3F3VScPGjcpj/T7421PZ/jWZxb1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM4PR11MB6360.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim,lists.freedesktop.org:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.987];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1C16E7488C
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:12 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 07/19] drm/{i915, xe}: Remove i915_reg.h from intel_dram=
.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Make intel_dram.c free from including i915_reg.h.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_regs.h | 6 +++++-
> >  drivers/gpu/drm/i915/display/intel_dram.c         | 3 ++-
> >  drivers/gpu/drm/i915/i915_reg.h                   | 6 ------
> >  3 files changed, 7 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index 3447ee229354..f395b7d4d640 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -3075,6 +3075,10 @@ enum skl_power_gate {
> >  #define   MTL_TRAS_MASK			REG_GENMASK(16, 8)
> >  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
> >
> > -
> > +#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> > +#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
> > +#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK
> 	REG_GENMASK(11, 8)
> > +#define   MTL_N_OF_POPULATED_CH_MASK
> 	REG_GENMASK(7, 4)
> > +#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> >
> >  #endif /* __INTEL_DISPLAY_REGS_H__ */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_dram.c
> > b/drivers/gpu/drm/i915/display/intel_dram.c
> > index 170de304fe96..73a127dd6720 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dram.c
> > @@ -7,10 +7,11 @@
> >
> >  #include <drm/drm_managed.h>
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
>=20
> dram only needs a few pcode things, so I'd prefer having a file for pcode=
 regs and
> only including that here.

Will fix it.

Regards,
Uma Shankar

> >
> > -#include "i915_reg.h"
> >  #include "intel_display_core.h"
> >  #include "intel_display_utils.h"
> > +#include "intel_display_regs.h"
> >  #include "intel_dram.h"
> >  #include "intel_mchbar_regs.h"
> >  #include "intel_pcode.h"
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index fac24a649d61..c9fb9af1a35c
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -1005,12 +1005,6 @@
> >  #define OROM_OFFSET				_MMIO(0x1020c0)
> >  #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> >
> > -#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> > -#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
> > -#define   MTL_N_OF_ENABLED_QGV_POINTS_MASK
> 	REG_GENMASK(11, 8)
> > -#define   MTL_N_OF_POPULATED_CH_MASK
> 	REG_GENMASK(7, 4)
> > -#define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> > -
> >  #define MTL_MEDIA_GSI_BASE		0x380000
> >
> >  #endif /* _I915_REG_H_ */
>=20
> --
> Jani Nikula, Intel
