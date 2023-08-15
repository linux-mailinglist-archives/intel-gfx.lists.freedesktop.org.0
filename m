Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C0877D362
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 21:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 727B210E27D;
	Tue, 15 Aug 2023 19:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51D6D10E27D
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 19:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692127726; x=1723663726;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pY3SJ92eXLwTe49FQEZeO0rHggb4LzWVfiQT8llo4xw=;
 b=FKHMyeDnxI1+gfYPH6TVApNvHQhny/RXGOc74Bb9Kc0g02oRCWDUjC+/
 ESuUwStad4Hkhz8iKFjGdMVBK4ROHKa6VzOFfTy/EZDU9bNv78faeveaO
 9cDc4hRlsOEOwsDOfMY3V0BtudaI1UMLyBAdBBZOLn6jPn88iDYfguv3z
 QrkHWlv+fmCNykl23M5deP8pBkuB2KqjfEmPtsISrnLUef3WfwR3TFhGh
 +MR9O1edqCeZPg+6I/VI87xxnI2j909xyJ5Bn8tadOQbCQKcaPJNITFDN
 OrZroNc18Uo6DPrLVnJ0u70fH1pkq56BeIQJIpwrNT5sxtywJ1A/9MtCK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="352683600"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="352683600"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 12:28:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="763367096"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="763367096"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 15 Aug 2023 12:28:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 12:28:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 12:28:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 12:28:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDWpy7UoNaM2X6a9Gpr1Zr1Gi8+LUvqm5x1sdzdgCVcro9DCyoY7pAuZKMPWyc73yj9En4K8vHWGR9jN/hbNKFhKMox5J12B1MnPoLpHeS5pm8SRLOhnkEigZxSiVEjj6pM10KQb2oV05fsrpGI29r4/IfXalGm3TS7bE43wwXLK9ik1TfJamnMKYTWLBhaKeoWGfSJJ50zMcwk94m+CSvfqj1QossghBQe/+6tn11gvO4G6W5L1irRjbrllwociQ90VrJNxFvFibBfjr+C4xTGaIzobJU6WAYxxCask6ZIE/8nxR1WEO2r7E3ub5pdWeQZZAJsHag8vuUz79y0Kmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NKu2W9t0aTVG8oHQmUc8auDD4oVG4PylmrbOpJulzU=;
 b=YohBw4qeABfLWQE+kkkB8YQTg+Jb24lTzJZjUaUi4hhBaqxmTTkZ8g2AcxZvjwcW3LTpkc/dvcJGWQzO7QiOgLIHzocJwJTVADfsya8WZXe6HFk9N2NUMBmRE3W/s6SMZ1CSKRMIcB1uQdGCqlA/tSwRLTP/lAIX8jiGUFLvBsy3RzJZQ3CPW6N2+5TGio8K8aSi9Jt/6rdguRAf6w4ThXsoPwRkAt6cwZAbqHcQsCi3Sw7C2SIyrsBH9VjHip1ivMs2HtkvfbUAZc1V8OYy6adOQI8ejXZpYzEpts8kpf+6WfWYtEiuU4B+54CF561aLW5T84+S93PtwTGN5d3bZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 LV3PR11MB8553.namprd11.prod.outlook.com (2603:10b6:408:1b8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Tue, 15 Aug
 2023 19:28:41 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.025; Tue, 15 Aug 2023
 19:28:41 +0000
Date: Tue, 15 Aug 2023 12:28:38 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <20230815192838.GO209733@mdroper-desk1.amr.corp.intel.com>
References: <20230815165345.964068-1-jonathan.cavitt@intel.com>
 <20230815165345.964068-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230815165345.964068-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: BYAPR02CA0013.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::26) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|LV3PR11MB8553:EE_
X-MS-Office365-Filtering-Correlation-Id: ce7f7fd6-5551-4334-ad1f-08db9dc5d523
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /WjlCX1/3aQkLC0IB4Jucmu6hjFUVaNgh1wDv+ZBcA6B90I0Wjw5iUGBa8IAi74LOo0Vznng4OVCfsLgp2lAguMasPkwa+upBEKH5gkZSPTU0SbzVxo7f36cEfYswXT0i/HrlWWK1tnu+XW4GgWeJWb7wJNTTRFuXOICSZL4GdPANPnGnK0c/tZFIAN+8xLIoUknqpq0iBx3fNXbyxkFIFRsX1IcvBsV3fT6Y8x3eLY2hxOSX4wyA+ARQRgViITt7pr/LIYOE5MS2O4dh4gObix9icnBAlwDoVMHHlV3n+7GspaILMxmIjIrfmnMDHImLOSzj7/707FlGQHJJMDHM3FQ/dNhkL4K7+ghcFSWiL1vthZqb/ueQeaUdLd9nNLj7NVrxgY2bj/jGwP3UjHrKNOx634CtZhYbqnE7hk+lFmb6PxO5ekcXVFKoDWGxkfV4PIfDr8txqT8oqQ4uEOP7fRvyw6imrbPA3VlMftOJB7sQtf+McmHBBcG1PgWpXQvERcDs1Pg3nrhX04aPMR3bNZKBt+VSqVuluxBwUsFRd5Is4hY7hbrGXKq7pDX8Opo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(396003)(39860400002)(376002)(1800799009)(186009)(451199024)(41300700001)(8936002)(6666004)(1076003)(38100700002)(82960400001)(5660300002)(86362001)(66476007)(66946007)(66556008)(6636002)(316002)(33656002)(6512007)(4326008)(478600001)(83380400001)(6486002)(6862004)(8676002)(2906002)(6506007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WmfwAfZbwPINbPDSYnv7roVaYPW2cj70Dq5n7sy5OOtTDxv8hfpWpg76z1MO?=
 =?us-ascii?Q?PunJMQClLpUUXdULwyxQjYRRe8QEEdU/tBqIk262voK3pfFxg6vWfQyfuIvr?=
 =?us-ascii?Q?KPlGi9rXT7zjBD0cNOQFIF0zejZ0edIMHwN9Pzbo6Y2MdE61n2Yu2KqMrv0v?=
 =?us-ascii?Q?XRKG6S/HBtagNuzMCAV+uDQKOti2mIjCAV+pt8CXfwgwxaJtGmc1H2zss1iR?=
 =?us-ascii?Q?rMXIdVGtIWVOh4NhnCTjOhAKwN+mg3+cxDwi+U3U6aDuunEGHtd+RgFH0JNI?=
 =?us-ascii?Q?mVk7mMQr4NFubpW32pTocEszI5K67XRrHCtJmiOrOmIrtYq1f+uOYUbsDhzN?=
 =?us-ascii?Q?Gzg0oL97C6CCPOhj0moeWqD+ngl/55earAz4VT6zsJN0lCdP/4sUKLth7weg?=
 =?us-ascii?Q?PxbESV6YgSOJvRtwbhz7hr1lg+z/miWGGrphHz8EyluPG9YY4iD2suKG3dgZ?=
 =?us-ascii?Q?m+grsTAUZjR3Ukp+QXFuO9XwZMAewKpEHBdhzy2jgS5PsHcbC8j2181Qyk10?=
 =?us-ascii?Q?G8E6zxarVTOkx+z6FtYco8OSUjB45Hu4My3v79tdXyFNxSBshdLOViWFqBSh?=
 =?us-ascii?Q?jDasd0nQikRb+guB2TEdi9ZD1Bfa4ijS1QhvASOg1jnDEeBFvuCCDCDPCPX4?=
 =?us-ascii?Q?BJUWNKnDBNRgLK44kbAR3H9k5GyyMWMuTl/IH8i+2ovpmRmev4/9lRm58QUH?=
 =?us-ascii?Q?NM9fYeHJ/IhQuwqx3ynwCYEiB8qqQqs8uSyOO2uBKEm+z+9bqkrp5+EbG0br?=
 =?us-ascii?Q?qo4qPGBmgOH8V1qcbDvgggLbC5CKN6HRIlkueUhn4GhTr+UFaR46Ij9g0aIh?=
 =?us-ascii?Q?NMRcjjV9cTlGMtOB32XMRzZ2NNmFLILZ3wvZ/f0X+fFDcW2IYlVK/rSveMBE?=
 =?us-ascii?Q?A2HOqkIrTv1smfgjaIU9SwNi2NuePHptbaEzghgS1nbPvczaiK0aLtE9k+qn?=
 =?us-ascii?Q?xVZHWTXSLByuZhUYafAeECp2mCKeqnB0mrkbRou3soJ8Yh9yAmXnl938QVwd?=
 =?us-ascii?Q?UwXT6Ev+QVikv8xFc4snv0cU6XYSerg9/8t2E1jbok7zxjrjnoXZgCvQ+pbq?=
 =?us-ascii?Q?ZzGuqu1OZLwQPS7PXd/YFYj0eizonwpjM66yL7gvgs1TxzWJFUOqYNz+O+IW?=
 =?us-ascii?Q?hS+o+VNYLCNpUsPB6V7QMOdEdtQAyzRz28pYOieG79P89Pjmk7FVdQEVcT+d?=
 =?us-ascii?Q?YkNw29GNhEyMG46J3JyjDsZS+zrpBLE8QpyIWhUUSFXGjzqUZtVdRT2WvnsE?=
 =?us-ascii?Q?xouzyrxQAq8o36y7GI+psxp74fwAJ9/nbI+9b/0qGP20TO5ug5KA57zxz+PE?=
 =?us-ascii?Q?8tz85dauMIxWEtfSfYTyqvao/tIJPAI5YfUwgQxXJTMKp2n9otIbHecwDhKx?=
 =?us-ascii?Q?KriJC0u6oQogyB4ewFvjTs90AGqREbvVYmj+Eb5SOEAwAymxbVys5vE0ZXCv?=
 =?us-ascii?Q?YhEwmAX2mFaDpd2N+dmXsgOt1oiLhpTfzu3kQb4EE5EjMpOSkE1BtsedQKOH?=
 =?us-ascii?Q?nYqtbKydwhMDrKua+9EJX+5k+PpF70Iv60pVnag+42VNmrUjypPL0k9b2Gwd?=
 =?us-ascii?Q?kthrXFHSVO+aXWnsLkSWnZaRFpabzdeixwwNvCOiHj9pQfnCTR5uHDlBucB0?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7f7fd6-5551-4334-ad1f-08db9dc5d523
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2023 19:28:41.4820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E/C2GQRN2Q97HeUbvj7tAjrOsvocFACmdjRUK3LlhI+JsUNq4Ai6yBFHY4w3OHQ8JyTIyp0qEX8UMyuEeE51lgZM+F4z7/mj9g322R+HvLM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8553
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Align
 igt_spinner_create_request with hangcheck
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
Cc: andi.shyti@intel.com, michal.winiarski@intel.com,
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 15, 2023 at 09:53:44AM -0700, Jonathan Cavitt wrote:
> Align igt_spinner_create_request with the hang_create_request
> implementation in selftest_hangcheck.c.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


For the second patch in the series, the general direction looks good to
me, but I'm not familiar enough with the spinner implementation and
context handling to do a detailed review there.  Hopefully someone more
familiar with that code can take a look.


Matt

> ---
>  drivers/gpu/drm/i915/selftests/igt_spinner.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/igt_spinner.c b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> index 0f064930ef11..8c3e1f20e5a1 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_spinner.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_spinner.c
> @@ -179,6 +179,9 @@ igt_spinner_create_request(struct igt_spinner *spin,
>  
>  	*batch++ = arbitration_command;
>  
> +	memset32(batch, MI_NOOP, 128);
> +	batch += 128;
> +
>  	if (GRAPHICS_VER(rq->i915) >= 8)
>  		*batch++ = MI_BATCH_BUFFER_START | BIT(8) | 1;
>  	else if (IS_HASWELL(rq->i915))
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
