Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0359C7E66
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:50:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B899710E767;
	Wed, 13 Nov 2024 22:50:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e4fjmxbH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A017A10E76F;
 Wed, 13 Nov 2024 22:50:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538241; x=1763074241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tsWhzyZZi+0vsKFxoyh/0pARPj84BsdWM+xnK0YQNI8=;
 b=e4fjmxbH8Cppf1Br8CtoW0kfE/nHXsIT9jRTbZi4OyHoYihTOd2vuRNa
 FCq1j0/9bKCtNUaAd9AYdZxvktROYrwcf7SeL9Gm84aQ+HOFCLivNwyz4
 63o8mRoqie97iB8cEpa0IUTsyc3EzYfIAxXVowEmZ+JxCEoGo3sZytAtn
 fJVJbTySRoNW3NpzoBuMSfX7CD0Kj0g23rnbMFk6iXsKUyg6a4xo4K8OY
 CpapK/JPcYK+YnswATYoA4UTlO4mmBwxJdeaAT0eKZDJj5/m2DFJnKmU3
 ZeVf+eIqOSYP9uimd3oMLykkZe42jdwT0TQtx6qtXBpGjKjpfke2WQiqP A==;
X-CSE-ConnectionGUID: L+qDdzrIRG+wLuGCD0pmwQ==
X-CSE-MsgGUID: Ki/CAFPvTX6cDvv54gpaTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53997875"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53997875"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:41 -0800
X-CSE-ConnectionGUID: 1c/H8KowQqKr3zxJhfyYMw==
X-CSE-MsgGUID: LjG3lLFJTTe9a6KFcRT6Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="93072041"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:40 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mo35rrlglAYs6VJLByocWWDRE33gTavry66D5+R5HsQ2a1i1oC+RVeVenAZRyhgmfdtzwEZAuP7e4CZ04pmeF+nfDFErV4O18BfSTjmejXxY1FlNLjCg0CqQXQ0uRqTD42l6JZ6KeGxUIZWrHqQb41vPA1g3HuQlg554Qfv9jV6I9DrzISo0AfYVUOcTNf3mLzO6QGHm23dYyUak/SCjpRC50bYR9bliuLe9SgpNdp19jRec+1D0J8v+Dtaz12DGce0rn8ZnXN/1FoRUi+CSCxRi0m+9Mn6OXg44+yEkBmJT1OuilLGReeMEgynMcIC1cN/X40hBsSFA2Mj3bmO/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XE2Eq09Z36rUePjwahe3QMh25jlgHXIt7ouHXY9gJ34=;
 b=IwORtSBmlmdTi4WRQ/4YEXflt6gw0EFkfwVInQ/zDuYEs5giMqS9ENxTfsX8+GrHKlJUONFyyIwE8576XElPi6yiWspIuBp9erE0mokhG0fSjQ/goiHwDneaZ0uQUgaNbJ/HY5N+zCIf4eDTw5dqZ8IVuDwEem55i3/Io8JdGP/ITyvza4Fc1YcQIRlByhIYbwISoirOXys2ndwGeVh+uYo3bKjPt6oyK4PIBHpfjttYtxCkz4NwVrFiEumF38SSdWNZh2hMmMJIz169BEEXDuAO0IqTFyrm7vFJvDwH7VDpLPHXSXC1RT6OfWw609ieRDlmahNo7+XAy1mD0R67eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:37 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:37 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 6/7] drm/xe/display: Delay dsm handler registration
Date: Wed, 13 Nov 2024 17:50:15 -0500
Message-ID: <20241113225016.208673-6-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113225016.208673-1-rodrigo.vivi@intel.com>
References: <20241113225016.208673-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR2101CA0028.namprd21.prod.outlook.com
 (2603:10b6:302:1::41) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: 64eb51c5-3961-4508-8cd5-08dd043596d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Jt/63alGIoS85LVXhs9ywdAk6i6Xp2i8Q1jpeiWznsfYiJjRqy/JmK0Ih1CD?=
 =?us-ascii?Q?GVtrLgkP4SaUC1CT27tZuC7+xHubs063G4avvjhGJ04YfkE1pcFvyaqJXQ6N?=
 =?us-ascii?Q?QhtwQwuk4CBPcC8HR/Xshu+2uDht/qcFlMtOe6oao61n1+G1EQ9Kt545RXa9?=
 =?us-ascii?Q?u1I+uYy6f4IC6flvMyJ3MgTlSnRhehUqndzSjNPE1D8Lq1l/6LWfxqfInTQ+?=
 =?us-ascii?Q?mEV5NzBYPLZ9V2zSL2tAlMc9P/nXVHGIt7aR1EluCWwjvPiUd35pf8v6177K?=
 =?us-ascii?Q?5aNa8P7OMOadmClIoqu1es0PE6wrzEOQEScMK6ln+z6QUIkWPeTPThKjmBE0?=
 =?us-ascii?Q?9/W0I0ctLtph6NpjfXTI3a2VbVge7v26g9+W64ArH7KTeqWOlQ10baZPxBCq?=
 =?us-ascii?Q?KikztFhDEhgJv0GgURmAx+yrprEohYLg3xuDOWmOz5XntTyxQ6c5H7u1xu2o?=
 =?us-ascii?Q?zgWizHjQvCKcHEhVso5Y2nBq2Hdp/OaeG9yG+3O8thxZtNF7UnNHDU9wLzc9?=
 =?us-ascii?Q?NXBeCh0mTLMWoIGMo9/+oTxi17Kk8ZY25gFr59dRwQC6jUNoTm76zvSuTcIm?=
 =?us-ascii?Q?vNY0hxWPdNEmrmq5UP1ntlYaumnGQT2DEDOZcYuEr3UZ+8eqeszyPrRRc/KQ?=
 =?us-ascii?Q?NeDQvvt7/Rg6l36TGxfSOV9nqz5XKog8weomzXKftud3DyMbuveK8/+DuUgT?=
 =?us-ascii?Q?SKuJDSOHkVF8uTcBpLiwxxWlFClvuHqDAdipoUAeJRyfH80uIKWsFb08/+ao?=
 =?us-ascii?Q?ijYBbD7GSoHrDVRTTin1DMynijt0JJUFtGMZzyHV26o4WgbY2sKLJ5AvBVug?=
 =?us-ascii?Q?H+NhA2IustzlSIam+gHyQNKSepcKnJDOE2hzTOiJ8hjyoJ35W02xdTeQEFF4?=
 =?us-ascii?Q?yoj1ohZC5cPcPCZmubG9LQgmJ8xzKmPJuOWkZeVCD6dV3+ae5pT+0NAx/AGS?=
 =?us-ascii?Q?giSKssqJ769usp9/uwdj/lxlIettBRj/ZSJBCxlXVxH+3XtBneU8DWtN++dQ?=
 =?us-ascii?Q?jyvhm0viqRXaXKLwxzQPB+EK7xEOrEdIQlgZ/XPrYyCXXRiEuerTiPq3+czF?=
 =?us-ascii?Q?8inWn+Sz5im9EvQnsphX9fuF6f5NxtsKcnizqmQjo5C3FhSjGWRzpgWyDOSR?=
 =?us-ascii?Q?84S/uHqxcvF3ZxqGjxXlN07fRktGAt5S8e+rRQNHoTQV/NEtkpgH77slRaWQ?=
 =?us-ascii?Q?MLYbD4NZEZ8pJoaAYgfAWV4Ko50BB9nJRuRtiKeIUCQXk1uKLobpwI8o7a1o?=
 =?us-ascii?Q?n6RWBqbRxyKZiyBmWoPGgjp16zv7rlLzzku8ed3kOlF8OEp/mC/OiFL5hd+L?=
 =?us-ascii?Q?IGCRT9WtVoy1VYl3nKQWQOnC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5R5i1g6bmMTzRC4bbqN5LUh73yiWcT0OeL+Z74if02j1D5cILqAfBfwkuuki?=
 =?us-ascii?Q?8dI/4Hpd7Fn7Lr2lxeBlq48oKW6BpcGfrbx013SDmmeOobpvXZbU7ZONvKXz?=
 =?us-ascii?Q?A7ncmBIcN9n0ut3OfA/IgPWzNqfDprWhCZTFwPT2uDcTekYS0Cq4wosc7dXm?=
 =?us-ascii?Q?ejKXqcot58BZmga/IiMmfG2S+19RFs4eaNJO7Ph/uEwy9RlaMT6+NTO4+Q5y?=
 =?us-ascii?Q?2c6iGARXU/qpUAYOWFijaXgv8RTMqVXF8v1R04tcjQDAph9T2Z6Uy3lTA1O7?=
 =?us-ascii?Q?3R7KpaYGQfnw5r84XHlwe43d9H9YoFBwoC8wI7PHf4zzPTIQRosXfroratwa?=
 =?us-ascii?Q?m3Eo8JUMWAnWgk4I97p/CUT3RcrWgGmESpfjDJxltXDJ6x1cm2YQ4gUGa7jT?=
 =?us-ascii?Q?Wx994KLFJnqHK1MpDIbPgW2L3/YeKOSD9GU8gxzlVmL9G9D9lZzYw0XzDZTd?=
 =?us-ascii?Q?wWVi3WiwM+Z5h1KtD59AnUQ6h9J+94Xsv7cJuq98Hy4Hv2gNIlTBuOZ0cB6e?=
 =?us-ascii?Q?Yo7y2wKxgPBJ1wIcoEo4jijKBszjTr331rzCcQCKJXTkrbXCKM1gYiOsBaST?=
 =?us-ascii?Q?6RrQCVIdYVGYCFN8IavNJhnzxNW4xYWiKUJyuA1p0Q/xX9OgxeUcQFW611c9?=
 =?us-ascii?Q?8HQuB+qRfWnloOvLm+3QR5gERQbQOQa31YjtkjxHE2dnlGtEiU7mL5Sklf2/?=
 =?us-ascii?Q?TXtv1XVY2NFIK8Ni0glwmDPIZ92zQ+9mIEOhqgV9v8IMGucOdBYyPf4FTQCr?=
 =?us-ascii?Q?yGjEU4iqw/N2A2Un2vkrsyrvpdVF65AawklCsRPB5mXCTRr1eSARHGGrLrvt?=
 =?us-ascii?Q?IHxzU7lZaIaYO2o2X3514Ew6uqqLkepu/tBIPVTS2MMmGEd0O89M9KLmYGyb?=
 =?us-ascii?Q?KPSaXDKC4q4UPjPEyIwUwJOmRODYML1bjHM5fgmy/geJq86whTjUXV1bX35O?=
 =?us-ascii?Q?v2RqaljNZnSrFvhFk4fMIa56USAHW2jRZWfDylA325cTwnlwdxEIpeeyC94q?=
 =?us-ascii?Q?A5Bx30XqQgYkt2U4jtWbi9mEkFZbkvq7K5WxxtiUMNHCtgAZxju2gpkQeZRi?=
 =?us-ascii?Q?nWEieL5sgmQkVX8+Gb0esikcayrBxiPuNJVihGVCTQFgx/I9uTRCdnZtEL3O?=
 =?us-ascii?Q?DHUAHoMqiFJj36cXWM07tQIHciIgfBrGeWSmbVGaP8onX3jQ8EIR+PfGL521?=
 =?us-ascii?Q?QtTJE3NGynHFx9IqBRgL/uiuXh8Xkb7aetfMvTmwgE1Cl+DqdXNhTw9nQfCM?=
 =?us-ascii?Q?8/KhUdEhQFYgpgCx8jJC8YCL8HTvRCmoO6YsLiu/je0z8e/1F6sj6RYv4ehD?=
 =?us-ascii?Q?5ZxskxU0ipgdaYfDAAPuF38BjyRes0w12F9rSnldy3Oz9NFCN+pzaYj29mxw?=
 =?us-ascii?Q?lH0OW7tKul828Om9PmHNonLU2TURI5r9xdM9bZ+bUhE9t19kHC9GS3k7ZQTB?=
 =?us-ascii?Q?86UEcQ4YmNJucI4ATkCmHCw9E2QTsX4n/jXTUfagv+bht42BhYx6VAdJ8ewm?=
 =?us-ascii?Q?7e+l360OX8vbW1kfOhJTda4EvGnQFJq2qMUNdwnWz3q/UCx6I3wgIlNdb6Nr?=
 =?us-ascii?Q?KlbbWpRTyXB9pJV/VKpNMjfQgtC9VGORd/KMOFlsfqngjglJr7z8ezxw6EjH?=
 =?us-ascii?Q?9A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64eb51c5-3961-4508-8cd5-08dd043596d8
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:37.0020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n1rpCosAQaEUGGuXB7F9hXvfoB8YKbuOQabIimv9xQ6uydAbPdtW/iHL2cej7Hlbro54VhQw3xIrOeBWri25Nw==
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

Bring some consistency to register/unregister order at the
same time it aligns with i915 sequence order.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index fe4d7c210744..c37fd3ea93fb 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -219,8 +219,8 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_register_dsm_handler();
 	intel_power_domains_enable(xe);
+	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
-- 
2.47.0

