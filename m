Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8355F96AC4E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 00:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D35D10E613;
	Tue,  3 Sep 2024 22:38:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cF+Rv/xi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 068A710E613;
 Tue,  3 Sep 2024 22:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725403109; x=1756939109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=U3PISgGOHb4+S7EnfCVZGM1Ro92ABtH5hW3Ux3Vw07g=;
 b=cF+Rv/xiABPnGa4oJbf3QW9EaPwxtyOFiXo0Yudgi4XOOXkKugBdXy20
 vYBWwVjlpw+MC1GiEYc359CGCK1BjU9LxzaNN/d04LVfBSxfRuhLakP1R
 rckfZpTHkZjAJg38kcNNp+rgSd1KCumvS0cj10hkKTzN61RNhVRzb/wiS
 N6RvbTQSLY8Yv329k4vG7OdNCam3km47slbrU1ywAi4MVj9De5UVeqQOH
 SvYXsJqTW6Oq+b0JeNPKptdOgugA336EHo37KFA/3hMSIt93zIoA5q9Ku
 1jDd5vOhWEbUQCkZwNCdBLj5nVlhT0utgsfX3q8pnxcWbMdgCXSzyFRqm w==;
X-CSE-ConnectionGUID: HBdDvUfmTdGOwAzd/u0srA==
X-CSE-MsgGUID: P7OxhzVNSD++adKCs1ON8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="41506813"
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="41506813"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 15:38:28 -0700
X-CSE-ConnectionGUID: h10A+yUOQbm1Skuo8xRIag==
X-CSE-MsgGUID: pP/IpkBoRYSiMZJzFpD1pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,200,1719903600"; d="scan'208";a="69881681"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Sep 2024 15:38:29 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 3 Sep 2024 15:38:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 3 Sep 2024 15:38:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zWlMinnFSqI053vOCNx9PNzNsJY35cFHtUZgEDfpmELVmKI/rziKRqs+hvhF57VdYwPwVCnyahHcv0gEEd+twkGk8VA/5+v8FznzNHkuVqtZtTrOswxVr2mw6oSl4NnzFUJEXcOBO2rN8CF4NsXdn4VmItkKA3f927rFcl+Qt4unekgq/CtSYPPYlb98/Kqqs5/w5XJoX5E/US/+st/k18Wt4xJ7arkH+FxmtTRa149YutCefzkkNhSRoFKyRte0kXVaz1rTA4kpvv5qwES+KLkrsPd4Hw9kIUaPDKdAOGqN+pTaeScBTUDXuV6RlNa52RVP2UF6UbPvYqxCiiRuFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sU/qvfFL8t1/EKIqDvSihFi6oiTSARe6Y9aMvKvrE2o=;
 b=WNh00qNjO2y402lThrZ+Q5Tc8XDwv+hv8Wd6Wp4BY6NaOlhYq/o8RsrmImHrzPbJLq7UK2zUvqCJ+hWzTv6eXn8SJuz05QTlor3NSehSNXOVXXnVkFI+rgpe3FDFE0QrtguP+zJX3qubCVS8QXnd3poY7DBLhjRzp25f2kD67g4Qa0O1mRFMRrUp0OMWQ/5Nb/TXEa40Cxx1lUmMnqHseS+Y30URAvk88VGCwgrh1jJDHtLStMUPZhF6f6wzdv9Dh+YGRD2nBmNurVwWwMZDZXVrAu7dJL17zYGicDtj5bSPzZDVcw+/zPbxKc6VhO0+6FfNLfvWMLiyi+3pTkhVGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB8259.namprd11.prod.outlook.com (2603:10b6:510:1c2::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Tue, 3 Sep
 2024 22:38:21 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Tue, 3 Sep 2024
 22:38:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>
Subject: [PATCH 4/4] drm/xe/display: Reduce and streamline d3cold display
 sequence
Date: Tue, 3 Sep 2024 18:38:03 -0400
Message-ID: <20240903223803.380711-5-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240903223803.380711-1-rodrigo.vivi@intel.com>
References: <20240903223803.380711-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0258.namprd03.prod.outlook.com
 (2603:10b6:303:b4::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB8259:EE_
X-MS-Office365-Filtering-Correlation-Id: 3b119696-e821-4d2d-5dbd-08dccc691cca
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eKqsjejzuS02FYTJ9mK7QBbaeW/aMy9bT6QKIwGX7VnaGWzhmLUQdpFMn86E?=
 =?us-ascii?Q?rUelwtdUFgpJKISUqIwoTSWXZPrw0bsLfoLerY/LX4rDOXyCepIXV3AxIBg5?=
 =?us-ascii?Q?L7AhaTIuFrv8B2ZwjLaC8/qvPM1S99eyO5r/FdOLIR4PgadK6CLzg0XiLLNy?=
 =?us-ascii?Q?TTJsez2Cm/NGuaeiM60uepTCN+thkSHtizF2Tg8G+88iXNkkhz6U6hZROQ/u?=
 =?us-ascii?Q?lnabUi+nReQCJEnh6XYZ7cpNvVioNxWkpdVzFBw2thiuvoJToxusCO4cMdzq?=
 =?us-ascii?Q?TmtSdmkBT6ncF1TdwD3nrOtMkPcgrmgRS/QALiKOtUZYzWWPohIzXcz9SEGI?=
 =?us-ascii?Q?lo8s/mgYcvNi5wsmVOqLyveE7b7G5FSSgrs1cNFPy2CYkaVvuKiVa5x/Awl5?=
 =?us-ascii?Q?kigQ1dWp7X9N6yFvVRbwZ9T7frXLuuD2hvch/rpW39AUXfTmY74b81dwP9MT?=
 =?us-ascii?Q?HG2jm8CfcvWAj3olA8MIxE608RDuKyI5UG2wqjPqZTZRotstcccVJCDbsczh?=
 =?us-ascii?Q?1o4Y+tJmxRMz84WSBrJ4Cg5cznvCCqmtfNKAt/pnSTU9PpbLhpOq3dKH7Qvg?=
 =?us-ascii?Q?75DFLS8/KbLaAN8Sk61smD1lLBGxVAJUWOWPRmqKe2n3L0OlDHNCM956O5Ab?=
 =?us-ascii?Q?p9swSx5W7qWYxTsWoi9q2ILX2/e7pjowdXmxInNq/OwBX04i/ydeZIUDvrxN?=
 =?us-ascii?Q?3USGHtfmASnYlwbq6FkUDtunS7e4ou0wU4c1oX9ylVzj5tuTSmIdxlaYRsTP?=
 =?us-ascii?Q?wUho50UOy9I5GvgR+SRMk/LasUUT0eNkHv4qOwHmihfNOFtJYZD9w0DSdmTH?=
 =?us-ascii?Q?/PBsJZVrYuTVaieX5SMLwa3uS45/RTj0p67bWDoCzlMl2bCfsR4nuhspzIO9?=
 =?us-ascii?Q?k0sD819RSb31anoTlRgWDRfVdIKlDjUe6AxQN/UrWsDscGhJu3XpIqqZL4Cb?=
 =?us-ascii?Q?EmpDTvW56pWJApVZ8tYUw/gDQnOEkuMDBojJbQ+swpVNrAwXCcFBiK+yqjs7?=
 =?us-ascii?Q?wObrlRlZcNu1r2nJRJgB5PlSQspqSiLyHcaWtlo/k+D/NuhNkChHW1tGwe46?=
 =?us-ascii?Q?zKrTolCyoXQjaaCGGZiczIOVySpKp5NawppShONIWqQAonHAxn0j60GIWeW5?=
 =?us-ascii?Q?pVH+vg32xoyD8lCwMQOUuL3c50BNJ2GgnO3F04A63TrZagOYxh2nECZEPEwc?=
 =?us-ascii?Q?xgxJGrDVh85HvB5tBowt+pzHSIvzSDridLpz3HF7zs+FNb4PDfjbtAc7BpKK?=
 =?us-ascii?Q?1qGiqAxduf2ZNoIjdHDvoKSrDDAc4iuplG8EmfLgsN/BkjUMb/MO89JCtIUo?=
 =?us-ascii?Q?aPmq1JHYE4u1MfxrVkL3e0gpWIUHLgqrhDh1FWtYscnZ3Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kJ7RFapKrAwUqiff2PjWkgDIuTMgysPlChL0byLRKaGaBvDCJ6ldkjaIDyqd?=
 =?us-ascii?Q?Apa3x24ZlWK7eyotVUT6l8zCJfJpAWwE9lUuZrZPcvOUO44TV6rPB/95Ae60?=
 =?us-ascii?Q?toRr7e8eG5W4Bjqzg3mXHDrzRH/CrgsXeMDlAzqMGHk8iZYqXMA4yKneebyf?=
 =?us-ascii?Q?/b5mgoNpOYbJTvoAPqs02swPU5xCfqadbATlFbFwjY+Ui+2Ts1ECoOqtF2Cr?=
 =?us-ascii?Q?I8CK8DAFqG3mXaP6AGlR+0mIpaDmcFRSy3JbYIH1qKO+4katiU9ug/+hMrax?=
 =?us-ascii?Q?rAvccsjHIfaa6e3VB0RuwqaP44T4/tt0SXxfL7K1Av6AzzcAxTP6lbwIClN5?=
 =?us-ascii?Q?ZNZ8ITP8LTgdeF4BD9RD63g/GZ7aMtJlyufc4hdezcSRD3rYk8MpiUvSpQTX?=
 =?us-ascii?Q?wuoH51jwOWgQg1hm0vCFJogJb4/opaOeAElqH/HDEvm8WWg9dkFX4P6ajfAe?=
 =?us-ascii?Q?u9fzvUXDLsqMZ2vo/rLIJLDINn5JT5md2GjvIn29HXk90X0KXzHtESAK4wbO?=
 =?us-ascii?Q?fOefjXqhyeJ0VzYh64foAsSx4ryfz3w361ur/McEHIK5nxBhZCJ+Zrhd8Jl2?=
 =?us-ascii?Q?a2ASCtpXDXPupk7mBWHXLbrGzHLo0MzE1NDc0oFHgadCKiQoIg0Mm0imCfQ2?=
 =?us-ascii?Q?b4sFJVUHQ5WfUOu6cXMEteib7OE/M0BihbrpAxoX4CRVpQkdhj3lxhpVuw8X?=
 =?us-ascii?Q?03suxwvg094AbB5BuWe6j3yw+derkzTdHFbjEa0dJLNG2+9OPufQtah4qPRi?=
 =?us-ascii?Q?r+k/aoAex//p01M+Y1rqfm6kZtcnCFRvF/Y6aUXnOLihfgRv5WATTZZQ2EER?=
 =?us-ascii?Q?pIlpSFCtvjNqsygFBGEvmWqWt1jEpYeyxypoiGaiPitTMlCSL8qo+yZzmaIj?=
 =?us-ascii?Q?nWjUPokk18YjV/jpxt5WMChscqj2inHIP1+rKF/c29d4gSeRncfGZYiHF5R+?=
 =?us-ascii?Q?f2czsVlw9YwLeKXLgmzxT/rP2LzdKiqDvungdnGrsUQORR+9xiOO0tHFelnp?=
 =?us-ascii?Q?Cpc7w1uxQiHnAiENGIXQe+Vl05lshK72wlbVRcHv1mDpLKTmeBQHyzorz2mp?=
 =?us-ascii?Q?zCJ/yhHHlQrPwaRZ68AasZfEyqqHP0/dm+fZWCIdVjmNTpkhtk/N6NtMaeBL?=
 =?us-ascii?Q?l341a6H7N6WJGHy//Meaq2QAL31vWkVEMsi5iu7tfZ7i+5nTdzvSvzXNKgj1?=
 =?us-ascii?Q?fZrVLTtFqdOHbftphsjKgQwBwpN1z7AGvwaQN3O+vgP+cGQN/MUicDJvo9LH?=
 =?us-ascii?Q?ZN6Olnaac0BGAf+e4JJnAa6y4T24NdG7EF/BW5f/4VJfbx69+8f+/YlJg80u?=
 =?us-ascii?Q?BuhqFCYo3wIamGilg3wBubdUyTv2XWpoauMp1iYmI6qM22+vmcX7oKwr2Eqs?=
 =?us-ascii?Q?2oAgm7MGuO38AcoaL2rW7BKeWyyTsHMBVJmIrCu0vWliUGAoGt/u1ckcYgKi?=
 =?us-ascii?Q?j056UyTVTpHCjeq5MGyTfF2xzXIpaaqEVEwr1Vbq7nPEJ23/+7S+VFVMxuN5?=
 =?us-ascii?Q?OUpWGMzROdZ3v5bBVc5Ki6+T/7YV/f5Jpo1RZ3pB+Sp3QFNEwasqdPtOKDQs?=
 =?us-ascii?Q?2xyGo+4XN/t8sAkbHWeuT+V4SM2gwnIwz8LgzHTh2IivvAfYlyslN8s+WFSb?=
 =?us-ascii?Q?pQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b119696-e821-4d2d-5dbd-08dccc691cca
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2024 22:38:20.9654 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5knu+GwBFeqqUfNpu5MzFnkUeJUSp1udSCO6EkXlKj/fy/XNbET2lFsjZ6A+Yt9iof9/pprZPadnpC3q2dRPrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8259
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

When going to d3cold we surely don't need to flush commits,
nor handle fbdev. So, clean this up a bit.

Also move the opregion call to make the function more symmetric.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index daf9b9baa88a..3fd3e74f1310 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -310,9 +310,6 @@ static void xe_display_to_d3cold(struct xe_device *xe)
 	 * properly.
 	 */
 	intel_power_domains_disable(xe);
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-
-	xe_display_flush_cleanup_work(xe);
 
 	intel_dp_mst_suspend(xe);
 
@@ -329,18 +326,15 @@ static void xe_display_from_d3cold(struct xe_device *xe)
 
 	intel_dmc_resume(xe);
 
-	drm_mode_config_reset(&xe->drm);
-
 	intel_display_driver_init_hw(xe);
+
+	intel_opregion_resume(display);
+
 	intel_hpd_init(xe);
 
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(xe);
 
-	intel_opregion_resume(display);
-
-	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
-
 	intel_power_domains_enable(xe);
 }
 
-- 
2.46.0

