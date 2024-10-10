Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EF9997BD3
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2024 06:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375C610E085;
	Thu, 10 Oct 2024 04:30:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cWVXeme7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6382910E085;
 Thu, 10 Oct 2024 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728534653; x=1760070653;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8X02+famiUmfaxNre+pq/PqQPWPcwFeOLdm0zP4wbyM=;
 b=cWVXeme7Eo0gphSrNHjruSgV+4zS9IE7u6uqg67lRgYPs6SwiHM3Cei2
 CjTic98XeQk1G9kiWOclCSQZbvTluexiQqo8444TkOQoeaJfFascjtnHw
 5l/bJqhYQQPI0gzNE6knoiHjELcWC1SQROj6tn/5oOPoZfY+ZXVkB19Ua
 GYyJj+AK6StRRAlUXldE3wegXwMtC17QA6oZCFhiKyYDIBcEofFUxUmMy
 oOsKctagW5ukERmRKEHA13ovr8VEOF1MQN3JjJCmXPFR1haPhOb5Fs3en
 5khavJrECtYXdYLopyeNf4QefgRA6F/ovufsXus/4jF8Luv0RMnQ1OVhW Q==;
X-CSE-ConnectionGUID: Uxa0RQc+SFqfIM1bkqGZ8Q==
X-CSE-MsgGUID: nHVMA9etTSOl8AoLjM+ABQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="53274263"
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="53274263"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 21:30:53 -0700
X-CSE-ConnectionGUID: 5BF64SbFT4SxC8prBh0J5A==
X-CSE-MsgGUID: iCRcelNPQa6HRubEhP95aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,191,1725346800"; d="scan'208";a="81035439"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 21:30:52 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 21:30:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 21:30:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 21:30:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EzSAK7r+ASQjjGmFcPrLpVVtF5PGxGNI/9tcyKDy47JDYdlM3FlGcUMyddgK0XYzJ31tVa3U2dUPf3VpF25eeEl4kH1df7BBgrcBcpm+ZxZRBmvVBjaLRh0gxuMcdsk4CbfXexHNxjQSDncqupA8qviUonwwEvb5MrpPOSnlV39BN5pbTKnRX6M0j2s2j3OpiNSfbKOmLaL1w94+F9LGy79OBb+38BRqNBQhFu1nuCuH1ISuOkFrO3H0xUze/UJQpVqrlM+ziWolcn1N7I01K56hTIMUifHv23yoiQcEqWh79YGPsXw7oA3VikSoRr+dMvPdi/I8SYGr7xRjxzTJ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F9zvdnU+0UrZBNZ7nyO0/F8zExs+THr91FmsLf/+lP4=;
 b=JQUonlrmGh0gMh9e20PBbnfkwDAHbZ7C1gxmmRf7nPfq2eoA0VxZryP0q1H/+eJvW7+dcdTSmH76PAElrPAXnSavkYQqkW4DG5tnMlplzrFIAGypSldKXY3NAppxrSlsdfkzao/rnWdEXpCxPmyntqxXiQN0PUy6MPPCqCiMNuciHlEwP0xyCq7qzPeWZfuA/O/fCwuAUpHgfT2+rX3ChVp/FUcbD9qP8G5FCo/NuyuPR8KKze1Sd7ulDSJGLgBwDNMAwihgOlMSq24Xt+SVWARcKTe39stlFnkYVcNv2SXcBhdpZZmopYerCtlI3a8wBgvCR201lPWYry7IMwrIyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4550.namprd11.prod.outlook.com (2603:10b6:208:267::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Thu, 10 Oct
 2024 04:30:49 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8026.020; Thu, 10 Oct 2024
 04:30:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH] drm/i915/hdcp: Move dig_port assignment lower in the
 sequence
Thread-Topic: [PATCH] drm/i915/hdcp: Move dig_port assignment lower in the
 sequence
Thread-Index: AQHbGhRQpFNPhuItTE6eKiYjoKWCmrJ+LPwAgAE1rbA=
Date: Thu, 10 Oct 2024 04:30:49 +0000
Message-ID: <SN7PR11MB675045307AFC282BFDF62F8BE3782@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241009062455.1796615-1-suraj.kandpal@intel.com>
 <87y12xa9mt.fsf@intel.com>
In-Reply-To: <87y12xa9mt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4550:EE_
x-ms-office365-filtering-correlation-id: 503a189d-46ba-4f33-8e9d-08dce8e4513b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ppweuZCEYwD1D3S7bw34DgolHCpVZH1rGHG71ZYxy5rT0JG0AteLg8ExFiuI?=
 =?us-ascii?Q?iw1yywMszBPwjUpeB/XOhLbeZ3bK+9u1KmFov69k6VQ9je+dW4/zjCJGE4dK?=
 =?us-ascii?Q?yRZg3W3P3V2KvHUi908FQ4l4oNFsASjnIwLyET/KCGs24H4U7IXeBCp7HnDf?=
 =?us-ascii?Q?2LcqoLPNssC2WftPqZII2T7JX0vfmcwR2gh8LD7hOjGSxGcN7Nr3IGIpBjTC?=
 =?us-ascii?Q?Kh/VXjOZIMYGOgI8NdRm0pGa32IkGh+DYNTvwCubykajZGK4CZfzwpUCthC3?=
 =?us-ascii?Q?2eSHL9l7K1B0ZNri7BE9M57uQtem+mIYo/CrCIyHX9d/zUBO50s8y1xH/MD7?=
 =?us-ascii?Q?xZhZSCgvsQSVBVP5KKOCqDg27pbNg+qKtLF3sWv1W0LyFWpcxr8vyPfUSAp0?=
 =?us-ascii?Q?qeHrJR4c2kbhLUmDI+xm7Ar4WPFx362sLafhMX1x62/ckLR3QpMTBovkIvbt?=
 =?us-ascii?Q?VTCUnPK8ccUMxauPiU/X/9HQVMZvCjAEQ+7nfI0If6Z6c609N7xX6QWSHlH7?=
 =?us-ascii?Q?qXQBAh1Ih5ifWLC724IGDGT4kJeKsEn7uibnkKdemiGPR0obs4CL6Nz2q4JC?=
 =?us-ascii?Q?NeQImXfw/2AiVbZfC3zVwOfLOWjTmXsfHqHbkq7ExvDcv0hh0bu54/mUUE5f?=
 =?us-ascii?Q?qyDxYxgp0CCjXYQdDg+r/Zymt1e2DJZrauIk0skDJ6WImO/r2+ml3ktom/TS?=
 =?us-ascii?Q?hWXrno/28P0otLDx95vp0hSyrVg63JIVQEaHlvE9pN8Vnjrqdy5SsdUnhcpt?=
 =?us-ascii?Q?+wDJ20iZ6XgYOoyP72ZwpigeGhLmZnJglcwYszpB+lHtCpJwPoKpS8l+8jIF?=
 =?us-ascii?Q?QvtzHtHrScLZ43I+GI7cKMIzx+lmCyzr9/Uz3l4b7aHXiRPmBHjuED+6OAjg?=
 =?us-ascii?Q?ExtmR5OSl/o7dyoUBIxJB+9eHofo+BMrlU49iKlCHc5r683IfIsOGkp/aMXg?=
 =?us-ascii?Q?zAK92k2/IuWbs/gKT5vkqtAZPbfpS1gshARO31txKTupfLuKuLI3vK2Tfgit?=
 =?us-ascii?Q?q60vl3DsifyZhCokfLraJjJ+d7ggcmFx1vLrm+FHQs3taQ7JWlULMZcHjUJd?=
 =?us-ascii?Q?ORvcKqazyOQIR5CnNkTGsm8K4z0kwoprJNVm1YPc9P/c8JZXkvhNB2o7XFk1?=
 =?us-ascii?Q?Uorp7+iJ9tNgfSGimifgtxAdD7vV13QMenAuOL66AkF/+uxCOj5YtwkC4yvw?=
 =?us-ascii?Q?qD0zuEOngDCX0h4zw9bqq77uk+ch643WeREAf9tIn3XA6m8nLy0SyD+6JEkZ?=
 =?us-ascii?Q?kkXSXOwtRJHiEWgWllS05z+S2eLqocQdxEaf4O8v0BtQN8PxKveGX13kskIz?=
 =?us-ascii?Q?n4jwymntUlve3R/2+hkHVowsDEfUVHtvV4QA0EMVUe2e6A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FAO+0T2sercDEJBNlssgOScdLJ+9MynMiGTX7YCf5hQHiq7zlrETMgsvG+6d?=
 =?us-ascii?Q?8ry/79DhKHjXtcVg7OMNPG1kk/MCoXPGWHGRwTBHiKdScptE2XKWk4hLddSQ?=
 =?us-ascii?Q?mZAuqWPZOvF7HbZBAAr9y3JOeY6mMzS580SRe7/Lj9IVgWhWZC2jifJnyQ5a?=
 =?us-ascii?Q?/JvAWQzRpvfWFYpVcFtyi6aaonanW6iA36GihLQk20gipBxrulWT7+/ki0k0?=
 =?us-ascii?Q?ueTVz8WocyOK++qK41CDBTW97pXlWP2bH+p4RJpfTaFodIUaNmF6wYZiu9uc?=
 =?us-ascii?Q?bzSbCbhuEomJtSNs8FuxQAb+hqlfKUloG5u0DKGGT+1nMf9eEwvrkPGsM86r?=
 =?us-ascii?Q?4kwmLLYo9ZWhW2lZjtjRrPY6TQwVSY+k30uWq4iZ15y93nmFdP4aAGdpIFSn?=
 =?us-ascii?Q?s6u7UigDO4UYc2QikuxHm2rYqFYv28oWNaQCnHXqANQGSLRy4d0qABunz1Sg?=
 =?us-ascii?Q?0wwjDKl22blE9x1Xxm3Vo4HeTdW8qk0GAOksLjiqxyZNfMDXujiJXBUSDl+0?=
 =?us-ascii?Q?QQvTh0X8WqG5tocQ75fV1wH2/bZ1/NH7awaS/5PU7X6cKLxnXKhJNGpJyPjV?=
 =?us-ascii?Q?G9awfMd5yI08jUWAPz4PJLLJDfpZ28Gc/n4HdubcO2In7GBafFs5BRk6IrsY?=
 =?us-ascii?Q?Bpd1+44APg4WPTC4MJ/ntXzooy1pzsqOhubB5rx0X1NTxGBZfTAln3vQmVo4?=
 =?us-ascii?Q?+XBhnbhu0ipCzRT+cd3cSVc6gOZ3Ut3RhUfYuqg7+BSSHDozDbNdH+29H2FN?=
 =?us-ascii?Q?lkRER//UOHv2ilchkDLSbhFTpF6nxNUo6gW+NMMSRZja0LUVKk3JGv2SsIl8?=
 =?us-ascii?Q?2kw/y+FjPYRNvdMvaHZ4OGdVEZKlZt6aYlXSQ+u4c4XWsXvzW8IrvCq0Zrah?=
 =?us-ascii?Q?KXD0+186CQYm+LYuaWZXbf0t0OQaDChakec6qUt+hOYDKzIMiklCiMqMF5eY?=
 =?us-ascii?Q?hA2wjrZvs82svlowpc305eoecp2X8TyQNbgK0s/hhsAH1NxqEqbVnBmqaOMl?=
 =?us-ascii?Q?53ElYCQ2ltpljjiGFb/1kWWmpY66Xw3Rg3EIn6YkngGwV9SY8zW3FxN8yAZH?=
 =?us-ascii?Q?tfYtkSpd6qCIn6t0verX5uzJiKYyFCw/ImgMVZ2wnhkjJ/aEQTYGP5+0N6XV?=
 =?us-ascii?Q?rtFw5hQvVBTAM/+ONxrOsIKKC9vb/Px1+Na1OKZ+HMVchP3LxdCjPAPSywsV?=
 =?us-ascii?Q?tExcN071+7LVt+riPG3PE9hN4xFFyVP/74ky7/+PJBwRyME9Snjf5TB6pTdL?=
 =?us-ascii?Q?p7c12WF014w3QCDyr6GsuUX/KP0OCGGyKiZm49to8vfNRBhHfCOIAdITg1a9?=
 =?us-ascii?Q?XGIdPFvFCcAsX4cVVbg4X3xhCVxVBG28wBowHwUpBsqPuoyCymp5IsB6AWr9?=
 =?us-ascii?Q?qz0CE/6Dl75Hyev2iNwGH33jHwrBB1u4fOi9hrMl7Emo43/OeQ2bwV+0qFzC?=
 =?us-ascii?Q?ejCrhYTfi4coYniv9OvTTQpgaxYg5BnUHVNFpiQPqHh5Xr+A0GsGoso7BvtU?=
 =?us-ascii?Q?3GgKJoZ3Gu27vUKd1d+84EA6Pga65702Z/NMtNeWCmZGNHwUZo57gDs4Aql3?=
 =?us-ascii?Q?nSMoFJD70yzbCwrtCucdD1+W4vCxKD0XQG+pzHCO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 503a189d-46ba-4f33-8e9d-08dce8e4513b
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2024 04:30:49.2759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rMRHcxmjxwQaiGlAIxFIVzgIFF9M0F+y+F2d7Ex6ZELT/3Hzql+oDRem1ZHGHKx7oucq0yQN8LNn+NOO7IROVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4550
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, October 9, 2024 3:20 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH] drm/i915/hdcp: Move dig_port assignment lower in the
> sequence
>=20
> On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Move dig_port assignment much lower in the sequence to avoid NULL
> > pointer deference in case encoder is not present.
>=20
> Please describe the case exactly. Is this real or a static analyzer warni=
ng?

Yes this was a static analyzer warning

>=20
> I see there's commit 6c63e6e14da7 ("drm/i915/hdcp: No HDCP when
> encoder is't initialized") adding the !connector->encoder check. But how
> was that supposed to fix anything when it leaves
>=20
> 	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
>=20
> above it in place, the line you're fixing now?
>=20
> If we haven't seen an oops here, it makes me think the reasoning in
> 6c63e6e14da7 is bogus, the connector->encoder check is bogus, and this fi=
x
> on top is also bogus.
>=20
> OTOH if we have seen a real issue, we need the backtrace and the
> conditions triggering it, and we need to backport this.
>=20
> While it may seem benign and defensive to add extra NULL checks, one of
> the dangers is the cargo culting of those checks. Static analyzers see a =
check
> somewhere, so they complain about unchecked dereferences everywhere.
> Checks start cropping up everywhere, and people lose track of when it's
> actually possible for the pointers to be NULL, and when not.

That change was brought about because I had seen a oops when hdcp_capable w=
as being called from debugfs
And I thought it would be better to fail safe other places too but I see yo=
u point how the code may end up getting
Cluttering up with useless checks=20

Regards,
Suraj Kandpal

>=20
> BR,
> Jani.
>=20
>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index ed6aa87403e2..ea8d56b25f6e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2404,7 +2404,7 @@ static int _intel_hdcp_enable(struct
> intel_atomic_state *state,
> >  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> >  	struct intel_connector *connector =3D
> >  		to_intel_connector(conn_state->connector);
> > -	struct intel_digital_port *dig_port =3D
> intel_attached_dig_port(connector);
> > +	struct intel_digital_port *dig_port;
> >  	struct intel_hdcp *hdcp =3D &connector->hdcp;
> >  	unsigned long check_link_interval =3D DRM_HDCP_CHECK_PERIOD_MS;
> >  	int ret =3D -EINVAL;
> > @@ -2418,6 +2418,8 @@ static int _intel_hdcp_enable(struct
> intel_atomic_state *state,
> >  		return -ENODEV;
> >  	}
> >
> > +	dig_port =3D intel_attached_dig_port(connector);
> > +
> >  	mutex_lock(&hdcp->mutex);
> >  	mutex_lock(&dig_port->hdcp_mutex);
> >  	drm_WARN_ON(display->drm,
>=20
> --
> Jani Nikula, Intel
