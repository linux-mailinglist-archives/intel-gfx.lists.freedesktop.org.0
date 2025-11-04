Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D3DC322ED
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:59:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6967610E647;
	Tue,  4 Nov 2025 16:59:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZ3plG83";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E52A10E647;
 Tue,  4 Nov 2025 16:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762275549; x=1793811549;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=ynlWsSzpTFScLZ5V66AJyUtx4Ui6y1e8vFYFVwVIxqw=;
 b=LZ3plG83seOUDjo73LHUwXvWz71UqqI55OfDWgsEJlz+FMp6hH+aVcq1
 afYw+DC5puejcM/ndIT6HYxW288mQFLa6pMqB+YefIWvfWDZDzFgF4sB4
 FZnKUz94XOiVQyr9HzSbpzezQ9AeyYAEgvt2KNSbPUg2wlUQ157Lg/geW
 77w4FFoiXfmQDhMl8ppkGIcRZL5I3IAL07vx2Lu5h3F91v3GARSQAhy8X
 V4e5M5zLFqEPRAaAlg+qwFJP9VJ6G7RqX3DTrgFV3zwm1QvmwZAOak3q5
 I0C0pmWNF7rLB1e4EWqa1PjCu/KK57W41+kWd4dMi+B3c2R6WuEQHk4iZ w==;
X-CSE-ConnectionGUID: g1F2FAE6RbafmiqaAASBwQ==
X-CSE-MsgGUID: IRCJt/g6QeupNu5vHLnBUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="63581099"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="63581099"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:59:09 -0800
X-CSE-ConnectionGUID: gbuSANVoTPeEIGys2/ZjCA==
X-CSE-MsgGUID: ajHYf2i+QEGKkHgbOMXMTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="186447441"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:59:10 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:59:09 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 08:59:09 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:59:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q0xSvu5DuMxghmowCRMD+BvOhgGe1lu9s94dUoLh1KWSNVpWHFB/h72A7qiZNEbiBAUMVFD6rTVBsk/Bd70Ita+TSzJ5OEvLD4yeTyXGHCjgSk8cNhT0KLUyVNYoIfvnSVJhnC7p/FAhzm/fJYp4LH33Y1bJ08RtSxHDStuCvy3pQYfbEdO8ixPE/F6mCdfM6OAQyp5t6gLsf4akfwEOIBq4x5Nu2fEyfYCZuvSbsVvd5oz1OQLrzpfstbSCqj7fL0L4Ymfh1Ect8pmxJvw/MtbV7N+4nT4Hn6utevR1NExEuQsPCTG1e6SSyOQXE7d67wYs2sLBHeFNF6tV+WTuDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cGyVXxaVMwuwNPOaeQIMaRZAKrw2OY4/vF7lVRVZ2HI=;
 b=KxYjgpwtSHN200ITQWFcHem08l6tcKPE8+oVAhLtjbPrzNdE/3S5OyiYALvasBlwBCU7sNUdQc+fjNxO5Q8ml2UPyL1IGGK3Yi61FodCCQTubjRDL4oGEhGy85Te3yv9p/8zlMKW9/e+Q8M29iDsm2WWiAGVJt4aWheEYzn44oUZZTtxw+kz5g0Oy1uBy2Yrm/B8aLkI7jAESqY8MlrowR7YBR9mUBUWl3rNEn2xucuV31onYEFvxlj8KBPMa2AtEf1BRerwkyRjbECvbiff9XIF19hlTBJ775EULyw1JEohsfDdA5Zh6J68+ctbyjr7+QP/QLgEfR/CTMAcwm/aWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB5915.namprd11.prod.outlook.com (2603:10b6:510:13c::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.7; Tue, 4 Nov
 2025 16:59:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 16:59:00 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7bde5fa23c84894057bd52235f7065675e366083.camel@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
 <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
 <7bde5fa23c84894057bd52235f7065675e366083.camel@intel.com>
Subject: Re: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Date: Tue, 4 Nov 2025 13:58:54 -0300
Message-ID: <176227553433.3586.450935160322160772@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY5PR16CA0014.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::27) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB5915:EE_
X-MS-Office365-Filtering-Correlation-Id: 027b1a14-2867-4e3e-e1c3-08de1bc372f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cGZjNDBsQkNHZDJ3ZHg4S05jR0RZbzhlZHJmMGtFc01HeEtzZzlvTjFxcmhx?=
 =?utf-8?B?dXcrTlJBekYzRkhKWS9aSjNldi94My83SDRQcXdLeUUvN01Ld2VSTSsvalc3?=
 =?utf-8?B?aTRNUXlGcS8zL2x5ZER5N0dndlhkdXVWRkg5bkdNSUYrSjJna0ZyYlRhanBl?=
 =?utf-8?B?cUJZLzlUMkx0eWpGVStzZUxwTWVLeStjRWhFV3FWQ2xzT2ZHOXozSjAydGVT?=
 =?utf-8?B?NXJLakVYTXVNMWtNUDA0c2lmNFhkVGdGTm9BdGdsSlVwdFNLVUNZT1FBOTlV?=
 =?utf-8?B?cCtFaXNqbSt5ajFyQmtLaHBwa0xjb3JhZVpOVWhzYWZ3alBiWExHc3hwa3BK?=
 =?utf-8?B?ZzE2bVZOVk9lMTZtaTBPWlFjSUhsbmVRMkpVN1BmRUxFTUxuR1ZTeHdhbjk4?=
 =?utf-8?B?OGF3MFBSdVRPdmgvdEFMMDhxVXdWWWdsNE0xOGhRU0NBL2laMmpDbG5INDBS?=
 =?utf-8?B?aG82cHVneUM2d3RzenRQU0E1a2tNNXpXWUVEd3hDcTRQVGlKeGpvdkE2M2JQ?=
 =?utf-8?B?SXlHWWd3MFJ0eVYrVFRReHdsNHNMVlZoVTBNOHJ6YUQydUh3dzNUMFg4TGUv?=
 =?utf-8?B?M3dqY1lHdjUxcUVIWEZzSEpJSDdldFlGV0RsTFY3SWhvTFlyN3hWLzBvckxZ?=
 =?utf-8?B?a2JoOVR4MUFhanYrcUYxTnpYOHJ4NDZxTitPa20wcFNrQzFsSVowNDBNeWdS?=
 =?utf-8?B?d3NaL2tnRlg2V3hMOFFLbzAyNDIyQnFEWGVDekczcWNyN2NMazJqdzBJMG41?=
 =?utf-8?B?QUUvSXNmZk5odTRyN1RoWmQvUlZ0ZjFyRHpsSWR2SXBYakZDenRjZGQ5ckVP?=
 =?utf-8?B?dGx2REhISFlKeTNzOHlaUU9pSElJTXBqNkJPYU95K1pER0N3a1p5d2FHRU9n?=
 =?utf-8?B?eUVnNE9uSzhCMXoycUsyczdGT2t6VXZ5QmVBdzFmOVk5ZXhuTnM0aFl1N2Vh?=
 =?utf-8?B?MndSY3dJdzZ4VjdoYkRjL1NKZkhGNzdoV0NRUnBhV29MRldiVkU1VmRFWlly?=
 =?utf-8?B?L2I4bVM3eW96Z25XVUtWQjJWS1l3bUROYlJ6SVhoQmRkUWRScm04TW9kTnZV?=
 =?utf-8?B?bGg1UnVDVTBQRzN2WmRyZ0tJNWcvMXdwSjA2U0JTRllQbW9mVVBmOUdyd01r?=
 =?utf-8?B?SEVtYlRqeWNRbnM4cWxiN0JibjZNUU1SZEFaVlJDWkJWM1hpUnBvY2ZBZ2ZI?=
 =?utf-8?B?M1NVNkxhSjJtdlBZWEt4R1V0OUhIUHlieWd5cTBtZkRaMDlQcWxKVjZnNTV5?=
 =?utf-8?B?L2M4RXlEcHJlL0oxWlp2NU9weFJNakRFdm1kOGFaYWg4TXNTTGhnb2ZZM0k4?=
 =?utf-8?B?K0t5Q1JlZEwvZ1ZTS0lscUJNMTU0b2xkREtJeVh1Zll5b1NUeWlTRTNBNlZ0?=
 =?utf-8?B?M1M4em1QemE5VnNhck5HcjZNNkZjRDRNUC9pQS9aYlhwQW45dzdvcTVNb1dy?=
 =?utf-8?B?Y1lnL3NzMXczRGMwaGpjVitFRWFuR3VmVFBBMytVTldYRVBhQzhiNFNvMWEy?=
 =?utf-8?B?ZzlWWVdNWllkdEc4cjc0NUk0Wm92RUw0VXdXaXMxM1JpeXFyd3Y0MkR6S01i?=
 =?utf-8?B?UUx6ZHptek94dkJ3MzBLaDY3YXhmdWY0NVFrRi9VRDhXQlhuMjl3L2dlM1Qz?=
 =?utf-8?B?UHVtNFpzOUVVTWhwYVVIdzdGTjRIOGxPZTgxb2xOWWF1Yi9TbExQczRNZHkz?=
 =?utf-8?B?c0VBdllRWXh6YUdtQkM4ZURPRzZyZU1SK3lUaU41Qy9XdklJNXh4cUg2VEN0?=
 =?utf-8?B?NkZMZUhSUU1PTW03NXJLRXFVUXNpTXM5Q1ZhQWlzQTdlRzRQUitkOHBZN0FN?=
 =?utf-8?B?akhtSXlTc1Y2KzZjVkwwVzRIeEFtOGdic3hWSytYck0rRWNVSWZ1aVd0dFFD?=
 =?utf-8?B?RHp5TEdCd2tkMDcyRXFVZVNrcHdzRjVDNUxwenRPV3duY09rN2djNWtGenFl?=
 =?utf-8?Q?hD4LIa/GtHRUlMQdtd4/W2TGs7pIQ/Px?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEVIVzR6Uk1kdFpJMnR3SzFFQjBlcTg1aFdrVG5MNkNHZHZOQTJkbzVHdUdP?=
 =?utf-8?B?T3FsTm4rNkI0VlByQkEyKzVNMk1nbFlrZEU3bXpDVDEweTdzZmhSVkV1WnFn?=
 =?utf-8?B?QTg5b2x3ZWlQUkwzTHl1WUZvOStNMEVyemtMV2xLS1lZWDRjUE1KYXRTckVt?=
 =?utf-8?B?Kzd1WWlMcDVPYW85eXpkWFlpSDJjL1l1dkc2YXM3Y2xLU2lmdjJEQzFFbW5S?=
 =?utf-8?B?MWsyN2djRWYxMk9WR1JpMTBIL1B6TnFPOUdFVDVwb1luSyszbDFaNjg2K1dO?=
 =?utf-8?B?WFhiSUlJaDRPTThLUDR3ZHREMmE5d1J0VzM4Z05KMmJuU1dpcWVWSDVrblM1?=
 =?utf-8?B?SG5aeTdSS2dwRnl4cExsTUdyUG5RMEtFb1VEOXJYS0NWWm42OFlNTkFDTnpu?=
 =?utf-8?B?b04wOWhLL1Jka3psVWltcnNnUVhJMXViL2JrT09tV0pqakMrcG1LM28xcnQx?=
 =?utf-8?B?bjd1QlFmeSttLzhmQlI2VG8xRGFJYmNjMFBSSWZTUG9rdnE5MFlkTUNYTXNH?=
 =?utf-8?B?VXc5MUQ2aHVrY1RLcE9scHdSeU9UNmw3Y24yVGt3aWI3NWdCeDVsRkttN21M?=
 =?utf-8?B?UHMzalVSZFFCN0crRVFiVE10NGVqdGxHMzJiejRyYzNqRnlTRnRZQ04zemVv?=
 =?utf-8?B?aEdGY1VNMkxVaGNmOWVVdGZQemZ5VlRTM3BnSmVwTjJ5dlhiUisxSDlyU0o3?=
 =?utf-8?B?Y3g5ZVNRdEQ4Ulh0S3puYmhIUEdmNmQ5Q0NKK3pFQy8vVVBhZURJTXByWWVI?=
 =?utf-8?B?S2F3QWx0NHkxY2hyajYwemRadzczMWk5UkpTRjhDY1lYOERtOVora0Vvb2dH?=
 =?utf-8?B?ZFN3MERHcFNvdjVyaXpVU0ovR1JnV1NqNlVSbG9IalBMVmhmazJuY1czM05h?=
 =?utf-8?B?LzBFYTFxcU1Tb2M2OEcvYS9YWXAwblgwUzFSdHZBMnMzK1F6Z09OWXQ4L3RW?=
 =?utf-8?B?TG1zRDhoOTFLWk92SkVpb2REUjlWRCtKSFpOUEVHSFJyRldHdEs1REZLUVR5?=
 =?utf-8?B?b1dJZ050cXU5Yzcyb1c1V2w3UzZMZVpGWnRGU1VZTjA5d2ZIYjl0UjZzTitI?=
 =?utf-8?B?ZzJuTFVPcTRUeFNaUTNSanFkbDdCcXM5MGpzcnZVZDRqVTdXM28wdWRDaVI1?=
 =?utf-8?B?VWFKREJVWlJ5TzVFd2QyMDNMdk1GVWJ3b3h1WWVRWVVRbHFsNWpmWkpOM0RY?=
 =?utf-8?B?NG8zR0NuaFIwNnppVjd5VTNLcUNRZHNUdnUwSkYrL1YwUGYxM0pvVUMwYmZI?=
 =?utf-8?B?ZDJRaXp1SEJidTNacE5jb1FOdEEwNHVhYi9zNlU5Q0dodk1XaDRVQzdiS2JC?=
 =?utf-8?B?cmwzYmY4R3diRTJ1Qlc2YTVZd0h6ajRLajBtZ2k0MWxFd0FVZjZFdlhVUHZP?=
 =?utf-8?B?bDlUMndTVjJzK0F0a1NSUkNXdy9aeGFlMDg4ZmJJcHZmWHRtYnZlRk9NM05R?=
 =?utf-8?B?NHVGdVQ5SC8zU1BaMGF0RlRSdmFPalpwYmFPanBTdXM5a3lmd3lxcEg1TlVH?=
 =?utf-8?B?SHJyUHNKV0JPcWtuVGE1TnFMd2g0WUpROHd5MkN6QVZlUlMyWEFFZWgyRExL?=
 =?utf-8?B?aGs0T3l4cUVGYlUxOTdkTXJyMUFaVFhDRUoxUFY1cG1GUzRneEJjOU9MTWlX?=
 =?utf-8?B?NHhITlBVVUQ4MDdocmJHNmJEN2FvcFRLV2pLaFJIOFdFYkJUcnU4S21jdUxh?=
 =?utf-8?B?dVUweGw3V0xsMUxZYVFoOW1rNGNuL3NrU1B6a1VuVUZiUDdZek9halREdFdW?=
 =?utf-8?B?UVdxUVMrQWxCdE9XYmVCOWIxNFJFQUR0VnNMbExOaFRhQk9WM3pYaGp2SHJ0?=
 =?utf-8?B?Ny9zc2xGQTZIcmNZVFdGNHY1SzF1cWxtdk5kb3V0MU10WnJ6eHhBSm1DMlBG?=
 =?utf-8?B?SlE1cHdUSXE4K2J2QnE4OWRPSTVDNkpXMkNaa2IyWThQVGR6cmw2YjRPbk5B?=
 =?utf-8?B?eHhSRk5tQ0t4R1pvSWV0dDZIanBYa0dSQTY0N0dOU1NURTBRL2o1b21HRVZo?=
 =?utf-8?B?UEtTT0lBWTBianpLTytWTEUra2lRa1VZeit0dXZGdWxTMTlxT1lpejY1U3BJ?=
 =?utf-8?B?c3pWWk85YXQ2RlBkcHBPZ3E2bnlIbkhWVmVwZktWWFl3eGs1clFiTEVDRHpF?=
 =?utf-8?B?ZitHRkJLZFpJMklVemZHd0todTJzWlZkaklkMFpNVThwNGZxZUtTdDhEcnIz?=
 =?utf-8?B?UlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 027b1a14-2867-4e3e-e1c3-08de1bc372f1
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 16:59:00.3798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i7dngrK84sVHgFIaTzX0nbqjcRvCK2k1t2dK6Yj9l/M+WGQPAjXkJ1WdQFZ1TxWldM4zCt7kaX4XWIfjErqBrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5915
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

Quoting Govindapillai, Vinod (2025-11-04 13:35:43-03:00)
>Hi Matt,
>
>
>On Mon, 2025-11-03 at 16:15 -0800, Matt Roper wrote:
>> On Mon, Nov 03, 2025 at 02:18:12PM -0300, Gustavo Sousa wrote:
>> > From: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> >=20
>> > Configure one of the FBC instances to use system caching. FBC
>> > read/write requests are tagged as cacheable till a programmed
>> > limit is reached by the hw.
>>=20
>> What exactly is "system caching?"=C2=A0 We have lots of different caches
>> in
>> current platforms, and it's not really obvious to me from the
>> description here (or the bspec page) exactly which cache(s) are
>> involved
>> here.
>>=20
>> Is turning this on always a win or is it situational?=C2=A0 I.e., is the=
re
>> any potential for display memory traffic to fill a cache with FBC
>> data
>> by evicting data that was part of the CPU or GT's working set?=C2=A0 If
>> so,
>> that seems like it could potentially harm the performance of other
>> workloads running on the platform.
>>=20
>> Or is this whole thing about a completely new cache (unrelated to
>> and unusable by anything else) which is devoted solely to FBC?
>>=20
>> >=20
>> > Bspec: 74722
>>=20
>> You might want to add 68881 here since it has a bit more information
>> about how we're actually supposed to set the fields documented on
>> 74722.
>
>Okay I will include that. I guess, the HAS also talks about "system
>cache" - no further explanation. But only a fixed portion is allocated
>specifically for the display use and is "configurable". Motivation is
>to reduce to memory subsystem power especially in idle scenarios.
>
>>=20
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 47
>> > +++++++++++++++++++++++++++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc_regs.h |=C2=A0 9 +++++
>> > =C2=A02 files changed, 56 insertions(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > index 24b72951ea3c..e2e55c58ddbc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -127,6 +127,9 @@ struct intel_fbc {
>> > =C2=A0         */
>> > =C2=A0        struct intel_fbc_state state;
>> > =C2=A0        const char *no_fbc_reason;
>> > +
>> > +        /* Only one of FBC instances can use the system cache */
>> > +        bool own_sys_cache;
>> > =C2=A0};
>> > =C2=A0
>> > =C2=A0static char fbc_name(enum intel_fbc_id fbc_id)
>> > @@ -569,12 +572,51 @@ static bool ilk_fbc_is_compressing(struct
>> > intel_fbc *fbc)
>> > =C2=A0        return intel_de_read(fbc->display, ILK_DPFC_STATUS(fbc-
>> > >id)) & DPFC_COMP_SEG_MASK;
>> > =C2=A0}
>> > =C2=A0
>> > +static void nvl_fbc_program_system_cache(struct intel_fbc *fbc,
>> > bool enable)
>> > +{
>> > +        struct intel_display *display =3D fbc->display;
>> > +        u32 cfb_offset, usage;
>> > +
>> > +        lockdep_assert_held(&fbc->lock);
>> > +
>> > +        usage =3D intel_de_read(display,
>> > NVL_FBC_SYS_CACHE_USAGE_CFG);
>> > +
>> > +        /* System cache already being used by another pipe */
>> > +        if (enable && (usage & FBC_SYS_CACHE_TAG_USE_RES_SPACE))
>> > +                return;
>>=20
>> Rather than relying on the current register contents, should we be
>> sanitizing this on driver probe (in case the pre-OS firmware already
>> set
>> this up) and then making our own decisions (as part of an atomic
>> transaction) about which pipe to prioritize after that?
>
>
>>=20
>> > +
>> > +        /* Only the fbc instance which owns system cache can
>> > disable it */
>> > +        if (!enable && !fbc->own_sys_cache)
>> > +                return;
>> > +
>> > +        /*
>> > +         * Not programming the cache limit and cache reading
>> > enable bits explicitly
>> > +         * here. The default values should take care of those and
>> > that could leave
>> > +         * adjustments of those bits to the system hw policy
>> > +         *
>> > +         * TODO: check if we need to explicitly program these?
>>=20
>> There's no hardware default documented for the range field, so unless
>> the pre-OS firmware sets it up (which we probably shouldn't rely on),
>> I'd expect this to be 0; I don't think that's what we want.
>
>The Bspec says it is 2MB. But according to the HAS it is "configurable"
>and I clarified that this is at the moment 2MB but can change. So I
>read it as something already configured and set as the default value to
>the register and it could be changed by the soc policy. Thats the
>reason I thought it be kept untouched. Will forward on email
>conversation I had.

FWIW, I checked it on a NVL system and it was zero prior to loading the
driver.

--
Gustavo Sousa

>
>
>>=20
>> > +         */
>> > +        cfb_offset =3D enable ? i915_gem_stolen_node_offset(fbc-
>> > >compressed_fb) : 0;
>> > +        usage |=3D FBC_SYS_CACHE_START_BASE(cfb_offset);
>>=20
>> And if something *did* set this up already, then OR'ing a new address
>> over the old one isn't going to work.=C2=A0 We'd need "(old & ~mask) |
>> new"
>> to ensure we don't have leftover bits still set by accident.=C2=A0 But i=
t
>> would probably be better to just avoid RMW-style handling in general
>> and
>> build a complete register value with exactly what we want rather than
>> trying to modify the pre-existing value.
>>=20
>> > +        usage |=3D enable ? FBC_SYS_CACHE_TAG_USE_RES_SPACE :
>> > FBC_SYS_CACHE_TAG_DONT_CACHE;
>> > +
>> > +        intel_de_write(display, NVL_FBC_SYS_CACHE_USAGE_CFG,
>> > usage);
>> > +
>> > +        fbc->own_sys_cache =3D enable;
>
>Okay. Thanks. Will fix that!
>
>>=20
>> It feels like instead of having this as a boolean flag in fbc, this
>> should be a pointer/ID tracked at the intel_display level.=C2=A0 E.g.,
>>=20
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display->sys_cache_fbc =3D fb=
c;
>>=20
>> or possibly converted over to something tracked with atomic state so
>> that we can make better high-level decisions about which FBC we want
>> to
>> enable this on as various displays get enabled/disabled.
>
>Okay. Will check this and get rid of the bool from the intel_fbc
>structure! At the moment we can allocate only based on the firt pipe
>enabling the fbc. But may be in future we could have some logic for
>this I guess.
>
>> Matt
>>=20
>> > +
>> > +        drm_dbg_kms(display->drm, "System caching for FBC[%d]
>> > %s\n",
>> > +                =C2=A0=C2=A0=C2=A0 fbc->id, enable ? "configured" : "=
cleared");
>> > +}
>> > +
>> > =C2=A0static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
>> > =C2=A0{
>> > =C2=A0        struct intel_display *display =3D fbc->display;
>> > =C2=A0
>> > =C2=A0        intel_de_write(display, ILK_DPFC_CB_BASE(fbc->id),
>> > =C2=A0                =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i915_gem_st=
olen_node_offset(fbc-
>> > >compressed_fb));
>> > +
>> > +        if (DISPLAY_VER(display) >=3D 35)
>> > +                nvl_fbc_program_system_cache(fbc, true);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static const struct intel_fbc_funcs ilk_fbc_funcs =3D {
>> > @@ -952,6 +994,8 @@ static void
>> > intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > =C2=A0
>> > =C2=A0static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>> > =C2=A0{
>> > +        struct intel_display *display =3D fbc->display;
>> > +
>> > =C2=A0        if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>> > =C2=A0                return;
>> > =C2=A0
>> > @@ -959,6 +1003,9 @@ static void __intel_fbc_cleanup_cfb(struct
>> > intel_fbc *fbc)
>> > =C2=A0                i915_gem_stolen_remove_node(fbc->compressed_llb)=
;
>> > =C2=A0        if (i915_gem_stolen_node_allocated(fbc->compressed_fb))
>> > =C2=A0                i915_gem_stolen_remove_node(fbc->compressed_fb);
>> > +
>> > +        if (DISPLAY_VER(display) >=3D 35)
>> > +                nvl_fbc_program_system_cache(fbc, false);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0void intel_fbc_cleanup(struct intel_display *display)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > index 77d8321c4fb3..592cd2384255 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > @@ -128,4 +128,13 @@
>> > =C2=A0#define=C2=A0=C2=A0 FBC_REND_NUKE                        REG_BIT=
(2)
>> > =C2=A0#define=C2=A0=C2=A0 FBC_REND_CACHE_CLEAN                REG_BIT(=
1)
>> > =C2=A0
>> > +#define NVL_FBC_SYS_CACHE_USAGE_CFG=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _MMIO(0x1344E0)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_START_BASE_MASK=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(31,
>> > 16)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_START_BASE(base)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_MASK, (base))
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(15, 4)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE(range)=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MASK, (range))
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK=
(3, 2)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_DONT_CACHE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_USE_RES_SPACE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 3)
>> > +
>> > =C2=A0#endif /* __INTEL_FBC_REGS__ */
>> >=20
>> > --=20
>> > 2.51.0
>> >=20
>>=20
>
