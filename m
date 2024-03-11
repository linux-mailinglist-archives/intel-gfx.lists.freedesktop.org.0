Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 818EE8783C0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 16:33:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11CFF112B1A;
	Mon, 11 Mar 2024 15:33:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXA2JuKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CFE8112B1A
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 15:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710171211; x=1741707211;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mzs4nR+xVnuuJ4JNZggebqzet+dlQg5lEAfCq047qlU=;
 b=CXA2JuKY2ZyGVHDEzXFbrXzjqvuyPW2WLFI0d7sAv0qSdJQMnap4Gf4i
 YYVLdSTI2+LcJ/SyKOKF0M+2WrqslXmQLuMwofZbltroWwcNSKUDToKgx
 x6ijYSfzE4mmiqHqgSkX1s1xQ6MouuG89wQKijq9Eeq1647ZLlbHZxcgL
 sS/eR9NKkYGZbkZymqlJk51jvlS6WpDdYf6xeYB9z9M5sIAbUANndpZUq
 SkPp3zcIY22OR/4Didta+aj/Q/NFmWML5ZDLNReuHLRMEJ3nNeobnhV+i
 SwAaCXgy9WpvBo38X2hGaldXaN99BTUxNWnyJ8P2Jpqu9a3/a8WKrI0j/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="4965707"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="4965707"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 08:33:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11278032"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 08:33:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 08:33:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 08:33:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 08:33:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKkWfKfLs4UTJLb65kUZXwO1FT/95tsYXKzn/pZSQlgl8hLCXzFW0//qYomc8wuwxC0y6Gi2L+kuX7uaLAGVGalkyTSmR1LYyZW1yRqCieemntKrndtGpMyZMyAOdbzmnwYtphXiRZuvQlgIFv4PvPNlklQnE8nJyxrw86eiiTk8aVkW3StiVAUWICzpqiaj+bY3yJHWgr4d+Hf6X663XTCVqn6zgwvuzyjxaTp6Sy8OPFlJOR3/GUuwSxLK2MGLiYN87oHv4vTNcLvpj2wsGOzY53BWY9pUssFEY0DzwGo+FLQFVDJGQGL7ZU5sdjTkZH+jWeWkqO5BURuKH03yuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mzs4nR+xVnuuJ4JNZggebqzet+dlQg5lEAfCq047qlU=;
 b=kDk5WfDJLWOXbXWLIF6HC5sHnEC0mAXA//iFHb9tRjyp4RyCUr4Lx0BQQ86PPeS/Vv9crv8UHEYEUUjp8a/itTtJx+Hc0JLTxLmkEeOMkevHrWy6UKcyfoPPndTD4kBeYHtHttqDZMJiUENFYAzziVSP6VRlZvy/pzxhauzu43MXcj90oHI2gMCt1IoeO2y+orQcpWAcjZJU1g7tvjDAEaUfAaSCUrswzSBIQqIwGzHuZGxWucN7z+PA8Gxi0a70sYR9W4/1FEEk274gW7VrJ5lNCKPv7rcOwLDGemnEGeIBIabhnt8rRojtTGZAqCJUy7TCuZ1ZxXa/Ea/o4K9CEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CYYPR11MB8359.namprd11.prod.outlook.com (2603:10b6:930:ca::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.15; Mon, 11 Mar
 2024 15:33:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 15:33:26 +0000
Date: Mon, 11 Mar 2024 10:33:24 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Mateusz Jablonski
 <mateusz.jablonski@intel.com>, Michal Mrozek <michal.mrozek@intel.com>
Subject: Re: [PATCH] drm/i915: Drop WA 16015675438
Message-ID: <2ohqtchwss4chaslzb3fon3zhzmeu6lcgrpbbuuimipp6huz7b@74y53cukgirj>
References: <20240306144723.1826977-1-lucas.demarchi@intel.com>
 <Ze8bQQoJStxPn8j7@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <Ze8bQQoJStxPn8j7@intel.com>
X-ClientProxiedBy: SJ0PR03CA0152.namprd03.prod.outlook.com
 (2603:10b6:a03:338::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CYYPR11MB8359:EE_
X-MS-Office365-Filtering-Correlation-Id: 9674c635-85b8-4f34-3846-08dc41e09839
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SX/veOvsUTS9RMr+AHCHyJ4/aFS7f2CcauGVw+krLxIUKuGnTml8rnD3WQS7todTwTq+t7/6J4KWrJ7zrjRzNsaUJctFmPrELBkPcknoT8ZcyQ17rb8APrPoSibwlmM3GjGL0MZk1oee8H0JuBFlP5v1pzFYo6vrwhuykHM4ieJ2KfUjcF4dS8sw5TgbkWYZy4+/liAiqogOXYNdFdVQUv6vLGs5N5i63GqL8ewW0R+VFSjuGDWvG1hb8G0uRAu2LpOovFXYK4pV1s5ss+WY4jV4TxeEOS3Og+mBPl66muYjP9voYNvuCCjDBMj/QCQm14hX4inytFuypcY4H87YnVQDM3DMZKE4YrmJHMjwejVgIPkGcQAvMugrQu9uC453PRhuqraRPpXxB/km9rB78TyBO4sE5R/GqUbed68EHplqNOpzRg7tqOFxYLj03tZj8m3A1OmtGcfNC8+svfXfIxW/d9agsU1G/wlEKybp2fQBV9eoIMWxGvDJCN/HY04Ri5qS8UP/1HtIsRsQVI0pVj0Jv+UcASDtzHlQ/5cPHoINwR302f4eqQFrWd0ATLkyLce32mNJBHx9IOzqvEA/+cUsJevMkf+PEFw5E0aMDbFfQJqvji4mDp07/d+KjRMrfl+DSyGOEhqqtyAGndLFh0kb8d03GB5a7p2FPmFNxOo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/HfA5mqytbDgXPKNP829AnMTyrZu+rxyhwwkuLWQ8Vtq0oMfS0on8KtRyXzo?=
 =?us-ascii?Q?RJeC3DdbK/0g6rtGLiPlrtVewB5gp09EqF/hoad4UXRlu63VZl7uzTLY93bm?=
 =?us-ascii?Q?C4x65x/VUo2nnmUtSt0ZShxTlYQqKVN2VGRbEtb2LABRvht4HSILtC/R+08W?=
 =?us-ascii?Q?pFjX2G5lEGo9iJyucLZzjYt+YSjjRo1QzO33IAIXdLemQJNYNEDUfZp2IwRl?=
 =?us-ascii?Q?zr6Sp14T2vq9eSP4W3hkEe8b2kafYSwsMQ6cv2Hh+26FnX2I68F7Fcd7Fo85?=
 =?us-ascii?Q?WMvjZGJuKsBuS06HiCa0BrODvZMtxNm01OeqiYulIkOurRXsNT22DAd2qEnM?=
 =?us-ascii?Q?b05wyQNDvOOwxmZivz7UzdL5WFjEHEWgAGE6jGmRQXcEk8OXx9RNj6GaPXIk?=
 =?us-ascii?Q?rD4DnheAzgPQjnGTpJOSiq0dbZuv3ceHteCe0QYO247EljNZ7XSsjNQJcu2G?=
 =?us-ascii?Q?LP881HAAN2L1HZWhpcQY72Kg/gmD8D2a1SeggJHUcFQfhOKxubofIEiG0M/5?=
 =?us-ascii?Q?4fEXdszyie2oWe7jF+MmSoaMp6M6PPqM7kgSvhNjLX88a15rKGgNkBERSRDI?=
 =?us-ascii?Q?wmuSN/utQT/ncxb+eCRQG/uWFRTSY5SOF5mRXMfSYwKN5kfj+m5OAU1AGd0W?=
 =?us-ascii?Q?R1OSAXb3YppsMElPnYDkwBZJ6DHw/eChjOvZQX6mDGYEaCPauVvQys0cNdBA?=
 =?us-ascii?Q?TqLBlF4kWel//LGNo0Ymhk3v8iokxRw2owFZcepy7U9xy7KKCdDzxt3IeDzo?=
 =?us-ascii?Q?5JyKqc4nKiMpgS2wRUMSLGNjvV0Sm7iaJddqJb3Ok0K+sCVZaMgwvomEoVjp?=
 =?us-ascii?Q?mqXWVeEv85diPB9DGqD3lT74fQownGH7YBz2lvs0auPRYVqa5yekzsgqwK/G?=
 =?us-ascii?Q?djWmZVJRjfxE6x3O2VOcIqXhvu4lMW/Vff6ijn+jOJIkwNTc2KHQBwRfoYGo?=
 =?us-ascii?Q?eKANo4QdAa8TkUcTAq4NhoKak5J5K3arnnbSrVVizoPP8x6Rhak+Emycz8F7?=
 =?us-ascii?Q?Y51RReOIDzzTtfCNvMdDYOzITO415rej27Kntxrt4fACCP2RUwA58r9ctkrl?=
 =?us-ascii?Q?1DxfIWT7lyDx02Q9PUVEKsjTiq+XxeIIk/bYX7lURq8un5p6K5ZucEQtNoaN?=
 =?us-ascii?Q?x+sZETRG5jFePS8B1DId/TbAZo4MkEpepA/ghiulyUphNDzejLn6pdv727zK?=
 =?us-ascii?Q?PKd//F0lLrKNGdDsI/uKw2JsF58TZoXd+2PFoe2encgU83G9WPM251SO38oT?=
 =?us-ascii?Q?vJAmUlH5gThcEmaTVUbhLxDEP54oKEPFXgAz9jOZU7cQtnFareGvztgKkhcz?=
 =?us-ascii?Q?Y6KKI+nBPozcKX2roSfR8MQ9B4U2skv2imXs6JcN6Rs2D7yUWHSD3BXuwDFH?=
 =?us-ascii?Q?HNKgE1wjMW6p7XQO8QsaVfveTcTcP0hWGiSMDIUZ2mhAc1ZGbnH9xxAH+1M+?=
 =?us-ascii?Q?qO/0q0TDn07pgmG/Nw7a3lapM1dns7rmw/qAmKbxrX+JcHacUwaWRCUjhzCR?=
 =?us-ascii?Q?f8Rjka9eSc6UEPHoSkR9LVuz31w3L19WuTWvsVRDUgpkjQuXWf3ygcxc13K5?=
 =?us-ascii?Q?aLAB22zRQC0OIvpMBCZtHFxdUGfmeYz94JprwI5SX4oudp+NMrBbr+jQp4CW?=
 =?us-ascii?Q?cA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9674c635-85b8-4f34-3846-08dc41e09839
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 15:33:26.3248 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MFVueDrr83PS8d0oGFowPkyrMOJI9v5xNvkH6Fdu67U3UWKrNJCAwxTLLmchyGcfzVvubcTZwwIpdpCqo25OHdAGpzG88XnB5T8uHWjuSJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8359
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

On Mon, Mar 11, 2024 at 10:54:57AM -0400, Rodrigo Vivi wrote:
>On Wed, Mar 06, 2024 at 06:43:39AM -0800, Lucas De Marchi wrote:
>> With dynamic load-balancing disabled on the compute side, there's no
>> reason left to enable WA 16015675438. Drop it from both PVC and DG2.
>> Note that this can be done because now the driver always set a fixed
>> partition of EUs during initialization via the ccs_mode configuration.
>>
>> The flag to GuC is still needed because of 18020744125, so update
>> the comment accordingly.
>>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Acked-by: Mateusz Jablonski <mateusz.jablonski@intel.com>
>> Acked-by: Michal Mrozek <michal.mrozek@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

applied to drm-intel-gt-next, thanks.

Lucas De Marchi
