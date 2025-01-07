Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22ECCA03B8F
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 10:53:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14F410E3CF;
	Tue,  7 Jan 2025 09:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ncsqZGoN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493AF10E3CF;
 Tue,  7 Jan 2025 09:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736243623; x=1767779623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mBo0Ch+TtBewoxyaxqpbOAv6WdmuoHT9JSTs0HzUumU=;
 b=ncsqZGoNqJOPUPaACeJMLPv3x2dVjKrj7ukLlIE5hJBvk+yONAL2dNJO
 6BITzUu8+6NYtdbDtDaQXbQrQuwcqWNYC5YKB/NMBBUwYdvS+c9YALmx2
 xfSdf7QXrEn9DmDOu/wlCI6NH2tq2kKGXQ62dZ0iI3ACByXYbgSldSJ6g
 nH2p+b7bdmmNv1duZakvlAA++S5JFwsv5TKTT36N7dPd0F60BGDTUxiZa
 uG9PJgZ0vKCq1JlKP5r8L8UgBUuzXBHflaWnQ/EGWJo1A0/YMMfe/Vs+W
 oW/N2GmkZ43mpEV9G26MG7jzx1XvcQp7ZEvgy6ghGF0ONAnMvObqikiP5 g==;
X-CSE-ConnectionGUID: q5IKeSdNRrqXtIuaZLcNSw==
X-CSE-MsgGUID: 4IDZB4O0SuyzcxRQEgmFcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="53955473"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="53955473"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 01:53:27 -0800
X-CSE-ConnectionGUID: aISxlJgAS9SyGysc4BIKUg==
X-CSE-MsgGUID: mQyMcWMkRlOwZG5Evt4p8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102588547"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 01:53:28 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 01:53:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 01:53:27 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 01:53:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wvj7c/JokjnxkPEi2t0vwyzS3+XnDBSYwyYKjgAeV2qoqohPPBV3MKVzswK8buzfVXu9dnJDLx3e9fc269cJA1KQKwPoxV74EGJ7EmG7f2l8NS+agUm7ef4p91P65CKoU6I6k3HJ3ZEVApNahn1qI/IIIGGLGCPjZW6WnmJV0gTdVCZBOLVi8uFk7LnZ/qlnsN8lE3Y0rdtYvurSePnQPivMlFUu4LllwENQ1XA6XnNj8TDUTyDCHpnpfSBYrmc8s8Gi+AuA3zDonySOw8VS7h8amHNUb63qxGKcjiwcUJiEn8ztepy2wePn5RU1HlJvCmprTM3KQnZrm+BiDeAG5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Z7eHzx9ZhK8Ljp9akX7fsdTcO+kdGRl7UTFDJlQZzc=;
 b=dMnLzfbS9CsP+TfriySRy04fAJPdCc9u8IoNfxZ+QjDgei61FW1C4HKmAhfbzoKJHu1mlfc0+UA6ZltvjcgHm+Sc064e9F7nf71mhfEpvk7W7tWRQTTlfSVP63Co7kr4gTuwTJM9Q0cqK6XnIp/7eVZNolkdPz6WeIauGAoFfwxg6TiZIw6S26uOt085ApswiMm3UQYh51/9R2SpHvjENy5bRKDoduLTSmQBRl0YJrNOJ5xrN8lN3NCu1pf/7nHZa083XlZ8HmBY42NrrGkF+i+6Lnwc5yPN6r1x4cDdMXPQTTS9GQf6U5z0fmo0jLOFBMm9dPzppPGzTI6aP53FoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB8837.namprd11.prod.outlook.com (2603:10b6:806:468::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 09:52:48 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8314.013; Tue, 7 Jan 2025
 09:52:48 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [RFC PATCH] drm/xe/display: Program double buffered LUT registers
Thread-Topic: [RFC PATCH] drm/xe/display: Program double buffered LUT registers
Thread-Index: AQHbS/mmtJdCS393BEasvBOFP36Mq7MIyo2AgAJvAWA=
Date: Tue, 7 Jan 2025 09:52:48 +0000
Message-ID: <SJ1PR11MB6129719F4AA830D49A9234F6B9112@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20241211181830.3348155-1-chaitanya.kumar.borah@intel.com>
 <DM4PR11MB636009B557A7A3669D76DF80F4172@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB636009B557A7A3669D76DF80F4172@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB8837:EE_
x-ms-office365-filtering-correlation-id: ae795ee3-b0ee-4e93-6eca-08dd2f010b25
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rVVWJw7cnuoW37uQwGG5P0zndsh/p7yQbuQZPv1y0ASAcmUy/4AnOJJQh+6C?=
 =?us-ascii?Q?lM5WYyGftqFb6t6ZFMTC0CiGE7vRV71FBe8I+w3y+JpI2n2U+k13WdmhvUyq?=
 =?us-ascii?Q?UKGJeEF6TxWHwT9A9sWOFk7NsH1YelG/FIb1+Ls4bGwQa5IvHn/Gjct+mvIc?=
 =?us-ascii?Q?G03juJrvayMohKuKa0za9b5BGSvUxBEkcv51u2foU2QeiS6ObZn4Wz5wxf6q?=
 =?us-ascii?Q?pQZyiU54swEyDoerhiVuLllJcqKsS8mNrVO895iH02WA1fuyoybDsvdojyp8?=
 =?us-ascii?Q?7rd3zKt2FscEfKbqwF+IM/fLAveDnZF++agsKFI82ecfT5jDKF8/jpx212VU?=
 =?us-ascii?Q?5ge94f4wx7v+8tVciuZKtedQugLH3bYf+aNVuNvnOUB3XKyJcVbkedJqXk4Q?=
 =?us-ascii?Q?CF380dgs5vmqIKfiy2x5F2syeYbMQ1BGDu/65YfdG8d5m0i/P5fzfZM1J8AC?=
 =?us-ascii?Q?xv3PqrUD0ijATCwqgI1tdA/U/ZJHcPGQK3HtDuwMlHVhBfkF7X3PQ3DxlTIf?=
 =?us-ascii?Q?rWYrHe3OFi8UTJFczvsUEnWpR1n2MerWOH0ptB4BEA7TAe2jNiskgohh41dR?=
 =?us-ascii?Q?2xk8xaXGswiDgucnwvJDXGMW3+2caKVMdA3ajFkSHmMG8iVVBOm8sslIYON/?=
 =?us-ascii?Q?JHcJHRsiDEgTAA44aSV+J4z1KgZ3z+ujguq9kFQd9EbTAzNi8SiIMCQ7FV5x?=
 =?us-ascii?Q?pfBI3glvxc+YJj/rMGM27PJNqieo6FHkmNPmbnA3k6zFP4DRziTKDaAhjrSD?=
 =?us-ascii?Q?CeA4H0gsd0SDp0LJgYW7//dCRvQl6FXoNFZujywFN6qb2PoPeq6YVcngeQfk?=
 =?us-ascii?Q?frKdIKBBaT0Z/G/+OYAjp2sPrYVzOUyKVnXbCjhgf28P5ZHQTqNV1s4iPCwW?=
 =?us-ascii?Q?Q0xd5R/ZGKWxPI6Mje+NWbfH990dI0jVKofBUaf3JCIDcUibBPGhf1VkNO3i?=
 =?us-ascii?Q?UDS//kD5PfJmalCVW955lWROOMVU745ErdnbjeyC55cezLDJmeBchoN1UnDU?=
 =?us-ascii?Q?yJJ6twZ3sgknoUeMR91vwpLUjtIto8h5icEQfhYBN6hfVgqTWjXPDGjGpwqO?=
 =?us-ascii?Q?lk4XUnyxGRdD0Onf2QvNDDI5PPNk4MvHJxypMYg665nj1yAlXBW6XmNd4qIG?=
 =?us-ascii?Q?X7K9/f8RFv1b0eLzK6A5MF5jOOu2I0FljEcviTgf4Wi4oItfykRFlps8XjfE?=
 =?us-ascii?Q?J+z1Ys5E7JP/As2szzoDXYY0WDuVMXSambjfJPe3RdKwpW303HUU2QjKHjH3?=
 =?us-ascii?Q?CAx3+Ttcg6yv68EOrJinLkjyMmomaeXEzwXEBYn0V4SCUwWGPh9WxeVcsOD7?=
 =?us-ascii?Q?kNOJxJpaI0OcrnUc6KPx4NyeSvc35nfAL5Iz1Q9xhHIZ5NwYUxqnDQbRvOMb?=
 =?us-ascii?Q?khNvNMpPALjTZv59GTn6NqboyhO+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7jvquFCcZ76U5GJQ2R+iSKkalP9tLgPcOYNy+SXBW9Avr4OOcJTmX3S86pJo?=
 =?us-ascii?Q?3rjD5stJY4rO8OheEaerkytCofOToJufWrA1X0Bqi3o0UeSshGl+jFZKhC8O?=
 =?us-ascii?Q?hG/RtHESw57WBghzGJcAdFLf9hTdcxhXR06VUzaB1m7lfGhccuSMjKzgEMkS?=
 =?us-ascii?Q?/5R+/y/issZ/6MKKDUky3heCRs1GNnzdWwNLmS7HWCc07YnYt3Xmlb+FVhHf?=
 =?us-ascii?Q?lvSXlsm0MimznTyLXGj3zTUGfhyJGtqkFCUTB+8mBlyk7OnENUKi3+5uJBAo?=
 =?us-ascii?Q?U2AiIVSU+ECXVxOmu5pQnpFdtEWHME/EkwBo21T5wzu7TLxqY9t6jsMdJWFc?=
 =?us-ascii?Q?L0psKnCDIZO1c3rxNNro3ZGnaNB09XYY0VfFRA1t9F3XgqgpFeFEawXCYUSh?=
 =?us-ascii?Q?vs6vT/Rj3Iu2ugPDM5926DnrIgcW0TWQBmbaE2+5oHmOAKwg+6ku+xJ9c1ln?=
 =?us-ascii?Q?CczCSRXU6AKHPGGfb+oWb1KQ+uDvttWdFrZ4FF5pl02bArtbBjpHjcZ2Ibn5?=
 =?us-ascii?Q?aRw2X4vEWYEJYfv2eUy8yiEvwNYOJkk9AZii1YcnM3iz8I9/DEhlrrCGJYnJ?=
 =?us-ascii?Q?70cdvVR5clsdkfj2Apy1MpF85m0dqMv9j8dNA2HeXdVyRWtNux+iDwJ0aZHM?=
 =?us-ascii?Q?f0GJ26dmm5bJbeFDbPHZRLPIVvSfZCEAur+kh4nzFjVz2iQKHyWlDFnDgH4G?=
 =?us-ascii?Q?pG+9eK4csv5RT9cbvuxFfx2kztkKxRmsQl4YcOFA58YRIIGo8OnfF4WFd4Xv?=
 =?us-ascii?Q?O789YYEkjccNTPOoqVxHwMtfVpvj/+7JLbJ7JwsUiIBx/DpGOfTIx3N7awbs?=
 =?us-ascii?Q?VqnmA9srbiGw0Hh882EbPfmwgOqxzzlEk4f4Su+X9ovZFRtzZwXbXEHK9f/k?=
 =?us-ascii?Q?JjtioGBm61yljXzZ9S+6yMrXxFLZN2RUSgtw8YEDcn8zM4ftVrEdGjvcdQEF?=
 =?us-ascii?Q?P4OENLPZScgWFn9NUrhWHK6EsTkfSRlFnHI7FpGojyxObvnA8ViBnyp5Sqot?=
 =?us-ascii?Q?05rrrnMZl/XKtbk6RN5UCjMT9Q9AzZPfer7y1peyoI34Jz2ny8KiXhR5Ptn/?=
 =?us-ascii?Q?KgHvH6u8KebWsBnvZRhsdGHrfg+iYIcxEPNMuuKSoeQVWFi4nIZ0CeqNnuri?=
 =?us-ascii?Q?Jsvxuqu6YMpWHw9N12G3Ok36f+C5cpDrTPeU0DW8Rj1oO1zNojM98iyFcCP7?=
 =?us-ascii?Q?p/nA2XNeGylKu/l9W05wPKeVStccqZvbtw+7nCTbdXnNuLc+QTU8O7WOY4Zs?=
 =?us-ascii?Q?Z955EKSjekJnbo2q1sbD0wUKgunauJiT38oR54t1o17vLXyVAnRGBxvsGpEX?=
 =?us-ascii?Q?iMVh479No4RPcbHZcuYIggnuFnaf9QveCsE/SspGnP6vIf9PzyZjpTSPvWbu?=
 =?us-ascii?Q?bemjRq05Fo/8M04rdEq/y6mHlYb1kpk4fbL8PU6sfnJs3jdmp5JfcKphAAAa?=
 =?us-ascii?Q?4MjUeH/MNcoDL5eIDcHXu4P2bJlz1nVcWjp1VEeuwq2PMqT13cjw1G6M29QO?=
 =?us-ascii?Q?SZsB+H2ZbwG2PUHf9pcI1WC3R0HYXi4UlVh0ioqGjVSJoYe5XbMm74cysqp2?=
 =?us-ascii?Q?UH72xXDwS/6Aq0nNavAtRDy5MnkKgRxJH2E6kFX7amRHUD6Czl2kDeYRtoP7?=
 =?us-ascii?Q?/A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae795ee3-b0ee-4e93-6eca-08dd2f010b25
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2025 09:52:48.4502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FZ9+XIgVm18Mdzm3h6VOHHbk65qA8Vw17UkKzZQr4RD/iC5ZgiJt4e3sVVfJqWeXm/HQTH3btwdgXd2VoGx/sdU4yHyrPve4mJ9vemvEgtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8837
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
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Monday, January 6, 2025 2:05 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com
> Subject: RE: [RFC PATCH] drm/xe/display: Program double buffered LUT
> registers
>=20
>=20
>=20
> > -----Original Message-----
> > From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Sent: Wednesday, December 11, 2024 11:49 PM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Shankar, Uma <uma.shankar@intel.com>;
> > ville.syrjala@linux.intel.com; Borah, Chaitanya Kumar
> > <chaitanya.kumar.borah@intel.com>
> > Subject: [RFC PATCH] drm/xe/display: Program double buffered LUT
> > registers
> >
> > From PTL, LUT registers are made double buffered. This helps us to
> > program them in the active region without any concern of tearing.
> > This particulary helps in case of displays with high refresh rates
> > where vblank periods are shorter.
> >
> > This patch tries to incorporates LUT programming to the noarm commit
> > path for PTL without making significant changes to the color callback
> framework itself.
> > DSB0 is still used to program to non LUT color registers (for ex.
> > CTM). However, it does not chain DSB1 to program the LUT registers.
> > Instead, it is programmed through intel_pre_update_crtc path.
> >
> > LUT programming is also disabled in the vblank worker.
>=20
> Approach Looks Good to me. But we can still use DSB to program the same i=
n
> active or Is there any limitation ?
>=20

Thank you for the review, Uma. The patch [1] indicates that there are issue=
s with loading LUTs using DSB outside the vblank region.
That is the reason this patch avoids using DSB while programming LUTs in th=
e active region and uses the MMIO route. Perhaps Ville can shed  more light=
 on it.

[1] https://cgit.freedesktop.org/drm-tip/commit/?id=3D5ae0da3fc78d3fdef278a=
22e874d6d5c305d1e03

Regards

Chaitanya

> Regards,
> Uma Shankar
>=20
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c   | 28 +++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_crtc.c    |  4 ++-
> >  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> >  3 files changed, 31 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index 7cd902bbd244..513b2718bf5a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1911,6 +1911,16 @@ static void chv_load_luts(const struct
> > intel_crtc_state
> > *crtc_state)
> >  			  crtc_state->cgm_mode);
> >  }
> >
> > +static void ptl_color_commit_noarm(struct intel_dsb *dsb,
> > +				   const struct intel_crtc_state *crtc_state) {
> > +	icl_load_csc_matrix(dsb, crtc_state);
> > +	if (crtc_state->preload_luts || intel_crtc_needs_modeset(crtc_state)
> > +||
> > dsb)
> > +		return;
> > +
> > +	icl_load_luts(crtc_state);
> > +}
> > +
> >  void intel_color_load_luts(const struct intel_crtc_state *crtc_state) =
 {
> >  	struct intel_display *display =3D to_intel_display(crtc_state); @@
> > -1980,6
> > +1990,9 @@ void intel_color_prepare_commit(struct intel_atomic_state
> > +*state,
> >  	if (!crtc_state->pre_csc_lut && !crtc_state->post_csc_lut)
> >  		return;
> >
> > +	if (DISPLAY_VER(display) >=3D 30)
> > +		return;
> > +
> >  	crtc_state->dsb_color_vblank =3D intel_dsb_prepare(state, crtc,
> > INTEL_DSB_1, 1024);
> >  	if (!crtc_state->dsb_color_vblank)
> >  		return;
> > @@ -3842,6 +3855,17 @@ static const struct intel_color_funcs
> > i9xx_color_funcs =3D {
> >  	.get_config =3D i9xx_get_config,
> >  };
> >
> > +static const struct intel_color_funcs ptl_color_funcs =3D {
> > +	.color_check =3D icl_color_check,
> > +	.color_commit_noarm =3D ptl_color_commit_noarm,
> > +	.color_commit_arm =3D icl_color_commit_arm,
> > +	.load_luts =3D icl_load_luts,
> > +	.read_luts =3D icl_read_luts,
> > +	.lut_equal =3D icl_lut_equal,
> > +	.read_csc =3D icl_read_csc,
> > +	.get_config =3D skl_get_config,
> > +};
> > +
> >  static const struct intel_color_funcs tgl_color_funcs =3D {
> >  	.color_check =3D icl_color_check,
> >  	.color_commit_noarm =3D icl_color_commit_noarm, @@ -3989,7
> +4013,9 @@
> > void intel_color_init_hooks(struct intel_display *display)
> >  		else
> >  			display->funcs.color =3D &i9xx_color_funcs;
> >  	} else {
> > -		if (DISPLAY_VER(display) >=3D 12)
> > +		if (DISPLAY_VER(display) >=3D 30)
> > +			display->funcs.color =3D &ptl_color_funcs;
> > +		else if (DISPLAY_VER(display) >=3D 12)
> >  			display->funcs.color =3D &tgl_color_funcs;
> >  		else if (DISPLAY_VER(display) =3D=3D 11)
> >  			display->funcs.color =3D &icl_color_funcs; diff --git
> > a/drivers/gpu/drm/i915/display/intel_crtc.c
> > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > index a2c528d707f4..cb02af401085 100644
> > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > @@ -429,10 +429,12 @@ static void intel_crtc_vblank_work(struct
> > kthread_work *base)
> >  	struct intel_crtc_state *crtc_state =3D
> >  		container_of(work, typeof(*crtc_state), vblank_work);
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > +	struct intel_display *display =3D to_intel_display(crtc_state);
> >
> >  	trace_intel_crtc_vblank_work_start(crtc);
> >
> > -	intel_color_load_luts(crtc_state);
> > +	if (DISPLAY_VER(display) < 30)
> > +		intel_color_load_luts(crtc_state);
> >
> >  	if (crtc_state->uapi.event) {
> >  		spin_lock_irq(&crtc->base.dev->event_lock);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 35c8904ecf44..a0bcffe470e5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7203,7 +7203,7 @@ static void intel_pre_update_crtc(struct
> > intel_atomic_state *state,
> >
> >  	if (!modeset &&
> >  	    intel_crtc_needs_color_update(new_crtc_state) &&
> > -	    !new_crtc_state->use_dsb)
> > +	    (!new_crtc_state->use_dsb || !new_crtc_state->dsb_color_vblank))
> >  		intel_color_commit_noarm(NULL, new_crtc_state);
> >
> >  	if (!new_crtc_state->use_dsb)
> > --
> > 2.25.1

