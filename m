Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MEM/C1cQPGq3jQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 19:13:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB96C0444
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 19:13:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=HsWyMfPX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91B0610EFB9;
	Wed, 24 Jun 2026 17:13:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B08B410E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 17:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782321235; x=1813857235;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=ES5N1zA07CJSEY9AcUc+cTqzYxK5Ggu3kCj5z3QM/uk=;
 b=HsWyMfPXwNCWUZfYpeRPpVvd8+ypE0ZkYXc0IjPIhL9fC4WERPG+m+Qo
 LQtyXvPgosnY0Pp47IL03NJ/1yMj0YQWbpvgqF15G2IZn/l+d+uBospQ+
 iTvEbTILKy9yWyP+FT83Jq91dA55mMB16MLSg3Q/ibWXdZGBOdyh9lxm8
 7CHyxoLxBvUw00qS4MyHonn2T3qJTt0Sx2+L6mKy/xGh12Yj7QCd2LWwJ
 X373AwOAY4WUHg+pGuUemvQ8yZIVfoBsfj0h46/eTmdh9ykkNdyNgzgf7
 Z30tLLYHpmxHi7egv2+tuoGrx7cDzpmE2iS5YbNucdiHU97xsZQbfUIhv w==;
X-CSE-ConnectionGUID: nu/CImMSSLG0qvGcVVWZEw==
X-CSE-MsgGUID: rkyXzX/lR2yXfMRQHxJLhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="82212292"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="82212292"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 10:13:54 -0700
X-CSE-ConnectionGUID: 2ny8zB3GQdyyLW1sPCLxqQ==
X-CSE-MsgGUID: D4QlOS1fSPOjlVVZ2IuX8w==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 10:13:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 10:13:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 10:13:53 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.71) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 10:13:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fXDZ9QvxaXJayQCT5+BPXwM3chKvzaMPbS2CGt0IinWAnWaIoFSC0lKEVaThzJiM60G/mVm2CLF47eirRrKUsdRXJavBNXPSRY5/h81KS5wPVYnaMnP3As55R7ELomqcF4Wtd745YEt9WIzVbyGCxqD6sTiADj1s8QerM96cCtwZthki84L/njkePevonOqc9l7CzF48//4JUlsaWFgNt8K1oRBxFDFm/47YQbQ+fupYyGtRJKWsQdWgCsGzI8xw1XyGCJ7vkNXkijlKDHUJqShkPDAVc+cB8YdG1d3ZtqD1C0KvuxudGUpj/fRnnvWFZfs+sEHVefFbZMm4DbKUtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CB+k2xXY7xRI5smCTw4Fxj9vYrOWUfB7z2O51bkxgT0=;
 b=EMbD/SxugvB+fwjTYok19UzcZINngamrlmX9aEdPehew6IsbIhB6ad/RvncBB7EWw9m2AxZ4E78jOw6hhWu/moLaXC1vB1/JayK3m7WHAskCbGnBMtSqBVDLATS5e/E0MxaiF3bfxh2llANiS7aQN2BdgmbmXU/wu5fuKFs7UWBcMt84kKiDZz44A+fbPLK2FGPbKYoSZZJt35KuH0Vg+bZVWZUQK7/RCnvu5DVOJwgq9QLKxh9J0FnOHUk3ExCK4fAzfMHG7UbCZAW9A447NptRNdrGVFmiObzzfPrfiq64JQIcL5vYyNjA+wyghDZc6N0cfuES6L1larM49q1quA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DSWPR11MB9763.namprd11.prod.outlook.com (2603:10b6:8:355::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 17:13:51 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.012; Wed, 24 Jun 2026
 17:13:51 +0000
Date: Wed, 24 Jun 2026 20:13:44 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Mika Kahola <mika.kahola@intel.com>, 
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>, Nemesa Garg
 <nemesa.garg@intel.com>, Luciano Coelho <luciano.coelho@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?= =?utf-8?Q?ces?=
 =?utf-8?Q?s?= for drm/i915/dp_link: Refactor DP link capability logic part1
Message-ID: <ajwQSILMcfF88-hV@ideak-desk.lan>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <178171968037.90144.15453870583643285325@6beec6c84f66>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <178171968037.90144.15453870583643285325@6beec6c84f66>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239FF.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2b7) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DSWPR11MB9763:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e036723-d02b-4ac8-ff76-08ded213f5fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|18002099003|22082099003|4143699003|6133799003|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: 6dah/6DjjA9NvrxmmOCVrnjF+FWxPswDLQOCaW5nfDMdl6YBSr5GkypHZru0sJozUj557VFNGThgH0DBHukB4wqOKlO2Ljhnn321+y2bd58VFn/t4E9p0LB7kFRy8S5qPwq34mG2kDDL0wkzwm/OHh15NMPVXud4WmU1AypS3w7b6eXFxPMQdv4VgOCfJyXdN57uufpOxCqIZVta67uIMCQyfdDrGxu8fDP9obdNprpghZDgbVpZgyLLVMlhxSlfbeHcr/69cRqb2KWBL+wWujhSQt8OgrRxC+IgXVKgsk72KWBtgSfKg6dhWJm0XpA5sfo+UeUd0sw8icO0U2Uy1P1xhV8ACohldhrcwad5MDwLC6wYxj8xs83vmIR3cUALgyjQJFS4nxdlntPkfGKtanEbP33SbaXy32fkjN9jVVEaegwsYtM2KVyl2Aff88x8ieVRO/APrp7tEJgpWkuj6lJXHv9VVarg6fET+6/zZbwDRG4ZD5gezWmmZygcFlZYfrCyppT+QmJyQrFuNNRNihf6mybHjDUlHodlDNK+hIDdGMcD5beuAUJIauZ97hBA8TSJ+7Rc18F1ilK6ESU2JPRXLMKnOLlAkfG7X8eDo5Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(18002099003)(22082099003)(4143699003)(6133799003)(11063799006)(56012099006)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MEZ+yhWMc3r4Pul20vHHs696v0v+WNFvuzsEpa2rk8rlNpv1Uq+3SC0cCEVF?=
 =?us-ascii?Q?lMgfaGINrXzRvszcRq9fwficHomMNT017GEqlFkDICRBKOSdthanBQDJ84YR?=
 =?us-ascii?Q?eXY4FbcAFGAq8J6t/ORfEexUixV2NmzSqpZVDeCeWq6GYRc+E+1WvVqvAonE?=
 =?us-ascii?Q?K4WnCtFhZpnF6+RRFtVNd5HYeORoeoupdTvBQI6yRlsvx19mB1A+8btVuBol?=
 =?us-ascii?Q?JgF47s5kETWS7dN7u06yWSw+JSfsXOkKub37xQAL5ra72z+Zp7nMAyyRmti9?=
 =?us-ascii?Q?p7LUR4pSukBq2SW8HOp2vbE3OxGcARoAcWmvSaWzfETHqmuJAutVfUiqZYOl?=
 =?us-ascii?Q?uhSL0jbvDHCK0RALWygliZR+5pi7P4zpGryw/GilJn0SY1R2Cf3y6qejJ8Rg?=
 =?us-ascii?Q?CNaY/q9vEJRgQSqFakvTJLM1W/DRIXnbkdVVKzXG7CBBXuTTx6TbYNBgqwUs?=
 =?us-ascii?Q?Nd7AVP+S72d4QAEKfDiir13yj0s3RmF9fNDsUf50Mj5sPHk5nVtnqfqi2SfG?=
 =?us-ascii?Q?UvCZNFit1Fqj0LEc6dH/PY6lWHhJaON1gQq6IXD2RMyAde/9W+95rKwkANVx?=
 =?us-ascii?Q?IQUYaxVQS0EQFsnaDqPBsrSUkx/LVf920YjVFrOG2yMo3JOQ3AU98OcyyHie?=
 =?us-ascii?Q?sfx15HiGO3R/Umz6mDfRkY3KBjGlLrlIQMyn9KZUBBrGO9ePfKGaRLTJeoLF?=
 =?us-ascii?Q?PA3WT1352I+pLcs8XA4HObE4eDSIVoh2TellGxoEZ8zO26KFdOwKrHfO10fa?=
 =?us-ascii?Q?YEBRHBC7KhWl6LvRY7KLU0fO3/wEPFB1JqaO/avs8tW3et5xojE03w3lJzU+?=
 =?us-ascii?Q?f2bg87Xv9FovZeu3J4OCci6bbRCEwLQ1ykr4JllckVMB3oCj+8gpDG7/LC8o?=
 =?us-ascii?Q?D5zDa/PBG7Bj7C1QGdQD/5BEUjpnlkJsyC2SmRloYgPg/KPd0gvErTlu+ujm?=
 =?us-ascii?Q?rcQ2TMw8e+iKdlAfPvl7xYJUxWR3AMbveotx3Dl0MPbFJlUrLvceHKvIvbNM?=
 =?us-ascii?Q?bfqQ5trOjd/lovy2Y4R2YVQgXIJWzR9DAPbYMepCOfvyXmD/u3UdiJXw5KgQ?=
 =?us-ascii?Q?qf35Y+CrpDZ1eU8U+GwK63oHpBGK58WhNqBFqD0oq5MtOEeAuodBGhG3w4xu?=
 =?us-ascii?Q?5wOmXl0wx3/yNSW8KCRbn+Bqu9uX4X+43ZEsjh/d4Naw6Dfeh7MvttzhlXY2?=
 =?us-ascii?Q?yPu86wdlW3GAWoFMzpphCehG6f/ta0lqGyvhXXj6RRrepriTx9GIDe/E+VRw?=
 =?us-ascii?Q?2c4xTULthRWP8WG2vYjNSuMU6hTE8fvaA3cw8CqMwO6FBlvD+0u2qpUGDJFQ?=
 =?us-ascii?Q?PNAkuoUyywArHETuNw3N7VGXhXPIx9RLj9Q97XLNwZMYhWPAEmY/N8kVWVw8?=
 =?us-ascii?Q?59RW/6Fg7ZD+NeQHSdYznp9BZelLZvuBk8uAk6BB2pMJNm+mheZSJziN6XVX?=
 =?us-ascii?Q?dmphuMWWpAkwMnpo0L8ALATEvoLdcXHME8C+342SQG7MQFDh43dQpn/HhypS?=
 =?us-ascii?Q?XT7QAqsZDi7ZPcKG1Mc0t6fxoJtiVXShn6bVbhIlGi36ZNikN2dZqgeEh5tR?=
 =?us-ascii?Q?KQHLvUNY7GTHILmwp71wGCEhfwFYbweseUvLkz3qps3G7nDMVCYynvecEEWT?=
 =?us-ascii?Q?bDI3eXN2gYmqdPTKbRP04tvOh1DGDq00Ty61U/L9pEgOeBU5Bp4Qdtr+9aUu?=
 =?us-ascii?Q?voPN3rcBbuPSZaL3woo7T6SB/AFamfWWChnJxOUKV0oZBaPKm/J1FgpF2HIg?=
 =?us-ascii?Q?lHwWZeBcvA=3D=3D?=
X-Exchange-RoutingPolicyChecked: rgGMYHStEatwGklml28J4x6g7HFUHWu/e2HyjQ+dF3zsajlzCABBv8TkmyN5qwJlyUvopKf70ABiWc55dyZ9RAo4ofnbI1naAu/1P3FBP7oBNZBjymo1GLw7ssdNGW6rtYPCgMEzg0GQ0n9x93Wmz0s2efs79JUin+ZmWj/MmRtHy7aNDGBaOqa+wVtNj3Tziuc5MzLOMSVnvHJjcOhPWjGqBr/h63/GNoVYVCUg7Dtrk9peMqRpn6Boiq6rinqbsuwgD6dC2PLjaWz+NEwTxyFwLMQbarRYEe9nEQjaoP4qEK/dgwu2TUomvJUILm7QK7LyYiykeiiEM7A4fiYrgA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e036723-d02b-4ac8-ff76-08ded213f5fb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 17:13:51.0904 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8WTGRiXsdT3jgr9MGUusQZBFoGa4MSIz+60hLEbV3tVRaeiV3BV4UAPsD5fNjFdGIP4qGiuVAhXDi7z3tWLfKA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9763
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [10.49 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:mika.kahola@intel.com,m:michal.grzelak@intel.com,m:nemesa.garg@intel.com,m:luciano.coelho@intel.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:-];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09AB96C0444
X-Spam: Yes

On Wed, Jun 17, 2026 at 06:08:00PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_link: Refactor DP link capability logic part1
> URL   : https://patchwork.freedesktop.org/series/168633/
> State : success

Thanks for the reviews, patchset is pushed to drm-intel-next.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18691_full -> Patchwork_168633v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_168633v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#11078])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@device_reset@cold-reset-bound.html
> 
>   * igt@dmabuf@all-tests:
>     - shard-tglu-1:       NOTRUN -> [SKIP][2] ([i915#15931])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@dmabuf@all-tests.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#15678])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#3936])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_busy@semaphore.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#6335])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#8562])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8555])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#280])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg1:          [PASS][9] -> [DMESG-WARN][10] ([i915#13390] / [i915#4391] / [i915#4423])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-16/igt@gem_eio@in-flight-suspend.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-18/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglu-1:       NOTRUN -> [DMESG-WARN][11] ([i915#13363])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#4771])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#4525])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#4525])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu-1:       NOTRUN -> [FAIL][15] ([i915#15816])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@gem_exec_big@single.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +2 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#3281]) +5 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][18] -> [INCOMPLETE][19] ([i915#13356]) +1 other test incomplete
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][20] ([i915#4613]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4613])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4613])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#4613]) +1 other test skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#4613]) +1 other test skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4077]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gem_mmap_gtt@flink-race:
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4077]) +3 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_mmap_gtt@flink-race.html
> 
>   * igt@gem_mmap_wc@bad-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4083])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_mmap_wc@bad-size.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4083]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3282]) +1 other test skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pread@display:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3282])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_pread@display.html
> 
>   * igt@gem_pwrite_snooped:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#3282]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@gem_pwrite_snooped.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#13398])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][33] ([i915#8428])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_render_copy@yf-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4079])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#3297])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#3297]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3297])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglu-1:       NOTRUN -> [SKIP][39] ([i915#2527] / [i915#2856])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-tglu:         NOTRUN -> [SKIP][40] ([i915#2527] / [i915#2856])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#2856]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][42] ([i915#14118])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@i915_drm_fdinfo@virtual-busy.html
> 
>   * igt@i915_module_load@fault-injection@__uc_init:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#15479]) +4 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@i915_module_load@fault-injection@__uc_init.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-rkl:          NOTRUN -> [ABORT][44] ([i915#15342]) +1 other test abort
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@i915_module_load@fault-injection@intel_connector_register.html
>     - shard-tglu:         NOTRUN -> [ABORT][45] ([i915#15342]) +1 other test abort
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#15479]) +4 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#6412])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#11681] / [i915#6621])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-park:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#11681])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@i915_pm_rps@thresholds-park.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#16109])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#16079])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][52] ([i915#4817] / [i915#7443])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#7707])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#7707])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5190])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#4212])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#12454] / [i915#12712])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][58] ([i915#12761]) +1 other test incomplete
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_async_flips@async-flip-suspend-resume.html
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][59] ([i915#12761])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk10/igt@kms_async_flips@async-flip-suspend-resume.html
> 
>   * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][60] ([i915#12761] / [i915#14995])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk10/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#3555])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#5286]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#5286]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#5286]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3638])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#3828])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][67] ([i915#3828])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][69] +41 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#6095]) +44 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#6095]) +9 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-rc-ccs@pipe-b-edp-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#14544] / [i915#6095]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][73] +250 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#14098] / [i915#14544] / [i915#6095])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#6095]) +65 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#10307] / [i915#6095]) +85 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#6095]) +29 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#12805])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#6095]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][80] ([i915#15582]) +1 other test incomplete
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#14098] / [i915#6095]) +37 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#12313])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#12313]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#6095]) +163 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-14/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#12313])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#13781]) +4 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#11151] / [i915#7828]) +1 other test skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#11151] / [i915#7828])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#15865])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#15330])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@suspend-resume:
>     - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#15865])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_content_protection@suspend-resume.html
> 
>   * igt@kms_content_protection@uevent-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#15865]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_content_protection@uevent-hdcp14.html
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#15865]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_content_protection@uevent-hdcp14.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42:
>     - shard-rkl:          [PASS][98] -> [FAIL][99] ([i915#13566]) +3 other tests fail
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-128x42.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][100] ([i915#13566]) +1 other test fail
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][101] ([i915#3555]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#13049])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#13049])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#3555])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][105] -> [FAIL][106] ([i915#13566]) +1 other test fail
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3555]) +2 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#9809])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#13046] / [i915#5354])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][110] ([i915#15804])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#9067])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][112] ([i915#1769] / [i915#3555] / [i915#3804])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#3804])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#3804])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_link_training@non-uhbr-mst:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#13749]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@kms_dp_link_training@non-uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#13707])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-basic-ultrajoiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#16361])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_dsc@dsc-basic-ultrajoiner.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats-bigjoiner:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#16361])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_dsc@dsc-with-bpc-formats-bigjoiner.html
> 
>   * igt@kms_dsc@dsc-with-formats-bigjoiner:
>     - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#16361]) +1 other test skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_dsc@dsc-with-formats-bigjoiner.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-bigjoiner:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#16361])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_dsc@dsc-with-output-formats-bigjoiner.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][121] ([i915#9878])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#16081])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#9337])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#658])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#9934])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#3637] / [i915#9934]) +1 other test skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#9934]) +5 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#3637] / [i915#9934]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-rkl:          [PASS][129] -> [INCOMPLETE][130] ([i915#16276] / [i915#6113]) +1 other test incomplete
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#15643])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#15643])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#15643]) +2 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#15643]) +2 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#15990] / [i915#8708]) +3 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#15989]) +5 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-tglu-1:       NOTRUN -> [SKIP][137] +44 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-msflip-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#15991]) +12 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
>     - shard-rkl:          [PASS][139] -> [SKIP][140] ([i915#15989]) +7 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#15989]) +7 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-suspend:
>     - shard-glk10:        NOTRUN -> [INCOMPLETE][142] ([i915#16056])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk10/igt@kms_frontbuffer_tracking@fbchdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#15104] / [i915#15990])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#1825]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#15989]) +6 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][146] +32 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#15989]) +6 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary:
>     - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#15989]) +8 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][149] ([i915#16056])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#15102]) +18 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#15102] / [i915#3023]) +6 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#15990] / [i915#8708]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#15991] / [i915#5354]) +6 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#15991] / [i915#1825]) +4 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#15102]) +6 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#15102]) +22 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#15990])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-glk11:        NOTRUN -> [SKIP][158] +102 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk11/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#15102]) +5 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-pri-indfb-multidraw:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#15991]) +6 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psrhdr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#15990]) +5 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdmi_inject@inject-audio:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#15725])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#16012]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-2/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html
> 
>   * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][164] ([i915#16012]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-15/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010.html
> 
>   * igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#16011]) +3 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-6/igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010.html
> 
>   * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f:
>     - shard-glk10:        NOTRUN -> [SKIP][166] +9 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk10/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb16161616f.html
> 
>   * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-3-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#16011]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-12/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-3-xrgb2101010.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#15460])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#15458])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#15458])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#6301])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#6301])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][174] +2 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][175] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][176] ([i915#13705])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping:
>     - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#15709]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#15709])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#15709]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#16386]) +1 other test skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#15709])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#13958])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#14259])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#15329]) +4 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#15329]) +4 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#15948])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#8430])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][188] -> [SKIP][189] ([i915#15073])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#15073])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-dg2:          [PASS][191] -> [SKIP][192] ([i915#15073])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg1:          [PASS][193] -> [SKIP][194] ([i915#15073])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@system-suspend-idle:
>     - shard-dg2:          [PASS][195] -> [INCOMPLETE][196] ([i915#14419])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg2-1/igt@kms_pm_rpm@system-suspend-idle.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#6524])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#12316]) +1 other test skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#11520]) +2 other tests skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#11520]) +2 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#11520])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-glk11:        NOTRUN -> [SKIP][202] ([i915#11520]) +2 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk11/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#11520]) +6 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][204] ([i915#11520]) +6 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#9683])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9683])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#9688]) +2 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#9732]) +6 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@pr-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#9732]) +8 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_psr@pr-dpms.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-mtlp:         NOTRUN -> [SKIP][212] ([i915#4235])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#5289])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-rkl:          NOTRUN -> [ABORT][214] ([i915#13179]) +1 other test abort
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#3555] / [i915#8809])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_vblank@ts-continuation-idle:
>     - shard-dg1:          [PASS][216] -> [DMESG-WARN][217] ([i915#4423]) +1 other test dmesg-warn
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-16/igt@kms_vblank@ts-continuation-idle.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-18/igt@kms_vblank@ts-continuation-idle.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#3555]) +2 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-3/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-mtlp:         [PASS][219] -> [FAIL][220] ([i915#15420]) +1 other test fail
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-mtlp-3/igt@kms_vrr@negative-basic.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#2436])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start:
>     - shard-mtlp:         [PASS][222] -> [FAIL][223] ([i915#4349]) +2 other tests fail
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-mtlp-1/igt@perf_pmu@busy-double-start.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-4/igt@perf_pmu@busy-double-start.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-tglu:         NOTRUN -> [ABORT][224] ([i915#15778])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-8/igt@perf_pmu@module-unload.html
>     - shard-glk11:        NOTRUN -> [ABORT][225] ([i915#15778])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-glk11/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#8516])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-9/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-rkl:          [PASS][227] -> [INCOMPLETE][228] ([i915#13520])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@perf_pmu@rc6-suspend.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_udl@share-import:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#16420])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-1/igt@prime_udl@share-import.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][230] ([i915#16066]) +8 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-random.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live:
>     - shard-dg1:          [DMESG-FAIL][231] ([i915#15560]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-16/igt@i915_selftest@live.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-19/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - shard-dg1:          [DMESG-FAIL][233] ([i915#15433]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-16/igt@i915_selftest@live@gem_contexts.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-19/igt@i915_selftest@live@gem_contexts.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [INCOMPLETE][235] ([i915#4817]) -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_color_pipeline@plane-lut1d-lut1d:
>     - shard-dg1:          [DMESG-WARN][237] ([i915#4423]) -> [PASS][238] +2 other tests pass
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-19/igt@kms_color_pipeline@plane-lut1d-lut1d.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-17/igt@kms_color_pipeline@plane-lut1d-lut1d.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-tglu:         [FAIL][239] ([i915#13566]) -> [PASS][240] +1 other test pass
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-tglu-7/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_force_connector_basic@force-edid:
>     - shard-mtlp:         [SKIP][241] ([i915#15672]) -> [PASS][242]
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-mtlp-4/igt@kms_force_connector_basic@force-edid.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [SKIP][243] ([i915#15989]) -> [PASS][244] +16 other tests pass
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-pwrite.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          [SKIP][245] ([i915#16012] / [i915#3555] / [i915#8228]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_hdr@bpc-switch-dpms.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:
>     - shard-rkl:          [SKIP][247] ([i915#16012]) -> [PASS][248] +1 other test pass
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [SKIP][249] ([i915#16011] / [i915#3555] / [i915#8228]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-1/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          [INCOMPLETE][251] ([i915#12756] / [i915#13476]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg1:          [SKIP][253] ([i915#15073]) -> [PASS][254] +1 other test pass
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-12/igt@kms_pm_rpm@dpms-lpsp.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][255] ([i915#15073]) -> [PASS][256] +3 other tests pass
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@system-suspend-idle:
>     - shard-rkl:          [INCOMPLETE][257] ([i915#14419]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_pm_rpm@system-suspend-idle.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][259] ([i915#14544] / [i915#8411]) -> [SKIP][260] ([i915#8411])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          [SKIP][261] ([i915#11078]) -> [SKIP][262] ([i915#11078] / [i915#14544])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][263] ([i915#3281]) -> [SKIP][264] ([i915#14544] / [i915#3281]) +3 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@gem_bad_reloc@negative-reloc-lut.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          [SKIP][265] ([i915#9323]) -> [SKIP][266] ([i915#14544] / [i915#9323])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          [SKIP][267] ([i915#14544] / [i915#280]) -> [SKIP][268] ([i915#280])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [ABORT][269] ([i915#15131]) -> [INCOMPLETE][270] ([i915#13390])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-1/igt@gem_eio@in-flight-suspend.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          [SKIP][271] ([i915#14544] / [i915#4525]) -> [SKIP][272] ([i915#4525])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_reloc@basic-write-read:
>     - shard-rkl:          [SKIP][273] ([i915#14544] / [i915#3281]) -> [SKIP][274] ([i915#3281]) +4 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][275] ([i915#7276]) -> [SKIP][276] ([i915#14544] / [i915#7276])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-rkl:          [SKIP][277] ([i915#4613]) -> [SKIP][278] ([i915#14544] / [i915#4613]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@gem_lmem_swapping@heavy-verify-random.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          [SKIP][279] ([i915#3282]) -> [SKIP][280] ([i915#14544] / [i915#3282]) +1 other test skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#3282]) -> [SKIP][282] ([i915#3282]) +1 other test skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-rkl:          [SKIP][283] ([i915#3297]) -> [SKIP][284] ([i915#14544] / [i915#3297])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@bb-start-out:
>     - shard-rkl:          [SKIP][285] ([i915#2527]) -> [SKIP][286] ([i915#14544] / [i915#2527]) +1 other test skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          [SKIP][287] ([i915#14544] / [i915#2527]) -> [SKIP][288] ([i915#2527]) +1 other test skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          [SKIP][289] ([i915#6412]) -> [SKIP][290] ([i915#14544] / [i915#6412])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@i915_module_load@resize-bar.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-reset:
>     - shard-rkl:          [SKIP][291] ([i915#8399]) -> [SKIP][292] ([i915#14544] / [i915#8399])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-rkl:          [SKIP][293] ([i915#14544] / [i915#16109]) -> [SKIP][294] ([i915#16109])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@i915_query@query-topology-known-pci-ids.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-4/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][295] ([i915#14544] / [i915#5286]) -> [SKIP][296] ([i915#5286]) +1 other test skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          [SKIP][297] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][298] ([i915#4538] / [i915#5286])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-13/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][299] ([i915#5286]) -> [SKIP][300] ([i915#14544] / [i915#5286]) +2 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][301] ([i915#3638]) -> [SKIP][302] ([i915#14544] / [i915#3638]) +1 other test skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-dg1:          [SKIP][303] ([i915#3638] / [i915#4423]) -> [SKIP][304] ([i915#3638])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-16/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#3638]) -> [SKIP][306] ([i915#3638])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs:
>     - shard-rkl:          [SKIP][307] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][308] ([i915#14098] / [i915#6095]) +4 other tests skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][309] ([i915#14544] / [i915#6095]) -> [SKIP][310] ([i915#6095]) +1 other test skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-2.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][311] ([i915#14098] / [i915#6095]) -> [SKIP][312] ([i915#14098] / [i915#14544] / [i915#6095]) +16 other tests skip
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][313] ([i915#6095]) -> [SKIP][314] ([i915#14544] / [i915#6095]) +14 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          [SKIP][315] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][316] ([i915#11151] / [i915#7828])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-read.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - shard-rkl:          [SKIP][317] ([i915#11151] / [i915#7828]) -> [SKIP][318] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          [SKIP][319] ([i915#14544] / [i915#15865]) -> [SKIP][320] ([i915#15865])
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_content_protection@atomic.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          [SKIP][321] ([i915#15865]) -> [SKIP][322] ([i915#14544] / [i915#15865])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_content_protection@legacy.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][323] ([i915#15865]) -> [SKIP][324] ([i915#9433])
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-17/igt@kms_content_protection@mei-interface.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-13/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          [SKIP][325] ([i915#13049]) -> [SKIP][326] ([i915#13049] / [i915#3359])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg2-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-10/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          [SKIP][327] ([i915#13049] / [i915#14544]) -> [SKIP][328] ([i915#13049])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#3555]) -> [SKIP][330] ([i915#3555]) +1 other test skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][331] ([i915#13691]) -> [SKIP][332] ([i915#13691] / [i915#14544])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_display_modes@extended-mode-basic.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          [SKIP][333] ([i915#13749] / [i915#14544]) -> [SKIP][334] ([i915#13749])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-sst.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#16361]) -> [SKIP][336] ([i915#16361]) +1 other test skip
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner:
>     - shard-rkl:          [SKIP][337] ([i915#16361]) -> [SKIP][338] ([i915#14544] / [i915#16361]) +1 other test skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          [SKIP][339] ([i915#3955]) -> [SKIP][340] ([i915#14544] / [i915#3955])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-rkl:          [SKIP][341] ([i915#9934]) -> [SKIP][342] ([i915#14544] / [i915#9934]) +2 other tests skip
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_flip@2x-dpms-vs-vblank-race.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#9934]) -> [SKIP][344] ([i915#9934]) +2 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][345] ([i915#15643]) -> [SKIP][346] ([i915#14544] / [i915#15643]) +2 other tests skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][347] ([i915#1825]) -> [SKIP][348] ([i915#14544] / [i915#1825]) +3 other tests skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg1:          [SKIP][349] ([i915#4423]) -> [SKIP][350] +2 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-19/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-render.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][352] ([i915#15102] / [i915#3023]) +5 other tests skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          [SKIP][353] ([i915#14544]) -> [SKIP][354] +26 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#5439]) -> [SKIP][356] ([i915#5439])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-render:
>     - shard-dg1:          [SKIP][357] ([i915#15989] / [i915#4423]) -> [SKIP][358] ([i915#15989])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-13/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-render.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-14/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@hdr-suspend:
>     - shard-rkl:          [INCOMPLETE][359] ([i915#16056]) -> [SKIP][360] ([i915#15989])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-suspend.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_frontbuffer_tracking@hdr-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][361] ([i915#10433] / [i915#15102]) -> [SKIP][362] ([i915#15102]) +1 other test skip
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
>     - shard-dg2:          [SKIP][363] ([i915#15102]) -> [SKIP][364] ([i915#10433] / [i915#15102]) +1 other test skip
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
>     - shard-rkl:          [SKIP][365] ([i915#15102] / [i915#3023]) -> [SKIP][366] ([i915#14544] / [i915#15102] / [i915#3023]) +5 other tests skip
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][367] ([i915#15990] / [i915#4423] / [i915#8708]) -> [SKIP][368] ([i915#15990] / [i915#8708])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-rkl:          [SKIP][369] ([i915#14544] / [i915#1825]) -> [SKIP][370] ([i915#1825]) +1 other test skip
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#15102]) -> [SKIP][372] ([i915#15102]) +8 other tests skip
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][373] -> [SKIP][374] ([i915#14544]) +41 other tests skip
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psrhdr-slowdraw:
>     - shard-rkl:          [SKIP][375] ([i915#15102]) -> [SKIP][376] ([i915#14544] / [i915#15102]) +14 other tests skip
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-slowdraw.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-slowdraw.html
> 
>   * igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-2-xrgb16161616f:
>     - shard-rkl:          [SKIP][377] ([i915#16076]) -> [SKIP][378] ([i915#16011]) +2 other tests skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-1/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-2-xrgb16161616f.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-2-xrgb16161616f.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          [SKIP][379] ([i915#15459]) -> [SKIP][380] ([i915#14544] / [i915#15459])
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_joiner@basic-force-big-joiner.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:
>     - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#15709]) -> [SKIP][382] ([i915#15709])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-rkl:          [SKIP][383] ([i915#15709]) -> [SKIP][384] ([i915#14544] / [i915#15709]) +2 other tests skip
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#15329]) -> [SKIP][386] ([i915#15329]) +3 other tests skip
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          [SKIP][387] ([i915#15329] / [i915#3555]) -> [SKIP][388] ([i915#14544] / [i915#15329] / [i915#3555])
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          [SKIP][389] ([i915#15329]) -> [SKIP][390] ([i915#14544] / [i915#15329]) +2 other tests skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][391] ([i915#15128]) -> [SKIP][392] ([i915#15739])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-tglu-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][393] ([i915#9340]) -> [SKIP][394] ([i915#3828])
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-2/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          [SKIP][395] ([i915#8430]) -> [SKIP][396] ([i915#14544] / [i915#8430])
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_pm_lpsp@screens-disabled.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [DMESG-WARN][397] ([i915#4423]) -> [SKIP][398] ([i915#15073])
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          [SKIP][399] ([i915#6524]) -> [SKIP][400] ([i915#14544] / [i915#6524])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_prime@basic-modeset-hybrid.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
>     - shard-rkl:          [SKIP][401] ([i915#11520] / [i915#14544]) -> [SKIP][402] ([i915#11520]) +2 other tests skip
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][403] ([i915#11520]) -> [SKIP][404] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][405] ([i915#9683]) -> [SKIP][406] ([i915#14544] / [i915#9683])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#9683]) -> [SKIP][408] ([i915#9683])
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-4/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - shard-rkl:          [SKIP][409] ([i915#1072] / [i915#9732]) -> [SKIP][410] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_psr@psr-sprite-plane-onoff.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          [SKIP][411] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][412] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-4/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#5289]) -> [SKIP][414] ([i915#5289])
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-rkl:          [SKIP][415] ([i915#3555]) -> [SKIP][416] ([i915#14544] / [i915#3555]) +1 other test skip
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-3/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          [SKIP][417] ([i915#8623]) -> [SKIP][418] ([i915#14544] / [i915#8623])
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          [SKIP][419] ([i915#9906]) -> [SKIP][420] ([i915#14544] / [i915#9906])
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-vrr.html
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-rkl:          [SKIP][421] ([i915#14544] / [i915#8516]) -> [SKIP][422] ([i915#8516])
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          [SKIP][423] ([i915#14544] / [i915#9917]) -> [SKIP][424] ([i915#9917])
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18691/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13363]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13363
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14995]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
>   [i915#15433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
>   [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
>   [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
>   [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
>   [i915#15816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15816
>   [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
>   [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
>   [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
>   [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
>   [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
>   [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
>   [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
>   [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
>   [i915#16056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16056
>   [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
>   [i915#16076]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16076
>   [i915#16079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079
>   [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
>   [i915#16109]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109
>   [i915#16276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276
>   [i915#16361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361
>   [i915#16386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386
>   [i915#16420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16420
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18691 -> Patchwork_168633v1
> 
>   CI-20190529: 20190529
>   CI_DRM_18691: 29ea43790111df065ed84e6cb076c64322c306f1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8966: 9b33225c761bfe8c8c266bc56558d75c700029fb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_168633v1: 29ea43790111df065ed84e6cb076c64322c306f1 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_168633v1/index.html
