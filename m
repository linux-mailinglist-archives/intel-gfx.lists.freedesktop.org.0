Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CC46E12E7
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 18:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BD710EB9D;
	Thu, 13 Apr 2023 16:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FF7210EB9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 16:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681405077; x=1712941077;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Dc5Mp2TNCTGESPMNjtP6ngOaAGw+/dFtgzrV1dxok8U=;
 b=D2r3GhV7iZVBRa6rRR9eV3GoXcoj94xnshCzMJEvL9vh5ZJtd9WKKpb4
 NY8JmH+tUoovnxIAbQNnbVTysj+MWPgJSEvgNkXBv36Ga8DqKMvWc1Sef
 MPvzICh/rqVhWaPEHEgCwyWjpEy93ohphoKaNnE18Z8BsJEi1Q+avb+Pg
 THFtRchifG50tnHP3VYp5ibr3dCTc0s+cdhbIayyd2dYZIxWsr+xdYZB5
 tvRRZj59E9wHJ99vlOI9fB2UqwAOvOlIvVERbzp/DtGUfJse/hdZxXe5f
 BaH2LaB4KIKgE5COXF0GkiDWNCLMEOHvmaEaFpATvL6lOReYqyp8x8z+w A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="407099327"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="407099327"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 09:57:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="800873768"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="800873768"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 13 Apr 2023 09:57:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:57:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 09:57:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 09:57:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 09:57:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tb+lPB26eZT92NURG0ZUyUzfFZ+41ekiRLVaR05EZ341cAFWv1NcTDKjTISCPUgIcR23ymYRzN9rie4aIzJOSl/XGVTgVmF3g/HGIsLrAIqJdL3I9MATsZ8jhdd9GVY3Y50+/MIgQZK078UtS+2POlVav+XdTwIO07VeQQYVDdSmnAVMki7Gw7TXKxWh02ObVTyJ/vJk+3RTVU5sscJIFt8ixQwUKqCtdmB00QPTT4fULXD26uvn4f/2rmUXg5i7EOfr4u5SBKk6SE6rK/DJzQUCiyuvx6pVNKtG2BPLixs0LqRkmUrIm/Q62Rz112ch0W2L2cp9IhWrf7x0wm5flw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wxfU9SSBSSyBe7ifUa0SqVQHMrkAdqtzZE1W4xhIY4g=;
 b=X5cNfMFaUHUJC/2e1WICN5KgdvMsKUqofr/N3A1e8k5blGSQFp6s1KJOk6rpha2Xo0e7ubj9TYGy/3qaet0qt1piH5bHRC0HzXck0iDdC5BnjeVxO7Ltnpgwv6FmFitjZs1OpV12coBCdcAY8h7yDok2NJn9sIN1j3YjmE5wyK4fcXm3HVB9pXeCucGb62EJhkmcIfrgCN9meg+Pcs9vvMKgs3o+Qvb8vh5M+EfdPkp8ZxoIuHjbS2LOGn90D7xJst9ooPkhtpGbwIv0brNCLFJL6nPKNb22ZR5RyqVIdVSMPWgrtL0F2+zDPvdH+g7thVt4EZbEX/qK0e+Vn0bfRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB6517.namprd11.prod.outlook.com (2603:10b6:8:d3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Thu, 13 Apr 2023 16:57:31 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 16:57:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <bf693fa96ff6bc38fbe78af2f76182117234be02.1681379167.git.jani.nikula@intel.com>
References: <cover.1681379167.git.jani.nikula@intel.com>
 <bf693fa96ff6bc38fbe78af2f76182117234be02.1681379167.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 13 Apr 2023 13:57:26 -0300
Message-ID: <168140504629.4412.5649074158259393472@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BY3PR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::7) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB6517:EE_
X-MS-Office365-Filtering-Correlation-Id: 2e0afe2b-d273-4127-2e78-08db3c402b4d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +MLJ4LAmk2UIQSk+rqdsQHodeIwhkH7Lvon55H4LAEHL9a9Xra1Enj9+1EQexcHBEWk2GHaZ2oN1Ov5c9jeFAYrSIv9YP1Kdlp3h6gfU+GNOxRpXpvgXjFssdrRikr3sW44Kai41D61qoEDrKElzo6uuhrzUOS/ulat71aQpWI3Gj6EPFTX5mq6XqstaoD4WTJcEQDN2/PUq7o+VyeUDEkFBHxiYj88zfZsPd+Bgr7zYaYXoXPvEYpX5rBreHccipWrG+H3lGONLTmE9jF2oZH0Mda3/akFphxwGvWCoKMfhatuckveGMWdr/SGhlqZQGR407zfJbRuxnGk91NBTReDlsV+x0YgPmcz0a+5mYla2GB8Nw2j47cG+I1UB+hRPu4VLJh68vJJWGnmnPphmdOFNiuAyR71RfDnOVRi/QsHHnEaf4NvuzAN8XrN8LrtwYKNoVAH0Z/a3WplrHDKO4PD9L8zVWacJTlPVWi/PBWqajEtCpAPZ1A6Y+3SuLbzWdKBcufkkmNLygUwBLKq4fPKBYYBzvcUrdvPa/xoK4HWPbjzjMBgBj6j7KhVpmy45
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(346002)(396003)(39860400002)(366004)(136003)(451199021)(66899021)(5660300002)(2906002)(38100700002)(86362001)(316002)(8936002)(8676002)(82960400001)(66946007)(66556008)(41300700001)(66476007)(4326008)(83380400001)(44832011)(6506007)(186003)(478600001)(107886003)(26005)(6512007)(9686003)(33716001)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0lYTGVhenBkQlBEcWJuQXZvM1FTMVB1WHZZUy8vVy81TWJXRHVqTEN3UHJJ?=
 =?utf-8?B?anFYNG9NR1ZmQjBOZHRDcG43T0Exc0J6WUFHbHlibFNOTkhwTm1QS2pFOHda?=
 =?utf-8?B?cERRajJiMTZkaElMVjVENEttNmRSVkRHczR1ZmdpTDczQXlKMk1za29iS0to?=
 =?utf-8?B?UUhPV0FOUE5laHFoTlVQQnUxaHlrM2JUTkwwQ2tyR1BWOTQ3bXZGZTkrcW1p?=
 =?utf-8?B?RDVXNW9xUkRFNERyeFJUMkFEVEUwdWhFdm9YeTZWY0NZUUpURldXbm9CQ1hV?=
 =?utf-8?B?ZWpoNHE1ODlRNURsbjY1WDFOaHNBRlNWY2VPKzloZ1JRUmNGYmlSUEIrMjhj?=
 =?utf-8?B?c3NIRTFVWm1XSHlXR3J6eU9LdWNNd0k3eXZEWHFtZVRpdVVyTktVclVYWERJ?=
 =?utf-8?B?SlRpTll4TDBSMWlWd2ltczlEdFk0emRRQkhuUGxtT3F6bW1FWkd2cllOQlV0?=
 =?utf-8?B?MmR6QkhOcFpxL1lTRjVQMmtuMEVsUU5GaFcvTURmVTJBWjNQcm5HdGtOYWJx?=
 =?utf-8?B?a0ZybXVnS2VWVElISktUeXc4UVR6OStqRmZRWXhpUGhOV2RoWitqTjNhYjBH?=
 =?utf-8?B?WGJGaUtBRDhBTzBXTzZjSUZXUStNQ3Bod1FaU1hqdjM5QVhRYU1CTkJIb2pF?=
 =?utf-8?B?djBCaVlGa3Fqc2dGTzBtRnpQVm4zcUVSZ1Ywdk5xWncvTWdiVG1MdzNLdWh4?=
 =?utf-8?B?bzA3T0ZTL2NBVmluSWVFSWhaMXVPVHA3OHNQYys1TjErMVo4QzN3MjhMWUtW?=
 =?utf-8?B?ZU04V3liMjJqWTV0bFBRMFdKbHF4WHk1cml6UFJrQWplNDE1SElwc3k0blpq?=
 =?utf-8?B?di9ZNlFFcHpESWFZN1NtTXdkWHhaRHJBNWJ6a2FCWjdVVHRQRFBmQnJIamdR?=
 =?utf-8?B?WHdvSW9jRk5RdmJYeVhqYzNPaUZkTkJOK3Znd1VoaUJRSTl1bCt3UE4rSkxh?=
 =?utf-8?B?QTlHTWRyekIzMy9qK0luT2Y1SjNDcUJ1OFowYW9WMWxSb0dtRjVKSlZ4SnFH?=
 =?utf-8?B?dVBoMHVMYUFNa0o4dTFtaUx0N2pmUnh2MURlNnJQazIyWE1RQVZ3S0IwK09n?=
 =?utf-8?B?ZzlhandLTHFtcGhoNjlRWTVDeUI1RGxRTWRwWU9XOVBDZkdoUENRL3V1c2cr?=
 =?utf-8?B?YytUZS8weHc2NUN0QzJVbzluNGtlcXdkZElnTnZvWmFQN2ttL2l1NXE5cWtQ?=
 =?utf-8?B?b0JJUSt1TmF3VWxQeUJXQkFJL1FITGxYMWNJRllZQXArRkh4aTdUU1gwSUhP?=
 =?utf-8?B?ZHU2d1RSMU1BOFIvVklueFlUOHNLTmd0NmszeDJLRlBIT1Z1bmdQT0R6dEhR?=
 =?utf-8?B?N2Z3Y1gwZjRCU3lZNndhTWoxY1hVbk5NNElCVFFJdXBkanJUa3dDbSt5SE52?=
 =?utf-8?B?UndHZkNtaFFCbDZVbXI3c1ZmaHVMbFdBQVkyZWR4cFRJMEVQb1BFdnYwa1F1?=
 =?utf-8?B?NDE2d1A1Unc2WkVCcWlDRk9zMUVNTi9ZVk1qU2dGbWQyTWFLOXNmMG9sSU9U?=
 =?utf-8?B?UjlRbTZEREZIM3huOE02bE9qTXQ2ZTJDZTFOTjhUYlJwcHJhVXpqRnFseWJS?=
 =?utf-8?B?eHdVdEhQNnRNSEozdWhjaFpBMURDR2YyVmNheFBlTndRdDBjeWhmbDN3UDFj?=
 =?utf-8?B?bGc3UUhtU3dCNCsrSXNMUS9mbTVqWlBndXl1ejZNbWdwWlhPOE1ialVsbzZO?=
 =?utf-8?B?ZE1PSFlGUVd2SlB5R2diS3l0K1MySHhHazdnSjR6NEt2UWtjNUJhTmF5TFYw?=
 =?utf-8?B?QjhmZzEzOUVwVUVidi9ROFRpMTJDR2pwemdvNGFRR0FNRjVGU051MGZ1UWt0?=
 =?utf-8?B?elQ1SGhsaUNEdU1zNUJOcDNneDZ1NG11VWZVQW5od0N1Mk9LbFpCZ2ZyTjdz?=
 =?utf-8?B?K2tXWTRIUFBaZTVXVFEva21oOWNnWUUzdnlJM2xVeEdVYXNZV1VCcDc4V1Na?=
 =?utf-8?B?RjFwUEVEM3RrUndtVHkxUEJiSG83aVJVenpFZktGMVhicUJXOTVjcTVzYzRE?=
 =?utf-8?B?U2pnODUvL1FKT1h6T2M0VFE1NDNoZVhqVkx5VmJ2UG9CbTdWVWM2ODRWQnAz?=
 =?utf-8?B?SmRGc21KTkpiM1BENXdQbHgxUUVFUTFlSGxsekZwU0pZTklJT3FCUDFkS1BQ?=
 =?utf-8?B?QUFNKzh4UXBRaGxmZzRleXdwcmxLRGJWa3JBeWxETHRvQUthWXlPZFZ1VVlz?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e0afe2b-d273-4127-2e78-08db3c402b4d
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 16:57:30.7470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GKWqVHsM68fMpFqSs+Hh3BphKjswcWPeYUXV7XIQGTxE/rNzwJS2OzUbrkguONkUy72b71uLsOddSJoWCgtu1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6517
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/display: rename
 intel_modeset_probe_defer() -> intel_display_driver_probe_defer()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-13 06:47:30)
> Follow the usual naming conventions.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_driver.h | 2 +-
>  drivers/gpu/drm/i915/i915_pci.c                     | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index 1386f2001613..882a2586aba4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -21,7 +21,7 @@
>  #include "intel_fbdev.h"
>  #include "intel_opregion.h"
> =20
> -bool intel_modeset_probe_defer(struct pci_dev *pdev)
> +bool intel_display_driver_probe_defer(struct pci_dev *pdev)
>  {
>         struct drm_privacy_screen *privacy_screen;
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 4c18792fcafd..744117b04ed4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -11,7 +11,7 @@
>  struct drm_i915_private;
>  struct pci_dev;
> =20
> -bool intel_modeset_probe_defer(struct pci_dev *pdev);
> +bool intel_display_driver_probe_defer(struct pci_dev *pdev);
>  void intel_display_driver_register(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> =20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index bda5caa33f12..d64e074d7457 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1355,7 +1355,7 @@ static int i915_pci_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>                 return -ENXIO;
> =20
>         /* Detect if we need to wait for other drivers early on */
> -  if (intel_modeset_probe_defer(pdev))
> +  if (intel_display_driver_probe_defer(pdev))
>                 return -EPROBE_DEFER;
> =20
>         err =3D i915_driver_probe(pdev, ent);
> --=20
> 2.39.2
>
