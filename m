Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A2897686B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E593610E172;
	Thu, 12 Sep 2024 11:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IKsnVSfk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 366DB10E172;
 Thu, 12 Sep 2024 11:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726142317; x=1757678317;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=wqVOAh/zhVeWTvl0CpSMqdrW+UxmlLUxIVHjU1SwArU=;
 b=IKsnVSfkyEPUzxxTLjE87HulagFypuEUNVAQrK9xb0pew13oHqtFcMW/
 1VMS12O54TGQGaUiFK8NY0agkV0fpULGnr+pWRoL9nCeWk0V/vEm2uMZr
 8LWfCBtbrBNHaUUweLvIYGaMQLVaSFe6dw+gHfz7SN4fkfouF81YZXvAr
 OaZSw2Wq7gU0jg+Zek5gSNJ6Qm+123BCHX5lrBncJAsf3bkK8LnnpCgKK
 ePoKr9K40F/GuEtkQ8oTjN0CFYKrGlelqwf+5s8jdIh8uCtwsXQg49IQK
 f/CD8+RYU6F5ek5xQt/dbDN+WxS8wHDq/fHf0kCzaWEUumP+DxOp0FN0D A==;
X-CSE-ConnectionGUID: xc1HnMy3Skuyg8IySs37aQ==
X-CSE-MsgGUID: 99hsy9HQSd+A2XQ2CCYCtQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25090949"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; 
 d="png'150?scan'150,208,217,150";a="25090949"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:58:37 -0700
X-CSE-ConnectionGUID: PhgPZjv9RzaK3Yq9kBCzAw==
X-CSE-MsgGUID: MEBda4sLTyuMdAdDIy5o3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; 
 d="png'150?scan'150,208,217,150";a="105133740"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 04:58:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 04:58:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 04:58:35 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 04:58:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q1xGPQa+PKsvXCiudF1Hd4FkZxU5AyD1XoPeJEPwmQ7VUJGv6O4fni47PjOyyCu6wJVgEQ0bD8jox2LPj4QxWzk1fC5qzpxRC+f31FDXDQZ3SyWtqYXpTQ2q4xAy63/LXmzGPY1lZrFtAfomJb7eM7WlJFN/mI9nEAHFmWN3mxzybfufKN1tR+YW5A0Ht0GBi4aneQbIKQxr31YEJQcYs6hINSUXfxF3mAYeP75gTVk4ZQiDP3KQXsZ3PETrJFJG5cR0ACVGw2SQyscH1U0xa6AAKW+C7Pk+sn69BbxI0ZpTZmzQJBO5H/sIwBU7gVo4ZjxcKJUC0g1vZwusLsezvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VTS7SKB7/X9trn+Eb5YuEHMr8rZpcRjRDQ0vgQbejnA=;
 b=cgp3k5iUVXHoYoR/LIUlZfyd2i2ldmc7Xq1kdwg3TADK4dpQef9DhV3WQxq95zZq1/NmxJ1jeu3OOWSppN2+S/LkU2/p+bYJn+LDnp3VWTFn+8+dhJXhqEfenObV//8wLSn2klrZ9G5VC1NNTV+eSR+Aq+7ai9JOdFRIViq0Qgcukls+N55PTNfQAGSl+ZtEH1saIi4Xyt7ewSD/5bUl8yOd3MoEf3Wp4nBMcToFhbh4zsxbowVw3TU75SJlf+K/E0cwjGvxICoexMtRevFgm6CalD7KmmHzAi05hkZdNgwQZsimp2dFothvBM319vztkgYOMk9tZCpgiXEhZnb6FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by MW4PR11MB5912.namprd11.prod.outlook.com (2603:10b6:303:18a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Thu, 12 Sep
 2024 11:58:32 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%3]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 11:58:31 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Topic: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the
 FFE preset
Thread-Index: AQHbBNLUtmidS80+BE+y9MO1RZncV7JT2+MAgAAe44CAAA9TwA==
Date: Thu, 12 Sep 2024 11:58:31 +0000
Message-ID: <CH0PR11MB5508AD004C29C318DDF2F625C2642@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-3-arun.r.murthy@intel.com> <87frq5i6p1.fsf@intel.com>
 <IA0PR11MB730726CC81E9D4EAECE6B25ABA642@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB730726CC81E9D4EAECE6B25ABA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|MW4PR11MB5912:EE_
x-ms-office365-filtering-correlation-id: 57c94793-873d-48a5-e30c-08dcd32238ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?Kfuv9wYtZfccWX7Yw67L0YmM4zp9xcnt8CqW5qoDH8oLpBZ0HnGn6i0CHlXf?=
 =?us-ascii?Q?ijNROjSUyWQU/PaUl+X7f0ok2gbpBg6fOIH9uTKUi7o2dIc6t1rgbKnz7sxZ?=
 =?us-ascii?Q?DWX5Fpwd6LyFLqyUzqjKdHSLYuY1K7sMFrbbCETYfFQq/u1g+VCZLq7in50f?=
 =?us-ascii?Q?vwReuvDS1JWjVVth4BBAA2aAxRC5DC3aTH/LTNaC2cQTCc34FdiVQbskaVrZ?=
 =?us-ascii?Q?IUBdUQttWdjCLoaF3br4/6zoS5MJY/1ynFZFu/41hcqHRaiDDep5d6xHEouQ?=
 =?us-ascii?Q?rdVXVARTdmJf8+uupgvQ7dJO3n9VC19FrhgOSALBmutU/WZvmEI9zd0bxxJd?=
 =?us-ascii?Q?HhoDJ7/owrGBCikwWv3TzorLOzB0uOZM9k22qlB+GwYznyX6cpCSZ6C3tzTU?=
 =?us-ascii?Q?XgdiONXuLJe+sJJfzSaN8CNjRj52AxyIi417fr3znJ2n+m3B+WIF4trZuCxW?=
 =?us-ascii?Q?GZBH0bG8x73zscqPXMrxwCiSZA53OY8ZKZZct0spQLJi7FdEc9+Xqrx+jdQe?=
 =?us-ascii?Q?C5LSXizBlcrL2bAMJc5j3e09ozfMhEtsCOdCR3gOozSmuMFhTX8H51k7zO39?=
 =?us-ascii?Q?X5KYMKctoDKndPytcPKSNrlcF+Y/3sreGBXIJZbHBYnBJ1k5+YRUk6sV3igt?=
 =?us-ascii?Q?ifwTdO68JYwKkjxHsyLVrZNQJz1ooSj+RZ3eKZ2FQ2KGokNXlqvXTUEwF19T?=
 =?us-ascii?Q?u8RKj5nuNv1StpIAb1Ye+ITZDIBU4NOkdcS/JdyQ8v3jMZaUbVIkaaDCHgI1?=
 =?us-ascii?Q?nxBMkX3k7b/tiUMnGCMwY1pKKG/+KAITTvEcAENy7LGVjNxiQdkK7lXWu+Tj?=
 =?us-ascii?Q?WsiWPOsjrbWpvXux22FMPxRVyb/jFnEVGl+WChuOZdCNEL5AJG+fR+K7iEdo?=
 =?us-ascii?Q?PVDTmpGGfXEQ/STYfYjAku4HOGX3vUcL/IfKdKAjihHIM7hel+2u0oa66Tb4?=
 =?us-ascii?Q?K+/Mf/Wb8EjUsRGJbXYQEmQeLZJviYNX6KwYZOasTuCQK7+BZcMlo5W/2sUb?=
 =?us-ascii?Q?TCF//Vz1V+Wo7dj4FRNipvl/HwkzdlWD8LM64isBNyCvtLRshsc5Uu9m3YfF?=
 =?us-ascii?Q?7COe3ioNciT4/oAuFMniGLIgaZQM2F6r5LbesVcvqD96NIgo9GlrhqFO4DmJ?=
 =?us-ascii?Q?+qF6zsVuBfNdCcsQ1pXxcNYSCOdTgUCy3zjzdPytgjg43rpjwTdV/YcKMGw4?=
 =?us-ascii?Q?8RsvTrEWD0vur3X7O5nSFb8xli4fSDTZs6aNk7jsfVgvlnt9uub4d+l2lU53?=
 =?us-ascii?Q?vMFVSzB1nKfK1fDWj40iJRLXMqrnHuZ5AnAmSMcBZApqk5ckwO0suGetTlFA?=
 =?us-ascii?Q?iQh82x0WjbrPxGAhqnsr4OtbGtlxESCnxkxO1el689fR+QiMW8/DKJlupZ5h?=
 =?us-ascii?Q?by0UdbDbXoL9ksFWCHg0iYWZfFO4rEJ1KjOYQjf/4KdAysPvhQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IypKzuRMZb7zCitVYTsmD28A5NJZwLfv2F6Tgx6hmXLEZYTjAZsAqCVkrg5c?=
 =?us-ascii?Q?iGe8RtFUdb/5p2D35NjfbkmHb507X71DHbX2sMWq1hbVwOYwRc1i0r3bSqjS?=
 =?us-ascii?Q?X22QyM7mo+ukgcqshZetPJIuP+thajpIOyZlk325chmSncw3QdZxSrYEkgzK?=
 =?us-ascii?Q?WAzbHYf1lUPBtnO8NsVx9fh1aj7SeYPaPg5Zj/DAxcpaE9bP1ETE6f71gxnM?=
 =?us-ascii?Q?oK5exc/CHCTpRlX/6/P2Q24mf8nBGSSzdso667zeAyLC+7Yw4gF72VQyKdRr?=
 =?us-ascii?Q?0q0uZEoT8kQip83nJ/NIEh8EHRv7Wdv/6ffix7o30L0SSOwvPpe2X6hz4UoZ?=
 =?us-ascii?Q?aj+M900SG/8mz3JEN2/Mx9RgJ7H+vkP8ASotrMTsQJOyopDzbEaD56l8uYcO?=
 =?us-ascii?Q?Rg9CqxglY4Cixed5TeDs+GjOkmpKpwaFxgm45RUpw+o2nO+qmhwh3p+TMK0G?=
 =?us-ascii?Q?omd/LriSfAdt8nZOca4g/MFPiNyK2mrcpw21+ys8BFxWh9ukbi3VUbLBQEIv?=
 =?us-ascii?Q?dWDlvumPK09onsqtf13h/tJWtV2GV1cLf0H+fVBi2sOCwpqH4ErNLvJ1B8RM?=
 =?us-ascii?Q?hL62Ef8Zj7GDURVOQJ7/kQD4gMkwKjiBv5xUzOZvjrbSeIIMTJm6yWhpptlX?=
 =?us-ascii?Q?B+nwkn15FdOB47v22QxL7hsawDLJeJvGuuF3f5h2E6U4yFwK8a1m+ln0bm53?=
 =?us-ascii?Q?RciARriVXs6H4nptQWpYY7AqI5+EDeUOX7OsJevVsizmmnRzmA/C3uDXOoGh?=
 =?us-ascii?Q?MHzSr04LRz5wM1TrbUfAe/jKobqZYnvF9tJPTrsGxNVAWjZEhmz+DaDCtAUC?=
 =?us-ascii?Q?tscuzJfQcyViyN39ekackg2/qzQ9npm3O6C+/I7S1srMytoniyHJBj2yG4zJ?=
 =?us-ascii?Q?avyGmGT4RDIj+61lGY5ydPueBO+QYsGVFh0EIAz9W86fUdRRBp5oqfvmlYDI?=
 =?us-ascii?Q?XvKq1REZOEnEvLStJQcS+cKSUl8i8XliOwRUz5/WDMo71ONBlg5c+xQMmcR9?=
 =?us-ascii?Q?aoiiyOC3M3i929+pU8ssNQSw3tRQrvDdtz/8HF4XRBi5e7lMCRqkRwkkNue5?=
 =?us-ascii?Q?xFqfQtA3T6nusviNTPxpng4rv6QE8x2Olz3SU89Z1hejmYbbDAqeptO6+A+3?=
 =?us-ascii?Q?AMRGaGRkdjz9WdmRBeZAQ14FmfAwbyyTLt+we0TrP6DvElFSie16CTXlg92s?=
 =?us-ascii?Q?ACGcspN3mPKIiMJF+TroAstN8U8hE1/Q5MktqCI3LO8Cluw4VDMn5cVdJ13V?=
 =?us-ascii?Q?ZCKaWEDsQ5cw7O8NVauLsUgchK30J2W+/iWJi6vVckTc/vY6FrjaedlIxOZ/?=
 =?us-ascii?Q?qzhXprtCCce/Pzrdw9/NQj42CqgWCSbi8G9pESXRuW1LjoFENyENAaFrPJWt?=
 =?us-ascii?Q?QvXuMnWF+Fkqwa9QxlZcTLktNyVrRlyPd9WJZNHdAexyoHMuUgp1NQe+psci?=
 =?us-ascii?Q?AQia4UPwR9sw0BOd8moTDlxTZgRgT6e6IPv6u91ViEjkf9CKA1V9HDk2oksO?=
 =?us-ascii?Q?eMKA3+Dv6lyp8YSBRcvXL8gsjCLNtCyU+s0YXxFeiMiniYJHz4+exgKFEx5U?=
 =?us-ascii?Q?0OMacXnfeeQkKZda1bR12m3aVk2Xj4+JiwzraUGBktCL0c4r5zQn13egj02Y?=
 =?us-ascii?Q?oQ=3D=3D?=
Content-Type: multipart/related;
 boundary="_004_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_";
 type="multipart/alternative"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57c94793-873d-48a5-e30c-08dcd32238ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 11:58:31.6633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ALKNbiPPKUb243uTPTYa2HambChG8RUGtoT3ndKaiyKATEFJGK98r1Ulz6vWoTixiy/zU1IGYQmdM62uHJEiqQGar2aGWUMP+lfXMyKA6iJe1g940XxNDTQgs8NEs71
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5912
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

--_004_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_
Content-Type: multipart/alternative;
	boundary="_000_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_"

--_000_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jani,



It's as per DP2.1 spec, where we should be reading AUX_RD interval at the l=
oop before we wait.

[cid:image001.png@01DB0538.65998930]

Regards

Srikanth



-----Original Message-----
From: Murthy, Arun R <arun.r.murthy@intel.com>
Sent: Thursday, September 12, 2024 4:25 PM
To: Jani Nikula <jani.nikula@linux.intel.com>; intel-xe@lists.freedesktop.o=
rg; intel-gfx@lists.freedesktop.org
Cc: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading th=
e FFE preset



> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com<mailto:arun.r=
.murthy@intel.com>> wrote:

> > DP Source should be reading AUX_RD interval after we get adjusted

> > TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting in

> > DP

> > Source)

>

> Please explain why.

As per the DP 2.1 spec section 3.5.2.16.1 "The transmitter shall finish rea=
ding from DPCD 00202h through 00207h, DPCD 0200Ch through 0200Fh, and DPCD =
02216h, and writing to DPCD 00103h through 00106h (listed as "AUX TX respon=
se" in Figure 3-51) within

2.5 ms or less, such that the total duration for AUX TX responses with a 20=
-loop count does not exceed 50 ms. "



Thanks and Regards,

Arun R Murthy

--------------------

--_000_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">Hi Jani,<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">It's as per DP2.1 spec, where we should be readin=
g AUX_RD interval at the loop before we wait.<o:p></o:p></p>
<p class=3D"MsoPlainText"><img width=3D"447" height=3D"225" style=3D"width:=
4.6597in;height:2.3402in" id=3D"Picture_x0020_1" src=3D"cid:image001.png@01=
DB0538.65998930"><o:p></o:p></p>
<p class=3D"MsoPlainText">Regards<o:p></o:p></p>
<p class=3D"MsoPlainText">Srikanth<o:p></o:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">-----Original Message-----<br>
From: Murthy, Arun R &lt;arun.r.murthy@intel.com&gt; <br>
Sent: Thursday, September 12, 2024 4:25 PM<br>
To: Jani Nikula &lt;jani.nikula@linux.intel.com&gt;; intel-xe@lists.freedes=
ktop.org; intel-gfx@lists.freedesktop.org<br>
Cc: Srikanth V, NagaVenkata &lt;nagavenkata.srikanth.v@intel.com&gt;<br>
Subject: RE: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading th=
e FFE preset</p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; On Thu, 12 Sep 2024, Arun R Murthy &lt;<a hr=
ef=3D"mailto:arun.r.murthy@intel.com"><span style=3D"color:windowtext;text-=
decoration:none">arun.r.murthy@intel.com</span></a>&gt; wrote:<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt; &gt; DP Source should be reading AUX_RD inte=
rval after we get adjusted
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; &gt; TX_FFE_PRESET_VALUE from the DP Sink. (=
before actually adjusting in
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; &gt; DP<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; &gt; Source)<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Please explain why.<o:p></o:p></p>
<p class=3D"MsoPlainText">As per the DP 2.1 spec section 3.5.2.16.1 &quot;T=
he transmitter shall finish reading from DPCD 00202h through 00207h, DPCD 0=
200Ch through 0200Fh, and DPCD 02216h, and writing to DPCD 00103h through 0=
0106h (listed as &#8220;AUX TX response&#8221; in Figure
 3-51) within<o:p></o:p></p>
<p class=3D"MsoPlainText">2.5 ms or less, such that the total duration for =
AUX TX responses with a 20-loop count does not exceed 50 ms. &quot;<o:p></o=
:p></p>
<p class=3D"MsoPlainText"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Thanks and Regards,<o:p></o:p></p>
<p class=3D"MsoPlainText">Arun R Murthy<o:p></o:p></p>
<p class=3D"MsoPlainText">--------------------<o:p></o:p></p>
</div>
</body>
</html>

--_000_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_--

--_004_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_
Content-Type: image/png; name="image001.png"
Content-Description: image001.png
Content-Disposition: inline; filename="image001.png"; size=50760;
	creation-date="Thu, 12 Sep 2024 11:58:30 GMT";
	modification-date="Thu, 12 Sep 2024 11:58:31 GMT"
Content-ID: <image001.png@01DB0538.65998930>
Content-Transfer-Encoding: base64

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

--_004_CH0PR11MB5508AD004C29C318DDF2F625C2642CH0PR11MB5508namp_--
