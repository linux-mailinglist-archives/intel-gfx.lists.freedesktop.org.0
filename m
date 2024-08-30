Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A34966975
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 21:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BDCA10EAEA;
	Fri, 30 Aug 2024 19:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JZWLQTTa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3962710EAE9;
 Fri, 30 Aug 2024 19:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725045733; x=1756581733;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=znq2KkawfXEI4Qz03GKdkjt1DavlHc0mDmrmLKroUnM=;
 b=JZWLQTTaRf0KNm44Y/tqSTHW+H6r11/OgGgVwVCsuSuwCQfHeKKZitgt
 4N2JZsDAUs8hVJbX/1/tPnn7RsbyZfZVkFVfet7WXczjOAKxQU0xN2pUz
 aaQB3CiyZ91S1uErlZ8DuUWQZHKtPzofRvwgN8olW0anJ7clbBPTTh9qC
 BYKnz9ueeZ0zIAo+kcxdC9QpKr8ZPxFIpt0slj90lYuCUSOx/KELCavlo
 Wcz2kb8Vsckti51bcuP8uU7yyA5MPGsur0EqDJ4HFAdIUtCtFfuyCx3u2
 MCEeZ+xDHMdCE2I9mYaDFVeE60t8lrvvRPB7DIjuu2CUBp6VKMCbj0I8Z A==;
X-CSE-ConnectionGUID: 8RJpBeCxSC+Qv5BA4hNSRQ==
X-CSE-MsgGUID: btUu8WjSRbKqxBnEbRlOKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23884654"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="23884654"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 12:22:13 -0700
X-CSE-ConnectionGUID: 6IOPKPRMQeCprOFP/LFo1Q==
X-CSE-MsgGUID: LeqmqjeRSmG0xbhcuNZVwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="64738665"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 12:22:09 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 12:22:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 12:22:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 12:22:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 12:22:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yuN9QHk/KsLTewQvfoLKLTH5SlJpmSJ0omaMJz2oxqK2PfQUYXlNC3BdAL010Jx4fptmB/uNVUMVRGs7ZuM6rztdA1f0OIyLmNkstzfXG68XcsXu4GXc8taV78kCl0IFEC5vZHiOayACBGGO++Us0klX+828l72/bKCGiiBh9ZD+NABAQ9z2XGG31uDwAWuhrKO94kIFXHOTCAZPQoQ0cT7PjYrzETAKnu/Mva41LWYhK645qLhKsRo/9lNTvQXPG1B6KEgzQDGbTuK7qGQCGjb0YXLBFfaWwWcdtd7OcCiWMmM8lRiqM1dDayRKskH2RPDNxITHG6WsDDgiRJ4CQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D3vffZdw6HgXLc3OyZHLf0dbEj3iKvA//LphhgH1CkM=;
 b=JdxQ/W9dCOiAusOXr0f5xa3Wo49DkHcjQrzz5zxZEi2LzJ0Ydpc52skMk1eKO1x05DlQopMe5HiaL4RFUecZVQPCZ/wd6OJiYTPUAqWMSrBfhluTo0yDNOEMFTnsICnQOU3q5glnQYxy1hCmr+G2n4bHEgk6AQNY4xjHwqBA5cT7lT6PBBrY/RCLJUcDv4FcHa8xD0KUFAbCOeGcgX7q9vy3bfHPi5uYsUm27VhYYTE1HuiNqBoX5n+lfFFCPwOy8qLph30aMCx/IHgdHLWIOTfhsXJ/kIvbyovnzvjx5eDwgmUpCeubuxzdKjz8WY0J+3E3SFq6FrZCKoHpIBUBAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by LV3PR11MB8506.namprd11.prod.outlook.com (2603:10b6:408:1bb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Fri, 30 Aug
 2024 19:22:03 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%6]) with mapi id 15.20.7918.019; Fri, 30 Aug 2024
 19:22:03 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/xe/display: Avoid encoder_suspend at runtime
 suspend
Thread-Topic: [PATCH 2/2] drm/xe/display: Avoid encoder_suspend at runtime
 suspend
Thread-Index: AQHa+wt3vaqbMxf0OU2BTX8gkWG0JbJALVww
Date: Fri, 30 Aug 2024 19:22:03 +0000
Message-ID: <CH0PR11MB54447590AE0253E12E192D4FE5972@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240830183507.298351-1-rodrigo.vivi@intel.com>
 <20240830183507.298351-2-rodrigo.vivi@intel.com>
In-Reply-To: <20240830183507.298351-2-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|LV3PR11MB8506:EE_
x-ms-office365-filtering-correlation-id: ed77a000-770b-4d76-2b78-08dcc9290784
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?4OoF+3Sj+LcO3R+Ubav1Ed3VqJAZzvVCI9QfTd2L5RP/sB0vuQKPaj589yZ6?=
 =?us-ascii?Q?5pLIeSa+Rfye4X3oschSBSr2U1cO/HzHVoDxNv8VOpO+CftN8ybjjbU3RvdW?=
 =?us-ascii?Q?XgS1KZ6Yq1J8RPDFPPViQrVziiE3SyQYrSlPSv5h6sGsTyl76zz06WoyG2cd?=
 =?us-ascii?Q?hhYF4lCXAnTPkXzMBaP3NSjK2luo6t+vpHUilfH950LvPPsZhXkDPTdn90Dc?=
 =?us-ascii?Q?XjrjUXmyC58VbXhWge6hiCmROAqqM8esn/kVmKsEOwGPmVN5YrnarS4Kb0ZC?=
 =?us-ascii?Q?U6W7Jb0XHINCVsMBNfmQO7hTz2HZSngePauH8PBNa7nvV1rJLeZkzf782BhU?=
 =?us-ascii?Q?16tWOB4FbDw3MFMS0GtU7ABM5loFeVBy+4HMCt0YEnnmBfQ1cytdqTj6D/Xw?=
 =?us-ascii?Q?T7zlEJisuA5ppxdLg/psjufX0x5Q2SqmPwen6dUAs/W94tZHtbNgePqAdWb7?=
 =?us-ascii?Q?S6C9jaHeFPPTSm1NWpkMwJi+sZQmivseQoSBMs5RMLcjOQmfiEL4xVvvxVVS?=
 =?us-ascii?Q?aPIzs2J0oaoqW7X7wfOpVI7FcF4uiJf4RDAT44ze6vPLBBvS9fRATyYwzJ0y?=
 =?us-ascii?Q?J+4HQlipHDdA1Umy/GbN1a7/PQzxspJ6XX/NQ5J2QCDTcsJyd7Cp2ylHTpHj?=
 =?us-ascii?Q?ZGOpvCD4QeweJsIfhm4LQf/RxO828K1obYNYRmzFs2ajHnUa8I+CNd8hpFCu?=
 =?us-ascii?Q?1DP9cKrbWEyluSH+asFHGU1Znlx/VUgUYTzbP8V11YIeB3opm5Vo3SaGlfY7?=
 =?us-ascii?Q?+1CYS8YIVDJA8le7cSlXWfKf7Ei831EXlZfcqL+LYUUUldgJVR1NdAT3I8CJ?=
 =?us-ascii?Q?svgkEBD1RNQCd+T2pO414BUjugOQ4fbM5SL6yNLAkFCYywzcBIqqz12B3ExW?=
 =?us-ascii?Q?Nc3kTcCtivsJcX1tBt3JCXc6b0gEPz4k1qly2c2ZTKQ5lF7ei+9hDlsdZdDz?=
 =?us-ascii?Q?QLCqpxtleN2LESaN8kCrU3v/gUIS5oMuNTOEw6/cR/tqYWJ8e6PZQLUM0bJQ?=
 =?us-ascii?Q?r0gskoRbYSfoo+dObmEsfy/AwWK8fWRzRpCCovMtDzOrKu1oT99XJrSiu092?=
 =?us-ascii?Q?G6J5K2Ik7Rj7S42dvTgQvHEW707KrACWXCRhCVQn4Z8U/xZvHMKSqxwLgMAm?=
 =?us-ascii?Q?dXFJjx/9cFfeBNeHdiZ/g+/5rc8vifgRfw7CryUv0lCTBTUMwU3uXohO8qEZ?=
 =?us-ascii?Q?uANREihXhZpCg+7YTU/wbhLdeEfaR7T30qAtwJvJYs79z3TU5eaEZW6LG1PE?=
 =?us-ascii?Q?6j5Qabhij+7WB6DHnG3jW8QnLrX9E2t3pQLT6MVAgOtJTXQswpjH72b7m+vk?=
 =?us-ascii?Q?TWXx2LKhUAvUoYBBhTzqM0rbS7UK9T/4FTncAV3KElYjgg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YZchp0TiREWTtCMd4pHfqYLqaRXapVXvsb8kSQ+e8UPCH30vGkT0/P84ckdT?=
 =?us-ascii?Q?x+eZHJ+8ysiEvbTQVGqNda6WaHGEdG0OLxSqDA0O2Dm8WXp3QBlQDN13d2tr?=
 =?us-ascii?Q?VuissuTkN7/za8J0nUqPhyFH04T74eMeD3fM61OXtETcrNztgZ1cQXsvzHGc?=
 =?us-ascii?Q?AHDIziVoiotvHcdAJZZNd9QF+C6rnIEuvXkNLlz0ltddReAfXbNmVZjND11F?=
 =?us-ascii?Q?cfKfM2MjqJsbojflodAeMuD4OskcW1sOB/UaRQnIC7//1TFG4kbenOnLffMX?=
 =?us-ascii?Q?2I8pI5cGmkDJXRkIwEZoFRpNs+43JEFu7v8b1wBwjUWzDdLF5rTOMkCjYlRO?=
 =?us-ascii?Q?sgQpze9utDZm8I+23/3T4/jCMVMufDAkBMejSG5id9aiGJ25YD6w2FPj2tgv?=
 =?us-ascii?Q?2c+EqNSl1BTqsr1iuhoOgo3fF7hgIzvk9a0VAYioldMR//zOFKbL7S/uxOqB?=
 =?us-ascii?Q?+s2kIkNvF6fUgj3dbs34TNXyqswTZYrVtIZGx2FgqoCcL4/RG7NKlfcBsQKe?=
 =?us-ascii?Q?8yAkHqOB2V8A7KtsZJwB75aRyGIx+kxNPCy6CufdODdhqEM5dQzaDGjoQxmf?=
 =?us-ascii?Q?3I5y97gUVoMYg0Y/UDRMWYvyMzdcjgXoXULTgiBuagcCZwCv9VM7a2TdACVr?=
 =?us-ascii?Q?rYVpms+vDEyz0YutFvsLJayKRhTuktEjURzPIAz/oE4vbjjFR0ATQbeBeQ3m?=
 =?us-ascii?Q?3dIBuOdoV199s3sL0Apf32fm2MS6chC+uW7SWG8eB0h/MtUpjgQ0CM6FRKqS?=
 =?us-ascii?Q?/mOIrZkoyI/34FRwytqbnSOYl0ihZudWe06PxdsnPIsElMT8qb64FWp/Byg3?=
 =?us-ascii?Q?3T1ordQZIo1TiptX6BnulULE0bEpZFKPKUkBsNGtF8uWXaT1gpw+yYrXvLbv?=
 =?us-ascii?Q?henNI7l5EZ4neC9CV1V4CgFz5KaMndWME3ktf9V9amClvWEj5E5cCasMMVkU?=
 =?us-ascii?Q?rp1ksItNGkdel43BjdCRsbkcREhRj1PCSjW31WOH+CUVBD+6AfQG4wjanrdp?=
 =?us-ascii?Q?A0Z51PwYQmyOVxYyvjuML16On6D4DBaHFtqVVO1ceVf1i2jMfPPCBrqJnCiL?=
 =?us-ascii?Q?zQeb/9pIsHrBdp0qp2acw2kKqaj8MuQ3HjfVl+Or2At/3B9mg3y60g3J1ir8?=
 =?us-ascii?Q?f5Dpmba95aVLtCw6XGvJkexypN2AOOAL13uP7mPIMEFgacWsnjAJlb5kUmnt?=
 =?us-ascii?Q?bV4MC4+lJTrnqqrHDirIs2bJeKRI+/+cY3B58XdH8PFU+nsyy0juI2cylhJy?=
 =?us-ascii?Q?FP7Kg51pQuBBF/0OnAPqz98iF7wtBXEzbt1abPyB7A/hdW1lJbDhlI0ag7Ns?=
 =?us-ascii?Q?FM40u5f4MJThgxRi+MVQvh5tO9HRENvDGjcjUabBbR3pPOY9KvLJ5fxe70TU?=
 =?us-ascii?Q?rUqj4DprSfT7w25JdpOrmfwI8HG9sGiJO6yNKCtwS1pIx/VC4dM4y2e71YLd?=
 =?us-ascii?Q?NuJy5wftthssTni9iLdWk9kgX0/c17x1mpHjdwcTE63jxTb47yjKvUbqhv7b?=
 =?us-ascii?Q?4bv91euekZ8YM4KGjYns8Bv69xENvXQcA0RSXTDij1IO5UfimxKHz7GUNa74?=
 =?us-ascii?Q?pcZDEBzJYP1EnyMLlYFwjj4aapDJaB+T1lfYyNZH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed77a000-770b-4d76-2b78-08dcc9290784
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2024 19:22:03.6369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tGWqQoPXhOwYCn+D1i74Va+ctv4oB7n60sN9HTphX2C+LgRmyhHZbxc0epfPrV02OZiNaLxlzQCDCO01ngf52dqo39KWiDWJggcPIlKwe8U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8506
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
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Friday, August 30, 2024 11:35 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Deak, Imre <imre.deak@intel.com=
>
Subject: [PATCH 2/2] drm/xe/display: Avoid encoder_suspend at runtime suspe=
nd
>=20
> Fix circular locking dependency on runtime suspend.
>=20
> <4> [74.952215] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> <4> [74.952217] WARNING: possible circular locking dependency detected
> <4> [74.952219] 6.10.0-rc7-xe #1 Not tainted
> <4> [74.952221] ------------------------------------------------------
> <4> [74.952223] kworker/7:1/82 is trying to acquire lock:
> <4> [74.952226] ffff888120548488 (&dev->mode_config.mutex){+.+.}-{3:3}, a=
t: drm_modeset_lock_all+0x40/0x1e0 [drm]
> <4> [74.952260]
> but task is already holding lock:
> <4> [74.952262] ffffffffa0ae59c0 (xe_pm_runtime_lockdep_map){+.+.}-{0:0},=
 at: xe_pm_runtime_suspend+0x2f/0x340 [xe]
> <4> [74.952322]
> which lock already depends on the new lock.
>=20
> The commit b1d90a86 ("drm/xe: Use the encoder suspend helper also used
> by the i915 driver") didn't do anything wrong. It actually fixed a
> critical bug, because the encoder_suspend was never getting actually
> called because it was returning if (has_display(xe)) instead of
> if (!has_display(xe)). However, this ended up introducing the encoder
> suspend calls in the runtime routines as well, causing the circular
> locking dependency.
>=20
> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2304
> Fixes: b1d90a862c89 ("drm/xe: Use the encoder suspend helper also used by=
 the i915 driver")
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index ae92012253f8..75736faf2a80 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -345,10 +345,10 @@ void xe_display_pm_suspend(struct xe_device *xe, bo=
ol runtime)
> =20
>  	intel_hpd_cancel_work(xe);
> =20
> -	if (!runtime && has_display(xe))
> +	if (!runtime && has_display(xe)) {
>  		intel_display_driver_suspend_access(xe);
> -
> -	intel_encoder_suspend_all(&xe->display);
> +		intel_encoder_suspend_all(&xe->display);
> +	}
> =20
>  	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> =20
> --=20
> 2.46.0
>=20
>=20
