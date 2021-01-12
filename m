Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7442F3941
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 19:53:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C4689A1E;
	Tue, 12 Jan 2021 18:53:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9FB989A1E
 for <Intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 18:53:10 +0000 (UTC)
IronPort-SDR: nDSqGBJMyYg7PDY28lGSO8kcgFYju9CQwss7D+V3jqZ+QNnwvvSug5H4vu/nnLo4lnhkPZfxo2
 1iUtmjXMbwgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="175510076"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="175510076"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 10:53:10 -0800
IronPort-SDR: oMm7KakmoUH6hCSxjhuMMvNzOeLGWQJSXJjeO0ioyX3zJ6XOQl0TgVSz+QkuWNkM88zRfBdTKA
 BuZchInSl3YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="353138699"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jan 2021 10:53:10 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Jan 2021 10:53:10 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 Jan 2021 10:53:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 12 Jan 2021 10:53:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J65yVk2oWVnd7R19jsJHhLk/nUDzy/e793bbyE4LziiupnkDDsddG4FNlLHu/Nd2ixz096oMWRfjjypbj1Fd3s4t6t9YoPFo78cATQkXkEiHoWLWOROkGMgB5ob/Pk51sQ4t0yEdahyLlHo13L5SgeB5SuXLBohUq4Pwi2ptszqb1S8wjkqPaorEw3TTlf9M87aomauw5EPla5YRkfZhWazUTyYqj6CVVCRcMp7xmsBOCID9xBQC6O2CGibBfN8IRsZIRgyvACZ3+Pkj2cH41vNzB9w16gWM/oAseSRKqi8QJKzk3ifz+mF3ymTEYyVOp9TYTHwFN9J3aFgdWhQkAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKHt0Xv+PrThabH+XxWdZCJ4NUkOAQmockSF+0ldad4=;
 b=Sz4wESE8TSnpF7TOr/yY97mLhdKAqNDST5f/T3fGlUhzMFEBNLA698N4Rn/2SiERjSaZWVWU8RQc3VWhJhZ+1yqZGf7IX6WdfZ5H6OVWOMm5f/cj5xFZDL04g3C+kCnhU7tety4IbtDf/hIRnhiU9yvQxeldPhkmxLyJQEE8y9VdBAQxhiXKbhZg/HXpoGp8YFQJhWTR+TcodccLrMLMRLfstVNNdZJTVwA5FsME+MN8Naazx9jp1Rimnnc4FwyCTiqAikZA/ejJ2eServ6c829WVkDY1Fo1VKiWC1Io9gS6L5JozL84qhiiNrE5cliRDVmhLU9M4NEOLdTMr1SM2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aKHt0Xv+PrThabH+XxWdZCJ4NUkOAQmockSF+0ldad4=;
 b=IRfx20Oq2AZKXmaSYkl82SFLkWHJWFxp2VhIlYMidPiVlcAd8ueE7+wg7woEceDpZuzgTm0DsfSsH+C3m6y/aUNPRrULRWID3xZZU+dQGRS7q2Zd/zPsCwXlUBwv7NDT9oFaJCejmSFgkQpelOH9hvkdphVR+qO95KhhP6bzvA8=
Received: from DM6PR11MB4531.namprd11.prod.outlook.com (2603:10b6:5:2a5::19)
 by DM6PR11MB2635.namprd11.prod.outlook.com (2603:10b6:5:c5::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.12; Tue, 12 Jan
 2021 18:53:07 +0000
Received: from DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786]) by DM6PR11MB4531.namprd11.prod.outlook.com
 ([fe80::50ab:1cac:2a5a:7786%7]) with mapi id 15.20.3763.009; Tue, 12 Jan 2021
 18:53:07 +0000
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC-v19 05/13] drm/i915/pxp: Func to send hardware
 session termination
Thread-Index: AQHW5IFw8oCtBpsHg06/2/PckQdPWqoc1VAAgAeEt5A=
Date: Tue, 12 Jan 2021 18:53:07 +0000
Message-ID: <DM6PR11MB4531410ED68BBE81F3588ABAD9AA0@DM6PR11MB4531.namprd11.prod.outlook.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210106231223.8323-6-sean.z.huang@intel.com>
 <b378ebceaa7f791954e227b3623daf3e3420b440.camel@intel.com>
In-Reply-To: <b378ebceaa7f791954e227b3623daf3e3420b440.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.220.16.43]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f42d8c82-7536-421b-36dd-08d8b72b4cf0
x-ms-traffictypediagnostic: DM6PR11MB2635:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB2635028582C157238CB235F0D9AA0@DM6PR11MB2635.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EbJ3c667tcjr7UvkJSuLrV8RuQR6duqNLN9dvzC+h5Jop0V96uo89TQAMTz8aB+8XtxMpOkH3/rKwo79eZOc27bsaCqEHdgAXHR+sq6WPjsBI8BP/LizibSJhdDI58eRt1Yg6+0Nqmaly8Z2ugvMaC0JgoNeHMpgKFWBqt00GPUTI9FIsfos3acqy6IeWNzIbr0LK4bXYta9sK3x/z7RuEOnoRjR1uh8q9Wys2+bHbo9C2wlwlIAcsM4W0DS1tkyp+hIgiMxVMYLwmAXlvaROSdLIR6c4V/lAAWGVgrtVTECAXtDNbk1JUEw2uwshpJHYkBqVYLq3cDUrfb1BOqvfjQPgJF3YsgmNtgclo6R8Ww8jUWAsrJlbARctIpE0ERtGDmE0l9fSU5FAlpMSDBNBw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4531.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(366004)(376002)(136003)(396003)(66946007)(9686003)(6506007)(66556008)(478600001)(76116006)(66476007)(71200400001)(8936002)(64756008)(7696005)(83380400001)(86362001)(8676002)(186003)(2906002)(26005)(66446008)(5660300002)(110136005)(52536014)(316002)(33656002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?SldTQ2I2RVo4TlRxcG5GL3NBK2d5RlVUTVhSa21tZ3ZYNTI0WW56Q1RET1Y1?=
 =?utf-8?B?eVo2d0E2ZGJiVDdjNTZ5TkM2a0svRU8xbk5IbEpSeVVnaWRpNlhaY2hObzUr?=
 =?utf-8?B?UTR4bGxMV1BHWXc1ZWVhWXNIR1N0ME5xdjNHN0VrVy8xVTBGdEs3b0lGekxF?=
 =?utf-8?B?L2tFNU11S2E3VSt1UDVZNFpjUTcvVmdpcFY2MFNMTjdtNUVzUyt6MUVPckRx?=
 =?utf-8?B?a0Y2MFQ3YU50T3hSNS85QjluQm5vUVRMYU9NaHRNYlB1Y2htZHR5Mk1ES1Va?=
 =?utf-8?B?T3g4ZkFPVzVjd2RXSHpuWHFKcjNLcHFSVEtYbTN1L1pzRjlKUm1qcS91ZFpH?=
 =?utf-8?B?K3N1dTN0cTYzYU9XRmpSOTVNTmR5clU1QWczaEl3UEVtVWcxcWpQWEV2VXV5?=
 =?utf-8?B?SE12RElLSGVGNExDRjdOSXE4MXlhVDNUMThxQlFvdEhUbHhwLzFvUmxDYzZs?=
 =?utf-8?B?UGlkeGtJY3huaHFiQW1Pb1lBVTArUHdWaFpXbzMrVWVPajVLSDhmQUN4NlUw?=
 =?utf-8?B?U3hsWHI5NU14eEpidldRbERrQUp2a1FCSU9JbitJNTZndXBYc3QvTU4xTDFO?=
 =?utf-8?B?cXlxQUUwcUx1KzBwSkNqYjViblFQS1RtMC9qOGpxSTAxVjBCd3NaZFNrc0s2?=
 =?utf-8?B?QWdkS1QxK0c0VTBkUGFXVDRQYW4zazNDd1FjWXJvMjdLRkdIK2dTYUx3TUtI?=
 =?utf-8?B?SmRlWHpzMkRlQVJHYnJXQlY1ZllEeUNieE9ZMTh6NzRkc3YwellwalpWbVov?=
 =?utf-8?B?enE2Uitxb0xGSm5xWm1jd01ENHcwWEwzalhiTVdJSTdTNU0vc1ZRay9kc005?=
 =?utf-8?B?VUJvNVVVaTJyYlp1SFNkbTBISWN2bFl2bExIRW9QUUxYL3J2MVVmNGw3SXgx?=
 =?utf-8?B?b0ZDNzdHcHRXL2taQWZKYXUxNFJ5RlVxRTNvTVhuSFltQmM3V1RSNTI1THF0?=
 =?utf-8?B?c1B4dWVqTlBzU1BXM0JORWo2UWpjSEFleWQ5NkhDOHNacXY1Y0hwSmtLVThU?=
 =?utf-8?B?c25Za01qejkyOWd1R29CcnZuN08xN3hVWnZSQVI2K3ZKUURveVIzd2NXVENO?=
 =?utf-8?B?c2RoZDRoWG5HTmVydSs0eEJkY2c1M0VsQVBTSEtMZ3hWS0Nyb1N0NHFBSWxr?=
 =?utf-8?B?U2piUkVmZE1aOVdUSHZobjc5YlVEdFlscS9ibVE1Z2R4NFpMR3Uva1NVNkFS?=
 =?utf-8?B?cXc3Mzg5SG9DeW9HaG03WHYzVFRqRnRzallWdUZxdzg0RUp2SUQ1b09VUDdo?=
 =?utf-8?B?Q0FsT1FFa1Q0ZGwybWFtMWdhNldFSzE3Z3J3WFg0MytULy95R1pMSXR2bUpB?=
 =?utf-8?Q?RMJqs6Vik1jXI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4531.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f42d8c82-7536-421b-36dd-08d8b72b4cf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2021 18:53:07.4077 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UiOIzuUSvDTu7N/XyDsiV9sR+wOIM8vL4kx5q0XN9KBrE7+2m8Ofa5PwgYUnqiy4M0bYf4790faM2ESOhxftLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2635
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC-v19 05/13] drm/i915/pxp: Func to send hardware
 session termination
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rodrigo,

I made the modification as below according to Chris and your suggestion, will reflect at rev20. All my comments (// sean: ...) the won't be checked in.
This change can address part of the comment Chris provided. But please let me go through the remaining comments at rev19 first.


Best regards,
Sean

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
index d9298cf5e1a7..6898b8826302 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd.c
@@ -34,11 +34,7 @@ struct i915_vma *intel_pxp_cmd_get_batch(struct intel_pxp *pxp,
 
 	memcpy(cmd, cmd_buf, cmd_size_in_dw * 4);
 
-	if (drm_debug_enabled(DRM_UT_DRIVER)) {                                                        // sean: my original intension just to print out the hex command for debug. But let me remove this.
-		print_hex_dump(KERN_DEBUG, "cmd binaries:",
-			       DUMP_PREFIX_OFFSET, 4, 4, cmd, cmd_size_in_dw * 4, true);
-	}
-
+	i915_gem_object_flush_map(pool->obj);                                                                // sean: we should flush map before unpin, thanks Chris's suggestion.
 	i915_gem_object_unpin_map(pool->obj);
 
 	batch = i915_vma_instance(pool->obj, ce->vm, NULL);
@@ -56,103 +52,73 @@ int intel_pxp_cmd_submit(struct intel_pxp *pxp, u32 *cmd, int cmd_size_in_dw)
 	struct i915_vma *batch;
 	struct i915_request *rq;
 	struct intel_context *ce = NULL;
-	bool is_engine_pm_get = false;                                                               // sean: replace bool with goto label.
-	bool is_batch_vma_pin = false;
-	bool is_skip_req_on_err = false;
-	bool is_engine_get_pool = false;
 	struct intel_gt_buffer_pool_node *pool = NULL;
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
+	int size = cmd_size_in_dw * 4;
 
 	ce = pxp->vcs_engine->kernel_context;
-	if (!ce) {
-		drm_err(&gt->i915->drm, "VCS engine does not have context\n");
-		err = -EINVAL;
-		goto end;
-	}
+	if (!ce)
+		return -EINVAL;
 
-	if (!cmd || (cmd_size_in_dw * 4) > PAGE_SIZE) { 
-		drm_err(&gt->i915->drm, "Failed to %s bad params\n", __func__);
+	if (!cmd || cmd_size_in_dw == 0)
 		return -EINVAL;
-	}
 
 	intel_engine_pm_get(ce->engine);
-	is_engine_pm_get = true;
 
-	pool = intel_gt_get_buffer_pool(gt, PAGE_SIZE);
+	size = round_up(size, PAGE_SIZE);                                                                                   // sean: I think this would be better to handle the allocation size.
+	pool = intel_gt_get_buffer_pool(gt, size);
 	if (IS_ERR(pool)) {
-		drm_err(&gt->i915->drm, "Failed to intel_engine_get_pool()\n");
 		err = PTR_ERR(pool);
-		goto end;
+		goto out_engine_pm_put;
 	}
-	is_engine_get_pool = true;
 
 	batch = intel_pxp_cmd_get_batch(pxp, ce, pool, cmd, cmd_size_in_dw);
 	if (IS_ERR(batch)) {
-		drm_err(&gt->i915->drm, "Failed to intel_pxp_cmd_get_batch()\n");
 		err = PTR_ERR(batch);
-		goto end;
+		goto out_engine_pool_put;
 	}
 
 	err = i915_vma_pin(batch, 0, 0, PIN_USER);
-	if (err) {
-		drm_err(&gt->i915->drm, "Failed to i915_vma_pin()\n");
-		goto end;
-	}
-	is_batch_vma_pin = true;
+	if (err)
+		goto out_engine_pool_put;
 
 	rq = intel_context_create_request(ce);
 	if (IS_ERR(rq)) {
-		drm_err(&gt->i915->drm, "Failed to intel_context_create_request()\n");
 		err = PTR_ERR(rq);
-		goto end;
+		goto out_vma_unpin;
 	}
-	is_skip_req_on_err = true;
 
 	err = intel_gt_buffer_pool_mark_active(pool, rq);
-	if (err) {
-		drm_err(&gt->i915->drm, "Failed to intel_engine_pool_mark_active()\n");
-		goto end;
-	}
+	if (err)
+		goto out_vma_unpin;
 
 	i915_vma_lock(batch);
 	err = i915_request_await_object(rq, batch->obj, false);
 	if (!err)
 		err = i915_vma_move_to_active(batch, rq, 0);
 	i915_vma_unlock(batch);
-	if (err) {
-		drm_err(&gt->i915->drm, "Failed to i915_request_await_object()\n");
-		goto end;
-	}
+	if (err)
+		goto out_vma_unpin;
 
 	if (ce->engine->emit_init_breadcrumb) {
 		err = ce->engine->emit_init_breadcrumb(rq);
-		if (err) {
-			drm_err(&gt->i915->drm, "Failed to emit_init_breadcrumb()\n");
-			goto end;
-		}
+		if (err)
+			goto out_vma_unpin;
 	}
 
 	err = ce->engine->emit_bb_start(rq, batch->node.start,
-		batch->node.size, 0);
-	if (err) {
-		drm_err(&gt->i915->drm, "Failed to emit_bb_start()\n");
-		goto end;
-	}
+					batch->node.size, 0);
+	if (err)
+		goto out_vma_unpin;
 
 	i915_request_add(rq);
 
-end:
-	if (unlikely(err) && is_skip_req_on_err)                                    // sean: I think we should not skip if there are further errors, thanks Chris pointed out this.
-		i915_request_set_error_once(rq, err);
-
-	if (is_batch_vma_pin)
-		i915_vma_unpin(batch);
-
-	if (is_engine_get_pool)
-		intel_gt_buffer_pool_put(pool);
-
-	if (is_engine_pm_get)
-		intel_engine_pm_put(ce->engine);
+out_vma_unpin:
+	i915_vma_unpin(batch);
+out_engine_pool_put:
+	intel_gt_buffer_pool_put(pool);
+out_engine_pm_put:
+	intel_engine_pm_put(ce->engine);
 
 	return err;
 }


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
