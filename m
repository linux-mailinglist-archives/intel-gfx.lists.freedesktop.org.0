Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMQfJn5WpWmh9gUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:21:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED181D5748
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 10:21:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7CB10E46B;
	Mon,  2 Mar 2026 09:21:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIT7z1Dp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274E010E46B;
 Mon,  2 Mar 2026 09:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772443259; x=1803979259;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=bpZYOxCVZL7GCntlFpzAE6QImrnoRqG2IuoZCrXn+3A=;
 b=nIT7z1DpKEQwjcphTsG8V6Sa+OYfzklmqBYYk+z+2RWUbN2VLUPiPJYj
 P0oGdI4RCC85MudJx33qWcjEXV6jQlw/puWgamWfbZQ6ljW4urXLI+T/8
 NfKo7TjxkLZXZCG4kixA4xx9ZOe6iHAD96CmZJGw7G0TbmlNXgz6ll7TF
 nfz8cEyeY2KLq8a8bhfCoFSRi2gxrQOCpfKiFwNVLePjO+tqT2jCk0D70
 9sikmaCIlxUZrjQn6rGk20/ZB0Mu4ooDhcYwwER8G1rVi6W/msp+c2b2I
 57mZXGd0PvorpC7MV5Iz2h2FjeC1EYlriKeJbUgOLPHJO7qZ8ExhhTtxr g==;
X-CSE-ConnectionGUID: 8nIbjgNPT2+gJ4fD2npwLg==
X-CSE-MsgGUID: Phd0U1d1SFCDaQIlekP3bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="76048365"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="76048365"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:20:59 -0800
X-CSE-ConnectionGUID: +Uaw8GLcSluMyGI7Wx87PQ==
X-CSE-MsgGUID: a+xgUQoPSya0qnT19FHTUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="216821263"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 01:20:59 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 01:20:58 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 01:20:58 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 01:20:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LPERfdhR0D5grlc7+Xh4VBkgK9yCe9EVRDfZ1HNE7Ro3yCJzjlKobY4Sbc6ID8O+VvYC/WC1K3c8gJtAlVq9rbA57yv2XhKAWBbixCeUzU3CjeitOaf/tVyaVEX7A5lUGUHLvNgLh61i6KNh4KrN+z5lm0pIrh6Uc9aJxBv2Dq9IUpnPqKMSssr3CiCjlbpEeqlZ6x7TZM6G8H+GmlBDOO/eK3H50NF6NaZIQ3aev2RwoPkSmKlRjS5ypckML648O+8rMbCeEcwTg02CT5O/w7GQNwGEUJCNsuLccyMb6Znvj/wF4m2p64ZeBolbw7CbRvvtZ4ICABH9sHn8GGNUjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ikpZLJ6RFP6Wfor8wqutJ+vxLRmPrboLg4jYTCuYN08=;
 b=oqOUHjkY/rhflDiagaBvXenWaPSbTVFMDVf6wXSGFffL/mhP097PgJWq4ETWdokJuO61msW5s6yg6GSd3UQRZBjawj+yfdX75c/f+68PYcpu3yBtXWWfM5hgaXySJ2nnwkzZ5BNswS54FmIyzLMjPC4oVZQ0pbWK3LrqgkCvirIIfAbT91ya9bmG3stLNrKdAzm5SDl04tWkHvfFaEuR76IgFx1+bTeizyEbT3WZmYnE0c0YMlTWuIwiGDtjTBZUpWUA9UvuGWouSmg44ZaaDFxwljZXTvOg/08Y3qCb1tVCD9FTIb9Z2APhftBc09i00Inm8n47KIU1nIM1O71fhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB7272.namprd11.prod.outlook.com (2603:10b6:208:428::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.21; Mon, 2 Mar
 2026 09:20:55 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 09:20:54 +0000
Date: Mon, 2 Mar 2026 11:20:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
Message-ID: <aaVWbdt1vOFxGAb1@ideak-desk.lan>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
 <aZ26pwv6M7gG4W9D@ideak-desk.lan>
 <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
 <aaVCFx0U1TZpJeuJ@ideak-desk.lan>
 <cfaac7db-2920-467a-a980-a2225f028014@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cfaac7db-2920-467a-a980-a2225f028014@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0013.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB7272:EE_
X-MS-Office365-Filtering-Correlation-Id: 547e3e46-1d60-4c6a-740e-08de783d0132
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: SMZJH8Pows+j0+z5OrUk/DK/aXj5MxRFo472uXz4/3tYqAWhKGqgng3fdD1o3FkkOnSprwjs4MEoUjZmC6ueCpiSfjS57h9YMK+UWh6fagjOnCFn1SHF3zox7gQ6Ul5Kfhc7FSdA2d47jxkWRErJD6kye8bovdR3C4cq/BlYu/v/NNRxzeNlTkgLTVWw9Gq01Epz0GFVyUw7nHo2Il6zu6b6uWCTCk8r1ah4+CIdPhtUiAvYzL+nqhO4495dVkBapPBguzuU9bWAd8af6wAmfMdTRmrE91TvTPqw3doM31R5nUT21xuH4rAyMhfaPdfCYkZZlHTv1JOvHtCVma4LP+WmvPKSDPjVaawlu8l6mYgPFRaFY2zZcteDEebJPKRQo39su9JZDALYlfL35iU2CIFcyU+Sxlh0zLswO4ihuHzLB+7YX54b2ouXOFEo9C1A37TVqmlgNl7pGwYoHCaPgqT6Iw0Nt7rnxlVn39qAadBXJgrcmwsEwL81lT6hOw7Ivj2pnO0KQfGZMSDgUUSiLTQxLZZXOoeRXV0TlUdQLreql0sxLVUBae8uMAX/fOjwsKuAKtfBHOWQ/Ju6V1p7M0RhI0UspVr1a2O1YHGPQcR/36M0v5T/SV8ztB8O7aJkmDWn+CH/u7Y+3T3Y3QWaTZWzn7H837NVU8bbehKprY8RmNnnKMcqUM0L6eHc1pAf
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H5jjGw35c+AX3Q/pMJvxE3FV9vGcxRPeaqriuVARVBbygk0ZjSfCSzWFxM30?=
 =?us-ascii?Q?Tkqy5MhomC+AOOm869oDCJTAmvK1/9geXFxe4WnYfOItfxZ4ITbeSaMcmzBw?=
 =?us-ascii?Q?RQODLVQ/dovaCk6DeZh3+20ziUikcZVlqxFqvtBOpQ1Jp6fD+ZoVRLFbPL5i?=
 =?us-ascii?Q?KAvSiIJwMXei+94yjEqYMGNpDs/owfIPq4h89IkLn+kAUNpY5eMPLP6oSI9+?=
 =?us-ascii?Q?wDOeoLz+tXF7Q01azHUda9bXTW3Le+KNL8oUa/kCC2vlUccw3IK7e35sZ5DG?=
 =?us-ascii?Q?Cna5etLwFF2Mbe7LWuO9x+MHBIQkb0ChirilMHzB38xUZKwXGkoo+azbr9iH?=
 =?us-ascii?Q?yuufzOpYwbCulNt7H7GkCKkTQi3748t6Kh2dhiNPCNb15DQCuN3dECWnI5Tf?=
 =?us-ascii?Q?fz+CjN/c2WzGO3D1Wblboqluc5gPng6t9T+HgQKyyXfE8Vsgc0B52ZhJpSBd?=
 =?us-ascii?Q?cEifSBZZzkqIMr5ibtFHtfgK9Ucp0YdjVgNoDpjMSO8OvbpTsY9rX/iMvBXw?=
 =?us-ascii?Q?SvkVO+NUExM8pC5/lTQJfdFSFdtxojWyG8z7I2Hf4spnIXnxlgb3tg+DDtmf?=
 =?us-ascii?Q?PrCM7mxdziMR7U3W1svKBpF4YEI1oRyb37BbjzcjtAJ4OE1RGN9Eyi/sElXf?=
 =?us-ascii?Q?2AQPnJMX+bHRs0Bw7j8pkD2dcLe0VUn20t/fVDAi2IRvXXra2BGtkUbMU8dS?=
 =?us-ascii?Q?RcsdR3hwWSnzjbpbkCBZwE0dpHP326F8Mbo+RH5sZaNq8LXNznGO2fNvzu+K?=
 =?us-ascii?Q?8UIRgcBHGe2m07dWge2QUlhWLTs5FhGzRNn2Z4u74aK1vNvdHid07Yru9FSX?=
 =?us-ascii?Q?+XTpbKbPX4iKLEjFLOYkU93+U444WpKFM9+4j7wBGilzbZmtSb6uIbIg8ntI?=
 =?us-ascii?Q?Q+lLRF4H96rfgYEHhnirXVOAWBBkeESXoN6ai1yXrXunjIz7YFGO1UxkorLr?=
 =?us-ascii?Q?gJAwLDS0FYbiW90wh5YaMDcmQ+S7l2m0bpHqm6/1v5Hk52B28WEQwb0INJBX?=
 =?us-ascii?Q?6C28KF04/Ar0a6DaZNnJozBlp0iJRUOWCoOxsE9kABLcxUwIodaraDUGWbNu?=
 =?us-ascii?Q?8zw17gpkyoXSajFJ+RC6aqZE4apm6T2lp1EswBZS1UmULBjo0DgNfLEDQ+bL?=
 =?us-ascii?Q?i9rth5l9rRQsQI7WII3EsenOSW73kW7yho5ZJRY0MrLLfg2ZupLTAM3dMz83?=
 =?us-ascii?Q?BwzgXFqvA7+frAHcd9TqHwDNFDYHCnFXl3qw3pOty19fE/VzIabpCbj1zXlo?=
 =?us-ascii?Q?mXc9Pgxl/yzIzrHbe06nmmiCNeahLxKbBz+jC1JREnk+AjaP7FrLNS8xI2VF?=
 =?us-ascii?Q?BevruB9xYQ26vu1qVYsroH8NUgrBMbrR3HJBwoEPMF2Lu0v45cakKuXh7KPI?=
 =?us-ascii?Q?sj/7mZTQhhdBmBSx2wCCTe7vuNchKjTELTSGNQliNRaJVGBELm6noK6hzRRp?=
 =?us-ascii?Q?L25jH2WDiMM5HH/p+N+xn7/oJgr+oD37f9UGA2xRpvQWGfwo0I1duajuf8B1?=
 =?us-ascii?Q?feHSKM6pnkztvPo4INSlOAoLbbQ3LuA+IiPupmflo5nSoJzhTlu5bHFiwr9g?=
 =?us-ascii?Q?+ojtlutmx7rGrV2Mx0/IeSffx7bg45jjpGDN+WXpmw81YPhPbqnfOQC3FpAI?=
 =?us-ascii?Q?uZe+fQ8s/YP8toAlDFcPrXTalp8RgDn9edlOHwDs1f+SRQBoD7gMNffd7aRl?=
 =?us-ascii?Q?Z2Oz+i8XmDqFGZtiaGVZQ0Z2Zc9uDiLBjTE7m+cvex5tmhEKFy1qNVLiBhSQ?=
 =?us-ascii?Q?cixefYjKlw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 547e3e46-1d60-4c6a-740e-08de783d0132
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 09:20:54.3152 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 380lLz0i9/Sc2A/SKo6Qef2VkUvCvMVjqOdgJQ59La16bNHawtrApcLmUbMmbL8XlbEiw0HfhWXB/pd8SoKViA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7272
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.974];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DED181D5748
X-Rspamd-Action: no action

On Mon, Mar 02, 2026 at 02:34:45PM +0530, Murthy, Arun R wrote:
> On 02-03-2026 13:27, Imre Deak wrote:
> > On Wed, Feb 25, 2026 at 09:03:06AM +0530, Murthy, Arun R wrote:
> > > On 24-02-2026 20:20, Imre Deak wrote:
> > > > On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
> > > > > Its observed that on AUX_CH failure, even if the retry is increased to
> > > > > 1000, it does not succeed. Either the command might be wrong or sink in
> > > > > an unknown/sleep state can cause this. So try waking the sink device.
> > > > > Before reading the DPCD caps wake the sink for eDP and for DP after
> > > > > reading the lttpr caps if present and before reading the dpcd caps wake
> > > > > up the sink device.
> > > > > 
> > > > > v2: Use poll_timeout_us (Jani N)
> > > > >       Add the reason, why this change is required (Ville)
> > > > > 
> > > > > Closes: https://issues.redhat.com/browse/RHEL-120913
> > > > I wonder what should be the rule with non-public links like the above.
> > > > For instance, we do not put VLK-xxx links exactly because those are
> > > > non-public. Should/could we demand that RedHat opens a public ticket?
> > > > Jani?
> > > There is a JIRA as well
> > > https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
> > The above ticket is about an
> > 
> > "AUX x did not complete or timeout within 10ms"
> > 
> > error, which means the DPTX didn't complete the transfer. A transfer is
> > completed either (a) in response to a DPRX reply (AUX ACK,NAK,DEFER
> > reply) or (b) in case the DPRX is not replying at all. The above error
> > indicates that DPTX observed/signaled neither a or b. That's a problem
> > in the DPTX not in the DPRX which this patch is trying to fix (by
> > setting the DPRX power state to D0).
> On a Native AUX_CH transaction DPRX can reply with AUX_ACK/NACK/DEFER as per
> Table2-177 in the Spec DP2.1.
> In the error from the above ticker, we are getting a timeout for a AUX_CH
> initiated by DPTX.

No, we are not getting a timeout from the DPTX AUX HW in the unrelated
ticket you refer to. The error message in the unrelated issues/4391
ticket you refer to merely indicates that the _SW polling_ for
completion times out, which is a completely different thing.

Please open a public ticket with the information I asked, from my side
any workaround like the one suggested in this patch is not acceptable
until that info is available.

> Section 2.3.4 of Spec DP2.1 says timeout can be due to No Reply and the
> reason for No Reply is either sending invalid command or DPRX in sleep state
> or waking up from sleep state.
> 
> As part of this state, this patch is trying to wake the DPRX by setting to
> D0.
> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
> 
> > Please open a separate public ticket for the actually reported
> > RHEL-120913 issue - which based on the changes in this patch must have a
> > separate root cause than issues/4391 - and attach a dmesg log having the
> > AUX logging enabled (drm.debug=0x10e) and reporducing the problem. Also
> > please ask the reporter to provide the details of the connected eDP
> > panel model and wiring to the CPU (is there any retimer, mux etc. HW
> > component between the CPU and the panel?).
> > 
> > > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/display/intel_dp.c       | 38 +++++++++++++++++++
> > > > >    drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> > > > >    .../drm/i915/display/intel_dp_link_training.c |  3 ++
> > > > >    3 files changed, 42 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > index 025e906b63a9..fa0730f7b92a 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > > > @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
> > > > >    	intel_edp_set_data_override_rates(intel_dp);
> > > > >    }
> > > > > +/* Spec says to try for 3 times, its doubled to add the software overhead */
> > > > > +#define AUX_CH_WAKE_RETRY	6
> > > > > +
> > > > > +void intel_dp_wake_sink(struct intel_dp *intel_dp)
> > > > > +{
> > > > > +	u8 value = 0;
> > > > > +	int ret = 0;
> > > > > +
> > > > > +	intel_dp_dpcd_set_probe(intel_dp, false);
> > > > Is there any particular reason to turn off/on the probing? I don't see
> > > > any reason why the DP_SET_POWER polling would need that. In any case
> > > > turning it off/on this way is not ok: reading the DPRX caps, which would
> > > > call this function, could happen at any time after a sink gets
> > > > connected, so turning probing back on at the end of this function would
> > > > re-enable it incorrectly for sinks where it's been already established
> > > > that the probing workaround is not needed and should stay disabled.
> > > This function intel_dp_wake_sink() is called from edp_init_dpcd and
> > > dp_init_lttpr_dprx_caps.
> > > dpcd_set_probe is set to true in dp_aux_init which is called before calling
> > > intel_edp_init_connector.
> > > 
> > > Probe is set to true, hence in this function I am setting it to false and
> > > then setting back to true.
> > > But there can be a possibility of reading lttpr_dprx_caps being called later
> > > as well.
> > > 
> > > Will correct this to check if probe is already being set to true, will then
> > > disable before waking the sink and restore the probe status at the end.
> > > 
> > > Will get this corrected in the next revision.
> > > 
> > > Thanks and Regards,
> > > Arun R Murthy
> > > -------------------
> > > 
> > > > > +
> > > > > +	/*
> > > > > +	 * Wake the sink device
> > > > > +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
> > > > > +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> > > > > +	 */
> > > > > +	ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value),
> > > > > +			      ret > 0,
> > > > > +			      1000, AUX_CH_WAKE_RETRY * 1000, true);
> > > > > +
> > > > > +	/*
> > > > > +	 * If sink is in D3 then it may not respond to the AUX tx so
> > > > > +	 * wake it up to D3_AUX_ON state
> > > > > +	 * If the above poll_timeout_us fails, try waking the sink.
> > > > > +	 */
> > > > > +	if (value == DP_SET_POWER_D3 || ret < 0) {
> > > > > +		/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
> > > > > +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> > > > > +				   DP_SET_POWER_D0);
> > > > > +		fsleep(1000);
> > > > > +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> > > > > +				   DP_SET_POWER_D3_AUX_ON);
> > > > > +	}
> > > > > +
> > > > > +	intel_dp_dpcd_set_probe(intel_dp, true);
> > > > > +}
> > > > > +
> > > > >    static bool
> > > > >    intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
> > > > >    {
> > > > > @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
> > > > >    	/* this function is meant to be called only once */
> > > > >    	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
> > > > > +	intel_dp_wake_sink(intel_dp);
> > > > > +
> > > > >    	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
> > > > >    		return false;
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > > > > index b0bbd5981f57..3f16077c0cc7 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > > > @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
> > > > >    bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> > > > >    				     int hdisplay,
> > > > >    				     int num_joined_pipes);
> > > > > +void intel_dp_wake_sink(struct intel_dp *intel_dp);
> > > > >    #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
> > > > >    	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > index 54c585c59b90..cbb712ea9f60 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > > > @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> > > > >    		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> > > > >    	}
> > > > > +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> > > > > +	intel_dp_wake_sink(intel_dp);
> > > > > +
> > > > >    	/*
> > > > >    	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
> > > > >    	 * it here.
> > > > > -- 
> > > > > 2.25.1
> > > > > 
