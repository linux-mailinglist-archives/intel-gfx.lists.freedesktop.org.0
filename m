Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9C47CF41B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 11:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A3210E4B2;
	Thu, 19 Oct 2023 09:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D64F10E4AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 09:32:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697707966; x=1729243966;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=An+kxvweS8GD14wK0EAdVz2kqVG0C9D0Cf5L4z02dss=;
 b=Pk9QWL4R7AEm0ucumI2LJ+lm+7vG+NZbCcSv6pytNnZsGj/wEJEGCED1
 J80gjBYDjrIdZcQQ5aEFfeOdajlQKpyuaZ1k1TzvybNZ9fTpJQlUV7ZWI
 vU+RHdFUDsQr67naPAeBA+jraq4ZJt9xTGbMdnzBLIhNtIQ8E37zEaOD1
 nuiYxwW2ne0WMUXBCCLTAojuLUd6jg3YQpRSv/2Q2FZRWIhAHHTOOjIyh
 SrPJoBoJqn17fHhQ66IMIxc+IULzUbpH0CpCdoxEgDWZ6vFxINbjrFmnw
 N+hbqUv7/7a+TBEv+cvdf3R7SshspNu1rZt60JPGj5RE97aOdLetZpVLb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="417324484"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="417324484"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 02:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733506427"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="733506427"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 02:32:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 02:32:37 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 02:32:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 02:32:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 02:32:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CG/S8kAPngNQDkkxH+t209huWrd6tHapmls5PakHn0k8J3ArX/F3AjYrBesLchrLgXfrqbvjQThp+R3zQ+eeJfuvWJpIjIrvyj4bCv8rpYXlZu7Wyx1uHs+PO0UM9pBBk9d7OU6ECOFJPPZxHu4suJCtcGAWariWYf8leMwt1s7ll9a6+wLRPidR60vuY3FpiROOD68Un8YSh+OetQKwG5jYkHs1sjVymJKYHIiI4TUDWlSP1IvTCEgw1tCEh/cYVLQ+Ew6ziXkchhDxT1OXXBBFPzl2am8yP7ZKCj3MkCXknFsq1BIVve8xaaahhw1tham0t5gwLLXSvHRbCPwiTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RfaocI++3IXO+kNm5Sm11aX2fNJYGalH1W9liqMdxSg=;
 b=d1IF5+Av36VFQGDedZ3coE1w1XW7BbfhF4NSX9nP7oPaA96CH4jk8DHrTJXj0qRy4AejVmBudPBinAOSzbg1PmUhv9loE2XCsGfYNs+B2pgEMUazNz8t75sBI653nuOlZ9b1ObXzPvWGiTY5XqB3V0RQqTWFYzvpnN1mLNWVgmnxAmuskYIZa2/Hk7RGb7tN6OcN0LCIE3fpG+8BGOivsoejN9E/Ttm5xZKh7CNHy7KFR5JbNALtbYWHsrcDyZFKNHhvNJdVxOf4BCjGEoKvgojSjcPBuLiKj9kBLOI0cCkjXpVv0hZeUiDCXx4qlJ6ZKMvQoIcAqk51JiMgvFIEpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Thu, 19 Oct
 2023 09:32:34 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%7]) with mapi id 15.20.6907.021; Thu, 19 Oct 2023
 09:32:34 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 2/2] drm/i915: remove display device info from i915
 capabilities
Thread-Index: AQHaAa2+iceRyxDGlU6j8S9ZFhsFNbBQ2r9g
Date: Thu, 19 Oct 2023 09:32:34 +0000
Message-ID: <SJ1PR11MB6129C4F69257CC05ABAF4659B9D4A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20231018102723.16915-1-vinod.govindapillai@intel.com>
 <20231018102723.16915-3-vinod.govindapillai@intel.com>
In-Reply-To: <20231018102723.16915-3-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|MW4PR11MB7055:EE_
x-ms-office365-filtering-correlation-id: cff9ee44-88f5-49c3-a1b4-08dbd0865320
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GisWL8QB2xEWPl3Y4W0tJoxAMDo9VcCpK5ZHa2zqvCoQKIGSkbiRx+CBV8NqpO69c3UXYgzv4/Vt7Fbj0jYpx4RkcW4zvlMSyVbOho58ciKhMUG43h8Wdow5Bdk+sBt6xikKL3XHcs6x6Xt3OviAPaYQuZgxTEt8hfQ6+vrV9urOBwOYjzBjLHlnCWYwonzFrcP0D+kQtFqTOa3ECz6wA2l90aOaSavtcgyNDZwvWulsv/euY6JVnh780cuzQcykewvSX75yQT9el/YYZwKrA8S4QdYjhpGtCdM8njU/Vp/TwmGPzz4lHUP3PPOf+sieZXCrniN8Wj3FsQOvbFpqNUEMpFURf1xojR1hIpKvaYfVqxWDyP6WSVZmWAic2vVx1hlrGZhFjtVQq7TNowY0beiC9a5dRXdH3bPJAryZIq16cn2hsF4lon6NNEkXXuiilHb7Yqq4NW+rmo+PcQrOTv6kl/xYFMiVo9APm8vIzHXfeiTtfDwy5upO72NQjTejpNmWNz7+hOlUp71fUtoaMsJZm5BZf21CmbCSARMGydsiOvQE0Heb6fr8/v0Cn+hADYKzwKfMBfLzI1TIaXmnua1Lf563zW3gzo7iGmhOliasK/m+qqIqKi7bnxQxNCMM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(376002)(39860400002)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(55016003)(86362001)(7696005)(6506007)(38100700002)(41300700001)(5660300002)(4326008)(52536014)(2906002)(83380400001)(9686003)(82960400001)(26005)(122000001)(53546011)(107886003)(38070700005)(71200400001)(478600001)(33656002)(8936002)(8676002)(110136005)(66446008)(66946007)(76116006)(66476007)(316002)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?on8OoTW/dOjJ8tyM+rHv8Fqo72vERxAygRPiDyriJCci0Tuq92HP8Wlwsoy5?=
 =?us-ascii?Q?bkI52RLNQ0dZ9xrmHYgrRnurs46nKg0/25tRhIuWMZqSvF1JRV0L96bQ4LMc?=
 =?us-ascii?Q?aj6f2SyN68CjXnH91cCT5gVPHjPtR5QEJeeXExJWoNUOhH9uejXQztRpZJd/?=
 =?us-ascii?Q?XdDZ/9arJQJNH0radyH3UQTsT/bUUlpSZijo1hI21cFfbPBG1TRvpgiztza3?=
 =?us-ascii?Q?6ra937t0uFr1P+w/FUEyn9Uo6EaB++qEh2zpHHtlkZSUCJnCvF4LDX28VErK?=
 =?us-ascii?Q?51QE8TFXbw2NhxFLiq0Upvm/2n++0FqR/ORyll/w9fZjENrUHGtfkzJ7wzTd?=
 =?us-ascii?Q?2tf/ijTpRGi6ZSbKCK/eVl5Yx6rfsDMGIC271BZCRIf/oMBc6ZvJHesgqOZF?=
 =?us-ascii?Q?fWdZ1hGNwWNn+OhWtFoNg48hDu+C9MhzFquMCKk3maeHDrofFqzhnzAlCBV4?=
 =?us-ascii?Q?+0m3Qikokz/JQO0smO2Fbxq3zMmLHEvkXq2UMN1mgVNu+E8g1DEr5MCWfuP1?=
 =?us-ascii?Q?ZHc8Y/kpR8M6vmsRhttmtaEBIau+TNbftAx+6cuIMID+prUbZsUJyNqwI9mD?=
 =?us-ascii?Q?TpvAxNKy/75qRMWslzO2yj6T67pvTFz0z/3bqoc8MFBR0+UXl5kl4p7vfG9w?=
 =?us-ascii?Q?qrUUpPb7zepV6Y+BzjdqG0MH2a+3+f6eZn2mO0LRQeVthJ36VcwYNwsNLW6U?=
 =?us-ascii?Q?+UeMRdoUpFKPP8ajZGSYwUauYeco+Q4ADFg61mxAfKLfaH5YavJ9mdzSCZMx?=
 =?us-ascii?Q?U7R4J3n4Wluiwhxw7nG1VFu1iILBkTQey/8XL7YtGrzZSPYwxCAM/9KkHxA+?=
 =?us-ascii?Q?kbOeIVNf5AR92z8z9mattfs5/n2egqjZ5Sg0B3XN+eve9yEP4a8dRu2ZSq2n?=
 =?us-ascii?Q?RpXzgBA6ca63lfAjGucigHw94vPwy5dgTQFZon20CJG+/azSjNC+MMPROKuY?=
 =?us-ascii?Q?NMsjCqk89S6haRUbl5CancjwsPAaeVnYW7gSPBuLiLi8MIadS8rEu8azGikG?=
 =?us-ascii?Q?KgIQ8geDqfJ7L7538RT4HpcMAOErVyDm5vGmOGWsiLiL1m/5C++w8g3Y0306?=
 =?us-ascii?Q?Zax4jHRocsbINVEmH2Hcerg/Bx8mJVaehBn02PiVNOW5Vt78ymqdvYzBXzMO?=
 =?us-ascii?Q?+gvAKmg4n0eDRIq2KxNoEY37KPX0kbgAVcUuO1tj1uvH7AtQ9pVGCwmIvRMy?=
 =?us-ascii?Q?yNK0gvo4inYsuqY2YHEace6e0eMrODcEdUPE7u59OPpIWMliwIMfRatmdC+n?=
 =?us-ascii?Q?xzl518f0kjPYdaYdtHvd61eoW3J9JtUOwh81qod7j67Khx+lx+NH1kbQ/pQw?=
 =?us-ascii?Q?0I9i/DwM4aZ4kEo5ovSOMa5ZfuCdcA1LtM5xKAd/oRJq6saR8+ps/IKaUDwU?=
 =?us-ascii?Q?zzo1KA3BqyMV35RamgjYCmiCCa2Ok9UhanpWpET0XZOpPL0KqLC9bnIdQk+m?=
 =?us-ascii?Q?h0Mm7mmjIR3yhiN4M42BsKPXLz/+QL47M2hK+chfL2h55ersy+NWk3gixQ3c?=
 =?us-ascii?Q?mz5zFjewsOq71Gsf9aBhT0kgPUUInhW8OC7tca00yVZGcKj3EiMvHCiAxNQ2?=
 =?us-ascii?Q?kZ9jsmvhL/7ZtDi4BHkEsfMbu795MWtgFkfqYqw4E6r2obz8KL/bKdR38oM+?=
 =?us-ascii?Q?zg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cff9ee44-88f5-49c3-a1b4-08dbd0865320
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2023 09:32:34.1886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MjAJUJ5NN63H8HT4Ys07OF/P4p6qpx+wKWuNrV6R7UG1z7DJX7FkglNRmirz9GcjvQpj8miDUPd9PLggDmefebMXRfe5YxeGW97RQnwm8eM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915: remove display device info
 from i915 capabilities
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



> -----Original Message-----
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Wednesday, October 18, 2023 3:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sharma, Swati2
> <swati2.sharma@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>
> Subject: [PATCH v4 2/2] drm/i915: remove display device info from i915
> capabilities
>=20
> Display device and display runtime info is exposed as part of
> i915_display_capabilities debugfs entry. Remove this information from i91=
5_
> capabilities as it is now reduntant.
>=20
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c
> b/drivers/gpu/drm/i915/i915_debugfs.c
> index e9b79c2c37d8..bb48feb3b12e 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -67,7 +67,6 @@ static int i915_capabilities(struct seq_file *m, void *=
data)
>  	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
>=20
>  	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
> -	intel_display_device_info_print(DISPLAY_INFO(i915),
> DISPLAY_RUNTIME_INFO(i915), &p);
>  	i915_print_iommu_status(i915, &p);
>  	intel_gt_info_print(&to_gt(i915)->info, &p);
>  	intel_driver_caps_print(&i915->caps, &p);
> --
> 2.34.1

