Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DCA5A1C9C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 00:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 803BE10E47E;
	Thu, 25 Aug 2022 22:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37EA810E47E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 22:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661467379; x=1693003379;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y+Lff16f4//snRKPLdmQHkrFW60PcpCP9XWT4wCyFBo=;
 b=k3FtH4Ccimz2I9z2/6ySmH7bmBAGtiYxnwTtt8nOIgKKHbTlOCNH95IB
 xzTsBbod45K9fIrtZ2h1N2/LdI8Py2eQ6avhEHSzvHm0TM/rkwZyn7JIC
 LyWGK/ZlZb3RJb30Zv1npg8Q6AHLcY07rhhKpZh3zxXhYSoxS7mHrTfaP
 GlPE7W8s0Qyq6YK6G+00rOW0wMlpfvZeVBrmCSggb2f/Adr9W/7MilUMP
 SU8PVJyHx28tM8a3Z9/F2iOqIID7d1tHfoQY5MD6eueIhAAUk5GweqQ3k
 60a+EEP0B+2InVwhFFjBsEsXrmAzEOOcYOX/h0qB4hdzQKggWevCK+acM g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10450"; a="281343203"
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="281343203"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 15:42:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,264,1654585200"; d="scan'208";a="639800569"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 25 Aug 2022 15:42:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 15:42:57 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 25 Aug 2022 15:42:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 25 Aug 2022 15:42:56 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 25 Aug 2022 15:42:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hG2Otwt7xl031sGixQ+ih7zqAsYt3dJlcIWTrgKFx9mycIn9k05l0by6UHT9+fmDHGBTlyvn5EVxZjq8yk/fhWR3+yDlRBc8CoXHT7NicNdqRT2cCXLony7FKPjZZz/lLBXErRL3YlBPL99Yh0Z7BbDXrVFEEJrEWW3nOgeAKeHeFH8/OUMjPECnAtyd5tKl7a6ah1CQgh+4z0D8G/lVFeKBhlxXP2JCIhXe4qXJGG/RtiDkxpRItXgQsdIqIqEzGMYj9aAxM5sr1rSEo5m4EfgwzG69sDZxmAaH7Ou14cNRi/aWn0LALNhaL5NZ1UIeEDeUesK+RWtsITZ8bCM7iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ypo2zXzmcBK0eROaSeWrDUHjR+ldwDPTp44B4kNzbyo=;
 b=e1wlSus31CNWQxI2n0Q4quhyMimAF86NoAXbVwrFpFtex/wz97tBB1VV9ZZomnzZymKYrsa534DAmczTOEiTvAJchJLu/1CwtvKJEMxSqSF7kHIeXzt+jn7igmuhSqedZSabj7CUsQqZDsAqzWjlgKAC0nhCngfEswFUx08i4snERcPdERIwhmkVvhz9ZgPVuWtHDBXELCa5As5B6F40KS7WfU1g9n9CfZU+gWwykyXPNOQp2+c9RfnfMlfaMdKKDCinPK+Nd+6qEdaF+yVrBezf+jqYv4mP9yfRfhEXDIvL7fKVmfDUFDvQvcKSs93W3Eio7n3y9Thw3luu9N6V6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6992.namprd11.prod.outlook.com (2603:10b6:806:2b6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Thu, 25 Aug
 2022 22:42:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%7]) with mapi id 15.20.5546.023; Thu, 25 Aug 2022
 22:42:51 +0000
Date: Thu, 25 Aug 2022 18:42:46 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Ywf65i1R/X32vwKA@intel.com>
References: <20220825222315.58696-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220825222315.58696-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0074.namprd03.prod.outlook.com
 (2603:10b6:a03:331::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 906ea837-6cfd-43db-ecfc-08da86eb2420
X-MS-TrafficTypeDiagnostic: SA1PR11MB6992:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jsmi9W2SoYKBxFH4JBJtEqru708xZhN6/FsM+nPzM5PFo37atti3Fmw5EsyvFaMhZjyeswJyaAI0rgBTSIaHz7JHwpzguyumJgxG1JehebF24Ch0WvzY37CtUbphrm4ym9PrX18nFHID1VWB523yMZa8SKmzPhBliSnGvjlRXDABrnhYt3j4R9/LTOxajYGTHGUebTWJLwkm6s+KM5Ym8YphetDQ45TJ1rzol1mjI3Qa2fEJ2TngqB8rL0RXDJReDh0liRIcGUJKA1gGf3/f5PFIlvoDVlawZ31KiMd6JmSIga/wVm0mue7k/IWacL3z/oO41qSFHJ47SFlNURxs7QWnUu4CMM6PljFd4ya4ctTZ6iVhk15wIv4Sr3iKE0KIGQUtlD5YK7CwWdmXestf0aekUgj1NByfjFZ3KNhOMrUJuIv2Wc/BgeWm9+PgEvOkgdHMSUKrpJU+zjcoasEEmXR8nORETxiLSEQiC/6vhIqJG7CWW4tsrZfCm2iaPj86/cZwcP2Gvft1QfHLKawhwV4N+hrbf3qpXRS8sh36586oeAsIM9WOREw9P2y+6qgUjpeW3HY7ftwpYmWProVUNK9IZMNiiL3ErzDSXx0BNOJkYJX8dNtSQ1CH1pfk8bZFyjuSgatEkahVeHgHfNlP6ky1zMX7GltiPcAx3GSUMeIAYfT8F2hWCmNGWuKaCKMnZUkfeGdJo/41lphOjidPMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(346002)(396003)(39860400002)(366004)(26005)(186003)(2616005)(41300700001)(6512007)(107886003)(6506007)(6486002)(86362001)(478600001)(38100700002)(82960400001)(83380400001)(6916009)(66556008)(8676002)(4326008)(66946007)(66476007)(6666004)(5660300002)(316002)(2906002)(8936002)(36756003)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ule/zth8N8n4yiE3iRlGHB44h4Bije0rzD5NdrWYmG8Y+teInho6szeFL58n?=
 =?us-ascii?Q?P24P9Mdi5AWG9u9zKeIuv7J83ldU7SBXOoHKCrNLPekF+ZKx+y9keAYsxauG?=
 =?us-ascii?Q?lhi3FJ8p9HFMikP3/UszoC2TmbZqic/KXZGkA6xkhkNe6nfI4cp/wMiemxd5?=
 =?us-ascii?Q?Cd1D3Fl11Pl5wriMSenbSugoHIy4ELycBe5D8tLakLfrvDxqA5QqxroRg/1P?=
 =?us-ascii?Q?5DgqzraIJAsITXhWYUC6VoP7GPDGPGpfpqoNCbKBaAP22YQfBA5n8GSMLc2/?=
 =?us-ascii?Q?YZd/LnldP0YisHOPV322/2WqBBrcIHSrefZfapACCmXvQ+ptmm+LE8RWQJnn?=
 =?us-ascii?Q?3PRPRBuybQK7n5KkCMQJ5YkJyQKlMXEVP9Khcb9fEucIf70GOcjekWCvs7VL?=
 =?us-ascii?Q?mIGoHhXEZOAOY2q2yUO7CTxCeYjhJCWY5ccSoFn/KMziZ7tQ/u7q4SBBDbw8?=
 =?us-ascii?Q?M24e9YzNv4qGPHIUHgCxZhR6l42r1jzl2h41vODCX04mjokuLEuG7It2tgZ6?=
 =?us-ascii?Q?rgx7n5H07kWkcXpqQT1Q0fIkSYYDDYjzqEGmObQZDF30hN/yxxfT6jULblzz?=
 =?us-ascii?Q?hAbF76uMEGWOt6mXaF7HGIJXPy+cdB5Wgppny3cr3lHOsop5gShhKo8TlLLZ?=
 =?us-ascii?Q?HqX/rp9oXbPUBJUfbbnyK9G2LRr2ComgXs2MaTLaEohpNV4XwOqybO/uupQc?=
 =?us-ascii?Q?YjaUUp8fg7BQUJyRQbYMs3AMYDZdH5ByP6G9ltYzQNs33TPkoVaF8yONmPaD?=
 =?us-ascii?Q?319yQQoBCMFY6nrv4QhWi3aQbM/R80k+w2rp7QEOHug7MYAqG2I8Tu72xh+H?=
 =?us-ascii?Q?QARCtZULEKEmBAx+VidD7BYqX7ziFcR+ZTRCGf1Em9Go31pGSy6dLHeERIJL?=
 =?us-ascii?Q?ooXx0sjAlZIQzKDvKtHcf5OGY/TXBFanuFUNfLdcYD15DRK3CPmmhlCTgLZW?=
 =?us-ascii?Q?HB6SGAnpPa/rnIKqovK3wRHvLb1XIjd+zCPAZ3kHBgfQ0dl+BnwTTrqjrPwe?=
 =?us-ascii?Q?7ZUgiXNB1QydCmOrcHQ28ljuWXsPme1BTJXY55++ZN7+MFa5+ytGJlgrjcDE?=
 =?us-ascii?Q?jVFs6hpKbXo6EsxQ6mR6i/1Ov7JLhqrUZVJBSo8kVJzEM9pqD++3sKSYd6S1?=
 =?us-ascii?Q?TzKVIPgkxDGuNNWZTNFiTkAvQiuHPPK4PRBU9QTrx8YAZ45WpGjSUEibmP0k?=
 =?us-ascii?Q?N/a5ZtiVYzdjtMQFHMG4mbuyV7xjE3Wz/iaoY6XOS24/j8OSHd350Q2p8bRY?=
 =?us-ascii?Q?IDH6InYCKlnMxSLrFPG6xkqYgT4YacgNexruDqMygoILi7js7KNxhC8QD2Po?=
 =?us-ascii?Q?MIbMFFrjstYgeroLH3kbFAaLy+LBjhqFRZni7E454VFt4CAJiyFFBA5095co?=
 =?us-ascii?Q?R1Q3LmSkwwOgirpsCX2ZnCUUzLto/Ibgpr+d+3xlNlOjNbkPLzEKDAUyTVI/?=
 =?us-ascii?Q?79LpoHJqpCZSaMOMvomzFiKgP8XU00u0En9iPcsfZ9/vSQESBy1vGcqyv1/e?=
 =?us-ascii?Q?nvXN2nM/j5l0SHWBVRHdSE+laLv0xw6IWhWZTTboKKxPtyMXi29PoNt91K98?=
 =?us-ascii?Q?ENq6w0C88jY5ZBskNEZw9g/iR4bksisQ/wQO3xIY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 906ea837-6cfd-43db-ecfc-08da86eb2420
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2022 22:42:51.1357 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r6yvKblEXk83uOrAnJxk+ntDphTMBsT0e35EmQAV8bUEovV1jFDaw68+FV8dRyeFysusVu25DIV2lXZitOj/nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/slpc: Set rps' min and max
 frequencies even with SLPC.
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
Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 25, 2022 at 06:23:15PM -0400, Rodrigo Vivi wrote:
> We need to inform PCODE of a desired ring frequencies so PCODE update
> the memory frequencies to us. rps->min_freq and rps->max_freq are the
> frequencies used in that request. However they were unset when SLPC was
> enabled and PCODE never updated the memory freq.
> 
> Let's at least for now get these freq set up so we can inform PCODE.
> 
> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Tested-by: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

As suggested by Sushma:
Fixes: 7ba79a671568 ("drm/i915/guc/slpc: Gate Host RPS when SLPC is enabled")
Cc: <stable@vger.kernel.org> # v5.15+

> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 8c289a032103..58a82978d5df 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1128,6 +1128,20 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
>  	}
>  }
>  
> +static void rps_basic_init_for_slpc(struct intel_rps *rps)
> +{
> +	struct intel_rps_freq_caps caps;
> +
> +	/*
> +	 * Even with SLPC we need to initialize at least a basic min and max
> +	 * frequency so we can inform pcode a desired IA ring frequency in
> +	 * gen6_update_ring_freq
> +	 */
> +	gen6_rps_get_freq_caps(rps, &caps);
> +	rps->min_freq = caps.min_freq;
> +	rps->max_freq = caps.rp0_freq;
> +}
> +
>  static void gen6_rps_init(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
> @@ -1970,8 +1984,10 @@ void intel_rps_init(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  
> -	if (rps_uses_slpc(rps))
> +	if (rps_uses_slpc(rps)) {
> +		rps_basic_init_for_slpc(rps);
>  		return;
> +	}
>  
>  	if (IS_CHERRYVIEW(i915))
>  		chv_rps_init(rps);
> -- 
> 2.37.1
> 
