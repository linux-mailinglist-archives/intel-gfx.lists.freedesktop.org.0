Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHbFM4qJemkE7gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:11:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C85A96B0
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 23:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34A4310E76F;
	Wed, 28 Jan 2026 22:11:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WD/zy5id";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF4710E2EC;
 Wed, 28 Jan 2026 22:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769638278; x=1801174278;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=KPsfKmu4IMsWsUPLm6VEOVzNhUtNhZYUO1sjoNN4u3A=;
 b=WD/zy5idPWOIVqiB/4SDmPN6qvVkEtXn7YnvJ38SmB7acHPtuCqqe/oz
 hEi10pOh+4fhNBF73ZzgG/XUUMUGku1Va0gyvri1STFXkLuieGPYKHMfC
 g2H+hFwSWwZxisYPWf2XHqiMZaTbqAc/+LcCRKaOpQdD1LHY8vn7CW0Zo
 LH+u39AcmA3SimtGs/h/tk8SVYnYQPtd7CE9lM7n7GB05rYovqbugC4bX
 vaa9x6wcRXetfPRYEttnxCoInN+PGvQm/cwtgMCC/X4I+sRPAz38/QKdu
 lv3p/MZz5KNPxhgufJSIdy/DG6GJo+aQbsHOpIBnKb9rtN1UrinPgLtPC A==;
X-CSE-ConnectionGUID: KWnsonoDQ7e6TSHyVuYXDQ==
X-CSE-MsgGUID: bg3kxWacSlyR/2JdgQIKXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70063054"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70063054"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:11:18 -0800
X-CSE-ConnectionGUID: kgCtsxhdS46qYId3ykTNSg==
X-CSE-MsgGUID: /ZBP7Od9SPiKPd/2w+ZbQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213355556"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 14:11:18 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:11:16 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 14:11:16 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.52) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 14:11:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HwI+l+j1V8M0OE5Zp5ddlPF0+kUEwNIAIY2BXFPaqC/inhPiQE/zEOsMP0xlfOHN+sRRCRY1yqoEEwYPYSEFqQbjQmDis4ddyao9dwi65yp2Hd7I6TxJCAKYM5RTzIjOvlYlVe7UjyTAi5laykHxE6fM+1Gmp7D7gH2C56yXFzOxT+GWQIGZvLXMuXu1p+YfZbApoX6gQ/D2g0unK0Qq5vOiMvJwo6GDsFlZ1Lj+tYS0d2mG02BucRmdnfDjzzwHa3rQCOKHxU8Ggpw6tsHxXVIssLGhn3SIRCWWx4zJlXaQwkoaZT1gEdPwpDodUs8+ml4UI/w5KGJNDR42SNgrNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=odWfO2AR7Se8MMIrPMqG7C7CacAC6jVvGgHzZacdwCw=;
 b=BRimOvoiOXy9y615/uEXy/9ODFx5YJHn+GBWwMlR1/9/HXDDbUgasIevnT+0fZcsfq5iukCXDk7ha5cWxO8/5HSGASfTvUSXS5ruIpuD0B0eQrnZrv2x1rNUgWjSNkKFwo3/ERciqudcqEU/mBDa3lBi0j9RARY6XSrlFbPU6H1gfJWKz9r7Fpp2RvJ9i2i8OHduETNdZRznZknCoChefZW9CrmOt27ofZ8vRnaEAkEk99/6aC6HP5JuCRmGU8pcJQmNP+7x5AhWaJV0v5Zs0PExVhyfuaKXRoXKrLdJwKt0U0ckbVDsZ8O/rm6HrIdXY7YZvrIPSCxNWYSwmUObcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.10; Wed, 28 Jan
 2026 22:11:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 28 Jan 2026
 22:11:14 +0000
Date: Thu, 29 Jan 2026 00:11:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 10/16] drm/i915/dp_mst: Rework pipe joiner logic in
 compute_config
Message-ID: <aXqJfeucaR8yUnnw@ideak-desk.lan>
References: <20260128140636.3527799-1-ankit.k.nautiyal@intel.com>
 <20260128140636.3527799-11-ankit.k.nautiyal@intel.com>
 <aXqIWDXsP2AQ2tBd@ideak-desk.lan>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aXqIWDXsP2AQ2tBd@ideak-desk.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0088.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:a::19) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4867:EE_
X-MS-Office365-Filtering-Correlation-Id: 1225cb9b-b3a0-4b21-3e6c-08de5eba26c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h/9oQMX+TeKDXjS6fid67DbXyGLXieCv+EBJRVeGf4JQxo2nNC6t+qAQCLuX?=
 =?us-ascii?Q?qUO9ahPjUwX8W/3GbepcsENV7ah/guAo3JGSq6DA5EXnbahFFLgmBx6A7RHa?=
 =?us-ascii?Q?+uUajwGwEiEEZGEXJCx3OqjWbSJiaH8D9wcXzzStNjbF8QECVvTYk4O2a2L3?=
 =?us-ascii?Q?g1c5miSjNzriQUGBFkaSSat5DMvedshyYjwnkBbqy6CdepzaRLemtH6ALIKy?=
 =?us-ascii?Q?ST1tWUBfZyjxLKb10ZdnhMF/8OfMJuR1RtcHfqy2aqurOaG/hshzBHU5LPTW?=
 =?us-ascii?Q?OI2tqLbezf2RpPvQaPmSeXHURjIZEolf/jEsAP9d3ZQeUwfm3/YbMD/zvNHF?=
 =?us-ascii?Q?wFWV06aoPyEUTvJRkGMMkPUME+O/j4qqfjCL+/PNowPcHiHS57IoN/W+Q6yj?=
 =?us-ascii?Q?2TmcwkGXJPbKYSUV9SLiUBHBsR6NYFXQiXu/BlKHKXQ6F/LxsLOikJLgxWA8?=
 =?us-ascii?Q?WfU6jxGvmhPWT0xmRizCsb6ULdJkCZFin3UQYn3Pnp6JaNK4KNdzA7LkLgX+?=
 =?us-ascii?Q?/LEGW3VglAACwE9BH7jkkN9fVJuheL1qsAg2YteIYhUtswkUbCFk/z2R+gRF?=
 =?us-ascii?Q?Jv/bSHWssMa0GkDKIflI6u/dhPMVmRuKqvED8Z9anqrFbOq6ZZ+5bHvN7LLs?=
 =?us-ascii?Q?RSEu77gfXLBz9B1aW0TCwZ/9ugRb0+qDLQAO+HmL9fmG+wEotqgujwkqbEWw?=
 =?us-ascii?Q?s8gWiap2pfNQVakrsJc7YBnBlK0wWkvSD9A5VmFQeTkfR/eHE5gEDsSdnAfB?=
 =?us-ascii?Q?1Mua8lOiVulT+wGte7s80at79FTONLC/azX/y8pEgAr9mYbLGMIzU5S/Fih1?=
 =?us-ascii?Q?6WAM7WEEMOvEguKUPLyaWevlO2G+gyKj13FwpUqj4PibNmohwJmW1fj7xZxp?=
 =?us-ascii?Q?8kKrjyRuTb1m5hGs7BWm2BTHsl+d0C0uhZFaV2j01eIg+J0hbnDS7m4i9XO9?=
 =?us-ascii?Q?zBYdDE4GncPVUd6qnMT7bfwjRpqa5AHY0NEP25xlCEHnCw8V4gq4rl/ZBRZ2?=
 =?us-ascii?Q?nq2JR52HLhnmvx2Wj0muB6BrjEiU8k6WK5YqdgE1P0nvBg7f4oOR73eONduf?=
 =?us-ascii?Q?6aZ1IIr+5kJVWJPevW1G/76nEgoxPsF+xZu//CG7Pkz2z4ueLyVxnM9Y93r9?=
 =?us-ascii?Q?9mcn0seEG8kOuuyLpvET+EzNVs1Wlkzvqs+Lp1huZ12QGYUuqA/oZkQfUT7Z?=
 =?us-ascii?Q?HSPLJYLGijcTFmhvxaRz63WhplQCokhm7q+oZDvMw6WOSqn4rRsOp3mG6zaz?=
 =?us-ascii?Q?bh1jFfgCItQDHXIzOdgZBGB895Ql8ApLBlHqDIgJROxUsimQq10k2Dx08Ugd?=
 =?us-ascii?Q?C2yJ8+ZHq3ydgQhrKEZXM/gs7V8NpGKwyKylnAgi1T5TpJn2KzoekvJ2lCmz?=
 =?us-ascii?Q?zpXaAcNp9i0FV1MPUFqrcGU1xiiqKMDxb8h+JsUx/mq74LCn40EVLlCIVcsX?=
 =?us-ascii?Q?idrf2PyIDk+UEGnMTX8G4rrYMG10N8WUeKGaEMWgUWkiTLH3pqacE3Tmck8I?=
 =?us-ascii?Q?A+pzOCLN1nTTAZ4o2OxxUh7lnD+mTj86IwjKp1KtTyeNLmG8h/pnIZ58mg?=
 =?us-ascii?Q?=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LY64w/2mqL0XQL+aAylnoEN9Bn0jqrIIqWNIdxC7tZodHB8yNE1L7NN6kkmV?=
 =?us-ascii?Q?LIvgcX18LnbzjDsW0xtB+wvdDmNFFVhn30HSlF3kRGXJrhXMrhewQs4/ige3?=
 =?us-ascii?Q?mzi8651tclmDcUT4WZxTR+1d+fsQzmoeA37WMdaQiNopHPCAUfWihWZKduvC?=
 =?us-ascii?Q?Io5qgfNYC6nDdEYnaVYYfjEPXOHUOGktO6hNQVQRqSj3Q0kM7f1adIrpmubR?=
 =?us-ascii?Q?mi2eRogSVbaPPEi5dE7CEaI6mkr772BZD/qNYsKectj6iLBgMFyXnrhPcrFV?=
 =?us-ascii?Q?tJ/jXNyBwUH+NkQNROw4Z2xBkGv+763cx6BhbiHqJp3J1OPgAVaQSm13UJw6?=
 =?us-ascii?Q?RFQHqJvk21dGWSlAamhm+7Zv5WyqMU5cUYYey5HiKnr91odLOskULerxqOcJ?=
 =?us-ascii?Q?VlAifl4RtpY1UbIqU6WyLocL6ChtRqdPflIDMidbVI4KhSdXdbBuCS56gNy4?=
 =?us-ascii?Q?NAUPBgHI6y4KpSTuisCxSyL2B3QKo5PAjJV7dLgKIbaQm7UJ2HEYXflgyh3k?=
 =?us-ascii?Q?7SbwG9ovLqiwWvZxPNFC77HNvMTUgD3NrwsWPKpCie+t9zV/wRkGRPYa7ypm?=
 =?us-ascii?Q?rgPHz2Xm4B5IUXz2aaMmnVWwFwJj+5WhMBDXq4+HJcDYi8gkHD1na9secBX0?=
 =?us-ascii?Q?IQMJEgGU84XTt8IZl7z3t43Hz/Kn4/csK7Zs5G/JK4CTJ9TTNUPoFX2ZavL9?=
 =?us-ascii?Q?Yy03CKjkBkgR4gyqxvgRPdnglHwbqowWhw7kBn5ytqWpL7Qsyln/EITAgsTG?=
 =?us-ascii?Q?p3O6FEUskE0pobvyrYKEysQ/9hlTNTNpVTN0xGi/5fye0y9Pa2V5weH7rof0?=
 =?us-ascii?Q?ok06oeO0pQh1Le0rEFa3Hatn8UnCszyyyM7HNpLNDpHIQwyNtJ1xipRqU27B?=
 =?us-ascii?Q?F3PiotQjn0yDp+VxGX324abV8y/DWUpRQ+dhUputcxP71DfB/fvUh0I98q2T?=
 =?us-ascii?Q?3pWfCgDvgpap3byVyJFUYUmqqZmsDimWCv4n43Ltuli1eHgwt7MkIjfVQ2jS?=
 =?us-ascii?Q?uNsmQjLk1SZ9S3WfLv+TDcecPYqji3MCQS+jMdNKojKOlEtrFBCVhUTMgm27?=
 =?us-ascii?Q?zl24DlXm1NEnDgLYTjda2OQpNoN3XSUNMmXaaJ9TSFORNX2xm+qmN+dljQjF?=
 =?us-ascii?Q?hBUqsjOVEz1YPbN8ehMn/cWdYqyf3fNSFVtcgSu1oPpnVuM+xiLRncqaA9GS?=
 =?us-ascii?Q?3t5k6n6uxeHCeb9hTKNDePpaxg9OjIvTWkThEDx1PQoEXEASFhXB2WKeZhKM?=
 =?us-ascii?Q?k0Ct5YkQo8lXQDurC3UCu1Yo+wv0BOlyKlmofImnl1o9Oq+eZICBWTZ83qut?=
 =?us-ascii?Q?eDbDWWgXDynGw0tWDyXhkD0QFRLRjR7wM1Jh47kHkG067YHMqb1Tf0A2aVIc?=
 =?us-ascii?Q?ZNZvrUgvwUDfNbNoUTZQ1N2Tp9NjTh/IxQmfa/rAyZzOrut03r+3hFxsDm6s?=
 =?us-ascii?Q?yc/AWvZOmKOt3L2MFIV/a/4bLChesYhsKf67DeoM1FL0mDEpeZb2H2sGWMMT?=
 =?us-ascii?Q?zBPI9eW7Jvjv9jZaxo0XkpDtGAIqKMlBHDNE3oO1EdB3R6/3nE9FX7Pk5hIM?=
 =?us-ascii?Q?LJB23bAMXh0wNEEwf2e182nuzWmzamljR5pa/Gw5Ll5KMpLsPVP19KN93G6t?=
 =?us-ascii?Q?rWDQT811FbujDW1CGmQdba3mejO+UNyBTDZ6AmxQTDEjp4RNkBVyzcHQ+w5P?=
 =?us-ascii?Q?GQYNoJVpRHxo9iZjwxg3LRq3wnYfb3plW/fEcaLZ4c9o1CWK/y4v0+IuaS5z?=
 =?us-ascii?Q?TLaaSlAV9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1225cb9b-b3a0-4b21-3e6c-08de5eba26c5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2026 22:11:14.1670 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIRU358CgxEyTJhj+Gsj2N7S/bZ2+i3YfFDDPRdYNNs2BKzO6Zjq/JLbwtwCXuFVlSX9PgukRRE59TtHXBlA1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:replyto,intel.com:email,ideak-desk.lan:mid];
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
X-Rspamd-Queue-Id: 36C85A96B0
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 12:06:16AM +0200, Imre Deak wrote:
> On Wed, Jan 28, 2026 at 07:36:30PM +0530, Ankit Nautiyal wrote:
> > Similar to the DP SST, refactor `mst_stream_compute_config()` to iterate
> > over joiner candidates and select the minimal joiner configuration that
> > satisfies the mode requirements. This prepares the logic for future changes
> > that will consider DSC slice overhead.
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 47 +++++++++++++++++----
> >  1 file changed, 38 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 29ac7b2e1e9c..7a83af89ef03 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -687,6 +687,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
> >  	const struct drm_display_mode *adjusted_mode =
> >  		&pipe_config->hw.adjusted_mode;
> >  	int num_joined_pipes;
> > +	int num_pipes;
> >  	int ret = 0;
> >  
> >  	if (pipe_config->fec_enable &&
> > @@ -700,17 +701,45 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
> >  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->has_pch_encoder = false;
> >  
> > -	num_joined_pipes = intel_dp_num_joined_pipes(intel_dp, connector,

intel_dp_num_joined_pipes() is unused after this, so it can be removed.

> > -						     adjusted_mode->crtc_hdisplay,
> > -						     adjusted_mode->crtc_clock);
> > +	for (num_pipes = 0; num_pipes < I915_MAX_PIPES; num_pipes++) {
> > +		int max_dotclk = display->cdclk.max_dotclk_freq;
> >  
> > -	if (num_joined_pipes > 1)
> > -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
> > +		ret = -EINVAL;
> 
> I suppose in case no valid configuration is found the error code
> propagated from this function should be either the error code returned
> by the last mst_stream_compute_link_for_joined_pipes() call (which
> should also handle the adjusted_mode->clock <= max_dotclk check
> internally) for the last valid joined-pipe it was called, or -EINVAL if
> there wasn't any valid joined-pipe candidate (and so
> mst_stream_compute_link_for_joined_pipes() was never called). The above
> ret = -EINVAL could overwrite ret which was set by the last call of
> mst_stream_compute_link_for_joined_pipes(). To avoid that I'd init ret =
> -EINVAL before the loop.
> 
> > +
> > +		if (num_pipes == 0) {
> > +			if (!connector->force_joined_pipes)
> > +				continue;
> > +			num_joined_pipes = connector->force_joined_pipes;
> > +		} else {
> > +			num_joined_pipes = num_pipes;
> > +		}
> 
> I'd simplify the above as mentioned in earlier patches.
> 
> > +
> > +		if (!intel_dp_can_join(display, num_joined_pipes))
> > +			continue;
> > +
> > +		if (adjusted_mode->hdisplay >
> > +		    num_joined_pipes * intel_dp_max_hdisplay_per_pipe(display))
> > +			continue;
> > +
> > +		if (num_joined_pipes > 1)
> > +			pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1,
> > +							    crtc->pipe);
> > +
> > +		ret = mst_stream_compute_link_for_joined_pipes(encoder,
> > +							       pipe_config,
> > +							       conn_state,
> > +							       num_joined_pipes);
> > +		if (ret)
> > +			continue;
> > +
> > +		max_dotclk *= num_joined_pipes;
> > +
> > +		if (adjusted_mode->clock <= max_dotclk) {
> > +			ret = 0;
> 
> ret stays 0 if adjusted_mode->clock > max_dotclk (and num_pipes ==
> I915_MAX_PIPES - 1). Also, this max_dotclk check should be moved to
> mst_stream_compute_link_for_joined_pipes() and checked for both non-dsc
> and dsc (falling back to dsc if needed), similarly to the SST case.
> 
> > +			break;
> > +		}
> > +	}
> >  
> > -	ret = mst_stream_compute_link_for_joined_pipes(encoder,
> > -						       pipe_config,
> > -						       conn_state,
> > -						       num_joined_pipes);
> >  	if (ret)
> >  		return ret;
> >  
> > -- 
> > 2.45.2
> > 
