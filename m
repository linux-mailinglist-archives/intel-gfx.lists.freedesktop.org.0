Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sLY3Fha6hWmOFgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 10:53:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95784FC408
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 10:53:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6C4F10E65A;
	Fri,  6 Feb 2026 09:53:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dswFEOA5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF1FD10E028;
 Fri,  6 Feb 2026 09:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770371602; x=1801907602;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=b6f2pX6bfJIG2A2KfdTkfQMhaLPcBdOj2GI3mXS5AE0=;
 b=dswFEOA5KwjwkJppqzbWHPkfdrrj1gCsJLMz6C48EV39BFDNLLEHIRdj
 uBGDKEx3BcsUNRAOP712N5aeOpVHu47FGQNbuNIVEpiIyhTcFGXfF03S/
 mXI655U0jURSUyUT+gqS7A/LPJVW2B0sAAS0CCLmeOZkNgZCnPWDzB5Tz
 CW0Gk3KK/R0cO2rXqSuNzev7dElF1YjnLZeBNT0FX4Mf7Kd9t1wQemsUi
 YqgHNMKOJWtLaMqn6N7eJ8IMkIirZydeEB/KsppnVrWWH7d5O6kAtJwUO
 gOdUIAQ4o3w20jC9nR/5TgS4H49FytAbifPogG1DmhOgzfdu9JlpKe1eq A==;
X-CSE-ConnectionGUID: WCiK1EprRzGVl4pgQbKGWA==
X-CSE-MsgGUID: EywNFGGpQVyq682X0o+iCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="75196256"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="75196256"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 01:53:22 -0800
X-CSE-ConnectionGUID: jYw3gYleSd6M6d0fv8AXGA==
X-CSE-MsgGUID: Xseb+k59QwuEJ3CoZ2b4yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210655351"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 01:53:21 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 01:53:20 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 6 Feb 2026 01:53:20 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.32)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 6 Feb 2026 01:53:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mIr2SX9BRDbllPNM3IqOUNSbIFasT0yzb0MNgWPFJb7g9CKaefLMZoRbDlSZeR3ZAoeQcHX6bmQxCbNDQrwPCFNzDEzefSy42JTy8MPdfAW+ScONqOKZAmOEJ5irYOunJKxiA6eXtr5g8QlYmb+K1Ce6Mv1wtzXHz3xpn/DgKMFlkJK4oXyesf6eVL5T0LWPgFJoHH994Xvowba19LyCrOXXPCjrnIXf2bLzMTmv6KeL/ZO6Ysdcf4veFmHgsCsg1Vl0hz5Qssvb2frdGBf8JumE2608Fk7j3t/jJtuyqGhcFs/VzFE7bgzYWXSJbUj5Y5j4xyDjWqnf0Fmi17Te2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TqtzKqkfpDMKeWGrpyfX7Fr0MFVgqU9JcYflKq/Od2c=;
 b=mQrB/Vx3+vyJez9STl+Jh7MAqjAm++h8TciKkGtxGwAXnrYWf1eM0tLGfs0LxdPuAWsuI33lJJxHxRowoerGANU/gkO3tPDA/FjxFtlkja0/k+VcbmYyYuuT0/wN+QHpLwp0UAkLYHuLmjY7eBDOY2bEA/6PSJdQN7tWAUlhRnkAjGgcoVTAZe79hJlSJsAUsY99bs3PtgD2n9HIqyxE9P3cxKol2HKectMnKnnq5jmWxm0XAaDrwu/8ovuenGflYW6VciJp7w5npZkcMKWS0IaoQT+0jEVdanZmjlqrTCisi+GPF88sUYblMiyIJHlp13ZKjP1fyXMPWsGSQ+a8Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ1PR11MB6130.namprd11.prod.outlook.com (2603:10b6:a03:45f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.15; Fri, 6 Feb
 2026 09:53:18 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9587.013; Fri, 6 Feb 2026
 09:53:17 +0000
Date: Fri, 6 Feb 2026 09:53:06 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v5 6/6] lib/igt_device_scan: Print GPU upstream
 port parent/child relations
Message-ID: <zcsxdui4bbxry36atpliecwrm4zfxmxe5hq54klgh3ozix2fut@735risrca7mn>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
 <20260205145427.1338534-14-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260205145427.1338534-14-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA2P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::26) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ1PR11MB6130:EE_
X-MS-Office365-Filtering-Correlation-Id: 845fa84c-a75a-4201-0bd2-08de65658d44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkU5cWhGVGpINlFPRHNmaDRxdmdTMTNLU21kK3VJU25DOUppakdLekpwZk9K?=
 =?utf-8?B?TFBjUzkrUEp6ZDAvVUk1T2YrQ25xQTVvVHBIUWJNL3NmcWt4SW5BNkhLc2pq?=
 =?utf-8?B?ZWtBQzhHdlo0TG44OGdURnEySXlQdFlIRytORVBTcm14czJDVEk4WXhtNkJw?=
 =?utf-8?B?Qnp0U0Q3dC9yNTVPd3o0TzdBZ012ZWhJblV0RmxSYnVZMWNUMWNXM09YZDNS?=
 =?utf-8?B?clRzTlFnRFJhbXduTGpwRDdua1dqWXRYRFVYNXF3TUZCaVZGaUp5dHJVRWxE?=
 =?utf-8?B?OHBORTRBazVIT0xRcDEzT3VJQ3J5MnJmMCtPcTc5RStLR3RjTXhrZERsU0Nv?=
 =?utf-8?B?b0dZUEtpT1BIOVk4Z2gzbFZ3R1I0OE9JblNzT3NPazFmWTk1RkswdTZXM1Fi?=
 =?utf-8?B?L0hQRk8vUTBhWUxGWVpHWHlzZDBteE5BUTJhaVFqU2dxZUd1eDkwNkRyRkV5?=
 =?utf-8?B?UFJGRE1ncXRocWY4WTNKZnhEengrUHZoeENCM0lrYzU4ZTFjQTE2d2c3ak53?=
 =?utf-8?B?dlA5bzgrYmlUVWtWMStFZUYrVHBINS8ycWZGd1ZUYXRHeGtQUnY4Q0k2UnFp?=
 =?utf-8?B?a0c1WGtEOUk4a0o4QkE2c1NVUysyT3ZabHYxQzBHdUdiNkxPWmFwSUpoRmlJ?=
 =?utf-8?B?WnV5Z0M3eFdyeE16RHlHSzczRHgvUlRPQnVneEV3dEl6V3lsV2NhMHFLZ2dO?=
 =?utf-8?B?WFNpVHA1aXN2OGp3dDRyNjlxUzZ1UDF4L05kd3hRUWIxQ0htczZvNnFkWWRK?=
 =?utf-8?B?WFZLMUFqM2JTU0hrVTExeElReXVMSkJlczFRdi9rbHNDWEFCUmt2R0N2ajVL?=
 =?utf-8?B?eVNuVWpmOFBUWkVzSzYwdmdRdzRRZzZJcy9iODIvQmRRSGNPam5Iaks5MVJ1?=
 =?utf-8?B?QVFld1JCcklzS3cvdmFnWk82blpnN25yb1hmYnlwSVJaMitSSnJCUDhxWjZM?=
 =?utf-8?B?QVZQcG1rTnNocjNad2lYRmpQaXhlNlZ3MnRZUTJsanFMaDhZSmZpTnVHdGZ3?=
 =?utf-8?B?WG5KSkh1SFk1d1RocmNlR09JZFlOR01OUTg1Nnpkelg0MmJ0R1RudW1oVDZ3?=
 =?utf-8?B?eHJ2ckYrdkJPenpmV2JvVVZRWnppOEphdUZqUGlLbTBQZ0RFYzRwNXI2OWVn?=
 =?utf-8?B?Q3dUdlRtd0xhZnVTQnR3RVNpRGM4Q1E3MGlwRnEvc01vMWpKc2pEVmJOVWs2?=
 =?utf-8?B?OGkxUjdwVndsK0xMN0tMdVYxMVJNZFJWUktMVkd4OTBTRGY4cGpsd1VibXR3?=
 =?utf-8?B?ditZOHpOSkwwdkZjZHdBNFdCemFNcXZLL2kvWVFDclNPSDk0THVaQnhWbzJ6?=
 =?utf-8?B?a09VQ3Q0bTFCQXkwRDJ5TllLZGxXYUR3ZTZCWllHaEIvbUFEV3VjOVJJMFky?=
 =?utf-8?B?dkpLLy9rVkpLcFVMREJsQnlxQkFrUjdVcFIxZm9yZ3lCaUIzd0drY2wzOWpw?=
 =?utf-8?B?K2RoNmxCMkhOaEZNN2pSYWV3ZDA1Q2lhN0N4WkZYK2hRNlIyY0NCUjJ1UXZw?=
 =?utf-8?B?NU5RT2JpcGF1UjB5RXBSMFE1Ylk2aFhlY0VCcmh0WVJsQW44YlRYeTVwU3Fy?=
 =?utf-8?B?WlhYNXF1QXl2RXBnc0xxMmg4c0Q4b0wwK3BKMlVucDN5T3B5cnh2cVpHbzY0?=
 =?utf-8?B?czJ0QXhHaXl1c0lLQXRtZzZTbEhDQlFzTUMvRkgySjREaWgxcGFBcWVDNmZW?=
 =?utf-8?B?YjU1by9ZSlV3dkRCK3VWbTVFaEtJYUthemViVzA2SzBzK0Fyd0pUS29IM2dC?=
 =?utf-8?B?c0pPSEZYbFdTVlhZMTc5MXNnU0VPWWJqQm13OHF2eDd3bURaVWRQYjc3cDFv?=
 =?utf-8?B?UVBDVU5LVEUzV0s5RXNnM3UrR0lOSEtTMzNqR1JSYi8xWS9Xd2ZjZHV1UVk3?=
 =?utf-8?B?dmlIbXAydlRBVDMyMHNpdEplOFRyQ0NKMVRxWlNxdGNvNHlPbWJQTkEwcDlR?=
 =?utf-8?B?TWMyVTFxUGJqbUFqRlRoT3BtVDVWUTlqYWRYVmg3WHNMQU5DREJpOEhpZ0xW?=
 =?utf-8?B?bXlTOXphTXNRL0hncWpWNXdXdWgzeTR5SVdjYXB6M0luaFFPaldNTFp6aWRu?=
 =?utf-8?B?bGRna3IxWVYwUFNKSnBCb2w0UW5ienYwTUthYUxSMTJUam5tYVRyOFp6enQx?=
 =?utf-8?Q?NX7I=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXJ6VVBHZ250RmFaYjI0UEpiQVRSOExWdUxQTWpRZ2FRcTFqWkJlcG1SZ0lG?=
 =?utf-8?B?NGtCbDFpNSszNUw2aXNTaHN1dDZvKzJlK0xkaGd2Uk9GMEc0NVg0Sk02dVps?=
 =?utf-8?B?TGZMbmhTRml4Rm4vSjZsc2hETEhMNzhsdUh3dWNEVVQwYkxadExIMjUxbFph?=
 =?utf-8?B?eEQ0aWMxQmtCRkZ3SkgrdlpSa3l3b1B5RXVrRzhiL0RSMkxlTDE4d2VzZjJW?=
 =?utf-8?B?aHNUbWRyUDFVMVR0VUpRUktDTVVBbnFYU2s1V24xWE9uNGtXWldzNUxYQVVK?=
 =?utf-8?B?RWljbS9YL1hoeURkSm9PcU9zcW9XdFVHN3RyWXhIcTJYNTV6ZE5MRFpjbzZW?=
 =?utf-8?B?VTlLaXJYODZkeGpoandwL0hvY3B6WGRlblE0VFU1a1dIVVlJYmttME1XYWlF?=
 =?utf-8?B?d3ZSVkZIN2xlTGl2MWJkaml2M05IZktTTkJtNXpKS1puTXR1TGFuZTRrSVVt?=
 =?utf-8?B?Ymd2ZjdaMHcxY1JlWW1obFJWS204SnNIcjMrWkFRdHIweEl5dlJEWVNnSUtS?=
 =?utf-8?B?UW1EWlFzN0tTaUJ0TUdFN2twOUlDWVdPZy9HbGZXbkExbHU4d1JtT2xDTUgv?=
 =?utf-8?B?RFIxRTFsVkE2Ukw1VXJwdGlIMFRoV0FPUDhRMXdrNHpiU3Mwak80enA1MzhO?=
 =?utf-8?B?cjhiVFFCY2xBcm1mNFdQMGZTMC9pRzhmaVdOQmhJRDJsWHE0Z2h0cVcrVlox?=
 =?utf-8?B?WmIvYXlDQno1czVqTDlCK0pSUHVFdXJBcUxUWWpJaUJ3M0Y1bXREZjVVcEx4?=
 =?utf-8?B?SEM4YWMrTmI2VHF6MDVJMlFVVVdWdXZrZDNSVVBRSU5HcmVkK0h5VGlCK1JR?=
 =?utf-8?B?STQ0UHVaZmNoeG03NGwyYkRuY2RYSEV4UlAveExZSmxyOWJvS0dDMUJDcXRB?=
 =?utf-8?B?T0R4WU5KU1RSNko3Si83Y1dpNW1hcG9lbTJQbHRYald0cEQwMVF1ak54T0dp?=
 =?utf-8?B?QWtWZ3ZzaUp3RzFMaW11UmIyVWRDNUFtcVRWVytDUkROcGpXWmRic3JDWVRT?=
 =?utf-8?B?VGlkemZLdXZIM1hOWkllZEhYcThqNng3aHR6NWUyT201Q0RGc0cyaG84MmRY?=
 =?utf-8?B?YUwrU2hwWmd0Y2dYaURYWDREVzV5eFNIektJZ29idTU1V0UwT0pGVDBIK3pX?=
 =?utf-8?B?aHFkczFVTGpjZ3BKSjYyMGplK3ZCZXVwRTdYcVlTRlpVbHlGditYb3RzTXB5?=
 =?utf-8?B?bzRvUjgvNEZBdFhIZThoUGlqdG5WOG53SmlxNnlVRFQvN0kvVmxDTVoveEhG?=
 =?utf-8?B?Wm1HaGdkZUVaTjNCRWlhZXpwZzhIaXlZRHIwSHB6ZW9QaE04LzBLQ1hVeUJx?=
 =?utf-8?B?SGZPc2lFTURDa282QnExT2dWeFJaUmdyNVYxVlN3OHRRa3NIMnkyYUF1ZXkw?=
 =?utf-8?B?L2FKblQ2c2E3YXo5dHhxK2oxSzcxc0UwRnZCeWtrRWM5ZW5uelRQNm9MTWFs?=
 =?utf-8?B?YkpSVEZTdzk4MTRMTmlwclNlTW5mRGhJdDliS1k4aHlMZGdNd3o0RjFURUN2?=
 =?utf-8?B?cy94L2R6Z0NqOUh6QTdVUFRudnk3T1NVL1F1R1hGeU5xUXBBdXNsanF5OS83?=
 =?utf-8?B?cXJQaFBFRVJydTk5RXpwaFMzcG9EbllvWG9HR1c5aVA1RVlINldDTmVpb2xt?=
 =?utf-8?B?ZjA4ZkFRNlhUc1VxK1kwVG5hYlc3QnBONEJQekJERDROZjQ3RXZORjlMTDN0?=
 =?utf-8?B?MTRVNkFqSXF4RlZnV2lTd1JhbERGanY5ZzdvY3hEc0tQekY5cUxLY2NtanJ5?=
 =?utf-8?B?RVJUbFNWVy9nczY2ZXFyUGo2bDNxUExoWmRVeEFkSUs4OURhL1l3QjdzM1Fi?=
 =?utf-8?B?bmxud3dncFc3U0NtZ3FESFZyMllTWGxDemdadmNxa0JXbnJHY1VNaG91dC84?=
 =?utf-8?B?SFhRTktYaE1Fdkc3Z3JocjY0SzdPeWxMN25TZHNsaGhJWG4xZlhNVFdNdUR1?=
 =?utf-8?B?WThCaCt2VkNSdEMvYnQ2ZlJOclZZTk41ZlF6d0VWY0U0N3NpY1hqRm9zVEpL?=
 =?utf-8?B?Z2Q1bjVDZmpBVm9RRHFGSTlacldhQlI1Y05PbUNqaHRxU3NMd01VeVI4dmVN?=
 =?utf-8?B?bjNhRCsxM1lUVGFhbUVya0NBbWVRNFpTVVUwdU1wSW1FOXl4Y3dHeHhwZGVt?=
 =?utf-8?B?cTV3V1dlSU1rZVl4S0dFcnpLS3Y5U09TdlVvdzdSWmdmSjVwS1VoMlVlSytN?=
 =?utf-8?B?aU9uYUZzWUoxTkNGenJOMmFNT0ZDbCtsUGFBeWZpayt6N1Y1VjMzMkh6VExZ?=
 =?utf-8?B?ekNWZE9FRjJZSWNHSStHM1ZaWmNFN0RnN3ZoblhCUEJmWUNYUEZ0aGFTQXdr?=
 =?utf-8?B?OFlKbWNlQ0pMWm1OMGRxTzNIYW9DWEJVa3FTQWM0c1ZrcDBUaGxaQ084a1ky?=
 =?utf-8?Q?TrOeAVtoZCgOBrGI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 845fa84c-a75a-4201-0bd2-08de65658d44
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2026 09:53:17.0460 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7obA6T1Lnl9Rnari/zxxceJOLI4h3+hGodtNENgG42875CTOTEFHZg+dLYwXF8UxD4rRW6XOPfoSYVcPGXqg9ORTb3AWXYiYT06ZSJ4VCo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6130
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 95784FC408
X-Rspamd-Action: no action

Hi Janusz,

On 2026-02-05 at 15:51:55 +0100, Janusz Krzysztofik wrote:
> In a short listing, lsgpu prints a sysfs path of a PCI GPU parent as a
> local attribute of a DRM device.  However, if that's a discrete GPU and
> its associated PCIe upstream bridge port has been identified, no
> information on that bridge is listed among the GPU attributes.  Follow the
> pattern used with DRM devices and also show a PCI slot of the bridge port
> as a local attribute of the discrete GPU device.
> 
> Moreover, in both short and detailed listings, local attributes intended
> for providing device names of GPU associated DRM devices and the GPU
> codename are also printed as attributes of related PCIe upstream bridge
> port, however, the DRM device names are shown as (null), and the codename
> attribute provides raw vendor:device codes of the bridge itself.  Replace
> those with PCI slot and codename of the GPU device.
> 
> v4: Free already allocated numeric codename before replacing (Sebastian),
>   - visually separate bridge specific updates of attributes already
>     populated by find_or_add_igt_device from bridge specific attribute
>     assignments.
> v2: Allocate memory to local attributes of a bridge for safety (Sebastian),
>   - merge with a formerly separate patch "lib/igt_device_scan: Don't print
>     bridge not applicable attributes" (Sebastian),
>   - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.
> 
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
