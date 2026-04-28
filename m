Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJ+nLbWt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 658B848522E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA47B10EB94;
	Tue, 28 Apr 2026 12:53:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mjkYgxQe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AE410EB75;
 Tue, 28 Apr 2026 12:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380785; x=1808916785;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=YDOF78Jxucq4sRvQjwpKx6ggPB9BazGGjXbuMxm2GmY=;
 b=mjkYgxQe585MkAyxS/IbBSH2BWjWcISx1am9YYuVOPxM8EIBYVhG2vwu
 qwHYIzoWLdnxwHE3wu6l7ETP4LGQQgDQcSJ5f5aiI8iPwPGyq9CtveIv9
 I9W7CqioZCNNqg4TUv8K/Ehn1uxvvakK/em3r+IgglQINe7OM6S2SXRNb
 B5efn8arDSgU2DDNPATgJZiBGpNXuA8BrpjQR9FCKqCnumX/l3shuggZk
 8DUplIQo7OV2Qei0VPnJp8FtbT76ey3y6yvlkt5f+HWUD1WrnMCvXABtO
 Mw96cmpDo4ZNPtbJU8Jhv4ZTc4JwDnJEBJOWp8UCh2pqoBQbN92N7kia4 A==;
X-CSE-ConnectionGUID: o/soUdjOQsCuMe2N8gVtEw==
X-CSE-MsgGUID: cHTI/yfQT4SybYpdtmjaIQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398576"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398576"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:05 -0700
X-CSE-ConnectionGUID: /bTvYPASR5Gb0Fn+3F/K8Q==
X-CSE-MsgGUID: ijxlY58ASRu/jlbfj/ErIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911293"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:05 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:04 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Coybfy+c+q3/f8kb/rBbDNs34Q1WwKpTyqY+ANlyqUWst1+j1g2ByWjONKrBpVq1V3F49GamwMQ+RPaQ1+vp5h/O79cqu1yjvJZWb3GcWLGXHZ23kCD5SPqYjsjMgJIKmPhYVm0jwXoCv8Ob27b/7bQM83v1obTIXaJI7oTK1LGOVz0ih/vmq/4/hjY5088RjgCDrk4mtaDmWYXm6/wIsjJNW+BQpq2JV4wwJ8GJQS022C/LnDl7Ro62oNOf/nt2VniprN/qMBwxBgVRFDEJg3JaavYrfFEma+i0Sb4eUJ2KlzNOtoI5n2I8OXlTFm2EbfVdf3zecq8sVwRBi5jeRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=joQBQkJOotgHhh/3Vnr2fMsfWK6F6EsL2TILNICNcAc=;
 b=X8mBZtobrz9uJ11nFskKp/dP4SvjYo7D/XlI/w5N0+f6Up+0WwBmBJu2N+5Lkn6wFaP8E2pov8gM6k/rXh5CHbAAHeSploGPgUpm0aXz5ZYXugvQN8sWm2qYMwzyzkzstT4A+EcoMpIFU0Jd/GjjSLRFQroEjbs7CMrKB7Mrw2vPFSo7n2115VI43+kDgGY8B5I3JxGuTIjJkYwPVg+LjHxJ3zrsKqcwCOfjKIm7VqYwWvngtrmW1/JhrJaNi96t046Ja/lr5VSdfn15OEOHxkaRKWarfLEd/aYaQdx743RHnNXs2u9iFouDNuqONHDj4k40Zs+zZWtRCLaMhD1SBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 013/108] drm/i915/dp_link_training: Clamp sequential link
 training failure counter
Date: Tue, 28 Apr 2026 15:50:54 +0300
Message-ID: <20260428125233.1664668-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 75a90bdc-4fd2-4512-b70c-08dea5251506
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Ua5kfe4HGOVrL2UUZOooH2vamDvJrw+Gg8x5h7tPmJl9VuaxXs43GlNPJMSsPRnsBhNymKx0YSFNp2dcXx71f8SiJI4j1XSuAegFrZVWkYHYriWK6KalC1/AjY3s51xshJdPc9iBPkojwGeH6vOmNP4Lo8Fb5bM85Pubg1O6w8+sSRkMQLCMaq+D8b5MzH7HcZrfSvEXlKqGoq1AesrlGVBhLGUgLdwd7nt0KD5RC6U0KAVyJLTpfCX2kP5HLNayzctHW11lExg38eDog3MlDF6L1K+wCD/EbzaDOq9xNaIXp0kUth86nw/Dk6X/7XxeYN71jJvImCKdSOKfj1ytb4ZH1dXBA6dCv+Nv18OdW6Xhrq75UT47SxwBQ+pKMq0OBp6xHV0hBN2xr8/z4tuesd1nurYxN8lM3GRoT0AANxLvpISjSA6yEdvvtGvbsYhx20a3mVG+CyoIWLrb8DEBfMN39FFlK9yHupoSCoViARa87Y2YjHNz0y+WYLhdT84q6LgWr0mlwwpWRbpYPG02u0Yk/suprZjynKMS5BZYQ5tl/aWoaR9i7SU1gmH4/uAq0rXuwIHk3ktXQCSzJdyuyDoNVhhVJj7T90pxsmCI+j8rITdyVyL/o0TElUWEeedy4NNF1HamrW9bVDo7zZe8feVf0ArMjPpJzUk081QYYd8vF04dq0E24753W8D5t1nYU0Fi1HYYC6oXmgBRiUPE2EUGF4nI0U7dGXL1GHlZLz4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jLDryeWbTjUFD7ss7n+sYdxYbGmMRnHRtn7O+2dQ8Cv2iFRqTEsPBj3m5/FQ?=
 =?us-ascii?Q?IraRhB9UAY2mFsY0rretAGzLgjiHXYzOcWVXLmN2x+B1hqHJxZLt3gz5iojq?=
 =?us-ascii?Q?hA5ftvVS+ooLa21FJYScC2+tKhMC5/+Ob2CeCJvUq10APTrqGjyxC6/XK9ow?=
 =?us-ascii?Q?C6BMq+4Wcwea0cwwGSxmXgAnrelw8uSZrAx/3fCBF+DDuRsPAeoJFW4YFUbc?=
 =?us-ascii?Q?RRq76saWvkRoOnK0VRN+udq+NpRgLsvgni0oGU5Oj5JK9VH1tHzizugSA7+P?=
 =?us-ascii?Q?fP77HWlQ64r+Xs1DU6mQR5R9KkbIDtwYwdYoDoQshYQpcoQQ3bUeU7oICQbf?=
 =?us-ascii?Q?y0tixFroVmx7oHF1wJCo8V/2ch6voA40GBHxtcQTdLDb5G6HoFMjvUU76Pxr?=
 =?us-ascii?Q?ZWWC2+OOQob4O+TXcNjHijX8UzvsvwWGCL5pk8ImHK1XojoUKMHvrQ/BPHhN?=
 =?us-ascii?Q?99fzKJ43kmLpfCOo1pKA7+bFdPQ5G5XYvMH/XfjDch7XX3PvkxiZ8LFbc1q8?=
 =?us-ascii?Q?I7LlqwUlSZ1blWiyp7FuvYjrBbQ2zvu1SnE+eqy2vMuYs3PGl9X0QtP2PMLC?=
 =?us-ascii?Q?936BgFVf0NGaIj/6T05ote/RovM9l7U0CWwse7iRo6oVIYOSVEqUIx5bGSq6?=
 =?us-ascii?Q?CNURLVdhwmVBAv2ZgN+7QWUi9u3GXD5Kh91PvY4jwy9TYr95oSOFgd7gIFDX?=
 =?us-ascii?Q?c1itBZoRu2040YWAzLCQPhDgFNcpqwZHLBHboE0EcJZZIRA+XEFipFkSKqkG?=
 =?us-ascii?Q?0e3HTH+DLbo1MWCIPEZsxXfwpcNHsyK+2St0XHG1UmvY5I2mTj6UItFkEeMr?=
 =?us-ascii?Q?aR6JlYpozfm3F1ZmU7WEuhrhCW3CDKM1EsPtgbjUMA9Zk1+05+6xnJoeeB7m?=
 =?us-ascii?Q?YhpxfcxETpbQzlZUDytJ91qrUc4tvUI4K4cqsZWbSVuE9/XUb927GzXlF5ea?=
 =?us-ascii?Q?YW1T2fh2h3IId5AcXfs6AScBIpt9rZA5XC4ELxWHVGFM70mVmtWaPGR5FJKd?=
 =?us-ascii?Q?x+g6dtFDxcB/4efB+2T/fl2+idFsYGULSwE13+Au5jGiJyoCj26B+vQtyJ9t?=
 =?us-ascii?Q?nGuczedO/hJgO2Zmxk7S38Le5oUgDgUs920DAOfxgN/1CaVmzJ4GO2Q02wji?=
 =?us-ascii?Q?D1Y4wF3TLz+s44FQ7VvAo62kq1QEUSiqDCs6l2X7710Va7CTG/zk5zEMIe6m?=
 =?us-ascii?Q?4as9HT7GfH/Bp/w4uyycrfxRq4hNRp7A+vqLCNNgBsweYXeg7Uz8U6T8wewI?=
 =?us-ascii?Q?zStPKQwI3zMTXwSin9oDUUWScm/bDIQjRBHEvVa6igveAfNKpvwxz0kNpc7H?=
 =?us-ascii?Q?z8ruVFOEUaDU4x8pQu1DLxAx9TalDBk+baDi+YlZ4z80u9gYtH9hQ+YhAQqU?=
 =?us-ascii?Q?zdIYfA8pD4HBJLmFMusf96nGTGila5PSkl5jEHl8G1OaeQR6SUeT8+HUECCO?=
 =?us-ascii?Q?nudKDiutriZGtCelzKstgOxvfzAgWlkgJnP7nYXh6Z9l5A2n3HpdoJslkmP0?=
 =?us-ascii?Q?esqoDKH9S5qSiyKu9bfrYE+OmYHSEw8zxFotqOjEUqn4T9LrCWiHeE91puGw?=
 =?us-ascii?Q?2tSfXU9S0RUWcOvCan+6Z8KahyHSY6yQecBBcCGvIKcJLKZgnyJePaYek5KX?=
 =?us-ascii?Q?WvQQgxmC4MUB/MBwiDZ1obRPa/RI/VhDbUo61tU06i0k+NlRxxMDVLlgQR6i?=
 =?us-ascii?Q?zLaHYJuhI9sOnIH2rqaLvO/kKPpm9r1izlclNm7ScUGIVpM2R2ZeNxFsEDTs?=
 =?us-ascii?Q?mtRNtLfXuA=3D=3D?=
X-Exchange-RoutingPolicyChecked: ZeaYnK2AK2F4yyJgvu+8hzZyOC43EF9UgccX+9lWLrdqw6zhRS6wbQcuCgi+LmsBFKUypjvVXYPQS+vxgriH3sEikf1lWEfAl2pt6WqFU4Cm53DuN94vO7q+VM0aEc7UCJ2LgYc9tBBiKk06UyJXV4NqOt+KGbO1Pei6ULzDCCHtFV5fbYHxzCIMqmfvOyUazJkDwRb9gJYTBgfnuI9leCVmBXzzldb/wrWX//+q0Gmezt6iqy4/4lTQuLH5vpXryO3bOk8v9AUWSchPoSrw88nkB0Fa7g3HAXyuqvX055Bs38TxL5id1rBvCHonbi3Tfg2FDarW6FI1dLGq530ZmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 75a90bdc-4fd2-4512-b70c-08dea5251506
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:02.2651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qV7inpnfvZhFhFaA6EyfiO6AdHkIQXuwgg4XAGeyd1/ufUj4aAeSpU964lBmk/zOjSKYSjYA1toqKNQdh/Sz5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: 658B848522E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Clamp link_training->seq_train_failures to MAX_SEQ_TRAIN_FAILURES to
avoid - an unlikely - overflow. This is ok, because the code only makes
a distinction between the cases where the counter is below or at the
limit.

This also prepares for replacing the counter with an enum in a follow-up
change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 54f506bbd6d1d..f58bce3e0a1d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1816,7 +1816,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	link_training->seq_train_failures++;
+	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
+		link_training->seq_train_failures++;
 
 	/*
 	 * Ignore the link failure in CI
-- 
2.49.1

