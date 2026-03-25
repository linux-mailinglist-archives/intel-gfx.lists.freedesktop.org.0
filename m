Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mATpLnoDxGnOvQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 16:47:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A59328600
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 16:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FCA10E7BF;
	Wed, 25 Mar 2026 15:47:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YKYdVZu1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0AE710E7BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 15:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774453622; x=1805989622;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UZdW44McfIBD/qvsy0IqYNXOW60pR6+m9f8VfGuQnf0=;
 b=YKYdVZu1MHvKWoCmCsYUIOs3lEUkhBOmJqz6ECwURyeIFmmdDAV0wDKa
 V3PConNeh2yo4Mm7y3UD+2YulFVmC3yOw06YLTMi+A6YFaXG/1psPZQEA
 YZ1Tt1RxLecP8aecb5p9drMzhUcCWeEuot7kkwZVko8EBMZaFUYIq3zEJ
 Yp62Z/ZV6dtjAdnP8H7ShFYQTfi83Brt7Pl1HDm8tW6Mo1JT/aYatqEJp
 5TTctcDBzJMvwF6ACk0kaP/Cf6d9mVyAEUnl5KaseMLYPh+7Pl3o3vlnC
 m1LXhRZNALCuksqpeRLHAhqlMjRLTkLkla0ozfyf7lU3k81t+cegT6evs w==;
X-CSE-ConnectionGUID: ukrKkNIGQ+GtHCoZYNXcsw==
X-CSE-MsgGUID: P4CcsQ5CQrSg44VaX1IMyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="92874255"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="92874255"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:47:02 -0700
X-CSE-ConnectionGUID: tEBjbOokTAmsUm39QrhdZA==
X-CSE-MsgGUID: N+3n45VNTxOcEKG0G1ozog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="247748425"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:47:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 08:47:00 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 08:47:00 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 08:47:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jkGvyr5daK12z1e8s88YUSTCZ/lH8o9BGQTqQtEno04tihoaGErtKRb6QzdGrNkkVCvIKOt9MgoOBR/cogVmFY7T6v03rKw01iWxKGBIalliMjUVs5wdirRWHMg1FjqkkM+QPI/w/lbZ/bGd8gTlINXvrj5JolpvyBsDg0HZX4tO0d/IUTTizvevcs5OOz0MNdCf381xKa89fSYT7SnXxM2HwcR33WZUanY8ApYBMOq67knjGSAtggfSzWXLmppaimS+XvYtgpkwX7mcSqefvQZO7M7xHxWtFZCRFIsVIw2fcIUvnZXER3gLAzSSfUmjVya/KnIXtz+kgP/wWBTnbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ph3zNYeWKQoa93uPEThngWbNPvd/xx64RawcGmCrGHI=;
 b=YnNXBUNmZnI8tQmRNLcmJ/eaKGpWkMU/eZP6123Zwb6DIkLRp0r12GmJaB2x80XZQ8/Dq1JW8iz2oPivtXoTU+3LpChtSMBn2yLVaxJFGbG6BYWth9IfUGzlozzChoQi4sX7lEyKS7yB0MvYoK+U0qI39Tdom2XBQ6OvK5w2NNfMD4iq4on/3LZ9qss3vC8znWwhhsSFshJHMzG+4w4xfdNpkhib6FaxGV7lgM8N8o6x+heEGmKX/aquMoRqjj0U06daLJzA6k8GTRWI3fysYl5UB2ETmNmL4n6K5drBRVdFG/Pxz5KMPwP3105vATJ1PeWTiek4/xp/LHD3COrL8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by LV3PR11MB8602.namprd11.prod.outlook.com (2603:10b6:408:1b3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 15:46:48 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9769.004; Wed, 25 Mar 2026
 15:46:47 +0000
Date: Wed, 25 Mar 2026 11:46:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Yassine Mounir <sosohero200@gmail.com>, <gregkh@linuxfoundation.org>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
Message-ID: <acQDZJFtsEtm183A@intel.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177444763778.66558.14341959485998155867@jlahtine-mobl>
X-ClientProxiedBy: SJ2PR07CA0013.namprd07.prod.outlook.com
 (2603:10b6:a03:505::15) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|LV3PR11MB8602:EE_
X-MS-Office365-Filtering-Correlation-Id: 6006b288-6e5b-4c37-a2a9-08de8a85b93c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: HOpHvt3KMDAgb1WqSeVrFCtbmCBsV+nsX69kLqNW/bd8CgFH1uCGOcfUEQCV45S5SttXfUF6HgFMhRXJO6DrRTrlzjEb1IcOXqTZ9iGHLLwSpYeLSKQ74HeqqIa0ImowLZ8Yb/i4Cm+WSO+Ra+BzoZ6n3ilmugP4APzY7KW2v2f/6zNPcUPxNLrEDqrVmTgn27F5ERDJVKrAyR3wmTo3WxjTjDgwHZoiJHnxELN3druY4xhh874CyHFQ4OnQEiCpAvm/Rfm6rhpIgCFDyYcWhbNu0N1DWUGFun6zPTmsVQsXS2ike6Xzm5+UwufOVjHx2+WYWhVnJlEXKl8wtOELQwpBbXyTHqJe4imPuMxo0VEjULuW2w9mPDBRJtb7Q5MtNrVR0jg+IjnueTsp/1c16z4z8CgMhNf1vlaTHzIOf8fialHqnIv+G58Lzah+h9Hzan30iTcfbD04mgqeMEeCRTSJ+TZaAgY1WUboGFejtJ1OAvvtm79BgMcMt5a+ZYKvnvbqHqbv7RgTEdkC+MqGu1v1gwX4j1ssnbK5P4SjNp8PbcagpCEDkc1NY2iXhQB/HywsWHBjsSm5q8IjRBeIS5+FFzujhK4zoTJ2wbCd7CPe13SHo/Pub0r+LbKbTDucOHkVGtKJYrwg30sFPER3XbDGn6RWyU4pnOBSYyiqD/mtm84VnlZazisWwjegCMtI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y9AgPzboQFxdZo98qpKNd1Mnhq8Y0kZ+8ZEDpMVzFqxdAkdOuQvG9E2HvSL3?=
 =?us-ascii?Q?WS/CO4wE7+UeF3TV4KD66arUJ8dcAfVCGRpMACWGlSmylWWYm5PgKQUFHnQb?=
 =?us-ascii?Q?rf18yVlLM2icCgoHYIMLuVmDyTVzDiNRp0jCQo3BqBS7Tw4BfJ7qrFUBH561?=
 =?us-ascii?Q?dku/5qXe1z3pIUSh8Ph7Lv3hG5JA5rARWBJsigCTEpup525OW1o2X6vpTf1O?=
 =?us-ascii?Q?m0sTMjfCwn9aqh/4rUqVkbISy59/acBGMEH72InTlmw3obMx3IFChKH2Aljp?=
 =?us-ascii?Q?sxiYmcuXz9WU3tQexG9xA2lvAuNcp0gN34h5EZ2mSgJ/fPDMxI861bjfhpi6?=
 =?us-ascii?Q?hoPmSp2tpng6SuzI9mk6Ho5GUdW60dZcpeduAp1oHznoZkUXhoyDVsmZXPip?=
 =?us-ascii?Q?0/Pr91+yIySvtLAGQ+82vnOeTumgvKUJ1txhzbYqIQJ3kRaFgi5u04J825yj?=
 =?us-ascii?Q?rNLA8JML1aYXwU1LRKRihAxdK3gw0UPux4YmMCmQhQpg6iTh0ZM4uvR/wjLL?=
 =?us-ascii?Q?FOp3+AM8NAq6lLEH3L1ICMyJerjTCirefxAi6wUa5sDovWNI1rtKDCHnBXP4?=
 =?us-ascii?Q?SCspYIKl7yxJitFOgf7OJ/Us1gMD1SfXup5Fx2HQFH24RPqtte4o2/wldA6B?=
 =?us-ascii?Q?SCKeYBY3zyiS2h13SXOCt3EOq7p/bC8jbp4j6CzBQnpX9cEDxFZSG5mn8Qc3?=
 =?us-ascii?Q?4IVAY8k3DqODudKDZm85iQ+kv00fwLEmtiUehJdAqEsNI0fI86dnGvvX5iFQ?=
 =?us-ascii?Q?P12h5Ydc0deilgujS9Q5dDfMp8SqKhZNRxAPgUNFYaK6Jo8jVKgfwrHwT2XH?=
 =?us-ascii?Q?ZPEOiWVqtm2M/DPErwWNPcAG5jYynWiepBt3qUBFXJyF9jXe+6FlNlXcRxsV?=
 =?us-ascii?Q?rlW7CfhFwmul7HAwDUFqafXE6tWYBfszb69VPmRvOu1WUbXiq/ROsnQkoKVb?=
 =?us-ascii?Q?xhjQ3i5uwhWqdknSx64l1nIoQnOCyxoGWU7fykJfsM5NwRIwe3sUtifIR/+m?=
 =?us-ascii?Q?WxHHdrTn6Ang7SDMa2LoSiSiilLplYCEGHoargXV/j/w3EXfzG2yYohf3Ii+?=
 =?us-ascii?Q?8uHfVTi15sxkAHeLfQxNgVRVUc4hYECD9r6s9fgytKEymO4DQhHmlt2CmoM/?=
 =?us-ascii?Q?PLqce6NX3XXrSOtZ/KUy9fqqovUJak4Q78oqx/EAOMwEZok1uCH1KSLu7mxf?=
 =?us-ascii?Q?H6ZNpfJ38+InMR8g7pNS9stVawzJrtt/oCdegVI1yZa/8TasVOyAMA26SraH?=
 =?us-ascii?Q?2Vqqy+0qwJS4Vxcmz5fxSlasYNawUa9MW9CxIhqOI9xqY4zyiGyEgzDwI04Q?=
 =?us-ascii?Q?YUwcgEoWsFrs4ELYIa9MgERVe7giSJSjtpCaDUTNIbhOotSE/bpSU6emgkM7?=
 =?us-ascii?Q?V68Grhb8fk93WEhuCkvP2Fl5QU2pG22go+wlBq8GRgddbo7wZ4iePMYwbzrk?=
 =?us-ascii?Q?8dPbwKfX80DNd1Rhha3fm9wtLLM2hbCwUojkT9MUcJaKfSf0EZPnrn8KsJsE?=
 =?us-ascii?Q?8/QXizOF6bAQmSIQBffRXNXDPt34YE0NIFvDayLHjVo29hzcmbMIakwAi8Qj?=
 =?us-ascii?Q?3hRUNMnHd6Gi/fQ2uGmMu0gGlU7vy1h7gQ80YUTr2V8tC46aPhSTlUONn5mj?=
 =?us-ascii?Q?JnEg90m/zjPahEKAx/sSWraFox4iGUGp4jc0YcsWwMh2aXQw+FrG495buCfT?=
 =?us-ascii?Q?PMuomDUn/dQ5lq4R8KWyKTHknWWzbd1iMeS73uvQzsAmtQ2HGfiPccJ21HOr?=
 =?us-ascii?Q?0aNwHNqNwA=3D=3D?=
X-Exchange-RoutingPolicyChecked: GWN08nloB56wFps3ZpZi32aHqMU0F6ZV5jDCkhpB0I6/iK/aj0yaZcQwAdmAc81p2Ugd/N4RRK+2ccT9nq5Tbnvk6ZEbTzJnvdfKWW1EByKTd9pdVoXRdyyqCgaLZxWPCFna0mXRGSjD2KR/U0rVmTy+5qks762/0k86doaq1qFWsNra6GCzehxd30nS8Wgc/TladSNXqywdElCi4PgI0yaD2titeT+5anOpjzU9plxRL7gCaxVBjjj90ch1hGitof/Kq5QZtT3cYcz0QuY//ChdoqT5UOT6ZezgS5Uju2K/GNAF2BWsCVLP9PqjfwWEgQEJD+v+5Sukil4bCUzbyA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6006b288-6e5b-4c37-a2a9-08de8a85b93c
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 15:46:47.8871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YZsiAewIyfk11/wKimF/0Gj39oFMcpLMNgW4bUjB7RznP/F80YMBddudnahqEexCUg+5qjEHYKYyyY626Uw6ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8602
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:sosohero200@gmail.com,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,linuxfoundation.org,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pages.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 34A59328600
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:
> Quoting Yassine Mounir (2026-03-25 10:20:58)
> > Hi Joonas,
> > Thank you for the detailed feedback. I apologize for the double tag and the
> > direct submission to Greg; I'm still refining my workflow.
> 
> Ok, then to level set some expectations:
> 
> Have you actually confirmed that the code you have submitted compiles
> and does fix the bug you reported?
> 
> Expectation is that you run the reproducer on top of drm-tip and see a
> crash where you pick the dmesg/KASAN splat from, then you run drm-tip
> with the patch you have prepared and there is no crash.

Exactly.

Before any further submission, please let's get back to square 0 here.

0. Please file a bug to our gilab/issues:
https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

Do that against the drm-tip branch and provide all the log information
from your experiments.

1. If you have a proposed patch, also please confirm that it actually fix
the issues that you are solving.

2. Whenever using AI to help you with the code please ensure you comply
with this:

Documentation/process/generated-content.rst

Thanks,
Rodrigo.

> 
> Regards, Joonas
