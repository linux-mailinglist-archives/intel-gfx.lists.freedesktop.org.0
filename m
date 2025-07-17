Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 197FAB08D25
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 14:39:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BFE710E80A;
	Thu, 17 Jul 2025 12:39:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bQcIDpua";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A61BD10E80A
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 12:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752755955; x=1784291955;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aeYCyQpd0z4GWRpRIY6vUbuH/jN3wS2Ujw02RDM8MX4=;
 b=bQcIDpuaL+s4DiixvuDj46HxKTBNdCxM4yU6q/1Cu4WuRr2mFKXJxX9l
 VjAOq18DEjr+hlKUXuW1dhT5kxS3eI/8uUSloxsqR4KLEaohswjxhWXBz
 KcB5tEJsDMNn8NddEkI89xAwQ/sRw/rThWXRycHV59B8Oj35gAcJejdmg
 Bi0FAke1NFX5ucBWO69TXGHUQ8nClsva9cXHNnJa3vQ528Z1Z4tBQGZZt
 R53/pQvmn79eRoN+u3nShVw9qjjRkCqjcaup/rdk6DHH+Vxs2tS9S7xes
 pGfcDEw4iXLiMIVXp5dYzq3MMZ6OPf0pHO1Lp2hBTLMk3MEcXJQoTN9Kb Q==;
X-CSE-ConnectionGUID: hEC+DQYNQZysPZzOvf1wgQ==
X-CSE-MsgGUID: N2s/2GUETuyJ323nVbNlZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66098790"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="66098790"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:39:14 -0700
X-CSE-ConnectionGUID: GkEKr9aeRtmcBQmbv+MaEw==
X-CSE-MsgGUID: 8PZ3k/0zQ7+2WPvDgd1jpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="157153924"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:39:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:39:15 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 05:39:15 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.78)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:39:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mgOI6RdYSCMd+Ilk8C/6lH48u8fa+f9WQS00K/ZX+6/sXPjKm88BDJf9PAcN09xN+lPHY1w+biP6zAL7FJ998CzFgp/ASca/tLZ88OJ1wwP/x19KUCsb/4FioRFp0y+s2PhaUzNoKOYauu9c6KNs4X2GeR/i0KRUCh9pK840t8HaRMiUfxnYdm2uR2dFj27I+ddA+Ua2mWOR/riEynnRo0gkbbwQtbid7fUSnvfH4KA0MLLPQW9BnTPZa2a9fR6Ew588HbaytNpVgaRPGsvGVgzpS3mXIHjgXRFX4ce1mDtwJZYg35EAQEvGfOTUMWutoVqYmcrTxlhSuPRSRiPCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jiFtA/0BcpubaRTttHLHjIaTT4P2JQBcQf5N4aLYrYk=;
 b=Z+rysHipOOE/1lOo59Y92gxLJTQMZtKJ0Of1byDGVN+ldU08xLpA7BULkl+Ej3tDeQyR0lBtMv+9lFJDBCbiBrBnNP1TqgCf+DUJFMx2ZRpWGg6hHb7/EGLKSZoui1z01gmfYav0zrUczt0FHuZBAjZiLU1Ab0EEB7741GkeauK1Umr6rQFson67iTTvvA3XC+V627FplQi5hT+iepy4jJYT+gTTJxYUu2YTJAnKCjIvL8WRYc0pagd9SfrM7G9vMnGP9sYeyyHUbNrEcQ+tzrGWqI+Ne82W9SpP+R+okvO+uz4EWsKFyao0UpEeedK1fQs5f03itHkWW0F5aLZ/9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 12:39:01 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Thu, 17 Jul 2025
 12:39:01 +0000
Date: Thu, 17 Jul 2025 12:38:56 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 3/3] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
Message-ID: <20250717123824.676605-4-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA0P291CA0008.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::24) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CO1PR11MB4914:EE_
X-MS-Office365-Filtering-Correlation-Id: f59f8184-e6f2-4000-e78a-08ddc52ee808
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXBsRDJpM1k4N0MrTnNUdHd4Zm9XUXpSQ3VjcjkvMjFnS1dvdkdSSnFJNlhQ?=
 =?utf-8?B?R3ZaREZ2cnpvMm90TkFRK2hIMktJR1h2ekxjMExPU1hOZDlvQVZBbTdSaWI5?=
 =?utf-8?B?VjhMOU15TVZTT2J4d20vZDJRSlU3eC80RnptZTJRUnAzWGFyTUIzZkJray9S?=
 =?utf-8?B?eDFyT1ZtY1JaNFZpemdWTzFFZE5KVUpVZktXbXdpK3JkTDlkcXpGNldSaWRw?=
 =?utf-8?B?dmtCa2FrcFZvbFdaSzBrbU1vWnJXcEhkZ2dOTVA5bGkzNzhGVFFydFBGbXhu?=
 =?utf-8?B?REFqdVZaeVdTMHVrY0tKNXp4VE01TGJMYjU2Q1VPV21DZmthWWY0M2hkRmlt?=
 =?utf-8?B?c2Q1NG4vejM5Ty9zMHVmMjFwZFZmQTJuS3VNa0JuR0FmbmhJWFdlUHhvaWpi?=
 =?utf-8?B?Qm9CeFVtcTQxY0hqWmczS0NvMzRoL0w5aVJudFkyUWpnSU9rNms4bWcvajdH?=
 =?utf-8?B?Q2VMVlRUb0dncUFLcGJ1M08rRzFQNnhqbmxLZVpQSG1CRmVwVXNGcno2NmUv?=
 =?utf-8?B?WTVjKzluYUMwdTlQU1phUTNvaFo0aUF4SmtnYXU0QXZvaHl1RkxXMlJ0dXI3?=
 =?utf-8?B?UFFZd1VyRy9KRFZOTWhLV3lSMDI5MUswcVN6akF1MmwzVnBkRzh5NmNSeEdU?=
 =?utf-8?B?R1NwN2hqMGk5N09CbFpFYi9EZElyMmZ0MDNLMDRZS1hnMUNBeGNNS3Y1SVpB?=
 =?utf-8?B?VzlDbDhmUnVhcStrZmM3bk1uZm8zVlp6ZVNUMkdpTkc4UjhLNkorNVFSdlhH?=
 =?utf-8?B?aENTNnRQSHB2YXZqUXpJRzJ5THd4MExFOHcxWFRlaUVYQ2RNTU1uTWJwWGtV?=
 =?utf-8?B?a2RNVFhrMXBEM2M3NGp1SC9YMzFFMEczM2Fsa0tDVm9kV004eXpjYlZUcVZn?=
 =?utf-8?B?Mk5jNndMSjlMOTFxTll3UnpMeThPazgyc0twS3ZtRDRsU2VzY3dzaEluUG5N?=
 =?utf-8?B?NlM5VlZVZmJyVGY5aVc5bE9sbExvY0E1TlpkdExLVXV2bWZFSlFyaTJkL0FG?=
 =?utf-8?B?SFU1WklwOFVVTHhRc2gyZmtaQUJXR1dlcWlNcURiQmxhOEZzKzRBWHdmUW9J?=
 =?utf-8?B?VDFiaFFhOVQ3VWhwSDIrK3JmN3ZSbFlqdXJGbFJGdDlOOVpHaHJGcWxDdlhB?=
 =?utf-8?B?WE0rVGNQQ25NM2M0S2NQSzloMUhyN3hrUHdhYlpSVi9uSTZQUUdHRHArTmhM?=
 =?utf-8?B?KzdUNmpsbi9hL0xYVk5BNUdUbUNTNkVhNU1wM0NZM2o4KzU0SjJrS2NXRGJC?=
 =?utf-8?B?TjhsNklCR3liL3RvYTY1MDdzY1REWmRDQldBT0lKK3VrdjBLSk16blJZRXAw?=
 =?utf-8?B?L2hQTWRFVnNXeHJkZmg2eWpxc01hcDBDdWJzWDlSbUZaTVBMOVJncDh0NmhS?=
 =?utf-8?B?RTBaMUliejZZMnFJM1VTbVk5UmQ0V05oKytCS2ZPd3pFd3VkWndtYVFmNFJv?=
 =?utf-8?B?N3ZvOGl4KzRSSzYyem5KZjdnZ21vUU1pSVdIbUViT1FYWWdreXEvRkc4Q0s2?=
 =?utf-8?B?bnpvZVRKd05vejl4V0EwckJPRHJLTlFMS1dyRG1COHdjTW1rVy80dldLbFp5?=
 =?utf-8?B?QWhqZ3g3Y28waC9uWHNpNyttMy9EZkpTTXVjZXpKMHFaOGh3c1RtNVFCSU9I?=
 =?utf-8?B?SXRwaEphRmY5cG9RdXUweTFoUmpjSzN3YVZaVitjOThCZEh5cVMzc0VwM0h4?=
 =?utf-8?B?L2Q0d0ZLdmhnWlZBZmlobHEvOStDdnFHcHdiZ0U3K1k3bzErZlBYVzVJZU9V?=
 =?utf-8?B?Z2YxdzlVUTBKQ3hidUxKSk0yTElnWWJINEVXMXN2ek9QU3hMbE40SmYrUUxN?=
 =?utf-8?B?QjNwWmVKQWk0Y0RmSXBja0J6eHBtOWhKVm9sTmxJMlFBNEQ2UmN4WDFib25y?=
 =?utf-8?B?cmlQUTI4bEQ1U2h2WHZ2Q2N5cG8xWE8vR2lmWVVpYnQwTGRjVzZ1RXU0WXZZ?=
 =?utf-8?Q?OpvYIedaLR4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qk92YldWejE4dnRNTk81RCtybjBYSHc5eG90YTU3MzRCdTA2UlpHQlJxUVVj?=
 =?utf-8?B?amNyU1lMYm5ya3pHeC9VQUwwTktZdHV2M2NSWS9ubzBKZEc4VmdLdkwwM0dv?=
 =?utf-8?B?Y0tjdzNIZ1d5bldoaElwMW0wMVVhT2Q3RGVOQzdaSnV6TXc2QVdTNkJEcy9r?=
 =?utf-8?B?MHdWYTNBSDRiYW9lTFRLUEJnRW9TcXErU3RMa2twNkZBTEFwbENRNmtQOTI4?=
 =?utf-8?B?ZUQ3VEVEcjQ3RU91RlB2YXo1Q0Qwb0RIaHhuQzRvVjN4WHlNajhhMkRGUVpX?=
 =?utf-8?B?WXBZeWNMUHVmWDVIQmJ4YUpNVUkvOFpiLy9YLy9Td1pOd2Z6MXBaNHYzVzJv?=
 =?utf-8?B?bnJnZ3YvL01kNlozekN5T3l6UjBrQkNnQitEZnFLQWJFQUdtZGVtUHhBckVv?=
 =?utf-8?B?UVoyVEM5TzFHQmk0RjU2UmNWeXgvVjVOaWIrYi9UNDFWMGxFSTdFdW1vdlV5?=
 =?utf-8?B?ektlV3ZEOXVMbENrejFKbnRPMUUzRGVxcEkxckh1eEV4dGhTc1cwbDdEMGsz?=
 =?utf-8?B?VU92Z3o1UW1yOFdzVDlKM1hIYlF3ZE1jVXY5YVQ3dVVybi9XMXdRcXdnNFBU?=
 =?utf-8?B?akExSlgrc1YwblRzYXhpNnowUW84VEdxZzB2Skhhc1B0S2kvVjZuSnpyMTdk?=
 =?utf-8?B?Um5NVkUvK2QxM09hcy92ZXRSZTEvUEZydnJlZFU1MTM1V3VkVkgvMVJMQlQ5?=
 =?utf-8?B?TGJFU284WWZ0Ni9ocjRxZlBwOHBycS9wY3lxaWxLQ0NzeW1MTmtrTGozdktz?=
 =?utf-8?B?anNWVjZrTDduSkRueUNadkhyT3pDalJYbkxnQ0F1emxqeVZjSFVKTXJrdnN6?=
 =?utf-8?B?NXB5Wi9NcFRNbVU1dWJRd3NSdUFrWVBUbUh1TzN5ZjUrbkFRZFFTZE8xMW9k?=
 =?utf-8?B?YmZIVkZLMk1JdWt1aTNBc01wenRCcDR1eGpOYy9QblBMTjZ3MEVndFFCTzBr?=
 =?utf-8?B?d3hyM0JzU29SM0M0Wk9wRit5cEdXbDNUb2daTHZJaXIvRktzOTVKMmYvWHl0?=
 =?utf-8?B?bFpCNU9LTHp4T3RESmQ2UEsvdVp6eUY0RG5rcE5XNjA1a0FZVklndm9JUE52?=
 =?utf-8?B?cHg5VGJodkprSWszaXl1bmk4ckcrZWx4YWpoUDF6aXJpL1BKUXA2Q1U2a093?=
 =?utf-8?B?OFFHTjRWWHlTMktVWHhzanNKOHdZaDA3OWFmcjdaekRNZkxab0t2bGVXT2ty?=
 =?utf-8?B?WTA3UktUMzBrYzhGVis5dDQ1WEVhcjhrcWhueE5xTXJleWQvWFVYUTdDYmpK?=
 =?utf-8?B?elRObm4yWE91dzVkOE5hY1ZBTFR6L2hLQ1VuazYxbVU3UStlNnBNT01QcUJM?=
 =?utf-8?B?c3ZxQm1DMlpuVVpveEVTK011dmh4U1IwcGYrU3BHRWgyT0pCaDJ2ZWZyUzZs?=
 =?utf-8?B?WXJMT0JUNUxvR1BWNll1NVR0RUdSMkNBUXZac2xCN2JqTUI0aFR4RmJ6VUJh?=
 =?utf-8?B?cTUwTy9RcXpYVG5icU1Yb05NMFRaZUhuYm5Md3RaMUpMck1jdVJNWDVOSnlC?=
 =?utf-8?B?WitKQnlsS1RRS2ozOWFnbzcwOVgwREpxVVA5MU1TVVV2RVR0UmhWcTFXcmY1?=
 =?utf-8?B?akJxMmJWSGIvdFc1TUMrNDBhbmN5TWZxamFKZ0JUTGUxK0dBOXZwd3RrUjNO?=
 =?utf-8?B?MW1QYVB0a1IyUGViV2x2ZHBEQURYVXVXcDZRSERXT2JsVjE2UXIwd3VLeURX?=
 =?utf-8?B?OUMzVkVoSkRVSCtZSWNKRk9tMm1SZjBiQlVJaTV6WjZQemhaQUdhMmt6ak11?=
 =?utf-8?B?ZFAvU0ZBdXdNMlIzUmk4UGhGUTRNdE5INGhmbUpJdDFyclE2b2dLY1NNNCtE?=
 =?utf-8?B?Qkg4VFRGVzdIbG9HTXVoVDBhYXVjRTR5NGdUcXY4QnhyUjV3MHlid2dKNEU4?=
 =?utf-8?B?T21JZ1pyaG1MdE5RVXU3QkNlTXpKZkZqTXhxZU9PWTdhTnJlS0kwbVZHT2Ry?=
 =?utf-8?B?a0hXMTBxOVhlNjgxSmV2b0pXVmZXbXhiRGhzU2o2dUJZNHIwcnorQkM1aW82?=
 =?utf-8?B?Nm9QVnZYVWFuRjgvM0xuTDdoR081OWRqc2RVNHpFbjczYlZHMmpyc0tkTWNm?=
 =?utf-8?B?Qko2dmltTFBjMTRmM0wzV083ZUU1N3VObFJZY2NkdXZPdksxOWhIUE5pL1o0?=
 =?utf-8?B?dFBvNGR2ZnNSMFBUNjgvZEU4ZHhMb2VTYU41R0ZFVG5UTmJiWDd5SGQ2ZmVE?=
 =?utf-8?B?Tnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f59f8184-e6f2-4000-e78a-08ddc52ee808
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 12:39:00.9891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F9UoiCEltZPleD71BzrYkwiXcLrcpWWGBOFjw5Gh0J7F59nEBwUwX8RIoGpOqE3Y4PB/riQMe5XRNEUYp27AqYKkrcnD9mePPYbbk3i3BqQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
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

The value 4095 is most likely intended to represent PAGE_SIZE - 1.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
v1 -> v2:
	- Resend, no changes.
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index e3ddceb7bd97..64d349ca7a89 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -397,7 +397,7 @@ eb_vma_misplaced(const struct drm_i915_gem_exec_object2 *entry,
 		return true;
 
 	if (!(flags & EXEC_OBJECT_SUPPORTS_48B_ADDRESS) &&
-	    (start + size + 4095) >> 32)
+	    (start + size + PAGE_SIZE - 1) >> 32)
 		return true;
 
 	if (flags & __EXEC_OBJECT_NEEDS_MAP &&
-- 
2.34.1

