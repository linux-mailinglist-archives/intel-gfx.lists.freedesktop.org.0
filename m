Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C28BA86039
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 16:15:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CB910E0F9;
	Fri, 11 Apr 2025 14:15:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VgPUHXOe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E83010E0F9;
 Fri, 11 Apr 2025 14:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744380914; x=1775916914;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z+MVnC4+1j1evhowqUlXwDHETS1udi0FdxUpdlloa00=;
 b=VgPUHXOeeKUl27t3FRjZx3bV0POdbqbP01cODqRfBZIHe7I3enWuqL6U
 K3RwD1MbwW3OQD64BS/16Rc7OGPEJw9kypYuMNptn3D51dJ2jUgusQswT
 JyXUY4MXceY1hk4JFIWLfFgjVpZIwhEG5uCwSsYfyuQj/y6o1YC59NAy8
 5DuNhA8dbitBrPVWNMFkxMFOjx0QZ0jPn7sDkLL9GBLbMNA8ZrEau2k6d
 dgyjly/2izlqmz5mIierLnEQ16oFvA9ZKQ7fZgLx4u/H/lHuDR+Z4NDB1
 TFc/3HucaUf/H5cShW7foVPB4b2M3N4dqWv+Xc5iflyvBlHT0fOW1ofiE g==;
X-CSE-ConnectionGUID: wIdol6RySRiDsQevboqNRQ==
X-CSE-MsgGUID: eIhlvZB5QCWmoSIFk9goVg==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="56599677"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="56599677"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:15:14 -0700
X-CSE-ConnectionGUID: jjR8QBmVQ0ODxSbiSoEpbw==
X-CSE-MsgGUID: aI8PFvLiRc69pgRnRuJmeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="128980211"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:15:14 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 07:15:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 07:15:13 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 07:15:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m9feXFOEQUAZ6Tud/wbnYOK8v+SJEjdmZIW+XBtPY0LoT5lxCJ2zdRAKByQKGWHTR+unf8qWofToNjSZZJ6/2xEaeYYM/9+YIgxCFyHF5DmbQX973bgR+Sqz1SlBgMAKXXgC1+gFz7QUynhZAFEA3mBeLlPyM0KIM+H9kslAHs4hp8TjUnm0PrAuHCG3Ti+6st7joil8FZzJoVNNb+6Qv+MRdrin9Z34fDf9CBvnds4IpoLjAJB0nnEYWshYymJxN/Xzptv0Au8jh7mBoC8c72mVx86jzDoGji/uS04AcWAZuViUfEctw93kR00ch65R/uY0vRbpD0J2FqcxyY5Nxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z+MVnC4+1j1evhowqUlXwDHETS1udi0FdxUpdlloa00=;
 b=RDp0pMXw6Uw6eBMplBgs7gE7pZsy8Uebaaerc0tbhAf5CPdPXTp+r6sOKWYzkr8RddzBaHDDyvdaK4sHM6gHotupMlS6qVIhtAaJTZM2IQgQrUb8khDhWsM8X1/cz1M4AUK+60WbSdvZI62Nx3L8HgZvzpiD44BGszoHYG/3OhrU7ebz8H7fnMjhKLlD7uYKOh/3VYguampVcrJNKOgq2JVuRdTKNhJML/Ns41HKNzyfLpWe3PX+A/vbrvOjxhnXbs9BPcI0mp9TPxCXwuskIRHdwX78skT+4v2REe1Xnh/e/TAgAmG1p0ZUxslRftojvuMQ06MtZVolNKMUxuS52g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4761.namprd11.prod.outlook.com (2603:10b6:303:53::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Fri, 11 Apr
 2025 14:15:10 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 14:15:10 +0000
Date: Fri, 11 Apr 2025 09:15:06 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 1/4] drm/{i915,xe}: Move intel_pch under display
Message-ID: <tnsar4bcwkiei543dsns4lb2llt67ae7zsec7pyt3ziadhvamf@vnllj2c4v2ly>
References: <cover.1744364975.git.jani.nikula@intel.com>
 <041e3dee494aa15c22172360f2bdd9b15e4acb00.1744364975.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <041e3dee494aa15c22172360f2bdd9b15e4acb00.1744364975.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0367.namprd04.prod.outlook.com
 (2603:10b6:303:81::12) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4761:EE_
X-MS-Office365-Filtering-Correlation-Id: 0faab88e-cc57-4e11-1e8e-08dd7903449b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qeLwMCvfJd/fKEXlEaWxu8yGeYwyCgbllrG3eLbhogjNtI9T7wG6acEuSBay?=
 =?us-ascii?Q?yOme4lp01mKLfGXN9jzyyhQOkC3ltcmiYXuRCtzRLD1fBj5UKO3wcbRll8ba?=
 =?us-ascii?Q?UobJjUn5B5C8R6gdUfuQ7Jew0KuWsGbAaLPE9sUnZUPnxewusZsuGVJzxufC?=
 =?us-ascii?Q?7pc206P3TNZqmzn70uOu0F8YaZGuhrpQkeywL57cvAFJidLkrY+N3mkbW3Vu?=
 =?us-ascii?Q?qYPytywXi3n0Cza2KAOP56joHDXmTttYryU6l8GaeTcRCmFHGTvuzTn83csO?=
 =?us-ascii?Q?6fJC7O9hQu4V9yTxWK8k0EGtLszlshfXMgfS1ljrYt6NEut0/YtexI6on6bE?=
 =?us-ascii?Q?FWkg8VXbk+vuwiwlIlmOYK+Rx8eRgH9qg/8goRMqkH95dTIbdheljPl/GeaC?=
 =?us-ascii?Q?iGPlkTCEgey4Tz7A+NwBWy7Cu8ziEDaa11gEjNUXuk+jeWGM2NieHiAp0/ln?=
 =?us-ascii?Q?/DoJVZLBx47y08liR5NKyKuQktXSAmGmdBv8wiQuoOkeIJ86CQP1sU4jsnaL?=
 =?us-ascii?Q?tryvtZZOrQXosNRo9GUFD52lF7x04ixDJ61lobDhecma2ZTeL9C2qEQgBPE6?=
 =?us-ascii?Q?x4ZTMN/bBJG5rpUo+ILrUPsQ8VYNmJC/Gf8UzL6CErGoCeCz0b0ZSpPK5jns?=
 =?us-ascii?Q?BzXde/kouOhC48sxvUsO+iebp9IqEqgShvHHVVgDLT8s1brXIlDQBfZox2s3?=
 =?us-ascii?Q?yTEgjV5coHVbiB0ZSE96xW2XOICR9mw1kGPK71EiEF3WcmnNlbs2WlhTFAHr?=
 =?us-ascii?Q?8WTL+UUaL6EgwYaQZ7qz/beh/mQI5daEIgD8lecLtxa5SFiG0hM8tsHFRk9M?=
 =?us-ascii?Q?PDKnnzUxcVxjRwGoFEWHilpQDXhQFBui8We7msRg0rJirX5GByzqYZdo2GLU?=
 =?us-ascii?Q?qZSi3MQQKDeOEvTXtWPlUHuGJz4We4FNfH57yjN94jvFNaq7uawFU5QZmG5g?=
 =?us-ascii?Q?U1cdLPOPv2m4K8LhwSg+62U5XDB8rQq6Ol3IThdTcwSTFbE1rEJmGvCJhr2f?=
 =?us-ascii?Q?aoM41XhQHwMpzFSf5RHGgX3hykVmHuWRheki1yvjtTq1dLacZKE2SsEylpvd?=
 =?us-ascii?Q?5Lxo2Al89xztIccDtbFaydkMoqqMd6GkBKii0rGnW3aSKeupF6jMfar3qhuu?=
 =?us-ascii?Q?+YxKby3Fu2yyuGD1fYwRDkQ9HsxpA3t4RLSt5QwrKWV38NCAGqjNjLpR5tBB?=
 =?us-ascii?Q?AnvP0EdjmKqvV6t9x7KB0PBvokJ6EqUCduOUFIkugniITZYzYOU5leOxRpWm?=
 =?us-ascii?Q?qM+3B5V7svgxczVP0RyOr3XppxYrfGNftpnUZhMI6ChRLN3uJyq0lrplxb3C?=
 =?us-ascii?Q?J069z8yeS7Gc873tSbSXS3d806xjH2Zim7cj+wnqNL7m4aV4ZsXuhxoBuSOe?=
 =?us-ascii?Q?eZ2OdFI27XNb/6t5Z79Z7y3VRyhiKMgXGvmXSYpcA7zVyxgxgjrSIe2+FFe1?=
 =?us-ascii?Q?mhKPUyoMnhw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ahWGaPgksrwsr1exSvIvCQnXzPlns0HdH4m/SfwMhlGqHbeeJRr/kdORZ7hk?=
 =?us-ascii?Q?SWAfzBtnNAWDLg37K3U8xsniN9nwXUTsazqrEZtpv+RczXNsL/w+G1nzmotK?=
 =?us-ascii?Q?QPr1gt18ok5cqU7+94YFaam94X4eOAXNYt7GbMdI7GehOBvfVNlXtvYPsaXl?=
 =?us-ascii?Q?mYiHhRzbfAzFnoSXcUuZCYeC7lrQiPWH/jSeJl2LqPLh2bUBHRgCGD9zKUgJ?=
 =?us-ascii?Q?ye/Pp14SPmU+Zx131su+CT66tRY/m7LzgHOJ4WZrn+p88Xn6Ys1CjajlACgD?=
 =?us-ascii?Q?2I4TocbTv4xuWrkQl0yWn9n8z3UeWEh57sukhCG1MgTgSWV84R5Tr67h/cKS?=
 =?us-ascii?Q?X6JqUdbYN+e2otAKblHhVLF5SRLDgP7NjO67b1g2xQghHjIDu0pqEM5pxtY0?=
 =?us-ascii?Q?DKpBMqEcM3TaK0vuDJ/8HV+b40XUIgZsGhdsdS2T3CJcpxtK8mh37eOxtebx?=
 =?us-ascii?Q?hDdayhejDnal4hk4ijaW3Pmd2222sMEr4uNyxF9ae2OLEV0KofRSqKHQZz3/?=
 =?us-ascii?Q?8JwG41pIpWr1tyIO9jkHeWo79roqn2oTCPcY4+Fk4da03VUzT4DQc4MYuMMe?=
 =?us-ascii?Q?F3OHLxiMplKr0NDU4v1UrioMfMVrNx6Dh7EprUcXNKQMWVqMdNtSBfq5mW0Z?=
 =?us-ascii?Q?lG34K/xV5UNfxv/X4D6vmnsEwLvSzbwLAs1bZmMg4rjIV40/iZg+ZXiYAz7J?=
 =?us-ascii?Q?F/iSLNpXzjjGcOhWjo/qc7nH95LTNRNIxg+9P7g7tZHWNTrF1MBEZMh/tllg?=
 =?us-ascii?Q?XqD9QEtU928+YSZL97xKve3wAB8tsnuc7nLhTYk2hkuDaWqpwjdy5obZqome?=
 =?us-ascii?Q?opaH4n0ACl6PORxSgzk06Xp9XkUdB5CjKbe+/MNyXU90buee3OrgRzNPwn7t?=
 =?us-ascii?Q?nophyaz82ojftsjUf4DPNsw1kbYlx95eP6aHKwRuL2JAiZ5mX63F79UZEW5N?=
 =?us-ascii?Q?+C9bX0AzPDAH4jhJPx6z0JDVh4S6U/UP9VnNGuQ6QtMUt2oSVCR/eWGOuNvV?=
 =?us-ascii?Q?Ul9KyhoF7fGTlxtThSq9iR7IEpI9XA7/LwWYX9KUYu6iYDD5CL5G3DWQVgx3?=
 =?us-ascii?Q?Zipcqg4Rd2Ga1yvZRMf+RNUvgPFDtyJut12GP8QvI/gdL8e0/bwolrz2IITX?=
 =?us-ascii?Q?+FkQTNEPxRnCD/CKSDv/Q+IGjK/rlORgM+I4KqGEFjWycmANUpqjDAvjcK60?=
 =?us-ascii?Q?DDPKN1dlc7ZtDw0bQcs6722uxo3H+4CtIAy7mD4hFwK1KCVG2BJqvmtKDIdR?=
 =?us-ascii?Q?0pA0CVUdp21AntQlEyLHdYuUuZbPPMgzdaj++SebzlElAowNh6z5Q6c11Loh?=
 =?us-ascii?Q?GnEHGuZn32IYlhk25PfPupG+/RlJghlhOZldimROng296P2Oja5rPhcmrGA/?=
 =?us-ascii?Q?DiJ8Nvj/AwgKVrx4fDttSZrkpoonxxz2O7RinMLsAnn5EjrqoM2fkBZ0a8LI?=
 =?us-ascii?Q?cZS5MKWwZjWw3h7ykfECfPKsBg0rEaryiWRHqaiueoPR4dyauBr2k6UVoA0h?=
 =?us-ascii?Q?u2XrAt/rg0Ac7JR0BOS324JbSERrS2uNLIR5ppBHQOs5EiqQlhKClkAa6eVr?=
 =?us-ascii?Q?u2Tq3ReGY6DkpILsJSACaAdwVih+nQnihNZTIHHWtUQXvF/Wdu8VUje2ZEVt?=
 =?us-ascii?Q?MA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0faab88e-cc57-4e11-1e8e-08dd7903449b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 14:15:10.1425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVXhw/PDi2/+MtaLvUxXroUjGRDGqH7WUwAwgsLdnoyC/nrRnmtltdZmocfsjymTtA4wzGiH+rGwhdQHuU2pUW0+L+SWvnYYTKqWD3Vq6mo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4761
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

On Fri, Apr 11, 2025 at 12:54:11PM +0300, Jani Nikula wrote:
>From: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
>The only usage of the "PCH" infra is to detect which South Display
>Engine we should be using. Move it under display so we can convert
>all its callers towards intel_display struct later.
>
>No functional or code change.
>
>Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
