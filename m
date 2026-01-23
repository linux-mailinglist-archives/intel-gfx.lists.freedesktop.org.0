Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OOrYHZ1Vc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:03:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD8874C2B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 12:03:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735FE10EABD;
	Fri, 23 Jan 2026 11:03:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBe/umoA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 696A010EAB4;
 Fri, 23 Jan 2026 11:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769166234; x=1800702234;
 h=date:message-id:from:to:cc:subject:
 content-transfer-encoding:references:in-reply-to: mime-version;
 bh=YozyytlgeaaE35tS5px+UUCjhr80AtVUwsN11EUf87s=;
 b=gBe/umoANvXHlATu/quzqJ0RbO8Q6y79D4ieQ8ANnJbIiznKzAZNDh6l
 K0O0Fh0l1ZZOdnLPyGd/L5AUG+cwTAcmEjx01b3EjS0Sl6x1HIOQUBazc
 +43BlYvmXDA9/62c0xqlrp4O5dB+t3A5ZydvAB7xHnEPwyXqhACbLSzJB
 9dgKI1pp/CPmpR8UHqNs1oIzzT64VasGvIhlkPHsNJ0k8NgjN6yi1mxMx
 Pr6EBsleX7U8IjP02Sz9EhCjKZs+Xnb5kL+jPvmTiuogeJ2EIcSHWhXAL
 PZjAZ9di8hRDAc84EMHa1gwjm8ZmhAuQ+M9zY4d5S/mXOEXQL/qszlNnV Q==;
X-CSE-ConnectionGUID: 636rmh/KS62nlIQ4O6bLVA==
X-CSE-MsgGUID: 2iJOA0o0STiwCDwgvmfxQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="74050440"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="74050440"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:03:54 -0800
X-CSE-ConnectionGUID: ciUsQLMATTO6bLj7L9B9Tg==
X-CSE-MsgGUID: B7rmogLDTNWRPERi5uLd4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211868804"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 03:03:53 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:03:53 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 03:03:53 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 03:03:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wegqaTVGLLpTGwNbN3cviCJ2lovbVjkFBanxpExEt/9nAE9a1Ig9xkrJd5xuy3yt8eBQDwVdccK9ccfCr8aPH2NiyO6pI2InaV5cCLO/So4HbDuXKpCRBcstxDxgdhJqcD5yd8ie3mYc8AquPaqNRPiBJ6+66CUh370JSNiVCsLtlqYpLIhCEjhP3q08rgj4Iuo4kExM9SUWZZpLiOGTWJMjCFxIqizEeTwOxY0i5QkyVAqyazgkdv2hYkVgcbGoSo/ldI1qmE8K5aSGKeKFsIi6ZCLlqmv4Wnx7EwRHQvh9W+BCaOrnLJE9z5iFwUv/Ws0TmeIkthJARyy5f2cxwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7hcCumjM4oK/YbjBhv4xzlZJt4W6L8gTUd9asXHbLhI=;
 b=FocLexMDfBxp4wNckc9lSCz9buuCW30dpttWx7DQsU4PmOG0XSEgAoyDh9r8Q6RYaIBqr56Po/LpXKqPsPBDbuNdKL5acSvDC/eepUn97ze2xSYM1Z/YybN2xr8fXPn6pqCe7TPsL4TxH88bMoZChsU9ZOP2iW18m4IGCMnX0sfXzgeB4tqLi2/TsxFLi6pu98sLf0CxE5zLR4lVvVruX36ulN90NNNTiOWBKmzKZ+qRnLFxQkykvUVeX0X3UlnKLpxUQ/hhLCuhw1SOC2TYW+VmKuMJmjVpNmcNepTKMNBN/BSbS3Y+iAj/M9XVyCA1RQl+H7fT5CVP9P1MeXN3Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6797.namprd11.prod.outlook.com (2603:10b6:806:263::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 11:03:50 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 11:03:50 +0000
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 12:03:45 +0100
Message-ID: <DFVX33TUJM19.WAFS6MCXBOJR@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t 7/7] lib/igt_device_scan: Print GPU upstream port
 parent/child relations
Content-Transfer-Encoding: quoted-printable
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-16-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260121114656.1970684-16-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA0P291CA0004.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::14) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6797:EE_
X-MS-Office365-Filtering-Correlation-Id: b955f425-ab85-4dec-aaea-08de5a6f16df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rnhoa0JYdUNjYjZmamFsZC9ETmFuL0ZJUEk4VEoxOFJGR0hIQTFVM3dxWTJT?=
 =?utf-8?B?b1lsNWsvNVd1Mm1zM0FQMnMwSFVnaXpiR0ZPOFBNTkZEMGNIUXRCd3ZteFo4?=
 =?utf-8?B?RXI4bzhxOWpzN043YzllTmNnNWVCbFZjMUJkNElGR3h1NklEZFMzRlNMamM2?=
 =?utf-8?B?dzJ6V2ZHYnVRMkJmNkplTmFHVG41NVJSUmhWa0pQZ1hhTWFoNGc3S0xiSytp?=
 =?utf-8?B?aTIzR0VoZ0lCUXNGdUVZVEduQVo2QVdWNFlaeFpXUVY2dTRIQURmWmVBdkZY?=
 =?utf-8?B?SjRXQzFOV2FqQjEvUk04S2ZIdlVGUk02ZHNLSVhGRFlmbm5lMi9RM1EwaGZV?=
 =?utf-8?B?LzhQNXNiMzI3eFJzUkh0QXM3ZTBMNEZoWUNZdmMvdEdHd2xlYlpNSWhLbU9G?=
 =?utf-8?B?Z0ZQVEowRmFZYk4zMk03NXZqcWxzaFRSc1hKWHBXUzBSV1VHdzNGM3ZWckpp?=
 =?utf-8?B?MGNGc3cyMFpBTGVGNGlGa2NjMlJzakJWdHlSbnlYcHhIekJXampsZ1E2b2Qx?=
 =?utf-8?B?Y1J6ZVhSSVVRKzA1S25UQ0JFdm82ajNJUzM4bnBJMWdLNWtyYjZ1VTdUUHd1?=
 =?utf-8?B?VWROWDZNd1ljZ2JoelpzdHVqdFZPVlUzTmdvMEdISUFGRDAyNzV6bndhbmNT?=
 =?utf-8?B?bTB6dHpMMThRaDdVczYxdS9oSmFFeHZrb1F6YmNrcnNxOS9ua1RIV2o3cGkx?=
 =?utf-8?B?bmp6UDIxUytOaDI2bGNWd1BNUkJkMmh1S1JycXpYK0s4YklkdmFiZGVlWURQ?=
 =?utf-8?B?R3h3Y0NEdDNyUG9CL2xYTVRzT3hJN3RnM2JmR2htYlltUDNTUnF4QmJMSjZu?=
 =?utf-8?B?NlgrMVN0aENYbW1rb3hHWWUxMmloWERBdEIxcEZqem5VdWM5VkFEOHNaZzEz?=
 =?utf-8?B?b29ZdHFpRWprQVNFV0RVUzRFNDFqVXdSeWFlSXZBRlV3bGlJMjhod3Q1c2hu?=
 =?utf-8?B?Nnd0L0ozWVJwT0pmb1BCMVhxQk5NaENxdTlSVUlRSGtiZE1zaW0xdWhRU2Q3?=
 =?utf-8?B?KzlQNlBzZUJVSjBoK0RYYjk5OS9iUm1CRUwvc04xYTJtMmpkeGlRSEFrbnNk?=
 =?utf-8?B?OFArYTVmU0NiNzRvUG5ORkJ0dnprT3c2Rk1SaUIrajlhUFgyRXY0T0NHSndU?=
 =?utf-8?B?UnVXRUF6eXd6WlNEckxlUXZVVWJ0ZHFGUE5UWXVXdDh6WXkwaVloQlZMQXhI?=
 =?utf-8?B?Z1NibXRjVnRqUkdnMkd2VWZPSjJDTFNZTGFvYTExMVlQSlpWL2U5NXZJYy8v?=
 =?utf-8?B?QUIwSjdidzNEb1ZsRmRxTmVYcFRoZHNMZUNDZlZ6djhMMC9KakRpZHphV2Qw?=
 =?utf-8?B?eFloQ2NJMnQrR2FvUngrajVpbEFSQlhGakZNNHZ4THhyMFJUSnpKOFRNa25w?=
 =?utf-8?B?dStkdVI3VTlSRFQ2dWdlc0Jxc1I5M09lNDA4ZFNqVjFPMkVUaWNCR3dJNG9x?=
 =?utf-8?B?MVA4aExSRDZxQWIySkNWR0tPaFJ2Tmd5Ui83WjB3TzRHenhCVDdTL28wQUVu?=
 =?utf-8?B?Y1FCQi9neTY5UjRkbm1ZTnhBL1prb295STNySngxcXZoS2p3cm5UNDRXVFdW?=
 =?utf-8?B?Q2hMUlZ5N1h6ck9KdVNINTZGbnlHKzJ5VU9ydkM5ZDZMSHl4ZGlUNldCOThP?=
 =?utf-8?B?K0cxZmhIY3N0cGxjY3BWV2Q5ZzZReU01ckhJcnV4ZzRxaFFGMXRJN1FvNldp?=
 =?utf-8?B?YnJ2R0NFQmZMbVU4UDBKemVnSWtIckE1eC8rTURjVkJDTUs4U0hjOGwrbWNJ?=
 =?utf-8?B?WVNFVGRxZlA2dUlzZlVDM3FUS3J6YldxVi9rUTdMa3ZZSVN1bjFDM0xndVN6?=
 =?utf-8?B?MjBUcGJsN3R1RGZYZkVRQ2tCTXgxRnJDa2NaWUJ4ZVVZdWtpeEFNeXRsbUJk?=
 =?utf-8?B?K1pzVmhmVFIrd0dtNFhGSjdobVc3ZzR0Q2ZOb28xbmtKZVVNcmVHMExaVDVw?=
 =?utf-8?B?NUcvOUszYVBEbUhSbUtpVEsvd1pIVGRHZFM5WXI1NnVqN3NuSHdxNHg5azJC?=
 =?utf-8?B?R2NtRGprazBkSUpkV1g0SE4xaWFBOXZOWjhGdXFJOW5qQzFNc24zNHphRWg0?=
 =?utf-8?B?VlY0RWk3S2p0RzQ1MjExdE1yVjhXUzBrS1NDTkYwNksrenpYRHZqT1dPVkVx?=
 =?utf-8?Q?6GTo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTJ1MVk5eFRBMmhIV1dsSzRjMWVxL0JGUmx6Kzc2ZnRLbDNNZnU1dlp3TWtB?=
 =?utf-8?B?aWp6aXJmTUgwclkvWmFOeGlBbklBekp4U3NhamRMWlFjT3NZcmgxRkhWa2tG?=
 =?utf-8?B?M1NuR0JTRmswdWtNWFY5bkxqNjlSYjZsR3podWVFOE1WeVY3NDFvaExrVVR2?=
 =?utf-8?B?VVV5dDV5SjJmV2s4bUpNNXp6RXhxaDMvM1F6dVRBR0pwclFGdmd3VjN6L0dl?=
 =?utf-8?B?YjlDQTE0cEtPY0ovajFpRDNNd0RqRzJ2NVg2cDk0dU5xaXNjdXE2YmU5YnJS?=
 =?utf-8?B?TlBYdTJVWmNpUUxzZStEWWtZaGVVNFpJTUZFQmdXdVAxQkwvcVdzOVUvY09v?=
 =?utf-8?B?SHlZdDFlQ29oUStuTmFPdCtXanZSZ0F1U21mRXQvdEU2VTlTRHIvdXFEUjRY?=
 =?utf-8?B?ZER4Nno4LytrZWpnTGtiOEFrVDJ0NTZGUDBBNkJMMEt1TzYzUmdGbWxIbmwx?=
 =?utf-8?B?dWorZ09STUoyTzRJTWR6SXp0bWZYOExBbXhOVnA2NS94VkRQQk54bW9PcnJC?=
 =?utf-8?B?ajVTKzNyNFB5QWRJbUdiSjArR0g5dGJUMUZ4NFlMUWhoMWJwZ2dEWGFBZGV4?=
 =?utf-8?B?WW1NTFVCZ2FjNlFUODdmdGlsMmpwYVJKQ3B1NWdqY2ZWUXBTOUh5MHd4WkVY?=
 =?utf-8?B?RDFuMXVxOEJHcCtqcnF2ZEZNMlFWSVRRemxMa2NwejlpQXJneTVqcGlLUUlR?=
 =?utf-8?B?TnFSNDRtZ2lCZWZpSVJ2SnJTZHpBY3IvYWJyTWI4Mk5mVVlUeXJkNkk3OUtk?=
 =?utf-8?B?VEU0OWttOTYrTnpkK3F5ekh5U0ovY3VHZ3VONnVzN25odXZKcWlFV29JM041?=
 =?utf-8?B?QXVQYkRmOEpaN3NTNncyRVZrd0hjbkVWSEhqOWp5cEoyQW4rZUxwbEdnWXBn?=
 =?utf-8?B?dG9ZMmZTRzQ0b0krb1ljZDNZVlBHazMxVDhzNlZSVHBmZDRSZWw0RTN6YzY0?=
 =?utf-8?B?cHMxVXZlUjdneUZrZDMxZFVkYXRRdjdBejFGTkgvalZObHovR0p4OTg5VlR5?=
 =?utf-8?B?YitRaXg0VDIxcFdVcTZxYkYwMFdGWGhiRnFjY2NCWVUwRWhPcFk5SDVWNWRL?=
 =?utf-8?B?Z0Zob0xUUGpwZkF0T2dSaXdLU2pzNE5WeVB5dG80dDEvRU5nL0diSXcrLzNl?=
 =?utf-8?B?cFR6UWxmYUNjMFVjSjlON1FJWTQwc0Mza3hlSjBnbkhWU29mdktPS25YckhH?=
 =?utf-8?B?NGV6Zzh3YVo0Y3Nma3NzWFh3bm42OGIrMjlWTjFEdm9aaTFjaHRaY0RtUm9U?=
 =?utf-8?B?TC82L2hla3Y0TXdPVnFlT25MY1JjSW41S2s2UnZvVFlnT0ppbnFIZ0ZXUVY3?=
 =?utf-8?B?MmVJL3lNY1E3VGt6WU5XNVZ2ZUppQVdWNjI3OExZak15RXdjZ2gvMlRwTktp?=
 =?utf-8?B?MkVjeVlhbGxtWmNHMUhPRFRQd2cxYkQ2WFN1MHFKZGd5ekpMVWJZYnpGUFYx?=
 =?utf-8?B?R2luZWdjcGN1VEJraWFSckpUSGo3Sk5XU2FuUDRDTDRPWVR1K3JucExFT0hh?=
 =?utf-8?B?V2FuV3RZL1dQK3B3bit0L0NoQmF6WEJkbFptSWdSMkcxRTBjVkdIRzNJZDVU?=
 =?utf-8?B?dUFLdEcxL0s1akVjWUJnbEphaVRvakZCYUdUejR3NDhTeFNRdmRGV0dpRC93?=
 =?utf-8?B?d0k0Qmg4RzBSR0tOUUx0bFRuTG1OUGc0aElFRjJMMGwzeFFXNEtrTmxzZElB?=
 =?utf-8?B?eSt4SWJiUG9FcTE5SVZQTzYvL0VWcjB1cnNJTVVaYm9qMERRVDdpa1FsRHJ1?=
 =?utf-8?B?T1FkRmJPaDZkUk1yL1ZpU1U5YXVYMmpkVWwyZEhmdXFWY2xMUVgrY1Zybmtj?=
 =?utf-8?B?MEJuT2pWRHd2c0swdWw2VDNuYjgxSkZudkJ3ektFNCt4QVZOc3NsWWVLdGhi?=
 =?utf-8?B?aW9XaThvNE02Ti9OOW9aeVBXVnIxS3FPcGhhc09qUmQzam9xaGwxUy9PREJS?=
 =?utf-8?B?c3FCSDM5UDAvRXdqMnVoeFQzc2d5TkpGV0lVYzlITUx5ODlIbnl5TWdOMTdZ?=
 =?utf-8?B?VjNFR05teDJ2ZmJnRUFRVTF3WWthazFCV29UY1UrdXdwSmMxUFQ1d0FBd29z?=
 =?utf-8?B?OHN3VnBWOHgwbHhZRUtWVjUxeGQ5UytseHdDcndnajNUVHNIZWw1eTV2WW1C?=
 =?utf-8?B?dlBJbVpYcWRFTXd6elZzMEJvV1NFZUdrT1pDWG5Ody93NjUrRXJUV1did1V4?=
 =?utf-8?B?OTdTb21KWTI4ZklqeDRYdUN4M0Eya3ZBaDZ5bmlZbnh4MGxVTUIvaFBaeVpi?=
 =?utf-8?B?Tzg4R1U4OEI0NU5Fd29ZYjN0WEd2QjlScEc5c2lGeitaRE0zZjBtcnRpaTAx?=
 =?utf-8?B?NVREaGU5WWZwdTlUNzVidjRCTmNVMzZDQktuT0pqRDErN0RmNWxGMkdyOFhh?=
 =?utf-8?Q?RyxaOy0rS+SeVq38=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b955f425-ab85-4dec-aaea-08de5a6f16df
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 11:03:50.5676 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZ0b1fr9hjMjB5sdqe9rWpjaXCQSlLQ8csGQngTDQJK682ItJrfP70yEODeTQ5Am8C45Ii1+nkr0rx1rLgZMF8k8ocTc4d0ABtSdX+jPNS0=
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: EBD8874C2B
X-Rspamd-Action: no action

Hi Janusz,

On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
> In a short listing, information about PCI parents of DRM devices, as well
> as about DRM children of PCI GPU devices is now printed.  In a long
> listing in turn, the latter is also printed.  Apply a similar approach to
> PCIe bridge upstream ports: print information about their PCI GPU childre=
n
> and also their codenames in both formats, and inform about upstream ports
> of PCIe bridges found on PCI discrete GPU cards in the short format.
>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index e86da001a9..69ea8d2eaf 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -250,6 +250,8 @@ struct igt_device {
>  	char *codename; /* For grouping by codename */
>  	enum dev_type dev_type; /* For grouping by integrated/discrete */
> =20
> +	char *pci_gpu; /* Filled for upstream bridge ports */
> +
>  	struct igt_list_head link;
>  };
> =20
> @@ -1058,6 +1060,9 @@ static void update_or_add_parent(struct udev *udev,
>  	igt_assert(bridge_idev);
> =20
>  	bridge_idev->dev_type =3D DEVTYPE_BRIDGE;
> +	bridge_idev->pci_gpu =3D parent_idev->pci_slot_name;
> +	bridge_idev->codename =3D parent_idev->codename;
> +	parent_idev->parent =3D bridge_idev;
I haven=E2=80=99t checked the release process myself. Have you verified tha=
t freeing this
memory won=E2=80=99t lead to any problems?
 (Maybe use strdup??)

--=20
Best regards,
Sebastian

