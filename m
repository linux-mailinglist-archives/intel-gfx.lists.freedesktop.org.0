Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E736E55F41F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 05:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F78112612;
	Wed, 29 Jun 2022 03:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC7A8112611
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jun 2022 03:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656473139; x=1688009139;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ky5QUuKOzyNEXwIZ8smxf5i5WnEzQiyQzDqpA+aySyU=;
 b=E1WTBL0rdhd3K9RO4F1CNmF46CsD6JjAaIveNjkpjD2oESCDkddCBRiW
 rf9YxT3OB8/LuTTPVf3JXh839NTdgAwgK/nlBDDixeQefKQ3pLZzLPNfE
 auJlmIqnATt1yyM9Rnn2VBf6ImCH7+5vu7P5Im34Ixg4G62cfEzUQXqA8
 RNdXJsj5mzJTuod/1x/d5oXaOMb+gn1iYRuZRgZk65vlYpEjAJBHRZrRA
 PrhNwDxNsvwN9rUu21bSuOIr4zHDrplbtB/xSoiar9RMKPq1Xx5u/p15V
 rLEcoES/WG+s9x9HSWD6roLP3b1FsaWHNbMIYi55+w12VYp1px7fGt/v0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="279454652"
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="279454652"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 20:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,230,1650956400"; d="scan'208";a="767394468"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 28 Jun 2022 20:25:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 20:25:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 20:25:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 20:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z3NKR8UmXgdgpQI3/xfuQzvEPBD2fmuOHAcPeUCG6/oZBo5ynWLqt56CsGa9w1nxtdQkGCubZIV+k4vYfZ+aylqe65+aSeam8xWuetmQZB7cZh++xSx8zm/7OyqpX+2LioUZ8hDMb/IUxeKIGuJE1L78LEoCj9Oif1gSEUjOhl37dqX2F3U8ULJF2jFwvZ2NUSREhm/6OsrlOooNlyq/CgTY1KhfKcDVBovOoCJ3MOa92Kh1qKqV5MiSjNZDY5XNyp37seDR98bEZijdMPKKzdgdj1O6O5m7Ya/QHr3fm0uToz9I0vdxRWBHxd5+yPYu6NZrHxpiLdb72++6u2j4RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8CaIJ1UqYvPCQXxrEcf7ob9GYi6XPkS/vyuC6FwBtDw=;
 b=ODLAOrtG0xLkeULrwLvcQVhTYmCFfWYkPrfkBZIL31yFx8lXDvgVhRz1hfGXrbGtQhIGBBUZkt5DYEVj9nIuFrpfMS+cbWhb15Uji7CG08X22N6oDtdQNBwivNcOsp+9o0yMAHht66/cvQ+8FmL04LOAkziWv18TrNpXowmZjbChIUcuOoQOCbktHb0NfKDYoLQ8BC3M8xAECGwptut2CBHfBRS4R/FEnFV1gi+LoTfyGmf6mhhvXEQviyoQo7jBfL9CBCSoHkVm1lRQ/QW9yyvUK8z45MFFCd56MsriOU3sZ7vuOG0R4dGb29+qQ71wm0gzts6YJdE2R6/+v/Xalw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 MN2PR11MB3792.namprd11.prod.outlook.com (2603:10b6:208:f7::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.16; Wed, 29 Jun 2022 03:25:36 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 03:25:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
Thread-Index: AQHYh30yqYhQgYZElUORZCNvXZ07zK1lv53g
Date: Wed, 29 Jun 2022 03:25:36 +0000
Message-ID: <DM6PR11MB31771D6FC2961EB03EC7C2CFBABB9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220624034631.533690-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20220624034631.533690-1-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3d33569-b3ef-442a-989e-08da597f08a9
x-ms-traffictypediagnostic: MN2PR11MB3792:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7X96N+9chzOnKxvx7CTSZOMvhqiYFKHMg/ruW+UZZ3/hgJ9ZkClHPeiwo98hBhiTP61ZGtnsPrbCWjPojriy4/cJc6bArk8cbXtB7K0CnS2dGKb5w9sMiMDlHBg3obz/EG2xlcTKeBBu82+WCg2gk4a078ty9n56rBY6w4J5SqQL7Q6a5aLZjXb4ooCJwue4w+2uBjiy2DeAc0kHQ+Q1y40ty4SeQ09WdnqxQQnLFT3qpCCnAFp6eSLNpwadsgt/bS3jl4g4JzS9nBvcLHZzw9ORnCx1owpxP/6L+aakx//nlb/UHmB1ShXdSBvEYqVdbGSG3uL8RmiimuKLciFZQp/jnjsWUMzCaZ3mINjLm/Ya0UTtx1D3m0OTLpo+P85H0Jqi7vUzo270IvnQtQquWmsxf9lVIulxF9djJUMEBb2RCYpHIx/q61KXX8JS4yZfw9f97bbRpUZQ/2VKlGAQ33ZZglcPxPqGp7ljtIbcZSplYTkJ+5n1IuadjbeiysHH7kOtOLX6VulumjT1KoEp5WYWMPvJhV+D5VWpeo1vynGTMkMUmCoVgS8VV4m6K0Bq6rMmeJCo5ZhL8z/RmKS2jkyH/bFUQ9IDdoCIOkRSxMM3LtqWj2zQDpeVXlI/zxuh4LCikA356O09GrIy1PsUrUex5GklLUrh6H8mrtXENfgFM17IdnOMTLOuawwhye2BJ12hFxHcBs5mRowSGO1lPmczrGS8lDqV8RGWuNQ827tIWKZHtz5wB1+QeucwLZyx0fvTcp019UDGjSnLHmn90R02140DKU76/yN4jAt5LX4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(39860400002)(366004)(346002)(396003)(82960400001)(38070700005)(122000001)(52536014)(55236004)(66946007)(66476007)(86362001)(66446008)(8676002)(38100700002)(316002)(558084003)(2906002)(76116006)(5660300002)(110136005)(7696005)(64756008)(41300700001)(26005)(71200400001)(66556008)(186003)(55016003)(8936002)(33656002)(6506007)(478600001)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VL7/Dm9CPvHAFWHAec7s1ZxJIYnPDuKPkNMGiNgd0Frq3zdq67ayjDpt1l2Z?=
 =?us-ascii?Q?LB1qoJABMmaToKetqcQhQazUYnvs6/dzF7d5uVDCScqWlTtrY47PcjlHjoDg?=
 =?us-ascii?Q?2gxL+WNiDTQdoR8wv+jZ4Ux6S6YPxDpIus6EGq+IVePsd2GtfewUOoowvkKN?=
 =?us-ascii?Q?2A/HUDHvp4M2c+s9rje9UXMEjfgW7x5PqyL9Id3ETY4psHlk0OsyZTALahCc?=
 =?us-ascii?Q?LH5Sye4/KEL3MJUE1SbstjEEleLGKCMhrSfl5wTa6BrLg3gDO/Wp/nVbczuw?=
 =?us-ascii?Q?1wfXKmwouumx29Myp6ZIxtgTD+f29tfadZ5q1R1AAPdSLaaxFyJIecMcixcM?=
 =?us-ascii?Q?vjuiPf0I4QaDAqhyCjaXIh1i2bpw0UInk+bBwpGUrrzT3z3HF3ZBI6T45178?=
 =?us-ascii?Q?8n23ZyWJYA0FYScGQUqqWkavg8hVXffW9NsOrHr4x/egvkSNihjpPN2vkYeK?=
 =?us-ascii?Q?aFf3hogdvG3RQKo7EtfHX+t9nzoiTLG8qDr4HuISDClQ/Mludq8GJFaKRk8M?=
 =?us-ascii?Q?gTSsiDPwTu/6RTOvC8SvoyIpLrp1ezOW6CPBr7WssPC/KLB/3TPTS5s5nvc/?=
 =?us-ascii?Q?8FIui+TBONMbEUBZlkySBUQTb0Tw+ApY4g1lzEVcEcqTkvRlewFcou/vocxP?=
 =?us-ascii?Q?lX9oq+ksc+U0HHEs+63S6PdRSrluXlOJhIdh3ZgMOk4ENdTa0u+B7uGQd+PO?=
 =?us-ascii?Q?uag3eNuvYSFenllNqdOpxR+7jR4B0Mw+faW7KgiGVM+6GpUqn/67bfmSsTT2?=
 =?us-ascii?Q?ILRtJc/onTRQbpey/MmK4biSpEcEgDTbIc+gwOiEy/HBLP4P0UmBTNqQIT10?=
 =?us-ascii?Q?pYF3JsMEgDh+5i5B+WxiqyC6+q4k95D+1oWHDmhs2MsM1/QXMQgd6a/5YhSO?=
 =?us-ascii?Q?foqeucx9gFvo9yRdwEJJW5QOxpuO0gpiHqxzh014LprUfjejZ4F+xCii1mk7?=
 =?us-ascii?Q?qvItvKLuAkJClqR671H70hvH3DRW8UpJt4Jp98EqTtboWxaSKM3W/jQUl4TG?=
 =?us-ascii?Q?TBH60REMq+OS/WoydqF65eCRYF8wyfvWl9tUCKNvUyGep7uwBYskZ3UfIOj0?=
 =?us-ascii?Q?oJxgJbJZNJxKiFhARHmOEVcYdRBc0ef6fAB4dQ+x7CNY2xTRBKdGCAp4ZKLH?=
 =?us-ascii?Q?n6BxKGskxb5Sk1CN8lwu9YhQXp4xlzWxWlwmADCaJ63es2iAJL/4CEU69hfv?=
 =?us-ascii?Q?vlNJ1uwAUYjbErRsazKSxzP7RRqoynLVSVR0YE/I7NVRLlTnBizInEQiDqEh?=
 =?us-ascii?Q?dqRqDTdTE9hH71NGlNHY2MVWPC/CZtqVapQ2evSIfCqroHek7APCxYp35XaM?=
 =?us-ascii?Q?4lMEO00Rp8PTJpYLQl/26yeEn+chwMfcLiq5y0NpaWpCiR8tWMRDUcKYbFcD?=
 =?us-ascii?Q?rp59C1JPkd6rDiqFquZewRxMQW6FGW3vhwvHN7T8oIeH/bwytik5ivm4YUmc?=
 =?us-ascii?Q?mwZvjwP+qrL8zVoL5n2ZjExDG0Arscnn/rJlD26rs+KwYOuBLDwnIJyUgDcF?=
 =?us-ascii?Q?1jKWJ4Shet+aCnMm2vG4H49BLvIwLB88A0kc2HEf9Y4Wkq8K9sOLFgTWC4a4?=
 =?us-ascii?Q?sFknneL1t0uAnJybksuuoBWnzl1op7qHamCL507U?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3d33569-b3ef-442a-989e-08da597f08a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 03:25:36.6928 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EPFKha1Hh/cwdzfWu2vAdxHd9GpoxS3oHwR3ru1ph1pyvJ4mNmTGUSJo9p06zrqLgkZ23U/Kj5Y/xUa5XO2vbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3792
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Check for Low voltage IO only
 for eDP
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

> -	if (intel_dp_is_edp(intel_dp) || is_low_voltage_sku(dev_priv, phy))
> +	if (intel_dp_is_edp(intel_dp))
>  		return 540000;
Shouldn't the low voltage check be for both eDP and is low voltage sku?

Thanks and Regards,
Arun R Murthy
--------------------
