Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KC3rHtqjb2n5DgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:48:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA01C46AF0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 16:48:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8575D10E122;
	Tue, 20 Jan 2026 15:48:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f0o6RKuq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0808F10E122
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 15:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768924119; x=1800460119;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=qCp2EAboQZ5PkLB/u0Ejpi1z8BpbqqBde9nB5bnrf4w=;
 b=f0o6RKuqNYJAHxuuby7cBiDA1+iv/srPJyEeqyV9j+jEoPdI1UMjN0ij
 UcuvyVQVR1rlLlRhi1w8ksyLLkjXh68EWXTSxXkThFmm+qahY5+t8GD3i
 2L65iqqtu4Rk55U44RgXnLfyAHAvbp6maFeT/5Oa49Y2FmFZCsjowV1kb
 60NOHKerJmXIPIPPAZXEir9KSDeqO6nAdTvmI5wKQ0ZmrddfZudP6L7av
 I7N0NcMWatiG3pDINTDE2tz/wxO/laOlapU8cpYMfZ15U+fHLyldoC6dh
 NqCT+xWgUMogJZ026yb8XqUsvKfTvtLvSrZi5xOodl6w771WtMk4FuHCj g==;
X-CSE-ConnectionGUID: l2dzIC06QkmRgpNIlX5IZg==
X-CSE-MsgGUID: m3KeOOqDS26H6RHtyndpXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="80856928"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="80856928"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:48:39 -0800
X-CSE-ConnectionGUID: tUl6vFXvQU6k33JJhTsC/Q==
X-CSE-MsgGUID: /iXHFuwmTYaG3zbqD/cv2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="211164153"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 07:48:39 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:48:37 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 07:48:37 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 07:48:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vuMmhvSz2f8AM0zMab9h15rsrHzqTPAimE+q8erEB3GiSceA9WWEXCjUApKm7BrXydf6NqPYxu4bliUqIsIFFQSvG3DKQas9o75t68Wn2AHUCsl61Ce4WB/QskfkJ5/J2xy7W4jd7DR7qahMF5PHGCDpVqdElYO17iB1m09XjrWu2wM1us1TB+ImfsmYf2kOxMWqm0JgXm/PkTPz1i+If1MbKiXyCLsIKJhm5TFV0hHatFe65wA/XmJ0wPyxXvRZbLPoHTm2V3c60fFkOS2AUxkHZpeGPcGq4I8vQPGV05y7cYru7j0MYGqQUC0Usb20S8mEvLw9FeNhhS9Tv111FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZkDOGpqU5zceX7sCjgUZWMAtca+5pkUVyqjNMIlUi3Q=;
 b=EV1SzwBpOMA6AelrKNTP3dAvJLV91ZThkrlXR6sEXnwcd3YSIydVQ4BMFeDquq4ngp7ImK65Jj/eFlSUBfVOVpBaJXdUMgxGbQiVPxiuql13gy3TZyPJOESFSs3HxlpAbW+O0wTr+2SvU/DR10laWDYPc/W06/9TCcZUolIvXsjXC4n8llvONkP19JEyNK2yVV0IzNvvxisJBO/MGNNk1yDGGR+P2KUF/d3PPU/FeQAnbhsvWh7RUJTnF1GBDjBycdh8vvIjqgnNmt59YoTqsE/93XmNT/TpCRLBfYEl20Qvcgcfdla1nndK03hYex464v8Y8Ll0Lzxw0zQLreHATQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH0PR11MB5205.namprd11.prod.outlook.com (2603:10b6:510:3d::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Tue, 20 Jan
 2026 15:48:34 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9542.008; Tue, 20 Jan 2026
 15:48:34 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v6 0/2] Miscellaneous fixes in drm code
Date: Tue, 20 Jan 2026 15:48:22 +0000
Message-ID: <20260120154824.1864085-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH0PR11MB5205:EE_
X-MS-Office365-Filtering-Correlation-Id: bdfd2270-c8f0-4364-e567-08de583b5e2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WVWqazRxsO7fqaMeqo+Zix4ipFrXwocUQgNiXeGHookYadiWImKzKM4PQfWI?=
 =?us-ascii?Q?/KQaYA+saQuRIF5XQMahsocRn8pva8ToY1SOJ46IkONSEgy1M1tjC7JpZteG?=
 =?us-ascii?Q?+wGR2N2473H9J0HDTaAGJ8c842JheyCUL3XpRl6nHAGiA9+6ROY3uns8ML91?=
 =?us-ascii?Q?WIet5E7MD7CKRMEFC0tz0KBOjDDdLLJNscVpRWHuTuoNqykpRR0gREDYA142?=
 =?us-ascii?Q?YJHaNw9rDQK3x8gGzUOVODxMaQgjqbOT8fcwLrqcFYkrGO4k4Y+c6cqtCnZ1?=
 =?us-ascii?Q?iJYW1NTtcZTFhOul4RxGWZK7rCYFS7zHT+jpWjsokE6pWMMIFXeVp8Iqq7bx?=
 =?us-ascii?Q?FMsqreil/4p70b6+jryuhMhwUnSoaN1XRSSD6AoM3WmOL4RwRFD8n99V8Lhs?=
 =?us-ascii?Q?Xu+Fphem2fjd8RDRg7vYr4kb7jTgtLJZb6S8DJCrPf1K8diHJU4toaKPpjNF?=
 =?us-ascii?Q?XbaESUUesJEf+xSylVYGMbujOZVJHTTWaf4cK2i0oljdqwiC7mVFT1uF1oN4?=
 =?us-ascii?Q?Oc4lqTzoM96ZMmGiAYSuVvoT6fwW2AWkTCV0zjoKSD6DV5g9QWpEH0p4AlVA?=
 =?us-ascii?Q?fWNPkRIqjKnpPs/tIXiJaeRrEL94i9eECzxN9n8bL/H8UAn5B9aIiMPtXIcT?=
 =?us-ascii?Q?JfR7f9O0V/mztILjq2pPbcltqDfxHjZMBk/4tpcfwNZ2ARnOTOqa1BRcA7sY?=
 =?us-ascii?Q?g3YeXFTIBKJOMuBEAI5BFhi4iIedgBIWArkmWwo56J7hOqDo2n1/8gBeNXpr?=
 =?us-ascii?Q?9yFjzsCEteuQgNp4RvCHLngY4viPtiX3+AF47wed57gvZia1xLqPyz2FC+LK?=
 =?us-ascii?Q?WyIheW8krlZd7Yj1ju/xsAo+XCI0O+7bTjFr/qeRjBIB9Sfk3rJ2eit5AQev?=
 =?us-ascii?Q?5dbjM2lg+BlqQtM9qVpqDd1pzwOq7mZ+2BS9/EngmHkneMN79bijxlgplyI7?=
 =?us-ascii?Q?sNW5PmyZufOqyCHKCTfzrYT/XIkvX4F3bO2j1RBP4Ho0xJkrYPMzde0lSqb3?=
 =?us-ascii?Q?L/9nqfxQmiZtTPOBsboUp7TWzo+Pme7edpdHiM5OX3cmO2Tus+YwYGPCr5+J?=
 =?us-ascii?Q?mLclNo8ql0WGriYqFdOVUmnKvZoTUb1YHlfjyDTIZRJPD4y36lq+e0RvyRNY?=
 =?us-ascii?Q?kq8UTZWdBb9ofYi+ECixW1GP8krBs2DRJJAaNpa8JzoBioSaT5pmnY2EJEaO?=
 =?us-ascii?Q?vCFNSBlM8MHmQPrjoMvleT7Mwe2NQo7XGRyDgddlHbDJyp74Aq/xSZOVl1UO?=
 =?us-ascii?Q?7sUymAdtb4QPpVR2nZDc2NSlU5+PzQYI3jwJaGRI+EymazOKFrVA3qwjO1Xc?=
 =?us-ascii?Q?xZovG1p1QQpe+Sij46igKTQj+dtftEsVtxfpP1xgO0LDTtVKT7qXMJZnGInt?=
 =?us-ascii?Q?ahZceStcSnSn0LYj90y9MlSB3D1JolhJAF433ambSC+CPn0NYIJLD2smqtTP?=
 =?us-ascii?Q?Eytx4GIDjvJn280NE6aK633tR5fAiR0Kx0a6EPIibfFCKyuvkMlKdFikYbiz?=
 =?us-ascii?Q?w9w1ECNXp+lE+V3ygCfpfNEjOP8/AK36ikx310tgEF13TSY3MzSCqtLdsmsl?=
 =?us-ascii?Q?TjjwsavDUw8heKHL/H8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6ysnAqzgD25PSmAGoEbJm+LtMft1MZM0/GhYYFo+d/YHNsBF49koRZqbwXi3?=
 =?us-ascii?Q?jkiZ4H51BgztdO0ZUcz0D4dckvWOvH291iyiQ/cjwcwrYCYE1hOY0Y1tS979?=
 =?us-ascii?Q?3hAkoeSFnJl5JyjSA1xDp1o3u5FphZp8nxndUvPYtXuLbsf9RS/eVM8lip47?=
 =?us-ascii?Q?3r1ky2ylE1JSCOtmO6d84fpmSBfw1sehYNdRsyim+4W0THRWAKpcwBTS0dW4?=
 =?us-ascii?Q?ZOHfyDNMdLyyddtxI12cDZiZu+7wnrkdkQISgcBC3rtyUVwjmuuAsUn0f4+D?=
 =?us-ascii?Q?ofUNxWHhnT4pVnJvXyJp6TkS2hNvUZ+HVCxwdNxnG5DNUjfdr3hw6bLSv9C2?=
 =?us-ascii?Q?nH03SwUrp4FeUxtcAUg2FTQZYDL11FpR5nhSISvN2HzwvtAY8+bkIXzTlRoa?=
 =?us-ascii?Q?EXq+h1ZQqIiw/dOY/0jMVLtbuAA2zcDC9xvXJLkbo58ekGtgTcU5E/L0kwbS?=
 =?us-ascii?Q?6HvM7/WXRn2iYQWsH799YMCRkoKkFhfBmk1f5J46Ba9iGZDL1qMvjOlLCz9t?=
 =?us-ascii?Q?MMEKWcVmi7MLafD+5isORtjQbRSiu2R0XBeGJcNo/AmDGc1Bew7CoLJdaBUG?=
 =?us-ascii?Q?XJgkkFdFHAhpRx/noTsdfE0akK00CH44Wd9ejft8mNVvlrFiVr6b3afw9wmN?=
 =?us-ascii?Q?v3hcUDCZ+OnXjJr4DtnpHr1min1nqgJs4S0g8K7C2mHlk8PqZpGA4ybNOJTr?=
 =?us-ascii?Q?yV8dirCJkuLjQLDMV5hOESeQv98UyEFwKlUWGmHkzWyyt4CZoTCCw3uwqJKm?=
 =?us-ascii?Q?SxDNxK9etUT6VQvVs8BHWAAoLAV4dLc5YHMICTAhvoXEjslXg0viQvGk9Lv1?=
 =?us-ascii?Q?WNR7XzZilU6TWwt9AGt60eVSaNgYG2VD/luG2HAhIqwTNWtde0rchCF9mCd1?=
 =?us-ascii?Q?KBDx+sZF6CXSovvcISMflWRMbtwvqAdb3BS3/WZGt9LfSVnQIJjWx4oKs22t?=
 =?us-ascii?Q?jQzyDoZWSnXUoGzZFw1hqoYdcVT96cvLL6bDKBHUNroFlannq20zGwswpa6o?=
 =?us-ascii?Q?+m5fimvnOSPHV9neF2wDjs2uHcpmxQUksMjabHlOvpCHmTJboxx20NBZpnZe?=
 =?us-ascii?Q?u5vfGjp0qx3mAGc9NlXmlwBNJMrbAWwoye0oUGxL8dTQSUYzs2YKpfoLEjgd?=
 =?us-ascii?Q?BbfvrwrH+BLXnhQdGnqTh/xrREXwmLSnHdRB5dqcvQTKZAzzqC+Pyk2ORELF?=
 =?us-ascii?Q?CZcBAWBd3NnCOEcBh9JSXeLUROHgVxhyAGA/icwrSrCWTq6EuYnDrNubbPjN?=
 =?us-ascii?Q?Q3BI6vQQRftr64HIVtAvtFZjdZIMUR9Lh692tpV/fh42kIPinfZI4WUFD2/y?=
 =?us-ascii?Q?q6qkUGAp3biBeHdFA9h3A/FrPH098Xw9FgG+irNafz0Q1mKYQgkBRLvJ4MDR?=
 =?us-ascii?Q?emNK3SXJgiLr9T5GnTlUgxplPNSXG+jXwMZEv1+8UUigjrpHtqpM7MIwRXOz?=
 =?us-ascii?Q?qd1lVy4xx4T2Bqc5od+pV8arvs1FUBLZaO8N2i+RWmEauhrbFM+dsVGT0c1A?=
 =?us-ascii?Q?8weBbq5xpqicIAsiLaCQOMD8hzXbYv/Zqh7JAkRXxjJE2snBDHVQnRTR6jEs?=
 =?us-ascii?Q?QH+VDaHkRFsQ7Vr2B82ll+xr4z2UcRo9bhPA+3orqpH1Ol09KxwdVxTF2Tzq?=
 =?us-ascii?Q?K1xL8B3VSwDOBxhHHhh0lBQgkL5SN4TxBZIvOCNoQnYv9HAS5bqZlI2oezX0?=
 =?us-ascii?Q?yny/LfCGv68ouJ6MPSL7iNY/wDNN6PM7nE9mAyIMU1OxEQBpOseACYPIjEfw?=
 =?us-ascii?Q?pLrvGt0EDcvOMoBKbHGHHe1j09oIRuU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdfd2270-c8f0-4364-e567-08de583b5e2d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2026 15:48:34.3200 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ykprGciYPkhJvt+8I0J0q/Z2ArzlTIsKWZkX+8O91T2wq/BGCmboGEKig54s/lB37XZd9Jeik9weGMBCv3qPAAEYO89EDEIKk4wZsEAxApQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5205
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: DA01C46AF0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

v6 (Jani Nikula):
 * remove the last patch from the series;

v5 (Jani Nikula):
 * split first two patches;

v4:
 * Rebase and remove unnecessary patches.

v3:
 * Change the casts in the last patch in the series.

v2 (Jani Nikula):
 * Remove i915 patches from drm series.
 * Split the last patch into 3 separate changes.

Krzysztof Karas (2):
  drm: Warn before division by 0 would occur
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()

 drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.34.1

