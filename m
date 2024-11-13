Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 979639C7E65
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B5A810E299;
	Wed, 13 Nov 2024 22:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYHvo3T/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 022F210E742;
 Wed, 13 Nov 2024 22:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538237; x=1763074237;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=93jnuIu7CExO1UeCaHFUTkkiwFTMXcysjDJTyXAT+PE=;
 b=cYHvo3T/Vd7qhqdkH8SHoi23nLLek2ELDML1dhKLIg0miTerQ2kJna3G
 oalYW6XQTf4rZ+PfxJgZnS4636KWgzvgXyiprWbcPds/80C6IB6rm9nQa
 0eI/XX8Uvw7T5bOyvUkOdAdMB1SK3H8hKN/srd3pkVN4fMTng0AiTcYPc
 I/IQCgx8EKuFbClcAntFNxLeG7a+CD9pB5t7tQ8oAhO2KaCg2e5D420X0
 oPxevpuVen7OOJGJjhCHeNnfvkhbVD/GMoVBSkbzXpjjM9MUYFhzrDBOF
 0WufiF2KWViX+z7KyDD5czp/jn8VR7cjhB3dAbx0EDGR+dTLFrcyLJQEt g==;
X-CSE-ConnectionGUID: 9AfBshPsQHyKGT+7H0cb6w==
X-CSE-MsgGUID: NxXaqCIRQ2eihPYuN0emJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53997867"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53997867"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:37 -0800
X-CSE-ConnectionGUID: OrXivn5WSKKT+x8vREmGBw==
X-CSE-MsgGUID: XDLSxCAzSPO4Kd/ZvWtwGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="93072000"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:36 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xL59rsro7BQxT/lsBibZFyb/JR/lyKzaXB5B2wqzCuEgzzOaeBP2z0xTY+/mB2oig6LudW4ih5OjWtVXIgAW2JXEYDAHRgY8Mc67x0Onx0VTvAT47reTOnPiqf8U6zEmYNYwyBooyHyQEb3uWuAIII7TIHxhf1/gj3+nPgu22p4uAivK30SNJB0ofAoDncKv+9gD+uNtSuVKq8RH/pFZIp3Dlylm6czTK2nNIo8GueEo2WBhxdNI033SYRZW3Q74zchw7YycTGwRFIm8y6CnTXHee2jwAqgOJYip0rmD9xQroL07dG29Md+NgSeBfNnJb1/SQiMUU6uKQ8lzUZjNJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FN9L3P/MRCVYUkNR5Wffnw4gZ3PvpgXLjJLOmaF6D+k=;
 b=TLE6duyek5kp3teyWYytyYfaE0Tj3kRFzViuoMXs/jHTJasjbTnDoGRjDjFrPmdWqGTee02jOFkaiwVU2km2C0Y/xGaeXA8vIzAOxCfzkhARsu+kohILGI0YZhDM/9XzpJ4Kb63Iu6dGGzn9iAHwCk06ivsk/Ie4xMTTuqA2REel19v95xjBBaxXFayEqq1lNnNOmy0dJGBg7ilglsPqCSDfClQbX6nnj+VuumMGRvXSw1LRilivxWd96elKVgcBiP+xEvJONZhRZsCZanLvl1QN07Dte3OsimA/cvplkWjXe5rQFshBBEMGxQORNIPam7yZbAXENHAyhi9w6+WnKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:34 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:33 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 5/7] drm/xe/display: Delay hpd_init resume
Date: Wed, 13 Nov 2024 17:50:14 -0500
Message-ID: <20241113225016.208673-5-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113225016.208673-1-rodrigo.vivi@intel.com>
References: <20241113225016.208673-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR16CA0065.namprd16.prod.outlook.com
 (2603:10b6:907:1::42) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: c35137a2-0b95-43a1-48a8-08dd0435950f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VmRaefW/cuvIVDonTzp9nFk0FRTEMquTBHk5QYwxTXDVrRzRrFs75bputHSw?=
 =?us-ascii?Q?057Ukvc848LHbDFd3ogJ0CNe07j/tdw9AaaFGBwAAcnV3Tuat8CQPcHuS7bn?=
 =?us-ascii?Q?9u1TExRkS8oOj5dT4QGyyG/lp3AqXa6C6yKUyfJNtSJjkrnq2hPnuFDvZfzf?=
 =?us-ascii?Q?/e4DOuQWvrcHfhvetltOHanMwHW7/WOebCKozXtTR3OSSoqSyX0lhY26H6D+?=
 =?us-ascii?Q?f8uExsJekPf+n9NCYeQKSASjEhmuQfTklK2yhMw/0Wv6NsGWQeh2pvlZrZ3r?=
 =?us-ascii?Q?2VJ1ovKNh2u3N80z470QOs46wY3s7RIx+elflEtyPUmCkHiZWFUeu0l3YnLB?=
 =?us-ascii?Q?s6kfp3q5i1mP/zY1u0pffc03PPoT0vt7hZbnWNvXX1rtB7D4e29f2R9HVGVh?=
 =?us-ascii?Q?WBIbUTy+aoOaWhV9byqPrqtVJ52xfVCdFwDnd7shtk8rnFsZgHECVhXgRM0p?=
 =?us-ascii?Q?pFRGQLQJEOWh5dV4PIMGeCDnXP7t85QxATuyKpSwxETFtf0GZoXCBx88DPdX?=
 =?us-ascii?Q?aKFuRP3JIL/gB3cdjpDbbeYGE0Vxublaf0DJyNPuPijSJRoFhD0BoBi+8RT8?=
 =?us-ascii?Q?n71uiCO7RL6ujB/a3s+pytga3aSsM0SXzZQwlJrrz7yaXRMRLuKF8izFXpQ0?=
 =?us-ascii?Q?xHBdyq3p6N+5cr57PKaYA5cy9iNTJImUzz2vOtMA9ZP2UGOP4OV7FMUgfxOk?=
 =?us-ascii?Q?8KoR3UPAtdyjH/KsRmchMRpdJ7XrCBdo9eLvV3u8F04rd8/rWGfgrmWmuQ2b?=
 =?us-ascii?Q?7K4qbVsn24nnAlMGv/w5S/BUoabDFnHqKQn69wrJP1ytZYUwzT3cK2LO4wwJ?=
 =?us-ascii?Q?GqHgE9GS2dQp8vGBJVcDwRsi6eK0QAwxQXg2tJ+2s3J9gXuduVepUR8sg29i?=
 =?us-ascii?Q?WE6PVsGlRvFOL+9BaWJ4ePfCcGawmhFzpZkjJnhjkfB1Vf7iCAFu/IV7mI1t?=
 =?us-ascii?Q?hqzyRKIjsV+hJbIXN5zmEd8eh/zl+7n1Huvu9y9rMv9YmgkVmRnzJpdhU+BK?=
 =?us-ascii?Q?TZ/V57PI+xY8R5DYbZtGfen76NtsMCBussLuTMrAD6Ag91ghL3k0ok4uTKeX?=
 =?us-ascii?Q?Az3YDX6qoMbBSG4oTR/sBs6tViJEIuO1u0w2gME8osDiPh6Kv7HTI+KavTqr?=
 =?us-ascii?Q?A+a0RiAG8uQiPofKikDOdWByg09caGKcT5VF0KDYisx9LCS29KnIN+jdmej0?=
 =?us-ascii?Q?1CIUlSKnMxBHWMIbqNeHeeoiLb65N+XDfhhO+FbwnWJ3i9VSqIFAmuvdxyCU?=
 =?us-ascii?Q?BwmlwKjmBcFw/eKkt81yKXG78KW9POhTImU7WXviSV8X7e0Jk2HnMjfZjvAg?=
 =?us-ascii?Q?2sl8TjUe6kabMQvgaz4VTIWY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YHUOL1uutqdWtEyFdR1QQvQdlQYSC5Va6g9GiLs82fXwA7aNTtzGyuYv7Mjl?=
 =?us-ascii?Q?Nj8ssFuDSqlLBpJVses/9M+hbmhwaFefshfaSeAlYuwKewrB+SXX4y3DwnK4?=
 =?us-ascii?Q?eqp8UlhfMTt4LxVdF8q1n+TTzasX2XZMO+9DYLT8EQa8UW42h+ANojq08RJd?=
 =?us-ascii?Q?5Y5vavDHrMkQ2utwst2Gq1i4voIRG76ln+GmmyFjemOERMCzRvapwE4YxfpK?=
 =?us-ascii?Q?wt26hdKIK6KLPj/QxR2xMYXOiWmGtTBVd3Mv5WpBjbfoeccEM2EWP8G0zbzd?=
 =?us-ascii?Q?50BFVUaU/qaOypJ5FYAyze0D2Nr040iJL+ixcfppaAWUjFxFiVme3WMOWQXO?=
 =?us-ascii?Q?YU7KCfppSMnDmqpIrrz3/hEx3dsHBYq5DqmNu0U+RLXtu1uwa2lJNmQogbd3?=
 =?us-ascii?Q?rbILN5PaVZtAiyN0qPl5iYj6a1kkpCWMLe3TRgRoZjpAyZTpPNDDUOg/FkwW?=
 =?us-ascii?Q?jnf9VAHiCGOAaSJ3NW31amYT6Xji3KqUAeLkMcxruRfMq/SOGpZjd6e2mWDQ?=
 =?us-ascii?Q?/ymtlmch2LBXsPvoRlO1zSqlx/qOXMvfw9mhKxfyfXn8zmL0wOTAMa4aMqtT?=
 =?us-ascii?Q?MLS1oiqciTIQkjkxthNfA7/o07nZ948bJkYSPRtv5RrhcVNNmXswvm9iApYX?=
 =?us-ascii?Q?ckg5yd4odCBuVNVMQhFCAVPcNmLaAXzL26lXe1hSKdDsuQ6/UCBJ62HkOX/W?=
 =?us-ascii?Q?7E7ySsGLm4ZLCLBIGY7X9z+Po/g4y95YeJuzSh1osF3NHvGghX2ccUbjkszw?=
 =?us-ascii?Q?0KY0TYB370AM6rw/UA77rbepbUvwRd77YMUE7bq0VGPrEBbnS9fBj/hV7Akx?=
 =?us-ascii?Q?vqcahpqeQPpYAwW9YxvEJ7hDVrJb3u7DY3fbERs39piMdIXX06hKBhDHHn3Z?=
 =?us-ascii?Q?ffoF3CxKlhCaNTafENUqEW9WPVEDSrk+QJ4yU6us2hd73f6itGP46QhUDein?=
 =?us-ascii?Q?N+iOhDWyPpgu4Y0tJw1BeZ8CZktXneoM3g+PUMt41Me8OY3YwgbQEh+nkuNe?=
 =?us-ascii?Q?ikCqqRUNj6uBrZ35G+0aUAiAegDQg2SprluwsEQDi/+xsGxfeUV0ZqM7g9WI?=
 =?us-ascii?Q?tsI7LALs1ESA8+HkGkC6pQLG0nYZedJvgELGcZTpjYzwq+OO8GZC5a1t6xGc?=
 =?us-ascii?Q?pKuk8jDDlIZoUXqfCNK0XpWA1RMzWsXErLpXmZnIJQGyD6OJ6AH/KXDGes4Y?=
 =?us-ascii?Q?fcnfDjTUTc5GEZlO58f3S7tA3Q5D+Aq4bpw0UCq/AbaQ9zHCfwh4g0YgIKUo?=
 =?us-ascii?Q?pmCTUBenWcL0ES4AtofogfmOKE4ZUjJyvq3Uagc/970pwYpY+Lva0WWcTghL?=
 =?us-ascii?Q?Ta0586lhkOd2yl5zT0MThMN+vLv9/HuiNdWfZNT8voUVmdV/WgQSuFkrEc4t?=
 =?us-ascii?Q?ikEfb3mNlNzCQNf7OfdpRZ+79hYrjbhTzbCnbntIv57UnsinARxdjB75LbaM?=
 =?us-ascii?Q?wkvyADVThVFZ/aq7x/4a3os1TVGkNP+GDlu4sltFr13p2pIaQ+8F/cxdHfiu?=
 =?us-ascii?Q?w1+1qQXUvnmE7n7I1HO3dZRDjMiYfew0hPsTMDq+gcxiBJrpyzLTzwwvSEwR?=
 =?us-ascii?Q?cPFIHaBf+bIBbw58pJAKnKJmE7CKkiQE3wp8ZD8oojBLXW9pKKiru/13ekYC?=
 =?us-ascii?Q?Dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c35137a2-0b95-43a1-48a8-08dd0435950f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:33.9646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rRJalN0CQTy0dRlhyoc7wDOpVZ/dzqm0ZdfRzsBesisDgAfkF95W0uxrl2Q2WRQJ+TryEpTbTgDicJ0ks9Wf8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
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

Align with i915 and only initialize hotplugs after the display driver
access has been resumed.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 3778a7a0e52d..fe4d7c210744 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -444,11 +444,12 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 		drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(xe);
-	intel_hpd_init(xe);
 
 	if (!runtime && has_display(xe))
 		intel_display_driver_resume_access(xe);
 
+	intel_hpd_init(xe);
+
 	if (!runtime && has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.47.0

