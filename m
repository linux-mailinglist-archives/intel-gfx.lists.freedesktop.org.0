Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B779BBCE7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 19:10:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BAC410E3E9;
	Mon,  4 Nov 2024 18:10:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GcFONpZF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B1B10E3E9;
 Mon,  4 Nov 2024 18:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730743840; x=1762279840;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xklNTbGWNO7TrfFDPI+YB7DgF6ICeJefXl5SuSoe/vo=;
 b=GcFONpZFwEmLav521ssR6pAG2RAXtMKuXbfaaqYvS0vS5Y7qG++LKkjE
 4JJcOduPRUOZ74fneESxNg3LcCLn0MRFWu5ifrAApBLyoZ21cDjhug4bn
 vBZc4qVR800tlqTXi4iMVZxVTphZQ4JeJ6D0ySSBOHqjptelHHi/kFLBo
 LXoEsuiP22VZgJoAYHUslVohdjyanQiS0mEfsR/hdF72RRAog4ElPobN/
 4rVcN/N426wK4/b+/9/X/p1FSQ/zHZkMLlnZClrW7O8saM1V/ekLE2N6W
 Iul7fa4DqdMuadBg2l7ykbQ1unwvPuvrSueLQEtr1KZ/CTnOV2ypoxsVw Q==;
X-CSE-ConnectionGUID: 9X6KfJjVR+W4jtg+haDdjg==
X-CSE-MsgGUID: b5DS9m7MTvKQXiVkX6nfTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="34245306"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="34245306"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 10:10:40 -0800
X-CSE-ConnectionGUID: vDRfxKlcSZmIDmV0yadVrQ==
X-CSE-MsgGUID: I6g0RmAtSy6fug7xEb7a3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83853374"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 10:10:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 10:10:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 10:10:39 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 10:10:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DJjt/c3EUA/p9Gi9jof2coLQE4J76N2yLBZComo6XWPUzdi8M7iSGFXcQ4qCzTv/mxcM1yZHvObI/rRejisd1MauUkqm1C8I8y7qf9w1rayJLz41r8u6ws0JOLEDMPiIYA5nJywiKNbtFrs+heqWiPcJTbzP08boBQem1PEcXECiHyJhIwn4h+xyg2N7D/Gj09g/nD6MKE2dsOgeXMdYr4dkfnE68lit+Ha/LhJVZf/aBuSrPte0A8+ZHwaq6cMZAdzMuLjrzNLUvwp3BEDP/hpb82wqvZsHDsVLUb38KNn/HEDsSIgG2am47Ha9YwtAG7yncQzYBYUjKDrB4ipG9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6iH00LPD+i1RpBs6hPZ3QGagXhaJIM9a/mhSidjvy8g=;
 b=cPq2vkLfAKKeYkwPf5yisVy51BKMSRFVHADwZKHbcONuxVBzFaNTVcJmyRhUVK1v8I5EiZ/B3+PRlgMx4MoFqPRmlbdivfVOo/+w75IjbjYrAFstqSQQMSJ3Jc/Xbdfct2qdNqmbZYL7tMb2g3gT5Qe8Cil5NlSlnesxizmk0iVL+ZPSXXhj5me66k5hs7iIbCvShFMx9Vf7//ZH4jWt7maC2PreCwlWmaO5k1PdQxzgZSc/WtiUj2qoldAHQQPc6qTmiFhgaS92JjrsVbEp6+V3HGAyjjd3b9NScV1a1KzfoMlgIm8YYT1GnrAEYIMMOLON6F4UeBnPxA1udsqqMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB7549.namprd11.prod.outlook.com (2603:10b6:510:27b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Mon, 4 Nov
 2024 18:10:35 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 18:10:35 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Topic: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for Xe3
Thread-Index: AQHbLpQOJRk/svtockiq4lviLwW3trKnaBSAgAAEE3A=
Date: Mon, 4 Nov 2024 18:10:35 +0000
Message-ID: <SN7PR11MB6750084F95D29D9E078E4246E3512@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241104083143.631760-1-suraj.kandpal@intel.com>
 <20241104175439.GB5725@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20241104175439.GB5725@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB7549:EE_
x-ms-office365-filtering-correlation-id: 6fbd86e5-c6c1-492e-bde5-08dcfcfbfada
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6ubP5DG/5EJ4HW/e3Bye2MrJMPZsw3pl/09vr0HbrQudR5ZMJFQM2IBPy7sJ?=
 =?us-ascii?Q?1PwcbQGMbYk2XMnM1S0xioRoWuWb0dXZsQ7kcEcimgMnfVlVjIF0usrYvY95?=
 =?us-ascii?Q?gTUKi2gVnPsBEJ/+BCPQelVMpxroxmWSulqDoO1vANGhGmZAWn5/TA5ik/nr?=
 =?us-ascii?Q?bBfKb6BmKnexY8InTUJ7WTPkeNQbegDNBp6kMQwbnspYCIfkuykjMr2B0MpU?=
 =?us-ascii?Q?TNI0ErXLYPYljVA5HBK8FTvdwV9ETIWQ4ndf5cRbFjvqZew1zyhHaNe2Qe8s?=
 =?us-ascii?Q?RRIxV7rssle7oDY6uDFFgevhjtCZL9hvV7ie/0xg6mYXPlHuHCRE886kpmGK?=
 =?us-ascii?Q?ZiuIskHs+Q7Ir5JGbo4iacNxME20voelCO1bX1eNgZlDdVSXkS2SnNqefgld?=
 =?us-ascii?Q?Y5Cnu7e9pzbubzLdghT19ofKsLByl+yxXfW1K4jP18DuBHf1sO4N1hdWozJ1?=
 =?us-ascii?Q?nmVFljCf+KZvbvBvisSgcCVqobf7cKf5Qh9ZpUhmn/y8vDRgqtpM2iBt8Wcb?=
 =?us-ascii?Q?FBI+zlsjDNwIUIdMqK8Z2jg4vjz8oURcb0/sgp1Bup0f03OckA6MG1LrwiYc?=
 =?us-ascii?Q?PrDx+g7VIGlgDisvRLWCr7xD/mpRpPkQmt3X+cO54nBVmGLGYVqu5Y8HeHTD?=
 =?us-ascii?Q?q0kx2jiTnoBRPBHmJbia6pO1x5DyxRIrTP0zbKjVMoS5cQP07YYH+Bp7eJkK?=
 =?us-ascii?Q?7vuz/L90ht5mFuvg8kZVNuAE/5bPKG1bVafqEHLWEYtS6Gr5eOHxsMpo+Rct?=
 =?us-ascii?Q?8sJpuaDbQp/Uw4sN+2fr3zURUb+wpLIj5EY+4Bf84kCCrv2jTTpJ8uccBipH?=
 =?us-ascii?Q?g3x3cADAxeiEnKObW21mCdHka2WXpvwxft5Dosl7WOffiUZtIL+7zb1M8mWy?=
 =?us-ascii?Q?cObHlAkcN/VBhMQjSmiveLT1gs6Wn3Zqm+LIRPhdIJEKUkcZsxbwixXX5DAO?=
 =?us-ascii?Q?KE8VBFbzLYwdya23plR+NUKAlaXgCq1PqIP+Iss55Em50OQOxwzEh8mphzTD?=
 =?us-ascii?Q?SLiUrPEXap9QJpUXxCMEryfbGkVSMoGWOxvMJF3p+C5kmhO4bUMa7XRK84Zl?=
 =?us-ascii?Q?+XifYy1ZtYagVozXqHKksizV+djvrjBBDy5yqLRr5aLFZQ+xd9p1Z7ggNMvq?=
 =?us-ascii?Q?s4HSNgUGv/yxvxUbEi761a+84X3rb0U8j3HAJKjqS2dpBOK+vDSWacBayGLQ?=
 =?us-ascii?Q?tUunNOXGk4lWudiN+fyCEFywSCRsvLV6tnO2gPK9cdMYn0dEhK7nzkwVQjmp?=
 =?us-ascii?Q?fUqOtbSJ6ut8o/3cy0VlLCAjFYWbXStKp3ZSvOHYYoYh1/7Za6d/ROtyPHQa?=
 =?us-ascii?Q?FM/80PDTLP/0DUZdGksXibEumf0MZGSLb+ONUx2kWzP3JQDElJ0PLNwQeVEr?=
 =?us-ascii?Q?nXhPbys=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pdKDKXBC9wjwp4X38ySFTjQZ5K1j2vTcTfnNWVS4CoYHMeSGJyr8bMisIYDv?=
 =?us-ascii?Q?o9E61PB1uv0l12I0AlPEZnnT8uLcyNZTFiR19rkBIrRFHpWqg/IQ1zehCAFG?=
 =?us-ascii?Q?BOMfjHiSFbkV/RjnY+wSrTO0BVyqmeXEdq9dtWOTZAiP15nxJV682grPp4d+?=
 =?us-ascii?Q?Pm5jaFwfBNcVqH93iIPgRULpjFhUQx9lov9qgQE3P6ndKOR99e1JRkmFywJt?=
 =?us-ascii?Q?Ix2uLtpBTFErlPFxW9np1RVmwfRADrqFvc4NfpOZ09YrD9tXelifRgkj5dc7?=
 =?us-ascii?Q?tzDsFwb6yq6L4kVkrfd9hQlg+58vI/Oe41bxRP4JXZrOKoWBFN6gK+6SAcAH?=
 =?us-ascii?Q?2PL1bM68GmXQJAEN6SqGg8oCwCKCUdNuWDMGHE0AlS6Zk0n3NsjDLjFJx8HI?=
 =?us-ascii?Q?j+SidYI0lEtVwMW4rCFAan3Rcs8+UND6r5ttk1ZFAKn+2THUk+5eEtB/Xqjb?=
 =?us-ascii?Q?i6wAoE64M9u4M9zdd3q3iuhJ0o42hU9t1IZ4zBeecFMdEcwv/GXG1jeXI9pB?=
 =?us-ascii?Q?qs9M3BsGTP1K0GOOzro3Hc5T8Huh1o8m4N+ceKgE1SNcdxLCBOL7ccA9is3r?=
 =?us-ascii?Q?Aq+w2dLe/yQzK4OKIYPbhv+ar7/uGBwPPm1mvKHPmux0I83U4IZpfA+JPIow?=
 =?us-ascii?Q?BRj+w/PKC6egicpwEtv4Lstuxx42hs8pG05zUfugiQwEERJuM/Xh6aJcLKuW?=
 =?us-ascii?Q?y0bbwzIJ1VXDejFaTqs++u7Hev1kK51CzAxw9QS9bLl0l+FXkFL0iiZFJUX1?=
 =?us-ascii?Q?SoVeo1uTVX5lv9BOQ7cFXeVMRoJR6FUmvs4dHi+80Y9EUh52TZyBFAJNGrnA?=
 =?us-ascii?Q?bwT+uz/kUfgbIVZ2xxJVAXQBUGnVjcxIj+1dJCH7dl6bc1dFDLZivt0zEsZT?=
 =?us-ascii?Q?LkkzAKd+hXwzzTQyraXfymJuQOm0dgdSfa05W6S9Bnwq6zoS0skBv/+dq2XM?=
 =?us-ascii?Q?e/BsOtvbpMQe01sTsZhTKndKAHUaLnHHQp3j3hiYygXqbAngcw8552nQxgxT?=
 =?us-ascii?Q?O/lTXfzLApgk0PJj7RRJtF8owb1EF9kLWQTBEaBMc5VRA1V3m1qmVP1RLFLQ?=
 =?us-ascii?Q?B6Ymyi9Vvv3SmJ9g4YXyt7S4MDkE6CFXx4HnGfgmwNXWzE0yDpBpwf1j4QUV?=
 =?us-ascii?Q?LmNRhWzLRPrO44GOX2r661J1EmaWTDwipdWssizaBtS/Cy15B5kHJpjIQAbL?=
 =?us-ascii?Q?fYGnl4mKrYF+wybe38hUXQZPddmy1J9h8otJdXf5pZHofFWFmXdT+gfLD8xx?=
 =?us-ascii?Q?Q+w3i90NLMCdJvBoVoA910VgnkYWhA1I1xtFccth3NCmRJo0oGVvBsqqn81G?=
 =?us-ascii?Q?C8d1k6b+WK3rxL8NGkKTLfyx5D/ZpryL+uueFv9H2QCnMJg5QrNiKXWuCxAM?=
 =?us-ascii?Q?qTJswPaPW15jm6oTa0wCyEivJsu0F5IVn8cXO2Y/LLz7mJYKYMFK6roYPE54?=
 =?us-ascii?Q?WKYIIZ4Uze/kgC72f5wCK/tdfZvnyfYVWKaHKNe5k653Il8874L0qGdZQaIY?=
 =?us-ascii?Q?Du4ibQwkF2qH+Ysmrx9ZKO4W8MAG8qAZD4U9GX7PAHnlKlbw5EFNlyn7E1zs?=
 =?us-ascii?Q?xw05lnB8o13u5WGZiR2CG+0Z7QXV9mmc+W8750Lz?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fbd86e5-c6c1-492e-bde5-08dcfcfbfada
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2024 18:10:35.5367 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qcIF6RgDNUzo8y95zD9/mOWHVbPmPS7GZQNcjJ9ElJw8KEJizcu4v7TublhFyJmLSLNgV3f4ZqHELokq3khdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7549
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
> Sent: Monday, November 4, 2024 11:25 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 1/2] drm/i915/xe3lpd: Disable HDCP Line Rekeying for =
Xe3
>=20
> On Mon, Nov 04, 2024 at 02:01:42PM +0530, Suraj Kandpal wrote:
> > We need to disable HDCP Line Rekeying for Xe3 when we are using an
> > HDMI encoder. Also remove the Wa comment tag as this follows the bspec
> > and does not implement the wa.
> >
> > v2: add additional definition instead of function, commit message typo
> > fix and update.
> > v3: restore lost conditional from v2.
> > v4: subject line and subject message updated, fix the if ladder order,
> > fix the bit definition order.
> > v5: Add the bspec link and remove the Wa comment tag
> > v6: Rebase over new changes
> >
> > Bspec: 69964
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> I think the code changes are fine now (although you seem to have dropped
> the general ladder re-order that was done in v4; was that intentional or =
a
> mistake?), but the subject/commit message seem misleading since the
> change this patch is making isn't changing if/when rekeying is disabled, =
all it's
> doing is changing the bit used.  So a commit message more along the lines=
 of
>=20
>         drm/i915/xe3lpd: Update HDCP rekying bit
>=20
>         The TRANS_DDI_FUNC_CTL bit used to enable/disable HDCP rekeying
>         has moved from bit 12 (Xe2) to bit 15 (Xe3); update the RMW
>         toggle accordingly.
>=20
>         Also drop the misleading workaround comment tag on this function
>         since disabling of HDCP rekeying is something that happens on
>         all platforms, not just those impacted by that workaround.
>=20
> If you decide to reinstate the ladder re-order that you had on an earlier
> version of this patch, you could add another sentence like
>=20
>         While we're here, also re-order the if/else ladder to use
>         standard "newest platform first" order.
>=20

Sure will reladder the checks and update the commit message accordingly mus=
t have missed it
due to the rebase.

Regards,
Suraj Kandpal

> Anyway, with some kind of commit message cleanup,
>=20
>         Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>=20
>=20
> Matt
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdcp.c | 7 +++++--
> >  drivers/gpu/drm/i915/i915_reg.h           | 1 +
> >  2 files changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index f6d42ec6949e..8bca532d1176 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -31,7 +31,6 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> > -/* WA: 16022217614 */
> >  static void
> >  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
> >  				      struct intel_hdcp *hdcp)
> > @@ -43,7 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct
> intel_encoder *encoder,
> >  		return;
> >
> >  	if (DISPLAY_VER(display) >=3D 14) {
> > -		if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> STEP_FOREVER))
> > +		if (DISPLAY_VER(display) >=3D 30)
> > +			intel_de_rmw(display,
> > +				     TRANS_DDI_FUNC_CTL(display, hdcp-
> >cpu_transcoder),
> > +				     0,
> XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> > +		else if (IS_DISPLAY_VERx100_STEP(display, 1400, STEP_D0,
> > +STEP_FOREVER))
> >  			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp-
> >cpu_transcoder),
> >  				     0, HDCP_LINE_REKEY_DISABLE);
> >  		else if (IS_DISPLAY_VERx100_STEP(display, 1401, STEP_B0,
> > STEP_FOREVER) || diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index 22be4a731d27..c160e087972a
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3819,6 +3819,7 @@ enum skl_power_gate {
> >  #define  TRANS_DDI_PVSYNC		(1 << 17)
> >  #define  TRANS_DDI_PHSYNC		(1 << 16)
> >  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> > +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
> >  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
> >  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
