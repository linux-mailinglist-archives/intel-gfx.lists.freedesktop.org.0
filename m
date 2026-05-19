Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2EUyFFGtDGqGkwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 20:34:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B1B583BF9
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 20:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA1910EE38;
	Tue, 19 May 2026 18:34:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+h6f3AA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A7610EE37;
 Tue, 19 May 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779215693; x=1810751693;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=62Nn4jggqTlIX4iZvRAodu9JuJUJNqc44+Hfx8DOWM0=;
 b=e+h6f3AA+mfwPmrFV4SuFrVrhX23Wmo9J+uHw6WjysOpzJOm1FR3d2sO
 ZvGl/DOQCbLf6a9L602fQwbY4kw0b+BmyajlN1vO7MTvWT6LuABZrh/sP
 seHCawzZkSJEdOH41CynTuvI3UK7hd50/iC0Kn7OwRrMMONd0JmSw9ewa
 sy+sAIZaF2lqj0aew1VAt9kUtVV8Y7jV+oQalmtjuG5GIpBgC3TlGnP+/
 PKCHXFa8yMlUsHTVfaymiOCaLRiDNLO6xjtriwBRRstUoMngr3ii1FEQX
 GeC6bEOYPJYOfMCSo+sKm03NgQwqHhTjSf0PAO6d1lYf/zV/2PeEantp6 A==;
X-CSE-ConnectionGUID: vW9LdoidTp6+PQVO0TCUzw==
X-CSE-MsgGUID: N+t8u2vNSBOCzkigbyyM6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="80136286"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80136286"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 11:34:53 -0700
X-CSE-ConnectionGUID: abILcIw4THiLAcWS89S2dw==
X-CSE-MsgGUID: vDo7jKH1TkuaTTYQ+WoiJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="244847348"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 11:34:53 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 11:34:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 11:34:53 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 11:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l/T0hI2JxLbB4HAld9BCLnGLey9sjsqDBvGy440NIVq1RYMppFs0ExZKDYODwr4RXbSyU1ACLj91j7zS+gSq7aQ8OOzABcf0QNt++Ave1K/PUI42L0/OTSLPcQHCoSeFFGqEGDDAhQeCq8Q4ad98ztVVczpfXjtUQhs68ttMiIN3e2ZTzSYsLK6yydTrju8HoEYob9Z4F1Zg8HFj2CI65FJ0vcdBXqb/nmNislLmuIaGVZJQI5rKgjwnF6Jhxok+De3xT201oH80quoaFBA5Dsf0dIzvg9wz+3dpjT4CIwErHtnsgiP4mHGonHWJG3p8FItp6LCqaVU8vw/i81Tz2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SaDEk//IKRKXNeLJpbLb9V1TEVKlwfm3/RT2PR5ICBc=;
 b=EROuKn1Yuz2AgIhEMlEcpc3HKVSCS2S8zzBPhzDF3WDDtNeTRGFxggRFxDnAk2/lt5on/dizoXBlYmMA2vpuHjJBfOp1ou0Ykoa5a2UHlsTPXr0F5ToG4QnlVn9NjIH0KTY/5bCbdUhNCWkinFtVoJPgKNuJWiJCcI6bSBf8lACb3gzQJTcUld+vzof8xYiY0SEdkAOyKQFUDQeRpeVK1/210eys8umeMZ7MD+P0m44MgFUCIUiP+M+mnUbf5nSCiYISPJ24J0uj3urbKjl3dHZtISLSsSsyoyJxaMRYlNEyUXA6NaCzWTNLZEZIk9xVAjKSFZirxS5e4p8uts5bsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL4PR11MB8845.namprd11.prod.outlook.com (2603:10b6:208:5aa::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Tue, 19 May
 2026 18:34:49 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.21.0025.022; Tue, 19 May 2026
 18:34:49 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Daniel Charles <daniel.charles@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: drm/i915/dmc_wl: Remove macro HAS_DMC_WAKELOCK()
In-Reply-To: <6a1d98fd-21d0-4f9f-88e2-de7a230fd9bc@intel.com>
References: <20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com>
 <6a1d98fd-21d0-4f9f-88e2-de7a230fd9bc@intel.com>
Date: Tue, 19 May 2026 15:34:44 -0300
Message-ID: <87mrxvp7sr.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0073.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL4PR11MB8845:EE_
X-MS-Office365-Filtering-Correlation-Id: cf6cbc1f-b5e1-40df-7a00-08deb5d54ed9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|4143699003|56012099003|22082099003|18002099003|11063799006;
X-Microsoft-Antispam-Message-Info: BxuCBwta6yBNETqlXSXZ/Aa1y05+4B0AP4wvZE58yEUdXF6dOksH38SU+BRFc5YgNZpj1HUR+o2bEqfknLNrWcQeB5Ka4h8lDGeJljCpD8oc9XQQIQqSiFWFU9kU3+djeMQrAEHh/BwWb3zey4eiui3hJ/W2PKXVTKjdNysamvASlmnAoW+H9kEU8DHAjaRIp2i16efg5pcgTQkAQCKAvxRO8HaY3A8B6spVFHjjyCl0OKywz2yIT43nmykPxmVzcUvLpiLULtr4AbMjtHkXko8+Z4QMZugFZgDh3MA/Pe99ka1zcWhjggTMyDHsYd/EPnNXB97diSO8pTC9ESOHWPT3Y6QTK8MkgQYXEg1gWl1pBSi5LerkLdJ2D78VuiYUYconn3hfDbQgflTIeKDP64xHpqaVjA028yaY+h1ZFJlYmFWmumJfgLgSwzeam7xVr5yeHz2ZF3V/JyDXDuPvA1C19etBvpN45Vfw9uvPPfqG6cOEsMfUBBtobSyEOFPS7jZ+yAlQaWyOJdmHcvGmzb8keoPDd2jy7Ftl2LNBZ/TrCw8Al6AyyfWmkBPUt4GYz3d8JXkoG30cWh0plrYto4DzFsFCdJITLgc74fqoiaOxK8Y7MiqKPnFL9usjw3K+Tg36vU7JR/AWdPcllkDcR6yon46AeeAn90f5SjqN8JL05os0dp03+U9rwpbux9vw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(4143699003)(56012099003)(22082099003)(18002099003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iB+qT5eJ4dFvhJH6IdU6ucsOehHVScQLJ+kndJH5qwb2Mx6u9cD3wpUHnmjj?=
 =?us-ascii?Q?JKmKmUs1i4fS8c1K+tpa6l0ZzfH2odHyco1a24/LdTBPQsY+6g8lNDUkX5CR?=
 =?us-ascii?Q?JMdb0QHU5k8jZJMfSSorYJz+UDLrJ294CpnSzJh99FxhdiTvEuqeEsxDRs/u?=
 =?us-ascii?Q?XBao1a8WEqZPTUx6OyOIqf/YnhHjaasbBSc4pISFgIYAek5AqrnW/SijSyuy?=
 =?us-ascii?Q?Mg91wJupaWmBXft3Ltf2ZRrBvPzRtjK6+UV1Lu+uzBn1Z489unsCrdL19tVe?=
 =?us-ascii?Q?KkWSt9pmRnRod4Y/U2vA2W/KrMzaj2bQU0nUOMtRY5pa3qHAG40MtXsqAgij?=
 =?us-ascii?Q?sxW41T9WKnpRJVTxpIUam18JFGTm8rwPkuAROlVXECY76q8KUOXTjyK+R7XQ?=
 =?us-ascii?Q?/lWRAiNQ0lnwE0Mq7KoUsEsK1nv1wxbCZ4Xef4IdPiX07tCJZQ+kg+NGtYJw?=
 =?us-ascii?Q?46hipB55241WMaO+XYwTA++lTqJ3idjhmLFQ0Eewye/ISkYJ0XpCPSPLAMhQ?=
 =?us-ascii?Q?sFyMNfNpuhuLzflDvijjRYJii7bW0LTTmmrqurMf1+KAbg+gZm7F7ZoSA2F+?=
 =?us-ascii?Q?1oC23HZZWjR+KzYm0ZdH7mUeT6TsOqzmszI6BL7I2GuxcM8Oxd6wvUHvPcJK?=
 =?us-ascii?Q?F6TRlB8oTWIAwyoL8qTldUdfQe+vKw1ragtc4iO+XkYEfybFrVPvqzJ8vX1j?=
 =?us-ascii?Q?vripQnCgNAjCFNWL0dlyuzTvdxrnPBgzFM/kFLYk6N9Rc4Yl5CvvX4NtbNIU?=
 =?us-ascii?Q?RGvrHIZw+xesHMKitVI6UH13hhjwYdGZ4KkTzOcXucIv/1h8JOQuNduRzohL?=
 =?us-ascii?Q?jRWfof1K+Dw+GXPa24+v4ra/o/V987X+549MO0DOe9+/9la/SPnKcpMfP1/V?=
 =?us-ascii?Q?3sVN+2jCvxTTirJBecobq2+LHgdd1z3FMvn37RDPkh0GKnbiVOnwNhxk+hGI?=
 =?us-ascii?Q?AnYDgNk82mBRLD35TuN/mgoFy3modcuanGBkbuWm4WhNy075wI+r0akjzOIn?=
 =?us-ascii?Q?a517Vg18RzY2hmnWSPCS5/2aV38m7RrD1KtvpEc0qA5+swghBfFxR02bMJFu?=
 =?us-ascii?Q?naUy2MEc9Hxg2AYcYV29ZlEXXi2V7aFBO4YaG/DsFP3EFRG1rEEoWh5V24OO?=
 =?us-ascii?Q?WwSUp3+wjg6oXKxiQzlV0XJZYvTHeoyuHRqL008MHnoiDhL/VOjzob7YMP98?=
 =?us-ascii?Q?92GDU/1xjxnlKIVVI2UjxNuG/00Obj4zljSDbaSxd28QBFYNStH6V0j+Smw9?=
 =?us-ascii?Q?+XRLZHvxwUxy3aBfpucR0shkGpfSm4bm3BIDKtdJsR+wYA4QBVfJsrjU1Bof?=
 =?us-ascii?Q?1ye42N5k9Uu1T12e4vhYv37kp2kEnI5jlLkEPp59Y09lFIAw9G0FOSHoTl/4?=
 =?us-ascii?Q?nLZSmdry8CqDyK9L4TTtFFVe9eQjrKeQ8+e/pzOEm+0zprRrJ/hwRspFCiOO?=
 =?us-ascii?Q?YbrL0B0T2tIDau19OOrW2IUSqujY2L+PvzlchHvxdsXc7K6aLXDbH1j3Swx0?=
 =?us-ascii?Q?ur4G93gUProoqRZNmzyVF9747j5TnzfgtogV9Ps6OEnMhDO1AfyXPo16Qc3q?=
 =?us-ascii?Q?TiW0ovtpBn5PGM+hvR882YTBud0VQ1lrdq+PSRZunY9lwgq3D5iVD5/jJJj/?=
 =?us-ascii?Q?j+fiIyq2PTQAvPQYOBADMZ+iNMos2SLSlHTt0mRps3xOwKvwxcPiJnKWj15l?=
 =?us-ascii?Q?3eQTAGbylmSJBMIdulCpP22IPb8VfJSCoqLRSV0Wkv2XXkQB7mpzgEd8kZcG?=
 =?us-ascii?Q?5MviJHxsvw=3D=3D?=
X-Exchange-RoutingPolicyChecked: KXRCgJcBPX5wTfvJNnntm8l//JeG/UzTT74Q7LZJJoncdcnezxAjZye6CGsda6gUkW9Bs8x9EvUh1ueDTT9AzjtNREHhnB7PiREJ+1wKiTFcOSDCqwEkQIFUMfk1ZuwhI+Wxdcv4WkT++VjYqYTzlmK/yliZ24MJT5EB8Dh3q4gyX8rySP20JEOZJNFyCgx41B45ey7szmBQTQn7iSzAYrC6G2AckLdojpDtJ9dWnLSmb771+pOb2McJwchVFTOUUFT8m9qD6dp8ShspwMtJlQXU0gQVRxELrE6qw8deE2vou678LiOKHgbkQHpHZjBWVb1a9BOaWCl3guxg/8ausQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: cf6cbc1f-b5e1-40df-7a00-08deb5d54ed9
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 18:34:49.0256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oTy2jFM3HgRJ9w0wN+GLBka0yaSeSb4AEKp96UtU9wu1rvindsbIXfpe3UfOlwswLksluYMejR9VEqkEmm5vPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8845
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A9B1B583BF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Daniel Charles <daniel.charles@intel.com> writes:

> On 4/29/2026 7:26 AM, Gustavo Sousa wrote:
>> The macro HAS_DMC_WAKELOCK() is currently only used inside
>> intel_dmc_wl.c and doesn't need to be exposed to the rest of the driver.
>> Furthermore, there is a distinction between the display IP having
>> support for the feature and the driver actually using it, so using
>> HAS_DMC_WAKELOCK() outside of intel_dmc_wl.c would potentially be wrong
>> anyway.
>>
>> Let's drop that macro.  If other part of the driver needs to check if
>> the driver is using the DMC wakelock feature, we would need actually to
>> expose the function __intel_dmc_wl_supported().
>>
>> Since HAS_DMC_WAKELOCK() was kind of self-documenting in the sense that
>> it tells us what display IPs have support for the feature and we are now
>> dropping it, let's also take this opportunity to add a documentation
>> note on the subject.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 -
>>   drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 9 ++++++++-
>>   2 files changed, 8 insertions(+), 2 deletions(-)
>>
>>
>> ---
>> base-commit: 9ee30ac229d686465b572e6404250178b28b616b
>> change-id: 20260429-drop-has_dmc_wakelock-e939d11588a7
>>
>> Best regards,
>> --
>> Gustavo Sousa <gustavo.sousa@intel.com>
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index 074e3ba8fb77..12e5a522a299 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -162,7 +162,6 @@ struct intel_display_platforms {
>>   #define HAS_DDI(__display)		(DISPLAY_INFO(__display)->has_ddi)
>>   #define HAS_DISPLAY(__display)		(DISPLAY_RUNTIME_INFO(__display)->pipe_mask != 0)
>>   #define HAS_DMC(__display)		(DISPLAY_RUNTIME_INFO(__display)->has_dmc)
>> -#define HAS_DMC_WAKELOCK(__display)	(DISPLAY_VER(__display) >= 20)
>>   #define HAS_DOUBLE_BUFFERED_M_N(__display)	(IS_DISPLAY_VER((__display), 9, 14) || (__display)->platform.broadwell)
>>   #define HAS_DOUBLE_BUFFERED_LUT(__display)	(DISPLAY_VER(__display) >= 30)
>>   #define HAS_DOUBLE_WIDE(__display)	(DISPLAY_VER(__display) < 4)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> index ddf1a1f1ebc3..7769860e17ea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -39,6 +39,13 @@
>>    * current implementation, we only need one wakelock, so only
>>    * DMC_WAKELOCK1_CTL is used.  The other definitions are here for
>>    * potential future use.
>> + *
>> + * This is available starting with Xe2_LPD (display version 20) as an
>> + * experimental feature and on Xe3_LPD (display version 30) as the
>> + * first display release with official support.  That means that we
>> + * only enable the feature by default on the latter and using it on
>> + * the former requires explicitly using the enable_dmc_wl module
>> + * parameter.
>>    */
>>   
>>   /*
>> @@ -286,7 +293,7 @@ static void intel_dmc_wl_sanitize_param(struct intel_display *display)
>>   {
>>   	const char *desc;
>>   
>> -	if (!HAS_DMC_WAKELOCK(display)) {
>> +	if (DISPLAY_VER(display) < 20) {
>>   		display->params.enable_dmc_wl = ENABLE_DMC_WL_DISABLED;
>>   	} else if (display->params.enable_dmc_wl < 0) {
>>   		if (DISPLAY_VER(display) >= 30)
>
> LGTM
>
> Reviewed-by: Daniel Charles <daniel.charles@intel.com>

Pushed to drm-intel-next. Thanks Daniel for the review!

--
Gustavo Sousa
