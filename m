Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNQlEm8nn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B7C19AE62
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77B6510E7C7;
	Wed, 25 Feb 2026 16:46:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="euwCDN6q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2947E10E7B3;
 Wed, 25 Feb 2026 16:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772037994; x=1803573994;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=HENU3yC4mznKMtpODkHBAGanJKfDpjDopj8ghqI8qEI=;
 b=euwCDN6q/qMPFjqOU5aNdhlFdN8ffGIY74j1+QlAkGWge1xKDLQYe9kZ
 SKXt3Iut8MDw4CDq12V161p0u4XR5yzLJtEQYRh6+YwezSV82Q1zeChKN
 97n+XMThPSwqamJMkGfmquYYdvGl9f3GlFAmM3ZMyZpVecz1mZC8LXyHH
 s2j64A78hIUBLlqne+DgjeEiNWscL5y7gmFdZdYt8CPdorLtsLqtjDb++
 jy1HgzHYg9uV0VdTkZWKqnkic2ycpU98yzbyTIH8za+xScNiUVU4OxLZD
 sCFnaCZ9A2ymWF8DtuIWm6IInKEzsVr9G6m/dVzl2pLnEk9owSa2Jm903 g==;
X-CSE-ConnectionGUID: MLTAZBOGS1a1jCt0OAV5ww==
X-CSE-MsgGUID: +9alARbHSLac8UUi9Cnb8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83707066"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83707066"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:34 -0800
X-CSE-ConnectionGUID: XqP5A9CyT+azLncOH0hapA==
X-CSE-MsgGUID: WP6TCQxjR0SEkRPBfV9Wsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216172953"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:34 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:33 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:33 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.15) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qxxIn9sv4Or6ziACaU0FF95VpUrOZl583jLHxU6Uxq7Y1f5t1lVXEhHjMtd+cEbA/JEXagHA0K2j3hdyesCqBlR3e0zOyhSmRaPXr3GzAGIdZCn/SSqs+cojQ5HNDOt691PzEopD9b/i6VcDRf9YONkS7E9zgm/nPN6AsXgYrCFF6/haxtgq8vhTVzlUOjqtwDkpFneTQ7u/A7+a4hPpk8v+hpsyqRd90rwG7gZoLsQlx0jA6nICltE4T1CikkMyx7iL0ZohiECJaPEmaZb315nhzeqqemGy9k05jVIQuB72hp43a8fjxMz99mBm8gXTpoFVVB6ME76w7RpxL+kHCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gGMCpyqgMOlNlI2hxDaqbmLvRzoWkut+cDR3fVyktvI=;
 b=QkPWTh3q9i8ajbsOg0stH2jQdD35xq1JkkdktpZbBd2d1Al1AWBbLe2/3zVOAJQjMJPHKrq/IGvl4DXsYHrn1Bf2/vTfdnLnm27Tyvt4iF/YpljdrLjuc+J0ShS/6n3AFRb3wxPnvcrV7G55XPBNxhLdyQyB1wQsLuJFbnoF8lSB6Qz2xHNEsuadqAZnApgo7XXDT3M3K/QVR6EHorPr8/lW7YQxXFy5tDj2xQJbzhI73gdF0onKBDhyEe+z1FQn1fJh9L2v4TehhDp8+OMbMwzex4pMEBSIlQSLBpwoeMw+xHG9P01VQ/q9AJ69eQRozkKV10sKo6gdDw4et9S7qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 16:46:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 00/20] drm/i915/dp: Fix few SST HPD IRQ handling issues
Date: Wed, 25 Feb 2026 18:45:58 +0200
Message-ID: <20260225164618.1261368-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB8003:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a1e656f-048a-4ad5-b619-08de748d6d5b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: KwKrGoCRtW/hjMa6512YHN5H700dGjstSfrGp2dmvVm6w0n5ya/L4TLJWImPnaVmNU7XO0Qi9H1mq1JFuzcVkwYGU5kG5aKPZ/Izi7tMheL8zfuDURNMYqUPbzy8WgowTLVUKGGaH7EMxi/s+CYyR+/QPrpId16MDQQxwt5vIIwRO3bFifcZxd0ZkiUnyd9egeY8dZK/3AMu31XaoGDpT3pbcXhjP7OVC/wIQ6AgUiWjXplJ6FOnFVQTu24EQy7SQVfDmaIiX+ZsWXW0clzaFDZSrb0QQQjGYFBLhggOx7Scwf+CzLKvBWTBqBL36ZfbINBfTkBrer5FWD3U1TV7BYV0HS0fEwtiK6tK+vZ21NyL8/pu4RWhAPK/tnJq59REe/VhoJ0lLUFhvlCC6aTa7AFPCANgRWV/q5S2zf4CYhxb43yrypVYlHVa9RH5elgkF9xIkpOtSp0jb6MiA2Orw3F7tDAJs4jdopN273HbUldxkHNbnPgeX33Z+Lrk0dbqQatBZ97NdzUeHUjpXVYZzE79VsFEgtdVnhp16+87XxOmTO7WPrxZ54XlkUiIHusYrk1Vif8qlJ51MnS+G8NiCxMgra1FBQzgkBGI/Sa9XnVVHlUJ/9KYPdSKo3rd6Tu7nFh443DKT2ptA1S++Z4OrxhMRuyoZbml8nt+cJ/hL9dwx2+BURA3n32kJEXxiqY9dUJd+/pFtnyLyadB8qXPWQW/waxXhcqUdkeRMIqfNg8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TY19g1LNIstJa45lKRti21/ZiJkPWy1pySCo5cdFC+i3VUPczyCQI5FpTvGk?=
 =?us-ascii?Q?rVRZ5vorJkq68pBDLyg0jH4tt97fn2eq4YXoGUdji6U6CgYmY2+Ock6hiZq5?=
 =?us-ascii?Q?QoaovdzQFXfI8g+Lnj4I7RRJc9f11KrPqlJHJROhbry6rwwxM7xerCpacmGu?=
 =?us-ascii?Q?gYq4M4USLhKUulZBmPVm7b/PwKfB5pf781yhopcd19qjE1efrkCIhZhQlH/e?=
 =?us-ascii?Q?Jj2Xd58OSE0Gq1lnAjC8NJc0sDvCujhN4XKEnpD7WrlPzNGLglJKHMxKobiF?=
 =?us-ascii?Q?TiMQ7EcEdtFPnlw3Ywa9h7Agkzcb22V6nb3PBp+npDBWCUQ/iL7KyrzConzE?=
 =?us-ascii?Q?+1hjDnAZQgUfnibvZu0TYlD7M5ImsyrHzS3XuuujO8GaODUi4hFKUP6NWJrV?=
 =?us-ascii?Q?x4texDiO1et6VsLy248+UrX2HSTanQImibLIQduuaKrOxR5ffTKf9Xn+y86g?=
 =?us-ascii?Q?p95addRsxBjpcojjo8M2RYCqvUxE6IZ4FBwHpxdhJBzDZeZC9h0ZmIHNpkic?=
 =?us-ascii?Q?RFYYRBT9D2Fae0bgv56nu+AjwAMN/6I+yAaSl0Oe/bzjTXMikZtYcB0o2FKq?=
 =?us-ascii?Q?vzwq/QiK4chuqaw+M95ChAIeLyE3BNh1EKCdckTSPXBdXcWHvj10+RpUp4bY?=
 =?us-ascii?Q?JAQoNnoQuUnHWdj5xcKep8HtLgRxgkrL8usyXwHo0ati9/jBoMAQWovdc7fo?=
 =?us-ascii?Q?z9ps51Cct+tvdl7Eql2m4E0ex6DKQJ5UOxXYirYIs4hL8up8DaWNugCd+lBn?=
 =?us-ascii?Q?3Alte6RMviHznNnUnR0SJOROfxp0NcG31AlMqOoqnwsPUb0Ylxd7+FExYinI?=
 =?us-ascii?Q?cWMoCd6IwJGFQiueyPrp+6NyPFJIQfsnlXaMtHnMcoFRrhXvSqpF1Ouk5q0Y?=
 =?us-ascii?Q?I+eg6K0XEc7YWdDVpUMv/ClCmuaSr8EVlUlLNpOHf6Zs0lrgGSp58ADLkT39?=
 =?us-ascii?Q?mRCNzV7i8qN0VVgzqT6Llr5FQ2QcNnQXyZ1dWFSpj9yQZbCKUsf1JcfIq7AX?=
 =?us-ascii?Q?Y83UVzLBXrR/E2o6aIrOp+7VeyvcnOdFDqSsjVgLgLUv3rZD6faIwfEis3HZ?=
 =?us-ascii?Q?1nOGXpcxfDMw/n0BjjhH4H13YhMqx/nwr6ep7e+YRwmQk0FcftKkk30tN4om?=
 =?us-ascii?Q?FenUHcc3TeU0W+3PJ4K+gd5QJCqsoo+ZtsWV094uSQRXK326hsZvRq0g9Tj1?=
 =?us-ascii?Q?4mkxmoo/HiEN4szaBmSHA4PeQSHhR6Ew2dm3Ob/w59seRIj95cSkDae/MBQL?=
 =?us-ascii?Q?PUyJAn0CMKaikda3nBwPUqN2YK6mSWszaipYfyybDm/ioOnRmjd0Tlzg3U4K?=
 =?us-ascii?Q?q773mH51pxqCXmQDglXGyGU5h4YzjoKuxyW8SxeIhbv5wQhP3DE75v7ZEPOG?=
 =?us-ascii?Q?9114panYVQIr3lTC0NFxNV/Kq3G8N1m9U15fQLwbAhymbV4lFbHUWZw90aTV?=
 =?us-ascii?Q?+q54xc6l7JrhFT7aUl5+fPbNvyFloZbQSnuYx/KkpZy+lA2XtzKDNT2resUP?=
 =?us-ascii?Q?zy3mDMrNo3zWJsDePMkRuk+3+j6+oyW3jSr1EvXD9x3UaTb7WBrEKLSzEa+Z?=
 =?us-ascii?Q?kEg1R3EEwxN+rSvbtVkXlkPM0iQ1bnBm93t3KxPm4Gm5QiEskgyNHhQ4LEwp?=
 =?us-ascii?Q?6QKL8AUx8sZAd6QT9ykRP/y/qMybdgyca78AnhvVMUv7SOFt0SvXhMSe/GOE?=
 =?us-ascii?Q?54y4rF6Fm6AC9D7OUX39gas+4dPdZw5H64o/1wmpwbp6SUz0f8O46PwGQSHE?=
 =?us-ascii?Q?SOsjJ8efRg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a1e656f-048a-4ad5-b619-08de748d6d5b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:30.9885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uLDYrKr2+tw+43qUTSaTWEvV9Ah0+xzoV0Uyv6RX2wp7S42egUk3BEFC9BRDX9YLXVa59FvHMkXtMspDUGBrCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E0B7C19AE62
X-Rspamd-Action: no action

This is v3 of [1], which was incorrectly sent without the actual v2
updates, including now the actual v2 updates.

Cc: Luca Coelho <luciano.coelho@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

[1] https://lore.kernel.org/all/20260225162751.1255913-1-imre.deak@intel.com

Imre Deak (20):
  drm/i915/dp_mst: Reprobe connector if the IRQ ESI read failed
  drm/i915/dp_mst: Verify the link status always the same way
  drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ
    handler
  drm/i915/dp: Handle a tunneling IRQ after acking it
  drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
  drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED event
  drm/i915/dp: Don't clobber the encoder state in the HPD IRQ handler
  drm/i915/dp: Remove the device service IRQ handling from connector
    detect
  drm/i915/dp: Fix the device service IRQ DPCD_REV check
  drm/i915/dp: Fix the link service IRQ DPCD_REV check
  drm/i915/dp: Reprobe connector if getting/acking device IRQs fails
  drm/i915/dp: Reprobe connector if getting/acking link service IRQs
    fails
  drm/i915/dp: Return early if getting/acking device service IRQs fails
  drm/i915/dp: Return early if getting/acking link service IRQs fails
  drm/i915/dp: Read/ack sink count and sink IRQs for SST as it's done
    for MST
  drm/i915/dp: Print debug message for a sink connected off request
  drm/i915/dp: Check SST link status while handling link service IRQs
  drm/i915/dp_mst: Reuse intel_dp_handle_link_service_irq()
  drm/i915/dp: Ack only the handled device service IRQs
  drm/i915/dp: Ack only the handled link service IRQs

 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 253 ++++++++++++------
 2 files changed, 171 insertions(+), 83 deletions(-)

-- 
2.49.1








Imre Deak (20):
  drm/i915/dp_mst: Reprobe connector if the IRQ ESI read failed
  drm/i915/dp_mst: Verify the link status always the same way
  drm/i915/dp_mst: Reuse intel_dp_check_link_state() in the HPD IRQ
    handler
  drm/i915/dp: Handle a tunneling IRQ after acking it
  drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
  drm/i915/dp: Handle the DOWNSTREAM_PORT_STATUS_CHANGED event
  drm/i915/dp: Don't clobber the encoder state in the HPD IRQ handler
  drm/i915/dp: Remove the device service IRQ handling from connector
    detect
  drm/i915/dp: Fix the device service IRQ DPCD_REV check
  drm/i915/dp: Fix the link service IRQ DPCD_REV check
  drm/i915/dp: Reprobe connector if getting/acking device IRQs fails
  drm/i915/dp: Reprobe connector if getting/acking link service IRQs
    fails
  drm/i915/dp: Return early if getting/acking device service IRQs fails
  drm/i915/dp: Return early if getting/ackink link service IRQs fails
  drm/i915/dp: Read/ack sink count and sink IRQs for SST as it's done
    for MST
  drm/i915/dp: Print debug message for a sink connected off request
  drm/i915/dp: Check SST link status while handling link service IRQs
  drm/i915/dp_mst: Reuse intel_dp_handle_link_service_irq()
  drm/i915/dp: Ack only the handled device service IRQs
  drm/i915/dp: Ack only the handled link service IRQs

 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 264 ++++++++++++------
 2 files changed, 182 insertions(+), 83 deletions(-)

-- 
2.49.1

