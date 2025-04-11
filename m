Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66ED7A86054
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 16:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CA4B10EBD1;
	Fri, 11 Apr 2025 14:19:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hkq8+NCy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22EFC10E263;
 Fri, 11 Apr 2025 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744381145; x=1775917145;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yBqAaGL2cluWXJtycoi9FW+I1Ig0G+qp41F2lZE+udI=;
 b=hkq8+NCyMjj9CrzftQGokuJ95d0KjZvQhQJl240MeOwR3Z0uth4vSvCn
 EbmWukL9OeRUnEosZKhNi4M+Abb3iq3DmcWfLmDVsLfhC3RRW5Uh4xX4g
 h+uq6udfz0HIf2aMRyTBKnNMizwOKn1O+18bMGoCH6U4FXze3+tKomsK4
 X0MkcUhTbII9z/78Teor5ZX8zxfq63qGLSkJPXzayUWHj4692kDbZX9fz
 q3tFuJi4TyDe39MIpSBxSNLSgWdp7xb5z/nEg2IMqSl7scEKYyfZx2mKA
 Cw7EynPfKLBK5g2w5E4+jMovqseKkCY7OPO/k4G945UoL1x/OYAQ1rHbj g==;
X-CSE-ConnectionGUID: Kln/+mjxQ1iqAKitkPq51Q==
X-CSE-MsgGUID: SLhkjvEjQlKFWxe0TpBwBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11401"; a="68422223"
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="68422223"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:19:02 -0700
X-CSE-ConnectionGUID: vUDcLLVWQa+BfZhnUIGKbg==
X-CSE-MsgGUID: r6ibUZkgS4iuYmS/AjpBAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,205,1739865600"; d="scan'208";a="128981231"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 07:18:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 11 Apr 2025 07:18:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 11 Apr 2025 07:18:56 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 11 Apr 2025 07:18:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kA5X4Ki166ciD3BLQt6hY+TZhcH9DBmUgEokAyMGb6KzGAuVIk6bc1GQHVQNfgUH/8mjT1F0066RNSF6AKBebsIb82RdfLhmkCgvASE65kHMhGlzAWjFsTc5c84YUZjLMdcYDr+JkLJwybrmSGRJLS0n2/P2CL2z1UUmFQjc1sn+fhYeVZsRE00AH+ihF17NqJ0QpfLD8j7SPtuqM90PGch/uhMiL8I+0rCH5OhyafCLGE0Kh1HaiOlUmXQsSrNIEy3tmwK5QJ8XEcxobrD8g6E89rC03XrmQ6BJE/7zlpS5RKgwiHOGjoysrYXrVk7INjm+5/LJRMUoyGgxKBMMHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yBqAaGL2cluWXJtycoi9FW+I1Ig0G+qp41F2lZE+udI=;
 b=JLzsOI/J36pyU9Qq7AiArwmwWiq/B+OxqaqxH33w8TQnfmOqeHsQrrJWAPUbBpvAtMhBjW85BnYig81WdQBaQfRzcOEqiwvE26FSN6etJKBu9QNwERac2q7Ix6K+VL/XsXvBBacgPuey0UYKC+K9G7JbNreNf8lcqpDr9XuVsjupXJgenS5kY2sdjIpCU3BdLHCJzPdZxJv43vEQwvIYGBmEl0VYNVJuwd6sEA0GBhRMEDZdvvRElNCQGyncxMZn0YsR+/tOOvRMCIAPHJxGquv16JCXPRhO6gAyG3CHo2bAJ67miJJ+ZTn7gYj8JtoY/4Owq2bhWD7BecwK/M21YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA1PR11MB6966.namprd11.prod.outlook.com (2603:10b6:806:2bc::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.29; Fri, 11 Apr
 2025 14:18:53 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%3]) with mapi id 15.20.8606.033; Fri, 11 Apr 2025
 14:18:53 +0000
Date: Fri, 11 Apr 2025 09:18:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/4] drm/i915/pch: move PCH detection to
 intel_display_driver_early_probe()
Message-ID: <xdtxy4pddlsxzyjevhanftn4hegikfi24dsmu6ej7if65ugjmx@slfwnqlapzny>
References: <cover.1744364975.git.jani.nikula@intel.com>
 <de70b35b170c9a74edddb497a209eb10427b77de.1744364975.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <de70b35b170c9a74edddb497a209eb10427b77de.1744364975.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0227.namprd03.prod.outlook.com
 (2603:10b6:303:b9::22) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA1PR11MB6966:EE_
X-MS-Office365-Filtering-Correlation-Id: bc08396e-4f4c-4521-dd5e-08dd7903c9de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|27256017;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fNvUk1owLbde0JwWK/l+S4hGoW6yRNGOwvWTSQC2wcEVfM8i/aARrOfI2Lnj?=
 =?us-ascii?Q?J7glKkmk4/Iz6fugIGessLLyhDFy3ZI4f5Biz8JeqdIQ5wRrOFyrRpVqUY4B?=
 =?us-ascii?Q?kU2c9SIjuUg9obD1IabdS4+WsP+7pbE0PgzdjM62vgrbPuhb2LtilEQTR9Kf?=
 =?us-ascii?Q?a5k5k6X9zYC1bYGo//u+Oue4EK3x4LUA+OCzsTGsDlGzDnGctYmgGg0vGkM0?=
 =?us-ascii?Q?CFpfE2jb8gpzCDYeETZuKJrMxicoA5oNhd/+3x/M8FXCLKH4wErlzQMlxD9U?=
 =?us-ascii?Q?CCuVXG4MsD32t1y+vJmAxNRN6bUqcUWAZoexBPkRSfx9aCNvaimu+b9vzy8h?=
 =?us-ascii?Q?ETHvn8eyp0Frkhf7YEqJDQ4SO4y6dH2j6MTCDXrnR5ymCtqHoP5OO/haNG3G?=
 =?us-ascii?Q?kGOuo6mNmMTuJFX/GMSqhmzVpGvsi5CkqHtEE+K/trUgSz8NZvc8Gw9g5AB4?=
 =?us-ascii?Q?wRryQMTiwqr8Cqh6DtyoFdyAcHBAGpdfNqKTi21oUMbASCTBBbkCIj8ZSR4b?=
 =?us-ascii?Q?XaaQeGEAA8K+5G0CfvNh+XSmGXFB/bY1bh4a+B9I3/YbnrByHMAaWDo9itVn?=
 =?us-ascii?Q?6xFQk/scEWZi4W3M9ekxwIeuxSOJ+ksW0E5th3o6KG5Na1s7M2Wio5V1tESr?=
 =?us-ascii?Q?SjZWp4mQVPj/DC5AbtFQSPSesec21uzcI4BSGIqEZu2nk/9NabkMc29rm9bL?=
 =?us-ascii?Q?Jp3nYYLjoliLAvqPBPcx1vzOpjij0md5hhe87JeHcw3UBm205A9QmLYbA545?=
 =?us-ascii?Q?68JmaOqM5lErT5J9AvBQGnVz5MrHVifp4VPZM2+6yYA0Wx/IDZDSQ24Pp+av?=
 =?us-ascii?Q?5MKY7fntzHoI7sDvLfzBKC2cRfLnUbxYlh/EHxmdWWhok/1tGS6KW9FeT0Et?=
 =?us-ascii?Q?M+eFUuaTqnTTX8kVh9NOGemQMf8298oWplAYhcy8UY5iupdcMAZKmEXVoPzx?=
 =?us-ascii?Q?0dtOj56UKU2oous8awwJ/hbA38EY11hAhBQMkBC2gZJ4+cYOE0cEmwPyS2Q+?=
 =?us-ascii?Q?CuS2ysmqx0+JowfEsfJG68F8d5AUP6JZ0XPWVBSxP3pBlOqCiMXMTXdMTAIp?=
 =?us-ascii?Q?ZHOxwJjNsuHz7anJmBQBerE4U3rHq/kxwc1MWl4xlMMoR3Scn9bVHo8U/eZY?=
 =?us-ascii?Q?obaYez7eVYMEehOXXZfZKwx4T09909c4pxNmC/L9QTqWPa34919lx4VdppQQ?=
 =?us-ascii?Q?XC1hpYvAAMl7HHmk7qeAwIjDqdmYbYfoSfeebkhR9fWKGlJ67MYD2FpQA1UM?=
 =?us-ascii?Q?ThM/n7xP5x+xov1fgnKRBYjySJaJD1PS5cGt9xuiVMKq1c3pyiL80aCUu+Tv?=
 =?us-ascii?Q?cglQSAAlrMz9Q1ynukL6u0A/6sfKxEemTXJJR3bKy/kGQ7+BJseUrXK5khMJ?=
 =?us-ascii?Q?CqfD3Brv0+QoGALKWfRkiwoqbO+auzCgsP/AVJ0o9Gsi7Z6MCnfDPtusNZNu?=
 =?us-ascii?Q?FLeIw3gxDO58CnXNQRszu9zLaepAP2gf/Os3zKybwueBi8AHm0Kwpw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(27256017); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RaIDZ28Bm4W+EdyRtngTbs8EMt6XXJ871hfKn64TDa2CCWIuVbBErUM9ama4?=
 =?us-ascii?Q?L6Sr9HoWYbGy6DA0+OJV68ZVG+WlSDKENN4owRF+qejBTMlJadbMLPZYx7gL?=
 =?us-ascii?Q?t1gsrTeNaY81hIGapsFwcczt0Fzn6Z+86TQhgPMETfqOb3G2LfQWdKW7nOCU?=
 =?us-ascii?Q?4Z+TjSnchxe/2jB1hwymQosAmdzMl2apDAifcu+9TIQyjryrfh76y8+vbcqY?=
 =?us-ascii?Q?Lk/5hfSzg3EYMvsHu1TLvxE+NQm+jsrg5keJ21iRXwwDSHqiYqCucpH+F7GZ?=
 =?us-ascii?Q?C8pGKOs6I1w5T09T4EDPaLSCis+u7wg+qH9rURpoz76XC4IsQpj4NpXpIIEk?=
 =?us-ascii?Q?q9yVxJq980GhnBmZFrpEePFGch+v9l+0sngRNk+1TqRx8397qsvxiE+xl1vk?=
 =?us-ascii?Q?QfawZErf8kN7ld7hV7TyVrGd0RuwfyQvCflvFYNqTdEOHlInqFFVK6w7off2?=
 =?us-ascii?Q?AzCCtXJV6hkVRwzoVlXpwPgM6V83iaRwEpqfWbLLrZ/Ln5gfwjCwx+KBv6eD?=
 =?us-ascii?Q?1eaxTbSVr3NqysoeqqpLN55Q2VCPXLGjARZLeDZaueM8ybq7RSLdQ4ZKwlXu?=
 =?us-ascii?Q?kJgTV5jNNaLuvshMErVjziMxDsgrCF6NDdun/RD5jGrdsjRj5OGBOUqwRZC2?=
 =?us-ascii?Q?mwqHrv/wYUqsYIQVvY5cxKPTsvfVfx4b+cHBWZcIzdVgnUn5ywG5Sxgw+YUo?=
 =?us-ascii?Q?jdNaTmcP6rzGuc3RVt49ZNHIQccH4V/j308ooj30Pw44LnRisYu/7GcjxpLF?=
 =?us-ascii?Q?bBHqBJhXy5vdD8ygJPIzNdtIaOiIorOK63aLV4tUKS3bKYdq5LL6hsQxVh40?=
 =?us-ascii?Q?NYrRbcXALl0tcKK1rq48coZMdsIHML64enq6BOHXz0VIW8AZF+0yNdK4AOPv?=
 =?us-ascii?Q?vPdDUvs2hVnG6RRGuSbmw+C53XOPHvTHQRoYND3vjN2LHu9xwIiwdQzlbVfu?=
 =?us-ascii?Q?YDa2AKOCj3nmI91CbP08ZkJdu0qWWkmF/sPZTmfWx6zIn69Br8yjCBU510zj?=
 =?us-ascii?Q?nMLvDKRqXKCz6835MVx//yR447wh3QdH1upA2evNXupalbkrSO0q3VWvMWqY?=
 =?us-ascii?Q?RRXl0Ef5CcfVUGLP7bPiRL+bCO0atfiF8kgw8W99g6dt2Wtw7L2bY6XDu2Q3?=
 =?us-ascii?Q?/tgD5DfAlnV+9/68cluHtv6Cloti6MiYwuwzmfdCW7XOyftnvUfJ4MT8z9DR?=
 =?us-ascii?Q?jWojV2l7RDFFRoUxxx1R4KhCBQO6vQC8STBvAFNgBabvQAa7oObt9ugzSddd?=
 =?us-ascii?Q?hUOIbEKw8b9LS2rry9yxeTwpGc/VuNeWj/PEPJxka8d+W+gAiNk+Yd14WH2v?=
 =?us-ascii?Q?VgGK9IkW7QiJ0Ml1am0kQEHpwTP6xzq+tMuqYELX/9JA0EQa71mMb56Wgc+I?=
 =?us-ascii?Q?GpB1pVcGZcem/R7bIlgoHqGy9aDRVwYbY72yIc94EhWjyD9ABhYD6pltRnyx?=
 =?us-ascii?Q?R8xfEPtXCrDhuVLXtwGkudxQmEPy1Tqsr8HuPd8dtNr0EVUMV19qsSkfXfBr?=
 =?us-ascii?Q?FgOW8PE3PyISKAYlpemgbQupwNC5ymxFm9+NM2bqR3fff2Wj7IXY7Kft14+x?=
 =?us-ascii?Q?lcF6A0tAbIC6eRzk5V+o0I/66xT//5YuPql2s3yvsOkfmHovZeaDcg8YGEjt?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc08396e-4f4c-4521-dd5e-08dd7903c9de
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 14:18:53.6059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XlHdv5YuBK9B0HK5k5qcCRhO1B4kMnRW3MYl7YpfSx30T7t+KPVHxU5hb6CFU73bQfOi4mTHeiw2nDtdAY0Eoy5voKAphxTvrTKVm4ExUTQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6966
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

On Fri, Apr 11, 2025 at 12:54:13PM +0300, Jani Nikula wrote:
>Make PCH detection part of display. For now, call it also for
>!HAS_DISPLAY() to avoid functional changes here.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
