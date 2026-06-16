Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id semyAJqtMWowpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA3B69517C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i+DXXzXA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F9DC10ED3C;
	Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE9310ED33;
 Tue, 16 Jun 2026 20:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640595; x=1813176595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=CHblsj7q7+m35TYKEN6mvVj+w9hPaglmN6tL3TyFW3M=;
 b=i+DXXzXAmAlRRQiEW9npIbBCVimsX0wDRBVbNM5PXm4Et60b+FaIOYzz
 38PKT3QYfmJaN6hqgsmyjM58qlFCg2xVbAPeOjn+rvtWOPHUt3dtdTrej
 WdObxNc1yspt+K8zsBWweO7742Q169F+L2ChEt6DjaNa/XmLEI41tqqfg
 T9oMsc5HDd9jZxrtEc+zd0c3TnzEYQYa+3ZS+F6FlGeP9P0piupbjTqLc
 zomS64+sZKMc1y8XRbHOTwz9WBufw6P8IBYIn12SoiO4fxuvYDdY0gtUc
 8LIa2mpbVj5umGK3c+bbzk/xbyRfhGQaYjAdy47cz35zD25bDjBrd982M g==;
X-CSE-ConnectionGUID: D5slNL5WTGGSf1ZHkC8EfQ==
X-CSE-MsgGUID: VQzRnbT4Ss6GwtGp6tEElw==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255871"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255871"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: uWKJmaumRRWXh72hx6ckng==
X-CSE-MsgGUID: v1tQyghsRx2N735E/Fjc+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579827"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:50 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:49 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fppyqbvcuOFvauzP/P8YKm0LNO0BA7KaxT7HoH1ErO20QXYo6sPh+HtW+eDNWi5+RjFL+PUwdoo8K/R6pso1vND0HoSlTWlu62mo3aUZZlcQyhsfsfM3UqX7j+A/VPcKLYtoOi/jjwE3DH217B9RcPY+SJR71THKiSDqazbUYE+QshRpyhFhHYfEdF7FZn8zCyATIuOqaZlJd7/xDlyPGHMQ5N+jj8ocZH6+IbGyZjv7LbjqMySCjNVrdyEmNody1/2hBrw7npImmdq3j2JQ/LATyku35gmL9S5LhrEuhrofMX+tikWb45IHY16zEVPu88lLFzeXzC3Dk5lheULmyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wbw3sVfWEZ2++94Qvxk8GSRUMHxacUk7GPrvKEG1mc4=;
 b=kxkdjaO8bvtrQmua0AANZ90A45GuC7iBKdk+FWPRNmRZcbu+h26MQUzopmga9MbaxwsfrOLxHp3pMLumv19qYE7nB+yVJY/qIyvGJ11VuUiDYBQjbgV6GemvXcLaSjzrgaXGwfRnYRgRSLnB+c+DqN2U1SNzsAqrHKNBss931Y0bpwzxlraGJA+Hyh9w2JB5rNPlGHgz/B5M6RQtmaKXC8nvECkwSLCk6X2scXvTPGYdSy/np/qpHYeklUC2ICFgZjyLR++C+N4+upTisCyUH+mcTmuYpyr55/jFzVQzwTMtgigSom7fPq7uaSjifrHWu5z4pU5u+qC0XZUlEgOC/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:39 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 16/28] drm/i915/dp_link_caps: Add helper to get the number
 of supported link rates
Date: Tue, 16 Jun 2026 23:08:36 +0300
Message-ID: <20260616200849.3534628-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: 603ddc55-bd2e-4564-616a-08decbe33211
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: c8BVDarKWqCofqwee31IcCjYGt1tG2ekHVyNlPjEzWOdlfB2nQc62PQ1UyxIgikoFBxHYuDdB6TUiyR0oME7xq0ojdS78WHir8+kghvn/7I2XfODKcIa8T7TctaENrixAiioDljmwyH87bcmPnOd2DZdzG4PxSeYJi2OpotETNP9l1guzM2+w+Kb5W+7bKCOC4JBQYRHMyXJYm/Dmw1DNeCtC3nPEH8yEMEsRp+fiASZOMylkf+wsK9Mtfd5KtULYoinEQqeZ+fdQ5Re8fKJf4VPzqtPW2aB1cRNUPJvV5f3N+7TT5wiOlCKlzZinQLGnZCOXyxEg6cygtsVkppQPCb1ahHztONikXw35ePRsqxc1m4jdyuemChoaLl+XGqKXIC8TEAp3nTe2h97qQHbgR9x9cHI5lPYukDK6px6dD3HD/qGW+mtTsxJVbq9rVg35qkhXIfi1NKxmVyp4rw10+h4wdPKkABnvAyVE0afYPfsCzYftKt/3anLapC65bt5gK64rnnNESG1mMWAgX1yTJhtxernJrEF/L/Y7oiwkoXqBGnB4FlaecQQWR2gfgJeq82OFLz9T4QgLA8rEWM86GCJn3zx+3y/uuhqutKXwv/qyt8Hbo9m48hem5fuESOC4aCYZyXryr+NrF8OacUWhKG+mTNCmuQ/j05eTEPeBP/UD4QeX97JOONWh6OERABB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xfF+fNs+DUoPNng9+d4jZ0UpUYh2IHVNc7/nRpMzMPJO9G96Ly0wWM1lXRA1?=
 =?us-ascii?Q?r7vx/cWgm3M5v91mhS7ke9UhbxuX6Pi6Lb6pTyO6Yh1O8ocDWbOgnPfrA6i4?=
 =?us-ascii?Q?VpBXNcgzV0+/i1xfBVifh4L6AtVFyBPgS1om3MYvGUN3stPpBGOd/Dz9NKkK?=
 =?us-ascii?Q?q9IwifdBdctbCSKX9oi0UCW7B89geIupZ43U+MH2GFv88KZSSCIzRFEqX2Zr?=
 =?us-ascii?Q?cqvqrIM2B71jOiWikrfqJOXGLuY7EW5O3RaqqtOWLYUtuSEY3E94VXr8338U?=
 =?us-ascii?Q?uW37MAU51sXmz926RS+/Gk+nPFA+h3kVttFjAH+YyOvrVeIVaReIgvxgwQDi?=
 =?us-ascii?Q?wYnr12C2YWLZG+nr3VVHW8x3UtSMesrwt/q4vhAIFYuNH0qKQXR7j+2YG5aZ?=
 =?us-ascii?Q?MV3rUq271h6rpJsas5My2AFsZ6+OiX1Ios9XfCJZshZoQLTHottEyU9CqStw?=
 =?us-ascii?Q?U7fnkfBNW0qaOdN9Q550KB2cHmojHIoBq79jVL4+J7KMeeY/ShW4LWWEQe4g?=
 =?us-ascii?Q?8FQd5x6MGPNr3oWpRCnKpS1ZqvHAd/7f1clT+FvR8+45dmfqwb1UmETIPThB?=
 =?us-ascii?Q?6w7mGr5VYirgFy2UrKOr6ecRgQDuinAjka0g9dhmqrBLgq/kft0UBqFlUjQB?=
 =?us-ascii?Q?nwhX7Yg4ZQju5huMBWGPscVFUpfhPcIb2JkDnqvjTCNXSAMSmhgvZcS4iqTw?=
 =?us-ascii?Q?LZAHyzGaLO3Nw0viqssTgIE/1BLqhxX7t3vBZ1C4jWzWezUPJ3SCgmjyPZgX?=
 =?us-ascii?Q?GBP8V3PB91TDf29L8nbKnwxzA4+KvGOftuaG+5ib1J0Wok7ME6KA6jM+Ldxc?=
 =?us-ascii?Q?3Fa/dtSUvRk9pxoixB+CuVFQBz7PzGssc/3C60NDJ+5izYrKW9Q2xsJ5rN1M?=
 =?us-ascii?Q?Wel2+CZxWDUuzOeiXDnZyaqBpX1RTjqqVVxqDY/6jkVOgHYMyFlY1NdEFvT0?=
 =?us-ascii?Q?h4cy8tDj1/XDTnnjEliSyVvB+93gMShdxjcb15IP+vskxSVeqzYk1clwMZb1?=
 =?us-ascii?Q?h4jE+PBjruYU3YawKHlMdwCKD4Dob3RafjSA7nNn6L9ddpO+Ar5qV1jlkHbV?=
 =?us-ascii?Q?QKkg+T7Az68SMfrt1/AV4aT7ehXI6ksZ75MlkMpVZyhgnivpLdNRt+syeZRQ?=
 =?us-ascii?Q?fpZQGqJPwe0V3h5FPMP0j92bEtDXtiNgWMnToTEFEMKOg7CS3f8EP9IBZ2V/?=
 =?us-ascii?Q?5MnpZelJlLvXroF3ByvXhQ2tGi0vFbf4af+8sq7tCzEu+J60Ff5UaxJkBvXW?=
 =?us-ascii?Q?8yUzSRXOhBUsZlCtmMII0H7gkEWjF0m49TYhBCVRtflCq71Ci+VK8TYMOO83?=
 =?us-ascii?Q?8VdQs6USaMuofrMxTSA1W9pQQ9cyN6qGNZhm+KBikghrXY5Sw8kvv01wAbYu?=
 =?us-ascii?Q?MMHg8r12uvkpJaVaQYFEpeZsVKiKSamtzXRv7m/gdlkabEyXFWNGPjldLd6h?=
 =?us-ascii?Q?wZ02h2G3szZuGAV6lT2BIsdDeGGOEyHTsNoKKKESvKhd9f++SGurBFBunLT2?=
 =?us-ascii?Q?ZOMX4HAoalG0GdRt/duM5PrChYw7Bnwh2bTRDItoMGKYotG4puZObvjw2Rsq?=
 =?us-ascii?Q?E/O2Xx9mFUMZbmcT1KOTXedIAdGFGMy3yCotbkss0DZaoqrXAK+Y3NrNcd19?=
 =?us-ascii?Q?uSWWb2nw897Z2Ylu0v+yx53j+VPdXKVPNzNBxl1Qer9loijuavHwKxKfle3V?=
 =?us-ascii?Q?rkh06X9m9x0NQhNNF3L9H6rkOnnJqyDL5bOKffbK57mjqvHlB4/I4Ozu940y?=
 =?us-ascii?Q?WhFa8yKeaA=3D=3D?=
X-Exchange-RoutingPolicyChecked: Ighd6Ur84DSuqpOvJ6A0uh+lVGpNQrD+J1fnStwW7B0hHV6yiKuVbESSrFLYh53Yh1l8syz/tdVkzXGbNY2Ti88k4EJflnLS6+T6fNsktZhUXmVmKhYEqDlj6M4N/Lf/6Uh64NJzu8C90R03Py48NM5xgHU9u1zelM1TQkvaKCYc6nEiLauH5d2F1Hdl+md751Z4qrAzUPXIZXnxXB/1NGwWJ2bEOCZ7IuJocd71Uhgs1hwEAbJl/hmZnATVFW6E6wnHqA+Vb2xJoKoT0cIsDrnGu20h9NH8a1+0+sroE6U/3IK3tW8voPQugjEBkcaZfTVbD2LJ0fEukc+bR0FvMA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 603ddc55-bd2e-4564-616a-08decbe33211
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:39.2915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s6pRVIIN4pXmqV5T3BTRbwE495cM7Tz1bJSDbSeNF5ZSp5ptj+y54P53ujMT/rVr5dmBpWPRrg8CT0EnbnJWtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Rspamd-Queue-Id: 8AA3B69517C

Add intel_dp_link_caps_num_common_rates() to return the number of
supported link rates tracked by the link_caps module. This prepares for
tracking these capabilities internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 1 +
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f9c3d3561c417..84640c8394534 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1766,7 +1766,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
 		int link_bpp_x16 =
 			intel_dp_output_format_link_bpp_x16(pipe_config->output_format, bpp);
 
-		for (i = 0; i < intel_dp->num_common_rates; i++) {
+		for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
 			link_rate = intel_dp_common_rate(intel_dp, i);
 			if (link_rate < limits->min_rate ||
 			    link_rate > limits->max_rate)
@@ -1995,7 +1995,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 	int link_rate, lane_count;
 	int i;
 
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
+	for (i = 0; i < intel_dp_link_caps_num_common_rates(intel_dp->link.caps); i++) {
 		link_rate = intel_dp_common_rate(intel_dp, i);
 		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
 			continue;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 13f9bfd5d7bad..09b60a0cd6fbb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -67,6 +67,11 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
 }
 
+int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps)
+{
+	return link_caps->dp->num_common_rates;
+}
+
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps)
 {
 	struct intel_dp *intel_dp = link_caps->dp;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7333df6b82f97..3413f6f760453 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -15,6 +15,7 @@ int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_print_common_rates(struct intel_dp_link_caps *link_caps);
 
-- 
2.49.1

