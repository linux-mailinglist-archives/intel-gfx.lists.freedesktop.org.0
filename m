Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B64F6B0F84
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 17:59:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A99010E6BB;
	Wed,  8 Mar 2023 16:59:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 053D510E6BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678294794; x=1709830794;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=US7RHVzXZfJLtTlIYdzUTaan785M553PsZPQnEFUzYY=;
 b=HS5NRzRQfTwXWKxdU+sAKbyR6sacsTeJ0Feqh/ZVKuiBBZoiFHIdfsxg
 WgjqUm4i8m8qiPsBoKasUjmfdSf57OygIAPFlTNLcMG0VGG2TOWXThbwh
 Fws8WMyAzatjW842z8ryUP/XBZyqMLDFx781AxHdNSClhexRSENOtzj5c
 jxggQ/fD2TGYmx4HKjVRg0T75i0o9fTEujzuy4TYy15bIo2gWkWL/KtwV
 BoVRmNDn7tT+JvX4z1lqXirJmuN60GPy2ODJ+y3qOSbW7g1VHpAht96gw
 HITr+UkCP/RwpkQm+6GDHxUtEa8p/lm5n+6hyXNfOrY2Kb51jcejiuotT Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="315870205"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="315870205"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 08:59:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="787187038"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="787187038"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 08 Mar 2023 08:59:07 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 08:59:07 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 08:59:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 08:59:07 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 08:59:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXlVnpiA61qs5PWCodJ3s/6cFqCodIzfkpzR5k/ry9ksU/lOwu04ZvUJaDwoQAxAGeK5yVuyHnnfDODUjNU0Zf7qxUz1KKqL3/Ldm31I3voSwxbNJo5H+Vv4atqgtx7OOVAjIx+DJDl6lUoL++9jTN5tLfCHa5rHjv4f1oM1ZyfudNpD6jW+IimcZhbvm1uJkAKP2o3j/vgGTxbQXaEre41My6MmYNFvVfzo8ocvE1EcrvrcjnBoi+J6Oo5ZW9FMrLzu9k49vh5b59knfLT/BrU68DFSzRokQ9Yq7er8u1kFQLd+nPw8nqyn3m/OQSoluTFxB+PFBNx4kIPU9H+NHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MV1P3e9pcS5hBq4BWDoxjJrP14Ivh+UddgtrEoW7dMM=;
 b=YYXFR6vEEO9rqf0kzktX4wCNHiV7Fr6/HO42+Vm0eRqOCRJ9x7LVEfIpSgWfVymEWA4YGEAojAdcPfG9vbUiOOPw+yIaE5GFrDHYYjCptnf2wKwKcIJ+7JPpiSu+v4HamOHqdlNdRQ/oeG9WL3z7tAPgoSXVKtl7LZYZpGR1yxAdJX25/ZOmp5dd6UwCTec2/ZpkIaj49q1Z/fObe1DI3nd3oy8ZYriov/dRehlruoR5++hL3H/rLrMTsNfzWm8Un2jAH4ygyScPmi48ZR7Lv6luD/LS7PL8kMVNIFkR+IQvEmhsct/u0J6c+LnZfo7uoan0iorbaZarsxH5AGWMDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS7PR11MB7931.namprd11.prod.outlook.com (2603:10b6:8:e5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 16:59:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 16:59:04 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 8 Mar 2023 11:58:58 -0500
Message-ID: <20230308165859.235520-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0264.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS7PR11MB7931:EE_
X-MS-Office365-Filtering-Correlation-Id: e2e12c20-9025-45c1-8cf5-08db1ff66c16
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M+xcbze7t3EB9AEDT5f8cQXGoUbqphrdfSFRyE7piKGTDFZkzrY9TW6RTVeh53jd/n7iqgRz4jhVmkMYlH2R9bVYjcLxSV71FCExCuXV5V5z9DM+vzvQmWLeNaD4kaY8jGjlJM40pVrv1z3eJfH2eAuDesJD7hwoLrp5c01ZmiOvU8mmpS2lDGMkYKTr9tiodvP3VwGQG6cR9TE5Ea5a2/mbgKaG+5/h/1Ba3yIkmdcUsH+uwrmfL7pkrs13w4tXz7Lcckz4z6ePduWUBxSLkOoH3zO4t0NHOGr13jaot3eZDMdIT53w3DPjnYtBMpu9BZnbUZaFTjNKvmq3/v3aJ2enmCz2mRiplCbc+TFb/mTaAzsrCn4xALwwmVZ1MYM2UwOZsNrlV8lZIM4F4PyTxCJ5QE8sRcU+GY6Q8P8LC9dyiRTNhb91HAzL0mMb0eB9akDkNEtrop/gAe7Q253wxb8pbAouPCqsw7te+qLwQ2UW72GpIkkxCJLD2SghqlbEvKt8NjcfobtGsvSVwtXEThaljdDLgE+IW0+Co//xelkGNgFzydAd26ZhpPiNkGEurbqPIZFbecAyz5gDFzNIPfBwX/OgeaW+EBn2x0AHQlZ9M/+PeaDOQc7YQCGu2OLUthLUhlid2LMsl8plqN/LBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(39860400002)(396003)(376002)(136003)(346002)(451199018)(66946007)(4326008)(8676002)(66476007)(6916009)(41300700001)(66556008)(82960400001)(38100700002)(5660300002)(316002)(8936002)(54906003)(44832011)(478600001)(2906002)(6512007)(6486002)(36756003)(1076003)(26005)(186003)(6666004)(6506007)(83380400001)(2616005)(66574015)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T1VZUVZweFJCMk5mYjVubnF5OWF6YzdZbGptaFcrQlJLTGlCSHhyc1JoYVc0?=
 =?utf-8?B?ZzV5VmIrUzdlbzRjNFRUbXBSUXlueWJGVWE4Ulg2ZlFadm55SjV4Z1Z5R3Nk?=
 =?utf-8?B?U25yN1ZOVUQ0U2RPRUM1K215RGl3UG5DN0RtYUFwNVNhRWZnTXBtazJsZWMy?=
 =?utf-8?B?alFYSkg2MGVvVDl2aWozQkIwTyt2NGhucFlZOEFXbXhSeHJ2eW9taEdLTG54?=
 =?utf-8?B?ZXNYSUdJTitpNndGcTJ5WVV0WjR4UFFHc2RtMmptME85RDJPdmt4cXEvUm9y?=
 =?utf-8?B?VnlXemR3dEFJWjF5UkxzQWFUblFrTVpKSkgrRG5rSFdWTUtXTUs0eEhzcnlr?=
 =?utf-8?B?WnRpSkxTeVJqZ3k3SnJNZUd3aEd5dzRIYnVSQzhnTUNxK0dlOEtGTjc0Z01H?=
 =?utf-8?B?dktrMThkN3NSTm5NZkJVZFYyekNqVnlWVzkxYm0xeUxvU0lmZXRoUXN6L0V1?=
 =?utf-8?B?VkhQRHJlNDNNbjFEWk1qVVc5eUhYWC9DTzRadjVLWllwbGRXY2JYSEtleEpP?=
 =?utf-8?B?Q1YyK3I4cHUzMi9qaDhyYTRhZzcza240R0JMUHpBejdGWDlXUEEwTUw5SUor?=
 =?utf-8?B?YjFaS0REcEtvOG9lYStrQnpubDl2S0MyOWZEdXd1bVhWaUlZRGUxS2JtVUpY?=
 =?utf-8?B?VitXenovOFJVNE0zejYrRGlTT2EvUzlJSFQ0WlU2emhudmNpWVI5QnN3SW56?=
 =?utf-8?B?ZUUzM1BGeUhUTTdVVm5TY0NtWE5TYjJ6UEVQMC83UG9QdDdWM2YyZnB1alA2?=
 =?utf-8?B?V3d0SkYwRmFvWEFvZE1BRFdmZzVnRGUwWHRpWExaUGNvY00xTzBuZDBqRmZU?=
 =?utf-8?B?b2FzYlY3bXFWeEgwVGQ3eXVpamp3TXA2b0F4R0xTMUgwN3pCU0Jhb1RiMVVz?=
 =?utf-8?B?d05rQ0dJaFd6aUd1WkxaSU9XTzA3MEYxTlJZQUhuQlptd3gzVkpJMjI2c1p6?=
 =?utf-8?B?YUxUZFkrclI5MDJVOGFmaDhwUHA2WEUweG5WT2JFTThFMTNCcjd6NW54ZCtB?=
 =?utf-8?B?T3hpaTJxM0Z3K2Q5QlF6OEN3eUZCenFVenJaOHo0OFJPVWoxeGpaaVdqZFN6?=
 =?utf-8?B?eFdNbHpHbStlbWNZWGN3NSsycktjM3BaQlVPOGlHMVRjQlJFVU1mMTd6eE1o?=
 =?utf-8?B?K2RzRWhhL0kzVG41amhuOFh0QUpaUTFBQVhRWGx3TVN4UEc4MHFnOGZFTkI1?=
 =?utf-8?B?N1d3RzBKNXA3V1dZdE5GekJRMCtzaGhRYUNvNEM0VHByL3FkUFgrSVBxM2xy?=
 =?utf-8?B?Wkd2eDhUc3FKekJrTldQRjEramZnc2dwTHRaSFRjWE1LQy9wSEYrTVlmdGxx?=
 =?utf-8?B?cCsrbHZsdjBSTE9Xd3Mza04vRmc1OXM2R3NCbWlxMWwwbmN4eVhQQUh3QUgx?=
 =?utf-8?B?QUo5NmQ1TmhwcEZkU1JNMDBtbXh2WWZEd3V2NjBCdzhiZU1ic2pHa3B5cGY4?=
 =?utf-8?B?MlJlQnkrTzRNN3grOENNZGxETUk0RVhVZUxEK3ZGZG9WY0VYenFZdHZaZTFI?=
 =?utf-8?B?ZnR4ZVpJdWpxbVV3TGNwM3NnQ0NtU0xUWUc1b1RFOXVRRXRCVGNRTk83TmpR?=
 =?utf-8?B?RlZjU29mcmxTMzJvUlBkbFJ4TWdhSmoyMlpNNmo4bnp2TFh4dVRzOUJNTXRF?=
 =?utf-8?B?bGNMeXJXbTVFZnRqYXNHVkVNZCsxVklQY0M1c0RQSFB6a3BWckttVSthRXRM?=
 =?utf-8?B?d2VRNmVVOVZLc0dadUFrUmM4Yis5UmI3OGVva2ZLcTArUENKaTFFSE9RVTZD?=
 =?utf-8?B?Tmp3NEZEQVRkTzgwMVR1QVRtUFNaaTNva25UbnZJWEo2d2J1QXY3U1BxVVFP?=
 =?utf-8?B?VEowTFY5SG9zZFhQd0xIOEhDQm1rNVRZcHVxRDJNT2lBV2VxOHdld05OZ3ky?=
 =?utf-8?B?YXNIZjVVNFZHeUI5R2ZLTk9mK1pZcHc2VUJFaXpaRmNWNWxoSUJLNnFnRC9u?=
 =?utf-8?B?cnhlN3hSY081VFRTNmRUYkJRbGUzRWlLZjVucUhTaTF3ZENrZHB6WmlCRjlk?=
 =?utf-8?B?V1J2NDdtMlBETTR3TEllQzlHMTBscTJ6VFI3QVA3cFhoOUhvVkh6K1VuRERU?=
 =?utf-8?B?Ky8rNVJQY2NmQTRjVDRWbzNDUjkrTno0T3hIYWlIRGF0UjNPbU5iVEloUFJF?=
 =?utf-8?B?UHNaNEN4UDNNOUxFUytVQnVuUk1nQit1YnN4OEt5NmxVL3lsK0RNZ1o3QzVi?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2e12c20-9025-45c1-8cf5-08db1ff66c16
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 16:59:04.2639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XgAfTT228laqRWGw25UZwZb1b/sPB99yRI5Xkip2KvfNoiKrQGzgjv9V/qdWjVBXubAXS51ZvVBsu21tscLZKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7931
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

uncore->lock only protects the forcewake domain itself,
not the register accesses.

uncore's _fw alternatives are for cases where the domains
are not needed because we are sure that they are already
awake.

So the move towards the uncore's _fw alternatives seems
right, however using the uncore-lock to protect the dsparb
registers seems an abuse of the uncore-lock.

Let's restore the previous individual lock and try to get
rid of the direct uncore accesses from the display code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
 drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
 drivers/gpu/drm/i915/i915_driver.c                |  1 +
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index caef72d38798..8fe0b5c63d3a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
 
-	/*
-	 * uncore.lock serves a double purpose here. It allows us to
-	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
-	 * it protects the DSPARB registers from getting clobbered by
-	 * parallel updates from multiple pipes.
-	 *
-	 * intel_pipe_update_start() has already disabled interrupts
-	 * for us, so a plain spin_lock() is sufficient here.
-	 */
-	spin_lock(&uncore->lock);
+	spin_lock(&dev_priv->display.wm.dsparb_lock);
 
 	switch (crtc->pipe) {
 	case PIPE_A:
@@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	intel_uncore_posting_read_fw(uncore, DSPARB);
 
-	spin_unlock(&uncore->lock);
+	spin_unlock(&dev_priv->display.wm.dsparb_lock);
 }
 
 #undef VLV_FIFO
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index fdab7bb93a7d..68c6bfb91dbe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -253,6 +253,9 @@ struct intel_wm {
 	 */
 	struct mutex wm_mutex;
 
+	/* protects DSPARB registers on pre-g4x/vlv/chv */
+	spinlock_t dsparb_lock;
+
 	bool ipc_enabled;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a53fd339e2cc..c78e36444a12 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->display.hdcp.comp_mutex);
 	spin_lock_init(&dev_priv->display.dkl.phy_lock);
+	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.39.2

