Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E42B8B2E5
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 22:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50AB210EA86;
	Fri, 19 Sep 2025 20:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mtWoMRbI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16FD910EA86;
 Fri, 19 Sep 2025 20:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758313210; x=1789849210;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=sutP8yhjGBsVbUUxOEWEoNWL6Q0eOCa+Tb6nxdIOf24=;
 b=mtWoMRbIJshcCYKqCMs0CwANpdtMIF0hJ+KX0g/KJ7nEIR2E9EKazWgM
 PcuAqZK+GW3F2+cT80HAMAWNSlvt6aMQ2YbTbfsjI37soeFjBrghfc0am
 9urf+g8WRG66mVOrnv0R5vw0W7obkju7bfOTAj1x7gHoBusveQTbApfVP
 u+dUT4yPyBLULpR6Lenx8VXTL3E+R9eKxJbW+f2yVnKQsQffSxcYZL+eT
 YEyjotTxNHJD8fQsAL39rxMpFvWq1Cvw7JOuDfafQnqlFBiDYwfb7vsQH
 tCUPICA8z4F2NSVQQw4fWyZsiV2nUfncGTVKV10Z3kYn8Cb/OXYDaf7fC A==;
X-CSE-ConnectionGUID: 8nmL9xW3QQ+h9cs7atyzfQ==
X-CSE-MsgGUID: 8leWyttpT9qAf2HSAs1Vpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="60820288"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="60820288"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:20:10 -0700
X-CSE-ConnectionGUID: 57HgeFllR/6fRLd5cUplJQ==
X-CSE-MsgGUID: +JngmLzGQV2u31MnvMK34A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="180157520"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 13:20:09 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 13:20:08 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 19 Sep 2025 13:20:08 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.8) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 19 Sep 2025 13:20:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M+k5XMa0BLWUFCYPwzOWmFHOAAJetp2I1AlqeGm8bYT8uOcUIzR0sczI24zoli3cN1Xv6XkiZw5TKDjDFKybM2MRaxGPyBeE+JqqCIn1lczi0+4M2JzQFeZZFYIb/FeFVtS6RORE/LS9OEve8MCgCsxQyPiHg0PF1KrXFP0eHtDywAKKMeSZM+lIlSO9RcwxfIKO2BlQQj7X+bhZp+eujqPbwU8AuNBuNscTdozQAyAR8P1NV2eWPBazUqbCH5fh1G/Wu+A7FYXFGeWl+s++7hR/1gObIOssYVFl4k39JwoOz/qH0Zyry8JhkPgEtwuDqhgkb6wN8mKc/DNQMoc7HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lT8aD4Ss7i7hMkeDQIZvRhoJ/SXK/a9WlqtZgI8bLLY=;
 b=Mi6t8OYTwAR9OlWvWFsVd9VxvzxwqddOEW69foAGIsfmrCAr2L1yNXevXfUVpSxViLMTpdj87KSq8qgKlqLPYZ4vF+zBiZ4bd2Fjrg3uYLyTZuCEqiXqP2xlevta3y6/GdyY4CVh6hemuA15PTGjqFd7uS8XH9JRViYZ0TKxoKBzvdlqxe2KfC5BDA1Ehl/BYMqaSCjUMwOmpZa/B5pHA3wBXWin5XtTIHQq8vg7Nd008mEReti4pf3EcZGgx53eAKguGt+HZHN749Spfi7jnfq9WTiPj37NfKuC2EGd7CebdonosiGPxeSAv5XDkE/NgWnDYDwipJc17ZtWLWKUYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6807.namprd11.prod.outlook.com (2603:10b6:806:24e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.22; Fri, 19 Sep
 2025 20:20:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9137.012; Fri, 19 Sep 2025
 20:20:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250919162233.1624905-2-dnyaneshwar.bhadane@intel.com>
References: <20250919162233.1624905-1-dnyaneshwar.bhadane@intel.com>
 <20250919162233.1624905-2-dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH v2 1/3] drm/pcids: Split PTL pciids group to make wcl
 subplatform
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Fri, 19 Sep 2025 17:19:55 -0300
Message-ID: <175831319590.1987.1863648853233528@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0120.namprd03.prod.outlook.com
 (2603:10b6:a03:333::35) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6807:EE_
X-MS-Office365-Filtering-Correlation-Id: 39776930-b5f7-4c1d-191b-08ddf7b9eaef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VmViV2NJd1E5WDRWSWUyN1d2NHcvVVgvTkhHZTI2dFdNbWdNWStVRXVJcjdv?=
 =?utf-8?B?d3M0VEthSWxrUnJMVFFSU0N0VnNERkVrNGxodGttMnNuM21PSTBhWHdXT0J0?=
 =?utf-8?B?STNVczMvTDNqTkNoa3ZTaWZJVHBhTlRZMEVLZVJBa0VIRzFhM0t6SFBCY2Za?=
 =?utf-8?B?dEJUQ0lkdnMwUTRmMzd6TUhnZGJXMng5eVUzV2d2WVpPcHlqenozM01WSnJG?=
 =?utf-8?B?V21qM2d3NHp1a3dEcEg3WVhZeUVabjllaFE2eHc4OVR1dHlMbFRaL1Q4VW9N?=
 =?utf-8?B?S1Q3S0ltZXo4RmNMbkE4SW1qWDBjRWZPUWZzcHArczB0RTFzbW5Gays0ZHN2?=
 =?utf-8?B?cFc2VTJkQ3hITTY2Wi92eDZIY3BZUFVneFpqT1dzZWdlR0VTUmhNeXFpOFNv?=
 =?utf-8?B?bDZNMFRudnhReUF5NEJLd1k4SzRkSUNaS2FrMVdzS1VUNm14azdaTjU5R0ZQ?=
 =?utf-8?B?QmM4amloeVpKdnZ1ZEhLbTgrelVQcEVwOThtR1VPczVEZkVzRHN4dFgyWDl1?=
 =?utf-8?B?MCs1YS9XT3Y2djBMZHFEdThyMmtuakpxeFFoM010STBFSEs3WERGaFdFNC92?=
 =?utf-8?B?RVI1NE5vSDlTekQxV1pFazBzMnRLK3V2RldsanpHeFYyMTRyYkNYeVY1My9J?=
 =?utf-8?B?YkZnY3dXWHJ6TWFBMVVEL043bWthNEdNUVZIQ0xKUFBDRlo1bHpoMkVvYjZO?=
 =?utf-8?B?dzZBQkNKMXhUKy8zRlhDdk84U3FZaytBY2x0ckppckpUcm9QK050ZU9aQzdO?=
 =?utf-8?B?R21oeVQwYmVOUXZ1Sjl6VHZqU0hCWGZJdXY2NHdWUU8xTDg1L1ROT2gydUxL?=
 =?utf-8?B?cFdUajYvWTNGMzNZSmJCclBmUFNQay92eVptQkV6WU9aQ1JaMGRUUjNVNU10?=
 =?utf-8?B?LzFJVzBsdWtKYmEyUHR6b0ZwbXptQmtCQ1dHbU1xSFZMZUQwVEE3azQzMU5l?=
 =?utf-8?B?Mng4QXY5RVBTZTFlQWlxd2l3VEp4VXVvbXdpa1pFMUt0SnNjbkkrU0JNMHBI?=
 =?utf-8?B?bnNIOEFsanZNcjV6TGozYSsyWmdZNW5YaVpQdmx6VWRHa2dtSlVvTThyMGpu?=
 =?utf-8?B?M09JYmNPQWFIcDVmWWZSUjZDeXVNQkFFWms2RFNyK1orclhRNy9UKzVobHcw?=
 =?utf-8?B?amd1YXo2eTJ0N1NhdTNLU1hVRlc2eXBscFRHZ2lrSGJEZjluRGV3cjJobWp3?=
 =?utf-8?B?TStrdVR3QWVZcjIvMG5rbkdoS3lEdWJDMVNicGQ3WXZHNmNiS1R2d3NkeEhC?=
 =?utf-8?B?TnA0OC9qUnJETzRvd0ZPZUNPNEN0M0t1dk1yNy9EZ1RkTjRsMWkrRE83RXYz?=
 =?utf-8?B?WWVETFkrZnN1M3BpSWNxTmRVV0JtUGdEN3lqcGNQVmxKbjUrdjNVQzltdkJy?=
 =?utf-8?B?M3dVZkFZdTBFTFZBTWZvL3RFeE9OckpPNzF4a0locDU0ZzhOS0NMNmExZnNi?=
 =?utf-8?B?Ry96blJUcXlMeU4yNFVEVE5objMzcWtkQlJETHFRQ0MySFFCdEpsUm5pWkZT?=
 =?utf-8?B?R1NSRlZKYzZPNXh2WWNCUWVpWG1HbFNadUl1cjFxS2xIVVVmTXVhdHVNWDIz?=
 =?utf-8?B?NlhsbVFTT1ZKeWRmZFBWc3lLdUZxeFBDc1Y5RjZUQWd1WWhNaVJ6bVpwWWx0?=
 =?utf-8?B?TXhhOEQ3N0dIdlgwL0E3NHFsNXFmVzI4UDJNVVVoOHlqaUU5K1F4Qit1b3hs?=
 =?utf-8?B?WXJreG4xbUNURzZlNmNEQjFEdWkxb2VBREFaQlVkL0ZpV2pWKzVSL2docm56?=
 =?utf-8?B?dEM4QzZuMXVKdU1rUnBLMElWVzVwb3hGVTNQZUh1MTNYS0ZseUlEK2RIcW9G?=
 =?utf-8?B?TXd2VDZRZDFMbzY1R00xalJYbUwwWXczSjZrNmVxV3V6ajhsR0JRNW1WZHQw?=
 =?utf-8?B?endCT3NseWhjQTJlYjVHdFpVL0gzOUZ2Q2x0bXkyUFVjMnBQcGF4YzE3a3V2?=
 =?utf-8?Q?AQ7cKJAiExs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzJ3RGl3MnRkMmh6c3JBcVdaOVdvcmlZaGlmRHRBdDR6L0luNFh3SXM5SFV1?=
 =?utf-8?B?eWZvVExTS3NMMkh3L1NrNnhjSXhWUGVZWVg1UmpqcGwwZUJWZzNyeTZmdGp4?=
 =?utf-8?B?eW0rcGhONkJJQmJwWXlicFgrYVVWNm16OTVGdUNSaHFuczdJbUxCOUVGUG9r?=
 =?utf-8?B?TW1KR2xjb3BxaHJMZnUvM0tNalByMVZjNzlkYm1TMGgzWVpyWElqV1poeEZ0?=
 =?utf-8?B?SitSd3NJOC9oS0lvaFVWMnUvQ2pIS1QwTFI2TDJ3MXBPOUVwYWdGaSthWEQ4?=
 =?utf-8?B?YzdwdmRTeDBTQWpndWFUREtoUnRJajU2VC9GTE5CK1ZiOXJXdVJkaXphblla?=
 =?utf-8?B?ajB4UmdDQXdZdityZlpHMkU5SzNhSDFrdmtLWC9sTlRrd2dxckx0cUhGOUJR?=
 =?utf-8?B?ZXN3dFgxd2ZCT3N4NEQ5bVVscU04djJxOERzbkh2S0szTmJkT0xkYVBrYUFq?=
 =?utf-8?B?ZkRDQlpxd0M0cFNlNktaTXh5U0FpVTJiWFNMNUtXeGJRM0p4UFA1MW80QXk1?=
 =?utf-8?B?ZisxV0tUNklPeWxaUzk5VWU4YVM1RjNSMEZiNkxFdVNiNk5hNEkwSlRqaEdm?=
 =?utf-8?B?d1ZKRzJQRS9MNTludER5ZW1JTlpDSVgvQ0JSSjBNNHBaWnZFdnlqSFRhZlR0?=
 =?utf-8?B?TlpDMTVrYXNXRFdiOU54TzFETUIranZxRkhDZHhTQStTZ0R2bktEckk3Yzdk?=
 =?utf-8?B?TEl5ZTJDWVFWYlNHOTZhN1l6bURLTWhLdUJ2cm1JeFR3Q2VsK0VFSmw2Nlk3?=
 =?utf-8?B?SnYzUUFFVWg5T1BsM1lMQ0FNYzFYYlRZZE5zZ3JES2VzYzMxQVBKNnlVNnNq?=
 =?utf-8?B?azVOL3kxaURaVzlSWmlYL2VFcDZNakZwdk5LM3Q5Y1NONUdSN0VLZTNjMjFK?=
 =?utf-8?B?UWRUVEdHUWdUSSsvcnF2SnBWMHR1dFU5dm1BVVl0NGMrRVZrYWMvZWxpdHZ2?=
 =?utf-8?B?NzY0WEpLcnMzUHA1YVpXTzFMNFNXV1F1U2NEWFBmK0tVckhvbEtyMmJjN25J?=
 =?utf-8?B?cDN6QnhGUDBPZEdHa1ZVa0ZaOG5jcHBtcFVUOTJoWnAvMy9jR2xOd3Q2N3Ft?=
 =?utf-8?B?dEwvQnd4QTZsOWgxS3dtOVFMZmVZbElwTk5Ea2NqWGZVT2tUOEllUDBTbTJ4?=
 =?utf-8?B?MWFuVVZmVzJGc3dOeFpxTGRuazcyVndwZ0twcGx0amR3cStWTE9UamhzYWt0?=
 =?utf-8?B?dVhtUHRydDBrblo0MHBQQ3hoNmg1M2x0UVFWenVEbVFTUysxNUJQc2tmM0Yw?=
 =?utf-8?B?Q2xBS1Y0U01qTlU4VjQ3M1VEU1NHZ2lRQWRjZXgxa094OUhkaTFEOWphZ0VQ?=
 =?utf-8?B?ek5iSWMyM212aGN0bkRJZ0dPQlhINCtvQW9uZlh0VmVvWVUrVkpaM2lDU3F3?=
 =?utf-8?B?aE9pTGp3dHdrSXRNZDFMZWx6VWpyRTZFN0pJL0RmaDhYbUMxeGNKekNYUC9a?=
 =?utf-8?B?bnorOHVFY1p5L2lzTnc0RGc2V0xaZGlhdndnVFRZMGxZQVpxRElPRlpJWkt6?=
 =?utf-8?B?MmdXYVdSR1hKcFZ2ci8rYSsyOGxURXl1YmNXRnlsM3BvRXY0WnI4SWZ0N2tq?=
 =?utf-8?B?SEpjZXoxdzZ5VnlmZmlmSHN6M2hmMTBCV0l5RCs4cWp2N0JzbkxEUkhUNUZa?=
 =?utf-8?B?TWUzTDgva1pCbUd6Qkk0Y3dxMFRlR056V3NrL0tOZXZzZ3dYT2Q0Z25MY043?=
 =?utf-8?B?Sjd1THNkdUIxaGs0ZmN1cXYwYTN3UldRRzQ1VFZuTGxIdThaajhiVGZ0d1Q2?=
 =?utf-8?B?TEZWOUw5M09pMzdCUlI4Y0JnWDFWVU9JMjY3NU9LWFdqMFJOQUlsVUFtUDZr?=
 =?utf-8?B?UmZIY3ZBeWdZL2k2ajhNVTI5R0VxcnZqOGYwbXlpdlozU1dUdUxiRWZRc1JH?=
 =?utf-8?B?VDBoQTkreFdyTUxqWFBrbm9oZkFuK24vbGgyUTJoaWZaOU9oNktzMFVGY1JW?=
 =?utf-8?B?SEhaTFFpOUlieHBGdE0vMEZqOFBCSWUrcjNvTzVUR0xaMXh1VnhEM2g1RmNN?=
 =?utf-8?B?azArSEJnUTNXSmxjeHFxejN6TmV4ZzhUdTRRdHpKZkhzbWMySzQzdVZRWEtZ?=
 =?utf-8?B?ejRVUmZtcldLRittRHVZZ3lId1crZWpWUTNFZkxmeW1GMlM0R0FlQXRUVVRG?=
 =?utf-8?B?YWtRU0pDd2lkV0NkRERsSzExbCt2T1J4ZlNCTUxTNk1Eb0xwekVIalI2VlQz?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39776930-b5f7-4c1d-191b-08ddf7b9eaef
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2025 20:20:04.0120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RMdt/QG2iEU+xn+bifXGCI2aKnXNzdZYDrIrIw4phyDfjSQY17g9+KSbdv4Js/dZFt+ADDLEO7KGVhyuAwcwcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6807
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

Quoting Dnyaneshwar Bhadane (2025-09-19 13:22:31-03:00)
>To form the WCL platform as a subplatform of PTL in definition,
>WCL pci ids are splited into saparate group from PTL.
>So update the pciidlist struct to cover all the pci ids.
>
>v2:=20
>- Squash wcl description in single patch for display and xe.(jani,gustavo)
>
>Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_device.c | 1 +
> drivers/gpu/drm/xe/xe_pci.c                         | 1 +
> include/drm/intel/pciids.h                          | 5 ++++-
> 3 files changed, 6 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers=
/gpu/drm/i915/display/intel_display_device.c
>index a002bc6ce7b0..a9a36176096f 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -1482,6 +1482,7 @@ static const struct {
>         INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
>         INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
>         INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
>+        INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
> };
>=20
> static const struct {
>diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
>index 77bee811a150..3f42b91efa28 100644
>--- a/drivers/gpu/drm/xe/xe_pci.c
>+++ b/drivers/gpu/drm/xe/xe_pci.c
>@@ -376,6 +376,7 @@ static const struct pci_device_id pciidlist[] =3D {
>         INTEL_LNL_IDS(INTEL_VGA_DEVICE, &lnl_desc),
>         INTEL_BMG_IDS(INTEL_VGA_DEVICE, &bmg_desc),
>         INTEL_PTL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>+        INTEL_WCL_IDS(INTEL_VGA_DEVICE, &ptl_desc),
>         { }
> };
> MODULE_DEVICE_TABLE(pci, pciidlist);
>diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
>index da6301a6fcea..69d4ae92d822 100644
>--- a/include/drm/intel/pciids.h
>+++ b/include/drm/intel/pciids.h
>@@ -877,7 +877,10 @@
>         MACRO__(0xB08F, ## __VA_ARGS__), \
>         MACRO__(0xB090, ## __VA_ARGS__), \
>         MACRO__(0xB0A0, ## __VA_ARGS__), \
>-        MACRO__(0xB0B0, ## __VA_ARGS__), \
>+        MACRO__(0xB0B0, ## __VA_ARGS__)
>+
>+/* WCL */
>+#define INTEL_WCL_IDS(MACRO__, ...) \
>         MACRO__(0xFD80, ## __VA_ARGS__), \
>         MACRO__(0xFD81, ## __VA_ARGS__)
>=20
>--=20
>2.51.0
>
