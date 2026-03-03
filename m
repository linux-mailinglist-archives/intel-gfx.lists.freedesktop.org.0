Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHpLLAoLp2mJcgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 17:23:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 620801F3B07
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 17:23:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A87510E85B;
	Tue,  3 Mar 2026 16:23:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ixkg26o9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA5710E865;
 Tue,  3 Mar 2026 16:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772555013; x=1804091013;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=wQThzdD64iMYcMELL7M5LnmTcdnOo899fxiXCg/GJXw=;
 b=ixkg26o9tLDDeMJCoa9iqfWY3oshQH3Z8KWTZfar8xNBDXnFI2oqpxGJ
 wFQx6lOgMZiHDAiI3Ne+xEVy6H43kXYnS4IfwVga3azhsVFPfNCZtxNhc
 PF+EiCHtnxjUEYmfBFQPbg2qwmsIiWpOrJ+KlFWnA/3dgfHGWs0kkh1ns
 VKUhu310wpyPkjBZLZHSXW2ZWrcEJxurqmjRDPVOut56mp3jT4d8S0FH/
 +SRdthr6hfTMrZkB6+8D6bj1HUFy7u9RwoChPb76SOetR6lpLte2vYdeF
 ahH4u7LL07hhKlAftwcRO0Kyn0EFJc3ayglxVEYUOxtaVAWqTdGI/6nJA A==;
X-CSE-ConnectionGUID: wIwimLJmTP2Cg0TT9/4zcA==
X-CSE-MsgGUID: M+KLcNFLQ/SZ9dAUkTuwdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73720074"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="73720074"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:23:32 -0800
X-CSE-ConnectionGUID: rgf947WARdilp/XXv0LpuQ==
X-CSE-MsgGUID: L1mqonc+TpyQT6DcEvW4jg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="241052495"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 08:23:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:23:31 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 08:23:31 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.6) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 08:23:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jB0q9TXfBM5ax3y+U+wLBtftiUv2cA9dPhsnux9IVwkZ2hHoL2IgKulg64RR0VqNpsW/PhaGgIZCtwuqb14+5468+RKCX29ozrhGYwSb8wZVGtMT8CQH53bK3sRQBOXAaKNz8zYlffXUXAzeGz4DXoJzBuzXrbXj0B5tgayb/PfkbZaCSXkHc10BXt/BG86ekg6YQR+opmU4x68Nhd02eALWEI+OA/kwORWBfaC4fG09j2Gz0JZJ0E3Uj98vBADNKkdwkMtmqCIeFg5ZQlPmaAQ4vNWm0G8L3K6e8wYFZeidKJVdY7Q1RUmIuTMQOSB8OjmV9ardDYeFLBJ5UerdCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P0KlGJDHMfSgV6p2Rpn0SIH2HAyxR2pcJUdzQxiFZ5c=;
 b=GKX3O/QP5jIqQ6nawLik35FO0SKDn410ndMGgge2ZBgUKj4lgK3oiHCehnasRtlrM5p1K5bBmrNFaw8ceXRnISi8niQKgAd5AsF+eWBgwh79KRxfvkZkJ4JPmC0i1FZ8TbpIMjgd2RtPHfRGWicaS3TG0jtsIIn9m4TieoXUJf5EiWdbUUpfqUldEyeKYxrfaAaF8rVA2R0T/agZufrOQ+24FPdqMDQ4i6jEi8M1zoqC1TCUDiF1CQm7/8lKjCxH+rCvNmj246lnHxcVCZbE/C+Ov+FXnUZN1Z4BBxBXz89hYMpyT/mj7TwBAfY+L7Bj8XaHv2TT2Vfw2NPqAVEaDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB7978.namprd11.prod.outlook.com (2603:10b6:806:2fa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 16:23:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Tue, 3 Mar 2026
 16:23:25 +0000
Date: Tue, 3 Mar 2026 18:23:14 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luciano Coelho <luciano.coelho@intel.com>,
 <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lur?=
 =?utf-8?Q?e?= for drm/i915/dp: Fix few SST HPD IRQ handling issues (rev3)
Message-ID: <aacK8qhhluSM_z64@ideak-desk.lan>
References: <20260225164618.1261368-1-imre.deak@intel.com>
 <177206190571.288682.5836647217052321148@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177206190571.288682.5836647217052321148@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV3P280CA0118.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::31) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB7978:EE_
X-MS-Office365-Filtering-Correlation-Id: 4410ad65-d6b7-4506-09fc-08de79412f7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: bJmtF51tFJOoeFi2sTl3IBnCz/YjynShBjaO299OXo1rU7i9BXMYAhUr2qhAZKA0dKc/NxpBgYopEDB0wh3wqZeeehUmaq43ePfY4BRFvR/oo/waveFOD7abMw/mYtSpu63LmVhkhZi3bTpNam62w/xtd0dQn2FVnKIeBHeHEzzGC09D2CQRMiPlRlD7EPfDOGSaXYpF3kptrzBXFaZ7gMFQH5nLDAVEYlMsIygazVR/6r+8aVbi7Dt4jzKGDhZo71hC+2sKUEPtOxc1mD/piYqbB84rnvyHY8rPpSwB6ASeCXGjrvw4u5JPXrSyrjtjAewUpsRMOw1Je/VnkySM/VnVxN3MhAExSbjCGsX+4azsI/7QizK5SF7JK8cj8HCZBXZ7lIo+tgxbg6rq8vZ12OipgOdYCaiRtHqvLrBbRKdTokOmmSCebDCqPxziJu1xDjtvZzP8PFxEbDlPS2TJk9bMNqe/7+S8TnbfRWT07sz72o3bXZf5/fHRZ/HdbH8eU7R4qdhPTor+L0Q7E4HzaSiHdMU4IdZ5iPOy/EhB/qlJN/an0G/RiOLfG2FaI67Y7VwMUyhbqgoaLCRZcPiVOpTXzFIDpBNEmg8Mrhr1Og/ZFAlnphhQx7fQtEXM0o1pD5ZrDsU8+DFZ1OAxYuhYJcnsynOLR6UJS/QFYcUEiegIiPkK9vqw2JQeq0+5czEn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vp7freSN7ESUYJnMGm6HBjCkGSwwkO1/NG7l3fnOB8ygXgPHRVyD4v8Miq8X?=
 =?us-ascii?Q?fb++0tbRsv/W9P3qtofQmNoeGm/SmYxkgdrukJifH6rfgqtOOZLYzOdn1C4M?=
 =?us-ascii?Q?H636saJIfTyBW1V6vdII+fxB2U1ECuNwrdR6cXk5wZGRMCy5TC1Me/RoUPRc?=
 =?us-ascii?Q?KDDa0Oxulub/eWmgNtknRolIctxfS5KFpmQcd+bPmL5Ikr0y9jiiLe71ORc3?=
 =?us-ascii?Q?cpKCaB4NgIttmbI9emBMl/T6mVWaC/PMrvG8Q1l538oZSJzDWygnFMHBixNx?=
 =?us-ascii?Q?Hge6uLjWcPYfF7rRoZIwxHySttAl4JSvRFhYAJhl8KAosr3Vdal19ojgMFFT?=
 =?us-ascii?Q?mrXa9JBCpYxgaUA9GU9MNQusMgee51j+x/0u4pGDmL10nLpjNxC5CFfRQTnN?=
 =?us-ascii?Q?LyfJWBTtkq4mq6eFs+vJHLWnGcheeDYe8d4dhxls4MO1kW2wgL10h803BKaQ?=
 =?us-ascii?Q?WJAbDtJXe3j81BnHJ4wSWSErBO6tnG3SaaKcdziaADm6pqoKp1NYdcJ258uV?=
 =?us-ascii?Q?7D0tMK39PzuWveOgHm8+seDKDwxb4jIQ/zuBkW9S49AegRlpbkzTvRtMANgL?=
 =?us-ascii?Q?KOyml1+Kycy766hoYp9W0gVvoeJdfmwFEdTB5pkMEoBfQFyBLYr0M7855TJv?=
 =?us-ascii?Q?Bu6YB5YGMhTpqp0DgYVQV9C2Nr0fLqkycSmeAK85XUtLTEAVVQy3em9KpFtr?=
 =?us-ascii?Q?NPXLojS+peo2MWhI6I2ZzsNWLzIorQHzivr46QxTVPfRuf+zxcNq9+Z1upHJ?=
 =?us-ascii?Q?o1fj18cgVwlTpSqG7CsXz5UCCbHTSfeH7hb2PzI7S/b+QEssM/tTpP4VtTau?=
 =?us-ascii?Q?vqkKtkPXHCBSE8Ue17IRLghAanuAV+G6bLCdiiAH/yBLT2Fa25TK2AKcQNom?=
 =?us-ascii?Q?eiz8jaZkvqiCYLdbMUupJGO/9mRqh+a3k0l503x8uFYVn9ojV1v8jskYdGAg?=
 =?us-ascii?Q?wc8n2AoGjtHXG68lmZi7QEtbpbSidXwgcR3+jjKJUmJHgBkKMbMWDXlwDLhh?=
 =?us-ascii?Q?C82+cLytdXJGZYw7dHRMlcV35kjlvKzYQUrm31GEaJjYk7n36yQC4fOLptP8?=
 =?us-ascii?Q?r2tAjW84L1VYkjwH7nJxcj9ME7LVUas9K5owTG3DxREVFFqPtB771CEfahWO?=
 =?us-ascii?Q?qcSS9N2Hl8SU57Z+c83qqBTAXUsf47NFsuKRMsCY//7EwHAwe3YtZHeOSrvr?=
 =?us-ascii?Q?65G8kFVD3i7t4lSc1Gd/mDths1Pbce94JJf8ZaRYFhjpSNuOchzQN37gUBkO?=
 =?us-ascii?Q?XnPCx7PEr+MmXsMBIIEGinQBLpTbGJTOeKUskBlT+MRBST8nLI3774SGinzM?=
 =?us-ascii?Q?e1NPZI+Z7rN8zmT6uIHVSxBZCtboaUl0al4WtHJ61T/J0i8MIuLhuShBRg2i?=
 =?us-ascii?Q?lwflbdaZszzS7zD4ZlFJm+mQNMrYyHy0WTC7nEevqYXQgKOr6dEtW7oVU70f?=
 =?us-ascii?Q?3Q5aawkXBUAq2OkqDtpI2LCdOT3GvD3ZnhOuZirOIWBO2NbOSKjJi3CpjChA?=
 =?us-ascii?Q?takyQEePUsaMwtuRIPaUqazduxJHc6uYFiU2IrlORqQvU2kBmVaYy//uc25g?=
 =?us-ascii?Q?lgXQ3ibkd4JQlCYaipXU2FdsnsrRTpp1n38tbUOr1EFCM+1dBmAjTPd8uOPA?=
 =?us-ascii?Q?5QB2jSp42xDXAxwWV1/CFDRqMvtkDll8q+q2+6UW6uRrdLZYesERDZvqi3YY?=
 =?us-ascii?Q?gFvbIleM8rxsAGKNpx7wbBSGokSxxeiAfnLZPSmAq5Wp+vIv0ufiR5tAI6W+?=
 =?us-ascii?Q?uX/yAkHRGA=3D=3D?=
X-Exchange-RoutingPolicyChecked: SX6sKJnSOvpu09ycu/0Tf5KbLwGGKMbmPgC7kzm5d42FV7iJPTM6PpbjXLEQWS19DUs3p43UUggPP+/raRDmGzxGniipXkEJ8TFLoLi394yvq6JQRtwn9nq7NjBitmAvm+5ObduUwbbl6jcBPOvIGN53TWy2q5rdPs8SdNxfBhGEOqWWTDgbYqMVcYUOE4w8fZZAMVT8YMh/OyaFguwpYpNDNQNYTVX2ILUECHjzOkdxgMpMlEWDE0Oc8NNTztQ8frTd1y+rmINwxoctwNs+I5I14/ECdRmvDh5t34KuZEIgp0GvskNj0/TDgHhtXtErRbt0YeVfIU1xZxV4CS7HCg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4410ad65-d6b7-4506-09fc-08de79412f7f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2026 16:23:25.0525 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WFPSfqTxFMVrV4j8HVBhYQNl2bco66ZbII5gmd4hzRHsZknYqB3M90Vs6fMsybLd8MZRfza/U78SSZcLkqWSdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7978
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
X-Rspamd-Queue-Id: 620801F3B07
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_SPAM(0.00)[0.001];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 11:25:05PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix few SST HPD IRQ handling issues (rev3)
> URL   : https://patchwork.freedesktop.org/series/150800/
> State : failure

Thanks for the review, pachset is pushed to drm-intel-next.

The failures are unrelated, see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18048_full -> Patchwork_150800v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_150800v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_150800v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_150800v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@api_intel_bb@render@render-none-512:
>     - shard-dg2:          [PASS][1] -> [ABORT][2] +2 other tests abort
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-8/igt@api_intel_bb@render@render-none-512.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-1/igt@api_intel_bb@render@render-none-512.html

shard-dg2-1 doesn't have any DP sink connected to it, so the DP specific
changes in the patchset are not related to the issue.

The issue is the following known TTM oops:

<7> [210.871483] [drm:eb_validate_vma [i915]] EINVAL at eb_validate_vma:509
<1> [210.892156] BUG: kernel NULL pointer dereference, address: 0000000000000018
...
<4> [210.892246] RIP: 0010:ttm_bo_release+0x1bc/0x330 [ttm]
...
<4> [210.892370] Call Trace:
<4> [210.892374]  <TASK>
<4> [210.892380]  ttm_bo_put+0x3c/0x70 [ttm]
<4> [210.892391]  ttm_bo_move_accel_cleanup+0xf6/0x3a0 [ttm]
<4> [210.892405]  i915_ttm_move+0x361/0x480 [i915]
<4> [210.892618]  ttm_bo_handle_move_mem+0xe8/0x1e0 [ttm]
<4> [210.892632]  ttm_bo_validate+0xcf/0x1c0 [ttm]
<4> [210.892644]  __i915_ttm_get_pages+0x73/0x290 [i915]
<4> [210.892816]  i915_ttm_get_pages+0x106/0x160 [i915]
<4> [210.893024]  ? lock_acquire+0xc4/0x2f0
<4> [210.893035]  ____i915_gem_object_get_pages+0x3f/0x120 [i915]
<4> [210.893207]  __i915_gem_object_get_pages+0xa5/0x110 [i915]
<4> [210.893375]  i915_vma_get_pages+0xf9/0x300 [i915]
<4> [210.893550]  i915_vma_pin_ww+0xf5/0x1390 [i915]
<4> [210.893837]  ? dma_resv_reserve_fences+0x271/0x380
<4> [210.893848]  eb_validate_vmas+0x209/0xd30 [i915]
<4> [210.894052]  ? eb_pin_engine+0x2f0/0x3b0 [i915]
<4> [210.894253]  i915_gem_do_execbuffer+0xda3/0x36e0 [i915]

> 
>   * igt@i915_selftest@live@objects:
>     - shard-dg2:          [PASS][3] -> [FAIL][4] +36 other tests fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_selftest@live@objects.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_selftest@live@objects.html

No DP outputs on this DG2 host either (assuming all shard-dg2-x hosts
have the same config).

Looks like some module loading failure, not sure what exactly, since I
can't find the corresponding dmesg log:

(i915_selftest:2021) igt_kmod-CRITICAL: Test assertion failure function igt_kselftest_execute, file ../lib/igt_kmod.c:1335:
(i915_selftest:2021) igt_kmod-CRITICAL: Failed assertion: err == 0
(i915_selftest:2021) igt_kmod-CRITICAL: kselftest "i915 igt__32__live_objects=1 live_selftests=-1 disable_display=1 st_filter=" failed: Operation not permitted [1]

>   * igt@kms_pm_rpm@drm-resources-equal:
>     - shard-dg2:          NOTRUN -> [SKIP][5] +2 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_pm_rpm@drm-resources-equal.html

Probably a continuation of the above failure, the test finds no card to
test after the above module load failure:

(kms_pm_rpm:2061) drmtest-WARNING: No card matches the filter! [pci:vendor=intel,device=discrete,card=0]

> 
>   * igt@kms_rotation_crc@multiplane-rotation:
>     - shard-dg1:          [PASS][6] -> [ABORT][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-17/igt@kms_rotation_crc@multiplane-rotation.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-14/igt@kms_rotation_crc@multiplane-rotation.html

Another instance of the above TTM oops.

>   * igt@perf@create-destroy-userspace-config:
>     - shard-dg2:          [PASS][8] -> [SKIP][9] +22 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@perf@create-destroy-userspace-config.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@perf@create-destroy-userspace-config.html

The continuation of the above module load failure:

(perf:1993) drmtest-WARNING: No card matches the filter! [pci:vendor=intel,device=discrete,card=0]

> 
>   
> #### Warnings ####
> 
>   * igt@i915_drm_fdinfo@busy-check-all:
>     - shard-dg2:          [SKIP][10] ([i915#11527]) -> [SKIP][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@i915_drm_fdinfo@busy-check-all.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_drm_fdinfo@busy-check-all.html
> 
>   * igt@i915_drm_fdinfo@most-busy-idle-check-all:
>     - shard-dg2:          [SKIP][12] ([i915#14073]) -> [SKIP][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_drm_fdinfo@most-busy-idle-check-all.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_drm_fdinfo@most-busy-idle-check-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg2:          [SKIP][14] ([i915#14118]) -> [SKIP][15] +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@i915_drm_fdinfo@virtual-busy-idle-all.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][16] ([i915#12061]) -> [FAIL][17] +1 other test fail
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_selftest@live@workarounds.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_pm_rpm@pm-caching:
>     - shard-dg2:          [SKIP][18] ([i915#4077]) -> [SKIP][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_pm_rpm@pm-caching.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_pm_rpm@pm-caching.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-dg2:          [SKIP][20] ([i915#6524] / [i915#6805]) -> [SKIP][21]
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_prime@basic-crc-hybrid.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-dg2:          [SKIP][22] ([i915#2436]) -> [SKIP][23]
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@global-sseu-config:
>     - shard-dg2:          [SKIP][24] ([i915#7387]) -> [SKIP][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@perf@global-sseu-config.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@perf@global-sseu-config.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-dg2:          [FAIL][26] ([i915#9100]) -> [SKIP][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@perf@non-zero-reason.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@perf@non-zero-reason.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_150800v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#11078])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          NOTRUN -> [ABORT][29] ([i915#11814] / [i915#11815])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#15678])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@drm_buddy@drm_buddy.html
> 
>   * igt@fbdev@info:
>     - shard-dg2:          [PASS][31] -> [SKIP][32] ([i915#1849] / [i915#2582])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@fbdev@info.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@fbdev@info.html
> 
>   * igt@fbdev@nullptr:
>     - shard-dg2:          [PASS][33] -> [SKIP][34] ([i915#2582])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@fbdev@nullptr.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@fbdev@nullptr.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#9323])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][36] ([i915#12392] / [i915#13356])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#7697])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#7697]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#6335])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#8555])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#280])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#280]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4771])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4525])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#4525]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#4525])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#6334]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_create@forked@lmem0:
>     - shard-dg1:          [PASS][48] -> [ABORT][49] ([i915#15759]) +1 other test abort
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-13/igt@gem_exec_create@forked@lmem0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@gem_exec_create@forked@lmem0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#3539] / [i915#4852]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_flush@basic-uc-pro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#15689] / [i915#2575]) +20 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-pro-default.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#3539])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3281]) +7 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#3281]) +3 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@gem_exec_reloc@basic-wc-gtt.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#4812]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][56] -> [INCOMPLETE][57] ([i915#13356]) +1 other test incomplete
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices:
>     - shard-rkl:          [PASS][58] -> [ABORT][59] ([i915#15131])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_exec_suspend@basic-s3-devices.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@gem_exec_suspend@basic-s3-devices.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices@smem:
>     - shard-rkl:          [PASS][60] -> [ABORT][61] ([i915#15542])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_exec_suspend@basic-s3-devices@smem.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@gem_exec_suspend@basic-s3-devices@smem.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4860])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#4613]) +2 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@verify:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#4613]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@gem_lmem_swapping@verify.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][65] ([i915#4613]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk9/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][66] ([i915#4613]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_mmap_gtt@flink-race:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4077]) +9 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_mmap_gtt@flink-race.html
> 
>   * igt@gem_mmap_wc@write-gtt-read-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4083]) +2 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_mmap_wc@write-gtt-read-wc.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#3282]) +4 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu-1:       NOTRUN -> [WARN][70] ([i915#2658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4270]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_readwrite@read-write:
>     - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3282]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@gem_readwrite@read-write.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#15689] / [i915#2575] / [i915#5190])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4079])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4885])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_softpin@invalid:
>     - shard-dg2:          [PASS][76] -> [SKIP][77] ([i915#15689] / [i915#2575]) +131 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_softpin@invalid.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_softpin@invalid.html
> 
>   * igt@gem_tiled_pread_basic@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#15657])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@gem_tiled_pread_basic@basic.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#3297]) +1 other test skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-glk:          NOTRUN -> [SKIP][80] ([i915#3323])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#3297]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#3297])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-7/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#2527]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#2527]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#2527] / [i915#2856])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_drm_fdinfo@busy-check-all:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#11527]) +5 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@i915_drm_fdinfo@busy-check-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#14118])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@i915_drm_fdinfo@virtual-busy-hang.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          ([PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [PASS][96], [PASS][97], [PASS][98], [PASS][99], [PASS][100], [PASS][101], [PASS][102], [PASS][103], [PASS][104], [PASS][105], [PASS][106], [PASS][107], [PASS][108], [PASS][109], [PASS][110], [PASS][111], [PASS][112], [PASS][113]) -> ([PASS][114], [PASS][115], [PASS][116], [PASS][117], [PASS][118], [PASS][119], [PASS][120], [PASS][121], [PASS][122], [PASS][123], [PASS][124], [PASS][125], [PASS][126], [FAIL][127], [PASS][128], [FAIL][129], [PASS][130], [PASS][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [PASS][136], [PASS][137], [PASS][138]) ([i915#15741])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@i915_module_load@load.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@i915_module_load@load.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@i915_module_load@load.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_module_load@load.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_module_load@load.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_module_load@load.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-3/igt@i915_module_load@load.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-3/igt@i915_module_load@load.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-3/igt@i915_module_load@load.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@i915_module_load@load.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@i915_module_load@load.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@i915_module_load@load.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-5/igt@i915_module_load@load.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-5/igt@i915_module_load@load.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-5/igt@i915_module_load@load.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@i915_module_load@load.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@i915_module_load@load.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@i915_module_load@load.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@i915_module_load@load.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-7/igt@i915_module_load@load.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-7/igt@i915_module_load@load.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-8/igt@i915_module_load@load.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-8/igt@i915_module_load@load.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-8/igt@i915_module_load@load.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-8/igt@i915_module_load@load.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-5/igt@i915_module_load@load.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@i915_module_load@load.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-8/igt@i915_module_load@load.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@i915_module_load@load.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-7/igt@i915_module_load@load.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@i915_module_load@load.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-5/igt@i915_module_load@load.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-3/igt@i915_module_load@load.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-8/igt@i915_module_load@load.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-3/igt@i915_module_load@load.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-1/igt@i915_module_load@load.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-1/igt@i915_module_load@load.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-1/igt@i915_module_load@load.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_module_load@load.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-5/igt@i915_module_load@load.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_module_load@load.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-7/igt@i915_module_load@load.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-8/igt@i915_module_load@load.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_module_load@load.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_module_load@load.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_module_load@load.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_module_load@load.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-6/igt@i915_module_load@load.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-6/igt@i915_module_load@load.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-6/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#6412])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#8399])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#8399]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#6590]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-tglu:         [PASS][143] -> [WARN][144] ([i915#13790] / [i915#2681]) +1 other test warn
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-dg2:          [PASS][145] -> [SKIP][146] ([i915#15693])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@i915_pm_rpm@system-suspend.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_pm_rps@thresholds-idle:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#11681])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@i915_pm_rps@thresholds-idle.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#5723])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][149] ([i915#4817])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk9/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [PASS][150] -> [ABORT][151] ([i915#15140])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-rkl:          [PASS][152] -> [INCOMPLETE][153] ([i915#4817])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@i915_suspend@sysfs-reader.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-legacy:
>     - shard-dg2:          [PASS][154] -> [SKIP][155] ([i915#15689] / [i915#5190])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#15689] / [i915#5190]) +2 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#12454] / [i915#12712])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-dpms@pipe-a-vga-1:
>     - shard-snb:          NOTRUN -> [SKIP][158] +2 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-snb4/igt@kms_async_flips@async-flip-dpms@pipe-a-vga-1.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#1769] / [i915#3555])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#1769] / [i915#3555])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#5286]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#5286]) +4 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#4538] / [i915#5286]) +3 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_big_fb@4-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#5286]) +4 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#3638]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3638]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
>     - shard-dg2:          [PASS][167] -> [SKIP][168] ([i915#15689]) +183 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][169] +15 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][170] +23 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#4538]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#6095]) +23 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#6095]) +69 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#10307] / [i915#6095]) +40 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#6095]) +29 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#12313]) +1 other test skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#14098] / [i915#6095]) +43 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#12313])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#6095]) +49 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#12313]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#6095]) +207 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3742]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#3742])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_content_protection@atomic-dpms-hdcp14:
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#6944])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_content_protection@atomic-dpms-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][190] ([i915#15330] / [i915#3116] / [i915#3299])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#15330])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-hdcp14:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#15330]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#15330] / [i915#3116]) +1 other test skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-7/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#6944] / [i915#9424])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#6944] / [i915#7118] / [i915#9424])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#13049]) +1 other test skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][198] -> [FAIL][199] ([i915#13566]) +1 other test fail
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-tglu-8/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-10/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
>     - shard-rkl:          [PASS][200] -> [FAIL][201] ([i915#13566]) +3 other tests fail
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][202] ([i915#13566])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#3555]) +3 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#13049]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#4103]) +1 other test skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][206] ([i915#15764])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#4103] / [i915#4213])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3804])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#13749])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#13748])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-tglu-1:       NOTRUN -> [SKIP][211] ([i915#13707])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#13707])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#3555] / [i915#3840])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#3555] / [i915#3840])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html
>     - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#3555] / [i915#3840])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#3840] / [i915#9053])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#1839])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#1839])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-tglu-1:       NOTRUN -> [SKIP][219] ([i915#3637] / [i915#9934]) +6 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#3637] / [i915#9934]) +4 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#9934]) +2 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-glk:          NOTRUN -> [FAIL][222] ([i915#13027]) +1 other test fail
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][223] ([i915#8381])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][224] ([i915#4839])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#9934]) +6 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][226] ([i915#12745] / [i915#4839]) +1 other test incomplete
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][227] ([i915#12745])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk9/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][228] ([i915#15643]) +3 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][229] ([i915#15643]) +4 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#15643]) +2 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#15643]) +3 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#15104]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#1825]) +27 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
>     - shard-snb:          [PASS][234] -> [SKIP][235] +9 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][236] ([i915#10056])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#15102]) +4 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#15102] / [i915#3023]) +8 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
>     - shard-tglu-1:       NOTRUN -> [SKIP][239] +43 other tests skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][240] ([i915#15102]) +9 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][241] ([i915#15102]) +17 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][242] ([i915#15102])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-glk10:        NOTRUN -> [SKIP][243] +65 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk10/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglu:         NOTRUN -> [SKIP][244] +25 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#15102] / [i915#3458]) +10 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][246] ([i915#8708]) +5 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][247] ([i915#3555] / [i915#8228])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#3555] / [i915#8228])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_hdr@static-toggle.html
>     - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#3555] / [i915#8228]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_invalid_mode@bad-hsync-end:
>     - shard-dg1:          [PASS][250] -> [DMESG-WARN][251] ([i915#4423])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-18/igt@kms_invalid_mode@bad-hsync-end.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-18/igt@kms_invalid_mode@bad-hsync-end.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#15460])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#15459])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][254] ([i915#15458])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          [PASS][255] -> [SKIP][256] ([i915#15459])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][257] ([i915#15458]) +1 other test skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#6301])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_panel_fitting@legacy.html
>     - shard-dg1:          NOTRUN -> [SKIP][259] ([i915#6301])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-tglu:         NOTRUN -> [SKIP][260] ([i915#14712])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#14712])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
>     - shard-tglu-1:       NOTRUN -> [SKIP][262] ([i915#15709]) +2 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#15689]) +44 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
>     - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#15709]) +5 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#15709]) +1 other test skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
>     - shard-dg1:          NOTRUN -> [SKIP][266] ([i915#15709]) +3 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic:
>     - shard-glk:          NOTRUN -> [FAIL][267] ([i915#12178])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@kms_plane_alpha_blend@alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][268] ([i915#7862]) +1 other test fail
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@kms_plane_alpha_blend@alpha-basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#13958])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu-1:       NOTRUN -> [SKIP][270] ([i915#13958])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-dg1:          NOTRUN -> [SKIP][271] ([i915#13958]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
>     - shard-dg1:          NOTRUN -> [SKIP][272] ([i915#15329]) +4 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-scaler-unity-scaling:
>     - shard-dg2:          NOTRUN -> [SKIP][273] ([i915#15689] / [i915#9423])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-dg2:          [PASS][274] -> [SKIP][275] ([i915#15689] / [i915#9423]) +5 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu-1:       NOTRUN -> [SKIP][276] ([i915#9812])
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][277] ([i915#12343])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-7/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#5354])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#9685])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#15739])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][281] -> [SKIP][282] ([i915#15073]) +1 other test skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][283] ([i915#15073])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg1:          [PASS][284] -> [SKIP][285] ([i915#15073])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu-1:       NOTRUN -> [SKIP][286] ([i915#15073])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-rkl:          [PASS][287] -> [INCOMPLETE][288] ([i915#14419])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][289] ([i915#11520]) +4 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][290] ([i915#11520]) +4 other tests skip
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][291] ([i915#11520]) +3 other tests skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][292] ([i915#11520]) +1 other test skip
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][293] ([i915#11520]) +9 other tests skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk6/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][294] ([i915#11520]) +2 other tests skip
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg1:          NOTRUN -> [SKIP][295] ([i915#9683]) +1 other test skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-tglu-1:       NOTRUN -> [SKIP][296] ([i915#9683])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-sprite-plane-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][297] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_psr@fbc-pr-sprite-plane-onoff.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>     - shard-glk:          NOTRUN -> [SKIP][298] +302 other tests skip
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@pr-cursor-plane-onoff:
>     - shard-tglu-1:       NOTRUN -> [SKIP][299] ([i915#9732]) +15 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_psr@pr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@pr-sprite-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#9732]) +10 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_psr@pr-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][301] ([i915#1072] / [i915#9732]) +17 other tests skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#5289])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu:         NOTRUN -> [SKIP][303] ([i915#5289])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][304] ([i915#5289])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg1:          NOTRUN -> [SKIP][305] ([i915#3555]) +6 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglu-1:       NOTRUN -> [FAIL][306] ([i915#15106]) +1 other test fail
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#3555]) +1 other test skip
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#3555]) +2 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#3555] / [i915#9906])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_vrr@negative-basic.html
>     - shard-mtlp:         [PASS][310] -> [FAIL][311] ([i915#15420]) +1 other test fail
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-mtlp-2/igt@kms_vrr@negative-basic.html
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-mtlp-1/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][312] ([i915#9906])
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg1:          NOTRUN -> [SKIP][313] ([i915#9906])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@perf@invalid-oa-exponent:
>     - shard-dg2:          [PASS][314] -> [SKIP][315] ([i915#15607]) +2 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@perf@invalid-oa-exponent.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@perf@invalid-oa-exponent.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][316] -> [FAIL][317] ([i915#4349]) +4 other tests fail
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg1:          NOTRUN -> [SKIP][318] ([i915#9917])
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][319] ([i915#12910]) +9 other tests fail
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [INCOMPLETE][320] ([i915#12392] / [i915#13356]) -> [PASS][321]
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-7/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [INCOMPLETE][322] ([i915#13390]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-rkl:          [INCOMPLETE][324] ([i915#13356]) -> [PASS][325] +1 other test pass
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          [ABORT][326] ([i915#15152]) -> [PASS][327]
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-1/igt@gem_workarounds@suspend-resume.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          [INCOMPLETE][328] ([i915#13356] / [i915#14586]) -> [PASS][329]
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-glk2/igt@gem_workarounds@suspend-resume-fd.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk2/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@i915_module_load@fault-injection@uc_fw_rsa_data_create:
>     - shard-mtlp:         [INCOMPLETE][330] -> [PASS][331]
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-mtlp-4/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-mtlp-7/igt@i915_module_load@fault-injection@uc_fw_rsa_data_create.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][332] ([i915#5956]) -> [PASS][333] +1 other test pass
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [FAIL][334] ([i915#15733] / [i915#5138]) -> [PASS][335]
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-rkl:          [FAIL][336] ([i915#13566]) -> [PASS][337]
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
>     - shard-snb:          [SKIP][338] -> [PASS][339] +10 other tests pass
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-snb4/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][340] ([i915#9878]) -> [PASS][341]
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-7/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
>     - shard-snb:          [TIMEOUT][342] ([i915#14033]) -> [PASS][343] +1 other test pass
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-snb1/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-mtlp:         [FAIL][344] ([i915#14600]) -> [PASS][345] +1 other test pass
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-mtlp-7/igt@kms_flip@blocking-wf_vblank.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-mtlp-5/igt@kms_flip@blocking-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-rkl:          [INCOMPLETE][346] ([i915#6113]) -> [PASS][347]
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-8/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-rkl:          [INCOMPLETE][348] ([i915#10056]) -> [PASS][349]
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          [SKIP][350] ([i915#3555] / [i915#8228]) -> [PASS][351] +1 other test pass
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_hdr@static-swap.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_plane@pixel-format-linear-modifier:
>     - shard-dg1:          [ABORT][352] ([i915#15759]) -> [PASS][353]
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-17/igt@kms_plane@pixel-format-linear-modifier.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-14/igt@kms_plane@pixel-format-linear-modifier.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [SKIP][354] ([i915#6953]) -> [PASS][355]
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
>     - shard-dg1:          [ABORT][356] -> [PASS][357] +6 other tests pass
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-16/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [SKIP][358] ([i915#9340]) -> [PASS][359]
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][360] ([i915#15073]) -> [PASS][361] +1 other test pass
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg1:          [SKIP][362] ([i915#15073]) -> [PASS][363]
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-rkl:          [SKIP][364] ([i915#15073]) -> [PASS][365]
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-dg1:          [DMESG-WARN][366] ([i915#4423]) -> [PASS][367] +1 other test pass
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-16/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-2:
>     - shard-rkl:          [FAIL][368] ([i915#15106]) -> [PASS][369] +1 other test pass
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_setmode@basic@pipe-a-hdmi-a-2.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          [SKIP][370] ([i915#8411]) -> [SKIP][371] ([i915#15689] / [i915#2575])
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#8411]) -> [SKIP][373] ([i915#8411]) +1 other test skip
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][374] ([i915#3281]) -> [SKIP][375] ([i915#14544] / [i915#3281]) +6 other tests skip
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@gem_bad_reloc@negative-reloc-lut.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg2:          [SKIP][376] ([i915#7697]) -> [SKIP][377] ([i915#15689] / [i915#2575])
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@gem_basic@multigpu-create-close.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#6335]) -> [SKIP][379] ([i915#6335])
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_create@create-ext-cpu-access-sanity-check.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          [SKIP][380] ([i915#8555]) -> [SKIP][381] ([i915#15689] / [i915#2575]) +1 other test skip
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          [SKIP][382] ([i915#280]) -> [SKIP][383] ([i915#15689] / [i915#2575]) +1 other test skip
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@gem_ctx_sseu@mmap-args.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#4525]) -> [SKIP][385] ([i915#4525])
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@capture:
>     - shard-dg2:          [FAIL][386] ([i915#11965]) -> [SKIP][387] ([i915#15689] / [i915#2575])
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_exec_capture@capture.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_capture@capture.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          [SKIP][388] ([i915#4812]) -> [SKIP][389] ([i915#15689] / [i915#2575]) +1 other test skip
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@gem_exec_fence@submit3.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2:          [SKIP][390] ([i915#3539] / [i915#4852]) -> [SKIP][391] ([i915#15689] / [i915#2575]) +1 other test skip
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-dg2:          [SKIP][392] ([i915#3539]) -> [SKIP][393] ([i915#15689] / [i915#2575])
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
>     - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#3281]) -> [SKIP][395] ([i915#3281]) +2 other tests skip
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2:          [SKIP][396] ([i915#3281]) -> [SKIP][397] ([i915#15689] / [i915#2575]) +15 other tests skip
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg2:          [SKIP][398] ([i915#4537] / [i915#4812]) -> [SKIP][399] ([i915#15689] / [i915#2575]) +1 other test skip
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_exec_schedule@preempt-queue-contexts.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][400] ([i915#7276]) -> [SKIP][401] ([i915#14544] / [i915#7276])
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-x:
>     - shard-dg2:          [SKIP][402] ([i915#4860]) -> [SKIP][403] ([i915#15689] / [i915#2575]) +4 other tests skip
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@gem_fence_thrash@bo-write-verify-x.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-x.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#4613]) -> [SKIP][405] ([i915#4613]) +2 other tests skip
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][406] ([i915#4613]) -> [SKIP][407] ([i915#14544] / [i915#4613]) +2 other tests skip
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@gem_lmem_swapping@massive-random.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-dg2:          [SKIP][408] ([i915#4077]) -> [SKIP][409] ([i915#15689] / [i915#2575]) +13 other tests skip
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_wc@copy:
>     - shard-dg2:          [SKIP][410] ([i915#4083]) -> [SKIP][411] ([i915#15689] / [i915#2575]) +6 other tests skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_mmap_wc@copy.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_mmap_wc@copy.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          [SKIP][412] ([i915#3282]) -> [SKIP][413] ([i915#15689] / [i915#2575]) +8 other tests skip
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_partial_pwrite_pread@reads.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          [SKIP][414] ([i915#3282]) -> [SKIP][415] ([i915#14544] / [i915#3282]) +3 other tests skip
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg2:          [SKIP][416] ([i915#4270]) -> [SKIP][417] ([i915#15689] / [i915#2575]) +2 other tests skip
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#3282]) -> [SKIP][419] ([i915#3282]) +2 other tests skip
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_readwrite@write-bad-handle.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
>     - shard-dg2:          [SKIP][420] ([i915#5190] / [i915#8428]) -> [SKIP][421] ([i915#15689] / [i915#2575] / [i915#5190]) +8 other tests skip
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2:          [SKIP][422] ([i915#4079]) -> [SKIP][423] ([i915#15689] / [i915#2575]) +2 other tests skip
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][424] ([i915#14544] / [i915#3297]) -> [SKIP][425] ([i915#3297])
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          [SKIP][426] ([i915#3282] / [i915#3297]) -> [SKIP][427] ([i915#14544] / [i915#3282] / [i915#3297])
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          [SKIP][428] ([i915#3297]) -> [SKIP][429] ([i915#14544] / [i915#3297]) +1 other test skip
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          [SKIP][430] ([i915#3297] / [i915#4880]) -> [SKIP][431] ([i915#15689] / [i915#2575])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-rkl:          [SKIP][432] ([i915#14544] / [i915#3281] / [i915#3297]) -> [SKIP][433] ([i915#3281] / [i915#3297])
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gem_userptr_blits@relocations.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-dg2:          [SKIP][434] ([i915#3297]) -> [SKIP][435] ([i915#15689] / [i915#2575]) +2 other tests skip
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@gem_userptr_blits@unsync-overlap.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#2527]) -> [SKIP][437] ([i915#2527]) +1 other test skip
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-dg2:          [SKIP][438] ([i915#2856]) -> [SKIP][439] ([i915#15689] / [i915#2575]) +2 other tests skip
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@gen9_exec_parse@valid-registers.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@gen9_exec_parse@valid-registers.html
>     - shard-rkl:          [SKIP][440] ([i915#2527]) -> [SKIP][441] ([i915#14544] / [i915#2527]) +1 other test skip
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@gen9_exec_parse@valid-registers.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_module_load@fault-injection:
>     - shard-mtlp:         [ABORT][442] ([i915#15481]) -> [ABORT][443] ([i915#15342] / [i915#15481])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-mtlp-4/igt@i915_module_load@fault-injection.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-mtlp-7/igt@i915_module_load@fault-injection.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2:          [SKIP][444] ([i915#11681]) -> [SKIP][445] ([i915#15689] / [i915#2575])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@i915_pm_rps@thresholds.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@i915_pm_rps@thresholds.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg2:          [SKIP][446] ([i915#4212]) -> [SKIP][447] ([i915#15689])
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          [SKIP][448] ([i915#1769] / [i915#3555]) -> [SKIP][449] ([i915#15689])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          [SKIP][450] ([i915#14544] / [i915#1769] / [i915#3555]) -> [SKIP][451] ([i915#1769] / [i915#3555])
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][452] ([i915#5286]) -> [SKIP][453] ([i915#14544] / [i915#5286]) +2 other tests skip
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-rkl:          [SKIP][454] ([i915#14544] / [i915#5286]) -> [SKIP][455] ([i915#5286]) +2 other tests skip
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-dg2:          [SKIP][456] -> [SKIP][457] ([i915#15689]) +7 other tests skip
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          [SKIP][458] ([i915#3638]) -> [SKIP][459] ([i915#14544] / [i915#3638]) +1 other test skip
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-dg2:          [SKIP][460] ([i915#3828]) -> [SKIP][461] ([i915#15689])
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
>     - shard-dg1:          [SKIP][462] ([i915#3638] / [i915#4423]) -> [SKIP][463] ([i915#3638])
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-16/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][464] ([i915#14544] / [i915#3638]) -> [SKIP][465] ([i915#3638]) +2 other tests skip
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-overflow:
>     - shard-dg2:          [SKIP][466] ([i915#5190]) -> [SKIP][467] ([i915#15689] / [i915#5190]) +3 other tests skip
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-dg2:          [SKIP][468] ([i915#4538] / [i915#5190]) -> [SKIP][469] ([i915#15689] / [i915#5190]) +12 other tests skip
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
>     - shard-rkl:          [SKIP][470] -> [SKIP][471] ([i915#14544]) +10 other tests skip
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][472] ([i915#14544]) -> [SKIP][473] +12 other tests skip
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs:
>     - shard-dg2:          [SKIP][474] ([i915#10307] / [i915#6095]) -> [SKIP][475] ([i915#15689]) +14 other tests skip
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          [SKIP][476] ([i915#12313]) -> [SKIP][477] ([i915#15689]) +3 other tests skip
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>     - shard-dg1:          [SKIP][478] ([i915#12313] / [i915#4423]) -> [SKIP][479] ([i915#12313])
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-13/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][480] ([i915#14544] / [i915#6095]) -> [SKIP][481] ([i915#6095]) +7 other tests skip
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2.html
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          [SKIP][482] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][483] ([i915#14098] / [i915#6095]) +10 other tests skip
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-dg2:          [SKIP][484] ([i915#12805]) -> [SKIP][485] ([i915#15689])
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>     - shard-dg1:          [SKIP][486] ([i915#12805] / [i915#4423]) -> [SKIP][487] ([i915#12805])
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-16/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][488] ([i915#12805]) -> [SKIP][489] ([i915#12805] / [i915#14544])
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][490] ([i915#12313] / [i915#14544]) -> [SKIP][491] ([i915#12313]) +1 other test skip
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc:
>     - shard-dg2:          [SKIP][492] ([i915#6095]) -> [SKIP][493] ([i915#15689]) +4 other tests skip
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][494] ([i915#14098] / [i915#6095]) -> [SKIP][495] ([i915#14098] / [i915#14544] / [i915#6095]) +17 other tests skip
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          [SKIP][496] ([i915#6095]) -> [SKIP][497] ([i915#14544] / [i915#6095]) +17 other tests skip
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-dg2:          [SKIP][498] ([i915#13781]) -> [SKIP][499] ([i915#15689])
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_cdclk@mode-transition.html
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_edid@dp-mode-timings:
>     - shard-rkl:          [SKIP][500] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][501] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_chamelium_edid@dp-mode-timings.html
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_chamelium_edid@dp-mode-timings.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          [SKIP][502] ([i915#11151] / [i915#7828]) -> [SKIP][503] ([i915#15689]) +11 other tests skip
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_chamelium_frames@hdmi-crc-fast.html
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>     - shard-rkl:          [SKIP][504] ([i915#11151] / [i915#7828]) -> [SKIP][505] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [SKIP][506] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][507] ([i915#15689])
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
>     - shard-rkl:          [SKIP][508] ([i915#14544] / [i915#15330]) -> [SKIP][509] ([i915#15330])
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          [SKIP][510] ([i915#15330] / [i915#3299]) -> [SKIP][511] ([i915#15689])
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_content_protection@dp-mst-lic-type-1.html
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
>     - shard-dg2:          [SKIP][512] ([i915#15330]) -> [SKIP][513] ([i915#15689])
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          [SKIP][514] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][515] ([i915#6944] / [i915#7118] / [i915#9424])
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_content_protection@legacy.html
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          [FAIL][516] ([i915#7173]) -> [SKIP][517] ([i915#6944] / [i915#9424])
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_content_protection@lic-type-0.html
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0-hdcp14:
>     - shard-dg2:          [FAIL][518] ([i915#7173]) -> [SKIP][519] ([i915#6944])
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_content_protection@lic-type-0-hdcp14.html
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-3/igt@kms_content_protection@lic-type-0-hdcp14.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg2:          [SKIP][520] ([i915#6944] / [i915#9424]) -> [SKIP][521] ([i915#15689]) +1 other test skip
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_content_protection@mei-interface.html
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_content_protection@mei-interface.html
>     - shard-rkl:          [SKIP][522] ([i915#6944] / [i915#9424]) -> [SKIP][523] ([i915#14544] / [i915#6944] / [i915#9424]) +1 other test skip
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_content_protection@mei-interface.html
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_content_protection@mei-interface.html
>     - shard-dg1:          [SKIP][524] ([i915#6944] / [i915#9424]) -> [SKIP][525] ([i915#9433])
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-14/igt@kms_content_protection@mei-interface.html
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-rkl:          [SKIP][526] ([i915#13049] / [i915#14544]) -> [SKIP][527] ([i915#13049])
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-rkl:          [SKIP][528] ([i915#3555]) -> [SKIP][529] ([i915#14544] / [i915#3555]) +2 other tests skip
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_cursor_crc@cursor-random-max-size.html
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-rkl:          [SKIP][530] ([i915#14544] / [i915#3555]) -> [SKIP][531] ([i915#3555]) +2 other tests skip
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          [SKIP][532] ([i915#13049]) -> [SKIP][533] ([i915#15689])
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg2:          [SKIP][534] ([i915#4103] / [i915#4213]) -> [SKIP][535] ([i915#15689]) +2 other tests skip
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-dg2:          [SKIP][536] ([i915#13046] / [i915#5354]) -> [SKIP][537] ([i915#15689]) +4 other tests skip
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][538] ([i915#9723]) -> [SKIP][539] ([i915#14544] / [i915#9723])
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg2:          [SKIP][540] ([i915#13691]) -> [SKIP][541] ([i915#15689])
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_display_modes@extended-mode-basic.html
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@non-uhbr-sst:
>     - shard-dg2:          [SKIP][542] ([i915#13749]) -> [SKIP][543] ([i915#15689])
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_dp_link_training@non-uhbr-sst.html
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-rkl:          [SKIP][544] ([i915#13748]) -> [SKIP][545] ([i915#13748] / [i915#14544])
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_dp_link_training@uhbr-sst.html
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          [SKIP][546] ([i915#3840]) -> [SKIP][547] ([i915#14544] / [i915#3840])
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-dg2:          [SKIP][548] ([i915#1839]) -> [SKIP][549] ([i915#15689])
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_feature_discovery@display-4x.html
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          [SKIP][550] ([i915#658]) -> [SKIP][551] ([i915#15689])
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_feature_discovery@psr1.html
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          [SKIP][552] ([i915#658]) -> [SKIP][553] ([i915#14544] / [i915#658])
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_feature_discovery@psr2.html
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          [SKIP][554] ([i915#9934]) -> [SKIP][555] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms.html
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-rkl:          [SKIP][556] ([i915#14544] / [i915#9934]) -> [SKIP][557] ([i915#9934]) +3 other tests skip
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-dg2:          [SKIP][558] ([i915#9934]) -> [SKIP][559] ([i915#15689]) +6 other tests skip
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_flip@2x-plain-flip-ts-check.html
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-glk:          [INCOMPLETE][560] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][561] ([i915#12745] / [i915#4839] / [i915#6113])
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-glk6/igt@kms_flip@flip-vs-suspend.html
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk1/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
>     - shard-glk:          [INCOMPLETE][562] ([i915#12745]) -> [INCOMPLETE][563] ([i915#12745] / [i915#6113])
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-dg2:          [SKIP][564] ([i915#15643]) -> [SKIP][565] ([i915#15689]) +3 other tests skip
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>     - shard-rkl:          [SKIP][566] ([i915#15643]) -> [SKIP][567] ([i915#14544] / [i915#15643]) +2 other tests skip
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][568] ([i915#14544] / [i915#15643]) -> [SKIP][569] ([i915#15643]) +2 other tests skip
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-dg2:          [SKIP][570] ([i915#15643] / [i915#5190]) -> [SKIP][571] ([i915#15689] / [i915#5190]) +3 other tests skip
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          [SKIP][572] ([i915#8708]) -> [SKIP][573] ([i915#15689]) +19 other tests skip
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][574] ([i915#1825]) -> [SKIP][575] ([i915#14544] / [i915#1825]) +23 other tests skip
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][576] ([i915#15102]) -> [SKIP][577] ([i915#14544] / [i915#15102])
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
>     - shard-rkl:          [SKIP][578] ([i915#14544] / [i915#15102]) -> [SKIP][579] ([i915#15102]) +2 other tests skip
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-rkl:          [SKIP][580] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][581] ([i915#15102] / [i915#3023]) +11 other tests skip
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-dg2:          [SKIP][582] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][583] ([i915#15689])
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-rkl:          [SKIP][584] ([i915#14544] / [i915#1825]) -> [SKIP][585] ([i915#1825]) +23 other tests skip
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][586] ([i915#15102] / [i915#3023]) -> [SKIP][587] ([i915#14544] / [i915#15102] / [i915#3023]) +8 other tests skip
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          [SKIP][588] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][589] ([i915#15102] / [i915#3458])
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-dg2:          [SKIP][590] ([i915#15102] / [i915#3458]) -> [SKIP][591] ([i915#10433] / [i915#15102] / [i915#3458])
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          [SKIP][592] ([i915#9766]) -> [SKIP][593] ([i915#14544] / [i915#9766])
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          [SKIP][594] ([i915#15104]) -> [SKIP][595] ([i915#15689]) +3 other tests skip
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][596] ([i915#15102]) -> [SKIP][597] ([i915#15689]) +3 other tests skip
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][598] ([i915#4423] / [i915#8708]) -> [SKIP][599] ([i915#8708]) +1 other test skip
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          [SKIP][600] ([i915#5354]) -> [SKIP][601] ([i915#15689]) +34 other tests skip
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][602] ([i915#15102] / [i915#3458]) -> [SKIP][603] ([i915#15689]) +14 other tests skip
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          [SKIP][604] ([i915#3555] / [i915#8228]) -> [SKIP][605] ([i915#15689]) +1 other test skip
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_hdr@invalid-metadata-sizes.html
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-dg2:          [SKIP][606] ([i915#15460]) -> [SKIP][607] ([i915#15689])
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_joiner@basic-big-joiner.html
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-rkl:          [SKIP][608] ([i915#14544] / [i915#15458]) -> [SKIP][609] ([i915#15458])
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          [SKIP][610] ([i915#15458]) -> [SKIP][611] ([i915#15689])
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          [SKIP][612] ([i915#6301]) -> [SKIP][613] ([i915#14544] / [i915#6301])
>    [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_panel_fitting@atomic-fastset.html
>    [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          [SKIP][614] -> [SKIP][615] ([i915#15689] / [i915#2575]) +9 other tests skip
>    [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
>    [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-rkl:          [SKIP][616] ([i915#14544] / [i915#14712]) -> [SKIP][617] ([i915#14712])
>    [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
>    [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier:
>     - shard-rkl:          [SKIP][618] ([i915#15709]) -> [SKIP][619] ([i915#14544] / [i915#15709]) +2 other tests skip
>    [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html
>    [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source-clamping:
>     - shard-dg1:          [SKIP][620] ([i915#15709] / [i915#4423]) -> [SKIP][621] ([i915#15709])
>    [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source-clamping.html
>    [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:
>     - shard-dg2:          [SKIP][622] ([i915#15709]) -> [SKIP][623] ([i915#15689]) +8 other tests skip
>    [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html
>    [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2:          [SKIP][624] ([i915#8821]) -> [SKIP][625] ([i915#15689])
>    [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_plane_lowres@tiling-y.html
>    [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-dg2:          [SKIP][626] ([i915#13958]) -> [SKIP][627] ([i915#15689])
>    [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-none.html
>    [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][628] ([i915#14259]) -> [SKIP][629] ([i915#14259] / [i915#14544])
>    [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html
>    [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          [SKIP][630] ([i915#14544] / [i915#5354]) -> [SKIP][631] ([i915#5354])
>    [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
>    [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-dg2:          [SKIP][632] ([i915#12343]) -> [SKIP][633] ([i915#15689])
>    [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_pm_backlight@brightness-with-dpms.html
>    [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2:          [SKIP][634] ([i915#9685]) -> [SKIP][635] ([i915#15689]) +1 other test skip
>    [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
>    [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][636] ([i915#14544] / [i915#15739]) -> [SKIP][637] ([i915#15739])
>    [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
>    [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          [SKIP][638] ([i915#6524]) -> [SKIP][639] ([i915#14544] / [i915#6524])
>    [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_prime@basic-modeset-hybrid.html
>    [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-dg2:          [SKIP][640] ([i915#11520]) -> [SKIP][641] ([i915#15689]) +11 other tests skip
>    [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
>    [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          [SKIP][642] ([i915#11520]) -> [SKIP][643] ([i915#11520] / [i915#14544]) +5 other tests skip
>    [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
>    [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][644] ([i915#11520] / [i915#14544]) -> [SKIP][645] ([i915#11520]) +2 other tests skip
>    [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-rkl:          [SKIP][646] ([i915#14544] / [i915#9683]) -> [SKIP][647] ([i915#9683])
>    [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][648] ([i915#9683]) -> [SKIP][649] ([i915#14544] / [i915#9683])
>    [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-4/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-primary-mmap-cpu:
>     - shard-dg1:          [SKIP][650] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][651] ([i915#1072] / [i915#9732]) +1 other test skip
>    [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg1-17/igt@kms_psr@fbc-pr-primary-mmap-cpu.html
>    [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg1-14/igt@kms_psr@fbc-pr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][652] ([i915#1072] / [i915#9732]) -> [SKIP][653] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
>    [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html
>    [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-cursor-plane-onoff:
>     - shard-rkl:          [SKIP][654] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][655] ([i915#1072] / [i915#9732]) +13 other tests skip
>    [654]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_psr@pr-cursor-plane-onoff.html
>    [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_psr@pr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@psr-cursor-render:
>     - shard-dg2:          [SKIP][656] ([i915#1072] / [i915#9732]) -> [SKIP][657] ([i915#15689]) +27 other tests skip
>    [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_psr@psr-cursor-render.html
>    [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_psr@psr-cursor-render.html
> 
>   * igt@kms_rotation_crc@cursor-rotation-180:
>     - shard-dg2:          [ABORT][658] -> [SKIP][659] ([i915#15689])
>    [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_rotation_crc@cursor-rotation-180.html
>    [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_rotation_crc@cursor-rotation-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][660] ([i915#5289]) -> [SKIP][661] ([i915#14544] / [i915#5289]) +1 other test skip
>    [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg2:          [SKIP][662] ([i915#12755] / [i915#5190]) -> [SKIP][663] ([i915#15689] / [i915#5190]) +1 other test skip
>    [662]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
>    [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          [SKIP][664] ([i915#14544] / [i915#5289]) -> [SKIP][665] ([i915#5289]) +1 other test skip
>    [664]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-dg2:          [SKIP][666] ([i915#3555]) -> [SKIP][667] ([i915#15689]) +4 other tests skip
>    [666]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_scaling_modes@scaling-mode-center.html
>    [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-dg2:          [SKIP][668] ([i915#15243] / [i915#3555]) -> [SKIP][669] ([i915#15689])
>    [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-11/igt@kms_vrr@flip-basic.html
>    [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@negative-basic:
>     - shard-dg2:          [SKIP][670] ([i915#3555] / [i915#9906]) -> [SKIP][671] ([i915#15689])
>    [670]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-4/igt@kms_vrr@negative-basic.html
>    [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_vrr@negative-basic.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][672] ([i915#14544] / [i915#9906]) -> [SKIP][673] ([i915#9906])
>    [672]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [673]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg2:          [SKIP][674] ([i915#9906]) -> [SKIP][675] ([i915#15689])
>    [674]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-6/igt@kms_vrr@seamless-rr-switch-virtual.html
>    [675]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          [SKIP][676] ([i915#14544] / [i915#2434]) -> [SKIP][677] ([i915#2434])
>    [676]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@perf@mi-rpc.html
>    [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@perf@mi-rpc.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-mtlp:         [ABORT][678] -> [INCOMPLETE][679] ([i915#13520])
>    [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-mtlp-6/igt@perf_pmu@module-unload.html
>    [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-mtlp-5/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          [SKIP][680] ([i915#3291] / [i915#3708]) -> [SKIP][681] ([i915#14544] / [i915#3291] / [i915#3708]) +1 other test skip
>    [680]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-3/igt@prime_vgem@basic-fence-read.html
>    [681]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          [SKIP][682] ([i915#14544] / [i915#3708]) -> [SKIP][683] ([i915#3708])
>    [682]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-rkl-6/igt@prime_vgem@coherency-gtt.html
>    [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-rkl-1/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          [SKIP][684] ([i915#9917]) -> [SKIP][685] ([i915#15689]) +2 other tests skip
>    [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/shard-dg2-1/igt@sriov_basic@enable-vfs-autoprobe-off.html
>    [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814
>   [i915#11815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
>   [i915#15152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
>   [i915#15542]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15542
>   [i915#15607]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15607
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15657]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657
>   [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
>   [i915#15689]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689
>   [i915#15693]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15693
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#15741]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15741
>   [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
>   [i915#15764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15764
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18048 -> Patchwork_150800v3
> 
>   CI-20190529: 20190529
>   CI_DRM_18048: 940d2c5064ed09bca924fd8aa017be99cc745b31 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8771: 8771
>   Patchwork_150800v3: 940d2c5064ed09bca924fd8aa017be99cc745b31 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150800v3/index.html
