Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBEBCB8AA1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 12:09:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78D2E10E325;
	Fri, 12 Dec 2025 11:09:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iygGD0BR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D732910E325;
 Fri, 12 Dec 2025 11:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765537782; x=1797073782;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Qoz8wPk+op8qxsHkXKIBlZQYVslTSnJvxz9FYOfEJWk=;
 b=iygGD0BRuSKX0sLIJieyll3hL8cS2cKvWjIjjr711iwMzOxlX6dHLEFV
 /5fyTDskH6o36fXbdMtuHYV/kyLIH4Jwsoko9RLQy/64gOCWzkK1sr8gO
 nNVRRJWGy8WADkKFcFz8F/PyOGzJI9JD11TZHXruWtCQ/7P5fgjl5Np0z
 tsBAREvRemmnJ3e6ez0Zq0vHggXKzMDiiPXOrfxl+GgWn2hBcVDiRApDc
 hpOOJ8gtOMzrmUy224dh8mhWf2K+bV2EjclNCJJo4aTR2Szd3thFtexv7
 qwsnNNKe82YbWtvS8z+uSL9WXDU1PNHhPxS54ytoi24Kts6iFKbA4ndge Q==;
X-CSE-ConnectionGUID: VHvT+EqyQUGN/EdAoybv+g==
X-CSE-MsgGUID: kRU2P5nRSPyyiNE7VvjsAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="78906919"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="78906919"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:09:42 -0800
X-CSE-ConnectionGUID: 9ZCo21ToTXeXyyDAZpOiIg==
X-CSE-MsgGUID: orElJkEBS0+sZTEG9bbAXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="196663840"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:09:42 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:09:42 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 03:09:42 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 03:09:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rM/Ys5+DTHsCXT2Uf+gcl4/HZZCoQj+botWcKue5TQw0g5GfX+XC5BtpzrOOFrD2CbUBWrTPXPtT/4iag3XZs1EZq3tqbOnn/TuvxMvTQN92J0IWOH2EwA9XHw5sKSUb7VPbhU+1KHDrZGIdgjAo5Z/k3nIrdf1KT5Zzdueekfk/9foEogkPYDEX+L+ZcH6H/fslP16sj2neJ4JR/SxGXlQ98X6nJw+FB4E8ErwsUum6ywnEACGjBPp9Dc2VxZ+2LMqp77xRS9Enzv+qRzZHpfkK5vNX0ioqccOUtUqQ74PnnriiTamsilBvd+CYPPuUQpOnvsY4k8+k02K6kuFngw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKzvK+EZRiNOVxts2l2AyCj9xvN0BOqyvthfCNn5/E4=;
 b=WGNu9hnOMhBMwOxtM4LPIgtbxNAWiroX0oVbG/M2jujZR/hN4JiGHk2JriuLuZntvebGAxtuGwIOQKjj6Jf/jpQMCFo6iSuiMRGQEXkHei5sucNp5AltKdkJthWX5SQ9sBBixaf81ezJ8pS3YWCo40kvwQTJ8eTaBPogbcAKCw4fkKR3nWHw+IGslOxWNxYodmvhVV06rDXiaBH+v5z1AKJHazzBmvN/jSouefjY9vB9IUBzAy5Xjyzx1WKpS2yK9tV4+ifIMA9vviBr1cS+uOIBr66jblReF1yvZpQtkF+MbnlS8vizcklk8RpMeUIjKSQHCvRVL66dP/lRskvxqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB6752.namprd11.prod.outlook.com (2603:10b6:806:264::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 11:09:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 11:09:33 +0000
Date: Fri, 12 Dec 2025 13:09:28 +0200
From: Imre Deak <imre.deak@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 21/50] drm/i915/dp: Align min/max compressed BPPs when
 calculating BPP limits
Message-ID: <aTv36MAzYmtkvCNM@ideak-desk>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-22-imre.deak@intel.com>
 <7a0168cf31e6ce73aaf6d43b85ab22c0608467ca.camel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <7a0168cf31e6ce73aaf6d43b85ab22c0608467ca.camel@intel.com>
X-ClientProxiedBy: LO0P265CA0002.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB6752:EE_
X-MS-Office365-Filtering-Correlation-Id: 37d62712-e65d-4f4b-ae5a-08de396eedad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ey3J6+LwUhjx2sLzMHvTIs69i+nS0vkscUOMOnbBRcJXDy6JgLPK/PbjfavI?=
 =?us-ascii?Q?NU3CM81qLdAW5oMYubT467+8goVFH6HBX/Bp7vYKwjwjmeAwGwwflFJi1BV3?=
 =?us-ascii?Q?mjTrNj2qNxomtqAo3wx343XvVrxXPaNQDXq0LdWd4MD2JAZVig1wgIBpP2+H?=
 =?us-ascii?Q?p03o35DjwbiG/tFwvZ40TblLaPtzxETuWzmyHWd0eguHE6rLIaK+HAWU1rR8?=
 =?us-ascii?Q?Ah2+7lR9mbY9muJidXrre5nJNpDWppQn1UwYf+kfjIAx8+RF3+rMWNd8Vjdq?=
 =?us-ascii?Q?NVFsvS65VCwMUJITVqSsXYNsOojP5nOIa3nXBaIcpWacfmLECbrkLO5/tR+6?=
 =?us-ascii?Q?RP9vabge2cczV2wsQ+mCNtzy1zY6j2ycyptG9TcTHWAyMQataoOdJsw4AU+T?=
 =?us-ascii?Q?VCRMBC/9ABne/os9vKt+08v+4r11i9saHj3kJhhs8aqqHHgXBWqzizhmYqAw?=
 =?us-ascii?Q?cFSfg/8/s+WLxL6sRb2ndHUcuLOOl/H1+F5HiDMnI8s/5h587C/QdVZZI7t3?=
 =?us-ascii?Q?5YLM3dsYB+NfJAiN8xAgb7tXu6ub/UMybyt1nDb0HpZy8f1L3Oj2NXNgMX6F?=
 =?us-ascii?Q?FqTIqabBUVie6zgFZqwC1LKEj6m4yS0PZwzacl94zfKbkoTFT9+zV7G8nIOy?=
 =?us-ascii?Q?0EMAIW1C7i5Wjr/jymA55Z+pWR0FF8N0P43b8zUoNTlYL7uvNrHpU0i89Ito?=
 =?us-ascii?Q?2yGwH/AAXfcjuirkBmbl5SsZWcM8fUXtAjcaTauYd6f8ahQVc4/xjYCBZvi7?=
 =?us-ascii?Q?pGpe2H7N4+uWTgxGuXCNMkd/52kKkddw1zGSr0KTATkbdBddMTE36hIQGymO?=
 =?us-ascii?Q?MKQl6WeMFWQKFKu25rWHQqrIxVIBdu2dD8Qz7yscrmifjBnN5zCKVZBbfxme?=
 =?us-ascii?Q?1cnb95nErciHOONqEhr9gI8sgSFkJn0CiebGH4heYHtX3ZNpNQNgR5UzwwRZ?=
 =?us-ascii?Q?ZofrY/6zqUeIUn3Bk6kfs1ktJMZYlb26FYrpiyWhgnXcQ1RrcgxOMJY2zUr/?=
 =?us-ascii?Q?MMuBgq0AoBnOinkPmMItc1wdESAOxZGHjloec2ZjnQvtgX4Kd4zdoEJT5V1g?=
 =?us-ascii?Q?VQrwF6PgxQDI1pPtK91axerkApOMEyYKFgBih0ksBka4+fJXzlOujPbf9DdD?=
 =?us-ascii?Q?gmJuoqA3mB83+X2ams769uEbcA+u1waQH/bENtZxNKmlKo/UoBWI28nDY3kP?=
 =?us-ascii?Q?sXelNu/M8ttKqIDktgoPrW5mTtvuSrSKcqbbgGZgew6PX2NATgqi43Re4SBv?=
 =?us-ascii?Q?fHL59SUmTaEU+Q/ujNOzujjkTTv0S/OtGIofcpel5amPqHNU3FvTeMC+FCtl?=
 =?us-ascii?Q?RAEILq2nkyzg335ywqIqlEhWMIgi9L5Fd63TRdGYv8PoR24Mun0RgZCn++s6?=
 =?us-ascii?Q?Vo2HacD6f28ZWtmiOCzp5N+45Sw8/KZJH1IEmGk2jzucNcoaQS0+dnmmpT/W?=
 =?us-ascii?Q?orzwRvwbZfxF931JO4i3UCPLcVOXOvT6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PLBMfFRCJdFgK7idgt4vp04Bp6Z1UBSt8GBKSkjpFTlCg5nxbEhowFKeLguw?=
 =?us-ascii?Q?W8BcngDULk4+mt/b6ZfS8ofmt484LMxr/6dQTwTZm5j2M0QCok9CS/9G4OCa?=
 =?us-ascii?Q?QFGkHmuXBNJNu86ycgV98Dfj11TRDs80c9WTyuUqhG3zqlW0xIlQyYcdlqT+?=
 =?us-ascii?Q?Yv7i8Lnq+IGE9KHavdD4uqdwczU2LpQydp2eIOd+8Zaa81HOgsCTXwARWikb?=
 =?us-ascii?Q?zWvSOYOhUJbMib6y7GidQiwdPUVokGbGNM7wSVg6fl/A9n0mTzRouqwQX8RR?=
 =?us-ascii?Q?JMJxL2UPnHVuamkDwRz21iEBdYGsVByxQr/Nl8VdH9H/Dtyk68Ur9Vk6DJxc?=
 =?us-ascii?Q?AwUdYCzrLpt/4k26rLWL8C6l6lhE4RbN0oGsdd2/tQPx0qKMC3uOXx9ub8lf?=
 =?us-ascii?Q?oOy6HySV/eqxbg7ic+3+ORV5kD3qNvtvBfo6oHwFoQIjBrhMSoXqX93nv6ju?=
 =?us-ascii?Q?vpab4xUmbpWmp6a5oV+/73qCMU8LNvcu1gioL5T96ax30iJe8mwl9PYRqXKc?=
 =?us-ascii?Q?VubHCmA+bYdk4eRvYmThbJGqPe1gYv7QE1TuYaNdlh+XxiKbQ7CX9Hy2kz0b?=
 =?us-ascii?Q?kdeVXlQPDNwzja1iOjzw+VvK+CfKK0W8/4131K5x90g8NizS0cVtu3Armt71?=
 =?us-ascii?Q?l3DYlI9WkLq0iKXPONguR5IHyIj9YOYGLUXppZ0WwcGVY/zm+xkhCEUtXp7X?=
 =?us-ascii?Q?lfySqYxWLiu/pM3p5luX67tuVQ6qzctYIQa/DRAQvSNkLTGMcB5cD/v6B66+?=
 =?us-ascii?Q?A43rR7FyFbTRiinebg8vsm1fxut1ZurMFgVK88DlPS8DALJaemDapEia6Svc?=
 =?us-ascii?Q?OAn77EEh63aamq+xNdnZhNABmBPPFPySibPovzEiB0ahUQF044BNk3fIPavR?=
 =?us-ascii?Q?VLHCdN7LuP/Vea4Wb8nBwaPpD1r6O/WujeQA1wLH1XZnVB5iDgnHzxzdqQlg?=
 =?us-ascii?Q?Jk0cZ//1bDB2NnA4lRgWRzkNxEQaJ6u+yBhEVc9MjtV0mXgaW4Hsmcrj2JUl?=
 =?us-ascii?Q?hpfce1KwDJv8zDCClm5BHr0QJyvibXs3RxGRZwrs0VTH+/b89SWD7ceP/0Mn?=
 =?us-ascii?Q?CNZzYHCkgZBcQnvguuzMmedjbxRoijbIxqgOgc7Q8ni5YZ7rj/yGDYuBxOaC?=
 =?us-ascii?Q?Srwqjs/OFTMBX3j/ahFzxkC6z+UbGhqaIknn8kmzpPITzBsXTLQ9zWh8GVPE?=
 =?us-ascii?Q?CMgDouvXEARdwos1LmuDByLmaz8d8YfaFTk/Mzqnw9xv6si/mDWLGZH4EWFr?=
 =?us-ascii?Q?+IgRcnpHr/3HNv+sU82gzkIDG5I9UHhB7i9pIvWPGDjqt8ajw2aUJ0lR/61K?=
 =?us-ascii?Q?Ydt/9HrxWTw49PlRxyMQj6cYDFfhiuXJj515DGD8imdh1HX4QzQTFMNNwKS3?=
 =?us-ascii?Q?/ua1idOu1JZviJY1qsrHKT17wrXyFI7otLALD+/s1+0mL8/8BOiXaTKvenpQ?=
 =?us-ascii?Q?ArXPvSWdRow7cPcvRkgX52pwd/5gO3uF6uE02haFeWKOveNorawvul1CsdRH?=
 =?us-ascii?Q?Tg7HE+9agSzWIkkBERc73fFKUzpHx2xrKXCh+JEttw2ZBJ79VLE46hHLk/Tg?=
 =?us-ascii?Q?X2IL1G0TQHtbuO2MdiODVgI9CU3mEc2kvkRzPG46TvCVS0qQwCzujRr1nUJl?=
 =?us-ascii?Q?mCBy3s3WghDvJLLa2f56LW8/wKeWAHFoxpQbeOockAc1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37d62712-e65d-4f4b-ae5a-08de396eedad
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 11:09:33.1502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 36Z7rdrNykSkgr/RCdEdMPSN+EPSx3xiZHShgWN5jRR2fQsNLLGnMW3RObvsqF/234apqYB2v/5lXgDud5xe3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6752
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

On Fri, Dec 12, 2025 at 11:17:52AM +0200, Vinod Govindapillai wrote:
> [...]
> > +
> > +static int align_max_compressed_bpp_x16(const struct intel_connector *connector,
> > +					enum intel_output_format output_format,
> > +					int pipe_bpp, int max_bpp_x16)
> > +{
> > +	struct intel_display *display = to_intel_display(connector);
> > +	int link_bpp_x16 = intel_dp_output_format_link_bpp_x16(output_format, pipe_bpp);
> > +	int bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
> > +
> > +	max_bpp_x16 = min(max_bpp_x16, link_bpp_x16 - bpp_step_x16);
> > +
> > +	if (DISPLAY_VER(display) >= 13) {
> > +		drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
> > +
> > +		return round_down(max_bpp_x16, bpp_step_x16);
> > +	} else {
> > +		return align_max_vesa_compressed_bpp_x16(max_bpp_x16);
> > +	}
> 
> well.. return align_max_vesa_compressed_bpp_x16(...) could be placed
> without "else loop" as well here and above. 

I'm not aware of a rule saying not to use an else in this case. Imo
here using en else is the more readable form.

> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> > +}
