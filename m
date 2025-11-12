Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 617D2C52585
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 13:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20C310E725;
	Wed, 12 Nov 2025 12:58:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H50VR+xj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D36210E71B;
 Wed, 12 Nov 2025 12:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762952316; x=1794488316;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=klj9GI7ptVlg/Tum8Vq+yN+6uJL80tQj7hN7OoVMlr0=;
 b=H50VR+xjTMjKWas5cFcVCCe/aE2WTfpPueh0AtVCWm3CTC1KA8YE2Zwt
 QWJrpPIbtG0XSv1SQ6pORbm3HsoaTJYp0y6DptMm6OxTY2d3oN0mBOhwO
 QYOIo1+OTC4fAkVBti6Y69+zrSpqfoyYT5deO1LMuORIobF8EEKvknWjY
 OW0CQGN+lf11U04J8/3QARmzbDQmZX8QAgqyhnCEi1Z42X4ZmBlEUxcpS
 sRtQtcDh+x5Dd7xOJWCBQRGCXA9EZ8L+7xySTqGqtPaqmUGaK1dLR1Zvs
 UtvGMKSU1fF3HT3Dm+AnPzFP9ERC+4Y6hGvKRm4k3BN4NMihQN3QbRxhP A==;
X-CSE-ConnectionGUID: bb8o6/ciQ96jYDq1jwLJbw==
X-CSE-MsgGUID: ZZou8is5QDGdmOVDvgtpRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64950295"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64950295"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 04:58:35 -0800
X-CSE-ConnectionGUID: IkHlKnX1QN2N3Ktjx0moag==
X-CSE-MsgGUID: GAa4dwOmRP6TcX7PWd/USA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="219878403"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 04:58:32 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 04:58:31 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 04:58:31 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 04:58:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZH0hE4NHGKDr5mrbge9fyM00iF3KBooMRu6YvR9sUkrAVUY/ljkx4m0C7zdbqZezifHAZVB3fwbTnihTxjknoFMzJGkSaGuKiXZ/5VUvaVfuRT1rIMIOXwqfgEAEfjVxuEEBSQ5PEI3g869iNOJaT28JfFzrm+NWRwU8gsMKuamVWr1sqJqBE7+ijJOQ1xh9GnnB52tpS8ktV7jFKIarDouR3KcZ3M4xIea2Lm6pJvEiYM5NJxo9PQovNlAD270qDlM8VUVIdqwegLBTU4oTs/Lg4tf7ysec4YWRoshpBiyESg5OhWW+QUQC3v2luIDZr+lZyIYrrfJsdOHHcc4T7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a74+fKqAu9amoeubPResozaASt8T404BcArMwydSUCo=;
 b=PA2MgyQeNK9Ni5TkNRsI2VKfnkC1b9jNlkXJbTBI0gVhaDvMpSeQc9gMSbcPn089djnOKphpon9XkXwMd1vsHJbUNv3vCo3GjehEOb9C86WUNbVFNSI4cXfJQRiFZz3sbWLf4FDBP9ydQrAd3Oq2ra/xkEKyiOQdTVQz6AY9FNR+FRJxbcRQ/Ssw2+TYVs/4M2/hUs3kPgTSlIGLZtaUsfk3wjt1eMvUrl3KYr1iVOOmyNZWKat4frBT7UoVh/+ZZi8W1vlUwYBiqEQ2ZaiTN3n6IMz8UWGSPDX24CnGo/xmtMkPGNoFDaNPZnp3nE2svb3Smq6zCFhdqEnPUdhzVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6341.namprd11.prod.outlook.com (2603:10b6:930:3e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Wed, 12 Nov
 2025 12:58:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 12:58:29 +0000
Date: Wed, 12 Nov 2025 14:58:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Message-ID: <aRSEbyFJsrIxJzro@ideak-desk>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-5-mika.kahola@intel.com>
 <IA3PR11MB8937ECCB2E66ADCDDCCA33CDE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
 <aRMJxK95P-811Its@ideak-desk>
 <DM3PPF208195D8D2ED4D7B5A2AC5C6283BCE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DM3PPF208195D8D2ED4D7B5A2AC5C6283BCE3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO4P123CA0207.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a5::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6341:EE_
X-MS-Office365-Filtering-Correlation-Id: a7517c27-f7ca-4b3c-291a-08de21eb2d02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dwNFJU6sn5mJ9SS61RQpcEsjxlwz0v4d1lZ8iR7rAUJDdqm0LPf1qjrxPvah?=
 =?us-ascii?Q?5OOqvr5lGhmddDiWGfmM08156+BCkrezhlJf6vw8OpFCrsMGMxnAt0v6v+SX?=
 =?us-ascii?Q?R33uG5HwNydgkAeWbaMiAOOxdn9pH/RM0tCg4ogHD2IvNEPsiEtaP8fbQlcA?=
 =?us-ascii?Q?ZEYBlkfliTnx5TOt08SFzjGGFmLXNMzjcwrTXqa2RlgSa28VC1wOD9BJRcmh?=
 =?us-ascii?Q?4Xskt7slW1KJkQGvV4cJMcrSe+p4Ik8CSJCnLf5KrH3fofYCKOu48hlSIane?=
 =?us-ascii?Q?I9rbSGS+1D8Yzt2PJCR9w64aFCC2+jae3leFRec6DJYLx1hJ8yVQJjPi04wR?=
 =?us-ascii?Q?uU7+v35DkfS58MQzBxyvWpk+jmHxmD4iJ4t4hYmoqUYL12Nl7OAp4xMMIV2u?=
 =?us-ascii?Q?piq+nAd/+4Qb/VLOeJPEWWFcCVHsFd064Hd0P652AwdN8Fwks0rsgZXHEI56?=
 =?us-ascii?Q?EwiNCKRSsYheMmsa0jbCGY270CjBcYxhZx7WI317YCVC0WdWipFGr6lV6Xfh?=
 =?us-ascii?Q?eUpvFmtM+WT4GpLy7b0dGLe72Hnf+lz7y4fq/QoyZDNS2mUmlH4ITLwoRpMH?=
 =?us-ascii?Q?MB4PqVKh3jYYH+wQFjAOH0qWmj/MYs070R3/CkcowPHzAXy1qeQgX8P8PyUc?=
 =?us-ascii?Q?9fmzdzz4jHbo3MPwEuvPZ3SBeFFCx8zab3lCmxyXnb7YYT0EoPYTyW5+Jj6E?=
 =?us-ascii?Q?usqYavEmqQabknPOCd97tqIgKtzOXwT/GbY4NXUgO4qAB58+NUUIF2rc6QrC?=
 =?us-ascii?Q?SpLxo0wAEwNmuEqxwTLl7f/vPOvY/IzsjntwVFhPuhwvRH3fVtPBVRpnLwCJ?=
 =?us-ascii?Q?YVNW3ulCKU08Gw1m4KeEtBvwe2D3DBHpsaDjTBL9WBTwl5wy4+z0+ZtIZXf1?=
 =?us-ascii?Q?K366ox1eE3D2l8JshHE7fLfnMVN4QhyNPGwH4XXL2N4YflFqOeHY57zbuMbB?=
 =?us-ascii?Q?84oVJN+h9BL7BT1PO8s+MsmthPAFVfTp275Dyvke18LTrosQM9pVBbILVhuC?=
 =?us-ascii?Q?wyVs0NDe487VhdrSKBEHIBaq8tcAHQdPaRnAFRe2mrdXJyxOPPOpziOPUwkX?=
 =?us-ascii?Q?9hjVjonvnivjg7M0BlR5J13ZHZcrDzzTynJb09KHOH8JDN7SJ+DVDvulLod+?=
 =?us-ascii?Q?gi50Mx2cnJANjlx2m5rm0s1KpPouRdCNma+qi0t7NGcMiFwAmQY0ODgbr0wK?=
 =?us-ascii?Q?B0qDsw9pWKA/78AU2P76IaszIsX8SjmurJd7O3yv5Qfoe0Ucv646YShZMb79?=
 =?us-ascii?Q?y6A0dfqry16wsHML87/Ut6wV1v0y802iK5PSgVV8bOdUnwGvKzwkKTuFuCq0?=
 =?us-ascii?Q?Xw6RuZPvWxlMRw9TyoG/fiOxcUt5GDy1kHwuh8BHHavm1PGCOZSDHgEAzzOe?=
 =?us-ascii?Q?IcnaJuwE4JiBgu8hwKpPvlRCEq8FyFqMFZw/kQ16iV6vwJJ21cx8WSSfFUWP?=
 =?us-ascii?Q?npAhZvyatUTCTjz0suYX7RI6xw61CE8g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cP54Jv4biOdm0vCLi+lyu5m9bIBFdTTafAxpEGY3FRQrYJ2pHNnFMCJOzTek?=
 =?us-ascii?Q?JLty/8vAK/cIn1oEK0UHE7M4anIJes3TRt6Gz6Lrr1vsn4OIJg75IpF5hu7q?=
 =?us-ascii?Q?VY3d0+cchIWin7UmVwiORNvcMXg/h+d05OGGHwkUeYPUTgLdPOETVwPBkltp?=
 =?us-ascii?Q?/rm8FVJVOdgyJdbmA7Siywbu5+csetQQYkNA2lodAEI8OpTrWZzq0Vi38Pz/?=
 =?us-ascii?Q?+c96xnXQZGRpCpyjmXz5cJymnI/8Z0sXX7MF1peporhratMCknOCpaabG4aM?=
 =?us-ascii?Q?XIWUXwPigmVWFx1B1J91CX+EhCxqQJOWvtwivA9N8qo2xUqcz7P5yhCnw4zj?=
 =?us-ascii?Q?zaznfgJTnx/RQQvu3p0LG1Sq+AhbNnRoXWSGyYdfG83ttkRW4kB3BRI6wXAX?=
 =?us-ascii?Q?rcf6peU6Wx5RLem/Uc/iELleQkzk7OTqny+OjRFgeNPerkMVtswJ2akJ9tfa?=
 =?us-ascii?Q?hkQWQ/L51YtF62vx2K1tc/r47/2Up22ndvFUnOvaAV+wHN7v9phlGiK14HHd?=
 =?us-ascii?Q?QeMrSJlLn3yANHFUT6qp8ktrIsrRaQ7DtMzj8XaLON1mFVoXm9F/zK9NCS5m?=
 =?us-ascii?Q?DNoSa7uWOlM10kFD/I0LzgP12gVDmGshHW4TEpne28ei1kJTLFnr1HhUgitI?=
 =?us-ascii?Q?lSB/2H8lYHbq7kjJ5VFYBfKId46g/jAYxdonTJHzTlz8lXOkR91P3k8k4Hdk?=
 =?us-ascii?Q?r2baYk4cW85Xa41e7OHujYR4MvJ/8SEtvm3aP+CD0FItzbh6HpYeGsG5d4so?=
 =?us-ascii?Q?C68ILxp1Sg4GvnciJqzbhXBtLt65ZPyL5Tq9m0OW+dmEO84nKHZ+4ciU7ssd?=
 =?us-ascii?Q?BN5hCu36sVZBpCowxwI2UfSiuKixxjHTYwiEJwMtcI5VmXIlE2ShHPWPJSGe?=
 =?us-ascii?Q?MWslxHLP1/z0trI37pobT0FpIY9OJ+d+NPlz8Cl8z39K0oilVJD9DTVCc9FC?=
 =?us-ascii?Q?VWzEIlj6uXuHoWmSQl1jgLCOnn2ax9XCFLe5wSxedCf5dDSMxpeBe/G2NC+L?=
 =?us-ascii?Q?xU4QWaiIvmXcJ5cuHY6c/mmAxJYxzvRMrPYjLfThX/doUcMprOJIwl40FICQ?=
 =?us-ascii?Q?/pn1b+tev2hYcqMs1v7SMRhLyPX72pKnOKXUHa7XbULDauQc75qo/VJiW+6V?=
 =?us-ascii?Q?X28NCaBwlWtF3qmaIN4+htEnd5JYUpFZJgd6+xZfmrphDQieZRRBArNmxCk+?=
 =?us-ascii?Q?OVZUtKwbjGOiPoKsQACPEaokwpIHBcvNF7OCKzhm8dd30LmWJjvtB7/nA8Gp?=
 =?us-ascii?Q?4GMEZCbu9Aoo+qYEF1fJTbDAwUDCQZCzHdOMS5Mh4mebCFC6GoRCKeDyqsdp?=
 =?us-ascii?Q?PhCoqnJo8cWtGJSU3cW+Z1VON2TabCqggqeedONZkw0auynsPpIPh8bv2AO4?=
 =?us-ascii?Q?6N/RTrzu1PC0WNdQ7rh854xshjxu+qUs/ui/SHvPYzG9pHlvajvCcnyYAvX2?=
 =?us-ascii?Q?10bO3tmL8Y14c0yBlcPFgIk9oR/cktT3yTMXG/HNR39JCDYdrOiNTxNvcucI?=
 =?us-ascii?Q?realeOVDgBg3SUTEOzGKOR+JTXrU44Tat7Jbk/RgVPNHS2dMsqGlGBv5sLOu?=
 =?us-ascii?Q?ujWwYf+0Th1YHzutVUZgVlRKTBLPrY3WrYPUFHrs/YSxruY3uUA9h+msaVmF?=
 =?us-ascii?Q?YvqRPL33ERfd4H6xSjNcOrpAnGMD9u7VpC6S3zJGgORJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7517c27-f7ca-4b3c-291a-08de21eb2d02
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 12:58:29.0758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6tlGpkP1uZiDhKS3E8T9H8U87MsWNAeuO9Sn8xBJjYiCb7mlDzD1tL3D2RQAY//eXLxgVWDJ1YfH8XR4FyNnVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6341
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 12, 2025 at 06:10:36AM +0200, Suraj Kandpal wrote:
> > Subject: Re: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state from tables
> > 
> > On Tue, Nov 11, 2025 at 07:36:47AM +0200, Suraj Kandpal wrote:
> > > > + [...]
> > > > +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> > > > +				   struct intel_encoder *encoder) {
> > > > +	int err = -ENOENT;
> > > > +
> > > > +	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
> > > > +
> > > > +	/* try computed C20 HDMI tables before using consolidated tables */
> > > > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> > > > +		/* TODO: Update SSC state for HDMI as well */
> > > > +		err = intel_c20_compute_hdmi_tmds_pll(crtc_state);
> > > > +
> > > > +	if (err)
> > > > +		err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
> > >
> > > So this is something I have been meaning to fix we should really be
> > > using the HDMI tables already defined. Computing them ourselves, that
> > > should be reserved for only when we do not have any HDMI table for the
> > > said port clock available.
> > 
> > > Also if we use the computed tables directly that means we never end up
> > > using the defined tables.
> > >
> > > SO the flow here should be
> > >
> > > err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
> > >
> > > if (err && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)))
> > > 	err = intel_c20_compute_hdmi_tmds_pll(crtc_state);
> > 
> > This patch is not meant to change the logic, it simply wants to make the logic
> > clearer to the reader. What you suggest should be a separate patch
> 
> I am fine with that do you want to add that as a part of this series
> or should I send a separate Patch fixing this.

I think that change is not in the scope of this patchset, so it would be
better if you could follow up with it separately.

> Either way
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks.

> > 
> > > something like this.
> > >
> > > Regards,
> > > Suraj Kandpal
> > >
> > > > +
> > > > +	return err;
> > > >  }
> > > >
> > > >  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> > > > --
> > > > 2.34.1
