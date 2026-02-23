Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNltIKmAnGmLIgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:30:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61EC179CD3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Feb 2026 17:30:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5FA010E3EF;
	Mon, 23 Feb 2026 16:30:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xz6+Ls5B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 306B410E0F8;
 Mon, 23 Feb 2026 16:30:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771864229; x=1803400229;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=gJGdYFdhVo9T/lNK1nL8Mas2Vgx4a1CgL7agOil59GY=;
 b=Xz6+Ls5BQ5IOZdL9AYJzo0EdOqUblQSXEeLfEn1PT43zj7n38gPq1DXO
 k8zCrJyL+MUzk7fdtuS0NZTF1dqkZMdcQ9osTS8ZMv9NCd/mBJ6/xXn0h
 0OCgcALML/LVQ0ltsYyGOWfzfz3mJpiniQlN4235O73p3dO+RTbjzxpw2
 ydRiJlbVJanmj52qryp7XlLH5Bme4+UzKdaXz9A6uX8One+P9asjaT29j
 BlWTnyMD2m2Q6EHpeBlARnbeMOLDIpAt1UTaAznFTxV+lQGka2RnfFR4U
 CtKUu5lomO/qPcFbudFmtBUzK2AE/9m8RmteSaZjHVlCiHWuBS0XaLYVv A==;
X-CSE-ConnectionGUID: GGexZpX4SB2BpEJy9p3JSg==
X-CSE-MsgGUID: PvYDnsfyRya8pMiD7n5OIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="71888804"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="71888804"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:30:29 -0800
X-CSE-ConnectionGUID: i/5zCRBpQGKXiGZHLztCNA==
X-CSE-MsgGUID: Px+ZJzAsTmmb49Hv+PiKBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="220120185"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 08:30:28 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:30:27 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 08:30:27 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 08:30:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mr0qnysJlMCcE9rGk17D7LnXIYJiX3M2SHG19IBBqYtYCQHfm9K406GGU/XHl5UKtH38EphCLg9gjtR2ZlfzEWTUhP5aCOqJ5QYbcDtUswIds4LE/mFI8KS3B4BVqbBwlD9ysmZnyVhHGNvsNBwZjmejJe1HAZf9lcyeJy1WbXByq2QRmlVChNhIuXr3Z7g5ZBD+GhR9TeuQ6wKHK10fbakQfpkrMhaquRtQxM0GIgxKLFmd/VEDJY+pGlHlXqQMUPI0PHqRBgu8+wqUvT2XCCPVjcJTwa5j0b1FVo+3h+H1eEN/xe5nIQEBHAKA/o9tuFbjIBmxE5+Ww4c87NshVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1WpHb85q6rsqShwiyso/JYk4I0VKBOPQBH72md4e1w=;
 b=wQmgsagqHgmGy1QmODNnpL41EfXO0Y7a5oQK/2EsS7YsZ+0ogpzEAZbePBXMGxaS4bYrFhfgLPlkKF1mfc64y7ZI4c8GLeYK3Vp0a+LgU7iBoIkd2OwP1NfyuyDUxnQvHEqungdasP10TiBJX+ChbmOxzjk2AUcZnLOx0PlWbkmhQyJ4OsnpjtmlpxH1dYEfF1m27nFY7uUyvQ+jgow9cwCyaBeBAE8w/ME5gP6hdWTAOFqx7pzDBR2rYyKFOjdLWHEGEJpZnuvGfXhm34G/bPHMUqPhBMiOq/KFcOSDmVpk/jZieUyww6rUHsL6rK5m8zNGD0YlzUpaB8UJe0gOlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Mon, 23 Feb
 2026 16:30:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Mon, 23 Feb 2026
 16:30:22 +0000
Date: Mon, 23 Feb 2026 18:30:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
 system resume
Message-ID: <aZyAma4Dr_e2cTCc@ideak-desk.lan>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-2-imre.deak@intel.com>
 <IA0PR11MB730721016164B7CE2163585ABA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA0PR11MB730721016164B7CE2163585ABA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0116.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7196:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e7a97fa-1777-4d15-3223-08de72f8d745
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h99U8B7fN7MY3xcq4YgGQ50C4tLG0fOFyADbQCgWFP0ytAhtlOrN306a2SWI?=
 =?us-ascii?Q?EzD5YD9yVWWSe1u/qGnS9h+lBEeDPohDs52JxMo2DqWk4HBRYmuI8q/LewKX?=
 =?us-ascii?Q?bWiFos/B/39Z0uftkyGCCAYvLfNBLq7Fyt/WOu7l4o8mXiZDrFciG9nCfclT?=
 =?us-ascii?Q?FZHb+D4siJJTutkGS+IvzQ3uchq6dO1f2Foi4JmTn7HDwgGvztAae8cc0Vz6?=
 =?us-ascii?Q?4qyZgjWTJhjC0pIqRWcm3juY6f4B+41nQjo5mWz9fYq3tYP2xF2Fy9YQiz6C?=
 =?us-ascii?Q?jsv/kwLhxuvagEJaG8peErAq7N8SzVx0VYqcvX44yqL7zl+cp3RDf06hVZNN?=
 =?us-ascii?Q?i2qN39JzeI/x+DhubP4oBAaIPbH/NjT+qNXLBLdReNLC8k8WkXs5xUZEukET?=
 =?us-ascii?Q?Idko8bexXCOgwMSwL3J2uIEeLaIPlJtC5MRLEcD/f+esCt6i2TjoG1Me7Ec2?=
 =?us-ascii?Q?rUIijkybl2n7/F5OYIbATT4BfaV9GvZ6H3H6bsEBCF+yDdM7AgzkWUGO6hKB?=
 =?us-ascii?Q?ZK9u5IN+DJyiccAZyW1ygB6IgRkQ9FZeaLVCtnRraMq3rt6CCwxh5dHrkDNt?=
 =?us-ascii?Q?81ZkN42gYd/Lf78J6eFY4VboYkbPPi/ZyD+5MboyQ8sxMBdSxxH319xxSG0d?=
 =?us-ascii?Q?1RnUi0pxnzl91skK7TirFdjLGCvBSpdvmcf/W3hgQnJMV9VpuoGENN1iZw20?=
 =?us-ascii?Q?f5Bg1LpYiTFqlGs+fPqgRZxc5UcyXv7HW/wBWaIuBglZYBv6q0DPVJ7bIs8r?=
 =?us-ascii?Q?tJbBJV2c2mtQ276ef9iou0cSp+igSYFmNXRKu84kxkVblLt+y4tuIc+d+b61?=
 =?us-ascii?Q?EqtWAZvaB864lBecebt3xdhqCWOHCuwGyyB3r9ol9mAc1c7s1U4SP6DwU2fI?=
 =?us-ascii?Q?o58KeqjHrYsk44OWDh9udakz6oomBcxuxJ1vruJoTnn8Kvmxef3WQoayZk3b?=
 =?us-ascii?Q?4BfcVoaSZLeIDnBLAwNX5s+vByIzoioS8OrSv7CN8U/27eZ9vBNcx0cKdo6x?=
 =?us-ascii?Q?gEY6LkyUiUY6F2wsA/Edmx+kFyvumoj1S/aI/F/ZDkmoyyoE7bJ2SBvk6qOy?=
 =?us-ascii?Q?AR8Zz6Y+mH1Veuevv6aty+zqk/Kvd8Ke+kEa1/W7V6UawwDYT0gQK3yc5F0v?=
 =?us-ascii?Q?ikRlKrk5kzmOUjeSFKCPn0G5/jkcO8Pp8MjvI7pcil2HVvqXPU+QUNrHkYRt?=
 =?us-ascii?Q?9M9/nEtRLbMaTT3kdpJo6By8S3p029w423Zh2Koyu0mOHujHWzsPIUtKVvha?=
 =?us-ascii?Q?2OByezuFG7lvpcOSwQtjmz7ZG7+32R4vF/YPZpTsBti441vBodaLzkOUjaMf?=
 =?us-ascii?Q?IMFVPvX3lvJRbJ7rLXVCBEpX09R0MQjqLpaoCHOlHJhq0bq96v7gD02K29m1?=
 =?us-ascii?Q?yB021a31AbDbzQ8iG41ldIDMkwBhfaJ4wLjUU6XNZSoXxZeyRR3AeyemF4vg?=
 =?us-ascii?Q?LiWJKI0PxK/ZrTeuGESzikUXsA8Nl0p6jvNJ3SpbfTAnoeZbBdC3k7E/Talw?=
 =?us-ascii?Q?RESpQjb9dd+kd1w8raGMPrYUrx3JNCWbDeQKaVQb/MCwjAbT0dJYbczyv8t6?=
 =?us-ascii?Q?4CFGlCXtJZyL/W6cWaY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L9sZJWS+4xIR3xQ90kPIKejcskL598X3IpxB+yq8AZoe5BHss0pXmYZaJNXb?=
 =?us-ascii?Q?JYdaMFowJRvip8bb1Tb9kEG2VSB9vdmXT+07cigx2BfWkdQkpSE5f719DT0V?=
 =?us-ascii?Q?u4SlKctitR0IYGvrugZncs8jSJ4vAEyr1JXpzs3IY//lDmMAmBWx9rxZOf6v?=
 =?us-ascii?Q?TAK7m0flX8JOl6/KIDrFgHGLaI343n9DVMmWPv4Emy+Txwf0SIqA+N2Y28yo?=
 =?us-ascii?Q?4RCU6siP3jXNnoiC0ntU4ehiTsudGmjeSygnKX686UlX6kSJyQH8/E/voSFX?=
 =?us-ascii?Q?nG04hOvtF2Q+8Lb/Bd6LDwu90R1TXOOi4MKXEIIVBYTYYOjRz6O9mkyrKmxE?=
 =?us-ascii?Q?I3EooP4glSBV6eN2wVli7oGBb04OUwp+kj/zCAPa0PFv1OJs3hjxSkX1euUN?=
 =?us-ascii?Q?Z/OBHEvXzbFaZ/ZtxPuYD9yfiVGO1avXqApxhIqSiQXi1ZAix6PiikIQqzbU?=
 =?us-ascii?Q?oaXARSOubJMrPRW3XcDHvpsTx+yDOw87qGJJ6xOfHqfQmL1iObhqNyIlbbcQ?=
 =?us-ascii?Q?v8JGBi5bo4wlG57GMbj5UkIaT5uQLv4JvqQQETZsOtyCbgli5LS3uJSAOqFy?=
 =?us-ascii?Q?DS2hEXIwUHviYvIIoxF8Pt+Mh2XxcXwxqotd7c8gDtno/FmVH8P4oqhelBcR?=
 =?us-ascii?Q?weVR+zuoL47QroysEPeppPmUJsd13NMu3gdRE69ZdpxvwBuWuZEB1hovsQbr?=
 =?us-ascii?Q?s8sZWTv6RU86VDxTzHcKgK7cNPTLjXI4pHAS2x/sdI8Dptcpu51AHj5+5kS+?=
 =?us-ascii?Q?06KoTnbp9om1l93S+V/SmAn/ocIMQMUkeoOEQA39UmhtaPaODKBaIvYYSUSe?=
 =?us-ascii?Q?mGxZUHMEd8yAECQIu2d1l1LCruOelOoSk+/wmw7lPFsNjXfo/og5Z8rQLS5b?=
 =?us-ascii?Q?OU8sSlPKq/kExR6A5E2+AQJ2ulWUAfoOf7DXm1iNQakQrSC3TcfFKFR+1dqb?=
 =?us-ascii?Q?tqlBBsLhONgXchRIvn8oam6mSml+DhsEenPuEZR4aJFwSOvm1p5loDXXX3M2?=
 =?us-ascii?Q?lPNWvISJGeodIls14Z5aFITCAuc6JOJti/rhDgpoFeZkziiWzKuATN8xARdi?=
 =?us-ascii?Q?FvsS3ppI7miZzlRBZbt0yHlteSNBWKa7LyEo4n/nvg7fuzjNRnBw76diMU2i?=
 =?us-ascii?Q?/EOX4FW2TtfPA+8GuqED9KLYh0HbyxOdVGdyh2ZehJ01oQtOtNdIXJGwozLb?=
 =?us-ascii?Q?ak1DMt0zxi607jbnbbc2zphlR0kuEUOoXPfpT/cKFhvMFLUBgfYYURrr7nHq?=
 =?us-ascii?Q?3EefSCfi2Kr4Todjw7e1CmAjUVqfntkohRdRw+fxdTKLne4tAxqSeKLpVXUT?=
 =?us-ascii?Q?TbqOGwS3ChUnxWvz975yXPM62HvRqRlLPNg5pM8s7LN2Fq7mvMZGeYHTTJVa?=
 =?us-ascii?Q?mJx/1rYSkeOMMKMW9BKJwqRKxKISVrYtc73P8mIfghN97M67wkPR0Iyzc7fK?=
 =?us-ascii?Q?3bfPzOl/mGbu/WFOMvq7gxCSnHhKRwiTtnhaEmAFntZPAcG802X9Xqps9uy1?=
 =?us-ascii?Q?3DRiscDS4hRLn9hRBC0/OYPaw8TAONfS01Jp/lu0vKLyCKupwT2MvGvTMhZ2?=
 =?us-ascii?Q?nd/Sj1hR06WqZ7NW0LeX5HlN/LVVKOGh/Jg8uox6a9MHU7+4pP8M5PImRnz6?=
 =?us-ascii?Q?RXuqNep/+AAeT42tNVil9pigeW6BKszfs2Bsc1KlylLbDvZjpgpnjgVAj3lr?=
 =?us-ascii?Q?xNq5OMP38YypNs9q5VsJjdx6AH0ohljsVETREldOnES0EnXcpo6jc4a4fqeZ?=
 =?us-ascii?Q?mxBBtOLF7Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e7a97fa-1777-4d15-3223-08de72f8d745
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2026 16:30:22.3738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mgC+U2yQ6twUN6ccZryR8+72W4td7zFvtRpMPfEVaqgFbMXMdJnPxC/OvLTrZafdlMvoYfYzQg2vmF5b4JCP5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,ideak-desk.lan:mid];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D61EC179CD3
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:54:38PM +0200, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> > Deak
> > Sent: Thursday, February 19, 2026 11:58 PM
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: [PATCH 1/5] drm/i915/dp_tunnel: Don't update tunnel state during
> > system resume
> > 
> > During system resume, restoring the pre-suspend display state must not fail.
> > This requires preserving the sink capabilities from before suspend, including the
> > available link bandwidth.
> > 
> I don't see the sink capabilities being stored in this patch.

The sink capabilities are stored in intel_dp and intel_connector,
including the maximum link rate and lane count, which determine the link
bandwidth. This patch preserves those capabilities across suspend/resume
by preventing the tunnel state from being updated during resume.

> 
> > If these capabilities are not preserved, the restore modeset may fail, either due
> > to a missing sink capability or insufficient link bandwidth for the restored mode.
> Don't see this in the patch.
> 
> > 
> > When the sink is connected through a DP tunnel, prevent such capability
> > changes by skipping tunnel state updates during resume. This also avoids
> > updating the sink state via the tunnel while it is being resumed.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > index faa2b7a46699d..eb1eed1c8c7bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > @@ -150,11 +150,9 @@ static int allocate_initial_tunnel_bw_for_pipes(struct
> > intel_dp *intel_dp, u8 pi
> >  			    drm_dp_tunnel_name(intel_dp->tunnel),
> >  			    encoder->base.base.id, encoder->base.name,
> >  			    ERR_PTR(err));
> > -
> > -		return err;
> >  	}
> > 
> > -	return update_tunnel_state(intel_dp);
> > +	return err;
> >  }
> > 
> >  static int allocate_initial_tunnel_bw(struct intel_dp *intel_dp, @@ -200,10
> > +198,13 @@ static int detect_new_tunnel(struct intel_dp *intel_dp, struct
> > drm_modeset_acqui
> >  	}
> > 
> >  	ret = allocate_initial_tunnel_bw(intel_dp, ctx);
> > -	if (ret < 0)
> > +	if (ret < 0) {
> >  		intel_dp_tunnel_destroy(intel_dp);
> > 
> > -	return ret;
> > +		return ret;
> > +	}
> > +
> > +	return update_tunnel_state(intel_dp);
> >  }
> > 
> >  /**
> > --
> > 2.49.1
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
