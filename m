Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2600BA817C1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1AA10E76A;
	Tue,  8 Apr 2025 21:44:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VAyYXsT4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A8B10E767;
 Tue,  8 Apr 2025 21:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148642; x=1775684642;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=7UV6eFs7oIb7e3AHAVcjwpJddNhurkjn9Hpkb8ENBM8=;
 b=VAyYXsT45NCpDX3imAH3mpCU4adTpH4w5ig0yGPqNlTiftsMC471d7Jz
 jkYMJ/bbyHSy+El7W9YAFvYyeaGntBrYzWOSkB7GVWg1wHMfGrNLUHNKT
 aSQRRIU1P1sr6nP9hTvKpAVwpoACyF2nsqwPoKIfJnwM/QP1pGQKYacy4
 FGiokJPZFfk+QfW0NkPVxZDbeUj+VjrgdStE4PC0FGmCTuZevL90X2ia1
 LMiRow3T/4mXpfGnMhv7f/ywOdq83O17/Is2ryJb91SC4RGaMjCS9vKoT
 8uDWo5s3ar7siOUzbk38hpr0KVHFd9Qn+E2p7T/CO0OhOr/KYdNyO/NPx w==;
X-CSE-ConnectionGUID: V92MCA0YQUeebbklB+M/Pg==
X-CSE-MsgGUID: lGrRHsUFTFaJ0zTP5du6NQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49263181"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="49263181"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:43:58 -0700
X-CSE-ConnectionGUID: TEeIE2oUQRi2IA5WDKANkQ==
X-CSE-MsgGUID: qB0PTHWxSTGA3724cB8ThA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="133597303"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:43:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:43:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:43:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:43:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZsvHSAIXsLu7ig1yeZHSuKFFJOaZ+R/wq4qwMtfK8VorqN/MDktEwsCet/ESGZAgzULxOAcIBdgRgBhdmI+S9ljd+Yxwijp3hWkRKBOJNdwj+ll8TxakbbTKcadYrEFbrurMtyQsnpG19HDpSYac8qbaDFPoNLNX5Y3q99ycRMVDSiTnY7A0gsqvYq/eprQkGmYjv54ADtKe8NZPF2AnZCH7rKtDzW39v4zigdSN/GQHHIscjMMwS5jYYMSSimAR6o4xr8UHKrFPXw1XO3liE8urtIBMwKobZAEalSBk3oNoiFe5L+dvuIBWTjM8YmR0L0nen8FW1YveOtbs/z0Kiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aox2aRyVBH2E6QjUt0N5q7gJEAf1XnafC8hJEFmtKCI=;
 b=Utt/csyVoqqXK0UHhnVf8i6vbv6E3FrzeXkGDAk78seJ1x3fj9JVMVpvOPCdfnMHlvSSue/76qzmWYmGGm3UXMn8M44UwirY1JyL8caQvxIEIhtsuL+me1BFKN3pA+lzwt28E7uJpAY0Fwi0VJKmZnklVq0bIPeFmoVCw0Eslm21p3xzmali38+AQYy5vZ8/Th6uZBSVeiJIsXosYI8XDZoM09ag9APLwWde8BBMpm9c2q1kO4tiAf+4FcSGOGZeBnyMbHufCcaEztv5GoikmQaIfVRySjwjA/I4mD4CT1zkJLRD0fMi9BbqvydmonaMZIV6ztciv0xR/W3q6PUfZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7101.namprd11.prod.outlook.com (2603:10b6:303:219::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Tue, 8 Apr
 2025 21:43:55 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:55 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 07/10] drm/i915/dp: Use an intel_connector pointer everywhere
Date: Wed, 9 Apr 2025 00:43:37 +0300
Message-ID: <20250408214342.1953197-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7101:EE_
X-MS-Office365-Filtering-Correlation-Id: e9ebe193-aba2-4d2e-1387-08dd76e6740c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?x/eGTGccXokIV7PsleTcqdRlNBOsQT24AjynIY3ZgNWdrxU7GWWunefskVmX?=
 =?us-ascii?Q?amaquIBLhYELhBqsKglDeuucHfmHxyMzAgiOGOLutHdIivB3EjB+BY1Lqbdn?=
 =?us-ascii?Q?7rJfwfXBtmOGyuPWcs2fCLDSWDZyXQDNT9b/sDGJ4fSvT7Bedcv0pW2SfedZ?=
 =?us-ascii?Q?3H2fs7rkZfEXVuT+GwReCygq5cjQ3lMgIif1Tww9gA3ATHS21tkzIv3JVjeC?=
 =?us-ascii?Q?+wSKOKZIk/Apvdl8Z+lcnwttk4Dp+0mCn+bS/m1vnjxH9AOThHnvQYT5Gtao?=
 =?us-ascii?Q?KRGnWYJXqPe74hkuxdzbp9ohVyOzA/v9bm4AhtKc7McsdZRhSbizifMLzbfJ?=
 =?us-ascii?Q?clEaTQinfX5UX/hImh4MlDRcpPo8HQEGijHIer77lebQ7Tvc4wk6V/qmVfmN?=
 =?us-ascii?Q?mDG15WDduD4nFbQ1Cl8kwK5i1vMB3DY2AhKeAFza4kU8RrMW43EZy9cI53ri?=
 =?us-ascii?Q?63yufSsr/ejMgUy6FBYhtcr8SEs4URgpi5HfbMANMDWQBC+LRviNaPEbGlAe?=
 =?us-ascii?Q?eq8WAG1+kzu/5XB3vUtyg01VCuJbyj+bSkIsNqVmEcnlK8U4RbfZnlZZgUHj?=
 =?us-ascii?Q?I5NBWMwdxBrFG7TGBO0Jn1LIAWAkvPnpjb3Kz6mqq7nuQNHE9Vb4g+zkPW0N?=
 =?us-ascii?Q?LELSNHf2lDldNnOd2ylOI7/939AIdt3r2Hh/c06zwywVJslu+HTlfMTWnE5H?=
 =?us-ascii?Q?acHep3bMWTb5puKMIICT/bt/Lf8ieYCVwvUmGsuKasxDJMyqWMpBa5Z7eOML?=
 =?us-ascii?Q?ge2HSKyeJKtwaRZS7P9KS7GAMlQjYX/39Cqx2z+eeRAfELaODAYFjsXlpgZ3?=
 =?us-ascii?Q?WQitriKFB8i5fKPPeuMNP4Odm2AUoIKmtXdsTgr79Gup5/GY2CmXykUdZiAn?=
 =?us-ascii?Q?OWv81mq6FnkN/Y88dTuNvruKoA8mo+3Ugndm8en+M56mk9VJhiwEV0zlpthW?=
 =?us-ascii?Q?fs1zYN2Bhmpe46l1ikJefQ2LrR2k0jy4XwP8HwlDlOygRSMzpKqZEsFahBcC?=
 =?us-ascii?Q?HFxGC3vvVjqFn21r1IzqDzqwfWkb3V9WKu1X5px/KiZEvHJzbVdu+TPgKliI?=
 =?us-ascii?Q?tkQHgjenkIa+8JvuLpzlIbspZ9ibPvD3phlnMj+Em/Zr+Mp46LDRTO4wIKg/?=
 =?us-ascii?Q?rZ/1S6pCf/imAz9fLyplsk6lCz5pq1IzMBF43FtIFY9O4B0qFggifj/oBvzX?=
 =?us-ascii?Q?idI098jqCUswZ7DZGKjz6+rcFBiTwNsNKyg4IFq+RxZkTeX7cYn317z3YGSc?=
 =?us-ascii?Q?v/oD7dWOC5zkHoPC8NNZqo5+SCg1tHDJwrKInxByl7FB+7gMPIaLb1ui00u4?=
 =?us-ascii?Q?W/sNcw0YMoC3PPibE07RP9jb6COKTtmydt6fkbDck9jP4PChUPNbaPLNqKwT?=
 =?us-ascii?Q?7p3Z5DQzL8eTJ1P3RMbG/6T0QLo+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nl6xwpBRP7nLpje5Zlk47J7+gmuPimUz6OpgjqTnIn+40opUnspq5dazX8xI?=
 =?us-ascii?Q?SZhl3L12HtFUjwkVjTz60PYLtjDIyrxx6w6eGRkFhzn+aTYFPcl3ejQslE/9?=
 =?us-ascii?Q?+d5oim9YUGjxIAyEMp1u0xdNmdHfi0h0sOrccsp8ewQeETcLTpXfqEExmn5Q?=
 =?us-ascii?Q?fnwPPK+mwEqJ955fh3naFD3XH82DZ9mz/jVsjFgfYfVXIl+7nPewRPUv7Guf?=
 =?us-ascii?Q?wnla1r5i9UQ9p/0soi7VtFu17QY1UA+WtxqohpOWzFgjrXN1rI/DgtC8I6sV?=
 =?us-ascii?Q?UK8hqRaniNhETV+ZeV5OtCs0/atP7ZxLqKKfvA12L9Z8AzOUcIXivAwyqYCE?=
 =?us-ascii?Q?yOOrOI9E9PUDBIGZeSa06eHeMuKvyVgZwI0jGXM4MIDrgy8rK3hzp+cjf161?=
 =?us-ascii?Q?dAl6g0JVzgS6yy3n3y70uGgYLsTT9Qb61/n5M61sp6umJcdWbGmu4WJYqPUG?=
 =?us-ascii?Q?6r0P34aR+pZHbmLcauzEgWz47Y1bcUJRRpbdSTJswPiNn761uHv/0G9Av8rL?=
 =?us-ascii?Q?3rZV7JWM1rkLA79Vd7uX+3ZlTMvHVmssReCMoVePe632HquVpbZB7Ah+FnFK?=
 =?us-ascii?Q?8VPYfFCZO8rFN7c04bCOFEHhU77y94QD6va7oQBE0boKXBllKBiAwOq6aVbw?=
 =?us-ascii?Q?lPTROWnwLBQ3LaYYi8284wXmwt38s9PNdmwsn9F4jAnWTCuh4wQfytuRKuax?=
 =?us-ascii?Q?aNWg01XHRLXQeKnkHTsrXkLR6N/E84yhqbkd1nU/9nPH1RozvsIQmcAnqfB1?=
 =?us-ascii?Q?n4TCE9fPVrAmtv4xPJvq3rodP04aNFD4YTIsyUb5IOwv/qAfMGB5WjrjehNf?=
 =?us-ascii?Q?hbWCrelBQIe6m6PS7GE+Hkc0urNiMcCqmRA9ujweDa0HPhuyXd8NAoKJZ/Oz?=
 =?us-ascii?Q?6zUEa9IA3gYOgEUzTS1p75hODgBmCEMbK/O+8K5dXW3UmMuJOxqbWDgzo5+g?=
 =?us-ascii?Q?DExXwOihOLwyTkSYHXvfP81OZEMdTTsEXRbTYKWBXsR5Svr0RXV1Cr7obl7p?=
 =?us-ascii?Q?RQzDsK4ijEpl1Daku3bocRJjlRFC/yYnCESbZHhcH69PNOHJf3EpO94rDJPa?=
 =?us-ascii?Q?wSTpktg97QxTZ5KXIZVT/04uMdBCLCxfHG81/Bgrh7hx0ifrzgHR9yngfpTY?=
 =?us-ascii?Q?KXu15Slh1MM02EiqTDSwqUft9OhVbW4q5h4jDKV+7k+usZ+1JaPMhke2Q/+0?=
 =?us-ascii?Q?z1g1K7QOCjhC7EAglypH/BnjauWxzJ5xDna4BtnIz4qG4jfSMwJ6+U6U7QO0?=
 =?us-ascii?Q?mTdziwK+x09+YyUcT2EwRkT4glnYCi5ExAXbr0M0Ws55+OfExTeW/rU5vwN8?=
 =?us-ascii?Q?fNFtsl1aFW+9M4l+gBKTeJnntPUuoNMIJLkbTpQf2V33oLikNnlT9dHbGLNw?=
 =?us-ascii?Q?6ooOJgMuoRuodHPGTiQDcNBVD720+GHJ4BlHK+eZldtEYT8fVX2/DfdrKQnl?=
 =?us-ascii?Q?SiFlnGPeI46wwceMIr7Td2+SpUIRwLsn/R5PrWKF647UXoTKwbzNA8F98yni?=
 =?us-ascii?Q?xUUE4G1xBxpDzmRH3IZS9pBR2AG2x2SJLP+J/EngJ4FCw1fKkylmFKLr5WMY?=
 =?us-ascii?Q?llp/apqYalb2Uaq3RxQoXmZ8dsllSErX+AYN3n8a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9ebe193-aba2-4d2e-1387-08dd76e6740c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:55.0114 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PbvAK/xOnQXyhnVWCSA33WFUe0kxUCICrO97I6WCRGkW+HdtLF6UnEG2SHUcwNvfkvvLtT9JVkSA8IlWTXicIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7101
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

Following the convention, convert intel_dp.c to use an intel_connector
pointer everywhere, calling this pointer connector. If the intel
connector must be casted from a drm_connector, call this pointer
_connector and use this pointer only for the casting.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 106 +++++++++++++-----------
 1 file changed, 57 insertions(+), 49 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9c15608cc06f7..8ca33ebedce27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5825,20 +5825,21 @@ intel_dp_detect(struct drm_connector *_connector,
 }
 
 static void
-intel_dp_force(struct drm_connector *connector)
+intel_dp_force(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
-		    connector->base.id, connector->name);
+		    connector->base.base.id, connector->base.name);
 
 	if (!intel_display_driver_check_access(display))
 		return;
 
 	intel_dp_unset_edid(intel_dp);
 
-	if (connector->status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return;
 
 	intel_dp_set_edid(intel_dp);
@@ -5877,24 +5878,25 @@ static int intel_dp_get_modes(struct drm_connector *_connector)
 }
 
 static int
-intel_dp_connector_register(struct drm_connector *connector)
+intel_dp_connector_register(struct drm_connector *_connector)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int ret;
 
-	ret = intel_connector_register(connector);
+	ret = intel_connector_register(&connector->base);
 	if (ret)
 		return ret;
 
 	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
-		    intel_dp->aux.name, connector->kdev->kobj.name);
+		    intel_dp->aux.name, connector->base.kdev->kobj.name);
 
-	intel_dp->aux.dev = connector->kdev;
+	intel_dp->aux.dev = connector->base.kdev;
 	ret = drm_dp_aux_register(&intel_dp->aux);
 	if (!ret)
-		drm_dp_cec_register_connector(&intel_dp->aux, connector);
+		drm_dp_cec_register_connector(&intel_dp->aux, &connector->base);
 
 	if (!intel_bios_encoder_is_lspcon(dig_port->base.devdata))
 		return ret;
@@ -5905,20 +5907,21 @@ intel_dp_connector_register(struct drm_connector *connector)
 	 */
 	if (intel_lspcon_init(dig_port)) {
 		if (intel_lspcon_detect_hdr_capability(dig_port))
-			drm_connector_attach_hdr_output_metadata_property(connector);
+			drm_connector_attach_hdr_output_metadata_property(&connector->base);
 	}
 
 	return ret;
 }
 
 static void
-intel_dp_connector_unregister(struct drm_connector *connector)
+intel_dp_connector_unregister(struct drm_connector *_connector)
 {
-	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 
 	drm_dp_cec_unregister_connector(&intel_dp->aux);
 	drm_dp_aux_unregister(&intel_dp->aux);
-	intel_connector_unregister(connector);
+	intel_connector_unregister(&connector->base);
 }
 
 void intel_dp_connector_sync_state(struct intel_connector *connector,
@@ -5979,21 +5982,22 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
 {
 	struct intel_display *display = to_intel_display(state);
 	struct drm_connector_list_iter conn_iter;
-	struct drm_connector *connector;
+	struct drm_connector *_connector;
 	int ret = 0;
 
 	drm_connector_list_iter_begin(display->drm, &conn_iter);
-	drm_for_each_connector_iter(connector, &conn_iter) {
+	drm_for_each_connector_iter(_connector, &conn_iter) {
+		struct intel_connector *connector = to_intel_connector(_connector);
 		struct drm_connector_state *conn_state;
 		struct intel_crtc_state *crtc_state;
 		struct intel_crtc *crtc;
 
-		if (!connector->has_tile ||
-		    connector->tile_group->id != tile_group_id)
+		if (!connector->base.has_tile ||
+		    connector->base.tile_group->id != tile_group_id)
 			continue;
 
 		conn_state = drm_atomic_get_connector_state(&state->base,
-							    connector);
+							    &connector->base);
 		if (IS_ERR(conn_state)) {
 			ret = PTR_ERR(conn_state);
 			break;
@@ -6057,10 +6061,11 @@ static int intel_modeset_affected_transcoders(struct intel_atomic_state *state,
 }
 
 static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
-				      struct drm_connector *connector)
+				      struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	const struct drm_connector_state *old_conn_state =
-		drm_atomic_get_old_connector_state(&state->base, connector);
+		drm_atomic_get_old_connector_state(&state->base, &connector->base);
 	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc *crtc;
 	u8 transcoders;
@@ -6082,17 +6087,18 @@ static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
 						  transcoders);
 }
 
-static int intel_dp_connector_atomic_check(struct drm_connector *conn,
+static int intel_dp_connector_atomic_check(struct drm_connector *_connector,
 					   struct drm_atomic_state *_state)
 {
-	struct intel_display *display = to_intel_display(conn->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_atomic_state *state = to_intel_atomic_state(_state);
-	struct drm_connector_state *conn_state = drm_atomic_get_new_connector_state(_state, conn);
-	struct intel_connector *intel_conn = to_intel_connector(conn);
-	struct intel_dp *intel_dp = enc_to_intel_dp(intel_conn->encoder);
+	struct drm_connector_state *conn_state =
+		drm_atomic_get_new_connector_state(_state, &connector->base);
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	int ret;
 
-	ret = intel_digital_connector_atomic_check(conn, &state->base);
+	ret = intel_digital_connector_atomic_check(&connector->base, &state->base);
 	if (ret)
 		return ret;
 
@@ -6102,12 +6108,12 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 			return ret;
 	}
 
-	if (!intel_connector_needs_modeset(state, conn))
+	if (!intel_connector_needs_modeset(state, &connector->base))
 		return 0;
 
 	ret = intel_dp_tunnel_atomic_check_state(state,
 						 intel_dp,
-						 intel_conn);
+						 connector);
 	if (ret)
 		return ret;
 
@@ -6118,21 +6124,22 @@ static int intel_dp_connector_atomic_check(struct drm_connector *conn,
 	if (DISPLAY_VER(display) < 9)
 		return 0;
 
-	if (conn->has_tile) {
-		ret = intel_modeset_tile_group(state, conn->tile_group->id);
+	if (connector->base.has_tile) {
+		ret = intel_modeset_tile_group(state, connector->base.tile_group->id);
 		if (ret)
 			return ret;
 	}
 
-	return intel_modeset_synced_crtcs(state, conn);
+	return intel_modeset_synced_crtcs(state, &connector->base);
 }
 
-static void intel_dp_oob_hotplug_event(struct drm_connector *connector,
+static void intel_dp_oob_hotplug_event(struct drm_connector *_connector,
 				       enum drm_connector_status hpd_state)
 {
-	struct intel_display *display = to_intel_display(connector->dev);
-	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_encoder *encoder = intel_attached_encoder(connector);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool hpd_high = hpd_state == connector_status_connected;
 	unsigned int hpd_pin = encoder->hpd_pin;
 	bool need_work = false;
@@ -6278,36 +6285,37 @@ intel_dp_has_gamut_metadata_dip(struct intel_encoder *encoder)
 }
 
 static void
-intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connector)
+intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *_connector)
 {
+	struct intel_connector *connector = to_intel_connector(_connector);
 	struct intel_display *display = to_intel_display(intel_dp);
 	enum port port = dp_to_dig_port(intel_dp)->base.port;
 
 	if (!intel_dp_is_edp(intel_dp))
-		drm_connector_attach_dp_subconnector_property(connector);
+		drm_connector_attach_dp_subconnector_property(&connector->base);
 
 	if (!display->platform.g4x && port != PORT_A)
-		intel_attach_force_audio_property(connector);
+		intel_attach_force_audio_property(&connector->base);
 
-	intel_attach_broadcast_rgb_property(connector);
+	intel_attach_broadcast_rgb_property(&connector->base);
 	if (HAS_GMCH(display))
-		drm_connector_attach_max_bpc_property(connector, 6, 10);
+		drm_connector_attach_max_bpc_property(&connector->base, 6, 10);
 	else if (DISPLAY_VER(display) >= 5)
-		drm_connector_attach_max_bpc_property(connector, 6, 12);
+		drm_connector_attach_max_bpc_property(&connector->base, 6, 12);
 
 	/* Register HDMI colorspace for case of lspcon */
 	if (intel_bios_encoder_is_lspcon(dp_to_dig_port(intel_dp)->base.devdata)) {
-		drm_connector_attach_content_type_property(connector);
-		intel_attach_hdmi_colorspace_property(connector);
+		drm_connector_attach_content_type_property(&connector->base);
+		intel_attach_hdmi_colorspace_property(&connector->base);
 	} else {
-		intel_attach_dp_colorspace_property(connector);
+		intel_attach_dp_colorspace_property(&connector->base);
 	}
 
 	if (intel_dp_has_gamut_metadata_dip(&dp_to_dig_port(intel_dp)->base))
-		drm_connector_attach_hdr_output_metadata_property(connector);
+		drm_connector_attach_hdr_output_metadata_property(&connector->base);
 
 	if (HAS_VRR(display))
-		drm_connector_attach_vrr_capable_property(connector);
+		drm_connector_attach_vrr_capable_property(&connector->base);
 }
 
 static void
-- 
2.44.2

