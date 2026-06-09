Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e7wpC8MjKGqa+gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 16:31:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB006610DB
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 16:31:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b=eEv8uwL+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98D810E302;
	Tue,  9 Jun 2026 14:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56AD810E302;
 Tue,  9 Jun 2026 14:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781015488; x=1812551488;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=cabMG7exs8M1JAPf10Bf2mhMrcPvC6272rOwVK0PgCA=;
 b=eEv8uwL+pzgHO9mKex8/zaUoxy2/+34V4n5U1kCnjnMpYJdxz0ff4Doa
 HkjgaO+/GZUg9OsGh8aZcc6/W5BJzVRzB2MrY+cJ1qhMVtnkXCxBHXvgL
 Gylgj//3PkWo4cWzU/9kgCcz7FThyWDZMr1tBSF/Ggc6JQRl+fdsvvNxw
 Wxt8wXOWL7GF83qz6tfHDSTFygNKpB7yGtNwbM6ZMGZ07qwZwimUs2l5Z
 uPmiYqlXah5esw6SgTpwhLgvv3YFxlkgyIMddIcXAS3Foaqi2eHWtnV5s
 +PKaP2fELsoUpvmhJc/DsK74xGsbJCm73esTDVT+DzmzGE2Yrutp7iykG Q==;
X-CSE-ConnectionGUID: bZT7zzFeRmaxR4O2n88oMw==
X-CSE-MsgGUID: 9WsX26HEQYq20s8+EeeFwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="107213431"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="107213431"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 07:31:27 -0700
X-CSE-ConnectionGUID: GJfeBIvuS3mX0X5rxjfabQ==
X-CSE-MsgGUID: lkGjlgTbSM2kS6HsnlVlQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="239538536"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 07:31:27 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 07:31:26 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 07:31:26 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 07:31:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Nu+/fWe8A3gQfS+RWjcJznvgZlSAN3ZrWgirJyNl6p0mfoYauoOY3/Z1/S7V0DaYFzXXQFby3+GATsZOn6NR45eWSoHxP8sRh6ZmgQ8muDW3nFvVmK3HIl4XoEW0MwNgkcVxd/irrb6TNCzhCaAI8mksVGYZpmQvGvdb2KW3wMtliU6Yp5yiMKyquyI14evzg1tctU+UxkAIHLkkoRnUM4wvGg7q0l0vM0SDp5NvnWiUf44GWd5haYa4W1/VX55J3Seg+gIa4DR2VEjSorC2Q8AyQ6OyKXOTDSEiHHAcvIp9/IgVdkfQCTyubkMeufnaRUOGSmJ453whZenxcsjh/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8mDvfs1/vjgREgVVvV1+/KjE3nWbmQYS4vjp4EBdYzI=;
 b=eacF+Xvg7vYwoKK+TQ0mTxYcxlf93kj/6loey1cyVKWUhbDjwFdOqgID67Ooy/h2mQ4PASqHY3NGwHfgxH9cU74EVxEq+Er0SDHEc+d+0rCMezvRQEpHsXMazEOwt4GZIp9e0PFoaJPqzPJn9AMoRzwvE/SN3p/AoZULFXehZCRhXMKVdsoneJIayI+AH6wW4Okzp8M1bgwzspC0dvOufbAXLfoaoRXuMj/kZ4PaxiW6z8Ft5zaaFlSjdCew1YjP8Tanm7tMnCVcs0Oci6U1SnvUEDBGMKVAt5XarYefvVpA5CqMKetrCja3BaemkzzC8yMDLm6TzdPSlJ2D2tAj7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA1PR11MB7678.namprd11.prod.outlook.com (2603:10b6:208:3f4::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.12; Tue, 9 Jun 2026
 14:31:23 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0092.007; Tue, 9 Jun 2026
 14:31:23 +0000
Date: Tue, 9 Jun 2026 17:31:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <rodrigo.vivi@intel.com>, Ville
 =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915/tc: Disable outputs instead of modesetting them
 on link reset
Message-ID: <aigjtXiFqvxTGUnD@ideak-desk.lan>
References: <20260605212837.4265-1-alexander.kaplan@sms-medipool.de>
 <aia3UtOtXD65T8Eq@ideak-desk.lan>
 <20260608223548.2574-1-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260608223548.2574-1-alexander.kaplan@sms-medipool.de>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF00023A1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::21c) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA1PR11MB7678:EE_
X-MS-Office365-Filtering-Correlation-Id: a7c11d6d-e667-4dfd-e45e-08dec633c7f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|4143699003|11063799006|56012099006|3023799007;
X-Microsoft-Antispam-Message-Info: S8xKl8nFhC7Drw1QuUNiYWTiO+eYdVpWETxw/UfMWw884lccOxCz7UfXeqEUN+7qQ6gdEiFjq14YRAkPc9KakHflqdwUIFFZh3+svCdh4unFXkZcxE3ZP0u+Ot40iqqKAtoaoNecSs9fGsZOLjYxOx6NtOyIILQG8FSTcQfY6KjXR+So9sLYREn2IeA2vWni3LMYCN5QjsgvLR3vQapmX2GYjNShvuSGzLhYEweNvsYJr0MdwZ74DNn1L5wgSkAUHFAEPXP+R5B5VoMJXh/VznjHTlZqfb7rWa9baUeNqGkrbOxuG0jtduTHqtP+ewIylZjf+L0kD/rMKWiQGfKlKHydbbGLGXo4PIGGTXeUHvAPvyZfYejj68eudjJcVyS+6buxp2FUkgeIL8Hgo7U/6ymo3sPh5ehMr3zhqMY5jLwKnW9hiHZFaLEZlZlshdYbPNmqjKzqjt5+a5AEKz4fXYhizT7T2PxbcxTUVKqiWyTT6vxMW8H6/1fSTpXagzE56MBx2uBjHEFj12gfJcIuyc9Ai7NaklCFVk6PRKa8gdTUgOj3YB0q1KGrRPMMoTGn+Ij1N58EDgPptDhvGfnLNGRPU2n9QA9fd5w6XbJOTDa/OCTZNzFCkXI+pmISjmQg+w/+1zaCkycV1wzOIOjakg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Tat4l5qaBLyKnv+jjFKKzkwUiBRXKymM2ahRWdeHfXrbbSx/KDtZf+MXsZgQ?=
 =?us-ascii?Q?1HA7d8qcEYRhFAQ9bPezJJLrf6gFvIhyynQSAa73bFu+nyfDrBI48bktqPbs?=
 =?us-ascii?Q?N/TZJguS6x5578LPH7dC6S6wdxEVodJiKXYazw8rpbxnnukJGiqE2f+S+jLG?=
 =?us-ascii?Q?CoEyUuXdTd0BA27p3vXhRzlb9Ypk2S3f4HI1NYhlFkQQD9T6iokeEXxsII20?=
 =?us-ascii?Q?JELhzW+e2g/GsfXimG27fSjWlpmGqarol2gws/pdE2RaF6oFCioi8gv+9361?=
 =?us-ascii?Q?nEJlw3uHoIi6WPOGDNXN0wzEUeidN4mWNWJZyBZD31qj6vUece1Zk1p+eeOz?=
 =?us-ascii?Q?GrPZAMX3TMiSeWrAfVVvWQ/sIfSTOViYVsZv5QK8uixAs5GEn7bu0lfA9wOE?=
 =?us-ascii?Q?MFy201WY5ITN3Tx6eaqzwGSLn7z5bhJPUeUzchKYetGFK7A0gakseDup7ud8?=
 =?us-ascii?Q?MvrgMSPvO/ZhN3q0JvlhwvEef0pRd4bDoKkZhNo1re1D5Zhmz08beEMQtvol?=
 =?us-ascii?Q?tRoUgMnx2aTwOCvLj34H60o5CRQ4+00TvrfKDVZOO6ONVdgXj5VdtmcW6a3N?=
 =?us-ascii?Q?06bR0BtB6RL2l2FWqMk9UpnzUFfQ76H+qWRsJ229xGIRjbx3LEh2Dzsg+3/e?=
 =?us-ascii?Q?UEl8eQptBkufc3swzdK3eHOuqSClj82y7SzdpUVou8NbarToquenw+T4Fqe5?=
 =?us-ascii?Q?YDXeFnTdsYU3BccuIP/ciIV12m6kyXsvWge18l9LP8otqTqFBX8NeiV2+T+E?=
 =?us-ascii?Q?a4lGIXs8wDTjmcym+dVNle+/o42TAb/SCCG2tpcX52nSdDznXJCQU4Wim9km?=
 =?us-ascii?Q?MT/3yCKRpVocgdA5JEjsyyur4U8EF2IjytbWTUjVR5iP7pv6k/lqWcw142vq?=
 =?us-ascii?Q?1fUSh6au7rg/sIaUSKq3VFXK5hRLlLKJL6yFAoJOdy+JBPgrMVzfLMC7ITRj?=
 =?us-ascii?Q?E133tYm3aY54bD7fkclMSWBCKOD3eyysU1ZbkKwuI3Ums+F+K5git6e3KkZd?=
 =?us-ascii?Q?mgsHro4bi2oueP3d9CoBOb7eP8HwNrRafUroUuCS4Acq2h1NOTTQ08mQbkht?=
 =?us-ascii?Q?yikixfiUOmeFTQvPigh/PB66j6cGODldWZXLWxMvSVDD3Guv6DlHEzp+iTfX?=
 =?us-ascii?Q?sDxr94re53jIfVn4V8a7SbypSG/0V0vDvpItWxbu5WUvIiLX1VQSIqG/xSf/?=
 =?us-ascii?Q?U8xpchHZJY1xjYxBT/NXjXz503Ogt18zP7SJAZjJMHcvUWTSBBjy2+Dku3rj?=
 =?us-ascii?Q?vg67N64KrtA/6vAZiRru1eV1e9rCmfml3lulLY0+gOlzUNxiNKe2GZaVGFcE?=
 =?us-ascii?Q?Y6WVmEI20RpYs+JJ5XUvDrBDERhefGDpaP7CQoqA244KCHhhqAcF9YK+E3zo?=
 =?us-ascii?Q?xTmAEBp6lbK+YPdfYQsm84+1oYiUdxDmgM26fURZBNw3b7/fdCN2ezqzSUpm?=
 =?us-ascii?Q?0uYYknIj45Z2ULoU8/CV1gHzOls4bPd/RcViZuhUEUKoJgYtM8qbvPYbiBIk?=
 =?us-ascii?Q?Crhc5E7M8UoxFc4MHrfrt3CSCeq0gSHAP8nPI+3saT1S4Arbm7spLDj340Oz?=
 =?us-ascii?Q?kpN8yUplj1L1C6scnp4tpoZdopE1dtOftTp09cklAbHOiqz4jNtM5/sIowRS?=
 =?us-ascii?Q?wo50TlwhgnroOi3JqrDAlJDO3vh3X/rlgyKnKA7I+dDbB0ZaNanlJyJuveY0?=
 =?us-ascii?Q?JHSb7GDJ1LV3z46hVMzWzE3hRf/EeW/+AQr0ijNMqLJEVxajRlXklroXQTfZ?=
 =?us-ascii?Q?XfJ9x95HVQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: JTcLrYALcYb2Aytu8awUQcj8pLlxFxY3cV+zEU3Wvhu5Oyl4Hxj6q4d3388xUdxT+I3sh3lx918BmygU/EUSVnPE+DZxyOrQEGPtjMsvbsv/qk6RoBmkYwn/5AkPiL9fGRkeJoxbpsqqmajLzAnQYtJSXeQsINOY0SEplWHCXQhLWIWKtwsz3s6Sy5IQsGlbnyucEgsKfnftdoCksVxp6v3psOT1dsw3Hys6ZI1ALQK9FU/KdOHVX1hQMA/KCBpVxlabzvGUXNZzH7sYbh88DaXcZkNPqAz8v/QhE3NbCCXs1JuZ+hjo89H7/L79/TCzaCrsGo9kqoe69ry7CjNcHg==
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c11d6d-e667-4dfd-e45e-08dec633c7f1
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2026 14:31:23.4754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D9j9qoNVrXMo688+tj7TIosSo2IxShv8ZtvRQs0/QWEXRqNqloLYk7XeqXlm/i4J+gWUnmSYIcG/Kv939ybJ8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7678
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:from_mime,gitlab.freedesktop.org:url,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,ideak-desk.lan:mid];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CAB006610DB

On Tue, Jun 09, 2026 at 12:35:48AM +0200, Alexander Kaplan wrote:
> Hi Imre,
>
> [...]
>
> I did the test you asked for. I rebooted latest drm-tip with your
> patch applied and drm.debug=0x15e, and reproduced the problem by
> power-cycling the TV while the output was active.  The full boot log
> up to the wedge is on the first ticket [1], with the reproduction
> steps.

Thanks for the log.

> On PTL this never reaches the -EINVAL / WARN you get on the ADL/MTL
> reports. The recovery modeset computes a valid (degraded) config and
> commits it against the dead link, link training fails, and the pipe is
> re-enabled regardless, leaving the output enabled on a disconnected
> port.  After that the TC PHY ownership stays held,
> intel_tc_port_connected() returns false and AUX is rejected, so the
> reconnect HPD never produces a successful detect.  Keeping the DSC
> caps doesn't help here. The caps we lose are dfp.*/EDID (the PCON FRL
> bandwidth) via intel_dp_unset_edid(), not dsc_dpcd, and the second
> failure mode above is independent of the sink caps anyway.

The actual problem is that userspace does not follow up with a disabling
modeset, as it should after it received a hotplug event and did a
connector probing on the connector where the sink got disconnected. The
connector state is disconnected in this case and userspace must disable
the output accordingly. However it doesn't do this, not sure why. I
provided the corresponding events from the log on [1], the best course
forward would be to find out why userspace (something based on Wayland)
on your host doesn't do disabling modesets.

--Imre

> ...
>
> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14807
> 
> Thanks again,
> Alexander
