Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B640E6FB1E4
	for <lists+intel-gfx@lfdr.de>; Mon,  8 May 2023 15:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6E1010E2CC;
	Mon,  8 May 2023 13:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90DE310E2AD
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 May 2023 13:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683553429; x=1715089429;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=kvt9TtkCWooshZAZna0bdCJNRIHGqltda7DiCOQFHbA=;
 b=n7YC9IwPbQ+mFMbsgvb40J9waGxEuyATNqHX/rkRPlIXgrQppSNjXrmE
 Sf2A0cusH1sctojUZCZ9iEZxlVTjhFGsmhk4gJxm7AXUQmGlh7k/ylEwI
 LBdDMII53EDrkSZNdIXrkECKnyHzuaNm00rq3VTU7pk+RzuoByPrvod+D
 071TNXbS0aKJobbMT1nJ1pcc2w2xSxMw+Ha2gFDpbt5PBwXUm6C3pYwOI
 tmNOa/jw7ANGefqaStz4h+RjafpnyQR+Ka4WKXf1azSgCFamNCgPaJS+H
 f22r5OqkGIldShJuFLOnVgPRXT5BkNQSobF4D2kDBgLRrxnVDRxcvT8g1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="412905868"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="412905868"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 06:43:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10703"; a="729089386"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="729089386"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 08 May 2023 06:43:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 8 May 2023 06:43:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 8 May 2023 06:43:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 8 May 2023 06:43:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XuZytrjHBt10tw201jhBa+fVU2nDHyqBY/x+BQlqFbg+ppZ78E2eiDzesiUHUvq0l5K1ULz9+mGRDLw3NHrrP2dIFZzpzG+P/RNlUCR3/1WMWTRbQBEcNvS3ZtSflghPo0BUfZneUbDmcjvKPtWg76ze5NuOInCXEVdkKc/CwOVBmpnCTib87DZVx9UPCX/0/iQXS4RYJoAZVg68HwSg47rbLiwSBkNQB5DfSXn9EgjCQes1cW3PLnmDvwWhy09gqRNnPfF3e3JfkfFS7PANUVISet//o43rt+OyGfQPQOPUy5shiSegqaksK/gNiQcyJoOvyJHGxmkZSkH4pD3Grw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S/lUOO1/qrI3Qn5NFfrw3HuyaUd7q2xRmxPjFplHwNo=;
 b=X5n4CJyCbZIrEarvNySX+AFLyKsHUbFa0tq9fOXxUdmPJ2b4BP8wxE8jP1RfKNKxVYLm/uiFHm5xGV4bY561mOWu5/2PlK6Fcn2HgBQ5Kb+3KtWW3Q0TPZxMerYBKPn0EAwIdAB1x4Ly9jJypSTyiR43jco3stCLAM3G8HyLVVq+mS8FddECLju7LnvnI1iReeKf8Wa3k9/MHeZxGyYCAsqE6C6JihscospBvShUG5kAJO905L7hGB/mTpiUwDbUERshJW86TISPDwTn2psHbaaw9Am/67hhhBxj+puCjPIQj6AKxN8cMRnp4Q8Gk8usDs5o8tBB6M7L4OJAZhZT/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Mon, 8 May
 2023 13:43:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.032; Mon, 8 May 2023
 13:43:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230505110917.1918957-1-ankit.k.nautiyal@intel.com>
References: <20230505110917.1918957-1-ankit.k.nautiyal@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Mon, 8 May 2023 10:43:37 -0300
Message-ID: <168355341751.27719.16836386570199975237@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0185.namprd05.prod.outlook.com
 (2603:10b6:a03:330::10) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ2PR11MB8297:EE_
X-MS-Office365-Filtering-Correlation-Id: a1e0c792-e204-449d-17e4-08db4fca3c85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HeBaoX/+dchGPsAp8xxsqRWEy47Fm/laTqgMsJ9n41CKCBe22RvDad1eGYHfmHPo+UgZYetZ+5Cvlhv8S6v1s1TBjZfzcBhiZABBmdm5g62USOONfm/hoJowpDpn1rka8oOXPVIlmhGx8vtUtbNhNgRH/jEBu84+t9NcFTRsxdtLqjFBbzu7MK1E3D6EpcG0vM8xNq4VDf5UDEDrOiFgnr3GhEB0DVjBdbgdBrNaD7fP39ldMNfJDq6TL1Qrxox3NaCdc76eqW0xwCwbXG83Mn34oUovobktx1RiafDkFexQg4vGQyR51fMwpiFabNoeilKluUquDr5yLudhbUCWY6hGsUdrDE2b5yTMyL7uN5kWpMto9BITlbnNKPpNNE4MWNXh6Yno/ItAKEbjbeA8NBhdk3Xk6c0tNqAku+QS5yMvmpV0IHzQmW0fim3ZkDtOu9/7oC6oXb4/VCbDWd9wBS1DASw1vd6adt/cxJ/Vs/wmpDTVu1jA3W4pBuHrkBo3F/s+5XRey0RFVqDRzm/+HHkz6O3F3aSkOol4T/hiGb8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(366004)(136003)(396003)(346002)(376002)(451199021)(66476007)(86362001)(4326008)(66946007)(66556008)(6486002)(316002)(478600001)(33716001)(5660300002)(44832011)(41300700001)(15650500001)(8676002)(2906002)(8936002)(38100700002)(82960400001)(186003)(26005)(6506007)(9686003)(6512007)(83380400001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzVsNHZldExucDdsb1RGOXdGWGxVSlVPN2t3U2pRWGJwa3RSc05WRnJyQ3c4?=
 =?utf-8?B?cFI2QlVrNEE2V1ltN0lBWVlQVXRXWEhIRHp0TDlwUjZsbVJDT1pvcHJMUlE3?=
 =?utf-8?B?bUUrTnhJNjdNTlgrOEJuMGYybWxBNThaU0ZnUzZhRGM4emlHdjFxNkpwWmZ5?=
 =?utf-8?B?QVdmSWlLaXFVc2pFS3IrSXZ5OVkxMWlJMEZKZHJVVi84dSs3Y3V3cHZ1MFFI?=
 =?utf-8?B?MFJsWnZXZEt6Z0lYWDFnUjVLZk85bHFwYkgrSDFPWGdBQmQ0clFLVEIzRFBI?=
 =?utf-8?B?M0pnL2tFOFpnaGI5SVNvZ2Y2ZjlZNVhod2lWYUxqOXFiZUsvOUx2OGdOWXZ3?=
 =?utf-8?B?bkE2TUJoVmRYK0lxaTMvcTRLU3I0RDJ6WTFlWlZIVEt5MVZra2g4K04xNHc5?=
 =?utf-8?B?bS9aUUQzek9qd2hqU1l1YnM4NFJFaE8wcnRnV3RaUGhieHhGbFdURGFNZDhy?=
 =?utf-8?B?N0ZkcGJ6NU9CUVZzTmM0Znp2ZER0TXJxS0pqVkFCR3hNcHFYaWF6NWZKYnlC?=
 =?utf-8?B?Um03Y3dBTld5Qm1mNlVuZlFVUVYwQUVncE1uRlE2TUdwTjRDZ3R3dlhjNmpJ?=
 =?utf-8?B?akthcDVSenQ1VU03ZWt1eTAyWWl3QWx6VjhSeHBvTjc2c1NITHBJdC9XVlRl?=
 =?utf-8?B?Ym1JcWRFWnZsZFU1S3cxMG9zeGkvNlp2RUg0RHhLUTdrK1FSSEtPVERNcThZ?=
 =?utf-8?B?U2dpUWlDOUNwYzdIUTRVbVFxYXQzdHNHeVdEaDZmeHZOb1VjTW1qdmNjN3dS?=
 =?utf-8?B?NzlCVVYyT3ExSVk1bmlaVXI4Q0MrVHVHSTZmaGZBaGVFa0JjVFRySTdTSWF2?=
 =?utf-8?B?bHFMTTdyV2dlV0xuRkJQNVoxSUpGcUh0dlROZWZpL2U5ZFc5N3I2djg2Ympn?=
 =?utf-8?B?NjFkUGdaZ1VBYTZIZWhrQ3RQeFlMais1bCtBT2dJb0Z6ZzBtbWhzNTVtMzhU?=
 =?utf-8?B?bVZtSDZnTHZLcjhoT3dZR0ppMUl1R0RVdzFITUZOQ3RaeXFUdkdGNEdZc0NJ?=
 =?utf-8?B?bngveEQveWpiamNadWRPZ3BUY0FJdERueUdNN2pHTHc4Q2pORnQ1UGcyQ0FD?=
 =?utf-8?B?OS92NDkvWlRhV3FPQmZTV0pGTEU4RG1Kck4yd2FaZlo5TVdCaVZZeU0ySUlr?=
 =?utf-8?B?MnRvcWtIK1REMHFuUlZWZXdrenVEMWhBWFczQlh3WTBtUEtUSkc4WHRIV1pa?=
 =?utf-8?B?cVptamFDTUJVbEcwR0x3dzR4OUFJVkR0Y2ZIaEozbCsvYXNvNExwTHpJQTYr?=
 =?utf-8?B?Qy9sS0xwWlNpTVNyRkFvSXVlNmlaSjZkakU0QytwOVZxQmxmUDZoWGR1Ykk4?=
 =?utf-8?B?SENVVnVvWEY5Y3h1UmljaXgzbXNzN0JSdGZmK0hrZWhoWnpwSzBUanpjVGNS?=
 =?utf-8?B?UWpxYytGcjFtbzlUbjZIVGVjdWJoUFM4bjE3akNyYkdHOWtYVERrSHF5VU05?=
 =?utf-8?B?dnYxVmtCZmFNc0Rwb1BqWVhJMjE2Z29mVGRWMVkwOGoyV1UvMGdVbmJuMC9r?=
 =?utf-8?B?a1JwYjlENzJERnpmUjZwTndrcTdmMS9FRFJ0VFJpVDFhbXgyR2hHQi9ycXBk?=
 =?utf-8?B?ckxHeWZQSm1Bd2hXTXA4VFBqWXpVeDdwM3Y0bzQwUkQvY0VxSFVzM0Q1c25Z?=
 =?utf-8?B?ZmtjbzdMTW1zTEhLUGovNCtrM3o3SS9ReXZ0NlpONVRVNFVKRjBwRmt1SW0v?=
 =?utf-8?B?RnJWRmkxQ0V1ZFRCUHFjQTdyZkUwbWJ6M3gyQTRnUnVPSFJRYW1GYVpUdUor?=
 =?utf-8?B?Tzc2SGpJbXRBWkl4NC8rQzc5V2ZrdjNOQmxVcERRczVBdEp5K2I5VC9Tc0JS?=
 =?utf-8?B?WWRzN0Rxdy9rKzZuV1NKeSswYnNsMWczY3YrZHZMV1phTldLeW8wQ0p1MExv?=
 =?utf-8?B?WmV6TERwZzc4a2NEaU9MUHBRdmtWbStCSTZvczJSVjFhbSs1bmFmeXpHZExt?=
 =?utf-8?B?S3RXWk9ETWtLZzF5ODZQSzhaWXVoVnQ1L21CQWIwK0h4ZzgxeVhSR1VocEJx?=
 =?utf-8?B?Y3VaM3VUa2RPT0pINmw1R0lJWU96dDVSc2F0eWpjWEpSWitwZTZuYXVSZ3Ft?=
 =?utf-8?B?NnFMNlJ1N2s4QXZTZGYxTFJ3azBCdmZPRkZIaG9OaERtdzNWa0xUVG8yRCt3?=
 =?utf-8?B?QSt1Wlg3VkJzaGMwL3RkYmt0YkhPeFJPT0tmc0pGSUxiR2JqOUlQRUREQzZC?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1e0c792-e204-449d-17e4-08db4fca3c85
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2023 13:43:42.3489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tU2mI1q9m0HUXD/6u5PSdfZALdRNDkAba4jlzpMx31QnEHQUrVG4UQ84y9ikqKJYj449bxq18HXvYaqoy1DFpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Update the DDI_BUF_CTL
 active timeout for ADL-P
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
Cc: lucas.demarchi@intel.com, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ankit Nautiyal (2023-05-05 08:09:17)
>For ADL-P the timeout for DDI_BUF_CTL active is 500usec.
>Update the same as per Bspec:55424.

I think the Bspec number could go as a trailer. We could also add BSpec 491=
91
here.

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

>
>Fixes: 5add4575c298 ("drm/i915/ddi: Align timeout for DDI_BUF_CTL active w=
ith Bspec")
>Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>Cc: Imre Deak <imre.deak@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: <stable@vger.kernel.org> # v6.3+
>
>Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 55f36d9d509c..6d8e4d7a784e 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -216,8 +216,11 @@ static void intel_wait_ddi_buf_active(struct drm_i915=
_private *dev_priv,
>        } else if (DISPLAY_VER(dev_priv) >=3D 12) {
>                if (intel_phy_is_tc(dev_priv, phy))
>                        timeout_us =3D 3000;
>+          else if (IS_ALDERLAKE_P(dev_priv))
>+                  timeout_us =3D 500;
>                else
>                        timeout_us =3D 1000;
>+
>        } else {
>                timeout_us =3D 500;
>        }
>--=20
>2.25.1
>
