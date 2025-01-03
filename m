Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 149C4A00958
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 13:39:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA21910E429;
	Fri,  3 Jan 2025 12:39:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+0s/86U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C864110E426;
 Fri,  3 Jan 2025 12:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735907958; x=1767443958;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PEmGSWWb9Z16m9Oe5p57Vuaex94nmUYl83Zl/143BxU=;
 b=c+0s/86UYRYOSKaX4FfR6xoBZ+Mfo3F09SFqcndCrAOrcFNXqBvVrxVn
 ePMh+sl0B4JFHiHTHiJKIuyhIo5lqlS+778hElYC976+crYTNXh1m1o6s
 sRMYBRLfXT41KPkan7+v0DpGReX3dpZOG7IBZU7PxUnyJCb9bI0b9bKMr
 hgmBe0ikjVDJidrsHrIrZoDWH+lNSUG1+kMv2D7HD3kCyfk9kZMXtmNvo
 FUOnNwU8FkUAfpLfXzr/AqNMLl8oKUV/5nEs5UbQm3+KpuVnIsUQJUgou
 SSR3A3ArfmoKjp/1ZrjxlZoI5XoCX3WGogyIMOtUNcTyo6ZzeJ/g48eK2 A==;
X-CSE-ConnectionGUID: TVDAYp3DRYOutc175cHDEg==
X-CSE-MsgGUID: FnTi/nJNQw24bVc4pBQxjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="46734348"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46734348"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 04:39:17 -0800
X-CSE-ConnectionGUID: byZrLqh5SXKWVC+fsIrHQg==
X-CSE-MsgGUID: rYSP+vWHSEuIv3xSjLTFCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101622669"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 04:39:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 04:39:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 04:39:16 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 04:39:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c6Ec1/TC5BHB8bCYrdVCPOL4tq0oCBXU+eOg1sG4dFJyxf+gwhaRdQTrrEYj3DMOnTecz3fcxfy1S7JskDNmI/6i7WJF1/gVM62hNeVhS8ukxqgl+M+LN9DBaLD2CsgixFEopYJkimP4RGSIa+ZQk9nReEOsB+EGIXRYgdCtxo4xcF4Olbcu9ztOusgGg5fbo3lddgEWQSR0+7k+4Zne/qdaq8HV3+twurYUJDxMdxdl0JRYNzFDBC4yym8nz3eyH0ffDB0MWfj1r22hJxydSEuPaskWWl3/6yhW0DdEjb4XLauH2DaZrqmMtrZhoo/pApEkugsN6Hc0jee9MvPqIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TlQADEIwwEJyVDgH0VvuO52lc2vkIGB4YUOFhJHzy8M=;
 b=qzBsYDRuGZkrUKGaEedz3S5fQp/rZj1ww1LlwbqnYI2qEnu5cO3CAsbzkNns5FldMJOSDpPBab96MnY4Z6MxtfUPMQz+DCqbjyhbMS8MnI6dN5vVOv9LolAIRxezjCQZxCCj42lc+/cqAfvsDvhJTydqUaYvnsElcBbHkpaDzowduMRdIkYlTVTPWVDAAJryitxx2efp+/LSPYrMGSs8E/8AEqUcxZMaAL9I4eReSj2L33JU7HmJfK5JBWL14oK/XIkaPiW6JIcZlVrtra3qki16YGLdERSZ0FuFwIjr9NDxC3483TuWw+k1r7PL/Y3N+YRsDnZXmYhDMPg4kw69ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by DS7PR11MB6039.namprd11.prod.outlook.com (2603:10b6:8:76::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.14; Fri, 3 Jan 2025 12:38:43 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%5]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 12:38:43 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly from
 check_link"
Thread-Topic: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly
 from check_link"
Thread-Index: AQHbXbvhhTcRuDjfBEaFmPDqg2DSFLME/S1A
Date: Fri, 3 Jan 2025 12:38:43 +0000
Message-ID: <IA1PR11MB626661FD22C6A6869FD94C8AE2152@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250103084517.239998-1-suraj.kandpal@intel.com>
In-Reply-To: <20250103084517.239998-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|DS7PR11MB6039:EE_
x-ms-office365-filtering-correlation-id: a265d622-b0db-4cdb-ff8c-08dd2bf38f18
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?g/hYs3LsNx+sNikHa44orosWKSYOJG9cvYT41IYlBn2X1yJ10geKqqGAy8AE?=
 =?us-ascii?Q?j8kErRzowGOHpt0ySN4l3/t5cG8mjzxOdWcCpp2a+qOxeFIVHCKXSqo+N8gW?=
 =?us-ascii?Q?KyoPMff2I+WSuLSS4lUiI3FPdsdJuyxnop9yA4Ot9vH6zSffsHIvonIJLPI/?=
 =?us-ascii?Q?MlrOwXfKWzs+bbunu7l6HCajTNhDmPHtKQJ7RdYAuM0TWReaO6tERxeK2t/Z?=
 =?us-ascii?Q?BT8DsMRn++DvD8S+5UrF5iw6T4/pCnA7YR3d3gasHjmr8B5vqthArn5mDlWM?=
 =?us-ascii?Q?90AguuJfz72z0Bg1ZHsZJr/E+o1VPlOTPv1vMZLFIG7PbP7Wm3AsWnSjdtMv?=
 =?us-ascii?Q?MAOSwmb0/QIydOYc5yBtd3NViCiFMFIyokMt0ux7x4fKCcHcT4LP24VP/q1w?=
 =?us-ascii?Q?XkD4TIltGEk7L/6d0fbzGYR5dqLfJNJc3HBnAzXYnzKmEmWZCTqG/3PAPnl/?=
 =?us-ascii?Q?oV03W9n3EDSxylSW3qtleMvoTA3iYi2HlMwOlF8PQ/FFUeRqGQQDciMY8oSZ?=
 =?us-ascii?Q?+lsjtyshMyHCzXXwiFw1PqgO1jBgHEu1g9bWtqCCx51/6t3syvtWbbJaFXrg?=
 =?us-ascii?Q?5HvWomRZW0SirZKZQPgsoIue+jXQMJRB/YSrCz0epGkwYIueWcgGkZO0ZtVh?=
 =?us-ascii?Q?b8zy4zVOLZYwhzBeMOqZFvhrrZXFEXDQLXtO+WWSnoAyCHjswbFGJHVYKFoj?=
 =?us-ascii?Q?7mcwRABuBSI4/smO9wiMuGm2KeXF7tmaj4eAKikCSW5O00pmTyqtrriRIvRw?=
 =?us-ascii?Q?e/hCULJpmq3Cc1HXH/sGdGUnhh9pgy4p5/APLxDN3ySvJrZu3tyYxbeiS9XF?=
 =?us-ascii?Q?dYI4r0fQ+oOJ0kHGK814r6e960NR4wHHAbl3LJlNut6L1FGes3hhT2zQyCIM?=
 =?us-ascii?Q?7Qb2VBbRlAMLVdQWaraD1JzTXgJ1RtixPP2upWLvKvQzldE81X9mIsXT5F89?=
 =?us-ascii?Q?VgY+q1sfgsVHRu+p370jCXW2LSapw0pz6hGrp1OmEeKSKEzJJ3oUmbowOMTQ?=
 =?us-ascii?Q?H3lWvqVzarHljc01s51d3RtRjd4MTOuL0o/Iz5OmGHiMRe3REk3a3XgkIxVx?=
 =?us-ascii?Q?P6jlAIt9RxM+g5eUSzQe+2DYH7XCAsGm5bZJr1GrRgTt43P4pOhdq9i5cmit?=
 =?us-ascii?Q?DTivTq3XHZiYaXMsQvKuMaXP8KGdX+siYvmwN8+A4KFXwGyHL9zM9SbSCir9?=
 =?us-ascii?Q?F1CKGW8ylU0PC8KTbkRKRS95Pelm5nyGaJM01NLXTk1x4Ma3Oc9m3XYoTqpj?=
 =?us-ascii?Q?qC0tmwVwocEuYd8rcMf+JNtLx+vHCib/TJ8ROidKuoF9mIDBP0vldTr4MP1s?=
 =?us-ascii?Q?Z4RO8PeLgmos13UWQrkM8HSNi/aiDnHTyACTLYvwT27mzVdEAkv4gVXZZrhE?=
 =?us-ascii?Q?ljOB3dJerb0+l/T8XMB2a8I3rpLPvxDEmyoRxyXZqC1oyrz3R0kejN0LgjdW?=
 =?us-ascii?Q?XzTdy9CM7LFhpsSVx9wahDLcPIh/pyNA?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ldsViaDH37w/mvGvr1ok34FRICemyxaTaJD3+RbgIkcyrTgGnqWfP8Ll6HMt?=
 =?us-ascii?Q?NAQsNjh9iACSCTmcpsa9SKJnMBWij94vvOH5Y1QwO5AlPwcEOvjffm8ZYSw5?=
 =?us-ascii?Q?Gv0mIrMlojA6XajRFK9nfKIBOiQAi220nXkgGfcqEXjUTJXJGWH3WYaN56Ty?=
 =?us-ascii?Q?oHaPmCKhW+u894mbEnsm0flIFPRExy7Rr8KDvcwc1DJqKJpd6UPZ97iCeyQf?=
 =?us-ascii?Q?rOdr5EX5ebD8zg0hSRQIwVyw7MVtTpkhEy+MXSAjpRKun+VozPHIBh84Bwa4?=
 =?us-ascii?Q?/uqTwNA2fMz9TG8/Q6vehNTofSBdkFmj/Km6SAtcSrLxM/EGgr6NN9OPLenv?=
 =?us-ascii?Q?9qKsuDjBOs5vHtO+6TLm/Fjjvzcpsd88SyB8JIc9+9YMEOMJnUAZzBgeqYtQ?=
 =?us-ascii?Q?WIGiHJDtSCf1wC03+7v6Pccl6HVEwHTokrmZG7vGC0YR30sKMl9JkXOU1n6s?=
 =?us-ascii?Q?JctQjFGBeMXypDUTKTbkMTxYk8Sv8/o8CrsQdNbuhua3qTC+JmM+gnMORJEe?=
 =?us-ascii?Q?gN2+RTZiwiaFwGtTXsQCnMOO4rHJran6cKiE1uJH19YU+wTFPqJFw2rBz06q?=
 =?us-ascii?Q?OHKFBzO6orpeMef7xfFOSdD6zk14MwAqw3FDNvq+iErDvMI93HYCnCSzXgJo?=
 =?us-ascii?Q?fDVygzn74yxPUzRa096Y6Us5/OrTVyP1QWkwEaE2xuDuJq7sRYERlYcaD+4u?=
 =?us-ascii?Q?/daJ4jn3b+SWUFgTzVzXBPaSqHWHRSmqSgIWST1uL7VzIcF+wca4w1rNrSvO?=
 =?us-ascii?Q?MxkgZjVY4YzNvRjAbSIta/xZffZajgR8LUEwj0CY/vh3gURSncIDfvVBc1fg?=
 =?us-ascii?Q?KiKdBNVQkuBfnBqiSfPEfjtZfwJAxjpTF5hiOx2NwUbq+kWBccwtWs5equP3?=
 =?us-ascii?Q?/E9iNpkxbAiiq7+G0FTWC98DlFNoeL8BDJyEqy5QktdqW8On05/sGTVAfSVS?=
 =?us-ascii?Q?tvx7GpYnLCYR9Sx7va/u4O9T4aOxCUbiwF1KkPWZfiw4MPln4oRwXzh64/S/?=
 =?us-ascii?Q?HNMdq6rSMGhM44pJYv11vLFiY+pfA3UgPncCYmGw/gnk+kEJDekABaQtd5ko?=
 =?us-ascii?Q?25OaiqMzHpeE5RE5MhdXm+yxU190GjJYZCG5XrQr9NNCLaRm1U4G3WQySPbZ?=
 =?us-ascii?Q?P34QEK3Ph86C3nU/miLrKN3nUWqoNVHCG+LtbynwHTMf/I5JyCvOWkouYRHc?=
 =?us-ascii?Q?Xd7khcbWKmEnQboyVqbFs1Jj2P8LWGHWw8GvIQzgo1XOe2NrjLd+zgXJZz5m?=
 =?us-ascii?Q?ihD8OjlL55i9UfTfHaPe+53gDkVHgT1lVW9TBUX71m6psOaBJCXIaiX+nRdo?=
 =?us-ascii?Q?WXJkfRkPMNgTD1VMbXEFWP5UHG59O7r8ZRry+E5ahZLnH4I3RG8TeMR1PIVc?=
 =?us-ascii?Q?dspgTou9L8ec7vdJiiP7lTwkmGK0C6Zxa45+h+KNGTtopH65Jsn89GopkOZu?=
 =?us-ascii?Q?fAg3c66FhXZgerLU60aYdnIVsE0VRZyjaZCDPsY24oI7DmvTm8XSJKXUKApN?=
 =?us-ascii?Q?SawqiPXR1UKzzl+dedW0qeZJUAmQCxtugwLuvUAXPtUP58FikDbeaH18CCPb?=
 =?us-ascii?Q?3D1gqMYRrnKMkZ38UykM2W/SIhqCBvTf4zzbegCIqEB51dgSmRj0amfhUmv1?=
 =?us-ascii?Q?BQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a265d622-b0db-4cdb-ff8c-08dd2bf38f18
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 12:38:43.3789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HlGjI9LaR0Hny0TkCmJGzeceSwYbZFjXw7rLjyCITZt37hRahOJFjgjBYnzQ9HP8STv7OIVSyxk6VOHT5DtQ7JZ3qmtq8zr7GbtVM3/otbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6039
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Friday, January 3, 2025 2:15 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Bhadane, Dnyaneshwar <dnyaneshwar.bhadane@intel.com>; Kandpal,
> Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] Revert "drm/i915/hdcp: Don't enable HDCP1.4 directly fro=
m
> check_link"
>=20
> This reverts commit 483f7d94a0453564ad9295288c0242136c5f36a0.
> This needs to be reverted since HDCP even after updating the connector st=
ate
> HDCP property we don't reenable HDCP until the next commit in which the C=
P
> Property is set causing compliance to fail.
>=20
> --v2
> -Fix build issue [Dnyaneshwar]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM, =20
Thank you.
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index f6e68a0e3b6d..7464b44c8bb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1166,9 +1166,15 @@ static int intel_hdcp_check_link(struct
> intel_connector *connector)
>  		goto out;
>  	}
>=20
> -	intel_hdcp_update_value(connector,
> -
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> -				true);
> +	ret =3D intel_hdcp1_enable(connector);
> +	if (ret) {
> +		drm_err(display->drm, "Failed to enable hdcp (%d)\n", ret);
> +		intel_hdcp_update_value(connector,
> +
> 	DRM_MODE_CONTENT_PROTECTION_DESIRED,
> +					true);
> +		goto out;
> +	}
> +
>  out:
>  	mutex_unlock(&dig_port->hdcp_mutex);
>  	mutex_unlock(&hdcp->mutex);
> --
> 2.34.1

