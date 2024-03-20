Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD837881A40
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 00:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CBA910F7BF;
	Wed, 20 Mar 2024 23:51:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QYPLqfZf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB84710F7BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 23:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710978698; x=1742514698;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Q5Y/rfMlmF7LUnswbkY/eE1Dj6T+STmKtx8Xd3tn1Uw=;
 b=QYPLqfZfOQzb48Ntmd7wMFXWamguvFBhvkvK8/sUlhRXddnwox3r8GSA
 UM5tM7IjUOQgFc5bqs3mzX3wCydujRhgQFhcEkVFFP9IAsjqLVhBSg8GZ
 pDqziolhrVX/nQPRKD+A89NXtNKRtw48X96t4fooHjO/l6IMCwDTWUwEW
 DIyTLjDB9I6leNudkHT8eD4H9P7/nTamHc6hdizOIqX2Li3QKQMBsii1f
 HGbaXf7PBpLcLt2C3D9pDNme4nRr+NvVUwrpNk6HZLmzT6yntaLZ9rvaJ
 14S+9fbFSdYPF5YUf30/iudn1wszAiBtLXzFatZb8oNgLTGX54N8LpMXj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6072445"
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; 
   d="scan'208";a="6072445"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 16:51:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,141,1708416000"; d="scan'208";a="45419704"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Mar 2024 16:51:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 16:51:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Mar 2024 16:51:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Mar 2024 16:51:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Mar 2024 16:51:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PGdD0Tz1kMf76DSkIqEAaBBmbT9gDougqDZFrmKvou+a6BsnMTxHJkNEHbXDHMEZhRPoOYFgeMoj43XYeORhs7omovzo5RQn8nm3HxU91IjmIx8q2bXE159Ok1loC917dIqx8gjjttnRaKaa4/mrghuWdMo/sqri+dV/jsC4AzotYYi6LQzIn7k8d24C+MwxLpXbWu1+gG4HR/BWoZXGPlQTHMYRYZjcA0FdRCzul9gIRNg4pr+JzNu3zMnGpmfCtqiQ1DhlpdvAtns9u5x2VwyJvkE/caceYMX7cZuVExkGiDKK8LzvdYvHlqb423RhmEA4GwVMz13B8Ec3159ttQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QPsR6q0LF2EB3Fg10c9Y/H+lCk0IPxnhzic7qw7gisA=;
 b=g7TZKOYfoZmOSdvdDHOIqlscjH1YMZGYNyluSGrWiLgqVHJDsKXmIlIzifvK+h0ocrIi6D56R6wa8W6+usFxnR7madkx5nfqgmdayjH/4X1I8XZyGTbp+ZN8wRE1wTHyJTM5vi3Td1KulV05c8xq/EWe+spuJJXjfbJeicjuBRFamo1rfy7I3WAYvGAH6uq5oGeSOgrg7VIJCIBS/tWxRswtR6QJJcQU1vc5Zbnx1AG2WdIHpclBSKJofucFiLWk2sjhFx+54gm435ZtIm9EyHnTf5fTSLNJRwa57i6+aMa+ENFbGyPGREUlgADHolSAmoAX+xV9VO5I4LRzN1Px8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12; Wed, 20 Mar
 2024 23:51:35 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::4915:3753:1aae:d12]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::4915:3753:1aae:d12%4]) with mapi id 15.20.7409.010; Wed, 20 Mar 2024
 23:51:34 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 00/11] drm/i915/dp: Few MTL/DSC and a UHBR monitor fix
Thread-Topic: [PATCH 00/11] drm/i915/dp: Few MTL/DSC and a UHBR monitor fix
Thread-Index: AQHaewLRXTomOD24CkSyzfJkDRYpJbFBTQ4A
Date: Wed, 20 Mar 2024 23:51:34 +0000
Message-ID: <8ae4e541d57c458c56d5aaa66e5e354198f185d2.camel@intel.com>
References: <20240320201152.3487892-1-imre.deak@intel.com>
In-Reply-To: <20240320201152.3487892-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|CY5PR11MB6391:EE_
x-ms-office365-filtering-correlation-id: 1243d6d5-7f84-4b25-2af0-08dc4938acf9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b3Os1SVpvt983FE6PuqAxErDkZulIiCoghAfo2cCt08FM9jj8EvG4divHy3IpTvubIjxcEHPs7lqwcF/x3OVc2eNYX+kXxwvQnE19kHS+o5Gga636Ai9caFUALVdnn3utFzuY9gJYjPeSPJCRGk/l8cllRheEDyPTv8/PVS7lQ/jGmKA1MqLv05WorOUM/ZsPlp3HlS95lFNGe8I/iWCsIpZ1jCL5EIO5tlKE0CC+MvU4PEu4JS4FIPo8HZougWj1JRJ/0niEEZyySOniMYI4TzraAtq7YeDlfXMqSDB3iI6iZzZu1D4a5gHZTR//VO6sW1ETTVIMnPLKppiUmIhwhgci3l4Imm/mUT1IWXjjR+5sest2pgrGjiKdnxYBEr7VYsflRIyM/kwdO+d4LdPTgLZla9yOZk6OLFErkaoCK73AbU2J0c5wHZ9RTN9mDoumIYH18spcxZK4H+2s6KwjVJJ+ikSjIERlwk+RS/vm6fIBAIx5QeTSWYqvE/syExF28eRU9boEex2MODWGjbpBOG0EcWFLFnoEUTwBflw3ZAVHfw3RbIMAm2n2+yds5fcMI/MR8j7dP/+1Zrau0VSa9D0x+j9Qg3nNzsqYc0Fw6JdoK1yT0ne0zfdDH9AvkhCJsT5XXD8wdOZDvVcLIUDNE8V3pXi96B8/XaXMUfhzlDUd3m0ObajuYHbHEJMyrgNhGYEGzTAfRw7NkD1qeR3HJlnK9fu7ylU1UnmOezS6t4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-15?Q?tRlufJ04z6tEowaqmcWWaT6wK0MHTiRPXPOqtU+ZSIzaITgZmO0uIkFbZ?=
 =?iso-8859-15?Q?j/+1BP24ZxCyQ/k6ZnbOc9V5uZvJNsKwHsYmNpw4loSSWg33YD3Sk+nK/?=
 =?iso-8859-15?Q?FrMdxHJF3rIhGaq2XpqvJ+pE0q1sEcN3yDMXoHoTLI0FyxgKo8f84c4lM?=
 =?iso-8859-15?Q?PyCIsYJ89At/SwFVSDGPTSnEJtIXMxlEuozFhyYBcYC2jfXDDbqWZhJlb?=
 =?iso-8859-15?Q?QYEjNt7N3RDtxPgPCNQoShOdzMmYmiaCpCjcCGD1gHlza1Wqu1snIWlY1?=
 =?iso-8859-15?Q?UIJErMpqceg3JxQyAsV8hVGfF1cy2O8lfgPq6skk9zKox8XN2RZKmn38Q?=
 =?iso-8859-15?Q?Yof06K6BpEosbI3u8xxFyFBwYqlud6w/iVtjCcCxnmnCPyM8CThxHtOuj?=
 =?iso-8859-15?Q?ftAMyaeiX3L/HFUhTxrpucRAubFf4Sph0PPWabzBLVF7W5beOpCGk74pV?=
 =?iso-8859-15?Q?j/WQHWSGeVMt4aETJegjwBuqrjKVs/I1s8NlS0iAKxUxvjB9zmxpA/rmc?=
 =?iso-8859-15?Q?wFOMF02iE22RNJrRZ1GTFrkOU62Z7wt7gHF59KZFVICDEEfQg1etHqsk8?=
 =?iso-8859-15?Q?04lU9NftTVDkHI9srzdAfbbWuGWfiTF0r9pDcFO61Ex2uPWrT9zWvVeBc?=
 =?iso-8859-15?Q?/Ex1Pn4psIDdNdssMdBM+Ks1C6aUOklyOTqZlt+XPZdyXTX8fpFTilCnI?=
 =?iso-8859-15?Q?DkwxVuiSUJrEcJVp/xHT7/GdvvoJ2B7sf1OxRVu7pd9QrqJcwH+iFbiM8?=
 =?iso-8859-15?Q?lTxugRW85IWmSFAVVG1FXmH3Rr+mlxSz/KfSVnED6f9oq96vo/vhNIc9G?=
 =?iso-8859-15?Q?v7UK/3AkhYlwTwh/Cmcugw0/K4j+JI6Xi7F1+F+q+dEu8gpSBm7pTulf6?=
 =?iso-8859-15?Q?I8PlFZXVb4cr3TCQ29yXAI3aMRrmVvwtTeP9i/l3GK3KDlwDJd3x0W3f0?=
 =?iso-8859-15?Q?bJcnMIiCTkD++wy3JQGDX3SzeNuEPA+lpGHpPF+i6uVJQd0PQqzPUkxr4?=
 =?iso-8859-15?Q?keUljDmghg/X9rXnqSPPc3KgsSRfpcg3e36ZsprzJiMkH/G1hYgrHwEdb?=
 =?iso-8859-15?Q?JtFJnXfzcASjQnUj9jQCkvORpp9sQlf9rOcPR34fxBRJHFhMfdEB2RDKh?=
 =?iso-8859-15?Q?e6Go/1KYBiW9DvmbpAsQ9+/jvQEn+aGzMXA7zyG9RsZlFqeuZRrbPjYeT?=
 =?iso-8859-15?Q?fC/8CbWO+7cvaYzj0CPAjFS/T+NIoD77laRziENSwQ1QrrwdBKE9GSCv/?=
 =?iso-8859-15?Q?QcpuweHp6xP6KAKdTizo62tGFAV2U0PJf3Q2BKxCttUd0yhQgNXWkt7iz?=
 =?iso-8859-15?Q?synTjvIqMrWi+N+0AhzCUct/EhibdUln9/L1b03Ziv6L6Y4UruiAsl6RB?=
 =?iso-8859-15?Q?F/9Ciz3J/BrLG9qv2RTfu8tcEvWI0UcL3K3ystm2Uqd+RQ/y4JhHP2iJN?=
 =?iso-8859-15?Q?VK+C57pGFinoNcTweriZqRKr9CrZW2Guf2xkoYdnD0AkQkq4ahPBv2bD2?=
 =?iso-8859-15?Q?Dq7/JXPsHnr2czK+kxc0x6X9ylzN3mZdB1qfAQPdR90B5nzx3QtdcE7D8?=
 =?iso-8859-15?Q?GoPgvh+EWx2meKJpNFUrS1RrOE/Bl1XJNUHZZdBB/VX+OZuq1LgzC+HQA?=
 =?iso-8859-15?Q?BfaENroQW474ZoZYVhJqSABEo0rlj7swlzcaSyrAdfG3rRny87uN0pd7i?=
 =?iso-8859-15?Q?Pr+CjNyg8aVf6nSFpSrq8Py2RfnQyKDVvtj12tHXM0zQRM8=3D?=
Content-Type: text/plain; charset="iso-8859-15"
Content-ID: <A9AB5B05F56A644C8D5DEF78B48E1781@namprd11.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1243d6d5-7f84-4b25-2af0-08dc4938acf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Mar 2024 23:51:34.8363 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26Haaw5eVgCnZ4TfpUYLDJms2Ed6cbTz+e+MIyEaypfhfVgfH7y62kvfcWo/pt8Bq2L7CCef0Hycz7YzXw2B4nhyV6h/mm0SMzbKJpjjOpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6391
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

Thank You for the fixes

Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

On Wed, 2024-03-20 at 22:11 +0200, Imre Deak wrote:
> This patchset fixes a few MTL/DSC 1.2 related issues and adds a
> workaround for the native 5k@60Hz uncompressed mode on a
> MediaTek/Dell
> UHBR monitor, force-enabling DSC on it as required, similarly to the
> existing HBLANK expansion quirk for Synaptics hubs.
>=20
> Imre Deak (11):
>   drm/i915/dp: Fix DSC line buffer depth programming
>   drm/i915/dp_mst: Fix symbol clock when calculating the DSC DPT bpp
>     limit
>   drm/i915/dp_mst: Fix BW limit check when calculating DSC DPT bpp
>   drm/i915/dp_mst: Account for channel coding efficiency in the DSC
> DPT
>     bpp limit
>   drm/i915/dp_mst: Account with the DSC DPT bpp limit on MTL
>   drm/i915/dp_mst: Sanitize calculating the DSC DPT bpp limit
>   drm/dp: Add drm_dp_uhbr_channel_coding_supported()
>   drm/dp_mst: Factor out drm_dp_mst_port_is_logical()
>   drm/dp_mst: Add drm_dp_mst_aux_for_parent()
>   drm/i915/dp_mst: Make HBLANK expansion quirk work for logical ports
>   drm/i915/dp_mst: Enable HBLANK expansion quirk for UHBR rates
>=20
>  drivers/gpu/drm/display/drm_dp_helper.c       |  2 +
>  drivers/gpu/drm/display/drm_dp_mst_topology.c | 22 ++++-
>  drivers/gpu/drm/i915/display/intel_dp.c       | 18 ++--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 87 ++++++++++++-----
> --
>  include/drm/display/drm_dp_helper.h           |  6 ++
>  include/drm/display/drm_dp_mst_helper.h       |  7 ++
>  include/drm/display/drm_dsc.h                 |  3 -
>  7 files changed, 98 insertions(+), 47 deletions(-)
>=20
