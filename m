Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C486B984C60
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6533F10E765;
	Tue, 24 Sep 2024 20:44:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xm83grBY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355D810E764;
 Tue, 24 Sep 2024 20:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210653; x=1758746653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Hn3r+WQ7PmyRLF8YYk7BKP8F7h/w895fPiRUOeZBGrs=;
 b=Xm83grBYIrt965lPzayNfTupqxDw+dWyoA3UF9/l6OuZXIbGY2DsU32p
 ZIMMtLyB035hGgrXlVC5vYYgtDGRm+heI0/W2PrWaTiLXHxUQN0AOuf9N
 ilY9szBjELI6Ub62XeCLj3oNq4GYvKfqol+CtsRHdFQpRmzcGcYJvG6vj
 SE5c7kpTxJTzHcn0XM6q8DcWIBrmFNWhDOXicmAwgL5zHGKt9PkfkciQr
 T800PyhO7ZRN86x2mdgUWEngQ8shzwQq/P3JVEB0S/EMmBjGy66V2b179
 zNzASA8jsj0kw7QyixgRhhEd6qdG6bcDa4wGRSL+YosnlnrgB6KIOUjzV Q==;
X-CSE-ConnectionGUID: VuOCrMTgSaeYXlwGgYX5gg==
X-CSE-MsgGUID: tRJZ1VlhRd6yZBH0z/zl9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751625"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751625"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:44:12 -0700
X-CSE-ConnectionGUID: KoVHVyfsRiaTyWVU4AhmhQ==
X-CSE-MsgGUID: WvnCRI2USuK5RPOhWGSOiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298976"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:44:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:44:06 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pKK+2Z+9y7R+wDWaBrhS+5qxTHoUWk2+SrsLtBTcy6zMlnwJtHwk5BJ81RComViXMo0ryPa79X4AlndEdij8epnI+wx/V46hZly+vHD09n9cOtjDa41tWUYRAJlUVs1xwhxbK/XE0iiiECWwzj5J1GvGZ8u5nhmtJZ7+4JFqhX8Gq4g5NEifopL55cexqj9gdsbnd9WadYtDZAPZkz7f8biSmM12w108ltFobHrQuc1TjeAMZrX5CuZAmKofX5t0i978IoeGZ3Hw0xoZG83+AojlBw2GCMOVWTtJ2ikT6bM+9sjMiSohPF9tbonv6aODhGHTLlLdNdkJuO26uLyE0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7728YYDObPGhW4LvuhuCY2Sqw9uuDo8UVZ9b+WdmX0U=;
 b=BCsp711RC8NhADj0w8rAzvpqk1XIdLiQCsvC9KOfta6HuOl+QE5H04HjoZRoLFpss9qdcYk+ijEAfge84EFzIt4bWQQ9TJR5EB1cqh4v+Eo7bK7aineLA3UzCc+VWKPyEm91axvgnwK98XpT2cQZFVueaXTTXWCDTSzcgyeMUvWfLyG6WQDbJBBmad9P8OdqrMcEZ0ZrdgqkuJwElFwiFaGeAtz7AlF4BXkgBdyWg1lW69lBKdssgDL5CRAnvw6HWpBlEah1yJgQeqc6Sqt5v8RUY0081bFX/JM+vYfl8/U4RIYh9Qx7ak70yLDjYIavc3RMYluFd3n++xabBy/NVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:44:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:44:03 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 30/31] drm/xe/display: Add missing power display handling on
 non-d3cold rpm
Date: Tue, 24 Sep 2024 16:35:51 -0400
Message-ID: <20240924204222.246862-31-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:303:2b::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 98e60f63-bdf7-47fb-6d00-08dcdcd9a05b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wCSRLyoV+/vxLdKd2WdjOP6E++Wfm4Z0FsM5r6AzN1wIC8n0YFm8+440sCW/?=
 =?us-ascii?Q?tPbORIHtrcyL6EBDe2uOjDL/+MBpJArD144/HEPPaNVY4mSLxu0b/zzA5N1v?=
 =?us-ascii?Q?mZTC2dk8WYGwLmDn6TrdhlkcyH0c8zco93dWOcQUcpKlVZ0Ccx+LviwRj1bk?=
 =?us-ascii?Q?8xq6TXK+MJsS0HAK0pqnBwvtq6PVpWg3t10PuPgymU9GuLntu2P/IonPOWGl?=
 =?us-ascii?Q?wYhQZHJv0/t0iqd3WAWvmyITrPYE/vYZiHvXkxp5PMmPfEAexsAYGWLLEpFl?=
 =?us-ascii?Q?XtpLueo79x434juDYqNqUMdo25xx7aEB4jd7v2FxUeR/aZveJM40sECEMsyY?=
 =?us-ascii?Q?FZ+R4n6qZ/YnycubpExaU8kLEf2p0wOZTeG6ZN3vXEi33bzDpRu9VaN02crF?=
 =?us-ascii?Q?vyFepHRxEdGQ8d6YKH2hF5erePN3ZUG6g+5YW+mRDVGS5p7sGHdN4dexN6LM?=
 =?us-ascii?Q?yjWHZRu6gp1+Jm9lDMKqEBzwrXG2+yVBqi1Svg2vxPB2dnt4L398eleGdpvw?=
 =?us-ascii?Q?yq6PLsKFxEn2V2BKBth0oeVpZcfuQFJgT1nqSnXUbAIiIs2EbJaSZP+XtZFa?=
 =?us-ascii?Q?xsKmmvsIAMRXB5Zpy8+cC6sO0z0bOTcYm28L+iRScCET6W1AkrvXP+qhgf7W?=
 =?us-ascii?Q?TphgSAy+qQGBqZVFIups3cF6jfiemjRaKAN2VOiwubfcEa7eajIT+Nva9TUf?=
 =?us-ascii?Q?+VTw2wx0s6I15Uhvmho2T2QAnVrYWoc54Pzcv0n9ngkLy5VKWdAV566ye1XF?=
 =?us-ascii?Q?iFAUYNZePqoo1dJRiAcIU3bNlaLoDDxftDAR3/kZu04vrHLFsBEib2hkfIT5?=
 =?us-ascii?Q?q9qASjLhfyyzsN9Xil07OmQ37JDA5puWC9+cavt/l6FNOjsn1NBQtScGNSgh?=
 =?us-ascii?Q?mc095AAri4W6cwumEe5qMixEHrShon89CzY0Uxyv1ychILDnKuDXyHVybnoc?=
 =?us-ascii?Q?AKWOvjSSN9krjcxQdFMCS2qXVUkyfBjJtO8etjCnd1FXkcqhg9fPMB2xWiu9?=
 =?us-ascii?Q?BsVf78IPj32SDD+SxOmWdZb4KS4ZL78Pzg0HdW/UWXEJCkOXIX6ZHARg36JJ?=
 =?us-ascii?Q?t6usN0P1GdsZ+beofem2xqwphSra40yE5DWw37zavKc9dx+fMgavP8yuIn97?=
 =?us-ascii?Q?yXzmpd8B6/UpSpm0VTVO7mcsxALo25Geie8otz2UI9aQ33f3b5tR4qRfhyY/?=
 =?us-ascii?Q?gF1dL7uQPnSrRowszMZcGD+QVoltvQJCcPbon0snpXqqXlTYqkDdeC5lCEK4?=
 =?us-ascii?Q?K9Fee4k7+9S7FDPG61rdNQ/LibpXH8BIEA0+NY27H3S2psYUFGXKh7+Rc6po?=
 =?us-ascii?Q?KnaHrW28WJiicc6HFcVEAa4Etb/U0YEFLAfDog3+7lklwg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dLRIRHh4C7f5qwud+yUr0SBQPHwhFfVpYwPu0/xI7cwUzTyJsLgEbIGLzP4S?=
 =?us-ascii?Q?loNBmJXxj0D8AXnp2GDGesfVXkzCYsmcM7QuK1d51IOJVXvrF+HC4tVRgqhP?=
 =?us-ascii?Q?4Acm3c2HInRKjEMSSG5l6Wy3jsbxL+t9hjRhle/End8MUuQd4Gd3pZcI+FHE?=
 =?us-ascii?Q?eQKs/9u4mThpKZxD51Pcy7+kuLK2lo8hfGYyYLFGnrdxq7vPDlGGdbJGNoDU?=
 =?us-ascii?Q?KLdcfLskqgm9C+ru4H9QJL7n3S5fecmI89UhL9mdWyNcyQ0ftMJSl4PDcSam?=
 =?us-ascii?Q?1OvKLeGXCZei/n7fHsjl0L+8R/nBM1z1jNrDkZkD6uhsucn5WJKeb8gB59p+?=
 =?us-ascii?Q?P5wqtSYzeNcaSCGQFEoNUGDvz/yYC1ePIg9/XuzMHpZZ/jnNREG86XrwZDnV?=
 =?us-ascii?Q?TpYNWHkW7t1ap0feilb/zLUoeBeX9vLyM1kJQPSoQlVZt246iGzom/pIHmwx?=
 =?us-ascii?Q?YUd5KxJrJEmZgyarrMXcMkzZZHu23/SjqqqogiwhDGeJ7Lcriu8mVjVvKche?=
 =?us-ascii?Q?hOrN4Vs9I9fDE6HUL7HRY92X+nWJ4F3xMowXQ/ljK6yzBKMx5qogzFhcX9Sb?=
 =?us-ascii?Q?dBblPlHza3gRkhyxN5v43C8EUGN+vw+0aRUVKW1Gacois+llnQg57BQmpsAU?=
 =?us-ascii?Q?0SrBYSBMggnKK8q0Kob7PKkQfqRpoeOYWXkNwgoKu2bL9cDAkV1nFcVAeET0?=
 =?us-ascii?Q?8A2fj+9cyiH1Yt8R2/cSiaYbBgjd/BoikdWESOel+EqRoYLMFWtDNSrqtNtu?=
 =?us-ascii?Q?VGbeJlX0Z07GGvzmllgwITmi5rKYZvYbA7Da9jz0pk3BG/Vi7/npbmbyDciv?=
 =?us-ascii?Q?YUvQVsoYNT1O69g8Cp5O0wMOxsRaERA6CZtBTnNlhzhNoRtYVYFE5AIhnZFQ?=
 =?us-ascii?Q?TWT0EJ9HcC64+IX25ei/IsEiboT+Z8ss3ueQdhFhb/QZv8K8BcoDScCOXrg3?=
 =?us-ascii?Q?4B/eurIEafkKPrfTZ9DZTTCHiiTFtAjqTiP9P/UA24t7zWKaj6vyLkbXOgim?=
 =?us-ascii?Q?TYOtPaBFGHvr9xQWIcvK9WehdDIS2dIx3Mf0/lTlaVEIsOfvRClQlQiwaaeE?=
 =?us-ascii?Q?BUju8T4CxcLF/t2VTr16lMlsLNAffMmvN9RgC/mGuYBJItupPcusV11mMYNu?=
 =?us-ascii?Q?2d5KiGm02w1uy5/OZC1FyFGc+MKcH6v/5DEy3nwjA1Z3o+JWIPoBCU1jPzwT?=
 =?us-ascii?Q?CDHfB63BtJN2x4mg1m+xK7MeXBgmrWw8MU16DZ+pHw8cRj0tt/23t/qT7OP2?=
 =?us-ascii?Q?Tx74LUpGTd1/WN5k4rpDYzgSkpUyFFOLQ+OVgWFkdCeVC6k9xwzYOevnpaR9?=
 =?us-ascii?Q?BhgIeDBuCEgZAsZlj3yHbkra7kzFzW+Xl+BE3SJP5O/UlZPducsN7Fa9k49U?=
 =?us-ascii?Q?H+AfV+RrgFMlkykG98BIFL1V6h6p3O+rsALZEnx8dbedpf3hd2asAdB4HqZK?=
 =?us-ascii?Q?2N8yk105d4MkkjdQJP46qCoXPQoNYejm/4BJpea7hX5wKQZZ2OtnIrXmePRe?=
 =?us-ascii?Q?9k4eRNcBHpmcVTtmpwDb08ZRoSbpUgZNt81Ym7G9lXRvIq/DSiDrn8tiF0ak?=
 =?us-ascii?Q?i5g8CVpLlrxjJPu0SrZ3OmN5GLdbJZd56hju/l3GXFAk3+mNkLpg6Otz22Ut?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98e60f63-bdf7-47fb-6d00-08dcdcd9a05b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:44:03.8133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l+ZnPBtdFItKWNyRwcuYi3b5FJ89dQOGouvAFCDvfcZnDdOKSrUE/vxfYI/nr+cyPMgCiuR0yHnxBaBDuUHoNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
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

On the regular igfx runtime pm sequence where d3cold is not
possible, the proper calls to power display are required.

Align with i915.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 23bdd8904c44..ab85c7fb217a 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -415,6 +415,8 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 
 	if (xe->d3cold.allowed)
 		xe_display_to_d3cold(xe);
+	else
+		intel_display_power_suspend(xe);
 }
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
@@ -435,10 +437,12 @@ void xe_display_pm_runtime_resume_early(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	if (xe->d3cold.allowed)
+	if (xe->d3cold.allowed) {
 		intel_display_power_resume_early(xe);
-	else
+	} else {
 		intel_opregion_notify_adapter(&xe->display, PCI_D0);
+		intel_display_power_resume(xe);
+	}
 }
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
-- 
2.46.0

