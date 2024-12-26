Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 647469FC88F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Dec 2024 06:20:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7FB510E712;
	Thu, 26 Dec 2024 05:20:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDqausp/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14D6C10E712
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Dec 2024 05:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735190401; x=1766726401;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MvjqERZxlosTWQYYvWE8FBFacnC/hO0y8JvhH49Kpo4=;
 b=SDqausp/sz4mEOQv8VYNcKQLIl1njeQfDx2XgMNrgdOyROvlEvkitxPv
 s6nC8UENPnhIgjxGCReuzjJh3OnJPwJSmeJEKgpi+hSKovpyyNrBaPqQ5
 QUvzGQ6ODRObM0whSDSXGY+idmMjEddecVLVbrqgFofcrFXL2E4WS3IZV
 BOeLy91GsnxRNzAZLIu+QptzL/2nKxxs3ETO0GYK2BIEYazcB2Wzv3Y4v
 QtDYXwKCUH+yq9NiFB79Sr7gGnJJiCgpfEqaGumi0DbpaD/4cVe4L8Guj
 TtAr8k+zLMaVAylbHYPKyq2j6HbCU4qdI00D6SWlGOFBZz81eibSKG2FG A==;
X-CSE-ConnectionGUID: RJ9w5QblQYe7HLl/v01BVA==
X-CSE-MsgGUID: nZ1V1jjvTAygs3qJSaeFoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11296"; a="60992853"
X-IronPort-AV: E=Sophos;i="6.12,265,1728975600"; d="scan'208";a="60992853"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2024 21:20:01 -0800
X-CSE-ConnectionGUID: bUq6JvEOTvmfaZuVaxFqPg==
X-CSE-MsgGUID: KMAiHLwUTGGW+S+TyCVZ1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123112906"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Dec 2024 21:20:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 25 Dec 2024 21:20:00 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 25 Dec 2024 21:20:00 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 25 Dec 2024 21:19:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Av9/La9Ci919UnqsFDJBQTSRjDya4QmA/q50HVaP3vFUpHjE5OL6KbkWlKP2vhkVBMX9f8pmwEXCqSWhUbMO+9/+Sq+Nlg2VYtG0WP/6XL0yH0IBX6zlXZ3M+2Gf712ZD0dET411yq0lJOHBRquesLLYsbjJ/Oa57+GqRdqEGY373KfNjVUuMCicxWNvjA8BhJuKWehP6nJlI2AvGOouVv9GMh46l3dsnWZ6Zi0G39ehRCTkzSFU/BYCmmOxk6TZaJgWGcR6IWDgiAQsvZ3MXHviTjhfW8YE+4g86CZH7TB0yO+Wy36Uc5CSpNSPEIky6nN07rd4J6nFUmxaHVmJhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VwXI7A/cCrjmhS5Xeuw3L/bAfUSDwuxCtVaHVEak3IQ=;
 b=uGYOVNUpOEjyYwtRIJjFw66JSeyhaRlnl5SZpkibgmLTayJWsc4JOrzkAZqibQMP1Q1Zt3dQ4q43KhORehF+JW/bJoxYgt0AOeVUpWawJZfSA5CV4kMehp5S62EUT7aycCtxgroLuYhkOPwyTxZqmJnZadNoW/py0ABJTliAyohVqs4ym4DMuYwES3bWQnB/JxhcrEsiFq0azDkvPyDUi32R77H2NYSmvqVAJK/eJgZmW7sFx0BCQsTCC4QoUr+Y1PWQqvnfgwd1SbQh7avLWHfMGpJSsum3PeTpWyU83yUe4HI9jwZa858hNJx6+RbAsrQ0bxeU3ytdnSQEIum7Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by SJ0PR11MB5037.namprd11.prod.outlook.com (2603:10b6:a03:2ac::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.18; Thu, 26 Dec
 2024 05:19:58 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::6b8e:aea1:6960:2430%5]) with mapi id 15.20.8272.013; Thu, 26 Dec 2024
 05:19:58 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/display: Add MTL subplatforms definition
Thread-Topic: [PATCH v2 1/2] drm/i915/display: Add MTL subplatforms definition
Thread-Index: AQHbUMBZx5hEvU4KgEqP1a3vCu5h27L4CftA
Date: Thu, 26 Dec 2024 05:19:57 +0000
Message-ID: <MW4PR11MB6761E732B74D2AE767210929E30D2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20241217201301.3593054-1-dnyaneshwar.bhadane@intel.com>
 <20241217201301.3593054-2-dnyaneshwar.bhadane@intel.com>
In-Reply-To: <20241217201301.3593054-2-dnyaneshwar.bhadane@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|SJ0PR11MB5037:EE_
x-ms-office365-filtering-correlation-id: e1242632-6878-4dfd-a9af-08dd256cf09e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vrNR7h/L/PrSyKRoIKPY+46rCPlmbqRJWZk+47SR3PPiIHRPz7LKLfY8eC+B?=
 =?us-ascii?Q?7T7rctcmVMGvnP7GnGK6Bq1AlCOuskaa3LKhk7aEA5jE5ZYqkVpi49XloDQu?=
 =?us-ascii?Q?jc805odGDuykEaAwxi9HaIQv3jVxOx+v7seHJeksAf2i6ENpVXRtM0tMA0zC?=
 =?us-ascii?Q?ChMaQsuvH8ZhmYP0GePsh9B0vVxzwgsjgyzI4X+2y7KJS8qDH1X6nh5Mz6eM?=
 =?us-ascii?Q?h8DvWCgaZBcgV402JqlB4UmrQla0cMTrWIsdqo0Ridfyeh7yCpuCShNgBxCB?=
 =?us-ascii?Q?XvCWe+yJSgmdvpZfkoEb2AsKyuKqmK2IwE9wuJ/di4Sh8sehefm0qdOvohV/?=
 =?us-ascii?Q?2X0dFW/0zcveCbTidOM4PfyxKRJhaoKBI6azEpqfNMdUCT0Nmh1Dd8c67EU5?=
 =?us-ascii?Q?hBHbV56QndMok5/uR9E0Cit/EEX33ARI5CEpxS8cE4zHyxzphghY16PeNx1Q?=
 =?us-ascii?Q?QxvuIYqlxavtHKgm2zv/8XOB5H6mLwhXoIozDRM9M/RL0eDBbFeQSRWq+X0G?=
 =?us-ascii?Q?znZRAboxumGpMU1oE6RiP/KhvxWQSRkSKWrbFYhW3DpHNNQ9mfMPJ80tnWSi?=
 =?us-ascii?Q?/dfHUDVumTpY8MkBJwBmbxBkM7PlQIsw7cP2klxkpn9hBtbJlWiLihhzGv4P?=
 =?us-ascii?Q?SXO9a2v5gcj3GbqUBIy6PSY98+u2AcwA2ftEoRjyWzOs2x692PgpsdajMeon?=
 =?us-ascii?Q?Wmq3oTQGkaP6pJQ+7EW94km485WAm3ZyV3E/D1VynX4h5w9qDRUvoyCGjNhv?=
 =?us-ascii?Q?q+vuh+7N+4qsDuwO5XwjQFJIznLtQmGwb+PS/LQjfWGFAWkhW+AZmlP7Ix/C?=
 =?us-ascii?Q?xySVwB0eduFgqKiCiufGbRk2e/9y/2Ic0GmHrP5ZMBpiFmoKsSc/j1ZRhqUm?=
 =?us-ascii?Q?ZpMF1YrEBMRSw5B9to8Hr2cL5W0TycTGYKgLtrwuaMieY52YvFL1YE5AsNVO?=
 =?us-ascii?Q?qrurdI+hw2vCoN7zwyWM6Gg7cl8ivYuFycuG+MyZX6b5s9aRbO48sYBOitfp?=
 =?us-ascii?Q?C+EFMiYEALSavBRgfgRGXX1Frn7Ew2eGs57bZgqA7mfO8zY/pUqaApjisiIn?=
 =?us-ascii?Q?4OU7f4IWUIOu79XnEquIGixB8f5spb0+FpkxwEQCg1L7yY45ca9t+h68Sfc8?=
 =?us-ascii?Q?+3MPX3a0iuI3SolRK8AI8MYpwI8IU6a5MJ/Nl2ht4flf1cgDkXvOHSg8UCmD?=
 =?us-ascii?Q?nV2vilUlXrd8qt2YQpqxvrOxS2KWvpCcEQA7X0Quoqk5eBrRATM9zSsUb2Bv?=
 =?us-ascii?Q?u48osGaSxsDNpu9zOL29FUlEXcML36fiMRWVB8CotiH+ANlkzy6IZ0iQ2Hrb?=
 =?us-ascii?Q?PL/bM0RM/uXs+rrII8gpHuxCSmkod5WydHw9W+soSPwQhnC3hnnKd2UkvtdN?=
 =?us-ascii?Q?PUjBi7r5CncBxRzagLLqkkj9yC4yznv2IYn1eAqeUIiZBtJmJCxkuYuvRyBz?=
 =?us-ascii?Q?N3l3tJdJGnmaFc7y0yyNLpSPnZtheAqG?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0gD5bTFd3e+pw5LJzFqBNpRcFH1nkBnAGuTF9euf2OE5oALOlOw0aE1q0OW/?=
 =?us-ascii?Q?kO31IBJsoXB3dbeofCAUPkFVdG7MUrdiGitOWWQz1bRJhpsVfd8vnY6BK2XR?=
 =?us-ascii?Q?XAVfV8y31KArkx9Fs/sX+FlT3Ou2bcWfoheNJ009InBRbbwdmxk/2VWgJ1IJ?=
 =?us-ascii?Q?umQe5ZZyhQSWlOkHzwEcCnDIPnRcGZOu50r+v4AoNgLsS6hb2NMv85GZNVyM?=
 =?us-ascii?Q?VkjgjOppU6qRPb8QueuOSYRfk3nPwAHVNOLtZlTPDHSxd0LoaLKUAQ5Q1KPC?=
 =?us-ascii?Q?pJcZMcAw01OCSVUQ/YjRrdNw6iR47MSYAE2Vb8mzUZL7J6yZjQTGHGNy+21C?=
 =?us-ascii?Q?fPL7yU60UPzo8m6SiiR8aGrgFzShdi2kBFC+a7QopzLuZedLEPIEo3YEh4Tp?=
 =?us-ascii?Q?kqgYK58UdDCOSB8U+htzR8Z14Fe2qtQ+COQv4w0zYLEamI0UCc/xX7tdDodz?=
 =?us-ascii?Q?vq0Ju4HkWsBj+4p5OjZ25L/bemW7K6GszFPksiEC8QsB4exJg6Lz4Tqcm1wj?=
 =?us-ascii?Q?dsy7+lQKE03HEcI4cB6pKdIBwdCLC0N/MhdJHLhQAdFkMDzZzdo4YvUa/9Vq?=
 =?us-ascii?Q?5TTq8Mww7V0A8BUTpSMdKbYryDPPENNs9pVtn+FjQpJr6RGw9QizpbtGCQlm?=
 =?us-ascii?Q?QubhKSf47iEuI9Fk9JcjN1pmdIVmU3rYo0uw7DFVt/AXJq/YOLyAXTrvzX6k?=
 =?us-ascii?Q?98hV3ZCGtDUYGVsp2s3LmAjtN7b/9LcjcFx46DDDd3zjlM+PHwLBH+FuCdH+?=
 =?us-ascii?Q?tG/L2E3D45p3CpXHswoW+QiNit9j91DKZBOEdikBxBhPg15HT9xVHs63AdC8?=
 =?us-ascii?Q?WrzOzxKXDX4WtOLlp4D7jIBrj8Hp18x2u+a5WQd6vh6g5oExmGitCpJcpElZ?=
 =?us-ascii?Q?XQBATJqMFOLYAtkYd1f3fplCSlhwG063otBl4+EkYQ3b8osI9es7V++LnyT6?=
 =?us-ascii?Q?CU/0GKSCnr+V1EjxHe2LgEf+F/dHV2nYAmt46ZItqKNMfDWWqimIfDt5otf4?=
 =?us-ascii?Q?nbL8aY++3y/AkzXdKOC6ZRVt7glS4Oc67RswXggltbNehKQddADx8EELbn50?=
 =?us-ascii?Q?8kV0Hn5gNltKS7zOimszFom7ujogKz2ixD0msORKohpkpF5GdQJonJUP7mhb?=
 =?us-ascii?Q?XVsJADeW9du2cwtLjrZpwhaJlADddHvaLzG2Zb4rrqVcVzS0+mJi4NPLVAgX?=
 =?us-ascii?Q?/NrMZUHwMiBDD3rpFWOhV6okQclnOfdTb4+S42WIX+PE8W8pDEVLGTQznz5j?=
 =?us-ascii?Q?+TvnJX7vUH6VXUPofmS+bK96mrDCij29Be34AWmrWnrciPJUqEut8D7C1l5I?=
 =?us-ascii?Q?c9tXCRoxL6OTE2fcUrGdK6rhLIZMbTHTgrioSXbjyqWo0QFvjhhgntculxPp?=
 =?us-ascii?Q?xY3oN1coc31z4egdOVO4Aa/3tmgGND+aRqEq3oWMgaeWXU6PYd9dFYDDE0Ky?=
 =?us-ascii?Q?nVzqQq5NAYwVSgOvrXrMWGH2b/u7OVYkRlXGqDIJGbI+MHHI2FLbW7hLPD/w?=
 =?us-ascii?Q?d3lTKgBO8iy8SiV3lO9DW1B7rSAzay+39IexF2V4Z4x5s1NoUSJxt/YVKaPt?=
 =?us-ascii?Q?dqL2d9iH/TJqmG8aP3Rrlqx4G7ZlSai1+j4CTdCG?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1242632-6878-4dfd-a9af-08dd256cf09e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Dec 2024 05:19:57.9922 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K/fhDRsCGwbrkMQJLfOxImhMmUc95mRs5dy5Xsa/OLAaEqH9w2g0md6qLGbd3cNrjkSZZchs+fSqCREuf6PyBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5037
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Dnyaneshwar Bhadane
> Sent: Wednesday, December 18, 2024 1:43 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>
> Subject: [PATCH v2 1/2] drm/i915/display: Add MTL subplatforms definition
>=20
> Separate MTL-U platform PCI ids in one define macro.
>=20
> Add the MTL U/ARL U as subplatform member in MTL platform description
> structure to use display.platform.<platform> from intel_display structure
> instead of IS_<PLATFORM>() in display code path.
>=20
> v2:
> - Club ARL-u in MTL and identify ARL-u as MTL-u subplatform(Jani)
>=20
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
> drivers/gpu/drm/i915/display/intel_display_device.h |  1 +
>  include/drm/intel/pciids.h                          |  7 +++++--
>  3 files changed, 19 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c
> b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 68cb7f9b9ef3..738ae522c8f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1357,6 +1357,12 @@ static const struct intel_display_device_info
> xe2_hpd_display =3D {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) |
> BIT(PORT_TC4),  };
>=20
> +static const u16 mtl_u_ids[] =3D {
> +	INTEL_MTL_U_IDS(ID),
> +	INTEL_ARL_U_IDS(ID),
> +	0
> +};
> +
>  /*
>   * Do not initialize the .info member of the platform desc for GMD ID ba=
sed
>   * platforms. Their display will be probed automatically based on the IP
> version @@ -1364,6 +1370,13 @@ static const struct
> intel_display_device_info xe2_hpd_display =3D {
>   */
>  static const struct platform_desc mtl_desc =3D {
>  	PLATFORM(meteorlake),
> +	.subplatforms =3D (const struct subplatform_desc[]) {
> +		{
> +			SUBPLATFORM(meteorlake, u),
> +			.pciidlist =3D mtl_u_ids,
> +		},
> +		{},
> +	}
>  };
>=20
>  static const struct platform_desc lnl_desc =3D { diff --git
> a/drivers/gpu/drm/i915/display/intel_display_device.h
> b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 9a333d9e6601..5853472bb9c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -96,6 +96,7 @@ struct pci_dev;
>  	func(dg2_g12) \
>  	/* Display ver 14 (based on GMD ID) */ \
>  	func(meteorlake) \
> +	func(meteorlake_u) \
>  	/* Display ver 20 (based on GMD ID) */ \
>  	func(lunarlake) \
>  	/* Display ver 14.1 (based on GMD ID) */ \ diff --git
> a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h index
> 77c826589ec1..9c3a339e26af 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -811,9 +811,12 @@
>  	INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
>=20
>  /* MTL */
> -#define INTEL_MTL_IDS(MACRO__, ...) \
> +#define INTEL_MTL_U_IDS(MACRO__, ...) \
>  	MACRO__(0x7D40, ## __VA_ARGS__), \
> -	MACRO__(0x7D45, ## __VA_ARGS__), \
> +	MACRO__(0x7D45, ## __VA_ARGS__)
> +
> +#define INTEL_MTL_IDS(MACRO__, ...) \
> +	INTEL_MTL_U_IDS(MACRO__, ## __VA_ARGS__), \
>  	MACRO__(0x7D55, ## __VA_ARGS__), \
>  	MACRO__(0x7D60, ## __VA_ARGS__), \
>  	MACRO__(0x7DD5, ## __VA_ARGS__)
> --
> 2.34.1

