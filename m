Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BB6014AC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 19:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E856610E3AE;
	Mon, 17 Oct 2022 17:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1BB10E570
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 17:22:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666027337; x=1697563337;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hFosRx4T0dbczzX7zKgXqDdKjVT5wQYHivtEQev8lck=;
 b=Hb8e/7laF4fpp0p26gVAcCIuyN6Hm36O/Diit5TrQ5gD4x78OApdEkLu
 TZlfnPvu25imE45aPe1eCI5X5GMcAd/KHLpS3geRDsfnqwdkOAbYP51SO
 qXjYGVu99vi7c0AhZTUUcJZ2I6kz/U63qepBq0U6L5wZC2L0GJEl18p7D
 osMwgfkImddltEAiKFpA0tDRZCFhgEP2S0VXl7yZrUQRWWF1EKEgF9G9Q
 bWBkHooaWncCQE3wfeOKP3d0wmL20raoBiuX9LyYXaGtqJaBNXx5i358v
 qHTXlfNALgEMgGVyRiPahooZQtzCf9lHP7MN7BqgSqqbRJwQb5m4k03b1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="293231965"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="293231965"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 10:22:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="717573141"
X-IronPort-AV: E=Sophos;i="5.95,192,1661842800"; d="scan'208";a="717573141"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Oct 2022 10:22:16 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 10:22:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 10:22:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 10:22:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ij0toMjFTzappVbWTCD4gJqnJuVlgRgvawpCn/NslS/Pjny/2P+wEvvYdXZJIjaYlWYoBod8He/yvbhBOYv7866gpYLVnkVPGKfJyO5DCzaG9lOppppqqapsgwwN4B/2TZ5wgw949JWd767x4wKz+ook4h59mFd9pgYGJ2xV8KW6mYiOQkIQOeXOeIEudtvtRTahiiombm6H2qA/zJx+Gwz85ifScGNy4FCT2wBiaMjzRPENkgezki4EjONR+dc1TkicGWdInI5Spe8GP5A5z3cTj9t23OS5xCp6mp2aK2LFV7YN3RVSUdx0UhESqHVz3aNYn9P4lqvH+JBAJDeHRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFosRx4T0dbczzX7zKgXqDdKjVT5wQYHivtEQev8lck=;
 b=mU+pXITE4lNISHO1sKaLL4CkL9BKe6c1+PTZPwqnud8Ayww3q9Vgkt+bvrqqqWLyyp+L3SpQNfrNvFEGnnXpWeM25ESirEoBV6DjTtWNNqeqjiTC7G0Uu+SEKbwSsDD3Jd/UWtaadPaJOWnsS1hQtbWGKICNDSNOTKGyx5/mShh502Zh2Ux1jeqBkewp+ya2Jqg/e9tUjMQ+QeqKwR5JClSINzuvlaRDHZOb4OYwFDlCshIlCR8lZM4ypOuo8a7Eru0QKhXgdrbnidqZghMkls29A8+zvXZLII5ehjLSWQQpXaQk1z4ASCnUJaXKtpTsii/wu2CpSInpmCVt3LGiBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6800.namprd11.prod.outlook.com (2603:10b6:806:260::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Mon, 17 Oct
 2022 17:22:14 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%3]) with mapi id 15.20.5723.033; Mon, 17 Oct 2022
 17:22:14 +0000
Date: Mon, 17 Oct 2022 10:22:08 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <20221017172208.ji2eyhysrrotwo2i@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221017085525.3898649-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221017085525.3898649-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: MW4P222CA0029.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::34) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6800:EE_
X-MS-Office365-Filtering-Correlation-Id: 69102e71-fb71-4b79-b0e0-08dab06421d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OArVghdo6ZC+scoYrkg/bY35qGr1TKzNl8MhMeBjdvrJQFuxKYhWDd0u37QacLraWBmea+83l+vXaaAm0CgQXlH/1rZNeX4grGS7TEW3ggWv0n7pDLsTZxNKzwBE3og7tKPjjKnwntPg0YC5WZKB+z9u/MaPGRryiVWF41E9m+7slecvXBc5/tPyyPvwgVkEgJNDM84ALjQzkMuidDHjWgrKspIJt9PTKl3zxBEO6FLicOZnsIAydx6uYqJrpuuLwlC6o+72MwcVzR9xp7qQU1aHIzrGscdwX4ugybAToBzlzeGSMh7mABjIOwYnjM6JgKOiZaQMixBPHZYPBWKWjc2Tc+0NTB3i/xWrVj5YyOAAlAWRUZEXLSeZL6emBT2QrpZVpC0c6tWdPInNq91esgkHJekyCSmp+lj80K8fci6trIIs7D7MZcPrj9sHpVQ2dLUOg2WdJ8LvXcxCzCgS90VVYHIF4wQCsTjZ8GEPlNez8GDTZWntrX+/e85hzEqT5v/DK2aSMNd+su3XM2sDJKZVEWZExpw18E7c7EF6UFQTbWYTyFgD4/3XYQTFE6VNzKn2sJOuGX9phy4C57O4xgs2Or10LNGf/WNcuTn+P1eKmjVP+NbHxr6FTeDsTgo4J09lxshpwjUv3bn07NsrwH1fRj5r9FepgugjxXYnghNXWN46GQ0PGcwi5knDAYPuWUWvFY6ijqKkwuAMNX8pGw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199015)(316002)(6636002)(186003)(15650500001)(36756003)(6506007)(4326008)(2906002)(8936002)(6862004)(26005)(4744005)(83380400001)(86362001)(41300700001)(9686003)(6512007)(6666004)(66556008)(66946007)(107886003)(66476007)(8676002)(82960400001)(1076003)(5660300002)(6486002)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d2+sk6QVSRGiRzfq2drW+RNLwGrO5dIN7MEfrNxNzbrSdvQiyUuh4IylX/5I?=
 =?us-ascii?Q?dGInw951T8nlCo+4rapPae9H5Xbd1fWL7NfR7c4gaO9r+YiLeqJ9lTDkedVZ?=
 =?us-ascii?Q?QG0thcsTmdd/b79cvOluCoIk/ZsWHkuOaS+y0Wj0dhGBwXtyIOX9o2jGjLxs?=
 =?us-ascii?Q?sScGp9zMMt9jUiTSjUgJP9cY7DthEIUeo1IkHZ52Glny4tYK9ro1LZguV8UG?=
 =?us-ascii?Q?RsFmfkZmaaueVoFxMhjiFO1c31Din6dHAN7liJ21+1AHp46TnxOL/R6MJYjN?=
 =?us-ascii?Q?fXLKAuOpmVlL7zDif6Y3+2Cf7Y+L9nqjalG9VHG3gTt5djvj51RiQsHBQmji?=
 =?us-ascii?Q?1uv7BvBrlH7tL3ZDFwIfMku9PV1Im3ZWAWG2+6ql3rx+UaLeqXGtO00ziW0I?=
 =?us-ascii?Q?l/ouHC3JevN2+N/r8ea6sn8UGVSz2RT65uDxS1PldVpglJJCpvJHBwyJBveI?=
 =?us-ascii?Q?NSR44kK0vZymRPkCtfIZEVpHHIjCF47BcmjC33srPo8Tj0oCuyx1DYEhKCSg?=
 =?us-ascii?Q?IhkNyjIx4l6sg4qpIhhsgfBuw3cZ/e7xgAYeOfihP0lEanktsmR6KoRZ6fpY?=
 =?us-ascii?Q?pSIODyNm6eu8YqxzyhWHMJ/VVZdgSfa3jGukkAU15YrXGnifgzHhntHb+bsP?=
 =?us-ascii?Q?rHAUA3llfm6XIIKX8SkMWbBR2V0u8uNq32HtuQ7lYnKR06S1qsnNENwM++YS?=
 =?us-ascii?Q?NjYQj07TDwM2M9P3TuiCJm73h/51R8tpdq8PUgLCvr7YSamBBo0YOiWtOG4L?=
 =?us-ascii?Q?qwm96Ps20SaP1Tc/KZrYI/k9L2ExYz2fOX59VaaJJBGRc11vFgUwHQbsBXp2?=
 =?us-ascii?Q?QmLZP5kRRx0OpsfQvVRLkfkk0COyVT8S9jpoJh5WKane9H8vIXnVbogKSCfW?=
 =?us-ascii?Q?3ByykJLHFY84fnPjJ/EFq6JqAg784VxxsxEJl0D13FglE/K15732MxBtXBWw?=
 =?us-ascii?Q?cvZWORCFgiZ9CGYzLDvkKk+zIZrPLbVnvT6tqlNXHJT7c//eRSzJsavL4GHs?=
 =?us-ascii?Q?7yC6ld3Jv2q9KKwvVG18dx7pS6+EmbIx2pgfs8wiI021uOHYqitcykKYgCem?=
 =?us-ascii?Q?O5HnpZbx3dtvG7YmrwLswL55CNYYW5zxE3q7kkniTtk6KsELtp13St5IYFTB?=
 =?us-ascii?Q?/ueoG4JSJ5Loa8yTX4uG+P1GI++6Hk28Fz6GyFmpRikcwC/zhervnWogjJVf?=
 =?us-ascii?Q?0HxwNXRQEp+n0ps5i+0stB9JGUPktxMWJKpN/jfjlHzGG++Qv+XhugbGA6GO?=
 =?us-ascii?Q?537n9iYiXF2X1+ZfElLqc0O0bR9Wv2Hmiqfoe9SRp9ooyATaF5FqbhwGTVeq?=
 =?us-ascii?Q?1T9eCe8T2egPgTSEX1gqvNpmFJ0U/dkFJQ6pcC7BkHPuq+37baSgOv+l7MOt?=
 =?us-ascii?Q?h2/Pa7SVmZytIy5ekFJ+iktpazrsv5F7E5/PBmoTSBuSUJyTIOtlagH389H6?=
 =?us-ascii?Q?6pMBmpExJX2X9w5RrBcPMoi5ElzkLPsujh7Q9zFWCpqiZvOuGQty2QZPeZ6w?=
 =?us-ascii?Q?tDg3BP28ajew+ZcgEm4jFgz7DgV0ZhBxlc0idFlSV/dILHREBwiiLpWzg4+x?=
 =?us-ascii?Q?IBWn1+14Y/efrBn++vxU4nS6T8WX4Nu/eXFjuI5yKMKCRlXIK81RLp4lkhCU?=
 =?us-ascii?Q?nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69102e71-fb71-4b79-b0e0-08dab06421d2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2022 17:22:13.9221 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cDwK6fxb/ZNcCiuZLJ731efPY+ajtlf0SB3OcpkO64j6/k5ubBhm5kAhH1rNCZVVZl+/jhq82yqh3irdhS//oSzOSWhrVJoL5DQbIJi3qss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6800
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix clear mask in GEN7_MISCCPCTL
 update
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 10:55:25AM +0200, Andrzej Hajda wrote:
>GEN7_DOP_CLOCK_GATE_ENABLE bit should be cleared, not inverse.
>The bug was introduced during conversion to intel_uncore_rmw helper.
>
>Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>Fixes: 8cee664d3eb6f8 ("drm/i915: use proper helper for register updates")
>Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


Lucas De Marchi
