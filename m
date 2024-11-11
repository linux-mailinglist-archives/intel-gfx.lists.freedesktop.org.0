Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0529C4604
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EFE810E529;
	Mon, 11 Nov 2024 19:40:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mPmvk9Si";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 113CF10E529;
 Mon, 11 Nov 2024 19:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354018; x=1762890018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hTQbQ0ZrrTcqO93DrdxrOnJN0pVI3YRO5XHWodo+0Ks=;
 b=mPmvk9Si+8Nh9paQXzCohKmmsY5yRHw98rxgHmCyKWv/9xIduC4RenR1
 3/wRwJhQcyMj0t4Ay3IY2n8tHOADbIN1l9IfW8X/e4KISa3Dmw9vNNXI4
 6dT1vGWj52oMMFk+ekbp9eyNSS559SOLvr4oI4f1tZLwFRIVn0HcRCEbA
 S5Vj3WjtUtqYwF05VR3Y6uzPm1FCA1TZNB10VddU8m9aI6puSgLlSMJLY
 mjk8v2A80UjcV5ptgzbX9cuN0RGQObtV9v4+sNQcPc2uoDk1pTLuGqKdh
 rM+GF17cajIAsBjI7wCnnHLNtDCfXkl3iKcurOJ3Ez7qL5ysiX/zho8da w==;
X-CSE-ConnectionGUID: XjoJEI+AQEmnERYJL590LA==
X-CSE-MsgGUID: sN5zcPypTJCOrYzcSUrpug==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53731264"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53731264"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:18 -0800
X-CSE-ConnectionGUID: oO7SFfJ+RFyPLCYd7HodkA==
X-CSE-MsgGUID: G3+aqBubT/6hj72IJ4ylLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="87023964"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:17 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DqQdbMrb+O6XpmaWA4C1QO4m4GB+4DBEEPA1PTtEirWjKLyQEUb7lqX5SSBjSuiSd6Ob3SXKRR+WvnjI7fRoSyd3HRGy2h/XfTIKTQj154+8VCnQ04P0zj6XHemMygbOxznFSFpXsZptj/p13sTY494GLK6lWuuO8p8u1vemCvwTduACCW5tsu1+DeoCxOYySMKyGJKuqhs3O9Km/K3KR5MrphRrV4b+3MQsZmzcZYEkoaDyMbq3nk6MWDOJtZ6dhaKN11r1MELSgfGWelTzaNDEHfNr1lohY6BthjTBuHYQG4TCUJ7IS+R4n0JRok6+25aIYWzVqTiDzZJOuQkwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUfMoBMSmeQslTgzSQGq329SzuJ8zab15H2ZAHwDeLw=;
 b=mNPOvxv6TXFSqEVSk3+jy5rsChTOefXEpP4C1V4QxX0x+qjMXlEIx3maG6z7J7q8i7f9RSo4UHxmOlkzQ+xwbszLysenEp+8GLngToRdU5/JieatgdplWwZXsHbDfoR1obZ627z+iFWKzJ85L3B7A9uBKgbXHhi6SOKA+smFclGT+3whbkkulrsFdd1MdlCmhBuak13q/bZkmAmgbZz5s3u5VXrhxOP94DcZsWv6mi0z0oNkqJkE3uH6MhDJoyr4pmGGpp25xc8D5NHZo36NuPXHESyfYhy+6adfQ020x088rFNHzkbx/+m3KrWI0aCf9kqYCtK7xUc5cZGL3TGNtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:09 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:09 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 4/9] drm/{i915, xe}/display: Move DP MST calls to display_driver
Date: Mon, 11 Nov 2024 14:39:37 -0500
Message-ID: <20241111193947.128871-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0342.namprd03.prod.outlook.com
 (2603:10b6:303:dc::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f19be69-21ff-43a0-d8cb-08dd0288a672
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?iiXTSWmYumiai3KXjgloXJv+YRmva9OeEr0GSDFPrvFcQhezDe41eFb6M7bl?=
 =?us-ascii?Q?3zjUEPd6NHiE0fa9pUqkV+xAYDfANxjEqZ9cTTte+7VUgcisWi/gZoJPefgl?=
 =?us-ascii?Q?z7JQnOCHAUxZ7pNwrulIeo72I9/hox62znTDlnBIvZQwjWYQCJ0/s4I+Labo?=
 =?us-ascii?Q?qJLDkBTWwMFxO7+DjRzMeqqhW0mLhz9OoukHYHMBLOmCRw2hK+nVWlLa6dxI?=
 =?us-ascii?Q?akd1D2roEDt6tugJVTmh7Lw03AFwP5dIwlDtdHbvU7P35QDKX8hOSK7thzNs?=
 =?us-ascii?Q?oPH84YYcpKoQ8UOThsquGxbi98qHPul0TEPiuseEo14p5q8hMEWc8nhL0+wf?=
 =?us-ascii?Q?9wWc5Edd0m+HrrfR5ViJ3LvCnnrtIIdCDJJc355g7HFkm7JLiAKfnklcOzmD?=
 =?us-ascii?Q?DSvcCbMZBFHV9rNh9UvqB5ty081+ebwm5cNmkFVjEC7/7yFVRtg2LgKL/4ma?=
 =?us-ascii?Q?ga5mSeUWo+QYVrTf43RSZ/DZMkvHgF5hzmPRtMTxlresgZptRlQHk38fBNMZ?=
 =?us-ascii?Q?N4z4o/mP/oTUwzPAslfYM/G0kTNbp5QYhHhBaE6gtzHjNJE7uXXNLvaI4ngG?=
 =?us-ascii?Q?SJagftj79x/Ira8IWUdj9d4sfezaaFP0VYJG/z2fk23uS6ScgKtesUKH5EPV?=
 =?us-ascii?Q?7flKWRyxwC97K9wcUHbJt1hooNYOwEsxZbNb5vpEeKc4zFTjNHHLzPhcdoRs?=
 =?us-ascii?Q?HLc27jhw/L0smuJxFXU84N6ibmjbS0BYB75PTyw/pJbt4+ZhdzC+jNMHFC5J?=
 =?us-ascii?Q?vaz50r965Mb9S4YbJM/nqJY+c6AkaTJ/+SlJWtMGfw7zxPmZBOy5SvTxCqza?=
 =?us-ascii?Q?AdWdMh9VVIN/eJviWqlNEKWrZBsWBVl5IQauwjKyFTYrXLv0FuQLJco8XDlh?=
 =?us-ascii?Q?4/0UnRSrtI5nL5Gd0B4gE1KJZQLx8TU6Rf8/GuEoAauy5tmRdFDb4giTXjq7?=
 =?us-ascii?Q?6os2irivWAeybw4ihLOJv7TPpiN9bRZCC/2d1grHCXvEeQj5ET4W1vLtI3cU?=
 =?us-ascii?Q?Gd18cwLw1poM8M3yaPXnqARzpr2AZwM7HwhMdbSGYw+TPGXn79OSa7e8Plqw?=
 =?us-ascii?Q?dwnWrlwN2m/mPYGUxT5BVGAtsrs3DLauYB7e5VX2HI5atEimwx+YjSVdsozA?=
 =?us-ascii?Q?tj/HGslfYxQ09nvtlAr/XqymOSBCVItth/hmVBgVaFANwsC2OVgL+XH6x4UZ?=
 =?us-ascii?Q?jOCrTHIwnfV/XT69x5Qn8WfCcD3nmfynZiqAJW0n4U+at0zqmwhUxe5If6KY?=
 =?us-ascii?Q?gReWkU9lxn+UjntVdHnqEn5Yw8/7JPaYpN+rwW718yLflhh6XtYPXfZAudES?=
 =?us-ascii?Q?iPVzaxhKDjeG5M7XxxjBM/tJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?c8n5TQzBx++Nh11gsBa202DrHl31Jx3JtCDcLJT/+NvD3tCt7vVgh7zXUJcD?=
 =?us-ascii?Q?RfUV/EMk9uOcRTdokupdKeNg5hciTcmux33JG4qJ1EXv8sBKckikl+LiBpm8?=
 =?us-ascii?Q?IlOXQYymtG/RRn7RAuq/MLyZjLb0bEzi3QBL65JGnJKkajjSLKBczBmUVQIf?=
 =?us-ascii?Q?mD5cPAenFbJrReUhqiDiAP8cfV8Fc0P4qixXW/iL0Aup2o4KwT0ts+Bv93xt?=
 =?us-ascii?Q?c9dwrmyBEuIhylAypBUGaPFptBF/jVp/7DLWPCMnKJ9XW8U/tSRE0u38tB9z?=
 =?us-ascii?Q?40gasoWtkXnyawFp7USBbq5hDBXZl8NOL0CFGUkaI99QmnAgjvos+rxv0LyH?=
 =?us-ascii?Q?w+wrCIy8kYhUzGNKLaH3iq4oBhii+dYP75fb8GqTjhCGyx0iTcmTj6+15ACd?=
 =?us-ascii?Q?l3/2ofGRal48vpvkkU5NrwjHhbt0FFe58zbtSglU90G6Xv9Wn5paMU9q33Zn?=
 =?us-ascii?Q?+zEsggCPQ9yWPrDBkIsT3NVNmUKK9UYwnP7zk199+u4CWdhZuZ0pizSB83Oj?=
 =?us-ascii?Q?Se+M/PrUuT3fsIlSVpMLwPq3QUjghLEXyGZ+xmMYIFcjBGWo3k27avfmWe8s?=
 =?us-ascii?Q?te1o8y3q2zYZiyH9dRFxptoPcHFJHhJ5v+OOHKARBR+t74A/vyuKxPLibwYE?=
 =?us-ascii?Q?kSwuJjGC+zj2xGKte0oxgKF++sYDVhPWsG+n0nR/Z7jVSQk+vxpLGBO9LG3k?=
 =?us-ascii?Q?EKeuykok9E+/JpsbH7fHMrAWbYBajh+9SA6PSCuT077SoKVuu7ifrYN21j5d?=
 =?us-ascii?Q?WNIW6apvgppUOp+TF/OEV9kqq3ayD7XZ1VThvqERw2sk68QpzQonlYDmL/qo?=
 =?us-ascii?Q?My0OqIk2alfkHvAv+QW5KSCxhabEvSWYcE6P1+MX2eCwCUrKGxRDDMBjrI4H?=
 =?us-ascii?Q?LofzfMck6gaGwOhKSbDcO0rV3BXfQuzUGuu+R5I6OnTupaKhtOdN7Z58RZs7?=
 =?us-ascii?Q?tetQLPAO20OdDG6YqLe+ev0nwDpMqJtgAWUcGcjdwWVNv4XnoDEkFBs4sdDk?=
 =?us-ascii?Q?wNITXJUYqxIouKfJZbhj+RyBUNIkklcD66VHi/Zn4tRCbKKGtqvwcjq01hTI?=
 =?us-ascii?Q?xaLX48BXG6nHNw2ekWaWot5z1fygnjsh8RUM0wGHUw/BlY83EfRu902Gnoxu?=
 =?us-ascii?Q?LT+LQWozV9CEHIAzdF1yirscSMW9gabZxrheendrDNPPr5gXGVFZJqKzXgdQ?=
 =?us-ascii?Q?sxmdRjN53kO1CXFmc55rQQhhF34y9Qr7fPonT9AIuwmz8EH5jr7p2b0Qcb/w?=
 =?us-ascii?Q?QemN6ehpXMUj8Vb97zZj5yqqpO/EDcg/u9fRScY6O2ASdk3j1k63gfLGXbuu?=
 =?us-ascii?Q?ESXgcjaHvyT7LXuLb/L5UFUD0fnzLBOjdZx+N/I4H5tdXKRTvtuYvWO/I61l?=
 =?us-ascii?Q?9ljdshldYVeHJooNGPIc7Vuj5O6ZM7kKJngpPsXGPB4mSxL6+4Y879AYageQ?=
 =?us-ascii?Q?/JXMkNdmzmbwm5IpFR7sA2oPWhf99UeyeEEuLqpJENUPlrYdm68iF2iVBoNy?=
 =?us-ascii?Q?OohydeHal4DAeIlNGxN3KrRi4IoQsmx5Xlng7MpV0wdjn1vYmoQTfE2TnUiG?=
 =?us-ascii?Q?UMqcH/3UIfVdo6iVOLewa/Yv+Jo0SHMtc0MqnVKkaoddWVCDW+h6k3bbm6+N?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f19be69-21ff-43a0-d8cb-08dd0288a672
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:08.9762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: er4s+barjpSe7akV5W7jubnIQxFnm2U7QtH6D4ZO1MUlf44y46Ii+zoJijD80odZSnO7iER1OQrTM3at2U+ljA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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

Move dp_mst suspend/resume functions from the drivers towards
intel_display_driver to continue with the unification.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
 drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
 drivers/gpu/drm/xe/display/xe_display.c             | 7 -------
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 56b78cf6b854..06a60be649ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -676,6 +676,9 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 			ret);
 	else
 		i915->display.restore.modeset_state = state;
+
+	intel_dp_mst_suspend(i915);
+
 	return ret;
 }
 
@@ -729,6 +732,9 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	/* MST sideband requires HPD interrupts enabled */
+	intel_dp_mst_resume(i915);
+
 	i915->display.restore.modeset_state = NULL;
 	if (state)
 		state->acquire_ctx = &ctx;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7ded0f4675a0..249586df9d50 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1038,8 +1038,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_display_driver_suspend(dev_priv);
 
-	intel_dp_mst_suspend(dev_priv);
-
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(dev_priv);
 
@@ -1207,8 +1205,6 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_hpd_init(dev_priv);
 
-	/* MST sideband requires HPD interrupts enabled */
-	intel_dp_mst_resume(dev_priv);
 	intel_display_driver_resume(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv)) {
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b5502f335f53..3778a7a0e52d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -334,9 +334,6 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	xe_display_flush_cleanup_work(xe);
 
-	if (!runtime)
-		intel_dp_mst_suspend(xe);
-
 	intel_hpd_cancel_work(xe);
 
 	if (!runtime && has_display(xe)) {
@@ -452,10 +449,6 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	if (!runtime && has_display(xe))
 		intel_display_driver_resume_access(xe);
 
-	/* MST sideband requires HPD interrupts enabled */
-	if (!runtime)
-		intel_dp_mst_resume(xe);
-
 	if (!runtime && has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.47.0

