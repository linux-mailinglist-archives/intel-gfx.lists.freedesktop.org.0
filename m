Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DC7870FB4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 23:04:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B21A10F6A3;
	Mon,  4 Mar 2024 22:04:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QN9/EmGJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0792510F6A3;
 Mon,  4 Mar 2024 22:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709589868; x=1741125868;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/y4WyOAfEHVhkk8ahNvXdtDKg4oJ2fAb+tqgFbvO/VA=;
 b=QN9/EmGJBUXRG5ht2MVT9JcK90MND+BN8of5RuNNSVztaGOqQSBthcaR
 7z0oQOZQtNtJJkcP/VWZKa3TlwJ6QQPn6w6omHM8WA0uXvRE/ZW4kiy88
 p++8LNOeXYLTeU+xnOMXh1Q7xqIGwMUeecHUxdlRa5WqrCYwGQivLN4LT
 dZrWrDe2BYdbaLDCeHILZWnkQGxScU8fcB5wnxBn8SoLehgVM5QqyriuF
 YUkRCk30w2kwTCP+HTFCAfg0WxAASxycDVeo0Aq5300qTrGRcDAJnMOXK
 zJ+nCwzmXOIKpx47RbsWsGPSDG7kGBoYSGaPij4kcbf82d6UixLvz3dCe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="15514771"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="15514771"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 14:04:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="13811763"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 14:04:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 14:04:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 14:04:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 14:04:25 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 14:04:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGQ9E/CTxVyFqoEaqjjG57c+ydQw+xSMDFkDBl3YcF6RldvqMhj1/FmE76ypSrPPx9a0pz9S1RlbzUvuMUlVtbKMol0pXUgo1MNb/jQyFYu7ufuQioo8OJtAYW7b6nkmiZNzlwtyHOAiKtHoy2UhJyogfHdRstBXtB5hAAlMtWf59+NJP5Y/HVBemod0+s2X5gm55TvnXL5/EXWtAeHOKwepN7KQIbS1uUZn3P5xw/wvuoBbOBAgdYvQmrmngg33mdHOtQUEMlLycxL+RxxpU3I94k2y2qBYKR7rcqRi/lxbHdugq+9EJfU4MezyPjvuk/iCtkX0NbdEfeDLBlF6KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RMAshArZsel5t6HEGJ/MoP4nuhhnFRQAOYbUUa98RGs=;
 b=XwExjT7mKV+17v2tr7F9FVAYMFXT94CNk7I7t1W9nfMcEn8aZgstnzyvMCO4bXFCUQTCtMd9t2p1a0wLVU5h1gDIp/sqai5gimxkK1rct7abJcldlVvhBDXstOIQJ7HEpX9s6RqwaUCjeHxpgj7LXBeQpS6GqqImapGqNE4TJw7q5N63iNQsp03E165qUwzjBKOepYNwEmRUo+e8lQf/t5W+TMyiZy+KNklh6JM6AZT37GHNfWR/ItDcwJ+5mRb2QrwcEQ/gWR+lLQExAl9suBR+0V32cyOg+SyEcF7HSzKXYrtP9ebaQf54r23zQe8ji9iRASSxg4rBrKGwvxEujQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS7PR11MB5965.namprd11.prod.outlook.com (2603:10b6:8:70::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.22; Mon, 4 Mar
 2024 22:04:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 22:04:22 +0000
Date: Mon, 4 Mar 2024 14:04:19 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, <vinod.govindapillai@intel.com>,
 <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 3/8] drm/i915/cdclk: Only compute squash waveform when
 necessary
Message-ID: <20240304220419.GT5347@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-4-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-4-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR07CA0029.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::42) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS7PR11MB5965:EE_
X-MS-Office365-Filtering-Correlation-Id: 12142fe4-1411-4fe2-db08-08dc3c970c56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9meIFy5RwnXyIcxsyXbIG5ZBf95S7FHb8VP6MboqPysnH2rEeRXh/5/GwCBw4M3Q3kpWJjJ+OMLBCQgaQ1ryozkf+uRrO2CnXLQ+HVt8WUpUA7hWuZoqbd8UQj8ehMoZmH2kWXhftzmgqgLEpR35FAqA2ypNunB2xfbK3gRNXAQJe0SkwOdK70+rkGHXjmdl1QikNaElf1kkS0BSQUV0dn6Vro82i9G9iSBi5xvBGr/B1JpJ1c9XCUcJm2qLnCy6HjxQWR65bJ9ehlpCxQgynNYHPq8V0yn8VW888jCZX0gJ7wgNU/h/IoFmS+Dh1YyiuBnpbJV6E7LvuXrcoo/ynYw/3YKySMPdPndaW3RB4qGkLR4KUtrvKIx5P3Pe7oYv90nfxnyc0okjsQWodhhD8z6jeqRa2kxmUVOM42TemcNlxf2KfOL0bZm+s6dbR3ps9ND5mzzv5Ngvc4I7+Fc/osRTW79yb8X568YmvVjlq91/IgBjnf6aaEQkSAaPIF5zKl/slussmYRYc4Bbaqj+AVca5L3wwcEFuJ0+3BWVaNfN4iMCHrhHnVbNU8uQmROSRf65LAwBC00wNw6ZDmyAi/JxUHb4isSO7VGfjJfmJPjHuva/eirfPZVKfDQgEy/L3qn2el6LeLi0yoX4/rsxY/qDQqGBNSyeXmN1oOSuFko=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N3X5zq07ZCuFGNWRFYG6pF+/P3KTuj9pVvDrIjiYl6pTqdS8TQrMq64r+09J?=
 =?us-ascii?Q?gFfwjXAV98OzwBKPJTHfUwtO3hOpoHyNuudUzFeofjB+/t+MQ/xEUx+5eSg7?=
 =?us-ascii?Q?ig1MWQypoVZOv4OlddnifR4p+NJ0lxwEny/BHaN4EzCUkAfQpf/8R22AhATq?=
 =?us-ascii?Q?F1Z1/zbN6zMNhcUdXWFF7at0yUZeIwt9DQqS7IkSBY8Qewu2qfN9tG1TAJtS?=
 =?us-ascii?Q?T4TzztG/jf4yp9Ow0TNlF9NLRlHczKLt6W0PWnW5AKUwqJGRFusLgKar0ngu?=
 =?us-ascii?Q?IE9fjjwccj2CmalmZOhVwJILdkIqUvPJCpEaR6cZvZzVlHwPu9EnMBbkmUs3?=
 =?us-ascii?Q?Rz47aZ41xKD57wNRdsL8uHx6n9mWJdkMXtjmb5dqNp/P0MOAIp3Qsc3WIw9x?=
 =?us-ascii?Q?sRzGtaAr7IwkePK0etnaKJn9S0z0eVaihUb7kQd0dpHzUKcRLf6z+IHv1AmB?=
 =?us-ascii?Q?DtivDbLSG62XJyQMaNZ1f1CCM2ocjPHa4Fc9MZ0Cjfzu9I/Qg6PnBxJhftZA?=
 =?us-ascii?Q?Fc1I9O6oKzlbQAKXL7MlyUEkCfGqeUs7LpozMFRxF+Bdtf5VkX5Z5RlwPQXH?=
 =?us-ascii?Q?jl4VQScVFJ5XV17zE2BXOJL2Uxost35xCLnlfKSa5omiRCNZaxZZXE4xzkYN?=
 =?us-ascii?Q?j9ckQbzHWobbPsLKyhn4SrTriOP/VsyrVRIqGU/RNvJ9SrpH9cmQVmugr5GY?=
 =?us-ascii?Q?fBtM25hnA0HOLTKhf6Pe4dmEEA+SESYjzsi7lTFKPIwfmFw4Xb5xi9lPn4U5?=
 =?us-ascii?Q?IWPt3U3Vxy4wySRoGK+tDiJsCbzy4F+k3Xwmc+bxKvIzvkP1P3X8ng5pTolt?=
 =?us-ascii?Q?d1gOGUVpQi9xcKMTXAZ1ySAoI9EH9s+Rp3GDhd3ulIDyQ6eUuVyxyasHB5Dm?=
 =?us-ascii?Q?LD/PToKzCuu7RMOsCq0nzcr5qMYIjSj5vte/A9Ym5q1e3IIHfyQMnz44ixFY?=
 =?us-ascii?Q?jr6eW8XMIbas5ULRwXaAD+nAvezOyfBwk9iao6/i+B1Gnf1wJaj0cTyl/dre?=
 =?us-ascii?Q?hnE7k6Q8wksqlD60DuWzriurRZof7aXScYkIqbpmBWtGgG5lOLVkXtO7fCOG?=
 =?us-ascii?Q?MPn/nzHXcQEgVvffATLPJjw5PEU75qaEYFXBzFu/xj2VncediU6o3tbSqSwf?=
 =?us-ascii?Q?SI9YCOVoIWbGn9wVoAluceWeruS+X0hBAdDHP+RtY57StTLNWWYRV5wgtzfa?=
 =?us-ascii?Q?lfBkEYD4mar5ZJkiAg8AbYkmKjBUYVYoMjOG+1degk+1iQxGftV+NV6cFMm4?=
 =?us-ascii?Q?ylpt0HlVXAiTnGew+9tvrWifCsrGoa6dhzfiUoJzY1aFXNZuLss20sgmROVK?=
 =?us-ascii?Q?LU0jgyk5cnpLdAK9U2bS3Zqq1vblSeNmPYwUG24fHLN8vUkqMIrq8z4hzwwI?=
 =?us-ascii?Q?ss5PpsWaK2WOUCwMZVBqpwIHA2dK3o0sqbVaZ3huphkjf5L6jAWVNgU5olw4?=
 =?us-ascii?Q?wOJApBTXchjPA1tHVn4DadqUpOuCAccKR7/H8EtU7bqybxcnPz8F+u+b2V1o?=
 =?us-ascii?Q?leZh2MVdNnXiRdR8v28O/mSZbqH9rU7/MLTgnlHp+SrFujeq/0BeRRQYpHVG?=
 =?us-ascii?Q?4SnX0xTx4UxS45LAPVi8mDLrP75ZoXBHZ8myFf6un77WXlJsMZHnZ22obhYz?=
 =?us-ascii?Q?cA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 12142fe4-1411-4fe2-db08-08dc3c970c56
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 22:04:22.5955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZmUTLJRqm+pi3KKOJ3kpr5XMXb4j10idS6dXY/aMVbSGnSMkhFLuJIt1fdvCr/i+h9ekJOm3zVwK7akxXAyRrwuNYmopIlnJXVX1g2saXXo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5965
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

On Mon, Mar 04, 2024 at 03:30:22PM -0300, Gustavo Sousa wrote:
> It is no use computing the squash waveform if we are not going to use
> it. Move the call to cdclk_squash_waveform() inside the block guarded by
> HAS_CDCLK_SQUASH(dev_priv).
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

You could also move the 'u32 waveform' declaration from the top of the
function inside the block too to help prevent any future mistakes of
using it unitialized.

Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index bf84bf27213f..cdf3ae766f9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2023,10 +2023,11 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	} else
>  		bxt_cdclk_pll_update(dev_priv, vco);
>  
> -	waveform = cdclk_squash_waveform(dev_priv, cdclk);
> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
> +		waveform = cdclk_squash_waveform(dev_priv, cdclk);
>  
> -	if (HAS_CDCLK_SQUASH(dev_priv))
>  		dg2_cdclk_squash_program(dev_priv, waveform);
> +	}
>  
>  	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
>  
> -- 
> 2.44.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
