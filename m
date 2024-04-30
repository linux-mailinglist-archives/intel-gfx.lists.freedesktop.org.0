Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FD88B6A92
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 08:42:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DBF110F2DB;
	Tue, 30 Apr 2024 06:42:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhmLkWE/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CDEA10F2F2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714459342; x=1745995342;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QkFGUcrX5TOoq3RINOYo6cdm7cLMGrmg0qmh/y0p4CM=;
 b=bhmLkWE/hIIb/mZ45uAxzHeR4b+JiWH+EyMcrPVFcoWJsMfuKJxc2OuR
 xlhR+mesgQstNwi9UovASOQYYIr5GiDuqpLxjahShrSVFN25njix562dO
 Bv4tM42YJEQHvRBerpttCjfQ1blrERU8lowuju9emIDe7FA88yN2ZOgFL
 XmDQHxFReqx1JASsam+KKLbHFePU0fQuyW3suMvfdfRDDDq3O0FnqIjJ8
 dAnIiJCMBWqd16sNhiZy002oN73jKHz2SrPB+K0onlh4laMVIY5dfogf2
 D23XwDGmLDLSdOTlx+wKhIA7SUwzkz/+ZBytyjwjsX9pJiSY1X7ScJofP A==;
X-CSE-ConnectionGUID: EGJvvBjlQGatodLMkavSMw==
X-CSE-MsgGUID: DlREAkiMQK+j3/Cv/BW+5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10009392"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="10009392"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 23:42:22 -0700
X-CSE-ConnectionGUID: 0v3ciX+DSZK4CCYud5HK+w==
X-CSE-MsgGUID: hfztu2Y0SIaEZFVtwqlGgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="30986056"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 23:42:22 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 23:42:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 23:42:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 23:42:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKZheUyXbBPz0eqYbOXpb3I2D/Ow+MGq7HTtCuYyHQjuG0TEAveWPE0fSa7xUWNaZi3QeyG0DwaD3XFqHNJmlVgcREMNL8Zo4Hp889p2y3CqPnUR96ItyE+QdiYk8fmgBZJVjmCYmfZH9aqalNnj3SVpg3ntegD3Ko0C3+58eu5P5Nmacq4OhUoDr0ha+iwZyx4ErC9TzM165KD9p5NIm5xxUtEp3lihAtCAxpZkpuTn+Op6HST5LALWz1wgPqg1AaFqvF+WWf+r2khUvEkRqRfxQQ9lCr47SMW1JaHVs3OLPTd0dbbi8L4mumb+mjJxw15GblAxzeFOHkZsDO5q1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lG4+FVIbcCng8gVdeZL0CmGX3X4M0nV+BWRWGpzlTwE=;
 b=g63ui2+jJ8mMz9Q7nI+glzGY8WS/PU5JslX3pFkbYzlTscZuN9i3RD+yOcEhfnixpvhQjbjGZ/ipfjVCtNpT8GCigD/gIwZIZF6/2SVsv0nutjHFaOmHqHnxQTABKOx65Sgpf2W8hpPi9TyoB7cDTW8l4NAqurq1Klk3xrIQf5vEHyMtEkP1abNYJSm3orlEA57NUuVO8vPbV5QmmBDr8G2VrjtOgVg/qkEuT3BUn83FbCYJn7PPUcXeRRT484EY8YslYUiIG1jaEKNoK9wgPw9JunYGv47UbCkBeM8rU/osNHiKeqaWPkot7SvXwepTzkk0Ps1pAjNB0oK72CWQxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA3PR11MB7525.namprd11.prod.outlook.com (2603:10b6:806:31a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Tue, 30 Apr
 2024 06:42:18 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::4b13:ba21:57e8:6da8%5]) with mapi id 15.20.7519.031; Tue, 30 Apr 2024
 06:42:18 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Topic: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on
 HDMI
Thread-Index: AQHaj7CK39Yl/XAuhESkHYWTg6z4CrFqi2EAgAGwCYCACrECgIAJhS8AgAABgxA=
Date: Tue, 30 Apr 2024 06:42:18 +0000
Message-ID: <SN7PR11MB675069395DD3817DC87CAFBFE31A2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240417095537.632977-2-suraj.kandpal@intel.com>
 <20240424051144.822652-2-suraj.kandpal@intel.com>
 <SJ1PR11MB612950DDE39D93725A734CBCB91A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612950DDE39D93725A734CBCB91A2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA3PR11MB7525:EE_
x-ms-office365-filtering-correlation-id: b035ca1b-de41-4f0d-a919-08dc68e0ae1f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?us-ascii?Q?TFPuVAKPet18lSR08zVdBzTLcoTyosK14+Ea5iO4McKa+tHGGSJXIaSZTO+/?=
 =?us-ascii?Q?6SS/4QH5hxgHv3r4bav7fiwDPeUuVnXcpOVH/J2LRWzXX0s/xiKvUW+suRp0?=
 =?us-ascii?Q?t6LbneP2pvi/IKX2+09qEHiPSRnyQQuPJRtoJiD6QaVGxvNnpGrXucsL6XbN?=
 =?us-ascii?Q?5/AeFDX4kKSvFZCRtexzsCyfQmxeRDB6xqpPLKpMixrt2g6rMAse9iBjqySO?=
 =?us-ascii?Q?X2XtaFsjw5iygx0NG4DuPWHQqr5OmG/VgY0tPNJp+OGnWK7BOgNKexZ2MPS+?=
 =?us-ascii?Q?gy5M0f4KimS502H39XezMjGejUxS0ik91VvAromz6T6Su1Ipf4ZLYrHwZGeE?=
 =?us-ascii?Q?yjywpGMVhob8mgzEMVLW+wRGd7hmbrezedwpDYxCZiXp0vHhHb4zhS1faxqb?=
 =?us-ascii?Q?/qJVPRu0uyC2crAClZGjd66bYQYFRRrss0ZabCEMwp1ZYjpz9QmVdniaHI5k?=
 =?us-ascii?Q?wOZpYH2I8XY2L6KlsRR5LgK9BIe1T2Ajpl8RtXKKLnk4Yvj4/wyhYDLu7cu8?=
 =?us-ascii?Q?qOcqdInIfJzMUJwYn0mzJdYi7V2X6PfBPfgjt9rY2s6kI0jrG+5CDR15y6pH?=
 =?us-ascii?Q?Zp+s3lVixtPjIn0MXYGhqdzvLdisjbPohr1E9U2CVmpUanNLACfl7vMmDFWg?=
 =?us-ascii?Q?vxjtRfpzqo0o41pZOgkJ52hzVzci1amck4rxKixzBapSUqrlfPv1CjdF4+ib?=
 =?us-ascii?Q?d32IHBn+shKhMsme1eaZHoqS5Wc4gY3z2iacktKO0spJ3QLb9HumUvTWGBIh?=
 =?us-ascii?Q?EIZeRfxfrbCtaQTOX9tfZ3BlSd+eBfkWLaN6R+hbubI68i9ugSpa80tsM7hk?=
 =?us-ascii?Q?7OSUxV5oC0AOT8tTm6NBBL6thIEDJ4BNY6F13MH/BRrrWh+6RHSD/Zn5QUvz?=
 =?us-ascii?Q?bSEmGTQWvh4y4neQZEe9BfZYgoqec2FBIxfs6mCCBVhvJ1D1lYse27yaEaI+?=
 =?us-ascii?Q?4iO6QOHPxmqVHLZjs9TDzcgDQXMyIsOFlKv4TcG6jJ3rg9ClhlKE5LGv6wpS?=
 =?us-ascii?Q?hab77fF+Lji7bvHHgSv8ZEjVw1NnUmAM+YH2Eg5vejOLLKm68xJbBILKmo4w?=
 =?us-ascii?Q?4+BzGPuHEA5oOkH7E095F/PgXEruitNw5idVI+l2tGOKElP0IB1w6m/UntAv?=
 =?us-ascii?Q?gB9C/mdAd7Uky+w22LfRdSxOSGGeGdiWhKTnyrrUWzVKk2XIS/o34Bj+eOL6?=
 =?us-ascii?Q?2RSi68FgdLrEp8XLtByDD6mxCJpCpF0t1APcOCbC+RzTcFDdUUms45g0ypuF?=
 =?us-ascii?Q?sialBYWv9M5q2yu9hHgD/PAs5H3EKQ1MEuGPHlIGvfDKb1SiXQbQ3vn5AzqQ?=
 =?us-ascii?Q?keNsiaK6iadF3phEc4nTMbC2FXAwNzdE9+FptcsDiAzKMg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7zE2r2pCH+7fZ9pKox3dZFrlDKsx3j414DyMnpIidrjmQre28cPeGGGxMPjp?=
 =?us-ascii?Q?86KpMNQKtTZBDc+KJtq35N8hI7QbgVZAazrwCvMNyfE2XzhBcFwAt95qdtTp?=
 =?us-ascii?Q?M9FHT4/IKaLMX7wol0tnNhF1gYJq9/axN5NgM67b7nHT2A1nGEasJbePt5ah?=
 =?us-ascii?Q?47T4crGDf6L6kk+teYG0n8tdsh1x4HCpR6azp6u8dzE966g2qrNJa4OCVCkz?=
 =?us-ascii?Q?4k1/vI3osohrnhIhkdDpc4L4IQSrqYbbHQyf63HTXtTOiLWoAWMY9weZkI9d?=
 =?us-ascii?Q?3VWrb5qytq/jNPlbN17SEYeztPuNwA3GFmgC6K7dpiFIS2PhTYiljo8/672x?=
 =?us-ascii?Q?rvy2FdRUgscPs/dZHc8mMyfGew0owrzQv0T1TiiJB84Ye2uZNFjd1FBcW5OY?=
 =?us-ascii?Q?wudHcu6Q9u90h26K0c7ERy9Bv8iddRbQaZyPXf3DWqTF1i84DaQkw4C9hEV3?=
 =?us-ascii?Q?QN/at9gLfoO2eXphHHE2lb70OBIpdOOE4Tjg2IEyFNeZ3MOdLWEkq4LPD92c?=
 =?us-ascii?Q?I0So2lSZQLRUtgpkp7T9Opgsiv05GfC3hk0vvr+hqjixvSWLp6NNookCG44D?=
 =?us-ascii?Q?Cy6glaio1DISi73IM5D/dDV8K9KrSt1g5yKHXU6UmCZuGLKT8BPg9Upsqe0y?=
 =?us-ascii?Q?XJNeDvIosol9y0g8dadM27OyvBzv62UjLIEAHApQb5Q71WS/koETJAlWccbk?=
 =?us-ascii?Q?e8si/B3B0syNaZZbyLwJIaatsK2wNipntsdl6A0/VbxAcqK1y2IZpnF1+ymi?=
 =?us-ascii?Q?BLmt6fSCU4ycKQKNIpncldUbuaCNksEetyVInsaqXJ8ZT0yHsxcTV6PtNp/r?=
 =?us-ascii?Q?lFFoiguRsn1VYnuc39w7FYHlmgW6X7jPkjsirWaFP41/BsboyXfzS4xEAVvF?=
 =?us-ascii?Q?jQfbI6Ls3HzYCMIo2Lh0cGskeAFRibpfNC0B0gWDX0a/Dkkh6SH+LoMkIo1i?=
 =?us-ascii?Q?19W+twy8CDaKHgDigK0V7ywBx0AB3RAHxbdZbytq/NqV9p0a1GRwWD1XeyL7?=
 =?us-ascii?Q?uLAGDt2Nd8hJuWYfxZsHRJ9PHzSIuiwp/mQehVqPq5PTUtlRLDK3WRRozpru?=
 =?us-ascii?Q?gIzA4nSrqN48i63RqNX49WxOa0G6gE31jbJe9PSmlmZcPDDIbyFG2FzjDNeD?=
 =?us-ascii?Q?uXA/K//hHKKXiwUDt5J0RjvDItttBoTbkvvEolXklUzjZyFL7ze6Wiqrc0th?=
 =?us-ascii?Q?F3m4Bo31MPLrvFUnxIdPoP0IO4q8m2wyCQ5lKD8NRKy0oGen4FaXy1zUqc2f?=
 =?us-ascii?Q?6PE4gVmMUpBO+35ffxd4T89X/ZeXaVlQFlUNzD/R6srylVbLrouRF1cGIBVa?=
 =?us-ascii?Q?Sceqndv4c1jrvA2XYvgU3yCWl4Ykp3FFvx4xC8MU2Q0oZ62NXjJBztYba6nv?=
 =?us-ascii?Q?po4pxVyI42iJAosmW4aRNBY2sT2QcsZtsvm4T5YHQ9MuswQNLDOmBiMq1X3f?=
 =?us-ascii?Q?fhJByDg2NzoagkW9mlr3qC8cnBjSbB01waAOvGIoHWAuANXH0/jT0/UoyJR4?=
 =?us-ascii?Q?LmZmUTncxaRXv921N4ICAayOFkJPNmFKmp/pq5LJDROBx/8v0vFNsEWyh9s5?=
 =?us-ascii?Q?gQ+wDo7ciBzzfXYh6qMH43FMqvko7BsY99+k2kyr?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b035ca1b-de41-4f0d-a919-08dc68e0ae1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2024 06:42:18.2616 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tH6VqqWmuhTjcR71fsKIpGffGCXqGNN1x7kf4qEMQbYxJiaLOhxRuwwRlBur09dU7zuH2I5EWAxfeqfOmSwWRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7525
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, April 30, 2024 12:05 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: RE: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.=
2
> on HDMI
>=20
> Hi Suraj,
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, April 24, 2024 10:42 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH] drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2
> > on HDMI
> >
> > Disable HDCP Line Rekeying when HDCP ver > 1.4 and when we are on
> HDMI
> > TMDS operation for DISPLAY_VER >=3D 14.
> >
> > --v2
> > -Wa to be mentioned in comments not in commit message [Jani] -Remove
> > blankline [Jani]
> >
> > --v3
> > -No need to write what is being done in comments when code is self
> > explanatory [Jani]
> >
> > --v4
> > -Add comment regarding need of this WA when in TMDS mode [Chaitanya]
> -
> > Write in chicken register for MTL [CHaitanya]
> >
> > Bspec: 49273
> > Bspec: 69964
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 26
> +++++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h           |  4 ++++
> >  2 files changed, 30 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index d5ed4c7dfbc0..0d8ae6962d34 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -30,6 +30,30 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> > +/*
> > + * WA: 16022217614
> > + * Disable HDCP line rekeying if we are using HDMI and in
> > + * TMDS mode.
> > + */
>=20
> Thank you for the change. My idea was more to document the fact that here
> we assume that HDMI is in TDMS mode (which is currently true but might
> change later) and not the WA itself. More on that below.
>=20
> > +static void
> > +intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> > +				      struct intel_hdcp *hdcp)
> > +{
> > +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +
>=20
> Something on the lines of
>=20
> /* Here we assume that HDMI is in TMDS mode */
>=20
> But you are welcome to come up with something better.
>=20
> Also, s/dev_priv/i915/
>=20
The rename cannot be done as many of these register write and read function
Macro require the name to be dev_priv

Regards,
Suraj Kandpal

> > +	if (encoder->type !=3D INTEL_OUTPUT_HDMI)
> > +		return;
> > +
> > +	if (DISPLAY_VER(dev_priv) >=3D 14) {
> > +		if (IS_METEORLAKE(dev_priv))
> > +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> > >cpu_transcoder),
> > +				     HDCP_LINE_REKEY_DISABLE, 1);
>=20
> Since we are only setting the HDCP_LINE_REKEY_DISABLE bit (and clearing
> nothing) the correct use of the function would be
>=20
> 			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder), 0, HDCP_LINE_REKEY_DISABLE);
>=20
> > +		else
> > +			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp-
> > >cpu_transcoder),
> > +				     TRANS_DDI_HDCP_LINE_REKEY_DISABLE,
> > 1);
>=20
> Same here.
>=20
> > +	}
> > +}
> > +
> >  static int intel_conn_to_vcpi(struct intel_atomic_state *state,
> >  			      struct intel_connector *connector)  { @@ -2005,6
> > +2029,8 @@ static int _intel_hdcp2_enable(struct intel_atomic_state
> > +*state,
> >  		    connector->base.base.id, connector->base.name,
> >  		    hdcp->content_type);
> >
> > +	intel_hdcp_disable_hdcp_line_rekeying(connector->encoder, hdcp);
> > +
> >  	ret =3D hdcp2_authenticate_and_encrypt(state, connector);
> >  	if (ret) {
> >  		drm_dbg_kms(&i915->drm, "HDCP2 Type%d  Enabling Failed.
> > (%d)\n", diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 3f34efcd7d6c..39b1a2d516fe
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -4613,6 +4613,8 @@
> >  					    [TRANSCODER_D] =3D
> > _CHICKEN_TRANS_D))
> >  #define _MTL_CHICKEN_TRANS_A	0x604e0
> >  #define _MTL_CHICKEN_TRANS_B	0x614e0
> > +#define _MTL_CHICKEN_TRANS_C	0x624e0
> > +#define _MTL_CHICKEN_TRANS_D	0x634e0
>=20
> These look good.
>=20
> Regards
>=20
> Chaitanya
>=20
> >  #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
> >  						    _MTL_CHICKEN_TRANS_A,
> > \
> >  						    _MTL_CHICKEN_TRANS_B)
> > @@ -4631,6 +4633,7 @@
> >  #define   DP_FEC_BS_JITTER_WA		REG_BIT(15)
> >  #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
> >  #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
> > +#define   HDCP_LINE_REKEY_DISABLE	REG_BIT(0)
> >
> >  #define DISP_ARB_CTL	_MMIO(0x45000)
> >  #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
> > @@ -5630,6 +5633,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_EDP_INPUT_B_ONOFF	(5 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_C_ONOFF	(6 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_D_ONOFF	(7 << 12)
> > +#define  TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(12)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT_MASK
> 	REG_GENMASK(11,
> > 10)
> >  #define  TRANS_DDI_MST_TRANSPORT_SELECT(trans)	\
> >  	REG_FIELD_PREP(TRANS_DDI_MST_TRANSPORT_SELECT_MASK,
> > trans)
> > --
> > 2.43.2

