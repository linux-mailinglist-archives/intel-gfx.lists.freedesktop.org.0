Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D37892C419
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:50:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFFE10E656;
	Tue,  9 Jul 2024 19:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EtwbHJsi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4ED10E654;
 Tue,  9 Jul 2024 19:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554613; x=1752090613;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=b8q22VanlVpQTMidiLW+21da91MYBFvCjezPMu+DQuc=;
 b=EtwbHJsiIocpcbvFJsBmuDhwRxR4X/2ozXMF+jWNF4iV6Bcu6eOvrK3e
 i4wBDRMxOrWL8dm9AbrvuHrHKUy7fKjFmtVqqCm2Rsbu28W+oTWtpnBWM
 oP3kE5AZXvTkKPwQFuR3Q0viegw6iMVgTsjGmYRFIrmu21bO1V5CQfXdb
 F7UlrwCGgHVFnTKLUfNorPeMGiKXahr8/PQH5qRleTX7sltubQ6g1lmJL
 gNpFNrIahq+gEw82AUd1//TNdvS7guJB1D5TmytXaXlPN9sLD+3uyWwZh
 1l4PVCJLHXXZZjICgvW6NWowz1apgNNK6R6L5NQdImPHdNVSvxNCzhyBl Q==;
X-CSE-ConnectionGUID: NXwDz2oOQa6mygThoo6pfg==
X-CSE-MsgGUID: aag3VPFUQg+C8ZihqfPKYw==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="17674670"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="17674670"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:50:12 -0700
X-CSE-ConnectionGUID: Ow78cG21QuyFnHDEzCT+jw==
X-CSE-MsgGUID: 8m/+zWNHT+2GgJXy4LFggg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="71195086"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:50:12 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:50:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:50:11 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:50:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GxmoduUHIe5rE+NBjfN2CbQFzI4ZRcYNmLZQtlUZb7uzwJxHkGXijKWdqUtk3rtkVqXo2URxSrQSEwOppK5Qmw8TfL/EZiR7sQCK5/HNcqlimbS1Ll0RqNTE99Mq9bntWnrO0yvEqoBdAkoNBW1mHdEsWbk3/qpRnfYZyqhXAkIfw7H6HiPG11oDWX/9mS6jieMDeuH5+S0GJtTOtvtzkSW7a6diFeeNPZi2xn+2sPpOhkApo2fDA+CTcqYsn3vpcxQQ5pF82KNmbAKqFtbfgPxoprynX/ILAxJ4WMMErzfY9QoyUk1Q00Eghlz/UX+Piog3AbK8Mj8EKiab0fP+lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bo1JFnStkaX8W5jJPOA0rW/6mtoGqyDCMKlaKvvscD0=;
 b=d52fVRICw9k0tkLOSrf72rn2GA/s+dR4FzL4bjEIzVS7/kYpNQz3rMns85fmRU8OFy8HXmLPNc+AFgIlGAS2U+jjY/lRqyGzesQJUcDMw3mnY3fTm55Rx0z0Y6+9OjWi9B9kLWZAHm06bQtNSQ91W9wDBsHGLk3yL309M7fi1v5CuYEpwtXGNw6Glu2gjRAOfsVyoKBZAOEIIPfbnfXJLKQhFae7TOxe5MT0/PFD0yA9eHOTZadJKeXFi5v5Emst+w8s1na+7+gcMUYSyC/wWmdppeueQMFRiTyPd+PnT/oNpTPBHaisQa4odlITMH66ZMpteFnjnjFhb/jqvd385g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 19:50:09 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:50:08 +0000
Date: Tue, 9 Jul 2024 15:50:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/20] drm/i915/fbc:
 s/_intel_fbc_cfb_stride()/intel_fbc_plane_cfb_stride()/
Message-ID: <Zo2Ubvxxy0deTfPj@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR02CA0021.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::34) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: 8f876065-d25e-452f-f146-08dca0505653
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?Xfi3JgXHfEXdwAWYjmIeHtGHSSOFBfqWd1eMRxq910Tu6XwH3fsJs2ibgJ?=
 =?iso-8859-1?Q?VFlThcURh7dOru1qjEvXEANv37BeHaLFJHsrfEP52GkPYigAYO1zMKS4fU?=
 =?iso-8859-1?Q?hg9ipxfN+ZQQQxUnlHM89UrPtPbiTUADornzWROfX6crS6PiRBe0onXfJv?=
 =?iso-8859-1?Q?xnTtgRfNgNpe7QLuq0gsf8K8plWuniS61bhCQfLpp9pqnxNmvqkvBErv2e?=
 =?iso-8859-1?Q?761PVJcN3r95oUTE89GF0mRCnnVB762E90iXn6DOosoznRNOIIm1izXDet?=
 =?iso-8859-1?Q?uiyRJ1qsJYGZ/taQYVUjrB+fNlBz9l6z7QJGhSN+VvPzpi7m65gAPp04NI?=
 =?iso-8859-1?Q?w4Ck0Usym6a/LgKHN8qggVoo93rbbGncmwC+puEdUP6VnEe5F8HxP2cQqg?=
 =?iso-8859-1?Q?9ZJzJ1TOG9O7ecrb7pA5KuoMgMdLf44CpW8Ca/w7T0W0XHaecyUesYC4/S?=
 =?iso-8859-1?Q?QjQL9Di0H956j22sGAR/OAYmY/Ig47BQdf2+anJRrt1Yn2R4OhnrWGYJyE?=
 =?iso-8859-1?Q?v/WZgaw+33aYr+vIlN1u9waYIwtwgxJhU4Pr/YJPyG8Rriy59u6wvrbDMG?=
 =?iso-8859-1?Q?UKMN4zPrs3bIXawXzXee4XQIhGvQvParmW2M6eabdBZNzrFepFKzWBb5g+?=
 =?iso-8859-1?Q?XYwTTodkkYZi20DqdUxE/TMwecV2xOQHjK2IBSDVNWW2vdt2QkEXnSn+Ek?=
 =?iso-8859-1?Q?jfWYp0j07RIZcTxzs+KMzp7mILJZ/FUwUyIYchdzvTfRy/2NgJtnFW5yIB?=
 =?iso-8859-1?Q?GU2OUw6ijmBIg0xrcDU/V1h8X1ECiRuLEeikLpFI2ToPZd6gf7jwHfZA+P?=
 =?iso-8859-1?Q?xHlJuDXK13eIjO+xvrfeHREvAMxDQyyWfUH6QrbBPmIrHlTuB4ZTFlE/Rk?=
 =?iso-8859-1?Q?0+7kP6Wg+NNi179HwaVtV637+OpaAOpdqAtaSGX3WXb27+Eed8SCx2rdKf?=
 =?iso-8859-1?Q?w94IaU6pCcUpWzOTjp0NcjHmzsEkrToxIGiYjiSB92Bl0nJwdkIOFXe11P?=
 =?iso-8859-1?Q?73CUIL3Mf3f0u6bDcCTuSmqrX8/zT/TfRtEpxdbEar++0TryFPLxr6fTge?=
 =?iso-8859-1?Q?yVIW3KFvhe+fHAz8BM1c6DXaiCzpOSDglfSAEZId6+7ml2XLUg8EtACxN7?=
 =?iso-8859-1?Q?ToAGXBh+o4dU+Ei7j/7Hz/dNmNeqfE/pY7h8y8ibg/GswXUaKByrKr73eV?=
 =?iso-8859-1?Q?/blcGxKpk7E77V9DCk3nCkR/lMRykV341uwHe5C2iQbW4hTRtoILxaglD7?=
 =?iso-8859-1?Q?1dUDCyNMts1OBnkAujB9DQuFfJr62Q9pTimarbYgeOsn5rvWtgG/Smoxj6?=
 =?iso-8859-1?Q?lqFrTSr8vyafrS4CQ9++FVzXpiw9xIdKTT0Fg6/gRaOG7qVY9ubIxpo6Eb?=
 =?iso-8859-1?Q?coQgtceoYrCEFEfIXUd13+MxsnmcQPyQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?XepT9opr4vXH7KHPP8wyKNXeZfApiyJZtLdXBjcMV4kaETDbyZZTanMcUJ?=
 =?iso-8859-1?Q?o9fxavHekMHNYyDtPIik2mIXX8KdYMzYKl1DUB0YfYqKr0XzJ4Y+Ee+wZ7?=
 =?iso-8859-1?Q?gk25+uhL+/LG4i0UlCqZBGeYtyClXdmyxKaLGr7stBny9q5IR6tzJtJQ1k?=
 =?iso-8859-1?Q?4OSPcb54KMBbM3fGLgwf7nJe1yalDuWMb+DUbhPOJhOBIdA5zJ9udXV3EC?=
 =?iso-8859-1?Q?evSug2I6RH7qr3NIX1daGMla44qIzeYcN3LXOt3IoFVQnssIUaM1AMAHgd?=
 =?iso-8859-1?Q?eQM14kws5Z3wwuw/DPaW2g5C6cqHRCX+H8IbXJcBQ5YRn4a8KDKaqsI1hY?=
 =?iso-8859-1?Q?2fcUgq5WPwsGBs0+6dss7LIz/ZMbkzGU4Zp7lEcVPbqRNCBkxg5TNgD4Lx?=
 =?iso-8859-1?Q?/9yMIjT4wi5BFML/HZMcQ2s+xwWACdDQ8uWqb5hbcain5uEMOSOdpZV8Mt?=
 =?iso-8859-1?Q?Uk9j+/BI3Pv8qqoX3XDmMFQlx4k2Gvvb3NyFONbrbD+BcAjExoU5Oj2vxh?=
 =?iso-8859-1?Q?T2Ory6AoiJrv6I4mTq3Jtp0FvYIg+FLY0o+UDR3cYxdnu1dBt+ZqrRDQRi?=
 =?iso-8859-1?Q?H0qTnEb672ppYT5yCKuMdPJhdD3YwFozYw5vy46GftdNFw6D6fPwzxu2MN?=
 =?iso-8859-1?Q?tQt7mJ3h6hWPssh7jxNoMXF0uDeXyxhp/nBOeJ1GC5gex7pu/yllP2jzBy?=
 =?iso-8859-1?Q?ag42WiXnM4DI3Po7XdziHguCV5pcB+RcK0EGadmEqvo9h/sxNLl0AmNjnQ?=
 =?iso-8859-1?Q?HJTwIeb64GUf5CL7JXt6zziFjt37TxYYT+QrQYvQc8RoM6DQ7A4npUIJZV?=
 =?iso-8859-1?Q?cT623MVy1N0/RMm2c/IKxrEON84+ubtjLVPFuDXs63WWmCF+kKiBd3OYG/?=
 =?iso-8859-1?Q?XXciNHqYqDbhMzBhg6h20JqJv7rl2V9A9rE+J4YJi3G0jkyPSAkc0QjqYR?=
 =?iso-8859-1?Q?H7gpfLKXi7GC6CJ6iPZhmMcdjBoz8n1sPcw5q9wfM2ZW3p5NnX8erDiMZx?=
 =?iso-8859-1?Q?ifiQ05kPb/m+DP/dDCLRVr2bHk3FxpCKdJyGcosuRgOWa06u5WJPdWM37T?=
 =?iso-8859-1?Q?iliBsT5MaAuT2/rH2PpDuRg0NUh91qTOp+wvLXjzw3ZniMiGC4BaGFfFQs?=
 =?iso-8859-1?Q?tjLj8BLpKu8qzBZRqUID2FxPHQZuxjFu/zS2OeMrLkPzth6Skjsq6KE/pP?=
 =?iso-8859-1?Q?gt3JDinUiJ/D6P3d0fanvd/YJh+csd4l0lw5uVL4yKuVAevoBx5iYn+Kp9?=
 =?iso-8859-1?Q?NgvIcc7YMKHY3EyMqZFs0lC1PD2GrGeueU8/W+awRpq10dtX/RgHzpf3FB?=
 =?iso-8859-1?Q?fbye3Tip8dUGuSaxTrGyjaX6zblgM6ZubYIMFjNYB69npufvDjb9ag+aAX?=
 =?iso-8859-1?Q?ZOUjtUNZlO1+iszm5Sz5+K1dHGxrSvt50HQlVjahVPj/DMCSy8k9K32S2m?=
 =?iso-8859-1?Q?xXZ//UOIhVTH0Ue3PZHW96gtFyfKfOlJOPBuDkEpBRo6BoUTFFXa1tVHNp?=
 =?iso-8859-1?Q?Ady8nAZXtvDfZONxIW+QXSwIdVXd1hOnJBpJFLdb1NydLrJH53yXfCTlu2?=
 =?iso-8859-1?Q?wvaG1YIGVJr5MLeAiDRK4ZNatjuxbGjhDfqfGfZvJGmJj2o4w/xMehzh0H?=
 =?iso-8859-1?Q?8lFpfD6qTfq4tTcDX6Er58kEXW6DKSKnbtd38jSu9k72VzWXCDQu6BPg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f876065-d25e-452f-f146-08dca0505653
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:50:08.8455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hxRENx8Ug0kvOuEazvJs29Bj/odQ+g79H0oTUnKwBA4CbfwWbA4YixRLxZGSV5c1E5GxxxkW3Y9yWh/wQwWzKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
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

On Fri, Jul 05, 2024 at 05:52:37PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> _intel_fbc_cfb_stride() calculates the CFB stride the hardware would
> automagically generate from the plane's stride. Rename the function
> to intel_fbc_plane_cfb_stride() to better reflect its purpose.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index de8caa69a0dd..8f3b8f2cbf7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -141,7 +141,7 @@ static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane
>  }
>  
>  /* plane stride based cfb stride in bytes, assuming 1:1 compression limit */
> -static unsigned int _intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
> +static unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state *plane_state)
>  {
>  	unsigned int cpp = 4; /* FBC always 4 bytes per pixel */
>  
> @@ -182,7 +182,7 @@ static unsigned int skl_fbc_min_cfb_stride(const struct intel_plane_state *plane
>  static unsigned int intel_fbc_cfb_stride(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
> -	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
> +	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
>  
>  	/*
>  	 * At least some of the platforms require each 4 line segment to
> @@ -212,7 +212,7 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
>  {
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	unsigned int stride_aligned = intel_fbc_cfb_stride(plane_state);
> -	unsigned int stride = _intel_fbc_cfb_stride(plane_state);
> +	unsigned int stride = intel_fbc_plane_cfb_stride(plane_state);
>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>  
>  	/*
> -- 
> 2.44.2
> 
