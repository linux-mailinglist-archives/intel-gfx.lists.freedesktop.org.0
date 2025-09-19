Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22293B8B327
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 22:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA45810EA96;
	Fri, 19 Sep 2025 20:33:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpKbYOtZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F32010EA95;
 Fri, 19 Sep 2025 20:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758313987; x=1789849987;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=3RreD14S3zRrbSva71LHCIrE5xs07EAl3HIzDe9Czg0=;
 b=DpKbYOtZqNoRukxMX6OCZ7qKtzO8UIkqA8LmeWcRqjR9t5IMRwrNI1R3
 beJD780n8SWscD8BqBB9y0Yqk0kFYDQG1hAl1QzYaNlB7r7GrnEpr0pPg
 mDJ98gVae6Id7BkDS4sTivAtd39gAKyZPECcXYo6ZKVQK0sfdo/0NWbpU
 hJBz3wQD0ty5lCBLuMywU5+spI3/4OQWYsAL7g3aU1y0Ln7Wr/d63Rkh7
 EM+ewsUYaZMEJjsL2/CDv1vhFXDDXBHmI4+vHRNve01aWA8Y6WxLjSZC9
 H8b1b5+FvRx1vlhzNf1BROqk7P1AsVgEFVhpNFpk3aJe0cygjvANgcsSM Q==;
X-CSE-ConnectionGUID: QktLFKzVRsCx2csqOrn8KA==
X-CSE-MsgGUID: 6fqBPdKLRbysWqbxgBqN6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60821192"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60821192"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:33:06 -0700
X-CSE-ConnectionGUID: y4K2/3IuQ9223j1YE3zZcA==
X-CSE-MsgGUID: vITi+Q2/Qqej5Pfkh3akiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175843163"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:33:06 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 13:33:05 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 13:33:05 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.69) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 13:33:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hh/etEWZ7g+UE4hm/EumuKL7PItQQ4Fy5Zn4wZ03/79cxIX14NxDOKsm0li0Xk/hHbE/d1stuJBKQu7MeGP1YfE6h2a+u9AsmQJpuReuQ4YZ2dHor3KhglolzmyP8PKrVQAxLh1MffrGGaJF8i0bimd1uilfzpGXh+0rfIEe6SgBH9UnRvR571QjNQpAQtKGGic/Lt9tJs3CmBUcP5rjoxehm2XjZUFmAnbS/wMyMSgyvw+xtKe8BObIbUgjN5khBeTyFgT9KkEi2T0HNxN543nyZeAsjic2rY/cMqCOJJxmqbS5zolpM35sslIKSHMWEmnKrsXKyAWxCzo7yAyKAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ab+mVwG/3Ev+aLMnv+x1xm9/CL6E8DZumlh0MsOITpY=;
 b=hHfJcfj5nFhUZeWUA5yF/2X/kL6vRfk046tJDSDIHQuSurZ+ofF7SD3KXGgipa9injksxAEC90KQcuRya4Sa0UKJBN6zbnGOjXa+ROPQZSG1Qm2VC3bHnLYIENOjI3RRruoDuil5ChMQgKmuV5mO5r+h1u0kgsB2JzELyO29fmNZE6MHuIXwvueHhC1IRx6HOngbW6J/hRnqiUs8N2UIyLYdktJcp/1PjJllkY3yXfRBwRtSoyJr5ovA87JxOEeRQfk526K025BdwMAzm5LRlhxgai12u8+uu/vA3Nc07Cb1l4TC0LlVNWlw2cNTrec1VWhUYAyjGpAUxJ+R+c9wiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB8222.namprd11.prod.outlook.com (2603:10b6:208:44e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.13; Fri, 19 Sep
 2025 20:33:02 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 20:33:02 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250919162233.1624905-3-dnyaneshwar.bhadane@intel.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
 <20250919162233.1624905-3-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2 2/3] drm/i915/display: Add definition for wcl as
 subplatform
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 19 Sep 2025 17:32:55 -0300
Message-ID: <175831397551.1987.9539609696117964896@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR21CA0016.namprd21.prod.outlook.com
 (2603:10b6:a03:114::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB8222:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e90e6aa-b72a-4359-6671-08ddf7bbbaff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUpIdmhqVTl3cGQ3NkQ5MXR3UGlaMkRPZXdVREtXMXB5dE54UDBLZXJMV3pJ?=
 =?utf-8?B?L1RXbjFtT1dZaHFnZStYdHdaWDB4d3dia0R4QTcxUm8rYVkrek1EU2RwOXFT?=
 =?utf-8?B?Vy9aMUFTcHk5cWtKeHJ3SGNXUENIWDRxbjFsNTQwSHhud0tkOUlkYXN3SVZo?=
 =?utf-8?B?SEhINXVIVFM1M0UwWENPd0NXTmtFWXdNaWdHaXlNTGNCckQvdzNpTUZmRkJJ?=
 =?utf-8?B?bEs0MC9ZUG52UjJLZUltYlgyY1B3ZWVlSHJELy9xeWpuN3VUR1h3bmY0aUZj?=
 =?utf-8?B?M2VjUTAvN3JIZk9pUDJRN1Y4amduMVk0QUpEamRwaHF1QkNLQzJVS2dsclBW?=
 =?utf-8?B?T0dwOWNjSml0czdhL1ZDekh2VjIyTVZuL1ZGQjcyZHBrZG92VXNLZXVBMlFS?=
 =?utf-8?B?dE02K2xEcTI5bEVIMEhlc1BMeVAzUEhnVVBXd2FycGhKRVh4RlRhQ3c0MjFL?=
 =?utf-8?B?dVp5VjZ2bDlRMU8zdHlRbGhJcGN3SWJTVXJqeUZ5QW5pUHFRbFJueUJoKzZr?=
 =?utf-8?B?cXo3SUZadmN2K0xXOCtoTTFxTnR6bTl5dmlkU0tjRDBEOXAzYy92d3k2ZGdO?=
 =?utf-8?B?OVVNQnlJaUdQN0tjZFhxeWVqaTV2L1U2U1RwdTcySjdPb1ZwSXdFZFRidFJn?=
 =?utf-8?B?TEhVY0NTNlRIMjVEYVVaTGFDU0dDeUNCNlpiNTdlVWVEUnhDenl3MGlYTng3?=
 =?utf-8?B?YlhCVWk3M1ljbjQrMHdTN3h6VGF1OFpRNGRVb2VXelVETTJsUWFBVWhzVE55?=
 =?utf-8?B?cU9uMEwyNHlqc1Rkby80ZTd6TXlvalpKYmxrQU9EU2tjYTJUVU9RajQ2WlBD?=
 =?utf-8?B?Sy9qUzY2ZjRtYUc5a2hORitjTlFWVjcrRWIwaVlNK2dBUHp1MkhLS2hTbUxy?=
 =?utf-8?B?Z210UnpPQ2Y1Z1RDamlocVoxZUprRlNhS1hXLzFuY05zNkNHaUhqQlVzdDh2?=
 =?utf-8?B?L0xoYXIwNkN6RGI5bTkySHFZTUJyeWh3bVZ2ems1aFRRc0tWTTVjQXloNEN0?=
 =?utf-8?B?MVB1MlZTQ1ozVjB2bXN4WWttYTg5SkM1dmhtTlU3Z0lFS2VQRi94ZnFIQkJ5?=
 =?utf-8?B?TEt4NG5yVlg2anFBK0lhU3U5Rjl5ZmttcEluUkdJelRpN2JPWWd1OUozNm1t?=
 =?utf-8?B?SDdxY0FJQUdsT1lDdENzemF1NFRJd2kxQWlIWVZveUh2ajZhcVN1Ui9kZyt0?=
 =?utf-8?B?WlBWdGNpQzJoY21jN0RUQmlGdjc4MTdJNlRwTmxOMGI2MGFlK1ZuZzR4OXBz?=
 =?utf-8?B?UlN2ZmlxYThxTVUxWGg3YkJ0SDErU3JNc2hUK0pDdHJrV3ZNZm43UktVeE5N?=
 =?utf-8?B?UVZhMVFPMmRmekU1bklnMWo2NXJCNGJicTVIYVNwK0krNW4wQm9HVEd0aDhZ?=
 =?utf-8?B?dTJab1I3SjBHL3c3MmN3SFFYOE4zSFh4eVU3SUhlb3ZYeklxNjNtQmJrWE9U?=
 =?utf-8?B?WTA0ejQ2SjQ5TjNDV2NMdVI2Y0NFR1lmb0RVWFV1a0F0amVyYzRQSUVzaG9i?=
 =?utf-8?B?dEpqVnREbHpEWDRxcmljNkJzbThCWjR4UG5HMk0vcW5COFVobHlTL2cvNjdX?=
 =?utf-8?B?dVZBdmRKb0lUM0wvQnJ0SzNESWFZL3NsOEJOby9PZFlPaytDc2R5SFhGd2dt?=
 =?utf-8?B?eHV6Q1NmNWxPUnFidTBPNm1WMWhwWW1zQ3d4Q0oycUZqVkYzNFJxZ2NBOFAw?=
 =?utf-8?B?clRLUDFNdmx2M0pYOXEzNVVhWnVUcmJtcFVsWFVLamJrb00zOVN6a2dDMExu?=
 =?utf-8?B?TE9qNTFsT3hpNHQrdjJYT0xzV0NiTjBqOUxrYThxbmlFbUV4azlKelZtRnBw?=
 =?utf-8?B?V3RYNFN0RFBKOHdMeFQvMTR3RjFHOFV2RS9qS2dGbEhlWVFta200ZFBXbkE4?=
 =?utf-8?B?QWN3Rk1hT0liVmhKR3d1dlhCQWd6Z25yaXpUOWQ2Wk5xRkE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UWxXWWovVVhIWk1KRzMvWS9LN2s5Qis2elVPckYxS09HS2RTVml2MmVwKzBN?=
 =?utf-8?B?eldRTWJINHpNUHBXaXhycVVJWjMvZ0xrNkpyN000aHJOdzhPbFZKWERmWGsy?=
 =?utf-8?B?YkVTZTYvejBlYVh6ckd2NDlFaWJ0RlJJcWd0Z2M1TE9Sd0Fock5wWFcrRWgz?=
 =?utf-8?B?NWhHZUwxSTIrQTNnVkJrcWpIcWc4K1VHZVFWMG5WUGc4ODJNdUxJVktacDVr?=
 =?utf-8?B?eEdiVStDUzNIQVJNRUpiaWQ4cUZ0bWdmUEhQdXVWZnNXalhvbElzOFJZMlV2?=
 =?utf-8?B?WVg1TUVTSWNEZThlRnlnc3NQSm5YQTZic29ZV2dKV0N2UWptVDVpM0JrVnJx?=
 =?utf-8?B?cW9IYUc2K3Q3QWhHb3dGYkVVVXVpdGNoNitIc0FjL3VIbUZyVXdiYklvaVBD?=
 =?utf-8?B?UTZSRHdmbU1GNkFXR1NSdldoU0RJVG1EaStkYXRKR3pQallLSTVIWkRyQlU4?=
 =?utf-8?B?S1ROeVkyU01LVGdNZUdmNTNpUU93b1VYSjQ4ZnJmbmJNRWl4dTY0dHBTVTFZ?=
 =?utf-8?B?RnQxQTFacDgyMzlSY1VWTFZLQmtZYW4wVU54cWNaM2JZa3N2NWV5cUMzS1Ux?=
 =?utf-8?B?eDNpZnlFVjl3czl6amNra2drR0JHMjUrK1c2TElRL1hiL2pIMVVTVFpRVDJX?=
 =?utf-8?B?bWtBRXN3WjhwcGk0OXk5Und6cDNMNTVHdHdBcUkzMDZxNHl4QUhhUWdTTUZD?=
 =?utf-8?B?ZTN0RzZ5Y3paUkZwa2c0bWs2K0xEcHhxVG4veWlEVjRTVXhzS3RkVVpmRHVm?=
 =?utf-8?B?bWlacjhOWVd4dHpOMmJob2gwZ3dYR29zOGFkYXc0K1V0UUIybEk2QUdmUHkx?=
 =?utf-8?B?dlJNL1dDbEZ6bWYyRzRhZzhzZnBCeHA1c3k3TWk5U1RIVnVTT0FrOElMNlAy?=
 =?utf-8?B?VDZTcytkd1kycytidVI4VTJja0VCNnI1ZU11MmR2QktoaDJ4WHRGZXVFSXo3?=
 =?utf-8?B?MjRGeWFGY3lOblVzUmhzbkFLWjlKa3JmeC9hM0FnanNNazg5QWROVVJCNmJM?=
 =?utf-8?B?QlU1c09IWWRjdTAzaDBCVmtEQ09mVzdEcXI2eUM1d0xVV3hHN2JuZWkxU1VS?=
 =?utf-8?B?TFJFcFc5bVkzM00yNXZOcTN4em5xd0hLL1V1N2QwLzRBTkZZR2puenNMajdK?=
 =?utf-8?B?U0pWRUVCdU03aXRZZzlIQ29YUE9KUzNodkJEaGd0enRCKzI2S2UvVVNiZjBN?=
 =?utf-8?B?WndjdENHeDZKR2p1MTlkS2hpY1EvejUwNCtyMjJEd2xudXVVaDY2bGJpWjUv?=
 =?utf-8?B?S3BUMnBFaEpCN3U0TUkwaTJnaGtvZEVPekg3MlJjVWNyOGJLeEZuc2ZOczNu?=
 =?utf-8?B?YjlkYkRHZDFCd09nZUdlMVdlY3J5Y2VkREN6bFU1ZTA1b05JTFdrdkwxMStJ?=
 =?utf-8?B?alNDeGdMNW5GMlFjY0VxSlB6K2JYTHcyd1gzaEhjaUhCTHdLMWlKb0JmYitk?=
 =?utf-8?B?cVRDTE5pZkpKeDI1Ly95cEhQWGJkN3JsWThsbDFUTGJYOFk1YW04T21TT2pv?=
 =?utf-8?B?R3NQaDdYMlpQLzlPeDFHUSs5OEFrMVlUVDAwcnZEaUpEMEUzbDd1ZytUQXZN?=
 =?utf-8?B?UTBZeFJVeEd0WW9MYW0rdHIwUUxrdWJnb2Mrc0NvUlN1NkFuK3pvTGNoL2xi?=
 =?utf-8?B?a1FKY1ZFK292enJqWEJBc0ZKY05ZNVhmbVNJbnBtSkxzSGd5aUpTMjkzTHRp?=
 =?utf-8?B?OHkvdk5uMUpjdlpYZXJQV0hJSDFnbmo0M0VVbDQ1RVUrRi9IdVA1WFBUdHl2?=
 =?utf-8?B?RXZzVU5meDNiWndOdWFRbzRVS2g0VlZjK3RtdGs0N3FiYXZwTm50ZGw2bnFQ?=
 =?utf-8?B?d0lhdXdHUmRkUC9mU1N1cVB5a0xMNmFYWTlCMDg1MFltT0tBendOekgzMjBm?=
 =?utf-8?B?MVVNMGNnNzhzWlNieEJLOWJ3U3VtWVptUzd4eHgrM3hxVnAralVReVU1MWhO?=
 =?utf-8?B?UExJOHFhWENTRVNQWEx4N0hqNHBzeW5jYnEwd1duZjd6YkR6emFLOFFaWndo?=
 =?utf-8?B?a2ZjOTk3SE5mcWZlRmZzRkNGRjJ5MENDdTl4RDBXZE9STWdVbzdPY3N1S1hk?=
 =?utf-8?B?NUoyTXZFT2loaWpybHZTS3NDWTVJRVMrdGl5Z1VWVmtCUG8xOFo2M2ZzYnpU?=
 =?utf-8?B?empPeElCN0xINWdjSEI4em45b09kNS9sZ3hxMjFqSXpDWDJINHpBMlpVTTBo?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e90e6aa-b72a-4359-6671-08ddf7bbbaff
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 20:33:02.6899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: za0u2Mw+uZeYuIoptQ8UDu1ya7fXh/tpNgzEAcrbcsiPGOClQbZZmDa/4HVVJyCBZPcV51Hw9LH4GXzv4J/WWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8222
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

Quoting Dnyaneshwar Bhadane (2025-09-19 13:22:32-03:00)
>Update the device definition structs for adding wildcat lake as
>subplatfrom of pantherlake.

I think the commit message is missing the reason why we are doing this.
I would replace the above paragraph with something like:

    "We will need to differentiate between WCL and PTL in
    intel_encoder_is_c10phy(). Since WCL and PTL use the same display
    architecture, let's define WCL as a subplatform of PTL to allow the
    differentiation."

>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_device.c | 12 ++++++++++++
> drivers/gpu/drm/i915/display/intel_display_device.h |  4 +++-
> 2 files changed, 15 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers=
/gpu/drm/i915/display/intel_display_device.c
>index a9a36176096f..84aa6b6384da 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -1379,6 +1379,11 @@ static const u16 mtl_u_ids[] =3D {
>         0
> };
>=20
>+static const u16 wcl_ids[] =3D {
>+        INTEL_WCL_IDS(ID),
>+        0
>+};
>+

To be consistent with the other subplatform device id lists, we probably
want to move this to be just before the definition of ptl_desc.

With this addressed and the commit message rephrased,

    Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

--
Gustavo Sousa

> /*
>  * Do not initialize the .info member of the platform desc for GMD ID bas=
ed
>  * platforms. Their display will be probed automatically based on the IP =
version
>@@ -1406,6 +1411,13 @@ static const struct platform_desc bmg_desc =3D {
>=20
> static const struct platform_desc ptl_desc =3D {
>         PLATFORM(pantherlake),
>+        .subplatforms =3D (const struct subplatform_desc[]) {
>+                {
>+                        SUBPLATFORM(pantherlake, wildcatlake),
>+                        .pciidlist =3D wcl_ids,
>+                },
>+                {},
>+        }
> };
>=20
> __diag_pop();
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers=
/gpu/drm/i915/display/intel_display_device.h
>index 1f091fbcd0ec..0e062753cf9b 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -101,7 +101,9 @@ struct pci_dev;
>         /* Display ver 14.1 (based on GMD ID) */ \
>         func(battlemage) \
>         /* Display ver 30 (based on GMD ID) */ \
>-        func(pantherlake)
>+        func(pantherlake) \
>+        func(pantherlake_wildcatlake)
>+
>=20
> #define __MEMBER(name) unsigned long name:1;
> #define __COUNT(x) 1 +
>--=20
>2.51.0
>
