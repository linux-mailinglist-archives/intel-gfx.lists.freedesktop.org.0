Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 143E6993778
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 21:36:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCE810E412;
	Mon,  7 Oct 2024 19:36:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aLpRUU2B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7718B10E412;
 Mon,  7 Oct 2024 19:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728329767; x=1759865767;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FLJEoKUwRTsr4rHr/w6GONQ8SmrKA86+vp6Swqd6KVI=;
 b=aLpRUU2BlsLUAaRK7v8hqwbSpO7aQHd2+Z7nmz94PyxK3HYGkDkRT3er
 tTj6G/wDsNo0RDaQgIouvvtMx+OqXvR2dVMy+9rNh3GdzDnuIz/FK+xOt
 ePidKJZM4zWyTKw4EmWchdK8o0RU+XiysjeWtTNPNlu1EXW6HHU2d9aK2
 LfTGttZZPuiL6qcrKCVLBvk5VyzaRkhHEXjGZ/Y33rCdlC+Itcg0vn45h
 15dutOdghIDWAFl8ukSnCu+hNtcYdzMlSJfkOYMFe98eXtEKSEmulS57w
 /UlNvcNxi7iTi/eP3YFgUwMgau6MWrkn4N2UNdLUNFLl1ZUbPZu4MeKNS g==;
X-CSE-ConnectionGUID: 4oboVeDRQZyX/5nB981ZYQ==
X-CSE-MsgGUID: YvB+jC8bTQ2i4Pxi0Z5MBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27375033"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27375033"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 12:36:07 -0700
X-CSE-ConnectionGUID: 06E8d+NhRImDBN9KegEX6w==
X-CSE-MsgGUID: LiIDJlNcQTO86ZFcHXMNRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="106333672"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 12:36:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:36:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:36:05 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 12:36:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 12:36:05 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 12:36:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m9SivEwP2xUcAOAw3as2czlrJEM2TK2mgVFP0zrdsMJD/RhnF/v/sDMtSUy1yyZ8ERApMVVvDXeHjfN5h8XVlfhsxuEZDS2b6Qi8RrTCn9jPPJ2QJbNDpSMReFW3LbOQbrAFyopBPnQ/cyWU6AkoPFot74c78w5SgQR55Q7lsSlQqoURDyNxtaEW8MUlScJO3tOOe3aVL4OvGsgx5BvccnC4ezJruQiy0Oy2uZCqnU1EH3D++33H3Gogh11YjVBbQE/g3hPaRVUeqY0Ze8BsbWZr1FGcXjev3YZHjOPPnv3/oYDwuk4rwcE+m7pRJEIPFQ3pErRzTP5Nu56SSeLP5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V2+6Dyo4cli+FQM5M5fmKOEWrw5bkfkbkKJieWhrbXE=;
 b=nbxMpAHx+16mcH4C24+RKBMl+7Ans10cNyVIdFQaaRn/nSg0dqSxVvDUyJUez7b9eLwnwPU96PCQVg4kxuHVqfiKKxoSKKTV0cDwY+AeSd3UamGXaQr6VUrQjlTfQijqoLkyhELh8EfMp3ENHNSKc2WHsLK/L72G6gICXIhNNypIQk0U6Tj7qzrtarNRmwPRv2IQIuuK60VGh+ZUXuqWnwqLh1WiwZT9FDWT9dVf6CJE4bY8lSsZ8IjG55yqXAqncvWGYzIkxSn2Q+yGrCnbcvg1psOvsRR+QsZncI8a4nHo6IqW/feNlbyrdWFQMa+z/+kIxK6qoqh8U6JSL75odQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA0PR11MB4527.namprd11.prod.outlook.com (2603:10b6:806:72::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 19:36:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 19:36:02 +0000
Date: Mon, 7 Oct 2024 15:35:58 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 01/15] drm/i915/display: reindent subplatform
 initialization
Message-ID: <ZwQ4HoyKvmyNBHEr@intel.com>
References: <cover.1727699233.git.jani.nikula@intel.com>
 <8dbb0fc4a979dba2b1030384f6dde20ac622d1ba.1727699233.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8dbb0fc4a979dba2b1030384f6dde20ac622d1ba.1727699233.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0160.namprd03.prod.outlook.com
 (2603:10b6:303:8d::15) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA0PR11MB4527:EE_
X-MS-Office365-Filtering-Correlation-Id: 38840f42-13c4-4e82-8b0c-08dce707472d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VhPf12tJIWS7J9W/wJ6chyrWrCNUwM5k+FToLqDhJnffPAMiATA1h7ScTprm?=
 =?us-ascii?Q?k+VPP/vAZUnX3u47jCyiFWKZwBPD05SudD+LxTm86TzmmNjOznzAbmf+K9K8?=
 =?us-ascii?Q?ghwSVO/tnMQoJTJ3lpJWZOZukqTnhNExR6nKnII+lK2QOg0TK2IFKxhnSq+u?=
 =?us-ascii?Q?1qo46QVFHwMMEao8mJRH7FzhQqWv/c1pGOgml+w9A91YU6IGXHkz+Eudlp0N?=
 =?us-ascii?Q?4r24X07ljBJjP3KLoIe0GI7v8AoM1yo5K616EpkG5e923FBxobjEZ6oqPQLN?=
 =?us-ascii?Q?JW//hFfyYFgM8O26d8ZH9AfMFONFu4nhjE6bXTIn0CMzpocAmRPSTyTG0oye?=
 =?us-ascii?Q?LtUuTJh8NaAvnQFbLlvFcg4YEMDF34SC6lJgkuyW7q5qZVmPWAqPI/XE2C7F?=
 =?us-ascii?Q?J3RDmPxCbd/m5d0K0sT0bBtSmRwXeFBYPRTGx7/Fs59D7Fpd/9e/aFgpbvYt?=
 =?us-ascii?Q?dnOjXF2eb4CJTSD6Y/Fzz9d7RtT3Sp/Dedclt+iB5xUTLAzzUlGJDvYfnBYo?=
 =?us-ascii?Q?MYP/ZMYwTX3pd59Kj9re5q6ezOZpFe7tV5ablLzZ4kpWro8eJxFT3M3zEuF/?=
 =?us-ascii?Q?mjnMdl1QUS2Om1rW321QJw9Fx5XPLMJJs+x6aDFb0NDbISm06iOqGSiqQ4WF?=
 =?us-ascii?Q?n0FwOw/bQBrFUPHPerKAi8SMa7++KnVvjo8axxJT9IXY3csMyaoeJEZ7w8oK?=
 =?us-ascii?Q?0WleBHWZ7cQZelnkF3VoOpvJ48lwxwMfmfjIPxjMu6qP8MzYoQFN7eHyirG7?=
 =?us-ascii?Q?hJOx2eEsxMXv38t7DBF2A42gzSInwM0RfnzqpDvaGle4TgwcI9lBjWPgmnCy?=
 =?us-ascii?Q?HVK5o5/B41mnvPxp1SzHxRtNcKKdgs/jAYnORjWM1LEp9vetli5/oC7hlIA9?=
 =?us-ascii?Q?uXlv7mvvUgXuCsWgqQ4BSfe5T4oV2TEZP9LnPc6JD3IMVYuTbYRmQeT06kEu?=
 =?us-ascii?Q?qSWOEMrUR4c4H0LlhJgBWAKXr4CERGcCoH5VQ1aREDIS5A8BnWfu4VtjpM5E?=
 =?us-ascii?Q?00pDjU11VT4idr8aFF2MWE12XsqC7C1ULHGuAVzKiZh67RthwPnUheqGHe0v?=
 =?us-ascii?Q?8wcKPrD1vIm6JlCxvLm7ay0VTD1gY9Jo5BpFh11UUxC8yNrL5RBXUZ6Jrwry?=
 =?us-ascii?Q?Cen13AmG8kyF6EMG8MSlEJlVG24X5kK7yivg6DAru55l0Lf0uI1Zc+pENhLK?=
 =?us-ascii?Q?JmFTCPIHaRfyOFvckPyQeRLUh+AhBzh2qnlkOKlLSgSlJjWPi0u4QPetgaXo?=
 =?us-ascii?Q?aSHVwQpWBkbMEsPDmTERaq3md2Ir3EB/WkQlVwRLCQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zacgGgtmc9vCeDlLV4mdaWeRomJ37uOfwXMrTWKOVEFeG29v9YkjxMcq6WCA?=
 =?us-ascii?Q?x9ECMPm0tFWTMQQq3WYmC1NPEDcWEbjVzHxlYdC9LO9orXmWQTFpf4vR2FHM?=
 =?us-ascii?Q?lTuCf5IlWlHVBh+Cne1wvzzrlPskoGJmlfbSPrV4o0cXdfvxXNHgDuypIrAB?=
 =?us-ascii?Q?44qg99j02FjyH78TGWsVs3Dn0Zimip0V6/bhkvI4iw+KNtNQeu+pSGwXHEuJ?=
 =?us-ascii?Q?JECei4MegmzElEw+yYawWVpcJc2pvT0AzAuf4TrCIaWMRuV3BP+t56FWCcdc?=
 =?us-ascii?Q?IPPdm8h2WAvBntU77dP9HSkZW9HHIySILp9NzicbYT6ir9r1gXchJjw7yJcb?=
 =?us-ascii?Q?dwMhhfSSK4O7YTtofSxdfEHv2SfZSsu5nsTzyw0ZFQcBCwLQM9QZxMJN6RmI?=
 =?us-ascii?Q?n0+CqWhpoZmU7fV4yeX0FQ9HUX5rQNpk4rylkAIUbxLpU3pWVqFSB1ZBAluj?=
 =?us-ascii?Q?UOZ9eM/SuTgXZaAIzNYZpuPR4mcXTbjhe+6/nd9xbktyZ5J6xf5KNOMoGB8I?=
 =?us-ascii?Q?aUl5b5vmyY0C8S65HGG4DkQ3a/5hv58mXkv3JFse8wf/d6kiaOD46DrtlnAb?=
 =?us-ascii?Q?udb/rTaGrC34HqAhbHCnV5YfUBEdof36ldIHLIXAsZVtLimYbAWf7T6UjGiJ?=
 =?us-ascii?Q?xMHFqG8SYbAUF5yRqOeoeBCIzCfbMcgADehqfwvMLbO2RU75Dn8pBOPDIPSU?=
 =?us-ascii?Q?6m00KJn+wq0Ki5yLQbsasAOg6dYxLpO6pGjF9msqvaC4XaP4f3Mn67tWK2ng?=
 =?us-ascii?Q?RXkBICG111vZX+ZFI5Ggh2iCbrz0xA/EaxMRxa+eHM/+kmWzUq4+2qjiKMnB?=
 =?us-ascii?Q?T2+UP+UQtGU5nrJDrqON1YJVN5+0TmL5Rwq9c0kzPLohb7NcrRByHbh7HIIF?=
 =?us-ascii?Q?5nZq1FpPGWDlCGGf4e01HhS9dY36RuiPlm9RnHAxY3R2OjsimTAvVHYGr/FC?=
 =?us-ascii?Q?TRIVZFIQ1oeVM3bXaEEFYfodOz+k9D+zvqCZYRCoXgkxXgwMqxGG3jmf58GP?=
 =?us-ascii?Q?WZpEmvaPBGHXzl/f/SqB/eP7f6+65cOio3788zWUnQ0l+g2J7RZCBHBs16Xv?=
 =?us-ascii?Q?ozvfNwbpaVOJp8CeV45OlEajYJ51WuQDC6YVbdheVB/ZsPMPpF5T61MxTi0a?=
 =?us-ascii?Q?hVB1Ttm2FtDsMIik8jjiO/+oP3Lg707FBpp1GS460WIwctCmOixfjtudDVbw?=
 =?us-ascii?Q?KNexExHEYHYbmZeBjEIN6JehoGa7yEe5+YI/SyRgQNHg2D6PxCO/gIMbcFq3?=
 =?us-ascii?Q?rAudRSOE01kRJn7NF28p9X043+sxdE6qZfQyx6oZ4HE7V/OYaVpPmeVuu3T6?=
 =?us-ascii?Q?Ge/TPTelReRhWujaGqjJSNQlL0FgJHJI7jeFxPyDV3wKuVm33qSNW6ZZxhur?=
 =?us-ascii?Q?/qe6WI8cTviXytmx9b5oIRL4k5y9yKoMTKy8s/x5o5txMShlw8fAg1EXX7kz?=
 =?us-ascii?Q?TWt2FghDhcYCt/Wgk5mZi34plOiflKQ6ZBN8xkc3v6jtJi5Z4MJYx3nD2Bv5?=
 =?us-ascii?Q?6jK3XUpWneSddFWswoLCB5wqt0eicuHcyqkuNx9UfY8uYzJfm2H6HB1iO6UZ?=
 =?us-ascii?Q?TKWRfKGI+EgRuyYKxeR2CIh72hQskPrgVlZVUeVBH2zIL4QQmkHAKbkqosa4?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38840f42-13c4-4e82-8b0c-08dce707472d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 19:36:02.7050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IFINHU/VWcWAsOSY/vVdgif6fR+BjcyVmQ54BN2JdBpaWSwAkp9VutqkfH3gAX8Ydl8ydIu+zbBk8nwNX0CiXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4527
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

On Mon, Sep 30, 2024 at 03:31:02PM +0300, Jani Nikula wrote:
> Make the subplatform initialization less cramped, and follow the coding
> style more closely. Initialize .pciidlist using designated initializers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   | 116 +++++++++++++-----
>  1 file changed, 88 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f33062322c66..93c751fde1a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -497,8 +497,14 @@ static const u16 hsw_ulx_ids[] = {
>  static const struct platform_desc hsw_desc = {
>  	PLATFORM(HASWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_HASWELL_ULT, "ULT", hsw_ult_ids },
> -		{ INTEL_DISPLAY_HASWELL_ULX, "ULX", hsw_ulx_ids },
> +		{
> +			INTEL_DISPLAY_HASWELL_ULT, "ULT",
> +			.pciidlist = hsw_ult_ids,
> +		},
> +		{
> +			INTEL_DISPLAY_HASWELL_ULX, "ULX",
> +			.pciidlist = hsw_ulx_ids,
> +		},
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -541,8 +547,14 @@ static const u16 bdw_ulx_ids[] = {
>  static const struct platform_desc bdw_desc = {
>  	PLATFORM(BROADWELL),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_BROADWELL_ULT, "ULT", bdw_ult_ids },
> -		{ INTEL_DISPLAY_BROADWELL_ULX, "ULX", bdw_ulx_ids },
> +		{
> +			INTEL_DISPLAY_BROADWELL_ULT, "ULT",
> +			.pciidlist = bdw_ult_ids,
> +		},
> +		{
> +			INTEL_DISPLAY_BROADWELL_ULX, "ULX",
> +			.pciidlist = bdw_ulx_ids,
> +		},
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -632,8 +644,14 @@ static const enum intel_step skl_steppings[] = {
>  static const struct platform_desc skl_desc = {
>  	PLATFORM(SKYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_SKYLAKE_ULT, "ULT", skl_ult_ids },
> -		{ INTEL_DISPLAY_SKYLAKE_ULX, "ULX", skl_ulx_ids },
> +		{
> +			INTEL_DISPLAY_SKYLAKE_ULT, "ULT",
> +			.pciidlist = skl_ult_ids,
> +		},
> +		{
> +			INTEL_DISPLAY_SKYLAKE_ULX, "ULX",
> +			.pciidlist = skl_ulx_ids,
> +		},
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -667,8 +685,14 @@ static const enum intel_step kbl_steppings[] = {
>  static const struct platform_desc kbl_desc = {
>  	PLATFORM(KABYLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_KABYLAKE_ULT, "ULT", kbl_ult_ids },
> -		{ INTEL_DISPLAY_KABYLAKE_ULX, "ULX", kbl_ulx_ids },
> +		{
> +			INTEL_DISPLAY_KABYLAKE_ULT, "ULT",
> +			.pciidlist = kbl_ult_ids,
> +		},
> +		{
> +			INTEL_DISPLAY_KABYLAKE_ULX, "ULX",
> +			.pciidlist = kbl_ulx_ids,
> +		},
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -692,8 +716,14 @@ static const u16 cfl_ulx_ids[] = {
>  static const struct platform_desc cfl_desc = {
>  	PLATFORM(COFFEELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_COFFEELAKE_ULT, "ULT", cfl_ult_ids },
> -		{ INTEL_DISPLAY_COFFEELAKE_ULX, "ULX", cfl_ulx_ids },
> +		{
> +			INTEL_DISPLAY_COFFEELAKE_ULT, "ULT",
> +			.pciidlist = cfl_ult_ids,
> +		},
> +		{
> +			INTEL_DISPLAY_COFFEELAKE_ULX, "ULX",
> +			.pciidlist = cfl_ulx_ids,
> +		},
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -708,7 +738,10 @@ static const u16 cml_ult_ids[] = {
>  static const struct platform_desc cml_desc = {
>  	PLATFORM(COMETLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_COMETLAKE_ULT, "ULT", cml_ult_ids },
> +		{
> +			INTEL_DISPLAY_COMETLAKE_ULT, "ULT",
> +			.pciidlist = cml_ult_ids,
> +		},
>  		{},
>  	},
>  	.info = &skl_display,
> @@ -824,7 +857,10 @@ static const enum intel_step icl_steppings[] = {
>  static const struct platform_desc icl_desc = {
>  	PLATFORM(ICELAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ICELAKE_PORT_F, "Port F", icl_port_f_ids },
> +		{
> +			INTEL_DISPLAY_ICELAKE_PORT_F, "Port F",
> +			.pciidlist = icl_port_f_ids,
> +		},
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -921,8 +957,11 @@ static const enum intel_step tgl_uy_steppings[] = {
>  static const struct platform_desc tgl_desc = {
>  	PLATFORM(TIGERLAKE),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_TIGERLAKE_UY, "UY", tgl_uy_ids,
> -		  STEP_INFO(tgl_uy_steppings) },
> +		{
> +			INTEL_DISPLAY_TIGERLAKE_UY, "UY",
> +			.pciidlist = tgl_uy_ids,
> +			STEP_INFO(tgl_uy_steppings),
> +		},
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -998,8 +1037,11 @@ static const enum intel_step adl_s_rpl_s_steppings[] = {
>  static const struct platform_desc adl_s_desc = {
>  	PLATFORM(ALDERLAKE_S),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S", adls_rpls_ids,
> -		  STEP_INFO(adl_s_rpl_s_steppings) },
> +		{
> +			INTEL_DISPLAY_ALDERLAKE_S_RAPTORLAKE_S, "RPL-S",
> +			.pciidlist = adls_rpls_ids,
> +			STEP_INFO(adl_s_rpl_s_steppings),
> +		},
>  		{},
>  	},
>  	.info = &(const struct intel_display_device_info) {
> @@ -1102,12 +1144,21 @@ static const enum intel_step adl_p_rpl_pu_steppings[] = {
>  static const struct platform_desc adl_p_desc = {
>  	PLATFORM(ALDERLAKE_P),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N", adlp_adln_ids,
> -		  STEP_INFO(adl_p_adl_n_steppings) },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P", adlp_rplp_ids,
> -		  STEP_INFO(adl_p_rpl_pu_steppings) },
> -		{ INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U", adlp_rplu_ids,
> -		  STEP_INFO(adl_p_rpl_pu_steppings) },
> +		{
> +			INTEL_DISPLAY_ALDERLAKE_P_ALDERLAKE_N, "ADL-N",
> +			.pciidlist = adlp_adln_ids,
> +			STEP_INFO(adl_p_adl_n_steppings),
> +		},
> +		{
> +			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_P, "RPL-P",
> +			.pciidlist = adlp_rplp_ids,
> +			STEP_INFO(adl_p_rpl_pu_steppings),
> +		},
> +		{
> +			INTEL_DISPLAY_ALDERLAKE_P_RAPTORLAKE_U, "RPL-U",
> +			.pciidlist = adlp_rplu_ids,
> +			STEP_INFO(adl_p_rpl_pu_steppings),
> +		},
>  		{},
>  	},
>  	.info = &xe_lpd_display,
> @@ -1161,12 +1212,21 @@ static const enum intel_step dg2_g12_steppings[] = {
>  static const struct platform_desc dg2_desc = {
>  	PLATFORM(DG2),
>  	.subplatforms = (const struct subplatform_desc[]) {
> -		{ INTEL_DISPLAY_DG2_G10, "G10", dg2_g10_ids,
> -		  STEP_INFO(dg2_g10_steppings) },
> -		{ INTEL_DISPLAY_DG2_G11, "G11", dg2_g11_ids,
> -		  STEP_INFO(dg2_g11_steppings) },
> -		{ INTEL_DISPLAY_DG2_G12, "G12", dg2_g12_ids,
> -		  STEP_INFO(dg2_g12_steppings) },
> +		{
> +			INTEL_DISPLAY_DG2_G10, "G10",
> +			.pciidlist = dg2_g10_ids,
> +			STEP_INFO(dg2_g10_steppings),
> +		},
> +		{
> +			INTEL_DISPLAY_DG2_G11, "G11",
> +			.pciidlist = dg2_g11_ids,
> +			STEP_INFO(dg2_g11_steppings),
> +		},
> +		{
> +			INTEL_DISPLAY_DG2_G12, "G12",
> +			.pciidlist = dg2_g12_ids,
> +			STEP_INFO(dg2_g12_steppings),
> +		},
>  		{},
>  	},
>  	.info = &xe_hpd_display,
> -- 
> 2.39.5
> 
