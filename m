Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3F8B21BB5
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 05:41:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C14D10E22E;
	Tue, 12 Aug 2025 03:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAQCl2sd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1382810E22E;
 Tue, 12 Aug 2025 03:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754970093; x=1786506093;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VOx9a2V7zS9G51A58g0jCNWz/9oB1z/Z04mODJ0AtC4=;
 b=ZAQCl2sdxMaW7gQBFtff0egjZFjOBSfsBTvzZr0+jRuv0QTbYqZ+Elfz
 IZHgK6EiMHp+zLeTOxAvm1BRXqcM7R41kAs8feOkd3qFWiTXOUYr0tNlG
 W5Ar9MGQ+Od6AahEADTKUztybzmWngLBRUizPceqmoUU3fXabw1Ppie5y
 CVhABWgC5kEdE3MdZasGik51sdh0vk8igOUJw0Oz7AecZ4Yv3G9vp1VmT
 Zg1oODWXkIWnWlVlmc6mUGkJBB82/J5lPxtF+1mAgUpzi4nFjTgEFEyxN
 f9OtM7EOni4tnstDC6kmv+1LErCJjYQczS0xwkg7OungerlD2Gk5uZNTx A==;
X-CSE-ConnectionGUID: 6gss+2XARqeIOe7f3y9Dzw==
X-CSE-MsgGUID: vStxA0fURP6V+VV3NKNouA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56263811"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56263811"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 20:41:26 -0700
X-CSE-ConnectionGUID: A8bmrRIXRAuHX79FOIt5jQ==
X-CSE-MsgGUID: ciyJIA8FSEaOf/ePGkoUYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165973777"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 20:41:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 20:41:25 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 11 Aug 2025 20:41:25 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.73)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 11 Aug 2025 20:41:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u8GZqWKaaWWJ+l1cPJsQwpfBlO+tspb9BvPAHcO8rmB8kL6YD+h5/SJlfIhE8ep7VEVSw2qfz2xaIRIfd1IvlGaNtrcPniZvCib2HgvwYl8XDcwIGTuQLKpKJhEplhQRm9ELExnhNsJvnHpeDiVFEeHKG0jx5RdFMpakHSY6N+sMWZ0fI4PljHx+SEAJM8ZCvZi27iLLE6NCryeLbOVppQHMr/gCLOTNYPq1QIC94Z3nMDRQuT9WNJ7MnYXYZVfb0ugf1nNv1IH/6iGgInArs5KFwJYsuNpQ0GFK5gcbTOgbp1436uzT3IQXYm2QZc9XBRqZmC5TSUtKLr5u0cnZYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pQHsaQnQ1dWny0YVrnOsy+w+ftDpp7q3P5XqE2mPBD8=;
 b=YNdLsEN1TscRzFcvoyCPe9Pr2AZXnopCDj24zb1oneWLnbj6aaAQKSX9psZnef32bJbvxRDm+Y33hncsfzwMm+y3fvyuwefdRZHeVm+/vS80R0ULV6+w677x3aM9n/stSUQcrkICg+WTTT5EDb0EXx3ONBvWbvJVS/tJVYHxLXS4z3TPxf3WXPHqrndyfu99xTpcZgT4a4OYqCA+OxHamZig/L6w3IeaGnVobOk/l8TKo1lmt8r8NdGFZl/AOKIsliCXhZJabWXlSSHB9RGj56YOYuLfFC36iv8C9gMWfVAKiVLUjpK4Lrk1H0+qayM6YEr9hCUhN7lJGwLynt/jpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MW4PR11MB5871.namprd11.prod.outlook.com
 (2603:10b6:303:188::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 03:41:23 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%5]) with mapi id 15.20.9009.018; Tue, 12 Aug 2025
 03:41:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/4] drm/i915/vbt: add anonymous structs to group DSI VBT
 defs
Thread-Topic: [PATCH 2/4] drm/i915/vbt: add anonymous structs to group DSI VBT
 defs
Thread-Index: AQHcCtRLzQleJdUxuEiueZBWlo585rReYB+w
Date: Tue, 12 Aug 2025 03:41:23 +0000
Message-ID: <DM3PPF208195D8D61A678FFE7024D6F9385E32BA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <cover.1754925923.git.jani.nikula@intel.com>
 <f57ca596aefa3ef0b4ce1f36452410cf745acddd.1754925923.git.jani.nikula@intel.com>
In-Reply-To: <f57ca596aefa3ef0b4ce1f36452410cf745acddd.1754925923.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MW4PR11MB5871:EE_
x-ms-office365-filtering-correlation-id: 68e9ffea-4222-4814-f155-08ddd9521bf9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?JiYWJjaQmX+So1GNsjjCWC2idulGnAfs61RKqEAe64YFYr42/4LODtBSs4Z/?=
 =?us-ascii?Q?hFJsQdQxBPtV5yq2XL5cNnZ2JQzSVlHDsOqzTHPXv8tJa9WRONPFSNpYLipU?=
 =?us-ascii?Q?cw27boXqQiZiPyF0K8VOIdho7D/UT2dLdkoFhTaDO6yix/rJbkz8CmqDH92h?=
 =?us-ascii?Q?6Ug5yjTv4hreYgAJ51/VmsF1nBeOk8LOGGQ5Ehnvd9qcLm5ShDMRSDdv5seI?=
 =?us-ascii?Q?grRkMLdwGaLy/36IhSa78ZvDWPtE9TFFSi11UUztPCCcAmtc9tu/rfL6gJv6?=
 =?us-ascii?Q?DW7Q1BVFfk2magEGFvaupnJre3Q6OQRdOOJW9oxnlQ0wxfk0JIOrG0x5+F0F?=
 =?us-ascii?Q?P8Vi9u0KNJOv1nlk/ezWS6nnmtlOT6Uh1zP71Hz9Jzo1IqvgPiC54YyaeSgy?=
 =?us-ascii?Q?GFKrX4DkxtyuCNCJd84lEBkoxM8GGrFiGIT8V72rhEFZEiv9GEOXrLgZz6nj?=
 =?us-ascii?Q?vrznwMWVOA3zOljrR4puXRkGuOUcgTKJCt3t4jKp6dpO0t3buy14Oj0oN3vm?=
 =?us-ascii?Q?VfYe3Z3Am5+4h9TaKcl1fCGwFe/W4ExleHy/ooCy02uwCsyqE7yUh7vPykT0?=
 =?us-ascii?Q?e/gmT1OPWPoU7s4fo3tMW9+041UoqJFkwGDDBrLPSoFaExWLYVGdABr10ITF?=
 =?us-ascii?Q?iWs4lhTcDw5yv1NeevWMF1d0PAreJEKIuCJ/9MaA2pnzS4swYjQtWRAO9VhX?=
 =?us-ascii?Q?ZtB8gvjhnafXmPqGyODbLQjCgKfZMD+1FYqjqxhDS3iBmNHCWMafvCIWuvyd?=
 =?us-ascii?Q?CTTw4Dmvji4ycXnF/12mdN3mdWZclutD0vuVl+G7xqhw0foH+10NsLZG9S3C?=
 =?us-ascii?Q?zwodI7bIUK7sR8w+jqT8ivx9JOdVtAE8me3FaYyK/Rf8GWfoV36FoTX3Jkwf?=
 =?us-ascii?Q?jCD6U5dOKP2x7D99oaZevHrZHn5R42AH/8iCV0So+ZQ+2KybUExrDhzQNyOe?=
 =?us-ascii?Q?K0NEm+wHeJQ7p9hiUjEHKDoOphfiqdOL2d8yftlqAzkTQxlNBxwFp9dKaLR4?=
 =?us-ascii?Q?/37U6bXQVlBJIhqrMCoxhhffQJ1HetdgUbV3m46OEsyNH7BMbkI6SG8aszB0?=
 =?us-ascii?Q?BzIMiagErLC2bBx2L3t6HCgmofhREDlZwKuTIcUgLmFV5Shxbb94sYxvGhat?=
 =?us-ascii?Q?NzRZHxAKDsAOOie0YK/NTdwLn8e0ZWzXOjpMK8z8DSBpGrU/02zPXxFNb42b?=
 =?us-ascii?Q?QBh+lvrmdW+MhfkVkA0tt4RywI/XWr+SOyguyRaPSlAgpleWFpLPxL41fT3I?=
 =?us-ascii?Q?oJEGWDj5RtKeWo/WMjvr+zfyA+nNK2v3qAjcwwpINl9Ss1RGu/8GaY95bMF5?=
 =?us-ascii?Q?728BRlMgd0KTHW13iFo4nXwEWEFCY8LsdZ2S8bMAl3X+2ZlofRvhhdZFMzd8?=
 =?us-ascii?Q?EwUG9WncWpgx1pDGGAr3TTzlA8ulpuakRSWPoGrvTpCg6AyuITdkMpn7igJt?=
 =?us-ascii?Q?EPH7kTkXaHh+wfdMO8A4YSQ0b3sx/R+B2AzwPhE2sesh+cm3wZ/OC+6DjOk4?=
 =?us-ascii?Q?g4oGu567AbGdCu0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b0bNycX1Bm9FaKj/lItaU7PO5R37zjkjZU1UxZeSI2ye5UKw4jS1wUHWVSio?=
 =?us-ascii?Q?EKSm8swKVXAq4bH7vfPuJcIQnd6cd9tq64M+aotmp7mzKx5IFsMKWPuMr/bD?=
 =?us-ascii?Q?gx4VQp74TeSg3TAWyj39xR4MZhD6wtJVQCf9hnySldaU7QRSeauZnqy9Kslj?=
 =?us-ascii?Q?HMvNKmHATCDC0NZKt5mKVlsIvz2bjkuw6rc+Kzj3Hu9RF/jX/6menFxotEMp?=
 =?us-ascii?Q?v+WXBpkbDdM3ayujO/vK5adnqx3dGIseZwTxBDMPI+2J/IPK08BUUfuRisFF?=
 =?us-ascii?Q?PFN9CoOATdpGhlU4kQ22nQ0jCrvRC9IDSDq4hMZIhxIyKcpsiZwCJnoB4gMy?=
 =?us-ascii?Q?uavf0tRXwPAmkCpdJ+9PWq/gy2EtRfWGkIKYFhLstntrbdyZiomahNgKpbP3?=
 =?us-ascii?Q?IDhLDq5HtIHa8T7pdTM0tbjiX1R4XDTOG1Nl0g5Ck1DagpUuefef0hdlRxQl?=
 =?us-ascii?Q?rNmhFLNf8h28xXXdQC4upPxsK39Hjm5bAfyFRnYi5v2Z1D+hOIJdakX5FgP+?=
 =?us-ascii?Q?Wna/A4a9IWRcW1nbSbRBcyvXRgWcBUVmW3sWP+N/Spb93Mgm2LIloN1sQYn+?=
 =?us-ascii?Q?rwUEdn1WYmjZ8x4kD5bLy4v6GAyUcdv8gtZZL6My/9MbY7Khz8AYcNtfTa0y?=
 =?us-ascii?Q?vFhRYYIyDa/VIEYx+vVDZ57ncJRNqywO4bzwq24caregQS6JFWldfYtkN2Gy?=
 =?us-ascii?Q?Oi1JJJ5WFf7eK+AZSxhHuOcD0n6ks7oTxtQYh+IfgV8oponnCvO+TfvOIhej?=
 =?us-ascii?Q?4k446qXvqWmV2foDyvTOzED7HLNtkN2KLkSuY8RQjmV/ZQCokrIue4TmHd9w?=
 =?us-ascii?Q?BB8qe4fbpRUuH+mTK2ZaSIz8+kAMZJdI2rpXcbBtPYoQwnINbWJOKd9hpqDK?=
 =?us-ascii?Q?fVyxaSiEAjmrpSPn/Vc1aGc9ikG/aIb68C9/rRI9TSqnAV16QCdpLQWTSOEv?=
 =?us-ascii?Q?OoTWr44WGd/XQhLO8pJz9l/q2VKXhQT49GX9rEK8ITjnTyxRw9St0wxq0XFt?=
 =?us-ascii?Q?9AwLpY6/hrFAwIoAcFvmyORvKBIoc42g7Mj363hkvp6JJEfgeh9v/PS2Rryn?=
 =?us-ascii?Q?kWY3za/covab6ouXo0vi0nsFKqHtD+HkSbuGqn3fKMSJly5FK+qw1o3Px+oA?=
 =?us-ascii?Q?SB1oofc0HHr/dw3+F7kVogYq+1RBC9o0CtdaZjD41OUYkt3LTEMlXZCsptQY?=
 =?us-ascii?Q?C/fSVEwPiTJF3yBHWHtxKYPJ4BmEvMzFU7Rj65Dy41F/PZCX9DpBUvAIriP4?=
 =?us-ascii?Q?SEumuWCbFAv4wGz+K+YEfmcwywQCa94PNRCH3p2gdSZT+FZSNTEOSzP0cLwh?=
 =?us-ascii?Q?/3dK0INSYVyftRjwr0maG+H/8uJHVvaWi5JniM3EEAfjquC41aSzyYBflvcw?=
 =?us-ascii?Q?s4e/g5s83T8SlrrP1HCws9roSBxA5aIEVczn+LHUaConT0B9nhjeHjSZFCuJ?=
 =?us-ascii?Q?Lcp7ypazgil6ZBZ7q/bZecd29O1toR3TWQicjyAy47W4+13TLTnU75oQImMr?=
 =?us-ascii?Q?qvnoyT82ZL10o59ZHXtI0GGPVqNbzD7jvyaQ1TedsLIqr40TcVOGruT2L/PW?=
 =?us-ascii?Q?N9R1ak2KYKrvNQj5clvByxpvKMPFcqp2lTviLtJq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68e9ffea-4222-4814-f155-08ddd9521bf9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 03:41:23.5963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nHI5xaescna3ySE+DJdL8UQ7G+OeOjbi/XHpptd9wXYn5g2negJMa//5JLXX93LdAxIZaBtDMVWmD7h3Yfu3yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5871
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

> Subject: [PATCH 2/4] drm/i915/vbt: add anonymous structs to group DSI VBT
> defs
>=20
> The grouping of DSI VBT definitions is hard to follow and match against t=
he
> spec. Use anonymous structs and add comments with the spec description.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dsi_vbt_defs.h | 87 ++++++++++---------
>  1 file changed, 47 insertions(+), 40 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> index f83d42ed0c5a..7ac872dbba8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt_defs.h
> @@ -47,53 +47,55 @@ struct mipi_config {
>  	u16 panel_id;
>=20
>  	/* General Params */
> -	u32 enable_dithering:1;
> -	u32 rsvd1:1;
> -	u32 is_bridge:1;
> +	struct {
> +		u32 enable_dithering:1;
> +		u32 rsvd1:1;
> +		u32 is_bridge:1;
>=20
> -	u32 panel_arch_type:2;
> -	u32 is_cmd_mode:1;
> +		u32 panel_arch_type:2;
> +		u32 is_cmd_mode:1;
>=20
>  #define NON_BURST_SYNC_PULSE	0x1
>  #define NON_BURST_SYNC_EVENTS	0x2
>  #define BURST_MODE		0x3
> -	u32 video_transfer_mode:2;
> +		u32 video_transfer_mode:2;
>=20
> -	u32 cabc_supported:1;
> +		u32 cabc_supported:1;
>  #define PPS_BLC_PMIC   0
>  #define PPS_BLC_SOC    1
> -	u32 pwm_blc:1;
> +		u32 pwm_blc:1;
>=20
> -	/* Bit 13:10 */
>  #define PIXEL_FORMAT_RGB565			0x1
>  #define PIXEL_FORMAT_RGB666			0x2
>  #define PIXEL_FORMAT_RGB666_LOOSELY_PACKED	0x3
>  #define PIXEL_FORMAT_RGB888			0x4
> -	u32 videomode_color_format:4;
> +		u32 videomode_color_format:4;
>=20
> -	/* Bit 15:14 */
>  #define ENABLE_ROTATION_0	0x0
>  #define ENABLE_ROTATION_90	0x1
>  #define ENABLE_ROTATION_180	0x2
>  #define ENABLE_ROTATION_270	0x3
> -	u32 rotation:2;
> -	u32 bta_enabled:1;
> -	u32 rsvd2:15;
> +		u32 rotation:2;
> +		u32 bta_enabled:1;
> +		u32 rsvd2:15;
> +	} __packed;
>=20
> -	/* 2 byte Port Description */
> +	/* Port Desc */
> +	struct {
>  #define DUAL_LINK_NOT_SUPPORTED	0
>  #define DUAL_LINK_FRONT_BACK	1
>  #define DUAL_LINK_PIXEL_ALT	2
> -	u16 dual_link:2;
> -	u16 lane_cnt:2;
> -	u16 pixel_overlap:3;
> -	u16 rgb_flip:1;
> +		u16 dual_link:2;
> +		u16 lane_cnt:2;
> +		u16 pixel_overlap:3;
> +		u16 rgb_flip:1;
>  #define DL_DCS_PORT_A			0x00
>  #define DL_DCS_PORT_C			0x01
>  #define DL_DCS_PORT_A_AND_C		0x02
> -	u16 dl_dcs_cabc_ports:2;
> -	u16 dl_dcs_backlight_ports:2;
> -	u16 rsvd3:4;
> +		u16 dl_dcs_cabc_ports:2;
> +		u16 dl_dcs_backlight_ports:2;
> +		u16 rsvd3:4;
> +	} __packed;
>=20
>  	u16 rsvd4;
>=20
> @@ -102,18 +104,22 @@ struct mipi_config {
>  	u32 dsi_ddr_clk;
>  	u32 bridge_ref_clk;
>=20
> +	/* LP Byte Clock */
> +	struct {
>  #define  BYTE_CLK_SEL_20MHZ		0
>  #define  BYTE_CLK_SEL_10MHZ		1
>  #define  BYTE_CLK_SEL_5MHZ		2
> -	u8 byte_clk_sel:2;
> -
> -	u8 rsvd6:6;
> -
> -	/* DPHY Flags */
> -	u16 dphy_param_valid:1;
> -	u16 eot_pkt_disabled:1;
> -	u16 enable_clk_stop:1;
> -	u16 rsvd7:13;
> +		u8 byte_clk_sel:2;
> +		u8 rsvd6:6;
> +	} __packed;
> +
> +	/* DPhy Flags */
> +	struct {
> +		u16 dphy_param_valid:1;
> +		u16 eot_pkt_disabled:1;
> +		u16 enable_clk_stop:1;
> +		u16 rsvd7:13;
> +	} __packed;
>=20
>  	u32 hs_tx_timeout;
>  	u32 lp_rx_timeout;
> @@ -123,14 +129,16 @@ struct mipi_config {
>  	u32 dbi_bw_timer;
>  	u32 lp_byte_clk_val;
>=20
> -	/*  4 byte Dphy Params */
> -	u32 prepare_cnt:6;
> -	u32 rsvd8:2;
> -	u32 clk_zero_cnt:8;
> -	u32 trail_cnt:5;
> -	u32 rsvd9:3;
> -	u32 exit_zero_cnt:6;
> -	u32 rsvd10:2;
> +	/*  DPhy Params */
> +	struct {
> +		u32 prepare_cnt:6;
> +		u32 rsvd8:2;
> +		u32 clk_zero_cnt:8;
> +		u32 trail_cnt:5;
> +		u32 rsvd9:3;
> +		u32 exit_zero_cnt:6;
> +		u32 rsvd10:2;
> +	} __packed;
>=20
>  	u32 clk_lane_switch_cnt;
>  	u32 hl_switch_cnt;
> @@ -168,7 +176,6 @@ struct mipi_config {
>  	u8 reset_r_n;
>  	u8 pwr_down_r;
>  	u8 stdby_r_n;
> -
>  } __packed;
>=20
>  /* all delays have a unit of 100us */
> --
> 2.47.2

