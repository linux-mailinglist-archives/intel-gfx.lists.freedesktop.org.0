Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F40BA25DC4
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 16:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86ECC10E4DC;
	Mon,  3 Feb 2025 15:02:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJNgGeeK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC4D10E4E9
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738594929; x=1770130929;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ebbGL7/FBrmZ990ht8Y2UcMkKBbZIelbcbMT4xrBDvA=;
 b=OJNgGeeKMfkTC+tykjpkVHCORU64eKTwIabRaPnmF23/iuthxgmJk1gJ
 qdi3ngX6qZJPRWuIsGRK0tMSwDJMbnqSZnwYdoLWQQf774/Pm0oxRciGt
 2BlkSkLAg2UJieTUlrw0zldeT+T4fCnqrj+tJ8itkoyfVN0AVMw+jHRm2
 ycxyznp7uen9H4P5HKRV4L8f0Xeh6avyh0JJrolUPAZDBioUPbPzdrwlV
 2jUDL87qxJaEJEyFpDjD4Dpk0n7G1x4RM/YSP6yqnfyazaGn3teoL3Qka
 6c4/5EKroTaLoc38qi0/wrTPsOnSHJOu7pY+4M+XtG2FmSZd2WEMScRw5 Q==;
X-CSE-ConnectionGUID: JdGvkaQmRQe/nl/C4GahLw==
X-CSE-MsgGUID: 4bqJEZdkTYC4gnWgaHenvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39120358"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="39120358"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 07:02:09 -0800
X-CSE-ConnectionGUID: /LRm0OK1QluQWZHEq53IpA==
X-CSE-MsgGUID: kfySW5nTSGiBxopo8CkZYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110767637"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 07:02:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 07:00:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 07:00:58 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 07:00:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f6jhnmWcnpF7IOPrTO2lLDNQzTnrSPArJUMjedpv9w8PxxdEla9OaOwB94HTtUv/rdmiHc18YdmkNUl4DDUIeZaspSMuQ+tUBJHDZghE9lDpEUrCnuGMkQriSDLRyJt8EsRxLiunAMiTAElurt4tNuvTwalBwP7ALJiFGmxyyblc0aSK7vGLc8STxA5kpRkgEnkhryZQuuIv6j9GCW/n3oMeyKeItlZRLlv55/l7SVDvdxOKIcmYF2Ce9H8N/4u1kiHgONFmvGJC8tSYtOfZucnp40YLvf3kTr5A3wRJxhl+cMCJ6yoZ4UHOZLtRAcIluDyAKj/yHV5yYBqmajRmUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=micx1wGeuIwJVh9yIzchPtNWpYsVfkjPmwDroeS7YPM=;
 b=IOXYjQVbEskksRl+EhrmxEaX2NsLn7aED7bbl8aOEPOc6Ra5wONBSNOo/q+px5FetilUDQMuFU8CNrSuOgy0pe7PDADUv2TxbC9nlMO5+K/GvZhVaoK1bO5IOZ9uV0b7wcWTZdFv1Hsa0rDhjRYZ+So7Gx5fMe7KvDVic3AlJxKZcjh5KsTQKw/lxswOm3NKLKT9XFL77YZflkeUjbEsmfh26Ay+fy9q77HfnAGuH0Yasa5Am37pW4Rm1mWk3TG3S1MCThK0dwKVT9+FeeCrt2GKxxjITSGbAGBfJA/yCDLfDoIl+iocEo7VcDRNTQ5ON4guxTH+aP/jelCOU8Z5ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7049.namprd11.prod.outlook.com (2603:10b6:510:20c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.23; Mon, 3 Feb
 2025 15:00:03 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 15:00:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Mohammed Thasleem <mohammed.thasleem@intel.com>,
 <intel-gfx@lists.freedesktop.org>
To: Imre Deak <imre.deak@intel.com>
Date: Mon, 3 Feb 2025 11:59:59 -0300
Message-ID: <173859479977.77773.12623605896722676495@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0007.namprd03.prod.outlook.com
 (2603:10b6:303:8f::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7049:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f8469f4-cd3e-4093-1c19-08dd44637022
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTR5TXlpM1lOK1Y3UTZvdlhteVhoVXUrRFd2d3J3SWErMCtYYWg3UDlrNC9J?=
 =?utf-8?B?ellvVmMvOUMyNUc0clNWUmJaZkFXQmNxSG1JWHh6bXJ4ZzE3ck92SFRUeXVt?=
 =?utf-8?B?Sjl3aDltWXd3S3I2bkxlWUV2dCtjcEN6Q2NMK1gvVEVpZmpXZCt6NllKWi9j?=
 =?utf-8?B?QXhYeE0zVk5PeXNFM0U1VWxDUWx3RC9SOWNYWEZORkxJUzVyZzYwd3ljUS9u?=
 =?utf-8?B?MTZDVEJ0NHI0UTN6ZHVPYkF5VUROSlU0MDJYTmFoQnZVUWNzMnVRL2FLVzBq?=
 =?utf-8?B?ZnFjbXEyd1E2Q2p4VTdqb0VKK0RtRzNjMTQ3aXFQRDhTVVd2NzVvYTJ3UXRS?=
 =?utf-8?B?ZllQSzNXZkI0VWdqbUtaeG1KVXVHK3pCWTYxWnArQmZuc2dxYUxtY0JRT09N?=
 =?utf-8?B?VXNCWk4yUmRuQThTbFJpYXBxQ2NIb2lLWEdmWUdaTm1SeUkycUlValhGeFFP?=
 =?utf-8?B?Vzd6TEs0T2pXV00wMlZmTzBqN0ZCWUJ0Y3hwOTArUFZLUGppeUJvN1ZzV2hn?=
 =?utf-8?B?TTE3VzU4ZExlenlrdzcyMWNDR2FwNUhwNmlOcmx4clFoR0RCcTFDNEhWZFJr?=
 =?utf-8?B?WHJKN3hLVUhDbFZqWXhPa2JSUTZOblJINjVoMWU0TDhFS01FMGpnNG9iWHZx?=
 =?utf-8?B?SlRzV1VlL1ZVeFdqZE12YnJ5UkRQaTRtOTJxdXhLc0Jqb1AxUzBKaWl0aDVt?=
 =?utf-8?B?YlJxU3lkdHdXSVFtODM3aE5kYUdidGNuMzRuY2ZuSHNBQWtrbTlHc3FscnFV?=
 =?utf-8?B?MTZyWXZTNTFONVZkbHlMY1NabVdrWmQyaXlGT0RUaU9GSFlrSktEVHZ6Misr?=
 =?utf-8?B?dGliWFpsR0d5RlhVUVhoRk5CTG9ZL2JqUWMyNDdLbHFySllFU0ZiRjBsMW4r?=
 =?utf-8?B?R3NzaUdmMlRTTnl3WUlEQXMrRitvYzZGQ1NEcFZpS0ZpR0FzanJ3aDlCR2wr?=
 =?utf-8?B?aXNxbWxLMUNTSFNxK2NNNVhON2hKQTYxQmVKTnR6SVNiekROM0NtNXJ3YUhB?=
 =?utf-8?B?OVhqZjRzQ0JvMWdPR1BXMnloc2V0QnNGV09rRk9oUXZRanJhdGZlVWhXUXdC?=
 =?utf-8?B?SnpsbmtxS0JOenJPQ3hJVzBHczF6bk4zdXp6Tm4weU9JaEVId0pkWVJJdC9n?=
 =?utf-8?B?SUQ2cWg4OC9obEdGVERHZ0prallhRmY0SG5BRUs4NG5vR1NGUlZPUEttN2E4?=
 =?utf-8?B?WmtmNU1PalcrSXk0bG16MWtPeDJrMERlSVFyTUhHS290UGJ1MUlWSzlobnFS?=
 =?utf-8?B?VGc5M2QyS0dCNlZWQkxVTUxIUDB5dUk0VE1nb2cwZjdpbk9TRU9pV1BGQ3E0?=
 =?utf-8?B?c1UzVDhqOGV6eXp6R1cxeFhGQWJBSk5lc1FuSXVaWnhUU1VnZ3A0Ymw0Nkhl?=
 =?utf-8?B?NURZMUlraldyem1Sa0U1RW9naGc0RGtXdERpK3doMk5YUFlVdUJVQVp1bjdT?=
 =?utf-8?B?M1N2cTRGcjlVOFZYVmpkZFcrRWtya3hDdXFJdklSd1BXeVNQNzcvR0I5eWtK?=
 =?utf-8?B?Nm1OSERJZEhsSWcxc1Ixc0xWSnI4NzNRU1I2TnM2MXFyY0Znc2ZlNHV6WFZR?=
 =?utf-8?B?TW15RTFrTlNzY0FqRGtaVWJpUXRMaElpT3VINEt2S1B5VHNRKzVMT0VPUW5h?=
 =?utf-8?B?TnpVSE0rbVdqSDRPdS9wUWwrU1RrNmlCQ1VxSTRER3JKejNGdk5RaWhac0Jt?=
 =?utf-8?B?ZnM4aUxXUWFGRmZqUmZXandJSk1yMnNST1J1UnI2M0V2MlVaWGp4NTJ2WHVp?=
 =?utf-8?B?bGJzYlppLytMekFwbTdrb3R5SUphZGJ4Mk9sL0IzTWFqM0l3N0tQVmNGUEcz?=
 =?utf-8?B?NytTQTJTUkxBRDVXQTBPVTRUenpydVR5Vll2UWlQM2h1cStlS2ROQytoNUlj?=
 =?utf-8?Q?EKtxU2Pjx7VuP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGJ1cVpaaTFRdGtqNitQM2U5MFRGVi9DSUYvUk5LVkljVEdLUGE5L1Jhb2dZ?=
 =?utf-8?B?YUVIMkQ3bERQWFJFUGx6YVNTVmR5d2svT3Iydkg0VGFkZVVtYkVJbzBsZ3Iw?=
 =?utf-8?B?eFZiWC82MGdBb251N1lkRFlEUE13eG9sL3VweEJvdy9IaTZwQlVXQlJwMFlC?=
 =?utf-8?B?dWdPSFBmdTBKQUE5ck5GVW9pRHlQeWd5dUNSUmlsZjk2Q1c2dkh3Nkh4dU54?=
 =?utf-8?B?eUFncFg3NVlUZ1RZTVZ6b1Bsbi9XZFNNcldKRVFaZDZJTUpqOFJEdDVKU3o0?=
 =?utf-8?B?ai9OUmhnSkx4eTBFc3g2V0d4L2tCdDJhcFEvZE1CMXF2M2w2c1AwSmdrR0t1?=
 =?utf-8?B?NmExYmVEb3dWSUg0OTZ2blJ4VWlNS0tITzI1a1NMdnBBbnBTQStZTnZuU1Zv?=
 =?utf-8?B?cGdoWTN4aE5CTlhvODZXL0ljTmVUdWxtKzVDUElNc1BOM2ppaEZUbWZlVlAz?=
 =?utf-8?B?SVVTbm9mTHNjaE13Vk94emx5ZzlUQUorcjNaMm8rZERtWjdTU1hORUdRQUpm?=
 =?utf-8?B?K1NNYUZHMnRmRnRSbnQreXFPZ3A5aVErYU9ScWMvVE5Xd2gwZ1h1NXhVanJv?=
 =?utf-8?B?aG5KY3VvU2l2TmtYYXUyaVBFNjIvK0R0TEdTV0daVHFwdUhFM1pEYVY4S2to?=
 =?utf-8?B?L0ZHYzNXWGExUXZXOGpzdGVhQlFTVXNzRkR2dG1wQndzY2w3OCszVDBPNEVJ?=
 =?utf-8?B?Zm9ZUUdycjlpM3ZDV0htR0p4Z2QxSmg5M0hheXdBZGNzemhwWGthR1ZCNUVn?=
 =?utf-8?B?NEZrY2V1QVdLa2s5ejlRK1h1U3kzNk85WHR0WDdONHRMMkJDWDBXUGNtNjBB?=
 =?utf-8?B?ZEs3bExMbmpneis0TWRabVhzVG5Od3E3WEVyOHNJVVFrMFJSUHpUWjdkUUZv?=
 =?utf-8?B?NTlKVEF3akxMSVdQYmMxdkUvQ0h2Y0IzaTBvWUJqNHZ3TVFxOGcwYytwczc4?=
 =?utf-8?B?TEJZTFpjckxLV0kwbi96VVpjOGVMNjU5cFVGb2QvK2NCRmJ0K2Q2NVpscDBL?=
 =?utf-8?B?Z1QzcW1UbDNiWGJjanM3NEJYQXMzeWtPME82QmVmQnQ3K1pJeTZFeFJCN2pC?=
 =?utf-8?B?eExNOHJjdmI4dWR6Y1dUdnlCRGpDbWJzT1dDM1RsVmg0Rm8zd2RqYzFZVlBw?=
 =?utf-8?B?QUE0a3FGcU9wNHVrVTkxOFJsRFNBT0ZSR2UxMTVwMndhVXNGclNxOFVGcktS?=
 =?utf-8?B?M2FobFB1ZytpUGQwaXp1UDM1dE1GSkg1bVZMZFhhZHkzaXM0SGhnL1B5dXRh?=
 =?utf-8?B?ZVpYbEVDRVpUSHFldmN2eEp0R0ZGY3BPRUUya3dRajNKS3pDL1dTU2FVVTd1?=
 =?utf-8?B?akg1a2lBcXdZVExIeUxyWWdIRC84VUlzTXNHR1RQbTVSc05UWDIzMVVGVjZC?=
 =?utf-8?B?aXZVL3JkVzlIbzdUcjZqUm5KNGJEdzZkYlRwczJ5RTRxbFZzV0FQTFZIRFZp?=
 =?utf-8?B?YlhBSFVSMU1CaERSWE5KSktkMzRUS1hxTDNlN1V6eE1rWGVvZEhBc1NBajd1?=
 =?utf-8?B?WC95Ym1ZdlNkOFZhWllsR0EzTDh0eDRYMmJaUEx0MTRZN1JGcWJjMWNTZUpG?=
 =?utf-8?B?ZlE2SyszMXdKRVFzbVFwSUFucWo3Z2Q2S09ZVm54WVN0NlRtREdKbGxMS002?=
 =?utf-8?B?cCt2RE9kN3RRdHo4TnVYVVZaelpZMlYwZHdTQnJUd0VFSElBTnFGczZDbVRt?=
 =?utf-8?B?WEMzSk5rME0wVGp2ZzJQRXhPSWZ0UmJxam1pTkxoWTdDN1BGcG5NS1ZTNFRv?=
 =?utf-8?B?NmdRSnhtakx0RDViaGNvdnYxUW00NW1NVzZXRUpwOUxkRjc4YUw3K2srRXpk?=
 =?utf-8?B?VDllWm1DSWI3eHBGSGxtTHBSYWIwQXVjSE1zQmxsOC91NjFsQTlnVW4vYjFS?=
 =?utf-8?B?Q2xPN2Evc0xkNHcrLzBOc1B4Y0N1TFNuSEJYZkthWDVkbTJHZ2tKT00zSCsw?=
 =?utf-8?B?NkFxSzg1eWdHUlhiZkVHYWgrYnJ3VW9pcWJVdExYQlRtRTM5ZHpYWFljK0Vj?=
 =?utf-8?B?V3RyVDN5UlpyVkcwU2ZoTGxDZ1UwUXFZZkVKaDhudFZScFpDaVpTeVlxY2tM?=
 =?utf-8?B?UWNnNjJkQnVjUGJlejl3Q3p0NllRMEhCdXdrMDZwTG1ReWd4cWJNV2p5OW1t?=
 =?utf-8?B?cmxicS9Vc0I0MndqTFFYazgvTDhKSGlOVHROYllUSmZhR0R1MnlOYUF5WXdu?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f8469f4-cd3e-4093-1c19-08dd44637022
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 15:00:03.3813 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UObsmgLRjwBN7CSq+ixLhQgy/D9a8LzM5QWIQK3kM1/r2TNocHc5ftXwl4KC4JrNy+wKHvvjVvFIqCebIxHdIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7049
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

Quoting Imre Deak (2025-02-03 11:26:19-03:00)
>On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
>> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
>> >> Starting from MTl we don't have a platform agnostic way to validate D=
C6 state
>> >> due to dc6 counter has been removed to validate DC state.
>> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
>> >>=20
>> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
>> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
>> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
>> >>  3 files changed, 4 insertions(+)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/driv=
ers/gpu/drm/i915/display/intel_display_core.h
>> >> index 554870d2494b..cc244617011f 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> >> @@ -376,6 +376,7 @@ struct intel_display {
>> >>          struct {
>> >>                  struct intel_dmc *dmc;
>> >>                  intel_wakeref_t wakeref;
>> >> +                u32 dc6_entry_counter;
>> >>          } dmc;
>> >> =20
>> >>          struct {
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c =
b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> index f45a4f9ba23c..0eb178aa618d 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display=
)
>> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
>> >> =20
>> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
>> >> +
>> >> +        display->dmc.dc6_entry_counter++;
>> >
>> >AFAIU the goal is to validate that the display HW can reach the DC6
>> >power state. There is no HW DC6 residency counter (and there wasn't suc=
h
>> >a counter earlier either), so an alternative way is required. According
>> >to the HW team the display driver has programmed everything correctly i=
n
>> >order to allow the DC6 power state if the DC5 power state is reached
>> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
>> >enabled by the driver.
>>=20
>> Yep. That's what I learned as well when looking into this stuff a while
>> ago.
>>=20
>> >Based on the above, we'd need a DC6 residency counter maintained by the
>> >driver which is incremented if the DC5 residency counter increments

By the way, the counter that we currently have in our driver is the one
incremented by the DMC. I was meaning to send a patch for the residency
counter maintained by the hardware, but have not yet... In theory, that
one should be more accurate, but would require us to enable and disable
that counter as the IGT test starts and finishes.

>> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
>> >for this, since it doesn't take into account the DC5 residency. While
>> >user space could check both dc6_entry_counter and the DC5 residency,
>> >that check would be racy wrt. the driver enabling/disabling the DC6
>> >state asynchronously.
>>=20
>> I'm not sure doing a driver-maintained dc6 entry counter would be
>> something worth implementing. Even if we have successfully entered DC5
>> and, in theory, DC6 would follow if enabled, this would be a synthetic
>> counter and it could be masking some hardware bug that could be
>> preventing DC6.
>
>According to the HW team the DC5 residency counter incrementing while
>DC6 is enabled is a guarantee that the display is configured correctly
>to allow the HW entering DC6 at all times. IOW this is the HW team's
>suggestion to validate DC6 at the moment.
>
>> On the IGT side, we could just skip if we are on a platform that does
>> not support DC6 counters, at least while we do not have a reliable
>> alternative way of checking for DC6.
>
>I think IGT would need to validate DC6 in the above way suggested by the
>HW team.

I'm still inclined to think that we should defer DC6 checking for when
we actually have a way to verify it. The way suggested above sounds
like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.

In that case, just checking for DC5 should be enough for the time
being...

I won't object further if we do the other way though.

>
>> It would be good if we could detect that PG0 was in fact disabled, which
>> I believe is a stronger indication of DC6.
>
>It would be good to have a HW DC6 residency counter, but there isn't one
>at the moment. Other ways may have a dependency on other, non-display HW
>blocks, for instance in case of shared clock/voltage resources, the
>display functionality validation shouldn't be affected by these HW
>blocks.

As far as I understand by reading the docs, DC6 is DC5 with PG0
disabled. That's why my suggestion above.

--
Gustavo Sousa

>
>> --
>> Gustavo Sousa
>>=20
>> >
>> >I suppose the driver could take a snapshot of the DC5 residency counter
>> >right after it enables DC6 (dc5_residency_start) and increment the SW
>> >DC6 residency counter right before it disables DC6 or when user space
>> >reads the DC6 counter. So the driver would update the counter at these
>> >two points in the following way:
>> >dc6_residency +=3D dc5_residency_current - dc5_residency_start
>> >
>> >The commit log would need a justification, something along the above
>> >lines.
>> >
>> >>  }
>> >> =20
>> >>  void bxt_enable_dc9(struct intel_display *display)
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/d=
rm/i915/display/intel_dmc.c
>> >> index 221d3abda791..f51bd8e6011d 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct=
 seq_file *m, void *unused)
>> >>          if (i915_mmio_reg_valid(dc6_reg))
>> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
>> >>                             intel_de_read(display, dc6_reg));
>> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entr=
y_counter);
>> >> =20
>> >>          seq_printf(m, "program base: 0x%08x\n",
>> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[=
DMC_FW_MAIN].start_mmioaddr, 0)));
>> >> --=20
>> >> 2.43.0
>> >>
