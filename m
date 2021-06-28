Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0403B6ACA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 00:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 771E46E598;
	Mon, 28 Jun 2021 22:04:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 849086E598
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Jun 2021 22:04:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="195337155"
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="195337155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 15:04:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,306,1616482800"; d="scan'208";a="446756775"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2021 15:04:32 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 15:04:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 28 Jun 2021 15:04:32 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 28 Jun 2021 15:04:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WaysLMnBsyDF+F9mKm5fkyLYvjggAIyYkX2mbJmIJIu7Xlg6bdW4zbRZ/hB0M1lF04qoNJk2YHLjusGnNK8oUuHH0Nv78jOkUsG+NMQ/rIWF5k8b7x7BEx89DPXcA5Gsath1SCMcFCAgDiInmp7k3+cmhv+sfc5Jupj6cF/QDEXTZG/lwSOAz8chWo1uG979d+YlWL7I8FbcNnAYNENE7iqc0IyVeFP7f63tad3SRD9M8gyTIONQ4p7qWeQoZSkTDpcuxkNLbBqM4b2auKM/IVZEZ0j0n4TFgFbD3SLLdAbCSi9mSlw1pcnjIQ6rDet/Mf/8ezMXJ/Xq173hGkU3nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1cKmr9n4K8VQqlFSUDxYu41wp9P4ENOG+JgMYpkNuE8=;
 b=UGF7M5mpkuVODbSUVRLFODfvna1LhDN9YjakMssk8TCGgrY6w2iFiQwCH65h300AWEUrFZB9zSsbkvn8UY1A2vlm7YCRyeiW3EnhYBiOmQtcpN68Ey6pjH6h7IpbhCziQ5rLnkYBEWuy4DgaNXORSpiWOkpRtxLljGzTkpMidYCwHxMiG7S4sfudSRefesG1FzS+8rnXFuUk31qUeFPYzVzJIqG0WsP2gYatOVjz/hHhftFzLfUm+cSUEzggty1YfwJ+bHvttVupOOsXHpZs8RaGxa4YcyooG6dN6N/zdg1IF+1MjT6usLPMg4lNdV1KWXvPsG5SA2eRu0v6LqaPxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1cKmr9n4K8VQqlFSUDxYu41wp9P4ENOG+JgMYpkNuE8=;
 b=EWCUyPxJy9B9b0xbVaDGj+34/hmgmvWeDfjkjnSMNk5DVa3pIRIOxLBy8zUyK9AwShIJBLdJI1rnJVTUyGC4sOqOZYZsZMGapsZbEZv7fW/V81e2UavWkNl/dg+XRXqNtXJvqnuJsuHhpk1ClLflOqssw4XD59FuW9/Gs7ledms=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1374.namprd11.prod.outlook.com (2603:10b6:300:24::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Mon, 28 Jun
 2021 22:04:31 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e9f3:b903:83f2:d244%2]) with mapi id 15.20.4264.018; Mon, 28 Jun 2021
 22:04:31 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/firmware: Update to DMC v2.12 on TGL
Thread-Index: AQHXZvd/1wkgzoj4yUCUtNJhRQxCzqsqBTQA
Date: Mon, 28 Jun 2021 22:04:31 +0000
Message-ID: <a520fbeef83f26134b4841df2366c80d97ed6119.camel@intel.com>
References: <20210621234515.9433-1-anusha.srivatsa@intel.com>
 <20210621234515.9433-2-anusha.srivatsa@intel.com>
In-Reply-To: <20210621234515.9433-2-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-1.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2601:1c0:6901:f5d0::f185]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c62c67de-d2ee-40f2-9702-08d93a80b4b2
x-ms-traffictypediagnostic: MWHPR11MB1374:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB13741F3C5ACE4CB2E7BD2D31C7039@MWHPR11MB1374.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Cg/mancXdSzUndCFV0VFz5d+yIZv2EJqb6dNIbpLpOrXbV7WF938t7tStFbNL5s8WGA95EKjjjAp/tz+HP5o32bX+JllilEihkl3ldyIAiDJffiO7arU9pR47YxJTwyipeTZQYS0g4kxdmeHXbt4Mm070qx7Cx8/N7+Z7+FMlyJ7i3TlZY4OgFNeYlsBnUpizMYvDuHdqINyN7hUutKAPBNQq/q8RUUwgolGFp0cOOp+3NJLuXtWlFvRS3BfJP09mySqNaTBMfbsUUt6R/u2uONodKy1It/kDScYp+9Nb/J+gPP5gc1qA/OB2thhiHvc8fXXUTtwosfQLIhkAqNrVCy6PlK255rya3lMTLC4cGdIMYgyFeXfItx0OYH3R31jq/hX4QrVMLhqpfEMoMWSDyq5PcBNymnp/nJZFqbYh3QzVXhm2f4m4z3nOYmX7vsLq/2fu0tKc6C3gKE8MGWHL7/dOcrxlS93WmYsz5IDvp5mzXzMN86bvflDTxaHw1/n1+RfpT+3++pmk4NsIeiUMw7yUkb1GpdGB4HGsqAp1bVmOB3vW/g1Tbr5vkKrVgBaLfBWJ6fFt+fYHzLNG5btx2dlwL1aRx3Kt8ZqNH75aNwMUV3TnXzpxjXVsrVPDbkPOTCjWHQOfqNNUa+KWK7sHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(366004)(396003)(376002)(346002)(136003)(6506007)(186003)(38100700002)(6512007)(6486002)(8936002)(8676002)(316002)(122000001)(478600001)(110136005)(2906002)(36756003)(86362001)(76116006)(5660300002)(66476007)(66556008)(64756008)(83380400001)(66946007)(66446008)(71200400001)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2hzWUlXQmxtaXZzZ3oxZm5LRFlqcUZvNjI1UW5BY3RwbXFoM2VtbkhlQkVW?=
 =?utf-8?B?NGViYXo1Y2orR1FveEx0dlduT3FyNWpYWGV5cUNlRXdpVkV4KzN5UlBwd3VG?=
 =?utf-8?B?cnBYcVdlcE9HdHo5QzhuYmRzMmxqTlBmdXEvRHFzeHVyUzMvbGl1TGI4M1Zw?=
 =?utf-8?B?SlBseTNEZ2JubWtkcFhQYTlLcEdFWVVTSks1ZnVsWG1IRkwwM3VqdVNmaHY0?=
 =?utf-8?B?TURvZnVyWmdIellMeGlKMWdDeGV4ZnBzVVdCMkxPTUo2V2d3Ym5mVnJIbWZs?=
 =?utf-8?B?QUZGaG9kaUs2MGVoWTl0Slo4SVYwUmppZmlpV1pxTmZRWTVDdjZQMnVWeDNR?=
 =?utf-8?B?WC9WWHJOcXRGS01rNHRObWppY3lYRTNwTXpqTlIwVXQ1TzA2R2I1bGs2cm1z?=
 =?utf-8?B?OXMrRWFCSlJrcW10UkNYRmV4alNjYUNVZHdQR1RUWFgwbVZqSEtFOUNweXZz?=
 =?utf-8?B?QUN0L0lYbHBFVXZhb0xWbTdOMDNmT0VPdHVsbUlPRjF3cHRwL3UycTZFYXMz?=
 =?utf-8?B?bGQ5bmlXb29vNW51MDg4MnZmTzlFaVphZWpQdWRrM3NVaUY1STQ1NGlZKzFt?=
 =?utf-8?B?d1hSSUVwbDZKYzM4eXBQN2dZSWl5THBJY0tXTHR0eFFhdzlwZmZOeWNyeDVM?=
 =?utf-8?B?aFgraGVDWFhLR1EvKzFtTWhWVkowc051QVNBZnlON0NNUDZVL21rUm9lcDdB?=
 =?utf-8?B?N1M0ZitxQjNCNHBWRlVvdkZCL05NMkp6ajcxNXJRWjJRZWtPdjJIOFJtblpJ?=
 =?utf-8?B?UVdvSEhNS1hjMFVUSG9uL0tTWFlRL3RFNTlnNVJ1bzVySUdSUUx4U3FRYXVp?=
 =?utf-8?B?VzBTRXoxZ3ZScFpEYWpUWTNFU2tGUnZybDFzb1N5YnJFaEh3WTJBa1dGcG1r?=
 =?utf-8?B?a0RYdlBLK24xRXBwQ0pLMXNrVXJpR2Yvb3F6MlFpZ2VTNmlQc0ZtSmtrTk1i?=
 =?utf-8?B?Z0MvTG1CejNoeStCcVBKV1p4ZFJXU1NucjJmZmlCN0FoVDRTeTY5WkhGbEc4?=
 =?utf-8?B?OGh5WG9jSGlTYXJ6SVh1ZUtDWkNPQ29ESnhKM2RxQ2J5SDB4cnZYQ1NTZEY2?=
 =?utf-8?B?dXJ2UzdIRzFNK3E0ekNmRm1nVzFsK2Y3akpxK25xc0dFcEpaTHQxWjFqQk1m?=
 =?utf-8?B?WE9GQkVMMVhjek9DVnhwUjVhNmdWWCtzNEduaGlGQjRVSEF4TkJQOTdIZGha?=
 =?utf-8?B?RWlia0diTWVpYzFpWDZHa2o1UmFkNWt6TG9JMnBtQVBvMG9xOFJiQ3lWaWls?=
 =?utf-8?B?RWlmVnBaNS9jRjRpS0dibUkzaHRlRmo5MDhLaUxPTjBrRkZiNVV6czIwamZi?=
 =?utf-8?B?SGRtTG5KNHRzR3BwbG1qWkFhV0ZHM0MzSzBLU3YySHgreDI1dm1aNW5TLzBm?=
 =?utf-8?B?UHlnYStybFRDQkdWbDRxWi81Y0JCMnlGMGpjdGQ4dFFYUkVxajA0ZjlKYk9G?=
 =?utf-8?B?ZG1oMDJYTlM0RFA5TlQyNlloRElMS3lscitVZ3NzOXhyZHROTFNFN1pjcThQ?=
 =?utf-8?B?RmhzWExMWHdPeGl0bGRjZmNPVXl5MUp1QXNiK2d6YzkzN01lNFZENjBNYUYw?=
 =?utf-8?B?QnJjbVVjWG1tY01OdWI0dFFwcGpUQ0Jlc3Bab0V4QUxGZW9MUUVJMkhBeGhB?=
 =?utf-8?B?MGREclFZVXdyUWdnNUsxQ0VNVVhIS2pKeFc2bnNPdXQ0N29TU2xkSUVaZzNn?=
 =?utf-8?B?SlpvOGUybWVxZm5wckNTN3BCWTRaa25UU0R1VWk0d1Yrd1IwTnp4Vm5VOVpB?=
 =?utf-8?B?ZkoxLy96TlcxVEJUM0hJMkZkMjVWQnZHeEFkR0lXVGEyaUNmMkNnYk13amp3?=
 =?utf-8?Q?f/wh9fs1/lpPmcn1YbR8jJFqbQHsSFw7fLR0s=3D?=
Content-ID: <2FE23F5BBB57454AB2A677DC91463950@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c62c67de-d2ee-40f2-9702-08d93a80b4b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2021 22:04:31.0418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZW2Qw+WQt/HVzn+3gsXaalGwljQzEXLUuV1OvjhojkkI8SFoYQhrnYMTtq1o1cwiBRnrJKFFJx/l3Y5X5ZE3Q5fQ0GguoMmW9W5fs+seGLy0Ks1ISKlpkXwSVprSVTGuD2W27SxFELnDMikHhR5ARg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1374
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/firmware: Update to DMC v2.12
 on TGL
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2021-06-21 at 16:45 -0700, Anusha Srivatsa wrote:
> Add support to the latest DMC firmware.
> 
> Cc: Madhunitha Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Patch looks good.

Reviewed-by: Madhumitha Pradeep <
madhumitha.tolakanahalli.pradeep@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 97308da28059..1d47f43ada51 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -57,8 +57,8 @@ MODULE_FIRMWARE(DG1_DMC_PATH);
>  #define RKL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 2)
>  MODULE_FIRMWARE(RKL_DMC_PATH);
>  
> -#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 08)
> -#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 8)
> +#define TGL_DMC_PATH			DMC_PATH(tgl, 2, 12)
> +#define TGL_DMC_VERSION_REQUIRED	DMC_VERSION(2, 12)
>  MODULE_FIRMWARE(TGL_DMC_PATH);
>  
>  #define ICL_DMC_PATH			DMC_PATH(icl, 1, 09)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
