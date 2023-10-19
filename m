Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 891C57CFF02
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 18:05:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAAA10E525;
	Thu, 19 Oct 2023 16:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3497110E525
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Oct 2023 16:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697731500; x=1729267500;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=e/H6koL2BkUI0bRjqPCTzhBMCqtdI+Jb7mrjHOAAnnE=;
 b=EPToPkEuNLrh4z8jPEkNj0fIov1VyUXAwBa3r1kKrpSBKS+BDeP7L936
 B6XU0HYpZJ2CXmjnO3jpFxIUoETiwhh5ixDS4hbq1Q7MXgyaFm/jzqapO
 JIwA+DW4gF+EnOZmaYdX2+nwLFhcR/07mWRvj6EWn4hjRv5g1oijkU3SJ
 1t/RzEvluGx+A/F+TFccyddjUixymEryWPw+IR6oIFCkc/Du5dV5qH41+
 XIKJH185ngn5kNAoCD4V+qoGUeQIrZ69YBgY6b1QtoAuDwAjioR3OaQ/u
 KsuY9shed6Ma7F5PkXJ9ZkKrkLxFEg31F9N64n8AXx/M8vPylNSM/PkXT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="4898005"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; 
   d="scan'208";a="4898005"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2023 09:04:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="930663315"
X-IronPort-AV: E=Sophos;i="6.03,237,1694761200"; d="scan'208";a="930663315"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Oct 2023 09:04:47 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 09:04:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 19 Oct 2023 09:04:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 19 Oct 2023 09:04:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 19 Oct 2023 09:04:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T7iY2fnED9TpQCaHXIPkbFMxRjXPNLyKC3WcsuRDc3q0up9U+CwEbCSwM5zRAMVd1u9iLP1KFmjia1vNSGLJjeLzAEl28eusHM1g5m/+LtdQD0sMy9ZPE7bLZDab7pnzomyi6B8sRxHJm9JQZKWhUgcwjG46P2TLGpzgqBWrwpzwaUl/g5Z4E1rGa1qyleKILbnHQWdewOWoqXtgOdgtfMuMBjIjeX8xnaoUBfAaj0/81851dm7HDjpYGf8Nkn2WPoQpIjjAChLXTqX20Ik3SmOiuLX6lSGMkN5c1deoqVhGjzjZNUVanfKarOl1aTUFHk5ofxqbSw0bQ7V2tWsXQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tS+S5OGyMa5aYvNx5j1iKcH1CbJ/lHs8V2ScdWDZdKM=;
 b=C92LLxOABVN3va5UdDOJ9E39P7kRsmS+1mSKNbeDuzRk4lUQsu1Nh+K9dsMP7IDNZuD7evvfuCqbaILpBUXhEyri76vnjE74EKGkhLqs2w0XBB27yjdQsX6Lr4YEzWrPGPV41urgak0b7tJDEJvWMvHiym2AGfA4sQ7ckSyKG/SGRseu7V04YwY8oJON3QAvynoqAHHltvK5SOU/4Obeph4mEwFEUhOZ/ak9LqT7uAIajAmjkAgMszltchnuvSI56A7BogvmvwDMBqOdvJiReMuqbgZI/hAwESgQcZorDG0T+QmM5txPr+P8H8D2LvJ9/bzI9EAjI2+txIZPOukwdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.24; Thu, 19 Oct
 2023 16:04:44 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6886.034; Thu, 19 Oct 2023
 16:04:44 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231018222441.4131237-3-lucas.demarchi@intel.com>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
 <20231018222441.4131237-3-lucas.demarchi@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Thu, 19 Oct 2023 13:04:40 -0300
Message-ID: <169773148009.1959.9111774447308795723@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR05CA0209.namprd05.prod.outlook.com
 (2603:10b6:a03:330::34) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BL1PR11MB5352:EE_
X-MS-Office365-Filtering-Correlation-Id: 769856fd-339e-42f8-e0b5-08dbd0bd1c50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QDTPDR4m8fGzC3kuJcfZagBC0PQh4D56jUEt5IIqF/Py/U0SlfNb62zYlqKzkogNywlSHWLm/AcX6WOIxcPa2KwHHgDGZYn7J8ClPl5p7zUFqjjgqHN9k1QzAmO1kQ3ypjWcd+EAUdySHghg16XDpdyY0LlKOuATRFCa8Hk4POrsX2Up0e8X98XHIFe7u8RE6z3yl3cgkRzBQ++lJKZA/UCuH7VL6k0h4HcgRpQTb4rleu7F6h+k6iFsHzFze0wkITGbvKUY90r27iqMmfQLy6qlSFK8/d0pGjOD2uEVByQOkAPgk3lTmwuqXGQ6FkYRT/r1t9RyMdtGxtaFsVTPo4uu5YUGqN5vJjHzYzUCoO6hntt7F4h5Y2RXy6yQk4iASk99BGvlZAMJKze6bFIvgTxeblKzj6NFVh4RYYhEV4SE+/WxtO8m4Q//v1uISyoFuepB2rvnLcyrSZ5vb0QeJpg6yG2v9Y0EwaWhLHP4oolJB/Pp1c0Xd1WJ0xPT0nsjKHOJtjoOw0wCfAGKvw81ZTfsJiJ5bvv3cpKt+W42l6f3BZ0F66KiEdpdEwbTXLV9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(366004)(136003)(396003)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(83380400001)(26005)(107886003)(8676002)(5660300002)(8936002)(4326008)(44832011)(2906002)(86362001)(82960400001)(33716001)(6512007)(6666004)(6506007)(6486002)(9686003)(4001150100001)(316002)(41300700001)(66946007)(66476007)(66556008)(54906003)(478600001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXVpeDgrM0xpbWtBdXZ3OThnUzljakVyTXQrNU5IeUN4TVBWNTNqSU9GaEZk?=
 =?utf-8?B?K3JXdlF3VnN2bVhlaEhUZ2tQQjhsbzVyNzZoU2h6QThTVElqdnJjbDdCS1hF?=
 =?utf-8?B?UDZqaXQvSmdyaW05L29HeVptamhIbmw0cGkyUTV5eXU4NTU3Q3NvSC92VE5m?=
 =?utf-8?B?RVcwQm8xMGdjeGVHVjBaVVBJYzdPOXFQRGJkRTV0QSs0a3VBL2VJTTFkNVYw?=
 =?utf-8?B?ZW1wVDlCT1BtWWFQV2pNVnNiZFpZU3RLVHJ4VzdFNUpzM3ZaWkxHMVJzNUpt?=
 =?utf-8?B?bkdaZ2hGaXdCdnc0RVRiMy9oN29iU3p3ek0wZXZaWGx4LzRkY2xYZFEzeXUz?=
 =?utf-8?B?NDA0OXFSbXMxWk5WSjNSWlpsNGx2eXNOTXZHT0VNTFhKeG5IcS9OUnkyR0tT?=
 =?utf-8?B?K2pvd3p6bUd5NldTRFZvV1FGY2hnNEZueDZrL2ttVTRsZS9NYjJZMDJvSHAv?=
 =?utf-8?B?dzRVZ0xCQlBBdWJEZ2lrNlNGQ1Yva291VDA4eFBUb0Y2RXZJS2EySDFralB4?=
 =?utf-8?B?L2pGYS9oWTNVWVJCcFJnaW5mWUEySW5qNGZxbXhobUI5T1dYMHRLVmFyYWU4?=
 =?utf-8?B?a1JqM2Y4SE9EVE05a0tiWVlqWnFtL2Rvb1lyUUE0czN5MngrdGRVd053V1Vk?=
 =?utf-8?B?M0RsTk1nU1ZCZGlaNloxZTUvVkZ5clpkdjNobnY2RVNxd0tseUg3YkJNMlEy?=
 =?utf-8?B?MlN0RkF2cmZTOEJscGxyaVl6M1NEeGtFSnJzSVp0ejZCWFR4UUE0d1RWT1ox?=
 =?utf-8?B?MjAyS090WEpGdGFUOEhYeDhEKzkraUlIWE04dkU3M0dnUk9Fc2RXUTNCUExL?=
 =?utf-8?B?TW0yTEtySGJITXNSeTZmVldJVnR2eEMwQm5lL2l1d0JvS1Ayb1pXa3NXb0Rr?=
 =?utf-8?B?cGI3N3V2VWJZUkJKYzZkMzNkNnVSaUNaYVErVWE5QmtVU2ZsdHNkMTRIRlBl?=
 =?utf-8?B?NURsTFZ2RnV0UHk3QVRnOEFKSWFMMThGekVWOUF0T24veVVWYmc0bmw5U3BG?=
 =?utf-8?B?K2o1MVRROFM5bXZHNkVMZG1pYXhmSFVoKzJhZ0x0YXFPWWZUT1BzaUVYaGRH?=
 =?utf-8?B?SzQ0WXltRVpZNFpoc24rMVc0YkNDYWtXZnRpOFM0bjNnMkpFK3BmcUxvL1Bz?=
 =?utf-8?B?T253c0xPMThFSHhtMHQraTQ0emFRSVFLTFZVZjdNTmR4eDlpTmF4OFhRUWR0?=
 =?utf-8?B?Si9jWDNVdFRUMXUzKzgyZjU3NnVDN1IwK3B2TE1DLzJneVNCSTlGQzk5TDNT?=
 =?utf-8?B?WEdxclFza2Y2ZTA5eURXZEZhcmRyV1BPUWRtRTREL3k2WEVqOC9JWDJ0RWd0?=
 =?utf-8?B?ZGdQZkZINGxvMGx2Z0ptVEorS3E3QVFXUUt4T1pteWhIaVZMaCtheW5ldTN6?=
 =?utf-8?B?eEFVMTVTRzV4UURPdEpJeTJIUGs5ZHBDU0VHU29JZkNUUysxc0t1MEFvbVo2?=
 =?utf-8?B?aXNMR1FJOVUyVzlRTU1Fa2gxdHNJWHlHUnRsZlRQL2R1M1VYS20wOUJtemI2?=
 =?utf-8?B?aThvWGdCWkZXY0JWTzZHL3kzUGZNUGNsSHhySFZmUS9PYlZJM3VlNm5ZdFdG?=
 =?utf-8?B?bmk3cUM2a1g3a1NtYkYwbGVRQlAybzJIOXQvem5mSjRHZXdTYWoxc2RuVm81?=
 =?utf-8?B?ZEpMYmNwUXp0ZGIzMEpnYmFhbm5sNlUzWlFkVEJPWnRqYXNEMnB1ZDh1V0Nl?=
 =?utf-8?B?NkFPaGlxMjUwTU9jQ3ZyanpHS0Q0TlBBQVVNZldWTzhyV0tkdEtRbXVkeS81?=
 =?utf-8?B?MUQ5UTNkRStpOEgrWVkrMGVENjZTQnRWRE5JUExmNjV0RFZHL0RETFNVNVBQ?=
 =?utf-8?B?THE4VTU1dXc0U1lUVWFUalFRWE12RGQ4Y0N1OWlPYmg3YnFoSWNiWXIzbUtX?=
 =?utf-8?B?cHdmN2UyK3M3R3pLeDBGdzVtM0xGakZqVUpSR2lLUzlsKzg4UU9mOFFjRHVT?=
 =?utf-8?B?dmpZQ1RiaXd4TkpXbWFjMWVnRk5naGU1NXpGSGxvVU9EK3hzbzNidUZBZDFI?=
 =?utf-8?B?MVFjY0pCQ0xxZm9Vc3hGZDI0aUtONEwyc0wvYWFBQ3ZwWE0zVFNhNzY0N3dV?=
 =?utf-8?B?dzNGZkE5Qi9NZFQzRm1hM1pGQmRTUXR0citjMFluQzI3UUViV0NaeGRCYzR5?=
 =?utf-8?B?aDNRZUNIZGUvdnRmN05sUENIMWsyQ1NIZkQ0ckJ5c1RNYVE0T1cvQ1BHNkZl?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 769856fd-339e-42f8-e0b5-08dbd0bd1c50
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2023 16:04:44.8051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vbFU+uo6iEdNKGCcm+FqablOJi1DPu+59RPOY6io5UDffhxWRI+OxZT00mO5+UlrMvhKQH0eICbWtp0NCJaTxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-10-18 19:24:41-03:00)
>With MTL adding PICA between the port and the real phy, the path
>add for DG2 stopped being followed and newer platforms are simply using
>the older path for TC phys. LNL is no different than MTL in this aspect,
>so just add it to the mess. In future the phy and port designation and
>deciding if it's TC should better be cleaned up.
>
>To make it just a bit better, also change intel_phy_is_snps() to show
>this is DG2-only.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
> 1 file changed, 15 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 28d85e1e858e..0797ace31417 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1784,31 +1784,32 @@ bool intel_phy_is_combo(struct drm_i915_private *d=
ev_priv, enum phy phy)
>=20
> bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
> {
>+        /* DG2's "TC1" output uses a SNPS PHY and is handled separately *=
/
>         if (IS_DG2(dev_priv))
>-                /* DG2's "TC1" output uses a SNPS PHY */
>                 return false;
>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) =
=3D=3D IP_VER(14, 0))
>+
>+        /*
>+         * TODO: This should mostly match intel_port_to_phy(), considerin=
g the
>+         * ports already encode if they are connected to a TC phy in thei=
r name.
>+         */
>+        if (IS_LUNARLAKE(dev_priv) || IS_METEORLAKE(dev_priv) ||
>+            IS_ALDERLAKE_P(dev_priv))

Just like already done with the previous patch, I think we should have a
paragraph in the commit message justifying s/DISPLAY_VER_FULL(dev_priv) =3D=
=3D
IP_VER(14, 0)/IS_METEORLAKE(dev_priv)/.

With that in place,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>                 return phy >=3D PHY_F && phy <=3D PHY_I;
>         else if (IS_TIGERLAKE(dev_priv))
>                 return phy >=3D PHY_D && phy <=3D PHY_I;
>         else if (IS_ICELAKE(dev_priv))
>                 return phy >=3D PHY_C && phy <=3D PHY_F;
>-        else
>-                return false;
>+
>+        return false;
> }
>=20
> bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
> {
>-        if (phy =3D=3D PHY_NONE)
>-                return false;
>-        else if (IS_DG2(dev_priv))
>-                /*
>-                 * All four "combo" ports and the TC1 port (PHY E) use
>-                 * Synopsis PHYs.
>-                 */
>-                return phy <=3D PHY_E;
>-
>-        return false;
>+        /*
>+         * For DG2, and for DG2 only, all four "combo" ports and the TC1 =
port
>+         * (PHY E) use Synopsis PHYs.
>+         */
>+        return IS_DG2(dev_priv) && phy > PHY_NONE && phy <=3D PHY_E;
> }
>=20
> enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
>--=20
>2.40.1
>
