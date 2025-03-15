Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06541A6236E
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Mar 2025 01:51:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDAFF10E22B;
	Sat, 15 Mar 2025 00:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YmqhTi8o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0364310E22B
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Mar 2025 00:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741999882; x=1773535882;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=wKf0h+WN+vPOOcFyjqpDd86tcfRpAFTY6CnAXb2xg+o=;
 b=YmqhTi8oyJaKAFkPoFdE7zSRmzYClTNdGYrswKT5u9ca3sYaLUMWq0o0
 iRkkPCkAJassDQuImhZi5gRhuAkEjeAqgPMH+qHAgX1Kt+11vyHT8DqOR
 V6XYTxDRiE7PQquCfAhN9D5/qVHblZ1hf1hqnVCa96qRZoOSGX26qSbZK
 84bOF7flMeDbMhUaZLYCcRPKRzSbmb1MAxdelyO2GppDNeYTY5ha+qycJ
 F4V6cR8s2keDnjUz66qcYlo0Boo3bQYFUOtrQZGCtPwXYF40nay+OQJ7P
 hi3cFeDyNVHR05UXiz/TyXWmnumju0tzJovUgtZ6FevqKNFrLtDMIMBOD g==;
X-CSE-ConnectionGUID: ccw/ZWXpRCmas36DcASr4g==
X-CSE-MsgGUID: pvdlRRymSk66TDc+amr/Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60563965"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60563965"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 17:51:21 -0700
X-CSE-ConnectionGUID: ddtDVswlRl+muOURU6s8ew==
X-CSE-MsgGUID: FyxKLu6VTPCMtGEQNadgwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126483929"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 17:51:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 17:51:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 17:51:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 17:51:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1gsa25TFwsZKyXvgUTRe/VrozO6MiyzyrPpz2Hm21oXMIDK8X5tgEQbk3qiKLV1jlnEBxhLig2FLTQu14YCLOGaOxaBqx2J2vK1lrrgNYPiqNod74O8+Y8SI7U2Ee+uzJ/HKiPW3Kc6gqhR8pWXXhEdYn258Fu85NmGLGcrGygxJwSGufgU97gb/Z95yWj5bYk5nZ+RK1YZiipl7MlENF+Vn9sGbkIojqsgHE8ED/2w8rrpJjnOwraAbYgiMq7g1srygKcbCHgyrQGL/8G88tBZsq/w3Ty2QjAUzSReW0rZ3c/SNeK4Vuo0twxIFNhfZnY5wrZEGo7hriKKmUV8hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y4a32fHuqEfSW+ZqRJu08hIX8X9oxmEdbolL6qvBIAM=;
 b=K7DheLo9Nc8ayxtqG6zfMfjQrl7TyIqZNddF83VuyWkIT9pyyYcBnXHaMi2Nfh/1e2pBs3ZutjxeYGWSiaduYNz9z7ETXYEIeKRCUJbffqN20rhwl+Wg6IEP6xRjOhOikbnCBJgVwEf3wrudao9ryNuS+cQGOOhwQdNO7OZtWNHhPVdYGp3lsQAWZPPzuUd+T/9wd5++8UqP51UQVP2c40BjgoMbi29/CGDWQnNiZPqC68Y4SglruRG95NmAsB6xW6YVjObFuK86yMFZ0YGFrQPel+6YWI3R1a9rARK+VLjoNRujZY+zHzogEAv6z0v+CCLyDTOQ5m0+5TnbgGrHZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by SJ2PR11MB7501.namprd11.prod.outlook.com (2603:10b6:a03:4d2::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Sat, 15 Mar
 2025 00:51:16 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Sat, 15 Mar 2025
 00:51:16 +0000
Date: Fri, 14 Mar 2025 20:51:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/6] drm/i915/pm: Hoist
 pci_save_state()+pci_set_power_state() to the end of pm _late() hook
Message-ID: <Z9TPANpe1zkXPNzb@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <20250311195624.22420-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250311195624.22420-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: MW4PR02CA0027.namprd02.prod.outlook.com
 (2603:10b6:303:16d::32) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|SJ2PR11MB7501:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d1cf313-479f-4df5-58b5-08dd635b7db9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?qQBNVF+fjvkYXx/feJuNOrtyb9kw+pz/oSiwbyo0b6az2Empbauvull7LS?=
 =?iso-8859-1?Q?3TJ/2WPZkttjwcUSkykFVozUCQOEk6zhz8R5aeiJjhYLP8mnppokqJAY3f?=
 =?iso-8859-1?Q?39884CWQPj8s+1UB5c3YdVNoQuaaGPnrlxwYYt7y0C3pK7H5msOnaq/fT5?=
 =?iso-8859-1?Q?E9RfRLhZZkhzg91z2hzJNwWD4SXmX31CGVAqhPKZHISZqubQ2n5yE5pLI8?=
 =?iso-8859-1?Q?fBoXKBk9nQFMRVmt8C0U2nk34Z2EohnzyzAPUW92qqYUQguWF54jZNTIEY?=
 =?iso-8859-1?Q?QfyOehcIy+RpHDvsYMO8CVkQOkbnLGoJp0lRPQzJ3pKN+gn04tHdw0AzdC?=
 =?iso-8859-1?Q?/Vw06NodHxPtWMT/Y+XPW3/fJfo1xLe7vMFjVIMIkdC5MobNaODboV46Ox?=
 =?iso-8859-1?Q?/os1yckzPIxxwmAAazmmagFFJ2dFaJg4Eks2BR90EBoIu6JWTflbYKRkzB?=
 =?iso-8859-1?Q?vMBhwT4wO59aFP2Ai31GWauoVBceyO0CVZO9IOSWVQtCc9qpZ+1mrDQ5qS?=
 =?iso-8859-1?Q?HqRsCfVM/hmj9DiOAM6SV1Zeo/dLO1LlcpQhwLLrSYKXE+DAvtVwJJJPPl?=
 =?iso-8859-1?Q?jp6uug9KQPcat+conRvbMCjgD8/pr7/cripMBcs8BaZQYJQwNDnKmVlk6V?=
 =?iso-8859-1?Q?ZB3/FQfK+F5u1uh9IHk4m5/qZZje3Cxg0DYRrkOg5sARCRWYKG33W97Jrd?=
 =?iso-8859-1?Q?TLJQufzVzTpom7dRdCiF3MykhWKlhjCCdSiPKfGVj/eY6jeSLyTPE09dO2?=
 =?iso-8859-1?Q?WOO/IBMrEXhGqUo2B4QLE2ormfL46spXO/S0kQfSga9C4vcvDrJZEPGmjm?=
 =?iso-8859-1?Q?VjZhSLNJyt0qKZ2pbp6GakuU8q0UHpunmX/OgPjWZcsypUoGoyTNhppGYF?=
 =?iso-8859-1?Q?L/Z9pVnZiqJdjRniuM4ONWkGHBoSL+ttsaSzI2aGjoVkmz71hOXFgMIw/z?=
 =?iso-8859-1?Q?PwljZ/yQJGyiVNA6to7wd+4oJeBpPKEkP0r9JP8Y0KNyTESBW2Wd87HRE+?=
 =?iso-8859-1?Q?XNuH8gbndkeVf249Sca38EPY4xQMohKSWdanf4y7qWHgxYrsNu3ysLPEk6?=
 =?iso-8859-1?Q?076aXZDB0ofHP2NYNTwQ5ax5J4Ht3tU/IIwIPruhlWjWB5RSbAfWxXfdTY?=
 =?iso-8859-1?Q?ILJCwpVYZF8NGfoN+9mvRAcF9hd3rqMTmRdyklZJClMFYzOM95j2L2kA9S?=
 =?iso-8859-1?Q?S8U+YtVL1TVV0ULcEqTxGBumty+UpjeeFwJ9dG7F7dtN0MZpJnQmeKmcaD?=
 =?iso-8859-1?Q?lECatqo/b5TGGIsQoVjjHaGVehmhWbQ6ddbzr95/6JRrs5+JrJZBztU9Gp?=
 =?iso-8859-1?Q?a5jVLHyk2T9dEHomavCs4XotKYiHSgqAVBAk+kAyLbA9G0UVpkdY2/9783?=
 =?iso-8859-1?Q?uaxjdPPud1DhIx7Ebth8U8QTXF9So1DcziWq6GJojjkYthIfFZ+CYe0ZAw?=
 =?iso-8859-1?Q?GGRFnie2aIQFjHPZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?QlbtoHR/6Dh8U2juLSCtlSj/CcWH2zwOApcA/jb8fS360rr9ISTKxKApBd?=
 =?iso-8859-1?Q?F9mRHq6veDe8uUcJMexwuB1Ctv92YJ8/bDIAh3SRNv50Pvu4EL//qndo7g?=
 =?iso-8859-1?Q?4LGYxGikUpoqGK2T9+r06AtfTSPMuTs495j0g8QbO7YluHMjKnBATWxHBw?=
 =?iso-8859-1?Q?KxOX/H75siLmOwl9l9IWfP9DZpLq+PPXGBN/0s7mdFkhIerG/t2xjkA6L0?=
 =?iso-8859-1?Q?MVnO0zU9A3Oy/9c/ekzZJRKYNvX/lOaZ5GOQdv4iAiysBBdEPawE6a21KI?=
 =?iso-8859-1?Q?j9quABdVgYSzEemzsy13NMHfJ8HFrMQH2Le7ugGn/nmLPqSa/HWwDRQAXg?=
 =?iso-8859-1?Q?EH29Rudzi5Y3uE1ZJSw13+rt/iYp8VnY+nn+PxCEMjLCGHWYCUECGx5Dcj?=
 =?iso-8859-1?Q?3nsmP8R683YIP2ZsKLdtT3iiG3R/e4I0VTOpifcfEq0HyFCSgK+vJu3pTm?=
 =?iso-8859-1?Q?Uzxr+v2C0OqiMPQrkENU7dQeVLI5d/TyCDeeM9wZXlkq/arJyz6QRvrdXX?=
 =?iso-8859-1?Q?AW3DzeIIuzeTJjPpt9XpRtVErn6cpQTGOEdbITowBQ6sjTMVJnZ8H6bhEY?=
 =?iso-8859-1?Q?cASbMmdjs5e38TZfk9Di18hVlIGdP56ixDLOkm0LXbxLvxI42sR/CKaRoD?=
 =?iso-8859-1?Q?PXHgRhvyosexxo975UQoYLgOkuCtJ7MBcscUGjRt4RZoLUQBetiXHr5Ezr?=
 =?iso-8859-1?Q?0RSdqCo8+uxHp8ov8tt6NjcbbuLFVNuBv4xTHwwIaHL3Hewu6Smv4ppNH+?=
 =?iso-8859-1?Q?1/SgMoNOjTJYnDZvPx/gBBZo7zSt4ppAoAF7Dw7klXSj70SG6Y9nZfMh4n?=
 =?iso-8859-1?Q?H+XKHupDzXB2kCzdiwnB6CmFJMrQuZQG8VIN1iErwv6+HfXTkkmwKYdICi?=
 =?iso-8859-1?Q?6Balf3DPuHiEanjWyCk2S3wWua0zcpurAfQs7CurBukrvEZDZbhUckh03o?=
 =?iso-8859-1?Q?lYIEbyvF75iRjcMjMhEUriFGyjCaEdulJGgban+wMwLjxUVKV9TxU3XQ3F?=
 =?iso-8859-1?Q?c5tTEW8zYInrBALqoK/dNDaVtKlfJLIbhs/snFWg8W2Y4NXOZREkwsr3xR?=
 =?iso-8859-1?Q?phWTqnpy3hnMM/4/kpOR23zejdEXEwHhxpAuTOyJdv+ej2aqSNuWrEB21t?=
 =?iso-8859-1?Q?pTBzJPOvSEqbq2ir3wDC/nW280UsrWOxTVX4NmArMZP16ZHqIBrBVj+yeH?=
 =?iso-8859-1?Q?mxQCeT8N+tSiE9UUCZcez2ywOkdyUYB+I8zergpDfugjehnQ3vsqJ42B19?=
 =?iso-8859-1?Q?QcColRiYEYnNQ0N6Vc2eOFNyzfuJvYUy1jTrVAFelSRddRcE4zFIjZmsjB?=
 =?iso-8859-1?Q?G8R9WU/R6KQyYkISOgriSATn15ehmNXLp1n53KfPH5dcBQXOHx7hh++fhO?=
 =?iso-8859-1?Q?kvso4gT/26N4MZZoxxZpKDwBrRwrI26frMUlJEm08eR5wOQjGOD1VovHfo?=
 =?iso-8859-1?Q?naxpM7TR9HeoKV72/DYTX4Da7hVbDPWSfPedSFaw1pvK6xmsIkyaWE8gX+?=
 =?iso-8859-1?Q?O0KHqzbiojXzT1x3OaRgbkudV+bSr/5pnAcnKaeM4VyUFG+p/+D/piozgk?=
 =?iso-8859-1?Q?/pWx6QHxbTfpPYFPbNBZL2xy74WB0Zp632jU31R7wkP2H9bGDGj+qd3fMR?=
 =?iso-8859-1?Q?xSFtL8UVCtzU8T5ARg/XvA5mioJKskEhzIABp0+X0dvqHxAb9oT45jVw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d1cf313-479f-4df5-58b5-08dd635b7db9
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2025 00:51:16.1744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NhXViMDEyEOGArAKupnpJlxaydvJCcmY73hei9Chzn/G/Hohe3AvrqcdGtwg+n/YVE+aIGki+upfVjQYxN7X2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7501
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

On Tue, Mar 11, 2025 at 09:56:20PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> drivers/pci does the pci_save_state()+pci_set_power_state() from
> the _noirq() pm hooks. Move our manual calls (needed for the
> hibernate vs. D3 workaround with buggy BIOSes) towards that same
> point. We currently have no _noirq() hooks, so end of _late()
> hooks is the best we can do right now.

fair enough, let's just get CI back and try it again there

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index be232caef9df..e06f2956382c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1045,7 +1045,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_display *display = &dev_priv->display;
> -	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	pci_power_t opregion_target_state;
>  
>  	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> @@ -1059,8 +1058,6 @@ static int i915_drm_suspend(struct drm_device *dev)
>  		intel_display_driver_disable_user_access(display);
>  	}
>  
> -	pci_save_state(pdev);
> -
>  	intel_display_driver_suspend(display);
>  
>  	intel_irq_suspend(dev_priv);
> @@ -1117,10 +1114,16 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  		drm_err(&dev_priv->drm, "Suspend complete failed: %d\n", ret);
>  		intel_display_power_resume_early(display);
>  
> -		goto out;
> +		goto fail;
>  	}
>  
> +	enable_rpm_wakeref_asserts(rpm);
> +
> +	if (!dev_priv->uncore.user_forcewake_count)
> +		intel_runtime_pm_driver_release(rpm);
> +
>  	pci_disable_device(pdev);
> +
>  	/*
>  	 * During hibernation on some platforms the BIOS may try to access
>  	 * the device even though it's already in D3 and hang the machine. So
> @@ -1132,11 +1135,17 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  	 * Lenovo Thinkpad X301, X61s, X60, T60, X41
>  	 * Fujitsu FSC S7110
>  	 * Acer Aspire 1830T
> +	 *
> +	 * pci_save_state() prevents drivers/pci from
> +	 * automagically putting the device into D3.
>  	 */
> +	pci_save_state(pdev);
>  	if (!(hibernation && GRAPHICS_VER(dev_priv) < 6))
>  		pci_set_power_state(pdev, PCI_D3hot);
>  
> -out:
> +	return 0;
> +
> +fail:
>  	enable_rpm_wakeref_asserts(rpm);
>  	if (!dev_priv->uncore.user_forcewake_count)
>  		intel_runtime_pm_driver_release(rpm);
> -- 
> 2.45.3
> 
