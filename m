Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DEC7B54DB
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 16:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AB1D10E2C5;
	Mon,  2 Oct 2023 14:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707BF10E2C3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Oct 2023 14:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696256443; x=1727792443;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=9Mh/9riQlinuA4ViDy+HNEOxqdEOikeL77R9QMOcwkE=;
 b=jlMO1BfEMp/AR2b1tyZelVtVvWTrNI3MwO3yHRF+Y2e+AB5rQjm4dOQ4
 oN6Vre2zizPHMLtnYnrU29z7XGIDjHMP7qN5jiea1YEUvnpoaWBMUqnTo
 Fq3TwVlHp6UKznn3rDKwMAiifirzXK5xjbk1KmOA0IQrgC3Zqu3I74lar
 VTfOZj24g7bXbfn/phngYKLWEKrajCeez6UnCr518eMMuCG2Ozrk5CPaA
 A//xYJjOUg7tU19cRg/o5GtIdvXmty68/75dPh4dR0cuedTpOfYCZmErs
 wrXEFKOqKvzi8X2c+fNMKK1NxlmcjTbsG0t/jTySvSH0kG15IA3/svY8S w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="446804727"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="446804727"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 07:20:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; 
   d="scan'208";a="1532921"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 07:20:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:20:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 07:20:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 07:20:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 07:20:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QmcV5H+FF9GokuexnAZ/5F9TEswymAclw/yIszrEHKS4p+B0cQqb18VWsrZx56qElaf7qI+QPUy18d1SXjOzAkMikDHVkc2ZROarJNO6jThAEvjeCM4hM1WbCQuPhIkl2HzA7lus+fRtoYcNc1iP2ebJwz0Fi2tApXjGNBkOWbFOSJGoG9t7BosjaCIfSpNzZy039C1ZYt9szVtQR0+F4Z/HIIWTxgBJohX88EHnIga9BtZz1VMILa+OBNNoD7e9+hks0174kPt5GmKq7uAAMt0L8GKtIdbiiqm3jA5R38l2AyZPJSHbdMuXYGl1nD9MMbOvZk9NzjS1vygPnU+aKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Cv1XUUfydvvKQtue2okan2Mw1pdS93FIk8DXCFvhzo=;
 b=CUV5TE8svDRKYW3/IBI5noteOu1Jgd3G+EAlG0BWXB1Cpva8qFTtz03i+ZFIrMAPW+35XDtKcbqQBeyD+tEbfQtNtFhAHPtLqxbQO8bnYhZjScugsxEz2ehVx+o2biBLKAEE8l2ZrE4MKRzGu5uQkW8V4k0jXpo16fe7RhcqKhhR4AXSHTrS+61zHQPVFtUUYnix5KFDJOFVf2hRP7I4TqnckrB6l/2SgggFbAs2Uj3EsdB1/ZgkWyL1huXCsvjnZD7I3wOTesizATYco2QC9LcjsJhcuEL1FbPFN3hZ/jlsV6q2NM51TSenEc2t8R6dkoZfEPgfd6QE6TYkX5AE/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CO1PR11MB4964.namprd11.prod.outlook.com (2603:10b6:303:9e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Mon, 2 Oct
 2023 14:20:39 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.038; Mon, 2 Oct 2023
 14:20:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <01bf968aa431b77d491790178cbeece18b5fc4c0.1696236329.git.jani.nikula@intel.com>
References: <cover.1696236329.git.jani.nikula@intel.com>
 <01bf968aa431b77d491790178cbeece18b5fc4c0.1696236329.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 2 Oct 2023 11:20:35 -0300
Message-ID: <169625643511.2047.555718219620950273@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY5PR20CA0033.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::46) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CO1PR11MB4964:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b0b8419-c01e-4f95-6048-08dbc352c0a2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xP1Yj8V7z/rQ9Qb46gy8h1EBr0c4JywsYidu9etJ5V4eO5dtjFzeigohy+UmYT+tZnwdMbp/fripkJ0uvRUS6KHPm/PKZV2PV/ohhynae9qTKA4eYitIsIkAVvfIGQl0CH8sly+xggi7TD8s+KkBJ9ZkYWTibGm63m5KHb7HJFn/wHqWmZswZ6P1OHWbw03knIrKPkLk63qhrH021/Pqh+IH4EhBH6Vr7C4bs9v/6g2VvEEMhDsoFdUW1pZqIaHje4V54jvHrFC8LQQI2L0Enu5p+4CqtTjBCB9u0iCK0KQQvavK8FEmwIVQabWIVrHKJF7qB7sYaK3D6feDqczcla1JQ03/MSSKnwtMJRPnRkTCpbAZYtpzA5hnV4VMX5zf7bdIcgcR4nuomBz72jVJ5hGuLwDOlYDNW81d9a7LlLuN7+vseiTt+NytRVH1FHMEh5S/5nUVBlhKq8ALEbLW+EY+dqkJsHjkCRPKXwAxcFNq1QJBS96QRX1k5odl2u6mWR08OBVBifxF7ngZq/R70x5UX2GkTRpX/Oe6NEDhyk3SnE9SaYcWHBGchRSdvaNU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(346002)(39860400002)(136003)(366004)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(316002)(5660300002)(8676002)(44832011)(41300700001)(4326008)(66556008)(66476007)(8936002)(66946007)(2906002)(38100700002)(6512007)(9686003)(6506007)(86362001)(478600001)(83380400001)(6666004)(6486002)(82960400001)(33716001)(107886003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVRucUh0bkxpQzFCS3Y4WG1BdjdONEZYN1dEUGxBbjI2cVQxUnJUT2tOVXFa?=
 =?utf-8?B?RnJQdlpEakpXYld4Y2hhRVlHekdkcGdXbHp0cXlIT2hqbWd2cjIvUlpZK1Nx?=
 =?utf-8?B?RW9hRDd5LzRLbUI5Uk5GNWFUM1BnQmljYmZadXViSnh0UE9lNWQwREVNZno2?=
 =?utf-8?B?bmxpRGZGYmYrVDNsNWszYXJPUFJMM1pKTzZFekRoOWZUNktEazdFVnR3K3RZ?=
 =?utf-8?B?YTlwL1Zoc0lZQXRFVGJNcWo1TVd5UmtqUzFDWmFDZWNrNk9MNGlCb3cvZW42?=
 =?utf-8?B?eEZTeWQvMXdGdEF4bUtVK3BvRS9kemlpREFTY2V3M240RWFHdWFHKzZ4NzFo?=
 =?utf-8?B?Zyt3OUtVYnlBT0lPSjBndmh6RnZ4d1hVQ2ZCYTk1SlpFcmFOSllJUG9HZWZr?=
 =?utf-8?B?NDVCSWRLZ0tmTXYyN2hJdmNOYzdtLzZ3ZFFWSTAwbEEvQk9aRXFQN00xdFFD?=
 =?utf-8?B?c3k2SU02bUo5ck1TdnMyRWVUREd6YzEraWFCL2lLcFhVYzgxTkcrUlR3MW01?=
 =?utf-8?B?MmpZRzdnZ21XN0h5MUZ3THZrWTU3Y2hlbk8wK1d1d2dJR0hrTUJHc01qSlhG?=
 =?utf-8?B?MHlGckJZZmhGdnZVU0UwL05YSjdmMnJ2dUV0UDdXck1KN1Nucjl1cENpNktP?=
 =?utf-8?B?bjRDUUFoT0hHcWxtaUliVXpBanNxVUZxK0JMVkVBUHlOL3Jtd2pXQ3lOWUZP?=
 =?utf-8?B?Qkl3RTN5Nk5IVW5jbnQzSmZXdVU2ZjJVb3V2bnV3T1QxbGNVd1Jna0xqNTJz?=
 =?utf-8?B?NERDZ3RaanBNMGpRV2dHOUpiSDZKY3NNWkcycmVhQytuYmhUK3h2YWZubThU?=
 =?utf-8?B?aXhQTEpabUZBQk5Db3AvMnhNYmEyclRudGM2SFN4Z0VZeHg3Qm1UMkFzUmVR?=
 =?utf-8?B?Qy9DOC9EcDJVR1VpZlV4OTBvblkyNXlIVUwzTFFxT0lxYlVXdzIzRjlOTktH?=
 =?utf-8?B?WENZdThGbGpaaXRsVFRzaXJYUk02dlluQW5oeGN0a0JyNkYzbUpndHFRQ1l6?=
 =?utf-8?B?V2lFSWdsQS9LL2gzNlgvYVd1dWFJN3Z3VGJXZGZ5cFF4QlNhYXM4b3lUcGZV?=
 =?utf-8?B?RWsxUTNOYTUrSGNNMkc4L0dmQlM2NmowWFlWZExrcklCdlFtbWRzYVFqS1JJ?=
 =?utf-8?B?NkpmcVJ4SU9VVjlScDNTSXpRUUdNaDRSenRadWVma0RqRWJ5bDBRdzFmelVJ?=
 =?utf-8?B?bitDQXQ1N2pvMUNqelFxdHFvdlBQWVIxYVlWUlhoUXdSd1daNnMvUUJGaVUr?=
 =?utf-8?B?MGdEbVNyZDlOMEF5d1lKRTFxL2dlaDJqYUVRRzA2ZG0yTUtPMThEb0M5Unl1?=
 =?utf-8?B?U2VWV3k5cXIrWDRmVTA5K3VyVWpYZzBiNjUrNzRBKzRVRXdPQzl2TzJpQUR2?=
 =?utf-8?B?dEJhL3gzakhPaFhXTmd0UGpzZVRjSnFnZ2VwVlRmbzRUOEpFd09JelRueWtz?=
 =?utf-8?B?WlhLL2lDN1gwRUtwMEZBcmZRSDljSlpTY25PR08ra3N4NTFFZGprUGI2ZVFz?=
 =?utf-8?B?SXVQTlYxNmlrSDliNlRTU0cwV0tOVm1HVHV5M1lBUDVyOEVzSXBhTG9iZWYr?=
 =?utf-8?B?bG52dVEzWUYrT3o5V3k4b1ZQZUdCdXVoZmErbUxpanBJbWMrMXJ1UWpZTVg3?=
 =?utf-8?B?a1g4eThGSUd2M3JEZjhuYjd1d2NXMlB1NGdsVllPeUhLSFQ2akZiV3pwakFo?=
 =?utf-8?B?Y1pibkhKNUt6Y0ZvVnUyWE5ZdTM3VmVLMGpNZG5VYlpVVVp1UWtPYTJsMVNS?=
 =?utf-8?B?TlZ2RytyUWZyZGNZNmdjRTRLdkxtWmhEVzI5Slo5b00zVm1VaWtVc0daLytT?=
 =?utf-8?B?TXQwcllKUTQ3ZVlSQWFsN0dieVZ3MXp6NmNqVDZhL2cvK3JJWDk4K0tkNXM0?=
 =?utf-8?B?aEs4ZEpIRnlFY2UrYzdib2JrWEVkM3oyUDhSanFBc2Y1S1BETC9PWnFNaExL?=
 =?utf-8?B?Q1VjSXc1a3hoWkxGRlYrVkpvUm5CWDNra2dreUlOWUdpSkE1Zm9tRmZCSnk5?=
 =?utf-8?B?Z1lsVDAwYXUxTXBGT1J0YURxdnlUdlZUbEpkYmwwOTBhdzFvaTlwRXdlVVVD?=
 =?utf-8?B?YWc5OVM1WEYxaDNSRW5nbzlFQ2I1SlBlTjB1VVRldHpvQ1JFL2g1b3AweGRK?=
 =?utf-8?B?VjdsZ3M1V05UaTNkZUZuNVZOZFI1NlFKRWF3ejUwRTVtNFNXTitBR0h2V285?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b0b8419-c01e-4f95-6048-08dbc352c0a2
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 14:20:39.1110 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ediqS9Q13YaF283LKmYwAiS3gXC00cwm4agcTPuuBDQOxp1+SHRUEPR953aUzTro9a176pYT1q7uBn9hJBHLcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4964
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: allocate i915->gt0 dynamically
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-10-02 05:47:03-03:00)
>Convert i915->gt0 to a pointer, and allocate it dynamically.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
> drivers/gpu/drm/i915/i915_drv.h    | 8 ++++----
> 2 files changed, 11 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/=
intel_gt.c
>index 454b9923cda9..b293ace6745d 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>@@ -62,7 +62,13 @@ void intel_gt_common_init_early(struct intel_gt *gt)
> /* Preliminary initialization of Tile 0 */
> int intel_root_gt_init_early(struct drm_i915_private *i915)
> {
>-        struct intel_gt *gt =3D to_gt(i915);
>+        struct intel_gt *gt;
>+
>+        gt =3D drmm_kzalloc(&i915->drm, sizeof(*gt), GFP_KERNEL);
>+        if (!gt)
>+                return -ENOMEM;
>+
>+        i915->gt0 =3D gt;
>=20
>         gt->i915 =3D i915;
>         gt->uncore =3D &i915->uncore;
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index 511eba3bbdba..a1cb16afa46d 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -318,10 +318,10 @@ struct drm_i915_private {
>         struct i915_hwmon *hwmon;
>=20
>         /* Abstract the submission mechanism (legacy ringbuffer or execli=
sts) away */
>-        struct intel_gt gt0;
>+        struct intel_gt *gt0;
>=20
>         /*
>-         * i915->gt[0] =3D=3D &i915->gt0
>+         * i915->gt[0] =3D=3D i915->gt0
>          */
>         struct intel_gt *gt[I915_MAX_GT];
>=20
>@@ -382,9 +382,9 @@ static inline struct drm_i915_private *pdev_to_i915(st=
ruct pci_dev *pdev)
>         return pci_get_drvdata(pdev);
> }
>=20
>-static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>+static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
> {
>-        return &i915->gt0;
>+        return i915->gt0;
> }
>=20
> /* Simple iterator over all initialised engines */
>--=20
>2.39.2
>
