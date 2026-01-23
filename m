Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oBNcNmxVc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:03:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F07774BF5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE93610EABC;
	Fri, 23 Jan 2026 11:03:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IxAKDxRI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6F710EAAF;
 Fri, 23 Jan 2026 11:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769166185; x=1800702185;
 h=date:message-id:to:cc:subject:from:
 content-transfer-encoding:references:in-reply-to: mime-version;
 bh=e6KQQE2DnaqkzAjTvZ5vf5du2Omr2E4ot7I5KBKJnEg=;
 b=IxAKDxRIGtymk3usQErnNA2zRy097wIzxdAiBe0QkUcfhItd08XyuE0A
 RQeZuRK4A9V6jIkecWu1Lb42s+kxstHrqKpIBj5CKShgWCeRRteLKQia7
 j8aCpAKpaD8VC7ATWGSwn4rG+1i2MQhBszktDRzoPnC6B2IPY4nhX9uqY
 j4RzrcW7bg0bC+D9JY44fRDAA/ZvV9CzPRTuX7bsXO7VXs3tkdlEwzJye
 baac0xlDb6L3xhIaI4RiciWvyIQbkFTSjq8DsBni8rOhwe1FaLgCRmFuC
 2Acag4bSQQT/O8tnyiUg9H915lnI2Bf7V0TTuX/IuRV9qef2v4gIqGfGr w==;
X-CSE-ConnectionGUID: trk4ajK5R5OIp7cG5N+AcQ==
X-CSE-MsgGUID: ylYbtC5ET16MNTSLB5ZFgA==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="70507731"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70507731"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:03:05 -0800
X-CSE-ConnectionGUID: DE/FBk9fRVS1BVXTRWCJnw==
X-CSE-MsgGUID: W/nZRXcuRqSoKKllUhvboA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207029120"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:03:05 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:03:03 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:03:03 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:03:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NTEw086a9HMtrmpBcLZhX19CYATMHSA2qU/v64f9xfujnfqhQMMUdlNknNphIhV7QPKimffT2vByBtKQ4LjWkOHOP9OI4QD+6qyYemrRS8Km39wYLlsjOKWkmvE8mo2LTnVK+M72B4t0Gcf8bwe06TqEzU4WoEGLXKv0xXc3Mx2rc45muTfuwcdQPpAJRgdGn8r1WEaDeaidVER7kD3BkiiBR9m19Nz+ycPKDkPatR2W/GMopPBIDWXhyvc//9Zzukvy9G5Ws1Rhdb6E5M0Mg++r+tEfnrSE/vm+U+9+mmwDojSOvpUbxtCE6K7IAFKONaxOaWGulV80BNKFJ8GQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nriox2dGTPc7gr1NSZtw5L5MaJqg1T2ZRMIOqT0Lz1E=;
 b=VgGM1cCZ2zFQIHgMcLDtymHqwwcHup9g0Xw8B7/Mnvt/CLnb3QPlf4bstCF0xnazngXJ1xtShtn4/85a3LwbJeHVcddFCorXFa+wJQC7Hln9OUqj1cJ30boQRk5Z4QTMAIOC58eJmhUMUqN2eDfn7N9cHtSXySja7swl9MNbINKCdEA2EIJsy+ilteOJv/zlYq7reKVuiljxHl5rgVHyO4xcjRKytBPDr1e08PmYBNHgfAn2jBbIMzgE2kFryRy3DCOfAzQiEyJ7vAlbNq+vUSnS4/XcyTCTK3R0082fLiPqfn3OGRvXmKrLBEREb6tgODdIQrhTTqI/qWNzRHExDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:03:01 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:03:01 +0000
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:02:55 +0100
Message-ID: <DFVX2H5WKAJC.250O5YKJ6SJWI@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 4/7] lib/igt_device_scan: List PCIe bridge ports
 after their children
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-13-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260121114656.1970684-13-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0025.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::6) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f964d13-3ee5-4952-75d2-08de5a6ef9a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2dNNVBNdVBKZTBVN0xweUFLVEdadldmcGtld1VmK1g1aFZSa3VtL2ZvcUVt?=
 =?utf-8?B?NzkyTEJTN1QwMGVGbVAxcklmTXdLa1dSY1BxeFJ6WTdqSTZlZmQyTk0zN3ZG?=
 =?utf-8?B?eThYcEFNbTl1TzFDb0I4bE9RUCt3eUJKWENTcXFnSE5yK0hnMTFJQVh4cG5U?=
 =?utf-8?B?OEdud2ROSjA2VHNMdXNpUWRiN0cvOGhNT2kxdEpIVi9iV1R3QTBIbnBUajhF?=
 =?utf-8?B?eEJmY05mTll1bjZxK1FkampTOGxzVnB4UmpYZFVhOUErT0tmcVorY0tFVlFI?=
 =?utf-8?B?NDk0MnRLNURlSGxGdzlESjU3OXh3M29kc3Z4eU1SVVVkZVA0Z1Exc0tPZDNO?=
 =?utf-8?B?ZStQVytkZEo1RXdIOVBYbHZScHNXWHpOT3RnWElCOVlTYVIxYkRET3o4ZmVk?=
 =?utf-8?B?NUVFd3lPZjVBRFRzdGFqbnVzSGFwN1hraWwvOUdnd2FOcmRTcnJhUFNaWUhz?=
 =?utf-8?B?bndlc3N1QVpGZklTNXJEWlNQTnNaeVVmSlNmK3czTFJNUlhXaDI5WlAvRjZQ?=
 =?utf-8?B?V3lNM1NLem9iWGt4WXdPTkNVeDJxWXVoWUJVd2lqVzZuYTgzd2VGcDFEMjhG?=
 =?utf-8?B?TXBUS0RxTXQweU1McHhMbzZjLzhCSGE5TzZEUlRyUVZSY0JZUXpGM1NNZDZq?=
 =?utf-8?B?TmpNVEwrSitBejNYNndqV0FGdUhvRzA3eVNCSGVleFdWQ1Q5Q1htMytmd1lq?=
 =?utf-8?B?ZGtCV0pacDcxY0FkWjQ4UE92VE5jdVZ0dFpCYlFKZW40djc2VE8xMUtuTzY3?=
 =?utf-8?B?bXhrQlZ0VmNTcjgzdkQzcjNHbUlSNFhxcWx4ZlFFM2tGQXM0dThYRHNJMnho?=
 =?utf-8?B?WTc0dnoyZDJZK2U4aE41SE1rMFNOeDBTRmgyWWk4Z0xDUGlrU1IvYUhScUls?=
 =?utf-8?B?NW5HV2dxMTExWjV6YnFVa0dLNGtDNms0MW54dUIwcFNFYnkwcnRvNjY3WHBS?=
 =?utf-8?B?Z2J2UjdKblM4S3psUFdoZ3dsakhQMFg0UTFXUnUrUWNsMnFlclFHY2NQendX?=
 =?utf-8?B?Sk1ueDJPVEZxdjJxOUdMRXBLNGZZWEVMNTM1RnVIMlJPMzRnQlZUTmE1M1Mv?=
 =?utf-8?B?ekhFdWVFSmtFM1JtZlVQUGY4czVGNEM4N3lwRzcraU52ejh4V3NWekNxOGZS?=
 =?utf-8?B?SGtpRGVOd1BFaEwyRytYemI1ZkYxZTNqQktJMkJ0dXcvM1lVOVUwUDdlV2Zi?=
 =?utf-8?B?RGlyQ2RtbzZkZ2thbzZ5bDdnNjQ3RVpDOHdiaHgwWEZRMTI1T1hrUGxzYlBz?=
 =?utf-8?B?ZWl3K050MktYclc2bTJveHhFaTBuZzgzT2o0ejQ1NWlGYW84V042eGJIRExJ?=
 =?utf-8?B?bm0rUllqN0JaNWdQd2F4dGdEQ0diS1RXQWxtU1cva2RvMDcvdnNpSm9SSFdi?=
 =?utf-8?B?dDFXZkJTc1R3aGNhL3VxWGtEV3hkN0NMelA0dDFaUXZQUkhEb2tkUUhzQVB6?=
 =?utf-8?B?UzlpQS9zMHd2WWo3cEY0ZzFvQi8vYm1UVDZTVUczNy9sQittYWhOa2NDb0xa?=
 =?utf-8?B?cXJhcmtFbmxrUXNMOTk4VWdPWGswZmFKbkhIaHFqZkt5Q3M5NlpjbHNERVVL?=
 =?utf-8?B?MnRHRXMwWGpvWjZNdXlTWW5LWTR4YXM2amRoM3NWYWRHeEkrRlBmNldJMVJv?=
 =?utf-8?B?N29RWngrK3NwUmUzcHJIT3JTMmo5ZXV4RTgwcVdvanowakgrV2dKNTVJWU1r?=
 =?utf-8?B?Uy84OFB3ZXNvUEV3YzE1VkdKWkx4SGJHNlUzWDZGQVBQT1M0WGRQMVhWYmdG?=
 =?utf-8?B?NGZ3cEFRRkl2OHBKaVZjZ0hxdWVTeTQrS0I1TkV2UE9ITG16bVdoWDdEblRB?=
 =?utf-8?B?SU8zZDFENC9jQTdRQ2cwd2VxcnEvY3NuaDczblBndDZSdzBGL1JWZkQxaytu?=
 =?utf-8?B?Yzh1YnlqanhZaHhEMEw4WFUwOXJKa3ZOcFV3bzNxaHBWWmc2U2RCeEl1bVQy?=
 =?utf-8?B?ellWY0VPZXVoNkxOZmFnUEhIYWcwU0FScy9EcmNIVnVHOVFDdkxpc3paakhQ?=
 =?utf-8?B?RWVIOGJKZGR4Z0VMQk5lY2pvOXh3Qy8zRTZnVUtENkEyNGV6c1lRK0dIWUlY?=
 =?utf-8?B?cFdlZm1rQnRzVDU1R0Vxd0FmbzBVVG04Y2VzcEI4YnRLb043anc1RTFKZkVi?=
 =?utf-8?Q?h5AI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTgzYjBTdXY1TEY0U2tzenp2bXRib3BQdkJZSTZwT3UrSDJDZVZpaDFGVGhi?=
 =?utf-8?B?eDFYbWE0NjFhdzA2SXhwT3l1MlI5eHNmSWY1a0Y1RnVYM3EvdkpJd0lzK3BH?=
 =?utf-8?B?NVB6RWc2MHFQTVBnQkg1RWlIUnZheTlDMHNEeHlKTWR2bjVGcGI0b090bFhV?=
 =?utf-8?B?TjdCblhPK05mUXRUNnFKemlmb0N5M0hLSjBXVmUzSFhRV1U4SS9jTWx4aEp1?=
 =?utf-8?B?bVdkckZINXBNbG9jbU1Md3dPQm1aTzg1QjIzQTNvWFJtbnl0MzBzWlpzMjlU?=
 =?utf-8?B?MFRZaVBHeVJPdFlMRFM5cEp2TS9YMWpENm96VTJBTjNUQ04vWkNRckhheTNB?=
 =?utf-8?B?OUg0RGluUFlTUGpnV0JIeFdoemdzei8wb0U3d0hSaUZzMHBhMHVseEN1Y3B5?=
 =?utf-8?B?NmkzWi91R3RSYnk2SEJodlN5VEVQUlY3dzZnTTFVcW55SVdGakR6MGdoUXpz?=
 =?utf-8?B?OWVKTUpOSXFvUXdZMnl6L2krTm04ZXg4QnUyb2hBZ3FNem0xR0owLy9PdCsy?=
 =?utf-8?B?MlEwZ2lOSTVucTlxeWhwb0gxa2xhM3NQNVU4WWV6bnp4RVUwVWI4LzdmUXRj?=
 =?utf-8?B?cElHeE9Ud1I2L0VySlNaMzNHcWxlQjBFNjY5dUZoR2tON1NrUm5mcVBST3NZ?=
 =?utf-8?B?V2txa0l4aDcxOEZkTXZjaWMzcnM3NUFoYmxkQ2xPckd3U3U4b2JFZHJZQk8v?=
 =?utf-8?B?amlVYlVjVGcxbmdGSzRkRi9QU3NBT3RLU0dsNXQrUU9lbE5WMkJsUGdOZXhj?=
 =?utf-8?B?a3YyeThEZkk5akVhMGxlQmNKeUZLdkFuMGxvSVlWd3lCeEpHWGp5SGUyMWxJ?=
 =?utf-8?B?M1YvTzBXQ1dEK00ra1dkTnBKbi9iNVhrbjBkaVppazlkNW1WUkJVK25TZ05q?=
 =?utf-8?B?Lzh1czRmSlVYWUZvU1JWYUgvYXNWMFVDcUw1K21tRnhyYnExRytZRDA4R0pG?=
 =?utf-8?B?Ym9PM1JqM21idHFSdTJ3aFJQYnBUN0E5WEhaNlFGQ1NxU1lLbFJTbjZWZkUy?=
 =?utf-8?B?RmVIdWhzdXBpTEtGVFZoU1NnVW1LYXRRMnFPODJKcE00SjlRYWE0bWZiZEhG?=
 =?utf-8?B?NDhPQ3R5aFJhS2kwQzJaaUJzZERiWXJIREdKWm5GQXZTVkZ4aFpXSWJ0cXhQ?=
 =?utf-8?B?ZHdhTExCNERGS3A0NHl5bXZqYk0xd0krWGRtbnMvcjNuVlBrQWhuWUdSTnNh?=
 =?utf-8?B?VUV5bUxiMWFEVzQveVoyNDlpU1NwcFBOZG50Zlo1ZWJtMW1yc0FtQmFZd09t?=
 =?utf-8?B?ckhoNWFKVHNzMWZmNDFUYU9OQnNuVFZuMno1OGhxNmZPT3JORFA3MGkzQll6?=
 =?utf-8?B?S0lkTDZ2WEtueFpJZ2krTFByT0pESXZ4dEw1MysvZmFuRnZBRUNPRFp4Tkox?=
 =?utf-8?B?bHY3QWM5aGdERWlmZmt3SGEyNyszdU10WHpPTUZ5dmNjUWpKeC8weFNuNWw5?=
 =?utf-8?B?U3FUODl6MVhXNVN6bHlXUmN2bXY0aWtpYjJrUEFpakFOa0g4U0p0Z3hrTEUw?=
 =?utf-8?B?NHVLSXZnWHRuWUIrem1GeThVRjFlaENCcDlaSmx3bHp1VkhjTnQxQ29LbnZ1?=
 =?utf-8?B?ZUlDTGlyZEVwcnRJTHRYZkdDMVYydkhKSFptaXluYXJRMHNDcGlIRFRLWEU5?=
 =?utf-8?B?cmo1UnhBbnkvbW45QlNjMm0xSDhSQ3d2NXR5OUhqWmFIeHRyaXRVTy9rM015?=
 =?utf-8?B?di9GWnI3SU9WNHhsbTc1R0R0MU01UEdvcHpySkVGUXYrUkpnUSt2amh1VHNB?=
 =?utf-8?B?dEdZNnlaQnhPZEtUOFM4VnNHM2VGbTMwNGtudyszcGc3SlhkTlhOVG9qdC95?=
 =?utf-8?B?SFdaMHJiRUhYQytUNkdXQmNDL091cnk2UGJ6MFJuRjMrTlQrQ0loRS8yc0tN?=
 =?utf-8?B?emFhUjNpWDZUaE16Ty8vcHBpRWp0ZG1Pd2orbDhBTjlQdThCZ0F0cXNvM0Nx?=
 =?utf-8?B?WGpBcEVhcUw4UXNBc3V5WlgreFVKZ01Rb2p6aGRGSUR2M3F1S1dyNndNVHBP?=
 =?utf-8?B?VFJkbVRBNGNoaVpwdUl5dnRibkhLY1N4Z25BNVZPc3lUcVlTQm9LaFA4NDJz?=
 =?utf-8?B?dTNrU3pDSEtlZnZ2L202WnhMNkZ5a0s0NXRUdFkzeS80dGRRT2F2TENJK2VG?=
 =?utf-8?B?aTFnUGE1TFppWXBrVHhoNG8xdnY1YkhoN3NDQWl0TUE2NEVhOGxZd3ZmbWpx?=
 =?utf-8?B?dGpwRFVoZ0krdWVzbFpZcGZsdE9NdjJhdmRSRUFNdUFUNytQWU9UVHVkM0hP?=
 =?utf-8?B?ZVU0T0Z3cWFPcHlOVzNTSklqLzBKQmlJcDRRLzRsWC9acWx5elRtcHBGTUZC?=
 =?utf-8?B?SGFjamNSV21tYmlZSFRqZE9OMklrNUZlb3hPRXd6VEtpanlIbFJJcE92VmFM?=
 =?utf-8?Q?1FCGggbYougchdcw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f964d13-3ee5-4952-75d2-08de5a6ef9a4
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:03:01.5254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0s8hEwzw3H00pNO2skQQkCCN4cMOtvQXKltYLo0Anau3YIxcSnVoOHEOj9ugu26H7Zmma5xGI2ApaECpQXR8cymfR6W/5qAPeg82oW0sy5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6797
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5F07774BF5
X-Rspamd-Action: no action

On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> Current device sorting algorithm positions PCIe bridge upstream ports
> between DRM and PCI devices of their GPU children.  Listing those two not
> interleaved with bridge ports, and the ports following their PCI GPU
> devices, seems more clear.  Go for it.
>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index 34c7a8131b..61f507a06d 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -23,6 +23,7 @@
>   */
> =20
>  #include "drmtest.h"
> +#include "igt_aux.h"
>  #include "igt_core.h"
>  #include "igt_device_scan.h"
>  #include "igt_list.h"
> @@ -1061,6 +1062,7 @@ static struct igt_device *duplicate_device(struct i=
gt_device *dev) {
>  static int devs_compare(const void *a, const void *b)
>  {
>  	struct igt_device *dev1, *dev2;
> +	unsigned int len1, len2;
>  	int ret;
> =20
>  	dev1 =3D *(struct igt_device **) a;
> @@ -1069,6 +1071,12 @@ static int devs_compare(const void *a, const void =
*b)
>  	if (ret)
>  		return ret;
> =20
> +	len1 =3D strlen(dev1->syspath);
> +	len2 =3D strlen(dev2->syspath);
> +
> +	if (len1 !=3D len2 && !strncmp(dev1->syspath, dev2->syspath, min(len1, =
len2)))
> +		return len2 - len1;
> +
>  	return strcmp(dev1->syspath, dev2->syspath);
>  }
> =20
Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
--=20
Best regards,
Sebastian

