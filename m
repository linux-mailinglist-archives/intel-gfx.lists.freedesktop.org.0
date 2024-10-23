Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4B99AD524
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 21:45:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA0F10E219;
	Wed, 23 Oct 2024 19:45:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kM/UuSgE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4862110E1AE;
 Wed, 23 Oct 2024 19:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729712729; x=1761248729;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WnGo5ZYt2A6ssRElWOEazzhiGaWGdCjyjDYRUY3PbVs=;
 b=kM/UuSgEXOgDyifm6NUEoUbLGjMjAVSPvKpEURJ1cJIKTz+7DL3LTEcq
 aBepxaDNh+QDX56Us6Jw9rjpLjDHaPi2nKflHsRllmqu8RNZaWoap4Fbx
 safrCocPV3+jgXluZKkLQPL2Ox0Ll6M/GE1xA4hzYpBJxjhKLTvkF9Dm4
 r8b44U5mufnxG2zM8VyCY4thtXJpiZQA1NHwe3e/5uhjXxqpTrQKJu3jg
 Hr3eZFTJsBNrwgMjrxKmn1tVMeaZDHvg+vD+CrULB3SCzM8/mCTweTrUU
 U8n+6x5xbDIaaP0PZTfVQlmHFkHVhfeJZRevIk9PgK6coN2HSKpejpWG2 A==;
X-CSE-ConnectionGUID: 3U+KBRmMT+qC8pUYG9Pa1w==
X-CSE-MsgGUID: nmGTdG4xRqa65FJ+/tIWSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29539760"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="29539760"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 12:45:29 -0700
X-CSE-ConnectionGUID: sDXb33GEQ/WCUJFnkzGY9g==
X-CSE-MsgGUID: GNsUxwkJQcq5m1l0L+8oPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="85476822"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 12:45:29 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 12:45:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 12:45:28 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 12:45:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k97FL4ZyGbaMtrvlFXKtnu1LzKXaYRhZh++w+J3iQ3um0EsTCdiMiL1d7PaZJIvwHoZhKIFV+wVpU/Bb5QgZKbeOCl1ThJv3C6ugAnz9aqYyNURpSW44OdxTG9TXwsE6kwnCXfFFgEVDVEtokTus+bjEOTj3qjEtB1eHF16fWTLJNYLKTsQ/IsQnh/ocW2JydiZVGkIw4PKPzbMIhozZoYX2FPL3prP2FjNTmE6CNjv6AoIaz9nzT1K6Mj3Nb+lzPZ20kORdR8J8cTpM6vVLP4VpIQNqS3WY0ymdn+XNax3Z34bBYtXbolgdp4WV0xShIg6elgmNhPNOmmA431AWYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UaOytADDnjje0jJ59WJiaKtlk6pACt29twm1WeJhOrw=;
 b=kPB9r7MOaYz/O9FEcHoswGwcmlsapUxnvf2VbXsT8Xy7Y7jWcWU92iZ1YPWTfKEts9XmYystaAbMg7RBi7K+mUe4ZAVYtwkx3PrDM0yl8JS6heqT4AupYz3m0wx3MjBQvYQBALRALKBCdq6NDpsvj3vivptV6IeK3XypNpoHvb5iY7CWUzU5Cm7gCO6yYaH0iVriyyj7NxQR+Fs9cQ6jQHuggCDeveAyedNefuMEqFUWUwcnqQi5wRVEjpdXHwiCtR7RU/24Md0QhDkUeMQl9bD3WeZ2XKedJMBLrVkxcvavxtuX32rXPEOsILIE83HQi4VdI5gmK9gEq20Zn3PDOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Wed, 23 Oct
 2024 19:45:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 19:45:25 +0000
Date: Wed, 23 Oct 2024 12:45:20 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Himal Prasad Ghimiray
 <himal.prasad.ghimiray@intel.com>
Subject: Re: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibility
Message-ID: <20241023194520.GH5725@mdroper-desk1.amr.corp.intel.com>
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <20241022072920.102033-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241022072920.102033-1-suraj.kandpal@intel.com>
X-ClientProxiedBy: BYAPR08CA0014.namprd08.prod.outlook.com
 (2603:10b6:a03:100::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH8PR11MB7990:EE_
X-MS-Office365-Filtering-Correlation-Id: c9d698dc-4c34-4e3c-62ec-08dcf39b3cd5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HKA0VKpTfkZB1VtMvPEllw6RQCGodxMHmixlS6C9AR2yxx2Xh/yWwGp1vTdE?=
 =?us-ascii?Q?Zd8fE8x2Oug3yePLRW3r/+5nz6A1jNn1Q3jvn2WOQUOKJCIJUIY9u0xEi2bG?=
 =?us-ascii?Q?wxefIAydl+IrvBBB5d9u2GMhP1ADmnYHQp3MYwtt+Lkjccmg20zMR/tjTA90?=
 =?us-ascii?Q?R3oSR8Rnc5PL16uFvVgYUhVQeF1jx5KeOsr+T7rUmsr+KuT5WMTj3pq9opSW?=
 =?us-ascii?Q?BPNAUgORTO6XQEj427fUhHR9aWp1z+z2cmRnC3BI6uWHNpNEteCsH2RDTCtn?=
 =?us-ascii?Q?CFWhKO64AayOlWDAnj1/L/VKRph4sC4L3UyQchZ/O06VdNQSZgvkDVxxU1ol?=
 =?us-ascii?Q?w8yHBDQt/+Lbu6XRgkjA+/qlzoYU4SpqqjEDjqgcPG/va1iQUHTGxap90+5G?=
 =?us-ascii?Q?DfGKJIj8zx6N6rht/O8fXc8jTGWShwxaX537O0JJ2g0wIiXUSrAPQDuf3BiP?=
 =?us-ascii?Q?EDp9Ukwh3u01euh0wfEdhvAtFh57F8nmg9XE+aC6G/VZewB1wgeCN5vIfKYe?=
 =?us-ascii?Q?r0gZelWTOifYkwG5k6WzayBzHhk2/K9aXU6L286ziCnlw7ldI5vFKPBVXu/S?=
 =?us-ascii?Q?7lnDDazZ/txvb0uk0zyiPPhjQ65ewIa5I71hfWZAEGIYwbIU9vUF9EdODxeJ?=
 =?us-ascii?Q?E70mEdbyaqBIxzwq7AZhQcrRMgFKmLi2Ub9YQcd/AjuhVbKac7Bpwb5P6ELz?=
 =?us-ascii?Q?PXJe0+9ndFy/J2nONCaGSBBd0yBy1bVHbqUYY5mqHdkH5ZjJuR+BebIaRpyR?=
 =?us-ascii?Q?0EWOA5EkmTdoxMABoXmQJ1KOvywDEstARr1Y2qA0qMB5sIUT4fLz4+FRY6oa?=
 =?us-ascii?Q?HglUd/qyMw7L6l1s7ltYO1n/FYhNy0JkG1Lbop/VoWzfmIAPDMFzzVFT/3ER?=
 =?us-ascii?Q?dVXOjO5Vv+WZVlOjuFRotY3WldmjKc2hil7CpS1I4RRgzsYf7HVl+8BX58qr?=
 =?us-ascii?Q?BDG5GEXgHfhFp9I/1kqY3MQ4FQKApi1VXpejOheuBV/019KPINfa08+u7gFx?=
 =?us-ascii?Q?twBQ/YA+w/GVk5iPaCbE2PBJzipn3WY1nNIEuqgODLcuD1I78HYxHnkoKGwR?=
 =?us-ascii?Q?6tVnYU6xeb4I/Z17Ui0d6dy0N5vhE1tCPYt76+2MMlSJaFtoWg9rgmG2K46D?=
 =?us-ascii?Q?W2vFFSJFkqpnMjCvvJWj526EjePWjOnSlviU4+YpY04wZdB54xYu4e6rTqBZ?=
 =?us-ascii?Q?saj62+nOENSScng9QBj2mrcL8Xs6x4KSQ3HG2ANIv0hYedMwvQcEzXPNAn4M?=
 =?us-ascii?Q?qalLr82vAE2IRxoZVuJ50bl1M4iayodFrF/1+b91d5qWCaHRxbBdhDtHEpmm?=
 =?us-ascii?Q?8LB2ZVmDifGpfc5SfmIYgrrB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kVKs2RiOdBilm5BsVnYPy7o08QwEiAKCVLDVrg1/5cXttDw4aEh/lbbvAH+/?=
 =?us-ascii?Q?VYHaAlcf9fWFVb36DCsgF69JNdk/gsDyoWFNe0OI2usvQHLT/15gXOfBxaLQ?=
 =?us-ascii?Q?0uO8skCf6wt2lDNx0mQiIyBKjRn6ElMwxAUmLh5B0GtbQ83wkJpx9hEfENKk?=
 =?us-ascii?Q?OrV1N0aK4j/Ey9bgBID7dfPm0SjCEATK7YM4g9yxxjDF/ZdLVi3Rzn5K7g9x?=
 =?us-ascii?Q?+/uGsrmiqNoktU6W1fFwpPCzOSAqtlf4ctvDVFYbAuiDEUrvLdrMA0K5QouO?=
 =?us-ascii?Q?Z6COZfVDZ2p9hAmopqlON3hKhfp6/xp6l1LGHhuCxOFMJM6aCQlLX2kfMJtn?=
 =?us-ascii?Q?VsibrioBYfyZC7vOTvMAqME5B8ObbPy5J+VTCaJmomRjJf75j7OA9tOPuFPU?=
 =?us-ascii?Q?KEvGNvzGFqfPNo+yiWq8FR7fuEbuB33C6hVzgMZsUxaz/0KzArdxm/93AZbD?=
 =?us-ascii?Q?VpE1sf4pelCHgxWL6tJMliDFJ8kOJe7OOUPxLVbyGLXtAaPI2/2Th4A3NuCW?=
 =?us-ascii?Q?btJBFl8y8rLN7gzgbWxQQB56vlOv85Ly2zPTF3da5xtPspkkGiHqyvaS1y/a?=
 =?us-ascii?Q?L9LbW1GuXO8RuDaNoq/n1+SnXBoWFOD8UeKFqC7FEun+wuDmdn7R4C7NeKJm?=
 =?us-ascii?Q?6ozAKGyvT+tl9aDmgu/r2dRsZdyp1y110rIjbGVwZ4pLujVjltmfv/PtM8IT?=
 =?us-ascii?Q?YHBm8lfHsnLqpweay8MaOjtZLN54nf3VbyUVZ7c8jVUgqe9QN+PS/8ttuigb?=
 =?us-ascii?Q?kxYq5ZEcyzstFT9wWiu+jaP/tbiTw+kR1OkqsGcfxPym+zR4/Rlei/roGgUp?=
 =?us-ascii?Q?PZfrHmajbsM8lNXC7AdiUrnECrLzqDo5fxcJ9kS1ffZt/K69PoUy/A4dU9vx?=
 =?us-ascii?Q?4rPEBsyXmaD+BecFA5+wo27+2Dy7u2QXRdESzFcQRpOWJ6rCDGmb7Nmizi0f?=
 =?us-ascii?Q?ZyjmKrZRUNbSALGQsVJmC9ZL6/ZzQHVSKfKMgodnf0BQj0zohcbo+aSQZwYN?=
 =?us-ascii?Q?s3LXiSWWjCBTj4Ab/ao7I0vIM0SBfKymvEEcinrOeTdskn8c27oT7qEFnaqp?=
 =?us-ascii?Q?q7uF+z4piqlzT/Avzs3rmpurZVzN9xdzynPfQvCyUaggQCDcXcWzk2bHJonw?=
 =?us-ascii?Q?j/q5FOzoBNZ+7w7AmYRRnQjG1b3osLj7eLkh6DojcDxtwWoRFEu3oWR9fTS+?=
 =?us-ascii?Q?Sxmin43CjZfw6hp27Zhh7qgn4ytaPbSpgj3cAsJcy2WaXhhQ9rH26GpN/iT7?=
 =?us-ascii?Q?5hDGQZ+fuoZpglHyxr6CyIv9/kbBE17w8BazV+i34t6M6IhEYAgxgPx5Pav7?=
 =?us-ascii?Q?6mcBskMDnQKtDj+IQ6DCUJ66SJURy8zP72AlX0qxCnOyNvhu0f8tPdTqOox+?=
 =?us-ascii?Q?R5m3d4gThvIzxewpzmWlsYGFrMy4IeTizsO9u3LizXRjD/0uFqCj4wA66LLt?=
 =?us-ascii?Q?GSFUUxcN+pK2viQxdQSKsf3LESScQVjoPR51vgeVRaLSun6YWXSu1NzX6au7?=
 =?us-ascii?Q?124MhSq0+iI+e5OYlW6BSum0uB3dl3iwPOJlhcA922hTqySEH7W74tFgzQ7I?=
 =?us-ascii?Q?aLi/1pzN/NM33AUWFurzR0OzxWWnkfv19q5WJX24xdqECGOaBW0Ad1/1IIpl?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9d698dc-4c34-4e3c-62ec-08dcf39b3cd5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 19:45:24.7601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1o7PjYcfhKbbf/W+O8Neb2RNU7q/P2O1TPx/eHOboxZ2goY825lLhCJ4b0a4YjvjuHieVxvGxMqsAquwL2j89qL12IAkeHHCfKsqMhCH6T8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

On Tue, Oct 22, 2024 at 12:59:20PM +0530, Suraj Kandpal wrote:
> Add check to remove HDCP2 compatibility from BMG as it does not
> have GSC which ends up causing warning when we try to get reference
> of GSC FW.

Why do you say BMG doesn't have GSC?  I don't see anything in the bspec
indicating it wouldn't have it.

If you're missing the GSC firmware, then we'll disable the engine, but
that's true on any platform.


Matt

> 
> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 4 +++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>  
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>  }
>  
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..efa3441c249c 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -8,6 +8,7 @@
>  #include <linux/delay.h>
>  
>  #include "abi/gsc_command_header_abi.h"
> +#include "i915_drv.h"
>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>  #include "xe_bo.h"
> @@ -32,7 +33,8 @@ struct intel_hdcp_gsc_message {
>  
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>  }
>  
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
