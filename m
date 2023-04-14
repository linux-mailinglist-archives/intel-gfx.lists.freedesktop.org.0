Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 793246E24C2
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 15:52:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C728410ED53;
	Fri, 14 Apr 2023 13:52:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 575DF10ED47
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 13:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681480336; x=1713016336;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=iTUq4pNWQCADXypCt4SUxdjzWFZO8l101zxx3tyFZ8g=;
 b=YKISTmZB9dg3DPj8X7T7lXM3W4DSIHn12X4lzqEL+H4MDGQA17JUGPXC
 WuL1/1DHs2IfzVEXAlR4lIq+p0nYRiJ7EQvSnrHd8znEuM2ounh20YA8a
 /rx+Y9JrAUJVE30PVWV08BND4QPTxZ5srjhSxirqo5BbMkZSptdftloz2
 fSmCns3XLR0PdX+oncMf7yM2vZF54KsqNnJqA1lYAFhrsMAc1yPuTceV/
 TIkdy+Drsr0+0miz614TjecnL7WjwK9CW27U2niv6EUdnU5wrLl2VIXmw
 niSVIcVwtvdzQM266Icq0DqTPY21ZwacxkJsV2qQe3NAc4b1puuicHp72 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="324819523"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="324819523"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 06:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="801206308"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="801206308"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2023 06:52:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 06:52:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 06:52:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 06:52:14 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 06:52:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3LMX31bZ5YT3dc9QmkoDhY3TM5xlbVFio7XlsbhnzAAY2YY8x7OvEQAgS+CN+4yUTzyH8hGC36TpsHE+uBc9EPcOl/bR+TJCVEh0p0xXcUTqWr59l9KruIf3Bnry+gXomRe1e8Fk7wiP5cMgiyU4QOoPzQAFPu7yQVx+2sHytkVs1iEj2y0Y0dwt+A2O/rDBu6G7uSD72n+LwzINKJZRHv4C7mPcGoUDB8gal4CUNJzTL7IkGnHTD3rLCBJ56j76YpscZW8GRQcPHFkwvywVfC20SrqkxnOwmz1BPq+ZoImi7g2ebbUymmJNpxBmRUYHmDGAnxKyDISob3EcjGNzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DLPULLIWlhm4PgFotxdZJtRNvVS3FAXn3lTatgfWbpk=;
 b=lt07/U/1PEfBlLtvbGOIbPTHqK/SkqEa9m+wC5aQCI3lINI8AEx7fXyeLro+5Mts2V2xtC8gdE90CZvTElInEeosl4z9ajeRoMo5K505pWSv3rltT57yQW9w4ylUju59E8ePZA+Gqk1Jfx8yRft7TAK+0Rf9ku4oGkohXjd5rzWnBKBeCLTDHl1GfmElELVdCJfE9hbOhyqgDzY8aAHlET1TauRCYYZ4aRXML/MNOGzrdK8Y875tmihOq5z2j1hrwPeutLtjnskFqeppyv3eGDvGMj/YwV0VJliqObrljrns/EYd8Yb/vZvSiJ28yM5P0p7SbuI2lwOiU3Quf/SIbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Fri, 14 Apr
 2023 13:52:12 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::9e31:fa24:17e3:a69a%3]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 13:52:12 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6ff7b76018bf4cf611037d7bf027c975cddfe2af.1681465222.git.jani.nikula@intel.com>
References: <cover.1681465222.git.jani.nikula@intel.com>
 <6ff7b76018bf4cf611037d7bf027c975cddfe2af.1681465222.git.jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 14 Apr 2023 10:52:07 -0300
Message-ID: <168148032771.39942.15470674270471798041@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0292.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SN7PR11MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: b93d4244-dcb5-4a1b-fa6e-08db3cef7254
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QNBjtW4lmDPsxpLghbQ69w7TfZNzhzdgEB/zIgSvcuv2zfa0ZgjyBuaCdUNzgXfyUYSmF/sAfdshh009T9MHCj+Z1UybcjYSA0oC5FhggeuRMbouDFOh7Z6v6fNUKqHEDKMCu+cMoAEZxFYxnPVO9R3Gddy2r/HtuDWQaEGLWYV2uP0CEw3VDaq7PbLkh5mgJuYrFop4FHTNzCkFO9xCo/xF/vgXwemXBqQzIstyLG9U7rXUlJHtHfWusMukuiUKImJpr7SpcO/jeZ4l88BUNeXSMmS4/F8yRmiFbzxXd44hJ3tzovvvNraDhFiXLDSbqVj7q2IYDd8iGFqa823sZ+P6ZVs4ydzM9cMTNw2QB/LpJnf4wOS2Xg9kcAG92ZDfc8mrZUU6xG709Tb4dSu+OjNTh28pUu0Fk9vU2oB+HI5XBxq8f7lckLg2bHExfwU1EIaoQa/QVn1Sjc+nqEgKXNUW7bHV/mjX1QNKO+icFP5v8EktHrmWeamgeAL088FxWQf/AhdCF554Q3Ihu/AaK60l0yD3uPxcUSiYw8m8iWFnVXQ48WAqUqIJVlM8zB7S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199021)(316002)(5660300002)(478600001)(6486002)(8936002)(41300700001)(4326008)(8676002)(66946007)(66556008)(83380400001)(44832011)(66476007)(107886003)(6666004)(6512007)(26005)(2906002)(6506007)(186003)(82960400001)(9686003)(33716001)(86362001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TS9GdGZobUw4MCtSbFBFRUhyQVhtL3JxdGx4VUg5cm14ekI5TmJnUUVIMERw?=
 =?utf-8?B?NzB6TE1KVkFZU29jdUpBdi9MZUVFWWlMakRBMXdPV3VyRWNjbGU0MmNXcHhu?=
 =?utf-8?B?cXAzd2Z1RVFOL1MzajVMU0J0OWxXcWFBRjc0TVEwelMyeUtadmhMbC92aDll?=
 =?utf-8?B?WE8wUy9xL2dHbGpEZlVZV2M1MUd5cDVXaWpjRitXTHJSZ0ZlL1JhOW9PcDMy?=
 =?utf-8?B?V0o5N3RlQk5lVHhEelRNL1E1UFZBaldaeWJHcTI4V1Y4VDFiZWg1M28zcHU3?=
 =?utf-8?B?VDMvaUd3VytXQkcxdWZrRDZHMktQTzlFKzZ0ZVlZOGxseHVWOC82L2ZjMWFU?=
 =?utf-8?B?TWsvMXlaM3hGNHQ5UnJ3dFNpY2NYai9IdXk2Z3NISXhvOUl1UHZUdmN1ZHVR?=
 =?utf-8?B?RTgxYzB3UlZHUVhtZTdBSDFGeDNhV3N1VjdHOVFNRnhMRnJxR0FIaU9aR3Rh?=
 =?utf-8?B?eHR4YnBaclZWZURIZlRRMHY1b04rZnZIOTVTWE1lWWZHYkxZTFBnZ1dtVXJG?=
 =?utf-8?B?T2RNVXE2eVdJV3dUV3JnUzUwdVZJYzVUY2FUR1BOT0pEdjRZcFhLem92MU1w?=
 =?utf-8?B?ME1WNTZzMGR6Z2xmWmxzTTBBdDdNeWU1cEp3Nk40a1RFZXd4V28zcTEvbWZX?=
 =?utf-8?B?MWxjOXltZkRYc3QvaFB4bjZNQ1lDUDhCY2ppOWYzbkhmT09PcGRraGp6T0ZR?=
 =?utf-8?B?REttaDFyVjhNNEQ5YXlyWll2UXk1aTJWaCtQY0hoVHFWRU1jYUJ1bHduc2NC?=
 =?utf-8?B?QjFJdmVJYzFsVXlIQS9UMTJkK2VJSGZaWWNxR29pcmFseWNjMWZHMXZiS3cv?=
 =?utf-8?B?a2tZSlMrUEo2b29NeXhCZm5mZ01jOFdFNXVxdk9rU1dQalEzR05lNG9hOXRr?=
 =?utf-8?B?UE9hdGxtT0N1YkRaZS9ZeVN2ZXdzSjJwQ2tjTFFhaXBHTklTcGNrbzhLeHpw?=
 =?utf-8?B?RitKUnEyNVZkRmRjRHlOb2orbzBRNngrZTJGaExsMFZZUURHem9PNDNVUTVw?=
 =?utf-8?B?clZJeEVvWjR6OXlZN0dPZGk2Q3pOSHJGRFFsVDQrRGY1cVlLR2tLOHlzT2hm?=
 =?utf-8?B?VEN6QTNWc2hTa05IQW9MK1AzR2hxMDJncjJ5eWJmTWRZdTgwMXVsbW5XUVRH?=
 =?utf-8?B?dVVJMS80TkkxenNmTCtiMzhUUWZkbVV0clNUbmh2OEkzSU1pd1NjSDRORW9K?=
 =?utf-8?B?NFlzdU1UbjVJb3FWZ3Y4TndQZnZmbkhHM1hSUXhNY2w3U3FWNFlsOVZpb1g4?=
 =?utf-8?B?eWwvT0FoTzh0cnlIc3JrWko0RXUrMm0ySlpFbHdGbzhqcnBUdkRiemR3a3hG?=
 =?utf-8?B?MG5ucFl5UnRmanNzckFOWHpjQmNCS2hGOVYyQTBDKzJDbXpmekhUMmxjTElG?=
 =?utf-8?B?MWhDTGxaZTlOT3BqM0FzNXQ3UktFTis5Z2gwZVNhZVJ1RGtRYXkxNFhXTFV6?=
 =?utf-8?B?TnpLdkVMeU9nMUJWcllOZEd4b0pKb3N6NEdkNEtTb2tISWRCSk1tSFVhTDZU?=
 =?utf-8?B?cE5mM3JlMUFCbzA1NFA3Z2xQaGFaZDVpRk1vaUg2K0ZSQ0prS3dsNzgrV05V?=
 =?utf-8?B?T25KNnZtMW5IQjBydjN1N00vZzREenJLU1lEVStrUXl5b2VWU1hxMmZSbThL?=
 =?utf-8?B?ZHdoaU1vUFRQcGtldGVIY1VxQmQ4eUxiTVlpM3h2dlJyU1hlb0p3ZVMrd1dj?=
 =?utf-8?B?bWxOdittRTBUdlBFZHBsL0FnUGtRNlhrU3B4V0NEV3lrbXNJN0JXdVJrWnlt?=
 =?utf-8?B?dDd0OGZrc09sR1pQMjdrcnpPRks3T2o4aTk4Nk1qS1YrNkFoelZnMCtHN2hP?=
 =?utf-8?B?cWxEeXo5V2hoanFiaTNkRXRqR0FTSFVmbnFmeTlSdzhmUmEwQWZyeVFQOFJo?=
 =?utf-8?B?T1hOUnFKZEZvY2pwSnNlWkhhaGxOSVpTNFVWb01lY3J3eSt5NWFIRWFPQzBN?=
 =?utf-8?B?SDRmb2Y3SzZzZHVzTGh1WGpEdkJMK2hmZHZiNXV0UUljRmFNdU9RRnMzVDNl?=
 =?utf-8?B?c3d0Zk11eWJHSkNUaFNQSlAyeHJQMFhNL3dJZHM0bzh2ZHIyVjl5S0VBMGNH?=
 =?utf-8?B?UU9nV1dmd3EyTU9nY3BOdU1zZXQ5bTc0UW9RakI5dURtU0xIdFlDMmRTL0tO?=
 =?utf-8?B?ZzRJVHBHV3BDek1xZnE1THlmYmFqbDFabjZ3MVhMK2ZWRHNMV2k3eGxMdXlM?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b93d4244-dcb5-4a1b-fa6e-08db3cef7254
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2023 13:52:11.9558 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R9G+HL0CTFeGRLDNFxIWt7+AQWnSvAF7e8VmIemJGbDVW1wxB6vERvEKvqNF2I2f9QeDxhy4h7aP4kFdE3e6Jg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 06/10] drm/i915/display: rename
 intel_display_driver_* functions
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-04-14 06:41:58)
> Follow the usual naming conventions.
>=20
> v2:
> - Also rename references in comments (Gustavo)
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>  .../drm/i915/display/intel_display_driver.c   | 16 ++++++------
>  .../drm/i915/display/intel_display_driver.h   | 14 +++++------
>  drivers/gpu/drm/i915/i915_driver.c            | 25 ++++++++++---------
>  drivers/gpu/drm/i915/i915_irq.c               |  2 +-
>  5 files changed, 30 insertions(+), 29 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 86cc2b6085a8..59684febc345 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -833,7 +833,7 @@ void intel_display_finish_reset(struct drm_i915_priva=
te *i915)
>                  * so need a full re-initialization.
>                  */
>                 intel_pps_unlock_regs_wa(i915);
> -          intel_modeset_init_hw(i915);
> +          intel_display_driver_init_hw(i915);
>                 intel_clock_gating_init(i915);
>                 intel_hpd_init(i915);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/driver=
s/gpu/drm/i915/display/intel_display_driver.c
> index f7805c6f1b63..45e425100385 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -72,7 +72,7 @@ bool intel_display_driver_probe_defer(struct pci_dev *p=
dev)
>         return false;
>  }
> =20
> -void intel_modeset_init_hw(struct drm_i915_private *i915)
> +void intel_display_driver_init_hw(struct drm_i915_private *i915)
>  {
>         struct intel_cdclk_state *cdclk_state;
> =20
> @@ -170,7 +170,7 @@ static void intel_plane_possible_crtcs_init(struct dr=
m_i915_private *dev_priv)
>  }
> =20
>  /* part #1: call before irq install */
> -int intel_modeset_init_noirq(struct drm_i915_private *i915)
> +int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
>  {
>         int ret;
> =20
> @@ -246,7 +246,7 @@ int intel_modeset_init_noirq(struct drm_i915_private =
*i915)
>  }
> =20
>  /* part #2: call after irq install, but before gem init */
> -int intel_modeset_init_nogem(struct drm_i915_private *i915)
> +int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  {
>         struct drm_device *dev =3D &i915->drm;
>         enum pipe pipe;
> @@ -281,7 +281,7 @@ int intel_modeset_init_nogem(struct drm_i915_private =
*i915)
>         intel_fdi_pll_freq_update(i915);
> =20
>         intel_update_czclk(i915);
> -  intel_modeset_init_hw(i915);
> +  intel_display_driver_init_hw(i915);
>         intel_dpll_update_ref_clks(i915);
> =20
>         intel_hdcp_component_init(i915);
> @@ -318,7 +318,7 @@ int intel_modeset_init_nogem(struct drm_i915_private =
*i915)
>  }
> =20
>  /* part #3: call after gem init */
> -int intel_modeset_init(struct drm_i915_private *i915)
> +int intel_display_driver_probe(struct drm_i915_private *i915)
>  {
>         int ret;
> =20
> @@ -382,7 +382,7 @@ void intel_display_driver_register(struct drm_i915_pr=
ivate *i915)
>  }
> =20
>  /* part #1: call before irq uninstall */
> -void intel_modeset_driver_remove(struct drm_i915_private *i915)
> +void intel_display_driver_remove(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
>                 return;
> @@ -402,7 +402,7 @@ void intel_modeset_driver_remove(struct drm_i915_priv=
ate *i915)
>  }
> =20
>  /* part #2: call after irq uninstall */
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
> +void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>  {
>         if (!HAS_DISPLAY(i915))
>                 return;
> @@ -436,7 +436,7 @@ void intel_modeset_driver_remove_noirq(struct drm_i91=
5_private *i915)
>  }
> =20
>  /* part #3: call after gem init */
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
> +void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
>  {
>         intel_dmc_fini(i915);
> =20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/driver=
s/gpu/drm/i915/display/intel_display_driver.h
> index 947b666575ee..aab498617b90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -12,14 +12,14 @@ struct drm_i915_private;
>  struct pci_dev;
> =20
>  bool intel_display_driver_probe_defer(struct pci_dev *pdev);
> -void intel_modeset_init_hw(struct drm_i915_private *i915);
> -int intel_modeset_init_noirq(struct drm_i915_private *i915);
> -int intel_modeset_init_nogem(struct drm_i915_private *i915);
> -int intel_modeset_init(struct drm_i915_private *i915);
> +void intel_display_driver_init_hw(struct drm_i915_private *i915);
> +int intel_display_driver_probe_noirq(struct drm_i915_private *i915);
> +int intel_display_driver_probe_nogem(struct drm_i915_private *i915);
> +int intel_display_driver_probe(struct drm_i915_private *i915);
>  void intel_display_driver_register(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915);
> -void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
> +void intel_display_driver_remove(struct drm_i915_private *i915);
> +void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
> +void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
> =20
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 5ccb24498cbf..f11ca12cb55d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -753,7 +753,7 @@ i915_driver_create(struct pci_dev *pdev, const struct=
 pci_device_id *ent)
>   * @ent: matching PCI ID entry
>   *
>   * The driver probe routine has to do several things:
> - *   - drive output discovery via intel_modeset_init()
> + *   - drive output discovery via intel_display_driver_probe()
>   *   - initialize the memory manager
>   *   - allocate initial config memory
>   *   - setup the DRM framebuffer with the allocated memory
> @@ -791,7 +791,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>         if (ret < 0)
>                 goto out_cleanup_mmio;
> =20
> -  ret =3D intel_modeset_init_noirq(i915);
> +  ret =3D intel_display_driver_probe_noirq(i915);
>         if (ret < 0)
>                 goto out_cleanup_hw;
> =20
> @@ -799,7 +799,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
>         if (ret)
>                 goto out_cleanup_modeset;
> =20
> -  ret =3D intel_modeset_init_nogem(i915);
> +  ret =3D intel_display_driver_probe_nogem(i915);
>         if (ret)
>                 goto out_cleanup_irq;
> =20
> @@ -809,7 +809,7 @@ int i915_driver_probe(struct pci_dev *pdev, const str=
uct pci_device_id *ent)
> =20
>         intel_pxp_init(i915);
> =20
> -  ret =3D intel_modeset_init(i915);
> +  ret =3D intel_display_driver_probe(i915);
>         if (ret)
>                 goto out_cleanup_gem;
> =20
> @@ -829,14 +829,14 @@ int i915_driver_probe(struct pci_dev *pdev, const s=
truct pci_device_id *ent)
>         i915_gem_driver_release(i915);
>  out_cleanup_modeset2:
>         /* FIXME clean up the error path */
> -  intel_modeset_driver_remove(i915);
> +  intel_display_driver_remove(i915);
>         intel_irq_uninstall(i915);
> -  intel_modeset_driver_remove_noirq(i915);
> +  intel_display_driver_remove_noirq(i915);
>         goto out_cleanup_modeset;
>  out_cleanup_irq:
>         intel_irq_uninstall(i915);
>  out_cleanup_modeset:
> -  intel_modeset_driver_remove_nogem(i915);
> +  intel_display_driver_remove_nogem(i915);
>  out_cleanup_hw:
>         i915_driver_hw_remove(i915);
>         intel_memory_regions_driver_release(i915);
> @@ -872,16 +872,16 @@ void i915_driver_remove(struct drm_i915_private *i9=
15)
> =20
>         intel_gvt_driver_remove(i915);
> =20
> -  intel_modeset_driver_remove(i915);
> +  intel_display_driver_remove(i915);
> =20
>         intel_irq_uninstall(i915);
> =20
> -  intel_modeset_driver_remove_noirq(i915);
> +  intel_display_driver_remove_noirq(i915);
> =20
>         i915_reset_error_state(i915);
>         i915_gem_driver_remove(i915);
> =20
> -  intel_modeset_driver_remove_nogem(i915);
> +  intel_display_driver_remove_nogem(i915);
> =20
>         i915_driver_hw_remove(i915);
> =20
> @@ -1234,7 +1234,7 @@ static int i915_drm_resume(struct drm_device *dev)
>          *
>          * drm_mode_config_reset() needs AUX interrupts.
>          *
> -   * Modeset enabling in intel_modeset_init_hw() also needs working
> +   * Modeset enabling in intel_display_driver_init_hw() also needs worki=
ng
>          * interrupts.
>          */
>         intel_runtime_pm_enable_interrupts(dev_priv);
> @@ -1244,7 +1244,8 @@ static int i915_drm_resume(struct drm_device *dev)
> =20
>         i915_gem_resume(dev_priv);
> =20
> -  intel_modeset_init_hw(dev_priv);
> +  intel_display_driver_init_hw(dev_priv);
> +
>         intel_clock_gating_init(dev_priv);
>         intel_hpd_init(dev_priv);
> =20
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index d24bdea65a3d..3c27002547b1 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -4135,7 +4135,7 @@ void intel_irq_uninstall(struct drm_i915_private *d=
ev_priv)
>         /*
>          * FIXME we can get called twice during driver probe
>          * error handling as well as during driver remove due to
> -   * intel_modeset_driver_remove() calling us out of sequence.
> +   * intel_display_driver_remove() calling us out of sequence.
>          * Would be nice if it didn't do that...
>          */
>         if (!dev_priv->irq_enabled)
> --=20
> 2.39.2
>
