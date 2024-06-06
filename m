Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9990C8FF19A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E648310E364;
	Thu,  6 Jun 2024 16:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fuecsVyA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95D1C10E9ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690049; x=1749226049;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hAI84cLCxwSbu7jIhpxWKlJFhouwglHhvx2QMsgt0Lc=;
 b=fuecsVyAbbNjmUix3g3b7V2lyN6ZP8dnQzg24XKSLi1YcHrvxYymosmi
 SA5B7LyifYyAV8xyxMpEMtRo6v8fNaU4esiwRcaP4TRvePpeRXtP6CkJS
 O/w/i3GjCaDfwus8qYrdhJ9VUHBbaotX0DKfIp8E+Jpv/il+VHmaCXcX4
 DbTgUp5Z+qt3Q1Iovx+6KYTFNbYB5yWVjNZ/gTNlAPd2c0cAXYyQfBIgo
 Z5ZHsT5PuGF2XDgfm4Jkr3KqSo5iTz9NqpdeGU9S3Ceb6BY88B1npIdmm
 zIbrVZANLLTTrp/uqNpHmjHlJFUzJRIF4jwmNPkTGW+ueOZxOTgSLAF/N w==;
X-CSE-ConnectionGUID: iZBjuU1uSvCE7R1HbMrkpA==
X-CSE-MsgGUID: r5bMLFXnTbKngp+OWE3TlA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14506987"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14506987"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:07:22 -0700
X-CSE-ConnectionGUID: fnQ94bJMSH67Cp/spocMGQ==
X-CSE-MsgGUID: f7L0zO3TSV+uEhiydHdgHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38023999"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:07:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:07:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:07:20 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:07:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7PAUCtQLQPleHF74Qd3HvI7tUKXLfT4t6gDAKo/2/5vn1jdKBxMKD28zrP6R5sdGacrzEGUl4AWGih2NQNwh13pOCIm0xfV6KnXcpJxAaaEJ5SEB6xc52rtpen1TvoaZsXIv3kczofYhMQiEMSeEkGCoypnG43JjL1b8q68WZdG1FPlESBW7JqSdmh0iMQD2ieAv53LZsEI15ggC5CmpLviA0K+sP2EZepGQs9XWGqc98DBEjAgzQtdZBfVF2BmzlrSp2WpjXYS0U2Y7hzxvEZrBGMFXZIxymIj/dla+6xFf7A/kv9vtSNQdJKVxCGxDq1oTmEp4IX/Aop29CshQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jsRBPyKmyTc4slpS+67fDeoH1hSQu0aXGV1+bZFSVtQ=;
 b=N8nkOEZEE94RD3LEs3YUoQEDydwSDzQRFx0Y2qj7I9Xd3uWXLsB4MLwWbXW2AyqGsVb0COe7bGR2q9qNx3HICd3sOGYpxlElOAT9E2ZiVFo3aAMZQTi2czTtVxKmgHKUo+tfsJA8gYMshiMIW70EyJmyxTl9AXmgEH+Yp27R5dHR+avbqC9l0bNVS3YAuucaZWH/FzhEa91aWTe2jZ+J02L+1dS4GB2MktIAp17HtR6ZiUafsHVKT3GSyNCp1sGYzzY1/9xNhhjK4KbqNB7yLzACItbyUCAloE1mGQNa5sH5+QFODnf6/yoAaHH1YwY0XdTe7fs3yfdkE35i+AGEiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:07:18 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:07:18 +0000
Date: Thu, 6 Jun 2024 12:07:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 40/65] drm/i915: pass dev_priv explicitly to
 _PIPEB_FLIPCOUNT_G4X
Message-ID: <ZmHes425JVb3485r@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <de4aa3b67aa3b61e5a5de5eb7402a08d6a9cbf6a.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <de4aa3b67aa3b61e5a5de5eb7402a08d6a9cbf6a.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0037.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: eddc04ff-28e4-4097-b86f-08dc8642bd31
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?g3/2SYQdDlJ4FYx75h/nPbK/cdlgWH/cjAsMZoR6VpOZkAW14992TsNIRH+A?=
 =?us-ascii?Q?LCfDEFVUw6NkSV8iqhyKvwkixDBe+Hm8JNJNWv/gaRnaNodV2a17thTVlNhA?=
 =?us-ascii?Q?toGD79g7j9gEbS7rTwvzHhZ73ZYB43y216ks0SnPH7wfWs7uhVAQxY/TkpBN?=
 =?us-ascii?Q?nlwlmU27GhkgblCtT28cz5+ft/f99U6hf7vLZ3rHyDhxczhCJY6hZ7eQ7Wv+?=
 =?us-ascii?Q?Fp44nuxeWCPHVvUcujHMArEWrRsjoZm7SOJxf1uoW2Jo1dSPEkNKXXz+Zc2z?=
 =?us-ascii?Q?w+8F1NHRYAed110fKc5Myr0vSAhnzskzU+qQK8nI+81stZzEC6bChCm8yrXt?=
 =?us-ascii?Q?gm0dzZN8O1POEQtVhAWATVmVR5yc3eB9Acb3d0+6/qedpOI5rPeK8IB46CmQ?=
 =?us-ascii?Q?A0HfZ4zyf2V+QMVzNeFY7mKKxdB1uBBcafqJ3jOIUrPv6MMf/gaTcjQ6zbiL?=
 =?us-ascii?Q?LzvnlwkpZtvRZ5g4ZliX+3ItVVDfNAp1bnbv17XROLkP3qxH8q4++U/CZudH?=
 =?us-ascii?Q?aW/I8Lz2IHpmvRuYeXoFva47eOWLo10gNpTRU8M4K1Kit35LPb26nrLopjfG?=
 =?us-ascii?Q?Z7Nc6xuWqZFjrRzqTHyfrNRllTa5EjEAQraT6UTCIJn5FtQ1cnyF/lOXZXmo?=
 =?us-ascii?Q?WIoKQf5xSFsrusB3M8gYyfyIku8nin0QDVJBVxJRrv/6gR6bNJNA+I7mMGDy?=
 =?us-ascii?Q?eQcqYHTMaXIHESSAkwWq4o3amIzn2zh6CuSx+bHBn/A/YOvyS2LOhre0Pjnn?=
 =?us-ascii?Q?KmN2OoBN0kmlrxInSB61X/8mRokRGWPJfeLC3Z+XrpitfoDLYWzkifFFC4T0?=
 =?us-ascii?Q?DzrOVfZSbStRoF1xzkM/mWYiPwBk+WcXJ7OTtLfex1pPFYc+CwB6mhShTiga?=
 =?us-ascii?Q?WhUxY1qm6IVsGEtwMUX4JvRcgXZM+L4UqceO271LF4s6eWK5f44XmY6yuG5D?=
 =?us-ascii?Q?I5i92rDyRyrCIgCmdxAr6uQ+PrIrSOVNb15SQ5YawiBtxmwrIWUqTaUXcfne?=
 =?us-ascii?Q?c5KAkh+Su9OWzft8ERwZnkqwB5U8/P6N8cXx5bq7Dj1i7n1E27hL/XY5jLng?=
 =?us-ascii?Q?Qr9weDUXHLIJI6YJIi04aUgMv/DqMlrUpEmWdO+RTltAxXVv8HbIl2RKKyHJ?=
 =?us-ascii?Q?fCorumBDUb+1MT0qCzCEltGGY/xx9+u09QkfgYXR7ISZaZp/9ogQcZdnV9Z3?=
 =?us-ascii?Q?AYA43DjQtn/YDZAJ8qru1i2yjKe/I7HKBR8wkT+Anze1AabA/bH2yJCBuqLW?=
 =?us-ascii?Q?cXVHD+wucwzBQx1IUgPtyrmV37OtvcWt5hIxt78GZkHEgMJCLYvfQunqcrR0?=
 =?us-ascii?Q?A4PS7jvxQEUUKQbo0xN7DCYf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?G151NB3jjRuxTA510DsJUnaID6i0AbNPA8MkDzVH+cbKYD8z5BzEtfHQuw/h?=
 =?us-ascii?Q?z4pLNfVnQjihihtsQ7pKIUAXxK0zHGcXho7y0Sh/bc92WVqe4uX5NFFIk5Lr?=
 =?us-ascii?Q?io2lcSqvgeiyRa0VZifmoeDmYL7u20OICHTIYoadiYAzMi4Mb1kdsrvQV3hp?=
 =?us-ascii?Q?I7VyE5rG62p3RUGWU4R5RAiIKldJffOJ4GEqYKb12iQbPu1xUnONq3iGEieL?=
 =?us-ascii?Q?dRw25eVh6ehEaBgSmxD+92fmP9V/P2DLsAc1iZ8BFaO84vwG36//rroSkxcl?=
 =?us-ascii?Q?szZvtn11USLduyO2bJanYq4zj7tk4rIOZj/qggzlOwRpcoZwP/vCh8j04abm?=
 =?us-ascii?Q?dA+aByZoGkMrCoI8lss1q5+ZPuM0KhUYVnpNGtQinS2whX+eK8IHK9hCPtnH?=
 =?us-ascii?Q?MdI404GH7HJ/rXaGJkYIDhVifblkfG5YJK6ra8Qc9B2E1R6NQ43QmJCKBSCz?=
 =?us-ascii?Q?Ww7FVARGCoaLNR6g3uVJz0SjuCPZ8sHNWPSMENqau/r/TrK0DDwSP1MB8yl+?=
 =?us-ascii?Q?pAbfFgyYPKq6mrcWfagsQcqJCI+JWb8E/bTaH1pRPOHwMhlMFhnVPBaTADAU?=
 =?us-ascii?Q?UbdXhDmr8OQ2bc025lMom9mx7hFTC9Rb8v3yKQM5G1BJAuDE58C57xBc8Ks6?=
 =?us-ascii?Q?AGRBS9IuzNh0Ahxad/SNbm2hWcyAULlutZsiXgATi0jXQBOfSWyAXD0Y/0Px?=
 =?us-ascii?Q?lI/OvCvAl7zvs3UB0yk/l4XuofKI/t+8klqWDw4QM7Li7eNeiioseXBreqwQ?=
 =?us-ascii?Q?ilMlulVTkzRmwWOFYf9N2nkFYmMQoZAlWVpp8Z7svn+/+LrcueBSEItQR8s3?=
 =?us-ascii?Q?OFfnyq5C4/4v836uSLn3ooLsoDKzheg7idV792+V/BiZ3MMZ2t7RyOG8CNr3?=
 =?us-ascii?Q?icKtMxxibvdWb66XGrxX3HpeXsqxVf+2QYs6jV78PAClwqhYCT+SWL4lm8xg?=
 =?us-ascii?Q?K5PpAx1jKU6hrfIUFnCvc8TfdUJ9SAP4zENEpM+F3+epz69Wz4govbRikTz+?=
 =?us-ascii?Q?PEEEiiaKdr8ldx/DriOwKBQ6sj4sZiRa/oQrGOK6tSchCSGCziH3lyR0V/rw?=
 =?us-ascii?Q?yx+h5PcQE52+qZYlAkQ0p9QxZvYEUSATlwZih3U8GBvnBx26FAZDpjTluZiX?=
 =?us-ascii?Q?gAOQnGU/jfqIa9klC8SDe29hKOjf7d8Vj7s0cip8hwyiQ9kMDla0ugp5WYNP?=
 =?us-ascii?Q?d/m7wH//dKyTofhUQ7es6JgP4h4I/FbuTGYpFJoRZ3asCVW3MDVGQ9s9pkTi?=
 =?us-ascii?Q?H2TEfmBpXiY6nmX99LsH8XTARmS2skWXUwmy9ofNtEz/Bm/ha16YTRw5ACo7?=
 =?us-ascii?Q?A9tx0huef2f3WVIh/PLJXurnYrtTx/4cLtDYVFkJMG6EWmMdAgU4mNHanryz?=
 =?us-ascii?Q?R9XLPYgki9O1zfOs/HwzbKCRcoXJrbWU6jRdGh63M+aD+vX/2FDIzAZDIdkf?=
 =?us-ascii?Q?I822BJiSDb/rcStZIwhn5BeWKv2WHEjBMJyCNrwOOsUe4YFSxAnlgMHqN60+?=
 =?us-ascii?Q?HijQi+iqd6mLBi//XwLggp1HDMkqsufhHPBq0Gc+Qx1rDIWYUSjnIT8/7jUE?=
 =?us-ascii?Q?kfMAyitMFnevj+VKTFHpxKDaNdd6cGsPo1olFujk?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eddc04ff-28e4-4097-b86f-08dc8642bd31
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:07:18.2080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FVbabfUeNeJ9sxPmwxybX09onQqMmyAK6UfCB2IQN8fMgOBIDB+l+R2huDytxn862K7fgO82LYaJZv5A9jjuBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:25:58PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _PIPEB_FLIPCOUNT_G4X register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f5367ec58400..fb1dc6f5e903 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2302,7 +2302,7 @@
>  #define _PIPEBFRAMEHIGH		0x71040
>  #define _PIPEBFRAMEPIXEL	0x71044
>  #define _PIPEB_FRMCOUNT_G4X(dev_priv)	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
> -#define _PIPEB_FLIPCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)
> +#define _PIPEB_FLIPCOUNT_G4X(dev_priv)	(DISPLAY_MMIO_BASE(dev_priv) + 0x71044)

G4X? and many cases... starting to have a feeling that those
are really not going to be used so soon and should be removed.

but, again, up to you:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  
>  
>  /* Display B control */
> -- 
> 2.39.2
> 
