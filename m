Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAD997B845
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 08:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A6B010E543;
	Wed, 18 Sep 2024 06:59:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtvOfcWD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE18010E543
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 06:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726642774; x=1758178774;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=YgH8EU1LDCUkYjBi6QCsBwWhPOdFqu8//ykSa59awPU=;
 b=CtvOfcWDvSLOK+2328fMYk+H5yon3TDOdFiNUpKzjDphYiTvpUd0KmuH
 ZSwIy7sU4hNjmJ8+QSXoWKpdsKSu0m6gax/f7R5nt8+r06RZaZTmcXxDR
 UowviUXNQ/4tFkmj28KD1fggjYxaaObc+Vag46UJHRBNhwXmJgfcTWSGw
 tt2Ko3tr7bzncQN6yr4JbC6Qb++h3qDGYW/QQSkpUfYaHHQMA/YEXQ3od
 CZ2dYyJ8+NxzO4wSSbysp3JgatcYzHT/MbFvPML8hOkgcboEmbV0PLeAX
 ANdZydUiT2QPFQqaYwKh5IRXYs/i6B5VQwvM5OELxQ42vTazYNZ6ov1tj w==;
X-CSE-ConnectionGUID: D/b57WHCTWqdabTloEaeEA==
X-CSE-MsgGUID: MA9D3/yPSdaC4PFy37Wykw==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36119118"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36119118"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 23:59:34 -0700
X-CSE-ConnectionGUID: 8FTBu3aDTAaMX8nbDZZvWA==
X-CSE-MsgGUID: N1lVT+BTSMiTD7R44xrm4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="100128995"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 23:59:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 23:59:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 23:59:33 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 23:59:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BG9tgfiGguw7r50ht4VSwui6+gF3OHRAkeQxDpLn6FMUzBZtCZV01YEV6lNwO0CkmwN3nMWNCc0thbGanSLpsOT6gTbBaeU1YivETjuccFY3vaGvKH80NmRIHgx070WJdSBp3ySMgW6Efv6oz6ZZemqijv0Ov8UXpMmM8ep5RFMDDOrvhcbBdNh54oFZPeI3d9ai1+kfhuky/o0VX1P2kVkqPo4/KdjZlZ5K2luTX9pAXVojCqFEQoJTd6IdWqfmeP8UZeEYi4wZzjNOx73Xdmrd7w+WnS34x9SagKsk774tgd3Yj9WHL8sAcZuNdLXmNGTTjw4TpMQl9aoStG5iXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YgH8EU1LDCUkYjBi6QCsBwWhPOdFqu8//ykSa59awPU=;
 b=jZaGyNz++Yf/7+hhg8D9mGpUox9UNc5uJYO4IvTSm/zltK5QaZlFukdHQqKUoVsp36P0jtOKakjHWAJI1AEIoG0f+jTUlsy9WDjkBajddZKOR7vU3DLMibjuT2jTmAo/WkCsnSzplcsx2IaHGPHu7htRJZKuA4mXzujEHatZR7XQShtsdhtwH04RO6h0M1til5Cjj6Jmj4mxWalaCNrCcOqwl5Y95f3zOG2agAFc6hF4t19uyFMjS8bGKNZ7mF/F1lEpeNjpphN5hX+rxJNsG4IQlPzOWGMmns9m/pWhhxZoXRhnaIIE3Rf2mCjYl/hbijOHpDBReq1ZA4CXMQ+4Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4788.namprd11.prod.outlook.com (2603:10b6:303:97::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7962.24; Wed, 18 Sep 2024 06:59:30 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7962.022; Wed, 18 Sep 2024
 06:59:30 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: eDP Panel Replay is not supported on pipes
 other than A and B
Thread-Topic: [PATCH] drm/i915/psr: eDP Panel Replay is not supported on pipes
 other than A and B
Thread-Index: AQHbCBZ1ghI0PZw2uEafgI7kXBf9ArJdFMSAgAALq4A=
Date: Wed, 18 Sep 2024 06:59:30 +0000
Message-ID: <09780b81da3085689267ba40535fc3a9cadd0c57.camel@intel.com>
References: <20240916085706.2160511-1-jouni.hogander@intel.com>
 <BL1PR11MB59796A85A9EC50DA5EC42E85F9622@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB59796A85A9EC50DA5EC42E85F9622@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4788:EE_
x-ms-office365-filtering-correlation-id: 6e7fed22-a485-4a5d-7393-08dcd7af7199
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?OUVVTU1yR0VRRUlGUVRqbVlBdXlPS0V3T2s1Y1IydytBZVFCM2o0RGFWWHEx?=
 =?utf-8?B?S3hLM211MDB2WEtnbmRVdjhjM2phbG5RRk9yLzhOS3pWa2ZVZ2tpTjVRQTRI?=
 =?utf-8?B?dFpHckpLVjJ1dngyTW5neUM1dU9Zc0hFaFlQaDRpVGdUbm9abUNaSzJ4S0dS?=
 =?utf-8?B?dmhvUTlZN3Z6ZWNqRUxTY1RYeWZXUnBFQWRpM09FYTE3QndqSmZYTGR5MjNq?=
 =?utf-8?B?MVN2dHZRZHV5OFdQczRxRFg2NThuczBwbGNrY0NTVTZYUVY3UjQwK1VlRFR3?=
 =?utf-8?B?cy9hbW9oaFZOMzdGd245Q3dJYXRhTU5vVHFNRXNiZjNCVWI1VFpUbkpjSkF0?=
 =?utf-8?B?SkhWeDJRSVI5Z1VTZVY3cndnVGNhcUF2TkJzbXZHNHVQWGF1WmhmaE5NM1Zq?=
 =?utf-8?B?Ulk4RDBuay9OOUYyTXphbkZab05JYmJVODZDTlhja2NLQUtnQXJIVk55ZHdU?=
 =?utf-8?B?aHJQNitCNjBBcjhYS2hqdUZLaDREN0RmOFFxOE0xb2pFRXJSWVJPWVdtUi8v?=
 =?utf-8?B?aGdnNFVDOElGSGszc1cxelFZUUZRdkhWS2lobXc4WFdyelpxek5NekFRSmVH?=
 =?utf-8?B?d05MWGhuOVJObDlsSTQxTkxGOERZV2NtWXZ1TW9STHJIVXFoQWg1Nlg2SjM1?=
 =?utf-8?B?Y3F0QVB2K2ZkRUZ0TEZoOVNGL2o0Um9JTm16NXkwcEMxdFREMDFYMzlVRlgw?=
 =?utf-8?B?KzNCQTYwNlRlV2FoL2p4T1pENXI4aVBoZVVVUzRmeFo3MzZuN0hwbzNvcFIv?=
 =?utf-8?B?UDJOT2RWYzYvWHJLSjl4a0dtbHZIQytJTHRRZmZpVHR6Y3M0Q2pLY3JLcm1z?=
 =?utf-8?B?YjcyT1Bld0R6Vnc2LytQMEYrRGVYMlpTR2xmaDV2Ukhrb2R0Y1ZmUFp2V09i?=
 =?utf-8?B?OXE5Yng1Uk9naCt1MW4zNllySUpKV1RRUFJvbkhNNXNWQXhYR2xGeU9ERmk0?=
 =?utf-8?B?RHR6bTZZRDA3UDQ1eXg3eEh2MHJ6d0tYRDJSZ2huQjJHOHc3akxtMFVJR1pv?=
 =?utf-8?B?SFJrQjFnd2FmVktQQjJwenhleXBjaUxia203MkNJQ2JmSkJsQkFQQUpxU1VN?=
 =?utf-8?B?a3RMcnFQYmNKa0kzd2R6dkZmY3lRRy9NRGZhaHpmRlZuQmtCT0sxT0I4TnZJ?=
 =?utf-8?B?WVVvc0pWUnNiS2hiVCtUL2JSMStCUGIxSVFaVkowRnBIdzNzcGpiZ2dYVE1i?=
 =?utf-8?B?ZSs2a3pGSDBZQUh3ZlBJaTY1MmNudzVoQ1FJVmlKWGlGZXhsOXhPSGRtQ2pN?=
 =?utf-8?B?TFRYRmN1SVhnQ0cxUDd2Z05UejM5dGhyZndQajhuS1FaR3FORGxMZmVaeXdV?=
 =?utf-8?B?SG5lOTcrOTRXTmNtM3VxQUJGY21QazlKK3J6NE0vcXYvc3JZRS93TlZrbk5P?=
 =?utf-8?B?ZThmUEFDcTJTV1lLbkJKWkp6YTFUUSs4cC9LVWs4S0ZCZFVzNi9rOWlRK2dE?=
 =?utf-8?B?QU5PS2N2TTF6RmRXYW1QUElKRWNhZFlzNWFpV282aGVyU0d4QUNzMCtZRVMr?=
 =?utf-8?B?aG5QS05wanBlY1Y5cmVlMmVsRVd0NVhsNG4reGFjeUZDeU5RQlBZOVFiSC9v?=
 =?utf-8?B?N1NwV0xZS0ZueHJMVnNZdE1ReGM4d3NlNTZnUWR3Q3pjL2h1bFByVWRpbVhM?=
 =?utf-8?B?YzFKRXBqOGhKdW1FNk1RRHd4UExhcHpwaGVYY3lhdlhJbElHek5FU2UrUmls?=
 =?utf-8?B?TGExRnZNZ1o3MEJqcWtYZEFhOElFekhUR1FIMS91NEVLUU1BUFEvRDh3TDVa?=
 =?utf-8?B?NEtGT3MxelBqdWhXRUtpdVVkMnJYd09aN05RRXd5OGVDT1hzRC94eVlTVzQx?=
 =?utf-8?Q?r16z4eQ8F3pdHCAXOehLWQLcJEtCa41rH2L/8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVJHZGJ0c0cvUzk1NUUxb0Uxa0dnaWMrdnNvWS9nK3JLVGJ6OTI0dzNydmh6?=
 =?utf-8?B?YTJxMW44V0l5VzVSTnNCcm1vOGd0YjRremtmSjM1T1FObitrcGhYeHFUc2Nl?=
 =?utf-8?B?RkV3cVBhTXcyNEo4YkRGMDgvL3FZQmdSSzBGa2tpUWJwMS8zT1lxbk5IYmcv?=
 =?utf-8?B?bEtkNHBMRVN1aXNoMzZVa1BwVzdXSlBQQ2xwZkhmWWNyQ0tzV3FlOVQyMVdp?=
 =?utf-8?B?VkNIZHg2aDdFNzlXZzlmZnpFYTllTktzQTZVV3lMaVdMTkorakkrbm1LbXBP?=
 =?utf-8?B?a2VsMWNDMS9xUTdEVDhEL1ZaNXl6TlB2dytTNzNBMlU3ejNhOXhHVUFvR3or?=
 =?utf-8?B?V2R6YlV1QlFDa2xpTHZId1U3SXRyTnBmblpXd2pPMzhVR2ZtYkVZY2hSTjlQ?=
 =?utf-8?B?M05lYllmckMzV2FrOHJXUUdUSDZsS3V0MW42cVVxWFJLb1doWWozcWRBMWlI?=
 =?utf-8?B?R0tRUzUybGsvVER4YW1pd1ZaQ2VuQWl4TGdWUFJjc1MvVTEreldvZ0JZT3lj?=
 =?utf-8?B?YkI4bXlISjBkRi9rbzlQVFFJbnQ3d01pOFZYVWhpaW5yc1Nwa3A3aHVFUS9H?=
 =?utf-8?B?Y2RtZmIrQWxrZDlnd0lpQ3FMUmJSRFFTOXgzRjVoMnA5VFZYUXk2MUFYUmpj?=
 =?utf-8?B?ZjRqL1BEOStSTDBaNHVSSlpVQWJybW5pQ1g3KzJrQkJBY2loMlRiZDMrK1lD?=
 =?utf-8?B?RUFyMExiZmExUVkvcXd0NVBOeEVGTGFyWjFYbUphWGJUNFRQaVFkMi9mZDdZ?=
 =?utf-8?B?RE1BMFNWNzdTc29wU1hOa2pMU2J6N1ZZYWM3ZlBHVjZZNzRQeG90eENBTFI3?=
 =?utf-8?B?UUI4NUR3V2RWQjBidXdtaXJUa1FCNnZ4ZkF5a2h0QThweG1jN2ZZRXNsVzR3?=
 =?utf-8?B?WTE1MHVaOU42NVBHN1piN01QUzllQXpUYzFYL3k3S1FpVW05SVRSOUJ6RGNy?=
 =?utf-8?B?c3lBS1NkK2JhN3U3WWY3bC91VFlSd29kaTZmU0lWeVpaL2ovRGlXVWsxbEZp?=
 =?utf-8?B?MWdub05MQ1ZiOXllNEZFNjZscWlWOVV0MzM5REVqQjFYK2FXMGg1aXk4d2dP?=
 =?utf-8?B?b0VnSTVpZm5SYW1KY3E4dm1IMnpndVpVQ2M5M2dOQW4vZkI0d2NNV0RhYlNT?=
 =?utf-8?B?UW9zc1RMaC9lRmhtZ2QxTGo3MG9FaXNvSHBCa3E5SEdTeWp3VVVaUDluRE5W?=
 =?utf-8?B?TVluQTd4a2pXV0tiVy9taEx5YlI2RnV0Sk5GdHZReTVWQm9KaFZLYm1IVk9T?=
 =?utf-8?B?TUMrWkRscEVyWFB2eExuL3FJb1laQjVuR1h2dkxGc0JHR05VbUUyK1hQT0Vl?=
 =?utf-8?B?ZExhLzJlNVlsME1rZ1dzMDkzbDE4YXNkOG9ybWNDV2wwTXEzd0I5V215YWQ3?=
 =?utf-8?B?OTlxUitNVFJCOHAxVFRRTlJRTEJrYVlHbXlOQlFlM3VpK0trUUtXMk5hN3ZL?=
 =?utf-8?B?U2ZwT0xlYWRRdi9GREZkdzFwVVI4VWtLVnE5TGRyQVVvQzJ1TWZ5enNPYWE5?=
 =?utf-8?B?QXJmU25CWGNJMnpxK1VDV1hwemdvRTVBcGlGcXhnRTRabWJGTXA4eU1FWnA4?=
 =?utf-8?B?cnlqK01vRnFRY0FuQUptSVd6T1NOQkFQbzE4eklFbFFFL1RQOHQrVFVGczhF?=
 =?utf-8?B?UkJlMUQyL0I5SVhqOG1aUlJZQURyTGQ4bHdHenhmWk50VnBxck5hdTRaNE1v?=
 =?utf-8?B?SWlpMGYrQUpRUDVRRkVGbjZUdlBVbEZDOEJLRnYvRUxNajZYMCtFTWpiakdW?=
 =?utf-8?B?d2htTHZjRjRSSllCczlLWXFHdVFHZGoxM0p6cVlrOEQ0UTNTUHB6N2FrL1h3?=
 =?utf-8?B?Um9wa0tXRldJbEJ6V001c2h2WFJ4eXN0WXU1VHdhb1FyaVUvOER6YkFTdjFt?=
 =?utf-8?B?Q1EvYno1VUFWVkRnUklHL1N1dUppOXBBV1dzVGR5NEM4eVJtU1VnTEo5TjdC?=
 =?utf-8?B?U3F2Yi9Pb0xsVm1jcGxvOUZVVnRiaUJWbXRHaU5mRnZBTzVBc3MyS1VWNVZy?=
 =?utf-8?B?UFJnOFpXVTZwSUpScVNTSk9OM0Q3enJjUVM5c0dYdTFyaFdJSFpnUWlCN1Az?=
 =?utf-8?B?YXNaSHBnZVBmR1BqTzRKdDVnMW9CUjFDMGlmdyszbUc1RU5PWEdmVW9HTzk4?=
 =?utf-8?B?R0NuaUUvb1VueUk5cEFXcU1KQ2k4WFlROHdFaHMyMnUvRzVKaDJicWh6TUMy?=
 =?utf-8?B?V2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <75B897C10628D149808BD5D97081538D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e7fed22-a485-4a5d-7393-08dcd7af7199
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Sep 2024 06:59:30.4835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HoowEzfzE6W8K8o3IlQAk5MwxjieLwIfpBausFnk9COQOG9/glZAXSL5TeAsjqieWDT3f0I/njPH4UgQAHsCOgedTTmbdbdNHL/MLee1oHI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4788
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

T24gV2VkLCAyMDI0LTA5LTE4IGF0IDA2OjE3ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0K
PiA+IE9mIEpvdW5pDQo+ID4gSMO2Z2FuZGVyDQo+ID4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIg
MTYsIDIwMjQgMjoyNyBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
DQo+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+
IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBlRFAgUGFuZWwgUmVwbGF5IGlzIG5vdCBz
dXBwb3J0ZWQgb24NCj4gPiBwaXBlcw0KPiA+IG90aGVyIHRoYW4gQSBhbmQgQg0KPiA+IA0KPiA+
IERvIG5vdCBhbGxvdyBQYW5lbCBSZXBsYXkgaWYgcGlwZSBpcyBvdGhlciB0aGFuIEEgb3IgQi4N
Cj4gPiANCj4gPiBCc3BlYzogNjg5MjANCj4gPiANCj4gPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVsLy0vaXNzdWVzLzI3MzYNCj4gPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gDQo+
IFJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0K
VGhhbmsgeW91IEFuaW1lc2ggZm9yIHlvdXIgcmV2aWV3LiBUaGlzIGlzIG5vdyBwdXNoZWQgdG8g
ZHJtLWludGVsLQ0KbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiA+IC0t
LQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDQgKysr
Kw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggMWE0ZWYy
MzFhNTNjYS4uNjk5ODkyYjhjOTY3YSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0xNTgyLDYgKzE1ODIsMTAgQEAgX3BhbmVsX3Jl
cGxheV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4g
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qIFJlbWFpbmluZyBjaGVja3MgYXJlIGZvciBlRFAgb25s
eSAqLw0KPiA+IA0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICh0b19pbnRlbF9jcnRjKGNydGNfc3Rh
dGUtPnVhcGkuY3J0YyktPnBpcGUgIT0gUElQRV9BICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgIHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKS0+cGlwZSAhPSBQSVBFX0Ip
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiAr
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoC8qIDEyOGIvMTMyYiBQYW5lbCBSZXBsYXkgaXMgbm90IHN1
cHBvcnRlZCBvbiBlRFAgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwX2lzX3Vo
YnIoY3J0Y19zdGF0ZSkpIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRy
bV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
