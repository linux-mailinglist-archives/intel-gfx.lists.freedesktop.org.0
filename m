Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A67F9BBCF8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:13:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C68310E4AA;
	Mon,  4 Nov 2024 18:13:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8Kh2xOy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7774310E4AA;
 Mon,  4 Nov 2024 18:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730744032; x=1762280032;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PIIc5F05MyRvLBZPn1dlsSgv29AmCvTvbgXdSY4ivwo=;
 b=V8Kh2xOytyd6GgEXwxcTQMWan+DetYUWV3W0Z99kD56v6xoHhEBXqd/0
 AiFndMRK+NP+iLNynHu+dQGHvY8e4AR7XZiVC50dxLr833/T6N65FEfzF
 xYR5UpMLnjM9kWgb5AgLBjieoTAcectlMvSSNE68al2rsLgZzNKT+eLiu
 Pt9rnFv86X+zgvCdZGhRBsJBGIzaXbdY/zPioNNgOZgaiFUAJO1gbC3oD
 /yZO4LQb9LScAbnM73h7x4XBzmaKof4k997l1cm3WyueHQ+i5lrehaypX
 mGHSnsomLj612WwV9z2YgkBa0vPN8/BF9p/KpjnCd8BrzYuD60snwypBz A==;
X-CSE-ConnectionGUID: mCTPO7x4QuGfn4VgtZlUiA==
X-CSE-MsgGUID: h/hX4NCGSAaQjZCcBud5pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41847099"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="41847099"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:13:51 -0800
X-CSE-ConnectionGUID: s/kE7bTuRG2j/sQzymiNVQ==
X-CSE-MsgGUID: l1E8Wa4FTnyRgZJje0QkBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="114535608"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 10:13:50 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 10:13:50 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 10:13:50 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 10:13:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t2uzmTZTKWdBXTPrYfX4idnKtUJljHSEvH/CPTpJrB+7QJFSmjhsAT0CBMCuMvpicpaGzJxpKjhDnG00bMtqKCIvwZjDmQvplFunlJcWq2FtePi0tKU1/1uXfo6nGucuVHtYAwqGGlkZ+XQAjmFYMa3DUNoqzbbxM3+mi4NsIwsly2mJ7sdutK+zvAHeYv+y1PHm21xRYBtqGTZ0J2fnVON0aeOvS+VLwvhMaoQG45gr23HUxeokCc9loZXgRM4/S7YVdvVU0qUCePwP4+31Pd7rzzRaIK41LpDKss6P+DAw3Uc/L/i0M1DTNq5dZNUeKA50zc1znhWV6CPUht+haQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0EZr3jXOgNLmMGeo8NZHdIkVRmkJ3583MgkJXbTvn0k=;
 b=IsMaMbgsw+TK6wghl782mekkg0qRb6bDwAU9S7SGnTXsmc5EybQNDHFAlgMeRQsTHW1VVfE4sZJvFlX3u1mY45V1XEfYEfV6A6ppCMDbqtxzAiF+G0gB0Yo0S0SISFZpNgqXY1lrrc6f2KSW4w8Smh0XfcYkYgwQET32AD0yHASF6m+DPgunFug54evyk+4tTHfIBhAKX8tQL5v6+TR/ui7gtrSYk5qVULC8Op9uRJyxsjpccbeP8qnqO5ymtgqgpbAsP9ZnyrHLwhLrOC1eLWQJQIj1i0Pp6HbUh2sI3AAlMPkp4EcYb//hFxMyqUKZLqAvrDh2JZUGHU8jnHDKJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SA1PR11MB6896.namprd11.prod.outlook.com (2603:10b6:806:2bd::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 18:13:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 18:13:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Index: AQHbLpQOJRk/svtockiq4lviLwW3trKnaBSAgAACyYCAAAGrcA==
Date: Mon, 4 Nov 2024 18:13:46 +0000
Message-ID: <SN7PR11MB675075442C0A012AF41B1F65E3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
 <20241104175439.GB5725@mdroper-desk1.amr.corp.intel.com>
 <20241104180437.GJ4891@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241104180437.GJ4891@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SA1PR11MB6896:EE_
x-ms-office365-filtering-correlation-id: 6b6251f8-36d3-48d0-438e-08dcfcfc6c72
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?nxroCBD1yOm8k2/aUr+KSbnPGCAQiTYGsli119+A8042Bfr5bti2MeR0D7kx?=
 =?us-ascii?Q?ojnlI4sXCw7TPWSoW5VFHvhYl4COOSKK9qVwcxWPVD6FzZmBmgLxa2eYYHaH?=
 =?us-ascii?Q?Lj/CptdMw/nyQZQxdhNVypDb94FXn8piWT0go/bzbefVGVTNMtJ28IKBBoMd?=
 =?us-ascii?Q?UXJCCBTyP1bVWpnwDU/+trgu+tLT8kJ9m15eq76pRzs6Yx7gcosel+O0nynf?=
 =?us-ascii?Q?y2NFmVpx1X718FffEMzUo8eKNreoOO9Rez7aui2cM/ni9KTVajaqlfOIW4Uc?=
 =?us-ascii?Q?CEot/qDauml5iHS8pdR8oIiywThFVO0x9hnPx111s49ZhzS4lq/uP86YDM8p?=
 =?us-ascii?Q?4V2zwy3ZTtxvzUTEGHJK5wsEznYyCyiCgw4cpGlzsb/JtpLrto4J9jUk504M?=
 =?us-ascii?Q?JqMNjlAJHP0BaUfBLVTr2opGEnTIfFMhSxYmNAmR6zBO8gHuLvF1B/rJL+8O?=
 =?us-ascii?Q?oQSIxIG1KSsZ7npW39rwZxvV0l2vcug3e3A2GIUNBybQvyv52zCNrXn3cEY4?=
 =?us-ascii?Q?4OozGTpvHP6rw/UHIKRLFad1Bke8hcs9rKfClGsoxd5a5b+VkoxjzMjt+G5L?=
 =?us-ascii?Q?C/d6kwDvZQ7pLaEzUZhcMARkHHzyw5Xgl+0WRsVlKYzDvbe3w7w2T/JL5NK9?=
 =?us-ascii?Q?cLjS9irNNJb8Wk+GvYV/mut2IyE0ACzNXy6AZ6cEYxmvOWaT15Uho3EV1T/f?=
 =?us-ascii?Q?bhb9fAMXfD6PXD2aAJtLsMxeiORHFUzloSUqBSp4I95ZCi8llaH7VntCMM09?=
 =?us-ascii?Q?+Wvw3skSavI87la5oWKs8oSoZxLy3VJFqS7L1eJkF+vu+MQZwlru3yof5K6S?=
 =?us-ascii?Q?AAWebIyKytYHP8723QXOE8ot7ZooRsHwSYXyM6IchlLqS1F6caLg0/uViQTH?=
 =?us-ascii?Q?Q+8UaPQbmlofXZEdLC+86P2pHCBOj0gxbCM6p5XiGf1tZwFMHLhl6lW62L1t?=
 =?us-ascii?Q?8cRup+Mm3hfabVvG5tf7h3QWhenVb0zXSQ0zzwniR+K0DB+1yxNFxC4YUwx8?=
 =?us-ascii?Q?ED1tFL7ss2eGyt1RmhkOsQwrkKr55/tKwMxXWMpNs9nW0yhcKtGUfxy+jGDf?=
 =?us-ascii?Q?dW4MhpdJhkeZmiPCEewI6gatp5FmkQL+yzvUszTEaUoeBqGlgyyz5a2YwdXL?=
 =?us-ascii?Q?uI4HyQiI0TaGYBH80WucbKE/LQ9K9h3j3jLQ7xNQYqvUM++pTZQWGMsEtyY0?=
 =?us-ascii?Q?2FstgTnvx+lA4IwPeiy3o/A1t144MuuxpQssW/HQU0kjyMfPhuDGNmbOVzQS?=
 =?us-ascii?Q?u/K8spbRDDT0OuGPMFP3bHRy5KbaPYNgDSKZvuYvwv8hX1jUvZwfyJz6OoT1?=
 =?us-ascii?Q?fGyQaXwknBHFjcS0kVmCWbNysBnyLfULNV9a0lUBifoKE9W8l5zWXDEnMnKz?=
 =?us-ascii?Q?nHiMTBc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?G55IwRziLhrhp9WSRMvh5XIE9Eo0+luc1BhcTqr+SiCYJWjGYyKP5z+ri3T8?=
 =?us-ascii?Q?4A+vDLFln8ILMKZfd7mLbcmlUQ3CscyUCCeMzSF3XG/O8ES6AWAVvGOKNs6a?=
 =?us-ascii?Q?Vh3YSypkQLNUCA1IbeT375aKW1ohRQIHRbp0/JwKXCLlvMU5WODgaxs4RZDu?=
 =?us-ascii?Q?Vctgx8nSTvKjTCKioGu8np0lcyCZlDJwhxH91Ngb+vonYFSaNxteetA8ojcV?=
 =?us-ascii?Q?Bcd2/vYI8TL6TF67LxTUuVh9W4ZtLIU9Tl4PvwiJmwnVpcDcltSoSqkEyy4u?=
 =?us-ascii?Q?S8SRiaEvah1Leam13kNN+Kca83t6d25HoE80f+HRwKa81TcElc1qQhA+JXoo?=
 =?us-ascii?Q?scW5o17nQ0nVwkUoa9Uj8uAaRREH2LDa0v5WpjjBqkbAbXjH+XzQen+3ugB4?=
 =?us-ascii?Q?l2z/3Ntiulr/pfq0FXR0IKP6JqHoOj+vlnFMMOBeOGvgPGzNWQigu519gbb4?=
 =?us-ascii?Q?OKy1PXNPyUM/77+w+KJk7egLvew7auNdkBV1/65lAIjg4NNvRiUtmoLIcSu6?=
 =?us-ascii?Q?BTRkLluXbbOCvfyCjVFPHvVRktf4Hsjq7jRYowfhJPA+g/8ljfcnKTADcuI5?=
 =?us-ascii?Q?HQ9decqeUpwSFk2fMSqPjzb13IrznAIZUijXIiaMiQdwQsDy+dUNsykyM8Js?=
 =?us-ascii?Q?LIR05M27lXYhpLAzE+auFbtkSy0f6EnOFUBEI4Q/Fr9malDI+aA/PPNNMMM0?=
 =?us-ascii?Q?AHWmnNjfHjb3kgukW7lb/igW/oj5BCRzSChad9fwybF/IdC19n/pHKibYo4K?=
 =?us-ascii?Q?0xnK0//5/cUL4y6oEZLY7BYMBKnCmdVUCtgln2ZBIXHaMoiAqTRfdShuJOoF?=
 =?us-ascii?Q?HQb+14v7jFCVbqsu7OSUxYOZ0iL5H5OLwRhzf11HzuQtykO+/nn2Y9WcsLj4?=
 =?us-ascii?Q?Fa9Yoc8dnAofxHCS/8gbx1qOfvqJbwkx8ODKHWKU/qezt0AG0DXT1xu/J2qH?=
 =?us-ascii?Q?KOiDGXjCr1+GhffgFHOhLFDpF09YiKvlaPbGHJ/0hfHM2jToezh2VPaVphsk?=
 =?us-ascii?Q?muUcDHCCNsUa5ZGGicIEcwOdOJr9BbwzaPzkbXlVct52oc2x5T7Vy7nPj748?=
 =?us-ascii?Q?fhoRN3Mr2/J775QW22VU27ssLDTcX9Wd7ruUg707XLritYMIWHVK/IH9QPhg?=
 =?us-ascii?Q?Q8yll9NA0pygbhPjTD1MkzHgTHpBRHqUMOhqF5uugKECERwqi8ErnS4kz6AY?=
 =?us-ascii?Q?CM8kV+OwPsDvpFEVSSuGM5WmB281wR1Ct13ujD1Ojxa/nEnqNP5L4Z0QXhhq?=
 =?us-ascii?Q?NtCwMoPVQHscB3ClHSt+1j2rd5Trwva+Kb07EH4qQ+8eThxdsnBIJgkLYnEo?=
 =?us-ascii?Q?bFuq/+8hIjBmZ2VDTmAiavS++Qi78ljZg+8b/s4ESoOhgeGrjVsPniAhKlTG?=
 =?us-ascii?Q?Ow5AR5NlKO50GU1cHkE6hXn8gj1rVgyVInIZ0x0R3h9WeVd+LxolRnnXrQiG?=
 =?us-ascii?Q?cWdwHBEMfDaOUhOmZT7r5SgMpn89OLKhOcaQ/NblY67x1TtqqWXG8zDDhqoK?=
 =?us-ascii?Q?GtZKYO0/h5slGYKk5dK3Lis0pA7vsE3xm221i+g/68hoi0GnQ0mEDHYZl0sp?=
 =?us-ascii?Q?xN7xIigU9Dj9/qIHD7eC5HC1ntHPZFJbEc91bPGM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6251f8-36d3-48d0-438e-08dcfcfc6c72
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 18:13:46.0982 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gTsrYBGwKLdImBjHXfH2cndTLjNB/5WJ2k+qA5c/txjI4m8dfVJ0hLrDAg3TjElCs4u6QBWFscqefnAPgCxaQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6896
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Monday, November 4, 2024 11:35 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for =
Xe3
>=20
> On Mon, Nov 04, 2024 at 09:54:39AM -0800, Matt Roper wrote:
> > On Mon, Nov 04, 2024 at 02:01:42PM +0530, Suraj Kandpal wrote:
> > > We need to disable HDCP Line Rekeying for Xe3 when we are using an
> > > HDMI encoder. Also remove the Wa comment tag as this follows the
> > > bspec and does not implement the wa.
> > >
> > > v2: add additional definition instead of function, commit message
> > > typo fix and update.
> > > v3: restore lost conditional from v2.
> > > v4: subject line and subject message updated, fix the if ladder
> > > order, fix the bit definition order.
> > > v5: Add the bspec link and remove the Wa comment tag
> > > v6: Rebase over new changes
> > >
> > > Bspec: 69964
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > I think the code changes are fine now (although you seem to have
> > dropped the general ladder re-order that was done in v4; was that
> > intentional or a mistake?), but the subject/commit message seem
> > misleading since the change this patch is making isn't changing
> > if/when rekeying is disabled, all it's doing is changing the bit used.
> > So a commit message more along the lines of
> >
> >         drm/i915/xe3lpd: Update HDCP rekying bit
> >
> >         The TRANS_DDI_FUNC_CTL bit used to enable/disable HDCP rekeying
> >         has moved from bit 12 (Xe2) to bit 15 (Xe3); update the RMW
> >         toggle accordingly.
> >
> >         Also drop the misleading workaround comment tag on this functio=
n
> >         since disabling of HDCP rekeying is something that happens on
> >         all platforms, not just those impacted by that workaround.
> >
> > If you decide to reinstate the ladder re-order that you had on an
> > earlier version of this patch, you could add another sentence like
> >
> >         While we're here, also re-order the if/else ladder to use
> >         standard "newest platform first" order.
> >
> > Anyway, with some kind of commit message cleanup,
> >
> >         Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> >
> >
> > Matt
> >
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++--
> > >  drivers/gpu/drm/i915/i915_reg.h           | 1 +
> > >  2 files changed, 6 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > index f6d42ec6949e..8bca532d1176 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > > @@ -31,7 +31,6 @@
> > >  #define KEY_LOAD_TRIES	5
> > >  #define HDCP2_LC_RETRY_CNT			3
> > >
> > > -/* WA: 16022217614 */
> > >  static void
> > >  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> > >  				      struct intel_hdcp *hdcp)
> > > @@ -43,7 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> > >  		return;
> > >
> > >  	if (DISPLAY_VER(display) >=3D 14) {
>=20
> Actually one other thing...do we even need this outer 'if?'  All of the n=
ested
> conditions work on specific versions that are >=3D 14 already, so it does=
n't
> appear that this has any effect.
>=20

Added that in to avoid the code for display_ver < 14 from going through the=
 extra unnecessary
If and else if block which it will end up failing anyways also the ladder m=
ay grow if the bit gets changed
again for the future platforms.

Regards,
Suraj Kandpal
>=20
> Matt
>=20
> > > -		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> > > +		if (DISPLAY_VER(display) >=3D 30)
> > > +			intel_de_rmw(display,
> > > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > > +				     0,
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > > +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> > > +STEP_FOREVER))
> > >  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> > >  				     0, HDCP_LINE_REKEY_DISABLE);
> > >  		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> > > STEP_FOREVER) || diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index 22be4a731d27..c160e087972a
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -3819,6 +3819,7 @@ enum skl_power_gate {
> > >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> > >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> > >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> > >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> > >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> > >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > > --
> > > 2.34.1
> > >
> >
> > --
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
