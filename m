Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1900A62E74A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 22:49:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E582110E694;
	Thu, 17 Nov 2022 21:49:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D221510E694
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 21:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668721779; x=1700257779;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lhP+xMuUmB4IlZTBaJvy3SZgmXK/TBakoif/aTjoYJk=;
 b=KFUZbMcHdKNxgtIY6uoKGQwxmckgIjWCazVimpKTYnSVMspqEVQAnXOh
 Xpo9X1v1btjPhgki4KcGsj6c0fDpOrPkKy9z++3SXK7QPCK0MoeDYQnPW
 cjNXkDI/bilAlxLmID/HEO76+o6h8iHg5YRa3rXahPzqPEeXHV+xQgofy
 TBkLd9b3LxEsWVAmhDQ20OsS/d6nIFo0eSMW6Ij9zABe9vihiynkGLEaW
 Uf6O4gfqOSc8a36xwj9Y/Ah5o66XgGwuWWoWKf5wml9kJHM8eOkt87sl5
 2mRWGF+fPcX3jABUw2M5ns0JLHwj1JMdIKxoyV2JOsZSUzuiGYqrRUs0R w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="292688466"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="292688466"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:49:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="703496865"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="703496865"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2022 13:49:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 13:49:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 13:49:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 13:49:38 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 13:49:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLiHADtjQULNJL3mDOGg0G4B15/frNnIdY1ftwEYUobiQzyr4vzP7iguNj3pcxG173lBuNU12wWrdS1xyPgLADL7FU9rVl3F5z8m7v/GW0E6nJopkl2vrhgIYo/gsQiF94ynZ1jUqT2WzAeQvNISvdrVkPOpwnyBhKzknHf+9AFBFVW9KRE57V0W6Lkt1jCkAvQWhyO3ZSsVvHB/CAr9ojbRFDG1kSO+JO7sy9H+16j+IxXMGfMaoYmb9fy4mg7VLRQyVLrQcmytQ3vOGMU+v3/ww7syY7qt9D08/OvzkfpgsZ0IrVWcVfl/XXUijx5WvYx7KEguvRGB3tdAmfam4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iv0CqdIUnbj/GSGKPaT90A8RKyFyrKq1iLQb4LgESVM=;
 b=EjiLydRHL0WVnNODWla8GdwnQa0MkALmTzp4MpKFLc1/35iFo8IAVUcofYEJpqFgLII1I/x7R6KjHarwsecJg+k0jvj2yD/jpuVS7T7Lm6PLVqkOXJZLxUXNmYgT7uRhH6/qzARG5LL3+K4zNw9ArBGXwJ47j3QWjvI2GnphMc/cRJ97k2UovETOPcmkN3Lsrw5OSkWK3Jlvk9lk6OAhjT33jtrn5JUYl2duuWYUJtqhGzJi4B7K7z7+rRQznRCjlsimBGs79vT3gzqULNagEopKyEzcsMfxcAJijgxLewZqDzdXwtRYJYKjqZKrT8zE9n5eFcRPAVCUo+1EXXxDQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BN9PR11MB5433.namprd11.prod.outlook.com (2603:10b6:408:11e::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Thu, 17 Nov
 2022 21:49:36 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.020; Thu, 17 Nov 2022
 21:49:36 +0000
Date: Thu, 17 Nov 2022 13:49:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y3asbD+IgWVOtLEZ@mdroper-desk1.amr.corp.intel.com>
References: <20221117214132.152061-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117214132.152061-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::27) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|BN9PR11MB5433:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e5ea31e-915d-4de3-d8b8-08dac8e59df8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VwHgOlcl0xIE47RsTZxoCCHxegMY2M8NI6FqLYceARtVXEKx11dsWc+Kf0FkDSglN3PYLcP+aaI4f0ialqaVA2yJUoMlUYBekGsMQBrhpFTJrArl/ieTN+52W7T1EwFtkvn7HXmkrI4w4Zyxe4VvXEGXImKLjEgZZ+9ihNNgDycXMYYtmJLUmVZozM5yPfrx//tn31pZikYvYLw2zwy6DXsRqcQbthQ28BY9rUDFGXX+kIWAxIErWVefCthAywfrMexuTlbTtlCUvop2T1CiYsmmiPUv3gF8u+lVKUXrXNzg7lw4JhZY8Wvge3rVNFePU7tJ0fSXSGoEd/rQbkEDxMEXJ6n7h1bpPR68YcuHf/2dXtTUcecXF2KtRjS32hnu+zyKs73X3sfuSDW1+s9D7Sj+BxzhEhTs8faZ8b+oNW2VA/63UGt2q5XATMia53vuSjGctc88d4bZHdSAoxvEqbZWpnAt7zVldneHcfcR2Rx1AzCmXRFdqYcA3mUa27UsW+D2MLxzX3Ec2NzNLoa2GSvAr7TGO7g3tqQEzJKH/iNMQbxK60fgLdhs8RhpzXu4dqGhFhYBeczwd3AawXfjnUW2h4VbeaP9aTlU1isH9GgooLDPkid9hIkoMXIV4L1LwJqt/NA7JMgVf59ZsQpbvUPv2coq/pHOLj0OK0hddtDLQRcb5DEA/CQU5fplJNUb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(136003)(376002)(396003)(346002)(451199015)(478600001)(6666004)(26005)(6636002)(6486002)(41300700001)(6506007)(2906002)(66476007)(4326008)(66556008)(66946007)(8676002)(6512007)(6862004)(186003)(316002)(8936002)(5660300002)(38100700002)(82960400001)(86362001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tzcL06BpjGGRoNI5NYkhEUZLmFNYljNlvdyFEyicwcr3vw2kwTaXrZQJSszO?=
 =?us-ascii?Q?YcK/81+f/0NeaCjc+KWAJ6HN3qY21MIjMADypmlkyHxBoRUqbdVcSTGa85Vs?=
 =?us-ascii?Q?X5UVdvKykgV3CWcIbCsidkRDBQkNsbuq7lPrVbnN56eHCsOClpk2GnSq1cOx?=
 =?us-ascii?Q?uPC2p6qTcWiaZs/KscN0gb6qMEotNn9kES/PQnRRKxRwHXT9AEQrHTXo0tcr?=
 =?us-ascii?Q?EZqgIYSLudS8feM0U4To+an3zXIhp2gzsvfPjcIZzfPONpogvttcQn/FDyLZ?=
 =?us-ascii?Q?utBl/LsSoTiBKaglRoM+66fohtIMZPMEOE3i6YAazrIbcU2bVE585cEqscpV?=
 =?us-ascii?Q?OUzT79RLqy7Etq9Bf3yZSnCnSabIJ7j0IbtjY8FrIY6jjD/P9+AX3qKUp8iO?=
 =?us-ascii?Q?gtc0hUZtHKFo16fG2iJpqsvYFcC5gfH/5BthZMFWoHOvcCR6qbcqQTBMht8S?=
 =?us-ascii?Q?BAyC7VBikRSbXnQl0gazhX/nKg8u8f6hPIERdJdSKN2GnkLHIk4eEVCg7UR5?=
 =?us-ascii?Q?Kq7L6HPRMdWgzsCSvibO/k9peGLZ8B/hteA5AJR28h4lwbnL//q7uO+o2Jvx?=
 =?us-ascii?Q?xXdku3UzWaJgUrDrCE5JDpBJu7ewSZzJEpOfcxNx52E1wL17YKjtKqXplEVO?=
 =?us-ascii?Q?Ko91ctSA04aL18GGkVB3Ly0RbAEc8hsxo+ncnnbdpIj0gdU2j8WU6K105Iol?=
 =?us-ascii?Q?VLhuGsOIHCzB/z304Fi6BoMsqSJSPlw6Wbyr12pRsO4ceV8bvZdIZbEY5hy2?=
 =?us-ascii?Q?N9h/za83E7hW0jk4NkTlV5LgOHdgQCHb3oIvrK+lySlAoH3tIXBjZNxx1wbk?=
 =?us-ascii?Q?a92cMLn6+gFnrYlQcQ21KO1OMbA52EEvPA5k3YzGWOy320Dl7RVOTtr82oc8?=
 =?us-ascii?Q?FYEMS+9ympLgdpUM7YxwBYrXa0D+JhmZNTc/MRm5GdR+ND31keTNJPrex09n?=
 =?us-ascii?Q?9SoNYgH5pT01ubGC0ciU0vxeEC1Vh1Lr4UjrEGC76NQkNBkmzurwKPDAFsh0?=
 =?us-ascii?Q?w+ujGJznqZMFtmFRB7xUZykEDuqM2pXAPwUB2WdY2UNhZP/MWV/HQNvP5J3F?=
 =?us-ascii?Q?nhbpD6qFIIUQ628sUi8IYriiXPbWeORGxYu7PoW9Tv1UmoJyaU12goc39CVT?=
 =?us-ascii?Q?iO7jOg5COtfHqf0tjbOFDbn9hPWuxhhbbg9Mr4+8y232ip2rcJW5sBL6O3rn?=
 =?us-ascii?Q?DJPoKV/VRB3G0UFBzWetj2K8h5hQMh7M9suualGoMnsVOp2+bktCfplJAeKN?=
 =?us-ascii?Q?1Bam7jX8QAPFWcJqJbpCdUw3r1fvk0ZpGMYRS0Av4jgDxCQePGGQpHezOHoL?=
 =?us-ascii?Q?O2bhnYfrA4Qwk2E0LDfFYWtds87w+8Gxcn1usNgcTlVTusT4CQ2X39WYOIGO?=
 =?us-ascii?Q?5w7NjJ4MEuZXHNE35Y4pFGJ2mriUypgPVSyPJCfIz4s1ngnQFrHw2OPGEJBf?=
 =?us-ascii?Q?fE36P4X9Z02qkp6V0rO3cZ1E7jNYorXmZTyIQe1u8ZacerKgd7kTQQyu/qzL?=
 =?us-ascii?Q?N9oJ/Jn8L917SaocMdRnFQJMzOVMo1iqQow3sKI2JJRlHEkG5706QEo1UGvy?=
 =?us-ascii?Q?3vwEI02Pf9pD8FwgbmcBtKuUnVW9R3Ju3yY1LHBHHo0n1iu3U3h2xUDgI+OY?=
 =?us-ascii?Q?mA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e5ea31e-915d-4de3-d8b8-08dac8e59df8
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2022 21:49:36.2399 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mosJibkKK7JWkrGw4ux6lfiynrsh6a/zjEvWrBS7OqgbBPzPXg3lF7nhwddsaSR+BXQxW4AcueBXqEkjMsqYpGkv2G/zR9eOBcYwv8Up09M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5433
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rpl-p: Add stepping info
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 17, 2022 at 01:41:32PM -0800, Matt Atwood wrote:
> Add stepping-substepping info in accordance to bpsec changes.
> 
> Bspec: 55376
> 
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_step.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 75d7a86c60c07..84a6fe736a3b5 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -131,6 +131,10 @@ static const struct intel_step_info adls_rpls_revids[] = {
>  	[0xC] = { COMMON_GT_MEDIA_STEP(D0), .display_step = STEP_C0 },
>  };
>  
> +static const struct intel_step_info adlp_rplp_revids[] = {
> +	[0x4] = { COMMON_GT_MEDIA_STEP(C0), .display_step = STEP_E0 },
> +};
> +
>  static const struct intel_step_info adlp_n_revids[] = {
>  	[0x0] = { COMMON_GT_MEDIA_STEP(A0), .display_step = STEP_D0 },
>  };
> @@ -187,6 +191,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ADLP_N(i915)) {
>  		revids = adlp_n_revids;
>  		size = ARRAY_SIZE(adlp_n_revids);
> +	} else if (IS_ADLP_RPLP(i915)) {
> +		revids = adlp_rplp_revids;
> +		size = ARRAY_SIZE(adlp_rplp_revids);
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids = adlp_revids;
>  		size = ARRAY_SIZE(adlp_revids);
> -- 
> 2.38.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
