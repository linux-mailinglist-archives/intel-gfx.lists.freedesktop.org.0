Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SH+SDS8zRWpV8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D31876EF476
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=kFCn7m3V;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5932C10E3C9;
	Wed,  1 Jul 2026 15:33:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134CE10EAA3;
 Wed,  1 Jul 2026 15:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919980; x=1814455980;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=OCn4TUkfzTU+49vv8SX1ixbw4mOlPwpUz1lezHgAFHc=;
 b=kFCn7m3V3/m8XsgcT/eYvE3zjVI3y28/CBey5/AuuNG0nw4cJ0ZSMO72
 AivttVZKs8pT4+K7UfyLY9xJpUrSgVvD4eeUkrhxsnUkZogAIOuy5POT9
 tsiPsi89/pxZL1957jpI3CqJL+vjj7l+bA2kLBiPVF+wbF/l+hAUAVzGO
 7W+YP2D7iV0PpukyozxPUHigZKnLLiRHRBsbv5RSvaVT2LmMufu+ievAQ
 MOm/FtJId1VBteRD0dt2S07ohxdvgtCBU1GNeKu349UB/No00F2QYlJaP
 P/De6geEZ4UpVz2xfRv91tyd5Bfc2bVGE7u/q/xzNyY5aN8P2UnSn6UWj Q==;
X-CSE-ConnectionGUID: 2n+8ctyJQ3ubnh9j3PDDNA==
X-CSE-MsgGUID: gHxyLmqOR1uKgBRJRBjC2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159202"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159202"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:00 -0700
X-CSE-ConnectionGUID: fKaeTJdNSzC4rkSov3FayQ==
X-CSE-MsgGUID: OyZA4wblT3eM3BlIonAxuA==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:59 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:59 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.44)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3uyddY83tMKTH8Z43iqfYnbUtLf6lBelDGYQhv9BO37HWy4rsVOmlDAW7okGVsU0UlATKe1N0t6DcJuhneEAWAf/Nid6c9GVBjEvdULmQcwTJY223FoNvDh7qbjdY8On6qBaTYuT3weOnxAPTPyNlIeUtuKA61aRbpkVGnG+VwH/HKx8XPMz6EVGYPNFy8PXlpfcvxGoBp4FgXmdv/gPwHd96delvzBl8e6nHaOTmbEzdTDkTBjWYZGeYjFjXD6x3hNrx9mSzh4zvdq9oZ1Axofwct/nR5zZzY8HXVj3GUPfPh9msV8+zooX7JipPUCcmPUDh9Rb7YiY8AfCsytAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/4oFPd94/pcV12KDEI7IsYmKhcTmS4AY6wcVacfKHZ0=;
 b=Q69Vs735BFDZe+bbhGV4lNHUft1w7mTqU7BPcp18M3/Zv/TdOqDub9VpQlak9Ropn8Os4ZYNU73OkxjIzKXUFlbhkpCW8BS71q6gWjYQIWwlK01KwVlqi+n7RBpieQqwzj0O/MszFx9cysfsQpZ5ZZLDpnZ9b91rJQQjLJZT0UUDw0AWgnWbfGLgVHMv7rgW4vn9Ff3IyV5jcgHfMgjXM2QSaeiYTQhjN0zAhXGiBydSrhHIegpUxiATZdUUFquPjWUSvSMNPZmWt++HZONISNRE34sndNNXR/ZvPU6FmcQJ1es/egYHEQrh0L5KqIZiFmWhODAEAt+K4Gb8tG7FCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:54 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 14/34] drm/i915/dp: Query max BW config via link_caps
 during mode validation
Date: Wed, 1 Jul 2026 18:31:43 +0300
Message-ID: <20260701153204.4124150-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 61e5a185-9701-4870-f296-08ded7860537
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: sibtxK1QVOUofukEDvr53HE8ZRzZ15GDmsA4fOsPjdOq0WPkw3y74rPrX5zyJN5syjIBrCeMoUa+DAfayzM/5KwT1CEeHD2LanVfixFs/qdEcbVTKKYDLzFOFGhPKik4oBL7hrswCKdYOuDKFJTN/nAjtgK/e4Jjvif8IxHWqSCSX9Z6qhQRgMPMSinGnATX92kBBXmKHwtOOMWAFxiDLBSWDZM0Ryb+6lo1WDIjogjim9iNAZZzh0wUQ3jXhxOb476BeFitnOWOr1UKJcVgy91qnbsqCxPRSLHmtJ8YVqcTTITxXK+JTx8HFOoptMTlg/7reCDmBtUiXnDSooM/+QVvNtkQo70Fd+W2899OkY1J/spVl4eddeECq1asQZQpRHnFaAQXCkUB5yvxfyxBer2CceIXsP5ajRX9RGrA45+KJcLK0qA6BO7TLCee3NdLvxLZcnkGbn3LRu7F79jcBzZfbsV6xWrTHMZQ55jO+NUOnjpxWp5auynHMPdbScx2DRWGr9QyxPsTTZrv89JrYUNAPaJz53+2NDTQpd7nCu0ZIxaVKdlaX2clRQH4aEPazHjX0DQ11id42AEoqAqHQbbxNVnUbelVdPuMG60znDAPicgIunhQt4PBXcAnpOnw5IhqAtBf9HDXVA1IrkCiqtEqOGa7DRZTLaepie8+fBs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I10QGObyhK+0Sr5auHziTPYG/qgdUqvqmXMLiQDon/DDZ4d4LweRWZ9YkGFM?=
 =?us-ascii?Q?/I+XYzCelkPeQUVZeTSoWKP7LKJqNTmdMW3mO0mRPP2eM39oC7QAXztC2qJn?=
 =?us-ascii?Q?cTNXPEaBCCAZjoi6Pxxy5RrsM3r7CBMInDJXb4+InuNoioVFc+AVnj+YVxD7?=
 =?us-ascii?Q?XmkblvbA2skG7BJcv0TgwCyOkpB8swi9VQ0r27a7WHjQb3UhSqXKojNPGX7i?=
 =?us-ascii?Q?+iYzUb8lae4bbPwEJc95au3hmwGGv0MeWZY2hylFFi5O/ETB70RqbOuHo9su?=
 =?us-ascii?Q?XfJHzXUhcdVj4jXdGuS5W8X1PassiUe3fOnUcmZY6rkioBB9xkHi2p/cJRwn?=
 =?us-ascii?Q?xhWUna/C/iykBPMeX+R/3TIvB7IZrc7LJ/x5+E4ul0HAGY/Lcp669524NNkD?=
 =?us-ascii?Q?LHQMzhYF0b3y9Y4zRLk+9zIIh8ejwRxbprQxnvigTrh58CwmG5tEwR1ogucS?=
 =?us-ascii?Q?uHMdobf658mu9feySnRxPWv3KF6+YaFGMI9Fl6VBv2oV7KCpgRSJ7Y5Nhz5Z?=
 =?us-ascii?Q?FHrLyaXrjrMpVgsGNh1205zwP7DtY8J4HfqE/d6RMm3bZ/lRzw0SoV+vOgxG?=
 =?us-ascii?Q?KgXi0805CeLPCcui6y7Pj7GNxx0DsAMsX4dCmIqQtbChc2G4RAkRbObvuQaB?=
 =?us-ascii?Q?jjh9hwvVvajk//yF5c7w2qBUXSbuOwM2SpUhiGJ7RLfLR4tZZo89tLZnTm4E?=
 =?us-ascii?Q?qyFqmMcQeawzdvsUv2n7Yzc9LF+vZiaTwuGQZk1VL3hFu6/BHDEhT322W4cH?=
 =?us-ascii?Q?GuPbCQD+B2SlKQP+gBe0BA4hGt314sOzYsTe3B/e98KxOsIjMKsSkEzARoIg?=
 =?us-ascii?Q?KpzXf0fG1gy/1oSUtcReMP1A+kCIgWJX7GAi+Op2iX/L36MkYCnZsRW0/oSy?=
 =?us-ascii?Q?GAY4JhClwigxcV8X7dHJLQoIFEDZ/3+9ikbjuK5mrgyy//g8tqaSi+ib6fvq?=
 =?us-ascii?Q?En0mMov0BeZ+UaIcv6TFu7m+d396DGwAME6qhbZudx+JqQX3D6LpSaKlHN33?=
 =?us-ascii?Q?CiYzw37WdCaAfrWt1cX7Quwfifvc57kdu8N4Wzk3fVb4JZ8alMk2dfHgH4Fd?=
 =?us-ascii?Q?BCd8aQtz5gkOXt5YRyOOTPyiOYDVj6wsar2daqi0pfXTFvigynIRFn9YZQQf?=
 =?us-ascii?Q?E5igWq2kKCrA/puaGM/rv8K9nMcSnqYAxzkEQbMScOIK3gjoIogSUZg7JDqV?=
 =?us-ascii?Q?q+GgaNkfbzVawnkQTwKEGlWfKlTeC0NbeDXpZK8s8MnoproLw9F0ff3Fv7J6?=
 =?us-ascii?Q?dLm4cg3pV9xJOMGyzEgJZF6OtErwnshXTXdc1Tgsf63OXpeUy0ZVj3b37wp5?=
 =?us-ascii?Q?GATzTmawU9+pB+gevijMM/NlLQ4LJF/gWCMfH82VBHUEvpg7JFEaVZEwb49r?=
 =?us-ascii?Q?fSMmSP8+Fw/7FNbv+ZeXqIKHQg1X+j219cuWPfwdCoVr4Z06PegSX2cV/NeO?=
 =?us-ascii?Q?7y1ep2He3ZXWGAooIOrxE6D/BoER9lyKzdrsPwcdLkp83bVgn72VfxZuPDVX?=
 =?us-ascii?Q?fheBFev54ChwNT7h+tNskbw2WLHHSApXaK1UTgxvYGlLiTsLgTjsbZU9Jyjg?=
 =?us-ascii?Q?vDTJuih4hOL3aWf+7dCLBZdIv1dlmY7BYwirnlpkOhAHYQXih4JPd02PiWXc?=
 =?us-ascii?Q?nKQcPlRtRbI7Vl0zHW9I5+mdQWpYwpGaYWFYkqC5J7X4j0VQ15r80UDHLT7o?=
 =?us-ascii?Q?PzXdUDjUN/rDmChm/0ASsMbY0HHEK0PsHwo6OxsovahnGcGWWtZ1VATRuDT7?=
 =?us-ascii?Q?crQicJ4tYw=3D=3D?=
X-Exchange-RoutingPolicyChecked: WpXn5IP760emds4taVSk5jGaCiVt23QkInrhRcZVFagmKstMuZmddN51KbjLTzUizHu+X8JV1rLK5Jffx8szGZvFX5kCE5j+1zd/viMPSSy1VcKqwAJBcVqflNSrxUFl3UuFDAv6yVpoI+NWXLC0P1eaeLuF/1XoZOkXy0GCuViM6bcwO4/81BInL1vNW4Gi71GJS67elRY3Xd/czgcny2vFgQvnOKMlS0bgk7/VUxIpujIjNf/HrWagyjgcnCnWxDfm5LvICdisNtKJG3/+HXmFTnkhujielSW/cc7txyD8Qq+lWfawg45KagJhgNOg+P1cMBifgML4MDzPiK00VQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 61e5a185-9701-4870-f296-08ded7860537
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:54.8258 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Naos5AZUIT0p6q/YK1YpqVaFnAGsa9vYop9nmk2xI6/tk7NWL+b6OGmx8X/ZNNBN+qwREuW2d/PeXb251EfYeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D31876EF476

Query the maximum link BW configuration during mode validation and MST
link probing directly from intel_dp_link_caps_get_max_bw_config(),
instead of using the intel_dp_max_link_rate() and
intel_dp_max_lane_count() helpers.

This makes the max BW link config query uniform across mode validation
and TBT BW calculation, and allows unexporting the
intel_dp_max_link_rate()/intel_dp_max_lane_count() helpers.

v2: Use the max BW link configuration, instead of the max link limits.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++++----
 3 files changed, 18 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bc333bc9296b2..b10bbbf0f49bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -354,7 +354,7 @@ static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
-int intel_dp_max_lane_count(struct intel_dp *intel_dp)
+static int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
@@ -1331,6 +1331,7 @@ intel_dp_mode_valid_format(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	enum intel_output_format output_format;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
+	struct intel_dp_link_config max_bw_config;
 	u16 dsc_max_compressed_bpp = 0;
 	enum drm_mode_status status;
 	bool dsc = false;
@@ -1343,8 +1344,9 @@ intel_dp_mode_valid_format(struct intel_connector *connector,
 
 	output_format = intel_dp_output_format(connector, sink_format);
 
-	max_link_clock = intel_dp_max_link_rate(intel_dp);
-	max_lanes = intel_dp_max_lane_count(intel_dp);
+	intel_dp_link_caps_get_max_bw_config(intel_dp->link.caps, &max_bw_config);
+	max_link_clock = max_bw_config.rate;
+	max_lanes = max_bw_config.lane_count;
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp, max_link_clock, max_lanes);
 
@@ -1538,7 +1540,7 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	intel_dp_link_caps_print_common_rates(intel_dp->link.caps);
 }
 
-int
+static int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 13872b8c4975e..9564369ea4852 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -111,8 +111,6 @@ void intel_dp_mst_suspend(struct intel_display *display);
 void intel_dp_mst_resume(struct intel_display *display);
 int intel_dp_rate_limit_len(const int *rates, int len, int max_rate);
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
-int intel_dp_max_link_rate(struct intel_dp *intel_dp);
-int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 int intel_dp_rate_index(const int *rates, int len, int rate);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ecc90e8faee11..e113c9e60e67d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -47,6 +47,7 @@
 #include "intel_display_wa.h"
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -1476,6 +1477,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	unsigned long bw_overhead_flags =
 		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int min_link_bpp_x16 = fxp_q4_from_int(18);
+	struct intel_dp_link_config max_bw_config;
 	static bool supports_dsc;
 	int ret;
 	bool dsc = false;
@@ -1508,8 +1510,9 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 		min_link_bpp_x16 = intel_dp_compute_min_compressed_bpp_x16(connector,
 									   INTEL_OUTPUT_FORMAT_RGB);
 
-	max_link_clock = intel_dp_max_link_rate(intel_dp);
-	max_lanes = intel_dp_max_lane_count(intel_dp);
+	intel_dp_link_caps_get_max_bw_config(intel_dp->link.caps, &max_bw_config);
+	max_link_clock = max_bw_config.rate;
+	max_lanes = max_bw_config.lane_count;
 
 	max_rate = intel_dp_max_link_data_rate(intel_dp,
 					       max_link_clock, max_lanes);
@@ -2135,14 +2138,19 @@ bool intel_dp_mst_crtc_needs_modeset(struct intel_atomic_state *state,
  */
 void intel_dp_mst_prepare_probe(struct intel_dp *intel_dp)
 {
-	int link_rate = intel_dp_max_link_rate(intel_dp);
-	int lane_count = intel_dp_max_lane_count(intel_dp);
+	struct intel_dp_link_config max_bw_config;
+	int link_rate;
+	int lane_count;
 	u8 rate_select;
 	u8 link_bw;
 
 	if (intel_dp->link.active)
 		return;
 
+	intel_dp_link_caps_get_max_bw_config(intel_dp->link.caps, &max_bw_config);
+	link_rate = max_bw_config.rate;
+	lane_count = max_bw_config.lane_count;
+
 	if (intel_mst_probed_link_params_valid(intel_dp, link_rate, lane_count))
 		return;
 
-- 
2.49.1

