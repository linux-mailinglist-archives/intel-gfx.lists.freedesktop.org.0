Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EInpDnWLemkE7gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:19:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98011A982C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:19:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9D010E2EE;
	Wed, 28 Jan 2026 22:19:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bVXJYQ+Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C58F210E2EC;
 Wed, 28 Jan 2026 22:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769638770; x=1801174770;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ptWBBrl2LmQLbVBNhA6kZUj3XVrKxL8rAx4Kt8GTqds=;
 b=bVXJYQ+YU03MOKnqnXUE8H4+teAfCSElVv7pbdhJ0OoR8T4V+c9OQzzU
 dLAuphFfk5p37+E15r+nngqLKlyZ5RaJ7xs8yNhs1LNVTrCSvmmzc7ykT
 zeKEO3x2gH4lg982x0cOdiWJzmZS/By8r1q4bUXSwh9GhUCXdYMvm6SNr
 x1pHrzm6QMe/izqve8hc5Vdh2Cjccbed4X8DJ4j3dLyU2rYEL1lpxf9mA
 2aB6lrJT3fgkMKcYbyCSR8LBp/abBeE5KonbX679qiGcT/z9rfLKSpphc
 XGyuA/jdlGfqARqHZCOgTlm9r5yHak+T+SCxIofTFrqBwopqsHR2M0D4G Q==;
X-CSE-ConnectionGUID: zEP5XK+RSmSnpaqpDehj+Q==
X-CSE-MsgGUID: y9jSI7l3QAise5q+y5YwGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="74713085"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74713085"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:19:29 -0800
X-CSE-ConnectionGUID: ApbxB8uWSCWOpdCU6cdQSw==
X-CSE-MsgGUID: FEJ9zIesTT+JxoFwu7ff+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="231325646"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:19:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:19:28 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:19:28 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.10) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:19:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lqWkcRNY5jtm69kzmQy7SfNxmtYuS4G/G75JNXgcUfM0KWJeWGW7rh+snj4rdd5oDJagpV8rE6C9vJxOCjvWe7x8P25uPXDbvM5iyrcJHAwdCDi6qbMs7eJCZTsH6cWIVt0ISuVehExU3WyRse/NnbzV4BL+G3DjB7b5sm8WPgyl3mAf3SYq4o99pENw3S0KevhEbgrhoCF2c8WmyV4BuTO497j9IEfqicRUZ/Ka6mepiEqP67TVDjvEoO6UmYfHX2CcVLlNs638fpfTscO9BsatHESZw2qb69/6BBHYqKfqQ6d500e0gvaIoP2L1qtwh0UoZt6px1RtDoCELupYtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fka0d4qDyZjLqhBcKuLaLF9QRz0nSWqCt3m3nxKyfsw=;
 b=X0qibdPFlYuQ2v9wLtm+Ux83+5kjd1/oSF8x+dTW06uHazmCA6+NCQOk+H5SiCeyoniuKSRNsPJI7ROxC8VwJ2nKGf7riPbv91J0XzTBauB80/mSg/b5IAGbaaVR01/sJXN3T/RuhtOJ3rw8o5ZJZTePVheQewYbx2tq7SQS7r1eOSCgKWx2sGez5Kg+ttMQvl6NOVEMbEhRUla6fs+BCjwISszhydQu9bUjoc+P+yuJrNxgpOKT+LonStLV0tWVVORIbvJWy42ce15iVPOz/17TqGCm+1h7FvJpgD6G8MO+4cakAt6qHtBWbh8aByCEnSFKBclLkV69Mw9xa+BCfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by SJ5PPFA0B9CD929.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::84a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 22:19:26 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::f196:d72d:beb9:710e%7]) with mapi id 15.20.9564.006; Wed, 28 Jan 2026
 22:19:26 +0000
Date: Thu, 29 Jan 2026 00:19:21 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 12/16] drm/i915/dp: Refactor dsc_slice_count handling in
 intel_dp_mode_valid()
Message-ID: <aXqLae4A0ZeDXWiU@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-13-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260128140636.3527799-13-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00007570.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:401::3f3) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|SJ5PPFA0B9CD929:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b2bf0f0-66e6-49a9-5d4f-08de5ebb4c1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Pw4mr9Qffyjzau/R4u4bbYvZVaxOLPZibsrLwTUs8ejJjEasIOgzcHbqEyPu?=
 =?us-ascii?Q?eoT+CiP+sR2fiQPFaH6XyqNq5SOz2dL5ZboTBF1k9RWNic0PYgtaD2hY+3CL?=
 =?us-ascii?Q?G7d5YTTb5kS+K/121p87ZBzjjOH5T5zWLrSeCrV4P1JWnTYF1Nxgxwt5Lr/C?=
 =?us-ascii?Q?LvQ3nJcxQMFBiISMbbitg6FzQD3hqDjsfYVidjTRVF4Dn8MKXoGYL4zKHo6C?=
 =?us-ascii?Q?VWz0gmi40xo0kjiuGLHhqOM82zXxy3wtveHR+u60DwR75ROndtoVXOCMcqcF?=
 =?us-ascii?Q?BPic3poGWWZ9oMkopjcjq4mpQEzj+3Lp3nKWDi4fDBy857627LT21/eLg5dl?=
 =?us-ascii?Q?lOTJRAgQIuI6lnmDM3PkfTCv3gYzGBQtHDSrQXnDKHmi1VS6w8riuvMX4Zhx?=
 =?us-ascii?Q?zEioU7fAMQeX+ZJ4ljTRTaWVpBn6vFVyVZa9BVamCID8yo5hoxpJ3AUi2KYP?=
 =?us-ascii?Q?m19gQ75czagHwykgt16+a88RVkVjsJDkTDv1t1deH4DzFPw2T84p6Yopv8s3?=
 =?us-ascii?Q?kBlH4yBCudc4ZnidUC2+WvswLFQpPeS68HQDcE5L7FIW7zp7Qxmr7NpOvhYG?=
 =?us-ascii?Q?Z4OfBYrfV+pP7Gou9z/qhUAGN0ZSEEf98CP/EUog5BWtqlZxqLBKTglqx5QA?=
 =?us-ascii?Q?hyTMilv+Lt7HLUj4xmsYVnsJvWHtp32fnh+t5aJEIOMkw3XY+YlUhdD74K8A?=
 =?us-ascii?Q?kzYQuX84BipXokd9vYqyDJSM46YfMEcbSqNYRzsFTYQYX+O74qxxAVDlkSX7?=
 =?us-ascii?Q?l2EKqt+lq380kSGRU7fuHansQs9ddzC5g6/SAFkZ5e43UIv7bDCkmlIr0rXt?=
 =?us-ascii?Q?EMqfPnqn0p7HDFGaFSaC59K2E5lT1KK7BmMDC3guyeX0f2ots66oliiLrdDY?=
 =?us-ascii?Q?rXODpdcbpNoWrw7Z39FalHS3TjLYgAkzkVcu3/9/qv8pa3vPbOyxm7wq1rDG?=
 =?us-ascii?Q?mDufTIgL2E/i0AVehVZWIc3boKCeafVBUpbY465Mevkmmr4q5kO53G/sc+wV?=
 =?us-ascii?Q?71IyuFixp50FDYqn7g9BxSPpVVu78uo7YbeqlbMovEGD5bfVCdIMrRYpKGkd?=
 =?us-ascii?Q?ZY2XjqI9FIyt9NwzmKPHghL4AgdSWB5yfDYRzUibVSVLnZm1uFmId1wGa818?=
 =?us-ascii?Q?MFAc3G6jmz3hrqsocoFdiATfG/qAWjRN7vUoCQ1QuLTn3lpYqMpCqs0KkZPE?=
 =?us-ascii?Q?1xpgIfyBcHB3k6S8d/TleUd6wLn0DxJeRP+2n+TrLk5wpnW5LXBiK7YLjhTD?=
 =?us-ascii?Q?Nnwfq87L+L0+sLnwiKuVEkykRNRUMSLGSVLIzCKfDtOqZlfqSeosLAPz3hBB?=
 =?us-ascii?Q?ZKg5Wpq/zH9xatOrX6cfYsK3QqXiOD7jPQNU7fvpKeoYUsd/dVUOBWQ+4VWb?=
 =?us-ascii?Q?7TkiWBaKCSGcWOLU1XSZMxFTzBCNMJR20+/uysFSMxtdvISgigLeoHfmyiJf?=
 =?us-ascii?Q?oTezia9EwIlOFuQ91OTv/PSQnL4L8xHrT0z6OfORVSMX1pscqGDiVRNWqWSw?=
 =?us-ascii?Q?YKeNd0qJy0yOxmJGkCxd0bwEbPpxtMit432RnmyqxciyR9233NUa/rrBWEn4?=
 =?us-ascii?Q?XTU9gJHPoZXI4r+ZhBA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HBWlK9WwYoZsx4d6BByRghqeel86Hl6CTdOY5zR9hq6mNRIAUfExWcBaASsX?=
 =?us-ascii?Q?jgIim/Dhk/HxBlUMy0Mdkni6NeBYGRKaPCK+z97hhnfbvkAwPr/MmPASOMN8?=
 =?us-ascii?Q?lRoBfTATpHxObVhakbNwcxx8vTOWzEZcKFaa4kj35AugcWyyg11YJpw6z7dE?=
 =?us-ascii?Q?Zv5pFvMdoveK0FYYqZFSc8pWdozzHxcv0C8aY35HZ09V1xhW8nLQSZeLswAp?=
 =?us-ascii?Q?MM9O2Z+pdIV8kAyFsDJYa8b434HgsVw7GVsULdaH4cmFI9zzNC3luYohWgsf?=
 =?us-ascii?Q?LmXo8zfNsCF/aZSzbh37pZMs/e93nwGb23QyvWMzWsimGG3hv7BuxaEtVoqO?=
 =?us-ascii?Q?PxfHxrK2ohyXwEx3/lS90Sl9YSXCnYz08EDP9Ke0lcqD079cL3qwUyv3cnfc?=
 =?us-ascii?Q?fZzexQfHgP4RQl/FpAG4uXSTbRs/TBQQlmHU3zmSeZVNxLdYvo4oLbiqSReo?=
 =?us-ascii?Q?JCDpa17erJ8szLsfaR+XuXa3GzBkTFFrf++SDFQ/lki43tnio3jJZONS7/JE?=
 =?us-ascii?Q?QZWj0F0ercVtiJt+o/HVHKGywyxn353UMbZU5moGisMHnJ8NPLXwC+JHebYu?=
 =?us-ascii?Q?cs5pjGVlSKTANOcZalDV8tz3Ja6faD1LPaO20/jmhqqupLIgGtFxGPrIiCmi?=
 =?us-ascii?Q?we909fiIubpn9TQgmpNfPT1pJ1ECWcwWUUmhITHtQee+b3GgoW1dWzeiq1+7?=
 =?us-ascii?Q?5no41FoYR51enkc2sgL227nRRk4RRQbOwFIGWTJim01KcN4yrZET40eZfT6l?=
 =?us-ascii?Q?j3MqLy+nuLGZ18714YyPJFMcJTaEkiPufGesORjnmbdW+FdEKts4ux1aRGPh?=
 =?us-ascii?Q?fts3H3R48pwNhLFhEJdCtPF0qfaFfvd5YBbiWRb/zGkcDnuMKf23ZrG3jzC9?=
 =?us-ascii?Q?dU5+tyaSNWl/WLpHrNgpiyGHccZtvnNqh4DcdB9oY8T1ypqRHl19EnAKP6Ev?=
 =?us-ascii?Q?BV6nB54yzyQCEGWnmDc4GNqsX2wD//qCXS3WSFbYbTv2b6WLwyXu+QDkB2X0?=
 =?us-ascii?Q?1Tw3+BNlsfahKyJI0NnsxfZfvqmUhmuhbiTiWnxqENO2J2sULnLkVtRhJ7It?=
 =?us-ascii?Q?x+MugYpyUw2+dbcr1Wr4WMfFvnjsJql9BqjLCYs4A5w1avX1MN10uVhGOGmg?=
 =?us-ascii?Q?+aW5RGRLR+yNUTPWc2KxUN3Uk13/+Vt5oWbox6bGuHpwG+mHuigzGA/22ieQ?=
 =?us-ascii?Q?0XMTLnmiXFpImgVbj/gXNeCFN8iQNqWYzsbibo1l3OGTDf/H15ynBOY9GZ99?=
 =?us-ascii?Q?kT7ICMc3owiXDz0nWTbU2rnWdb+viLey+geihx3iTxX8Qmlex9OE6d4QvzrT?=
 =?us-ascii?Q?nUKto8ECOBzAD9sdfJsNSszBkqLoqQ8xNMG0PVWLrB85wXRuqi8L1VIsoq0o?=
 =?us-ascii?Q?q6dmgIix4DO2jJ/Hyg+QQsr2h1HY7jTpqPMD9Bk/asgEbeCZ+GucxPHHxLrA?=
 =?us-ascii?Q?bGA7CPnSvBmmwn9izbmUG8m/n3TLJlfY1nTEYp4e1qB+5DDO/trgkw+0MfLB?=
 =?us-ascii?Q?mRP0IbEF3KHvoGtyfrS/v78PgNoWtvK7eE6DfHChIPpArsZ09pg77QTl0UTF?=
 =?us-ascii?Q?+j4DH/h3mw2EEfrOJHr6pQzHJqcrh0pBvfSnHNV9q4hFEA+63txfCJB2OiQs?=
 =?us-ascii?Q?+9DiYJCoyrhE46cifqwE4vNQVMN0CoMgmPgAxCWVwcjHvanLRZDHdH+5cEcu?=
 =?us-ascii?Q?6iHu3rAd627KkSLp/EGcCoW4xgug3Sl+I5VflY337qKQjD3DJJQhGdlPeIF0?=
 =?us-ascii?Q?xQHLyQxhRQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b2bf0f0-66e6-49a9-5d4f-08de5ebb4c1a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:19:26.5253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GcXy4xJXEsnktmYZD5fUJLkSnqoE9BkSWF3oZfPH6NwRoZhMQ5zabBB0B/aEuGFK6e/dmMDUlp1SCFMLTDCgUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFA0B9CD929
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
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ideak-desk.lan:mid,intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 98011A982C
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 07:36:32PM +0530, Ankit Nautiyal wrote:
> Make dsc_slice_count closer to the block where it is used and promote it
> from u8 to int. This aligns it with upcoming DSC bubble pixel-rate
> adjustments, where the slice count participates in wider arithmetic.
> 
> Currently, for non-eDP (DP/DP_MST) cases  the slice count is computed only
> inside intel_dp_dsc_mode_valid() and is not used by the caller. Once DSC
> bubble handling is added, dp_mode_valid() will need access to its own local
> slice count for non-eDP cases as well.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 655688c8e6ef..0acb3b64cf27 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1473,7 +1473,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	u16 dsc_max_compressed_bpp = 0;
> -	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
>  	bool dsc = false;
>  	int num_joined_pipes;
> @@ -1523,6 +1522,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	 * over candidate pipe counts and evaluate each combination.
>  	 */
>  	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> +		int dsc_slice_count = 0;
>  
>  		status = MODE_CLOCK_HIGH;
>  
> @@ -1547,6 +1547,11 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		if (intel_dp_has_dsc(connector)) {
>  			int pipe_bpp;
>  
> +			dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
> +								       target_clock,
> +								       mode->hdisplay,
> +								       num_joined_pipes);
> +
>  			/*
>  			 * TBD pass the connector BPC,
>  			 * for now U8_MAX so that max BPC on that platform would be picked
> @@ -1561,12 +1566,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  				dsc_max_compressed_bpp =
>  					drm_edp_dsc_sink_output_bpp(connector->dp.dsc_dpcd) >> 4;
>  
> -				dsc_slice_count =
> -					intel_dp_dsc_get_slice_count(connector,
> -								     target_clock,
> -								     mode->hdisplay,
> -								     num_joined_pipes);
> -
>  				dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  			} else if (drm_dp_sink_supports_fec(connector->dp.fec_capability)) {
>  				unsigned long bw_overhead_flags = 0;
> -- 
> 2.45.2
> 
