Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F5DBC37CC
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 08:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F2E10E75E;
	Wed,  8 Oct 2025 06:40:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XjliAvzt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BD310E75E;
 Wed,  8 Oct 2025 06:40:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759905648; x=1791441648;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Ps0IduZhcjEySitI/Mjnz//XT4G69yxAZAJwbSBf1wQ=;
 b=XjliAvztM3lXhBlPbp2nGkFZY06lHJlYOmg/m5CvIh/VQQavyODhjrQB
 hLM9v4G0VDcYLKjnfOhiXuURXbWQorcU5kuutVOmjsgmuXNDaf9CrylOz
 R/4zhr2PhFi3AyGp2GjGStyE9+5vnOpiFMmmC40YJ3qvXSPdHu0WYaO8e
 h1rg+jmgDrrBis8rKe5pd6bw9wi9j7ZtKOu+8Xwbx+iaBwoUvKRK+gNyy
 lQu4x25Mte8tCXswh4QLooXxb0QjSgD5tvPx2748wMh3Z3cp8scw8MZvq
 ygLy9QlQRNHHnvwDOJDOvKxeQCQr46JMds/mWoUN+6+1Kj/9ZCqYQuE8l g==;
X-CSE-ConnectionGUID: zH+en0nwQbidGdeJ8yBKMA==
X-CSE-MsgGUID: fA6qW/hoRLiknM4eg/fEnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="87559809"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="87559809"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:40:47 -0700
X-CSE-ConnectionGUID: DC+aGBLBQEWqhyulNNhlUA==
X-CSE-MsgGUID: Z6HYHY6GRkq8cmJd2Lb5wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="184741113"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 23:40:47 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:40:47 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 23:40:47 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.6) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 23:40:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LG5OBADmXBj/oy9SMXfUzZ/Qha5Bve7IdOLHbzPptUmp6XHM3g9NrJ363+R+X/mzAQSw5bcboTlKX/cbaHiiue3DfKNi+7vecNQsw1UuzJPrkRmnf8jtkK2N2sTSti9ZJ2A/GC0kjL6UEzuaMxZ472eMtaMolBewh94he6IXWbuzGTENi/Ds+eviGHesjjrTNSfKYYLAXtdfPxeRxULQ1g67z0pHGayRu6fTQ/ND7hn4W3yJdGqeQZsNFVn5evpVO67p504IGQCkr9iB3wU/rA29/fRzRXYGhofvM55QqDulbsIWYZxYA2ZNM7pQ1WztJgbzf2frkAstf7ooRkOndw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lGobivRB2hW60KMMA/Avhr/I8sC2LLTWmTlgidqApjA=;
 b=h+lUSBHPd7FCsD0ZNbT2wL1BlnlQnNtPes7CusfIjXCz8IRy9pqNZTTI4Z23nRgeKASoeUgst6xZ8zxgeib3riPIqztT1S9vPeEXSNkkGoEPevQKZFJNUJnfnS4uGCbvLcpNFbHSt6TJ1hCn4DT7YlJXS8/bsOF9XsLc9HZzp5qux2obH1esjEtZpkdhVlX6InKxNY5zK2WX3rvDLCpoSc3/cQGImnYZ+2dRmgy48v85Bb2Pze3cE6GHy31Cq9gt881JErWckCs8U3gUZ4AeI3B+bSp9/eWm4gK/sfao2v1ZzGpYoBURXeCWCeKxb2K2XlOF2hSlQvE2oJTeGLAJZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6137.namprd11.prod.outlook.com (2603:10b6:930:2b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 06:40:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 06:40:38 +0000
Date: Wed, 8 Oct 2025 09:40:32 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/opregion: Extract
 intel_opregion_runtime_{suspend, resume}()
Message-ID: <aOYHYIce_3eJWbc8@ideak-desk>
References: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
 <20250708160320.5653-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250708160320.5653-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: DB9PR05CA0002.eurprd05.prod.outlook.com
 (2603:10a6:10:1da::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6137:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cc2fe11-26e5-4c07-132a-08de0635974a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|10070799003|7053199007; 
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?q2fIEzNEAMBopjnALJHLfdqEWzEwRBH66SUAkAV6l5qLZ8oujWxZWrMjBc?=
 =?iso-8859-1?Q?GPCSaOe7IZHPcx8g29vyw/fGyfCp5j1gg/usTBsjJramP8Glx5bWUh+rC5?=
 =?iso-8859-1?Q?yqlAru7zKbdR6E23+rQu9U6nm9W1UwqgGZr5gXfV2EnaNL2H/XpC4pmwDN?=
 =?iso-8859-1?Q?Pu7FNEeDMsZ+ZaPZKuUQkOvSyCIA/hU2MYFRw7bFg3UEosUqgDhqauJSDn?=
 =?iso-8859-1?Q?W+MWIC455v/ym+Bit/i6VKmWYhRGUAXGv8LNt+P8puI6OyO3IgAx/kkkqJ?=
 =?iso-8859-1?Q?AavttR2phBgYzWNywmK0J1BMWfQM5Le/5d/Ox0qWlh34A0nJeDwhcrMIjz?=
 =?iso-8859-1?Q?ukNuyHzZ0ogZxgZNB/TaAvPDuWyA2Id4QoWkFajHJqnt/ol7W+cCbYSsrA?=
 =?iso-8859-1?Q?5JQFt5d67L93sHxGgR7ap0GsD/An8QrlgesGHOSdsFWaJmNus34Mjjq4JG?=
 =?iso-8859-1?Q?NAYEPGmWCumB8WCOi2ZpHcG982YNPAGMPbaXABLx9Z2GHM4Zb2bvURcpjw?=
 =?iso-8859-1?Q?wtKoaUAdiKOt3M9nh6zYVVuCDLaH37mjhvS2Ys2fC63jWIPEK8JVajciU0?=
 =?iso-8859-1?Q?Gzl29XIiqj7Ks7fYqDtvI1ZriQqCmaMUgxXCh/Cni0Ll+9k40VRoi9zWk4?=
 =?iso-8859-1?Q?gKwqxR/2SZAj0oGtu7JU7iD5zVyN0tTtf2cC+NaFYTTKgFFX/S+SQbPAX/?=
 =?iso-8859-1?Q?1zmc2INF9pNCwatDVyD4IM9PyN1hfKdhyRIEFb9rcIgxUJt7+ZnKkbJiTD?=
 =?iso-8859-1?Q?m/KdrZe0X5hoQyxgOzQlkBqqnUeYRfME6IM/ONXYix8JqgSxBW0EZXkBFL?=
 =?iso-8859-1?Q?da4cmHeEjlAfH6k2LKtBzxfOvn08Csl6yBdoox6mZAAc1P8V7vLXNrFhat?=
 =?iso-8859-1?Q?W1/Ka4gMIapuaXJq/zupPreOKIHWyatQYKJCMvQgtSbytgyUweZ55De6d6?=
 =?iso-8859-1?Q?+EyXAFPGm6CHRcplcRRr/6wZ1JCPmyyOaPXtG9WeztX3VCSkftn+QhhXdY?=
 =?iso-8859-1?Q?FRtK/J+GkYKPP4fs7Yb5rCP3fxyhigzq11mCzzZlFyxu/etaB7fy7nROCA?=
 =?iso-8859-1?Q?p+S0bQNBbig9Hk4vmz/GC+a0fRjFSIqUwcxC8JqdKlPIecyb1elObDEeUB?=
 =?iso-8859-1?Q?YRWle/kvEDmg6k7JmGiecBT5gFV6P/kW8lV2vK6Cx/O6SEvuGJvusWUqXc?=
 =?iso-8859-1?Q?t3znjE4XjKpqsIHfn40ZbPGSGF5WIn+AuxJ9O+dP9f+eyh/At9VfbhWCmx?=
 =?iso-8859-1?Q?nURJACWUtAburRnMI/4g43Exsvqb7uczyBpkapRnyqVQrqJtSGCWbjvAVw?=
 =?iso-8859-1?Q?HRDCyq9K6ZH9x6WTfPtZF9bPZcN8v8A3+S7VY8w5tZ87S797eftEy6Sox/?=
 =?iso-8859-1?Q?Yg27EcjnhXZJcFrRmW6wae9BG46Rk1LptbvDyH0Gw+Yi4xP8oc8KxnZ1gC?=
 =?iso-8859-1?Q?AlhdGrrrIkwdckC8Y7Z4BL9wURj3e3hxY2TMRmJU0d2H8eb0BQg7CZVvWz?=
 =?iso-8859-1?Q?0qbkg4Nmi8HFbQFCfHKGP/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(10070799003)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?KoQBiv6eMrhfEW4Mm0A4yekgc5likgI+hnBHi/py5/r6klOJQ0E2h5KUt1?=
 =?iso-8859-1?Q?sx6UQzdB5M5PAgC4VlEnOQmhWXplIWOmywyRZkK3mxCqWCdVookjjWRsml?=
 =?iso-8859-1?Q?4r/EQ0Sep2vRTiLkpa6mM+Bq1qczAzsVYAaWNKzKDGBTM8CkTMJ0SzO1Gy?=
 =?iso-8859-1?Q?rnRD0G+hRh9zz2fdgWllInsePCXNUQcomlVEpACfVxuyblH8yvgNWbrXzH?=
 =?iso-8859-1?Q?e1vua1QpMaZFCvb79EEydluhLR/iSYPLocnTbmwfP8LzUNuBs7IYguUSwA?=
 =?iso-8859-1?Q?T+GhRFAMCBnPI+nA8BGbSYYqx5YUnBxKmAmISrDhuU4J6CY1oNfiooFKZK?=
 =?iso-8859-1?Q?RtKYuxoKU2IolGfe35LEimU+fm9iq2JiGFIgxGx5gemOXEy/656w+8FBlM?=
 =?iso-8859-1?Q?gAoOO34G0JITA7M8Ay2UIfbgZj3UawUsQYUEnNETyqa+7ARF6K9HXjJDYW?=
 =?iso-8859-1?Q?4gFq3uyRKbsCrdJf5wtsmI7RHi0EGSxgMSbPOrkPTptWixff9y7xu6ADLL?=
 =?iso-8859-1?Q?2iRCLjeC8bdPieKtoDGPIWIPbUtqtPH82Qqb0wJ/BzWJObsBrm8+59Sxfp?=
 =?iso-8859-1?Q?6pcNFpCGllCayntgwQ2Sw8MVy59jQHtjKZFOaDxJW3VdOPkyGxmGHbBgCo?=
 =?iso-8859-1?Q?Q/ohZmu8pZXiNAxI4GlSv2OZIb7XmS9LRmF2DLS0iyCyQrYEdqy51R18D9?=
 =?iso-8859-1?Q?R8h+mUOuI7nTmPxuEMK/Qq8X4HFnh/DFJEyCJHj5ejC4RV8lcWJ21pTrkn?=
 =?iso-8859-1?Q?zoYlh0aRw0TOg6GlIE0ABS7aRwL7VkwFdOYUiIf8btWLMv0Z6UPpX+tEY7?=
 =?iso-8859-1?Q?9JmT8q6sC029kxPULNs7fYba/WozUu6REF3AGoDjs6Le5Fq3oMBLywS4U2?=
 =?iso-8859-1?Q?tx0uWr0d7SDBw8CWySGqKihX09qzTcn9uqdCahwjO4jBBNlgiW9D0NiT8+?=
 =?iso-8859-1?Q?TfME8We1bHH5ExxWL8r0N0yedqM5Ip0YuPVqNKj+hh5DAxHt+NvoChoYEr?=
 =?iso-8859-1?Q?kakRCxEqCkHtl1gemSOuEMuKJ/fJSHMB6SxKVzqbl8AkehGPX9d45v/LvK?=
 =?iso-8859-1?Q?UfNqexooAFddT9+baeWJqPcJrW3uSMRQNQcBJL4n3f13yLDcOldeDPLkZg?=
 =?iso-8859-1?Q?SAyX2GMOITYD+6dG185+NboPt5kcdPbiIP6DVZId5A4PdZMrUw33wK+dJA?=
 =?iso-8859-1?Q?n1DgWSGG6KBDsI5anMoeM+UuECtvOo5j0GcBIH+TwafHUbLeLD+ZwFihRV?=
 =?iso-8859-1?Q?rDdkSaknVjTFZpC7UbwHwKeuMTec5AU93VWdo0PV9U4MhjJHGKYT40jrFS?=
 =?iso-8859-1?Q?lkKOvR7nLiMp7Raz7uBQPMggGT+ppgFKsXdudrjcpnujd3+Xm6wpfJBmV8?=
 =?iso-8859-1?Q?sZ6Q5KyNJS3XMcLsEb+rniIpuWk6qoYjPfqX5WycbVdrI7uEEy/ChTJKcB?=
 =?iso-8859-1?Q?WdH/UlEMCwtPV66+CK00fFwXobWR0MEV1mAdyEFjiifhQJBJi4bHl/Alib?=
 =?iso-8859-1?Q?nTRGREacHZ5CLxgsgHEUbSZW3ekrqWpvzp04GFxFGAuNAxGIBdzi9cKQUu?=
 =?iso-8859-1?Q?copOcZKSTUzGnBJVRgr/sA8vFQi1MQ/HIF839jO3cl2EUm3U2r5Z9YztNL?=
 =?iso-8859-1?Q?z2f7brqwPa6f7KTxuWp/nGalmrZaqoCL34kxZ4bjlJ9p3/fsl2OfMsrqyh?=
 =?iso-8859-1?Q?x1C76pl3aP4PjsCK93w70kN2+snemR74pWBjdujt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cc2fe11-26e5-4c07-132a-08de0635974a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 06:40:37.8866 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fSbConWJljsvq9F+e9i5zcy5rsF6LtIoSZBz0fUdL3bEfew1ga+b6/7uK+huQWFzM/o7FBPGKP/84Dk8Zc/few==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6137
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

On Tue, Jul 08, 2025 at 07:03:18PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Extract the opregion runtime PM stuff to new functions. We'll
> need to add a bit more to the suspend side, and we don't want
> to clutter the top level runtime PM code with such details.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_opregion.c | 41 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h | 11 +++++
>  drivers/gpu/drm/i915/i915_driver.c            | 25 +----------
>  3 files changed, 54 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 81efdb17fc0c..9e39ab55a099 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1255,6 +1255,47 @@ void intel_opregion_suspend(struct intel_display *display, pci_power_t state)
>  		intel_opregion_suspend_display(display);
>  }
>  
> +void intel_opregion_runtime_resume(struct intel_display *display)
> +{
> +	struct intel_opregion *opregion = display->opregion;
> +
> +	if (!opregion)
> +		return;
> +
> +	intel_opregion_notify_adapter(display, PCI_D0);
> +}
> +
> +void intel_opregion_runtime_suspend(struct intel_display *display)
> +{
> +	struct intel_opregion *opregion = display->opregion;
> +
> +	if (!opregion)
> +		return;
> +
> +	/*
> +	 * FIXME: We really should find a document that references the arguments
> +	 * used below!
> +	 */
> +	if (display->platform.broadwell) {
> +		/*
> +		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> +		 * being detected, and the call we do at intel_runtime_resume()
> +		 * won't be able to restore them. Since PCI_D3hot matches the
> +		 * actual specification and appears to be working, use it.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D3hot);
> +	} else {
> +		/*
> +		 * current versions of firmware which depend on this opregion
> +		 * notification have repurposed the D1 definition to mean
> +		 * "runtime suspended" vs. what you would normally expect (D3)
> +		 * to distinguish it from notifications that might be sent via
> +		 * the suspend path.
> +		 */
> +		intel_opregion_notify_adapter(display, PCI_D1);
> +	}
> +}
> +
>  void intel_opregion_unregister(struct intel_display *display)
>  {
>  	struct intel_opregion *opregion = display->opregion;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 8101eeebfd8b..7067ffe07744 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -44,6 +44,9 @@ void intel_opregion_resume(struct intel_display *display);
>  void intel_opregion_suspend(struct intel_display *display,
>  			    pci_power_t state);
>  
> +void intel_opregion_runtime_resume(struct intel_display *display);
> +void intel_opregion_runtime_suspend(struct intel_display *display);
> +
>  bool intel_opregion_asle_present(struct intel_display *display);
>  void intel_opregion_asle_intr(struct intel_display *display);
>  int intel_opregion_notify_encoder(struct intel_encoder *encoder,
> @@ -88,6 +91,14 @@ static inline void intel_opregion_suspend(struct intel_display *display,
>  {
>  }
>  
> +static inline void intel_opregion_runtime_resume(struct intel_display *display)
> +{
> +}
> +
> +static inline void intel_opregion_runtime_suspend(struct intel_display *display)
> +{
> +}
> +
>  static inline bool intel_opregion_asle_present(struct intel_display *display)
>  {
>  	return false;
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index c6263c6d3384..da0b7d9da3d5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1553,28 +1553,7 @@ static int intel_runtime_suspend(struct device *kdev)
>  	if (root_pdev)
>  		pci_d3cold_disable(root_pdev);
>  
> -	/*
> -	 * FIXME: We really should find a document that references the arguments
> -	 * used below!
> -	 */
> -	if (IS_BROADWELL(dev_priv)) {
> -		/*
> -		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> -		 * being detected, and the call we do at intel_runtime_resume()
> -		 * won't be able to restore them. Since PCI_D3hot matches the
> -		 * actual specification and appears to be working, use it.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D3hot);
> -	} else {
> -		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> -		 * "runtime suspended" vs. what you would normally expect (D3)
> -		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> -		 */
> -		intel_opregion_notify_adapter(display, PCI_D1);
> -	}
> +	intel_opregion_runtime_suspend(display);
>  
>  	assert_forcewakes_inactive(&dev_priv->uncore);
>  
> @@ -1603,7 +1582,7 @@ static int intel_runtime_resume(struct device *kdev)
>  	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
>  	disable_rpm_wakeref_asserts(rpm);
>  
> -	intel_opregion_notify_adapter(display, PCI_D0);
> +	intel_opregion_runtime_resume(display);
>  
>  	root_pdev = pcie_find_root_port(pdev);
>  	if (root_pdev)
> -- 
> 2.49.0
> 
