Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B9AC4CD90
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 11:02:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 545DB10E54A;
	Tue, 11 Nov 2025 10:02:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jV91FYgT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27FB10E544;
 Tue, 11 Nov 2025 10:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762855375; x=1794391375;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=F5l4ljL5IO6iGAsP3t4VVHlNVJaICO3TT7Z6PzlrWxU=;
 b=jV91FYgTafKJuqfeYISj8SB5L2tS8uqaoLmb83/7CK3ee/72XaA2Q7+d
 s/3XfR6ORkCV0vTCPNTx0+ds8mqIoKC+xuP5/lVo0lJKKUWOhGSpodkRa
 cQdB+qASX5qG2g72c4YnbaBU+bg4gHzZkau3/SoEUZRJmXoKsaSQ80jab
 9+Sq8xreogttLHZCRqSO/dnWWnN7u1PK2RWGIYDb1t6MfmKKLTK2Zj9rT
 hXQRhdD+vfqPXQ3XyXisZlURnwcfYTl/IS8bHddiXQyqobzH0iug5FEGJ
 s/lceAiDaKf5bYpWn82j/hA0CyDQSNQ22ZdeUgIZ7/DzX1rHsozyE7ufV g==;
X-CSE-ConnectionGUID: rfqvZe3sQ/KjndKejNpnbw==
X-CSE-MsgGUID: WeVPwxX5QwisioNTJmJNHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="63917612"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="63917612"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 02:02:55 -0800
X-CSE-ConnectionGUID: iKNAgGtARaODFQ5FjCsEkw==
X-CSE-MsgGUID: FlNCSssxS0CWxyO+yIraIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="189187106"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 02:02:54 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 02:02:54 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 02:02:54 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.28)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 02:02:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=n86mHBfBkrksNGxnOSDteYXGQ+Q3SqQB/UaYrWJ4p7puY0r8nGu/TEI5joGL7HkG0XQzIolsZS3Pe1cHit3Q7UR3rGxdGdNUew/zcL2WR+hU3e+tDHE8qliE5xIahIW2XN1tz4QH11LXIR2zPvjniqSHzDVo9gplzPnnfM7l4ba2Wgw4duZbEqQvoUQ4MzcrDMSZn87Ux0yXUIL8Bom6oIEn/pKdf3HeQbitOVDR3TZI2QpRi7/Z3/Ht1gOAwsV5wYLxewBjm/Vee/jr1wD33YV/OHgxsF0CWQAYg/bsM/I9SjkPfFD0xIGQjTf80gbRkB0l18naiq/Ic5fsHERnKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GEDjUukAnFXrVuELHWwANrxTgxDnwtQyu7LXpN4/M9U=;
 b=Or37Jw2/ZlCKeUXzOluyWW/rdfjASrvjKHeGTV0n1dp+Yq+V3BWPfBGWCcyJDfYJ8EqErax7PlQJ8yd5/N6xqnuXAtVrq+nZDYJiu+1RKghpohG7dF9iNCHPK4tDEYmj4r8iwjDtDA5H0vKDiFq9FGOLbs1TxIt/ZXoz46axOEgu5VzEGl5DH+LfOzAs4A9bkTUbks0wCz+NCoyzKVPGBknD2h/TQVVNTOubSqqpEw3wtS91wouW0qSOwp/uDfn8AmQ3avu04lsVZti2ZJGbneZ9LRAYz59YfNjRfh0gDzEwldyRfZf0vvjv7htljyNjpPxO5tlpB1UFvZidSvxEOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPFB8E59DF50.namprd11.prod.outlook.com (2603:10b6:518:1::d44)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.15; Tue, 11 Nov
 2025 10:02:51 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9320.013; Tue, 11 Nov 2025
 10:02:51 +0000
Date: Tue, 11 Nov 2025 12:02:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: Mika Kahola <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: Re: [CI 04/32] drm/i915/display: Sanitize calculating C20 PLL state
 from tables
Message-ID: <aRMJxK95P-811Its@ideak-desk>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-5-mika.kahola@intel.com>
 <IA3PR11MB8937ECCB2E66ADCDDCCA33CDE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <IA3PR11MB8937ECCB2E66ADCDDCCA33CDE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
X-ClientProxiedBy: LO6P123CA0019.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:313::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPFB8E59DF50:EE_
X-MS-Office365-Filtering-Correlation-Id: 5af7cb58-aef6-4daf-c01a-08de210979a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?r9uhsmxhRBPALicmTjkr7JwiD10Tj1sx6fa99bkBJA/7r8ypwGh/RiKILBBO?=
 =?us-ascii?Q?n0bQ9diMY3kSpYgydQP/1nBhU7NnEMDoRxeaZcXkkqtko8G9tm0f/zbpmDmd?=
 =?us-ascii?Q?4Xy7UXqDinocqQQaP0UG3GfNGMz76urgJQg5EhKzguUZs8hFMRlIL+gtxz8l?=
 =?us-ascii?Q?bIfcOUpPmtKvGeq8ZMajZOu/h4/f39w16073SFUaoOaRHDUAhT6SF4TnK16z?=
 =?us-ascii?Q?M7AhZSKFpvXohDKA1/21/jtSFELFZK5yF6nEtuQv4yB+UWOsmVcAaYWZjXPY?=
 =?us-ascii?Q?/TrREvh0y9e9iBViPW/A4YuGP1HJEEvW7ImkJcsiXS3d1SNBwx+gR1DwWUVg?=
 =?us-ascii?Q?dK7+xnjxTmYnsEFJKHpWXXM8LDX+lHvA1LkrgAjvp46ugTSGjILVW5To2+8u?=
 =?us-ascii?Q?naemRMxIvf4xrd2Lu6Pmrq3SKLmgdrJ+RASUmyZwiemx4kItJeH63vkNFOVS?=
 =?us-ascii?Q?G0tHo0Q1mLCkcJSU7/nvAz3RU9By59ZskaPR1NTWTq3PxW1M2Lf24JOGpySk?=
 =?us-ascii?Q?3LsW0OJ96wKMatnm84xVVw7VRykbv1B9f0Se2RoTJurrXk7UbPgk/+IcM8nQ?=
 =?us-ascii?Q?K+h04IczywzUkKl2zJQzf6wQApw1xdqLdXqzGr0AOKfYuhaFrnoujBa5EuNw?=
 =?us-ascii?Q?QabRwFKY7KiSrDy0zAACdF1fsVEvjR2QQjW4PUDDVDfmf9OWsEL6UV6sR2B7?=
 =?us-ascii?Q?KcShKdWuQghNItHBxzGeKZmdnz3Hbt7/U+JoYSp3xIBzNv4zhOevbv6YA/6/?=
 =?us-ascii?Q?+ha694QHDJjRFq80b5fgfmohnSOL1p1egKeeVt/hZ1mm22YHdeObBw3VKXte?=
 =?us-ascii?Q?fYDUhgS2BqOAxFYQQj8EFoKV+vcEtceQZNSST6ni4ejTNRtah2UjV5rwUs5a?=
 =?us-ascii?Q?2fXTH+JfC/5BQYr4iQ1RF7vMqAdZ8V3ONGGQJR8ggFnLIY+2gxmJajKJb1YJ?=
 =?us-ascii?Q?Ytv2KGe2bxvtO0N5QoFKbf+zgCGIF7MbrVz9cPtD9SdFvPuhTQhPb8hmE7gr?=
 =?us-ascii?Q?OGTzLY1MsWoQxqUIYACp9oSPxJ0JRLmGGDzGtdXt+kXW3xWLtXYRxG5IoDvf?=
 =?us-ascii?Q?yJCEJB6qS8u+dp+A+i35wBQNy3mhpuR+oHh1xEj6lIu7r0/nfxEVTrhOOyDG?=
 =?us-ascii?Q?0nQwZphq+1xHkxAsWKYoCM2ZYjgBYOwvEyK3ZHzQTzYP30wfNQyAZWN7Vu/b?=
 =?us-ascii?Q?o52ni5hdxhLvkEQhdEO7rGbZyG7dOn5QlKJi9x2y7uHpaEjuX3ZTRv9QY0NV?=
 =?us-ascii?Q?1HcMB3EWykzJXPMANCqFR1WfoyjYNmd+gwyqRGLUe+dDAnxevV/vv67OsKZe?=
 =?us-ascii?Q?qglLaXPfaLkkRJXZSYM7cDQPLVNkAi+1J+aqC8Z0oHJ//HBatRuiP4wWmX7g?=
 =?us-ascii?Q?uFSv4pcghAjHsk+WvSmDRp/+yLvRuPqSkzlMI+FuJnI4Nojl9fgipFHIy/L8?=
 =?us-ascii?Q?f5U02kmzRUnf8d2nHUN+mGWQLuS170ev?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PKmvRk9D5my4450N3DkEfjR0YTqyNBW2hXHMox8s963Qz++2YA6XZPmnL1Io?=
 =?us-ascii?Q?KtPGBkvp68hr+WqboJmka8sg8vYnEG4pC810oJUOb3gshGljHpL+0luUF8CX?=
 =?us-ascii?Q?XjLkoIawQtrsY2oxF1qicF7S+aP+zunpXmCWUb/Uam4YzD/QNVzgiza5F4g0?=
 =?us-ascii?Q?tsYLilEsRZwf9SkVZ9h8atBGft+3IZDGGkrhugFQSswVV52I57hovj4687iI?=
 =?us-ascii?Q?iNGogMZpZ6Y1rB5XjCuwQi0viAUODW8Rf21WQLQloq64nuszclv8rbTsl+ro?=
 =?us-ascii?Q?wdJzMyd89apC989BladycPNffdhb8pqQFxP7R0z1ToOoFuAb/9p3G1KQTTx9?=
 =?us-ascii?Q?lyKOCFGI1Cdt4kr0+mBQNbkGIhD5IrQwp0EQSNBf9yQJFhi7wWvwvPdloIW1?=
 =?us-ascii?Q?+GB5DABxLoPAFl+gtHvKLHmw+Tmq0LAPpuNvrAPGTrfqvrn2rpCUp+smKncI?=
 =?us-ascii?Q?2HFvKiTdiDLJBMoDjNkMwpe4mLkVwNH42KKnBYlJLkkzrM6sb03HVLpSqcDt?=
 =?us-ascii?Q?2Yr3Ccs+HkddETwZw+yudQKD3iNgLcpvLX70RS4L73uCDqObHGE9ue3MAQNT?=
 =?us-ascii?Q?fyTyAV6VypwGJddSiHvXLUz/z50Ms43Ik8VXeuGpio48IoQTRknY+HVCmdKj?=
 =?us-ascii?Q?SEe9I1TdEoagJIQWi07bT5KTcbdYkjxLcnIn1yHX27Nazh4jhNghQb7mX+ig?=
 =?us-ascii?Q?7j/MMaC569/jHTmH9mVMxS74WOc5hbuho2t4esIAvcFEyy0kNf719x8aIxfh?=
 =?us-ascii?Q?04kdytlZn6yt/Jo8z0IiuZNXhoZh++KtkfcAaiNrNJbsv0ThiZADMoBE39u6?=
 =?us-ascii?Q?cnV1Op0RlnX9a//EpE6g0+9SitNOZuS20Tei91V9ZDf2py245wVax3uHVUBp?=
 =?us-ascii?Q?65JM08js+SY7WzZYLBHoKEjUz183JJw5f6PDvhMMX0rdbYLTW0MJekl4FHbu?=
 =?us-ascii?Q?0mpwQOihtPTAWlIF65SRcYidUi/uwf9Bt54ogqf1I+zpG50OefGTS9m8vlWz?=
 =?us-ascii?Q?dG6dq0lJRLHC2E2AQReT7z4WU0PtqoD5LErSQAC2yzc/BPTg2u+6ndThd6e2?=
 =?us-ascii?Q?YDQEXBipYWHIhSFBvqLQckpfZtWHOFpZXrEnyH76OATBw9ZMZHvHmXOwZ7Ku?=
 =?us-ascii?Q?FjblPQAsI+ctw9iKonwCqxjyN3Va4052jOqpUtxamY0BdDm9NYLgMp1Ti3oL?=
 =?us-ascii?Q?AEaTl3SIlWi1I090lCjV4m8R8iSy9XnelL62HeiRrk+ASc2OX2i9UetyvObs?=
 =?us-ascii?Q?wy5SL+zrF8FWQYdSBj8JAQIeN04i4+K3sve4gadFOCbiJgX+NwCnbLjNhw4n?=
 =?us-ascii?Q?QSjs53bT7a6k8V47j9uZCsg482NGSOZPkMMSksEqzoHWJgaO+VmBgBOW/4/I?=
 =?us-ascii?Q?B5df8ARC4HOTqKDRVsWzPvmrIOaIUTqz87eydMgUgkFa9deoP4wBTFrXdcfb?=
 =?us-ascii?Q?QpCLWRtWxVH0PLvi2T5GnrC/Wleb2AHxrUve50GJy6oLQpxK77ukA2tlcxei?=
 =?us-ascii?Q?muFoTWjoba0TfiU9wfHL4RLWipYGcY2n3xZvJ2u7EYJCMdUfY05ZO5/Iftvw?=
 =?us-ascii?Q?JpVHY846cNFTBxAj/qMN69+4baHd4PBJJrlkYlXldA+QKSWuOCsoeJGD/LHG?=
 =?us-ascii?Q?9l5J6m9msE5SXzMyYIFhlyGdQz8JaJgdNJV0v27PBYSS?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5af7cb58-aef6-4daf-c01a-08de210979a4
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2025 10:02:51.4369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1LLTwzw77Stj9z5OxRjU/dsPG200/3Ax24WZ8TYeWJ0adB9Y8bfdj+Zy5/6iGP9Xpa82+af52cQioAsPACKoeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFB8E59DF50
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

On Tue, Nov 11, 2025 at 07:36:47AM +0200, Suraj Kandpal wrote:
> > + [...]
> > +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> > +				   struct intel_encoder *encoder)
> > +{
> > +	int err = -ENOENT;
> > +
> > +	crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
> > +
> > +	/* try computed C20 HDMI tables before using consolidated tables */
> > +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> > +		/* TODO: Update SSC state for HDMI as well */
> > +		err = intel_c20_compute_hdmi_tmds_pll(crtc_state);
> > +
> > +	if (err)
> > +		err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
> 
> So this is something I have been meaning to fix we should really be
> using the HDMI tables already defined. Computing them ourselves, that
> should be reserved for only when we do not have any HDMI table for the
> said port clock available.

> Also if we use the computed tables directly that means we never end up
> using the defined tables.
> 
> SO the flow here should be
> 
> err = intel_c20pll_calc_state_from_table(crtc_state, encoder);
> 
> if (err && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)))
> 	err = intel_c20_compute_hdmi_tmds_pll(crtc_state);

This patch is not meant to change the logic, it simply wants to make the
logic clearer to the reader. What you suggest should be a separate
patch.

> something like this.
> 
> Regards,
> Suraj Kandpal
>  
> > +
> > +	return err;
> >  }
> > 
> >  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> > --
> > 2.34.1
