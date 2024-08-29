Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 111E49652A9
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 00:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D41910E79D;
	Thu, 29 Aug 2024 22:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k8P8/byG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 603CE10E79D
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 22:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724969504; x=1756505504;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eQUFFnZMYgy68/sW5aryHjNuCGueXaYfniETNH382VU=;
 b=k8P8/byG6zMBO5/QmJUZIqTMTaBnaficMQOw5cQrplP7pm9g7QuJ49ZE
 glymtJKbJkCRFKBz8DFd2Re/QaCJhptGbEH8v8iqA2twe5ayrQdgtwmSm
 EiPKYPJ43tigiPz7NUXWAnirsZYftdYZPjTKuskeEt3TQq06N9C0nz+uC
 3UhlwuxO5SSFTY0Jwp/q3AeQ/cHU3TAdfyUIHqpuZYIeXGAmJ1hpZnQs3
 FwmJPoKvqHK2ZLqUPTCfn19p3I3BZTHDaWsxVIj/uwFdfzpoGGx9EctW8
 F9CxOrhUCPQ+Fwlx2pRfzTkLynLMJ+K7hDZVeZJjLaCIKcELKWnfqL9v9 Q==;
X-CSE-ConnectionGUID: 2KT73Q5NQZqVeHWbOaXBuQ==
X-CSE-MsgGUID: 0E3Rpw3JRQeTT/izF3lS7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23782964"
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="23782964"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 15:11:44 -0700
X-CSE-ConnectionGUID: RUSDKTReTCChCozqveXAMA==
X-CSE-MsgGUID: ID8ty36bQ6ictq4buOPf7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,186,1719903600"; d="scan'208";a="64451462"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 15:11:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 15:11:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 15:11:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 15:11:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EgDzVxuE3fWOOQd+H7rgl8cw7ubELpFQ7QiWB0XUNqPC0C4fCYxWNCC2CJSyHVnsoioTp1r2iqp3fhKlI6l0+7NDGkk/pu/al7xdDwN2Oru+F5MqOKZuwWnc4L82FNQG2MjrPH3fxyrS1UfUWO1MY6TrP9AViCI6owe3JcUZ54rr5yA+L/hPSl9Foj9ph5iruiReBlxCN906k0N03h5JydDGqK4X5r+4L7Sx8K5bOtx6enXNngiMWs/pGP2iv7WO6McWZmYxk+ZUT4RbgnL4G8f7xZbJhk4WAoXTfpbTqzpWtSSYSZCM1nB+3fWufJZg8erOjsMUB/xWye3Axb2qng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7vZ1iWHYIb+RI7ImKmsuzJeh0d1/vAq4HqTbCsWp8Qw=;
 b=sb4O6eijKc13y9zJpHXUHPs6kJJNTJuYwJmC/FRCW2Pgx0gmnoJ03LvT99p6SFbe8k2+JPOMbxk14B4dg+NUo2UD4NXsQUnZDjfsKoSy3VFSIRm0ZwPYuZ7qBRMYklsQPp7JuQ29JFNAp7kFuZgFgZyu3UQdsxb01hEu9pHeoRbUIg5nOQmyf1pEug0lqpfyX/y3azIFvF5ELuCAUDTO5dgV6bLsLgeMbTVY2SbRKjiDXrIeSASyDs8yR3BFDSfwcLknjCmqerAzSmhh4uLY6jjYnAZ8E/JFZ79b0btHuN33bHkdjrage0OlLt84FxSYXlD1O5nVXyOuKCjz31P4TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 22:11:17 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7897.027; Thu, 29 Aug 2024
 22:11:17 +0000
Date: Thu, 29 Aug 2024 15:11:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLklHVDogc3VjY2Vz?=
 =?utf-8?Q?s_for_drm=2Fi915=2Fbios?= =?utf-8?Q?=3A?= Update new entries in
 VBT BDB block definitions (rev3)
Message-ID: <20240829221114.GF5091@mdroper-desk1.amr.corp.intel.com>
References: <20240821121740.1596048-1-dnyaneshwar.bhadane@intel.com>
 <172496755942.849455.14894523736040337099@2413ebb6fbb6>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <172496755942.849455.14894523736040337099@2413ebb6fbb6>
X-ClientProxiedBy: SJ0PR13CA0073.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6075:EE_
X-MS-Office365-Filtering-Correlation-Id: 5704f47c-2945-459f-7905-08dcc8778141
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Udp4UkpG1DjZj+Pm7h0zDumQVefFs8GToGRQThpz5y7AvbthZpyWrYJDLqBE?=
 =?us-ascii?Q?zLwZv/cX6qpWvO0WtFQ8nVtzSHnXDGFBoVvWni7y/Nbw31r3TuCJvtKxGreu?=
 =?us-ascii?Q?I0pKhh3jbn3tBfwAKy3ZUFdESOJNRXWA78m7k2CMF2FaHGUKiupe1uylDUT3?=
 =?us-ascii?Q?LT/xbfnBY1qBMNTtU1grTYWW5WPlvH+g0BmE90MxrAZCexgoVPN/hz3USj3P?=
 =?us-ascii?Q?zUhBXeu0BqhiJu3iHuIhz1F/rqlZjcnuhB8m4AS9izSDXXFuv1k1dFZy33w0?=
 =?us-ascii?Q?mQ2INItrqSparjWo1aYoqnQ5SEjsfMbEg4jPNSmhuOMhY0ZMSfciOn0FEuOU?=
 =?us-ascii?Q?T5QcR0zNL9xqyQPBq/YtmufxKge8PaCTd6pBOv3yf1lxzxdjanfqpoQAmejl?=
 =?us-ascii?Q?xLqmZ4rMKMsHUtlOaHIbqdqQacT2CWrA35HzIis7FaB+XbKNh5W/OnzF91BI?=
 =?us-ascii?Q?H4gLHtrjhlxPkdakx3w1aWO0inoXzlibAhRPUDcIHqHHADI3QiS0eHtc6s7O?=
 =?us-ascii?Q?Wa+KMOnhJkm2QJs9bhu3ZpTr3y5VkogQLpYdw+qJsxxgb722jrRDruL0e0UQ?=
 =?us-ascii?Q?fUPX+IlGr0vWAgeE/jo6MluQzXUeoI+bhI24v7ytD6XgCxPZ/0kIYnKSAD97?=
 =?us-ascii?Q?DdQMOXaxYrlA616ljdH4YHBAUfj/pgLkAJfb47FQssM45H5eT3/Z/xV4URIJ?=
 =?us-ascii?Q?S8h112ZYyv9tODaTmVpBLUU6BdsdMZ527KvYkXfDwhDMlxhOrUx4G3Xi+w4Y?=
 =?us-ascii?Q?8EF5zqGvLS9JkKOq0dy1sar1tWG7Nb/aElGJzBrJzMkTmvzvtxGgbSahyQxC?=
 =?us-ascii?Q?97vdYKaknOPNxaZfW7UVoIhqX1X0wx3oFZbxkCrWtXPOyD+VbqWKBZO31mfQ?=
 =?us-ascii?Q?Yz3sSB8jSc9T/Fj3ufwHNv+TNvZVtwJbTOIkub/BnmK4UCCYKEP0iq6Uijc8?=
 =?us-ascii?Q?znXRCCJOWKhtizGBw0tn2a364kfbXqVsBcFm9QFkV2OI0JmgKX1h+oNG0ZPh?=
 =?us-ascii?Q?NnGojs/BIPvXeY8bO+uj9roHlZPPuIXZCkswnSbuFMKQgg+ksfg5G5sPpfmD?=
 =?us-ascii?Q?oj/ul26ykyet+Lf6P1TU+7SidLFfrZx++pOFAsg81OrE9/kJoLLmxsUpgJbY?=
 =?us-ascii?Q?3GjtTOu9CedUNVfqTFJwAuMTjb8J/erFstXp1leiISGHOz5+XWaoChBHU40C?=
 =?us-ascii?Q?p6YSPQ3WddSAvdeB5ZXGZHiLjJaM54kN5QIvGvYrpGAr3L5EIlo4jCIKhcP/?=
 =?us-ascii?Q?zxvw8A5apKWOvwt5ZsTsu/HxXrLdLJDxwUzkYxGvk2FKVznGfqLvcGTy9+Xq?=
 =?us-ascii?Q?Xn8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?31rTg4T6hUwOy9985lIZjzkC3KJ8Lp5fO8FjTeerX2w7fjMyym4vqo5aFPHU?=
 =?us-ascii?Q?pZSdAiobUOg/8eIq0cD4bXOB6I62ALkvsd1jyu7vh36FJXKqehl9EeUnTBiV?=
 =?us-ascii?Q?gJKgPBG75CVUIoYH+hsvSD4vErXdPi697nwS3+oRwWNW9EUz+sN122IVVbgl?=
 =?us-ascii?Q?epQt3e6QqzyhyOhGFb5ezg3cjAXZfHn6uv4qrd4JSJ+lYxNQbqWYjvLpkyLE?=
 =?us-ascii?Q?zt+8wRy0gcawAFOQ6r7sTTymEF6TM/GipZNXPUQ8i/wyrTHKAHbLyZ2abC7V?=
 =?us-ascii?Q?b5yNo1qErZ+gf43Pr9Mfi64SmlIMx0mjAlImhkyUoIx9tLHeAkrdGsdA0OCw?=
 =?us-ascii?Q?0mQ0jwd6hfDmU62VJK5rIeBuOW4uzFQuXHUfI5ZDrBLvpCOmNmNHQU2G3INQ?=
 =?us-ascii?Q?NX+D0vmESt/NVVv9xXYCEdMRIbpnkFES3TBFDJ5VwxWJxfK424GMmtMqcMo8?=
 =?us-ascii?Q?eOdV6bsC+NVrKEoqzFWo58zlgYE8yNXgbOtwbyj5ll86PbjD/JxY6iNUEWGX?=
 =?us-ascii?Q?ULkGCzy4B4PGPBVIWtZsbzx8jzuWK9FYxZwmb1iDNK1hxxLh+2KmZCjjTJRF?=
 =?us-ascii?Q?1MuFF62y+ADXXa3Mg+MEYh+kHVidUFWG0KM2XoYwEXZmzl4Ri0qbQYrSyXye?=
 =?us-ascii?Q?dn2JV1owsM/gFaqXQ46QnUQk1SADmEYwUhJ3OdEPtf2IC0kbsfIxZtTUNuRX?=
 =?us-ascii?Q?qQIdEHhvsSejNH9Yln52U4urGTk2daXEl1P9GuwaDO6CJr3dYG2vp5boUMi9?=
 =?us-ascii?Q?9Xu9RHgMs2shypSps/vOX21uvUbE3WuWiExG973tmGdGlbqPCz2hsJgVfIOL?=
 =?us-ascii?Q?TT9iDlna98h+PnQF6bQhIoLMIhzpgp21MQdgd8sZh8O0s9+oQLCxWnqf8JxX?=
 =?us-ascii?Q?Q6Q4L+5XG1WD/GwH1PpZSTwSYQo91AsWgIwmRl/+Es+0wpJWu0wxU6dMq/45?=
 =?us-ascii?Q?xddCTEbHKN1kNinNCGX1K7f6w2DAYDI474Cw0g1Ii2TywdCJROTjgLcTQFXl?=
 =?us-ascii?Q?0b4ORA/ZyK8lHQNYsskMOMh1t5iUioaol6hC/g1IIzXaweCEsfRP8S418br0?=
 =?us-ascii?Q?5deRds7smSVcw9qJEKwqq+mksLok68WJdnQb8cHymFT5yKsm/5kx6MWPJt00?=
 =?us-ascii?Q?x+XX0YZgxNTmgK56MB4sieAe+oA6gjrXyKEki1oD555faNI1kxSoKK862k2f?=
 =?us-ascii?Q?OdqwKZLTDB+kh5vjGy8fCxMrEXspitaIuICPb8JezR/VnFfbkjEMJHquoYc4?=
 =?us-ascii?Q?kTahRQNgPvGADrysVZ4xDLpPOqBvk2R2MAlJeIc2lC9VEannDHTI/zKc7SDw?=
 =?us-ascii?Q?BSaT3Jzw/WV+e+VCuTmiAJtHcRIxPR6f/YU1kPr/Lfdv0mN656B7IHnOXVvg?=
 =?us-ascii?Q?hkNWfePc/0rvGS3q/tzEE52gDwVHJQ3JjHjLSHrMbbWx5jkURaW8itipCG6F?=
 =?us-ascii?Q?9umO3qQBWCJhLG7U9r2Y/KhicfNhdbarjrWPhpDwCMm5KXl5udyfCyI8t/7l?=
 =?us-ascii?Q?rw2y7gcCIcRgECLqvBKGxFxRIiNYKTz+VPKy6+zNjQg2JlMuBURA7ackD2Fe?=
 =?us-ascii?Q?D/0UqEvBufQn1E1OQmYTHIaks27M4CKS3yv06zaQiJ0fU9k0MYR1d0g814qk?=
 =?us-ascii?Q?Nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5704f47c-2945-459f-7905-08dcc8778141
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 22:11:17.7322 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1sPfy/jbAv8KgqURTQTTG+kIR7C7t5TXONoj1WxAmLbf6yKV201zQSR3U9tkaNn6hWvTrBScK6Wrc/cIPAGO8hnKlVMKoQuRt3DBVkqPO/M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
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

On Thu, Aug 29, 2024 at 09:39:19PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/bios: Update new entries in VBT BDB block definitions (rev3)
> URL   : https://patchwork.freedesktop.org/series/137312/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15317_full -> Patchwork_137312v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_137312v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][1] ([i915#8411])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          NOTRUN -> [ABORT][2] ([i915#11814] / [i915#11815])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@idle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][3] ([i915#7742])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][4] ([i915#8414]) +14 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8414]) +1 other test skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#7697])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#7697])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#7697])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#280])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#280])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg2:          [PASS][12] -> [FAIL][13] ([i915#5784]) +1 other test fail
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-11/igt@gem_eio@reset-stress.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#8555]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][16] ([i915#11965]) +1 other test fail
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [PASS][17] -> [FAIL][18] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-rkl-1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][19] ([i915#2842]) +3 other tests fail
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][20] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#3539] / [i915#4852])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#3539])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#3281]) +6 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3281]) +8 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-active:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#3281]) +6 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@gem_exec_reloc@basic-write-gtt-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4812]) +2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4537] / [i915#4812]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4860]) +2 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4860]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#4613]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk5/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#4077]) +6 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#4077]) +5 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4083]) +5 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_mmap_wc@read:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4083]) +4 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_mmap_wc@read.html
> 
>   * igt@gem_pread@uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3282])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@gem_pread@uncached.html
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#3282]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@gem_pread@uncached.html
> 
>   * igt@gem_pwrite_snooped:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3282]) +6 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_pwrite_snooped.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4270]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#4270])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-snb:          NOTRUN -> [SKIP][42] +77 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-snb6/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4270]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@linear-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@gem_render_copy@linear-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#8411])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4079])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@gem_set_tiling_vs_gtt.html
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4079])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#4879])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#3297])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][50] ([i915#3323])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk8/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#3297] / [i915#4880])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#3297])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#2856]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#2527]) +4 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#2527]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          NOTRUN -> [ABORT][56] ([i915#9820])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [PASS][57] -> [ABORT][58] ([i915#10887] / [i915#9820])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-7/igt@i915_module_load@reload-with-fault-injection.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#8399])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          NOTRUN -> [FAIL][60] ([i915#3591]) +1 other test fail
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#11681])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#5723])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-glk:          NOTRUN -> [DMESG-WARN][63] ([i915#9311])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk8/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4212])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#8709]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#8709]) +7 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#8709]) +11 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
>     - shard-glk:          NOTRUN -> [FAIL][68] ([i915#11859])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#1769] / [i915#3555]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#5286]) +3 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#3638]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3638]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4538]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#10656])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][77] ([i915#6095]) +87 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#12042])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#6095]) +39 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#10307] / [i915#6095]) +225 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#12042])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#10307] / [i915#10434] / [i915#6095]) +9 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-10/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#7213]) +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-3/igt@kms_cdclk@mode-transition@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#4087]) +3 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-d-dp-4.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#7828]) +6 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#7828]) +9 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-green-to-red:
>     - shard-dg2:          NOTRUN -> [SKIP][87] +12 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_chamelium_color@ctm-green-to-red.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#7828]) +6 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#7118] / [i915#9424])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#9424])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#7118])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#7116] / [i915#9424]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][93] ([i915#1339] / [i915#7173])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#11453]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#11453])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#3555]) +4 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#4103] / [i915#4213]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-snb:          [PASS][98] -> [SKIP][99] +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-snb5/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][100] +18 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#2346])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4103] / [i915#4213]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3555]) +6 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#8588])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#3555]) +4 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8812])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#3555] / [i915#3840])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#4854])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#1839])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#4881])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#8381]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank:
>     - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#9934]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_flip@2x-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [FAIL][114] ([i915#11989])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#2672]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#2672]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
>     - shard-dg2:          [PASS][118] -> [FAIL][119] ([i915#6880])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#8708]) +13 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#8708]) +16 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#5439])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#10055])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3458]) +13 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][125] +31 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#5354]) +16 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#1825]) +23 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3458]) +13 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#3023]) +19 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#9766])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#3555] / [i915#8228]) +1 other test skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3555] / [i915#8228]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#6301])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][134] ([i915#10647]) +1 other test fail
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#5354] / [i915#9423])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][136] +249 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#9423]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#9423]) +7 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#9728]) +1 other test skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5235] / [i915#9423]) +2 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#9423]) +28 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#9728]) +7 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#5354])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#9685])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-17/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          NOTRUN -> [FAIL][145] ([i915#9295])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#4281])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#8430])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][148] ([i915#9519])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [PASS][149] -> [SKIP][150] ([i915#9519]) +1 other test skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          NOTRUN -> [SKIP][151] ([i915#9519])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#6524])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#6524])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#11520]) +2 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#11520]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-update-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#11520]) +5 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_psr2_sf@fbc-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#9683])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-no-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_psr@fbc-pr-no-drrs.html
> 
>   * igt@kms_psr@fbc-pr-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_psr@fbc-pr-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_psr@fbc-psr2-basic.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#4235])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#5190])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#5289])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#11131])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          NOTRUN -> [FAIL][165] ([IGT#2])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-tglu:         [PASS][166] -> [FAIL][167] ([i915#9196])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4:
>     - shard-dg1:          [PASS][168] -> [FAIL][169] ([i915#9196])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-16/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#9906])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-18/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#9906])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#9906])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#2437])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@kms_writeback@writeback-check-output.html
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#2437])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#2437] / [i915#9412])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#2437] / [i915#9412])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#8516]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][178] ([i915#9351])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#3708] / [i915#4077])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-14/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3291] / [i915#3708])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-6/igt@prime_vgem@basic-fence-read.html
>     - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#3708]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg1-15/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3291] / [i915#3708])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@prime_vgem@basic-write.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][183] ([i915#9781])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-glk8/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_engines@invalid-engines:
>     - shard-tglu:         [FAIL][184] ([i915#12027]) -> [PASS][185]
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-3/igt@gem_ctx_engines@invalid-engines.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [FAIL][186] ([i915#2842]) -> [PASS][187] +1 other test pass
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-rkl-4/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [ABORT][188] ([i915#9820]) -> [PASS][189]
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-snb4/igt@i915_module_load@reload-with-fault-injection.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_selftest@perf@engine_cs:
>     - shard-snb:          [ABORT][190] ([i915#11703]) -> [PASS][191]
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-snb2/igt@i915_selftest@perf@engine_cs.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-snb6/igt@i915_selftest@perf@engine_cs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][192] ([i915#11808]) -> [PASS][193]
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][194] ([i915#11808] / [i915#5956]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-mtlp-5/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][196] ([i915#2122]) -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-snb7/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-snb5/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [FAIL][198] ([i915#6880]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [FAIL][200] ([i915#9295]) -> [PASS][201]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][202] ([i915#4281]) -> [PASS][203]
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][204] ([i915#9519]) -> [PASS][205] +3 other tests pass
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-3/igt@kms_pm_rpm@dpms-lpsp.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][206] ([i915#9196]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          [SKIP][208] ([i915#11453]) -> [SKIP][209] ([i915#11453] / [i915#3359]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-5/igt@kms_cursor_crc@cursor-random-512x170.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][210] ([i915#3458]) -> [SKIP][211] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_psr@fbc-psr-primary-page-flip:
>     - shard-dg2:          [SKIP][212] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][213] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-11/igt@kms_psr@fbc-psr-primary-page-flip.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-8/igt@kms_psr@fbc-psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-dg2:          [SKIP][214] ([i915#1072] / [i915#9732]) -> [SKIP][215] ([i915#1072] / [i915#9673] / [i915#9732]) +14 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-6/igt@kms_psr@psr-cursor-render.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2:          [SKIP][216] ([i915#11131]) -> [SKIP][217] ([i915#11131] / [i915#4235])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-5/igt@kms_rotation_crc@bad-tiling.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-dg2:          [SKIP][218] ([i915#11131] / [i915#5190]) -> [SKIP][219] ([i915#11131] / [i915#4235] / [i915#5190])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][220] ([i915#7484]) -> [FAIL][221] ([i915#9100])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15317/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11703]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11703
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814
>   [i915#11815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027
>   [i915#12042]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15317 -> Patchwork_137312v3
> 
>   CI-20190529: 20190529
>   CI_DRM_15317: 6b66ec881f7ae385f90fe6ad8c6ebef112873a17 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7994: e63b2671fcdb647c3507ea852cbf616e2c13cff4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_137312v3: 6b66ec881f7ae385f90fe6ad8c6ebef112873a17 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137312v3/index.html

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
