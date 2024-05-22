Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 238A38CC7A1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 22:15:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178E910F1DA;
	Wed, 22 May 2024 20:15:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ks9hGnCE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 511C510F1C9;
 Wed, 22 May 2024 20:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716408946; x=1747944946;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wPgmaax5UmDLe6+EsSuH3uG9FlFmbpuxBiO89iGgjm8=;
 b=ks9hGnCE/CLybFsB0c7Bahn4UJ0Rn4IAhcQcJ/SUPctVV1s4T+hzSD5B
 8XGSOXfkpwWVpAKTeW5Bp4c2cnXF9q+0cVLY6khSS4xA+DfzvNIa0fAty
 e61eDcQEo91mX42XSfEtVFzHv4QGkxkYCYlcC4ULmQw6RJ7wB2Av4MGEi
 hH1RUDxAWGPKaXrtm6XgZo/dqlpo09xpga+Owvaape9EVIbGoMjHJHi6W
 dVODMbgUFWHLpnm4qmcAcqpEOrvfaongd0WDktme9EiU2n/UlMHyeKqAq
 0GiI2/XA4AmkAk9IKyydeomVuf06V4k5tJzG1and2y2LKbfrbSz6SwxfW w==;
X-CSE-ConnectionGUID: BoM2XMW8RIKIr78Jsuic6g==
X-CSE-MsgGUID: UIK1xuUxSHWa7E3Hgdmp3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="35199848"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="35199848"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 13:15:35 -0700
X-CSE-ConnectionGUID: /MGoz3eWSCmFcFk6i4gJdw==
X-CSE-MsgGUID: Ahx5KOWPQzmHpd6TaZZu1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33866605"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 13:15:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 13:15:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 13:15:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 13:15:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QlO/qKYXVowAdEQ8QEkW2kL10NjELtp9pkiJlQV3tVeGO+xf9pbDQPvBTgWUnevHBHvktj9aUEJsTr8TqULsX1K4g4t1DDGoJXE2NDYoKG8rrO1fM49s8kTHjLPyfjIvW/hvfK66UXrEUKRwFDL5hQVSV3RZZvFuAWtiZnOG8C8CdFLVHWK9oimy+fB8JNBCnIfobgRYdtS3OTdrciDC22ZF74oHkjfDfqHuH8fc5WA8YS5EtdH8uu6wNnMhPLerN/PR0aUWlQWtwqj7YOqxZ+mcO7C2ySoZ+d4fWC3dtjLpAihT0SxBtYkRzd4cFlrqX/hP7rbS6pc43uXCG0d9Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7OZkUoFFrdFpR8J3s5kzkaQs6BilW/DeUiDmwhAgThY=;
 b=UHJfRUXqDKStfOe9vJT+blPQcM2UHK46bOc6Ir03zBm508GJcNUBp4MFTIt41o+Nj+iznFp9Po1kIAeeVi2EXmP6EMCWQcPKvAs+vgc7OFqVlOsLLWPoJ7olTxk1FUUpOywy3mQ9WQLExAeYnSS36sH0DjIo4Wxzcwd93ouoHePQ/9bWNQ1iW12agsyoAHFkEtY5bFZOB9AqNshclO/r5+8UopeldU5emXaTzLZxYbMS9advVgZPxQPSq/KZUryFVUYFUhe5lMaZItV84Urt8QsGanMiYXwXtkws7wAjpjHVOiJdnjPtp3ndjPuCWo48ohb81vKULA02aljelyF3Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB5017.namprd11.prod.outlook.com (2603:10b6:806:11e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.20; Wed, 22 May
 2024 20:15:31 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 20:15:31 +0000
Date: Wed, 22 May 2024 16:15:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 04/10] drm/i915/display: change GMD ID display ip ver
 propagation at probe
Message-ID: <Zk5SYGeCoPY4gzBB@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <1610e9f5675b4d0d4f16ecd10a86486ce309a283.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1610e9f5675b4d0d4f16ecd10a86486ce309a283.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0015.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA2PR11MB5017:EE_
X-MS-Office365-Filtering-Correlation-Id: 7497a5e0-9148-4145-821b-08dc7a9bee49
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Sw2GgBNWMUc1Ovka5jB0BJ5yRYpeZqseO18i96MmrVwmG5w7GvaiALqPu7bF?=
 =?us-ascii?Q?wm9OhVcKP8F4yF6O5kl64MIUJDMuUvbippD/IZOSvQBBwWyymLt+pYyLW+RE?=
 =?us-ascii?Q?awjRAvwNMuRlqMMwGkQW7TzQ7GCyd+wdn9Qba2wVEM8cT1XHmkBfY1PDqo4J?=
 =?us-ascii?Q?x7rJLCGtkbHtJoYSqqeVywTFGVaKCcc8I3WYUAsM1hNXAxmj0jh2cypniDpy?=
 =?us-ascii?Q?Kb0C57tlzQWIPirGSRyHTqJ+DswRMWReTlm9Csa5zacVJr33mzNClmqgYQ2v?=
 =?us-ascii?Q?qzZKy80H2+BMKtgLzjYRFDe/OGnB+gSIHPRfnJdkKq+qCWrjWOhEnEJHDLjM?=
 =?us-ascii?Q?cnYYSpqIYFJieaMNAKj82nzp2gCNK1UnrW+jkWpH7WoAZJfpZUyqQV6lsUwU?=
 =?us-ascii?Q?/llz6NPHeYcpafMHp1vLJl1d0qrWTAoFEMxJGE6oszpJPhvJcd7T3qjkicZA?=
 =?us-ascii?Q?YHKwOZzUzhGb+brrirkPRGE6eankg0d5aNnG3xkFzSzEwATlBozO/Qt8kyHR?=
 =?us-ascii?Q?zO8p0jgIHr879XHxSzxx0TnIfLma5UCms72r5+Wjg+Zex9n2s2AjJYT21B93?=
 =?us-ascii?Q?EjZdaPmHLIurc10XvDjoDSoGSLPIfJ9Y3ESjt7deA3SEwntPX5nFC54utWNn?=
 =?us-ascii?Q?nry/It9sxtsci7y/mpiKNjfShaWc19yo5OPqikL124FGXgvjEaQWo6wmkWqe?=
 =?us-ascii?Q?SxLxmMTgAk2BVszCNhYw64zM8Msua+y6+WxszWpJaGeE+blocnrly8pN38d2?=
 =?us-ascii?Q?WikekUzgFrqBTcEOq/5sjrtXMiRZvFFgtyXTSsnL4izTHY23+X5ElAQ8nLES?=
 =?us-ascii?Q?cty58oypm5NSHZkeJw2BarKt0Xv8OonMRnSih1Gok8dYkh2emkZr/18JsptB?=
 =?us-ascii?Q?ymhQbpDzqkebPwEbKPwRYo9VS2L1R3yuJFprfW7n32OxuD5bQY0eKHHill5k?=
 =?us-ascii?Q?CtQ2JKGLlla8nn8iaBdkQrd1qJfseZWTsihyrZAjc1LYDZWESkTvNzgTxZx2?=
 =?us-ascii?Q?gAR+OAFY97ljGuyHGDErDU/3OyK11Hz1+jSNWSVYAkOQ3IrgN5siI4J/Wdh/?=
 =?us-ascii?Q?E9N5Ou8+/E9xllRZOwkRmoADHyF5oO455veIvr9d4BPDEiei7Ywxh0x8WAws?=
 =?us-ascii?Q?qCX6i5Fskz8Q3Pb+K7aN6CpQ7WInGncG0FAjVaU2kSla0/06qXzhK7OV3Uep?=
 =?us-ascii?Q?/qmt1ws/85Supe/V0jyO+arpjoR+I2CMKNwPHGLGaD8EG198xLQUbw94BO/y?=
 =?us-ascii?Q?xBahXHnTpyungchPChNQkTpBXThqbh1Z/0r5SEz1Ow=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i3atGIrXZVmngH7GjuLWtyEj7+NYoy6D13PdeGHzc9DFF9k4ORpBt1SFeSup?=
 =?us-ascii?Q?nmgMgqzaxeS/alPtlT72YohmfJNhEos7sTZ9j3xBs9vZUIxdzJxBGwFUendN?=
 =?us-ascii?Q?UObCmQrhm4rS1RezR7KFJU/Hz7aGG7tbyUs7CDFkMqWVtEzYK6H/RzM378NU?=
 =?us-ascii?Q?N8K3x6FOazrlrrHhzyJOp03qNPRqI18R0kcc68IIkVbFY4n/oV5tA6tbs1np?=
 =?us-ascii?Q?I9chAqSPa/dqEufdLTCHDvPp1SyRivvsB5FU1eBFEYEWHiirHu5aTTHusSAr?=
 =?us-ascii?Q?antP3ZzzL8CML78wWCdFlA5tHpBK7E8ShEbyscqbFv4YBEXXFB9P5RIKscpt?=
 =?us-ascii?Q?gG3SKzwduaokBvXQMa4a5xhN6GiekTOR1hXRWA4hNO/6isE94L7tUXFtWfoY?=
 =?us-ascii?Q?jvYG09u2iem244LfIngQ3N+XPvQ/VXwRPCaR6HrFCh3V8hSS7VnUztE4Pcnu?=
 =?us-ascii?Q?wuV9OFcHfRAa415XabdcBevDQpnakWD9zOpsa0ZvQRFad/shHtGLG4VghD3m?=
 =?us-ascii?Q?3flFQWKvhnDMZPwtHKIVAyspvOqW0k1opeU3Vu1sA16zNHgqLbdjCl0b3T99?=
 =?us-ascii?Q?7KclFl2cQJ6Dw6i1enq+h7eBzlxd5ynL6aSqWb0KYw9Bgig/jLvPCPzcDEbK?=
 =?us-ascii?Q?wuZbjDdiLpvxhlCrrOA++fR4L+32XZQCJN32TYUX2OEaoCaZ2xwcyvfDqiue?=
 =?us-ascii?Q?FJf7fS+r5KXGpvaIGHWHO6D1cGK5LlwilCn349oe5Wpg4agAmTlTA93IX4Cd?=
 =?us-ascii?Q?pzY+AlpxsvH6jcWv5P9W1HE0q5qlcjhHc20C2tlWd3AsGzA3875DClYGH7qu?=
 =?us-ascii?Q?5WUB4TYtkWlypf+wMr/Avvjv3Di6KfuNe5ndYrErGA8TtuZBtG2ei0UTranS?=
 =?us-ascii?Q?sRayt5i8siWUN8V8wOG3JVYv8oFXMSKFb9jJK/3lDk/6Hlm42Ut4YS+8REKF?=
 =?us-ascii?Q?T6ZMcQaq38/uAaoGVEq59P+fgu4JkC8fjt2hx1q7jdw+VK1fHYeBloO8UU7q?=
 =?us-ascii?Q?sUR/Nq6Z3QuI274RzI8J8aFwjfmjoOJjNiMoF4D46dIuALrNas4NS/d/vVtG?=
 =?us-ascii?Q?h3IqJM81Tx1CapTtyuWO/Wh4aGw4M7HWTrL1gYc8cc6Q5FNZtms6FsgGpjHK?=
 =?us-ascii?Q?YAbs5EQ8XDXBMBUoG02wy4zr5zLk/KhWuBTd4q6rflmQQV7Ga7G430SYmv6c?=
 =?us-ascii?Q?aQQC4uRtmsmjOtbPvx0dwiXujFhP78u7MMloZFUosjwS8ADj9+hBYaCq+ekV?=
 =?us-ascii?Q?uwOoLfIyFoPbIOgGLFaLgcU7VPs8CyTYR73/5/lZ17q2Ii+tcZSMSzTwRwJE?=
 =?us-ascii?Q?EurUa1JvgN40IvNavLnLU5a3rkk5BKujh+2CovMS2whOGd8Sfkt72rvg8IYu?=
 =?us-ascii?Q?DTB6Bxv4smbEjSHcOimiH+RlPbf7DorTsegtBVO48dW5WYFV6aw1s9+XorQ3?=
 =?us-ascii?Q?oEQ+dHsoesUjT/n5SjNTxyPqLMAxZksr0N2wok1r/9UPaUczvTuv+b9YlOoo?=
 =?us-ascii?Q?uRm62ebG0ZO1em2VgTDWT8SOv2HaiphFAZqHh++XmWTyOsFIWbEQCW8N0epE?=
 =?us-ascii?Q?ozBwq+mcSLwRskfkUddRoDrWU3O61lLN+EwGFNdPVUSEQiSBTR20QZrhomYe?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7497a5e0-9148-4145-821b-08dc7a9bee49
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 20:15:31.8008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uetMn0LyGHZ5dqXloj9g2vWOviTnfQkqhGAuQPhN+zwPStCnr33FwHI1RUWEqtEQUhmMCVaWuG72U2WJO8ht7Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5017
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

On Wed, May 22, 2024 at 08:33:41PM +0300, Jani Nikula wrote:
> Add a name to the display ip version structure, and pass that around
> instead of a triplet of u16's.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 40 ++++++++-----------
>  .../drm/i915/display/intel_display_device.h   |  2 +-
>  2 files changed, 17 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f548a7b0ec23..56b27546d1b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -862,22 +862,14 @@ static const struct {
>  };
>  
>  static const struct intel_display_device_info *
> -probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step)
> +probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *ip_ver)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +	struct intel_display_ip_ver gmd_id;

hmm... technically it is just d_id here. or perhaps gmd_id_disp ?

But I'm bad with nameing, so up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  	void __iomem *addr;
>  	u32 val;
>  	int i;
>  
> -	/* The caller expects to ver, rel and step to be initialized
> -	 * here, and there's no good way to check when there was a
> -	 * failure and no_display was returned.  So initialize all these
> -	 * values here zero, to be sure.
> -	 */
> -	*ver = 0;
> -	*rel = 0;
> -	*step = 0;
> -
>  	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
>  	if (!addr) {
>  		drm_err(&i915->drm, "Cannot map MMIO BAR to read display GMD_ID\n");
> @@ -892,17 +884,20 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
>  		return NULL;
>  	}
>  
> -	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> -	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
> -	*step = REG_FIELD_GET(GMD_ID_STEP, val);
> +	gmd_id.ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> +	gmd_id.rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
> +	gmd_id.step = REG_FIELD_GET(GMD_ID_STEP, val);
>  
> -	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++)
> -		if (*ver == gmdid_display_map[i].ver &&
> -		    *rel == gmdid_display_map[i].rel)
> +	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++) {
> +		if (gmd_id.ver == gmdid_display_map[i].ver &&
> +		    gmd_id.rel == gmdid_display_map[i].rel) {
> +			*ip_ver = gmd_id;
>  			return gmdid_display_map[i].display;
> +		}
> +	}
>  
>  	drm_err(&i915->drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
> -		*ver, *rel);
> +		gmd_id.ver, gmd_id.rel);
>  	return NULL;
>  }
>  
> @@ -927,7 +922,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
> -	u16 ver, rel, step;
> +	struct intel_display_ip_ver ip_ver = {};
>  
>  	/* Add drm device backpointer as early as possible. */
>  	i915->display.drm = &i915->drm;
> @@ -940,7 +935,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	}
>  
>  	if (HAS_GMD_ID(i915))
> -		info = probe_gmdid_display(i915, &ver, &rel, &step);
> +		info = probe_gmdid_display(i915, &ip_ver);
>  	else
>  		info = probe_display(i915);
>  
> @@ -953,11 +948,8 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	       &DISPLAY_INFO(i915)->__runtime_defaults,
>  	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>  
> -	if (HAS_GMD_ID(i915)) {
> -		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
> -		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
> -		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> -	}
> +	if (ip_ver.ver || ip_ver.rel || ip_ver.step)
> +		DISPLAY_RUNTIME_INFO(i915)->ip = ip_ver;
>  
>  	return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 17ddf82f0b6e..fd2d03bfe8a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -111,7 +111,7 @@ struct drm_printer;
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
>  
>  struct intel_display_runtime_info {
> -	struct {
> +	struct intel_display_ip_ver {
>  		u16 ver;
>  		u16 rel;
>  		u16 step;
> -- 
> 2.39.2
> 
