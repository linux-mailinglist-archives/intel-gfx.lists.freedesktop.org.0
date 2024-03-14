Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4394487C26A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 19:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F8EC10FC79;
	Thu, 14 Mar 2024 18:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hW0LeKgb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F2C10FC6E;
 Thu, 14 Mar 2024 18:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710439786; x=1741975786;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=KltXlWmpKQtlz9h4VhbpKdWXsx3pGTfNE2yNWQXay2I=;
 b=hW0LeKgbYhrfQ5bom9LAB34vpgoCC2QWoVAyCVMB1R+TNYFtlJNmMtkB
 3P8U9XBieerAtNTlvKHR07R3mTxvwSy9/o5u6Y0FMqU1hAKIDn4EL3/d1
 EQwsSO+SZ0IRBAZiMiI+N+aElYj98W6z+tltwOQzXG001hX4E1bU2fwJx
 YLhBdiJu5uvxo/DsKVOgHx/z6YrA28Ng21xA4oYGglGmVEVu1bD7Hbxaa
 BhYB9ksulEAFCK60hj0ICqOMyTnU7AWac00iLolCv87dI/W7aHEkJATwE
 dRQW+tyulUZ4Lt9rB+dCNk34XDhGLLRmvWLV4DHCndKU5w1a+Ay2Udi5W g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5406345"
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; 
   d="scan'208";a="5406345"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 11:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,126,1708416000"; d="scan'208";a="43394156"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 11:04:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 11:04:37 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 11:04:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 11:04:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 11:04:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPFNvkpXxHF/yBBEIT40So/Hk0Ig7+zk4pAny68J/ZK2T+tU2Nw+omlm3wqG0zPIzVd5Z83m9f7FxZ4CiRJK20R/hXHJAIeRihq2HmAqojVwqk8kprtYV6oRzjsBLquOigGv7kpN8VhAn8WvpwYBql2duhiWU0vK5KG08E41StqHp/e5X2/WsMlXRkta3TpwBdDmdGIvEvGghOO9zk39GF6kuL1u+Xe73/fdVSnaSJzakBMtNqfDIvXYzjZv86J/gjaSY2d5121TO+411Yq+AF5scrFlPQrANU25RtMUwqC7B1RKCdJnHHTyZ5v5GWMF86w3iI8+iJtVTpw0+iy24g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2AWKjYKIaElYxlR0vxXn6PewNAidqf8WAj2dud8G8c=;
 b=fg6TUchjkARlAcnI+zrQLUBRt88YD2UgFGnKtDHGO49Diq2sT/49nee0QS0dX/IKkMQpM7CitkqyamRHDS7N5fjw3nBud4FPJ2fJrKlRE29v+4PlDmJhvHQJDyGZT50CvSnG/SLsGZMrFC2WST1JiG1QRWd82dFn4rvxgJn5Fx0Q+zOjqetxBf1aNbY6+7Jb51+PrSnUr7nFtxHyKIVMrSkK7LBm6LPQ/lI0v30wMxi0cmUjTxmNcAN5uXoQL0sh1jTAxBKkyl5uk7xKOMLBXxAyWuoWCV2QSbi0X5lz3Ar2Tc+K87XQ4oEmsuDZe6X+00liOYKsf67Rl/Yo2OerDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by SA1PR11MB5900.namprd11.prod.outlook.com (2603:10b6:806:238::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 18:04:34 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::35b3:d12c:df86:fe22]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::35b3:d12c:df86:fe22%7]) with mapi id 15.20.7386.015; Thu, 14 Mar 2024
 18:04:34 +0000
Date: Thu, 14 Mar 2024 19:04:29 +0100
From: Francois Dugast <francois.dugast@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, Imre Deak
 <imre.deak@intel.com>, Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH 03/11] drm/i915/display: convert inner wakeref get
 towards get_if_in_use
Message-ID: <ZfM8LQDQH1_94WJo@fdugast-desk.home>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
 <20240314141021.161009-3-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240314141021.161009-3-rodrigo.vivi@intel.com>
Organization: Intel Corporation
X-ClientProxiedBy: DUZPR01CA0056.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::7) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|SA1PR11MB5900:EE_
X-MS-Office365-Filtering-Correlation-Id: 61c0dc60-ff30-4df9-688b-08dc4451347d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BHhVcrih+cUBbH+JrCQfFoQYTorvb6uvy41D6dIzV+olZ7C5A8Kbc0qhjYg8nq/oNetX/oJZtrseMBTj7OcO8kJYc/b6gB2cL3vuqH5U/Z98SWRAaRlVhIaUywpGZ8uPsXODV88vpnrlqJokF3JpFLMEDLznETgczegGW9YR+fnW7W3GleW480N9ESdD1MyUfgB0TBfPApG6mZ4ptHRoEjryqt23thq1YPfpemjot1FREnlwl+dDo1hDpqKD06SDHZSzBWNI8vI6UmuSLCFbifbN+WWrHWJ3SUWnnj31AhbinQ2vK1sG48w0YreezrGROd5LsmMNVqPDB4sGirpBiijfA2CnKN0hrApx1pgeUK34rBKWkobyqzQRi8BJEiiviS/NnG7uMA6dX+YrAkr+dNGPKZuGwGHZb4HWnI4NmzD6xYzJTOYnJBL2uaPpspnsNPXGvNeftpR278yQx2jnknVVYp3dXPBaafjlN78o9Q+32fUgheCQG25OlP01SS3BCwO70LZ7cSYqC4WMi0qVeM11m3w0N6BhXLmgfBsJ1GQFxqGh7IX+ehikbuDDnKnQFPX21ovjnYufZ0XW4nkzaLqveRFJndDU3zP0b7RtUpM5zEC2IhjGYx2gx2Kr9/F0BNKWVPTuSkHs1YfMvoxXSgKp9Dnoh9NO/T95G06v5Fc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?nzVyweaXizAkZsFx4fw71T9xeTz7FHM/62+3faUQDFS8TPK2DoKp4MFrMC?=
 =?iso-8859-1?Q?PymdtYlXvDOWrFHlsXMM8Lf16pjQlEvelfO8Y19xYgbRzgvOZgQDtbikDH?=
 =?iso-8859-1?Q?FdbdL/udUNlo/kl3gl/4u7TA0Be+iC+oU4yTU8o+Ez2ejB+xZZtgyW//Ei?=
 =?iso-8859-1?Q?rZ7FH0ZMmoiz+ZRJp3zFika3Vwu/ehqvMy0CzGotY80GUmWaA76VDwyTiy?=
 =?iso-8859-1?Q?C2e0QnLbA/TnI88uwCnx6L/exha19BZKIp5eE93qOThMTUdyvwT26zfGYQ?=
 =?iso-8859-1?Q?e3A3OaZtYJ+ivDhYDMNdQnoWS9WfSjbqillZmFOnEOQB/GNWE8GE8luF1M?=
 =?iso-8859-1?Q?Gw53WZ0BZoY/0YYsVgJBJF+b/8OEgmc4f7ZXl0Tfbw8VNkkvFcmshA/9iB?=
 =?iso-8859-1?Q?kzkBOs0/YsgteZY3O4Hudt6T/U5+1OuoQ0nZpDSaP4sKmeVASFULg5KfnE?=
 =?iso-8859-1?Q?FuYr6pkkpyFzIE+YUrzYLOlXIXv2nko23LRMAUwjtDS+ucIJ2+Jskd957x?=
 =?iso-8859-1?Q?6+yKdfuWUrKGPTBcBsGtqituCOOGl7a3WYVH3Up5lS0MWhCNlQilWZiEwe?=
 =?iso-8859-1?Q?RuBAv36S0iPwimLopI2rb7cN4nlog4UH3mSpe+6QxHvDh/us+RlUS1Keye?=
 =?iso-8859-1?Q?cWMjZ+Vm+/VnEnAgpR/UP8rPp6cqM/aeqiEZMg8WCkgZFpe9fBp0uDZ2PO?=
 =?iso-8859-1?Q?+D9uo1U+HdPC4N3Y/T4V4fiRVjHPeQS8PlprR7OsHHAAn2EGxhKCbfA/42?=
 =?iso-8859-1?Q?37hWoku4e25nsUxqjU8qT7rKvToetFr7y9rHBRkqW0UG6CSKYimhy0jwoD?=
 =?iso-8859-1?Q?RBqbHw92VAZMbNGs8CvDqMg1drMUyVQSTJvbIJmsJo6OuOFiKkQWydPklm?=
 =?iso-8859-1?Q?kETEkyv6NxAblGG11rxZ8qKg97nPQCrdrx2k+L9lx1GNEyDpKzZmU1huNB?=
 =?iso-8859-1?Q?tchm97/kCTLPb8WTy/UyPKzUQKRvtLzrFk5QXMVrgtothbPzFDFH6sUKwK?=
 =?iso-8859-1?Q?66d4kK/InBtswqMdWvEeICwnixLanmaWGcwmYgy+es/NcmLeTZlPy26HOM?=
 =?iso-8859-1?Q?Af8Tgh/EZ0q1dZd8ex8InOFomlAKZQQspS88DpPGU91O+8gndY/6/hA+4y?=
 =?iso-8859-1?Q?fu0XAeleJQ7volbt61UeLJUYv8+POYU1JMZroLT/6okO8XpJqPZiVBFw5c?=
 =?iso-8859-1?Q?NsOjOau1qoOXURNnP2JRPWZexBH2Jdeaw6lpappLuMKIwNLF4tct+t3iTA?=
 =?iso-8859-1?Q?HBTxxOsNfaZHDk0bAgiS2Ldxj6Zqsh1T+WiKB5+XhCbSwDTBIbjSNA7imY?=
 =?iso-8859-1?Q?LUv744QKVQVEWHpbu/g0SscBW1xR/m1NtLC8cbuX/Y6IGT+K8NPOSniZoq?=
 =?iso-8859-1?Q?+lLNc3ViwM1oDEy9vpf1XtH/7K43w+KJ/WHY7z+1s91SXzFmYz5rQcZ6N9?=
 =?iso-8859-1?Q?STQRPDmulUxzW+ZQP8cMe1BcY/1UJWJEeA/JKH9eqjs6vBCb83+yG5e+cI?=
 =?iso-8859-1?Q?WELCEgHnjCfdTudEVOOMYBZzebPrJn65WBrNsQBK0JrsKYPArQTqUuLub9?=
 =?iso-8859-1?Q?bqqCunUnjl31xkVXqkvwQdSWb8+GpFXEdB629wtiAluUCBh8ih24j7wI27?=
 =?iso-8859-1?Q?eiIRQQreFZDzSwOKCq7azc4AM4udb2mrDhupw8B8fEHbCGVrspa9dy8w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 61c0dc60-ff30-4df9-688b-08dc4451347d
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 18:04:34.4389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZZ0HCl51DgPkoITw3eS2dsLrVUtLu0zlOQU8327WnLGFq4yDEGZOMX3pI+shpJFNErgapklDDYD6mFgAnjXDGnmaShLPLNNzw4DbLxVNWYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5900
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

On Thu, Mar 14, 2024 at 10:10:13AM -0400, Rodrigo Vivi wrote:
> This patch brings no functional change. Since at this point of
> the code we are already asserting a wakeref was held, it means
> that we are with runtime_pm 'in_use' and in practical terms we
> are only bumping the pm_runtime usage counter and moving on.
> 
> However, xe driver has a lockdep annotation that warned us that
> if a sync resume was actually called at this point, we could have
> a deadlock because we are inside the power_domains->lock locked
> area and the resume would call the irq_reset, which would also
> try to get the power_domains->lock.
> 
> For this reason, let's convert this call to a safer option and
> calm lockdep on.
> 
> v2: use _noresume variant instead of get_in_use (Ville, Imre)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Acked-by: Imre Deak <imre.deak@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Francois Dugast <francois.dugast@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6fd4fa52253a..048943d0a881 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -646,7 +646,7 @@ release_async_put_domains(struct i915_power_domains *power_domains,
>  	 * power well disabling.
>  	 */
>  	assert_rpm_raw_wakeref_held(rpm);
> -	wakeref = intel_runtime_pm_get(rpm);
> +	wakeref = intel_runtime_pm_get_noresume(rpm);
>  
>  	for_each_power_domain(domain, mask) {
>  		/* Clear before put, so put's sanity check is happy. */
> -- 
> 2.44.0
> 
