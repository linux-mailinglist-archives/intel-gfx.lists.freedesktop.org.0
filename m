Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD579BF8B25
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 22:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C530610E63C;
	Tue, 21 Oct 2025 20:19:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUksvV/U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FFA810E63C;
 Tue, 21 Oct 2025 20:19:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761077965; x=1792613965;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/SoZqq4mPYrqT59BK0XtZA4vULSgOGg6i1dpUupWIMs=;
 b=LUksvV/UemJuWdpiKs+aVASJsahKiN5Wd24G+4XQruXxChS1ZZqb1Hoz
 pyEG35cDbovCIU71tQKyZx/3OIS7Z/ZwjoM6lyw91lyagMBBhgS5Wmigw
 u8KI5I+mjI+pa+Zn+jlbYKFsG7A7adqAvygIOEWRssJUT/3kC27hF60vU
 TsJBNIjB2ysn+x7O7whbFxU7EcXNr4d6bFv6kdWJfAxgflHf6P/x6i/dk
 +yN2xF8a2L4mb2+Yg/v6pbho0ttgGM6pmCswhthfwdMKmPGgTkUY9Hipc
 dJRUJV8RXn5XoyTIuJkUSqpZVkP/+rfaUvj+l3TEh+g+Ky9bCZUPJa9wC g==;
X-CSE-ConnectionGUID: 4J3Pf1DpSsWx4ya+tlMR3w==
X-CSE-MsgGUID: aJ/12LQxTV6o3W8mEEkZ+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62424293"
X-IronPort-AV: E=Sophos;i="6.19,245,1754982000"; d="scan'208";a="62424293"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 13:19:25 -0700
X-CSE-ConnectionGUID: PbHQ+b/lSzWQN7irym29kw==
X-CSE-MsgGUID: kPVe3iJmSU22iQW/YvTgcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,245,1754982000"; d="scan'208";a="188796430"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 13:19:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 13:19:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 21 Oct 2025 13:19:23 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 21 Oct 2025 13:19:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nsw+qx5zmlsf2kJ7Ec05ZkkUqSxY2fbg58iqHm5+85VVbthNtEhI4hJqPt85LVW8nND9v3N00x0+qiedukyb8vnt42DXbxVr6uZpvygGXaiU6NGaVyxuQYJbQC9dBigwuwjJdB/sXBgSZfcRy8m7OANvQpyukpKqZG8E8mk6VPQU4f1ZpQxZ3UTHIti6CUEGdGGthvhbFvejejWUyrqUFtE4Z3sLHbHjPrmgO0Xpvx1DJWG3SRC6lpcZImZTn04OSZKJeL+Hns+LVl3NDSF0J9EK+EquHbnl54W2rjjjzXgVL0QiyfL84wI6YNJvTB8MznIqll5iwfFit6aoJCSWpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tlfvwtrDJ3AFHHm9PnVzOPzfcHifdZVTvNW29nNORJ8=;
 b=YfHBZs9XbtPDZV75/QC4eTewSn7eBv2179SDSO2oD2xZR2K6XPdFaA+fmzcgeqFkCx439nGovsRSQGgZ6bKjeS0OqbFyKu5REbrdgbM1sr0t3LeCBVti69m+k3MxR1DTu/qyxY808+ph0V28NOqTP1faV96soVaFRkOBsOdlZl75iL8RbgU7pXa7I7zNyIzCACG+GmsLoAGpqqCw+dgwkdmbSIGprbXVbiRHpLutJdRZx9FUIWRHd5o+i4+WzofSShyblZ8a0HgsOiza7M4WOvCObDm4bbmVeCLy68g17bEDZT2IosNKDOoF46zPNVVOoPHDljMWA+eODHc6wS55Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by LV3PR11MB8766.namprd11.prod.outlook.com (2603:10b6:408:212::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Tue, 21 Oct
 2025 20:19:21 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9228.015; Tue, 21 Oct 2025
 20:19:21 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <907234da-a6a7-42d5-a7b9-bfbc713d4d0c@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-30-d2d1e26520aa@intel.com>
 <907234da-a6a7-42d5-a7b9-bfbc713d4d0c@intel.com>
Subject: Re: [PATCH 30/32] drm/i915/wm: don't use method1 in Xe3p_LPD onwards
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 21 Oct 2025 17:19:15 -0300
Message-ID: <176107795541.3231.13088977991389808325@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|LV3PR11MB8766:EE_
X-MS-Office365-Filtering-Correlation-Id: bb680712-6c81-48d9-e9bf-08de10df1e90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MEpaa0U1U1NJdFZwdVBFaW5xclpPelpoWkVSN0lVK1ZoQzkwWVZUN2t2MVBp?=
 =?utf-8?B?eGJBb3htZnZZR3p5LzdUYW11RGVGREh0Rk5NLzFrSU5Ta1NMcXVDRkJBYXEy?=
 =?utf-8?B?RlhaTjk2TmowelRFZ0o0OHl4bFd0MWh5eHVmU204cnYzdGpUT1g3WHZoQjV5?=
 =?utf-8?B?QmFrZ0dLa25mTFp5cnVENEtMS3p6VlVhUEFkc2NFWG5sSTdaYjNBQXVJcXEz?=
 =?utf-8?B?NjRoVVdFZjd6VGV3eUVpbnhtcEg2Tkd6dWhTQ0hJSzlwMUZ3U090aHVka1VW?=
 =?utf-8?B?SmZGSkY5eVRKaDJmVEFpSFk4dktod2ZZL0RHN3ZVN3NCc0lGRXJ2OXZZb0NO?=
 =?utf-8?B?TjhEU0IweFhPNWlScURyVHdKSnRTWVMzRmtoZXNwd2NWMll0dTVDZ0owZkVw?=
 =?utf-8?B?Y2FYUEM3dzNSdUE0SWpvSUFyVFF2RWVDVkc2aXNPMjRYdXlQL0tEMnZOTnZK?=
 =?utf-8?B?TU44NlJNeUpSeXpiOGl6UFoxeGpPdFEvd0FuL1RzTkNwSVNVTUpIQTJSWXE5?=
 =?utf-8?B?Q3B2Y0dScVVmUnQrazFQOTdDcXdzL3ZDQ1NyZjF5SUtOYmhqenNsNzNHR3Mz?=
 =?utf-8?B?QUlQVXduOG44THNuak1JMldSMWRoTXdtMncrVzdmV3J6djU5MUdacGxTVFFE?=
 =?utf-8?B?T0c5QXJtbXh5Wk5zVmlobklLbUxVZ25Ddk56dzRPbFd1MXZzQzNXVzVQM1VP?=
 =?utf-8?B?SzRIWURFUWY0MkdJQ2NYWnRsQXU3UWVVbzFSU0oyKzJEa3VUOE1VT0JmLzZL?=
 =?utf-8?B?RmNTQmJ2OHNjOHNULzNKQXo0UTA2ekM0MkVEMFMvMzh1MzBJYk9la0JZZkhl?=
 =?utf-8?B?K0VCMyttWDRFYVhvRGxzYkgwTDBBWnVwY1h2V0gvRTNKTXJmbWVKZzZHMHhX?=
 =?utf-8?B?N3BqNHhFVitvWnI1SHZJbzVUUjBKV1VLalRHa1NKekNreFJRd2VNWU1qN1FS?=
 =?utf-8?B?U3o3eVJOZGtoMG9scnpiMkNaQnBITU9tdk5RWVFqQU1sMERhNnhjSkF3anRK?=
 =?utf-8?B?bW1DYTdOcGdZemp0bGdDMjYvVHlHWGwyOWJBVnBXODZtQWdwZHorcUd5ZzB5?=
 =?utf-8?B?dG5QZDc4eVo1UjhIeVJGK01IWTN2ZUdESnR5K3o0eXFiNDJoTGRwRnpVSm5G?=
 =?utf-8?B?M3YwS213OER2UmVNYW9wbkZRUndmaTVyZitobng2NGRMQitVQTh6L0QvVklt?=
 =?utf-8?B?cHpGZEx0d1F0YXh6QkZtQXc0enpUYkxQcXZ4Z1F0MmpnQ2VscHpDbEV2MWZP?=
 =?utf-8?B?OUhrR1pwY3lxaGg0bkwxRk1kSndQNC9ycitBTEF2amthUFpXeForeHNTemVL?=
 =?utf-8?B?djV3dm5jV1lJN2txd3VBSWh2SjliaGs1YmFkVXhpQnFRTW1nR0ZkTFhlcGFQ?=
 =?utf-8?B?MWZQQmI0cXNUekY3QTFrbDkyNUtKeUZLRkpxU2tkdlQrZ2MrRUxJUFpWd3kz?=
 =?utf-8?B?KytxQkRBSER0SlIvUm5VZ2JkK2ZJOFpSQ3hBTmhnb3RnaDdXRW10UitRWWpj?=
 =?utf-8?B?enBmYVZTdnErVzBxeUFmTGc4SllXcHhuSThmZUxwOWc3bTN4MjM0MGVBT3Ew?=
 =?utf-8?B?RDdTTjZtT0xTamZSeVhTN21BM0NRdWdWcHdlS1F3ZzdkdC9HZnh5SXdEU0da?=
 =?utf-8?B?ckIxc3VLUDc4bXI1djJiRGhOOHA0V3JBV3Iwb3VzUnEzS2ZUQ3BncjFzVGhQ?=
 =?utf-8?B?VHJBTnNKeHJmR0hKNElOMzRaTkRXS05OaW42TE5uWFh2QmwyZU9SY3N1NGJj?=
 =?utf-8?B?eXI0YVJmaVdsSENPNWV3akt5QStOM1l3SmFTSHpLNGZiNTJIUUswa0szY00v?=
 =?utf-8?B?SUtzQ2p4REdKVFdEM0tZakNIVjM3TkJjYlJYQzJJTSthWDFvV0Q5QmRwVGVu?=
 =?utf-8?B?WjcrQjYyZDVxTTN5ZERtWExGb3g1NVl5OHhhd1hKRVZTM2tkU1R1eFlJVzBm?=
 =?utf-8?Q?bEm9fB184W0JAu0Mu7HNoQgzsUuD2mJ7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2ZsNitpY1dGTWZCYlNhN3ZxZzZkL3dnaHorcUpRdmlDU3pIL0tnL2F4UHMx?=
 =?utf-8?B?bW1Kck1lZTJQbWs5bjgxVTdjOVVEbWY1bUVHekhUbndtVlcwL2FKek93UmhI?=
 =?utf-8?B?SWZnc2x2RHVCd24zWTYrUHEvdWJteDdkMkptN0cyM2l3bExwKzF6RStHNStY?=
 =?utf-8?B?clZPL0d5MTIxL0QyenRURXlsb0ZtUjJzQ2tyRFp6R2pvK1ZCcXpyNjJ6STdW?=
 =?utf-8?B?WUpXa1N2cXpzWWhsaXdRbE01VS8rNW9VcnFZL2R2amEvOEVmS2crZE56MXhQ?=
 =?utf-8?B?YUc4b2k3czFPWHBLWXRaeVNBWXhtN2RudEhnbk9Rd2dURm83UVJ5NHA1eEtB?=
 =?utf-8?B?Vkg4bU5lVjVIa3o3azdSYUdEM0ROWUdrZTR6dUdkWFhzbWw4NmROc1d5NkJC?=
 =?utf-8?B?b0VLM09qeW5LZUtRV3JSM2h0ejN4SEo5dmkyTFdGZ1lLRThzYzJrc2Y3ZkpH?=
 =?utf-8?B?TWVlK3VoaS9qc2xLMlhRWUZNN3JldHBOYmZKZUV3SDNocDFsQkdoZm5KV1F6?=
 =?utf-8?B?dDJzOSsrUlEyNUFockJjL1NJbDh5dm1ZSER2UE9CRC9WTkI5eldLRWE4L0lL?=
 =?utf-8?B?eThaVVZvYUt3UERWOXFmYys4L3lWMTJDZmxXeWQwZTNEdUljVW9teW11WU5K?=
 =?utf-8?B?c2RlekJweWlydWxDdkRGQ1VhNDcvV2lRSERSZ0lJZHMxYjRLMU9PRzhuNWdP?=
 =?utf-8?B?MnRqS015QjhkYUxZSVBZWWo2aElIYnI0empBT0MrcVIvSkp3T0ppU2dLU3ZF?=
 =?utf-8?B?bTkrUHNIWHY3cEtqcDRwNXIrNTBDQTZLMHBvRzRmbklnbXIyRi9XTFVRcFh6?=
 =?utf-8?B?MU44ODB4WWVENEJzTnAvcFhvYzdmblExZUVJVHR0L3Y3ekh1UmJJTkd0VlVQ?=
 =?utf-8?B?NlAzUnZIYmNWSm5JMllXS0preHNBYzk0R09OTWJmbmI5VnFaSVVTU3BFM1Ew?=
 =?utf-8?B?STRtK2hacWVnUHRWU0FONFN1ZU1pcmtoQjRZR2NVUWc4dDNJTExQejRISGt2?=
 =?utf-8?B?Q0pjcjhmcDB0bDBoTEdkNnh2ZHhmVWFlbFQ5SFFXU3ZOb1VNZDYvWWhwOWpq?=
 =?utf-8?B?RTk2VytOZnBUaEVoeXh6RlE5aWIwYVRlQXVvY1gxamN0NTlYQ2s0RDRpSDMx?=
 =?utf-8?B?WS9jcFh0SGt3bmhkT2tPeGlNcnpzbFRZOExGaWlPQkVqczNEQ2g5OXRwSUt2?=
 =?utf-8?B?UElkdEpJYlBLS3JDV1o1Q0tNalNVeDdmM3p5aVppNjBHT1VacythNmFVZ1pW?=
 =?utf-8?B?UmVWZWZ5bEhIbWN6RldRK0RsNXhZRExMZDhocEhWSytIdWdjUHEvQnUxcEFI?=
 =?utf-8?B?MHQxUWxjS2VhejI0NnNQSEV6RUtNWERsYWVGUW9oMkMyMTlwNmdPSnVmR2dh?=
 =?utf-8?B?OWNoNjB0cGxBc0dzZytScGxPSHVZQnp1YkZyZnYyelpPUmFUbDhySytuSGF1?=
 =?utf-8?B?M2wxbE5IaGpRWHRaVEVHUDZxek00SzJoNDRQeHN6UllRRlNuamlsdml2OTVF?=
 =?utf-8?B?dmc3ZFFVNjUrMnozMThFeTNWQThuRi9kT2wrTStGR3FlNXBwMHJlRENOdUps?=
 =?utf-8?B?SElVMmVmUkxQbENPRlc0SEJCcTRRTGdLRFJ3M1lySmNraU1INkd1NlYwRjlM?=
 =?utf-8?B?YXZlOFZUd2pHaUNYeUJHQlo0a0VzMWJJZUlhWnN0N29KNjlEMFN2aytrTWxD?=
 =?utf-8?B?dDhSSWZSRkQyV3NWWTRIendHQVVWTHU2QzNtNnhnSGk2UUttdzdEWmJXRU5M?=
 =?utf-8?B?bDIyQStVTTU5dVNDTDQ1a2xtUDRJNTl0bXVhcnpYa28vNWFpdmhHTDFXNVBr?=
 =?utf-8?B?eklpc3JBSjNlSnNpWnZkY3RlYiswNFJGYnhUbTN1TFNlc2tFT0hNT1NyTlRL?=
 =?utf-8?B?NENpU1JROVRwcFRhZXkzdHhKN3hVVGJ2clZPRE9CZjJOdklDRlBGalpKa1RW?=
 =?utf-8?B?VnM5azZVVVJkY20rWDBhbXNMbUNxb3BzTTV3Nm92dFhJcWRGdnFvOXVmd0xQ?=
 =?utf-8?B?cVVxTnkyV0V0NFJZZnl5a2JKOURqU3Jpd2lMV09wZGVHeFlyZDZTQjIxYzBP?=
 =?utf-8?B?WWJTQ1o5YW5TMFd4QXViYjFIOFAzeTl1K2NtQnhZZWZHbXBPZzExSG1IQnhx?=
 =?utf-8?B?TXJMWENtbWJMUk1lbzNaeTYzZHVMb25qL0dkQ0UvVVFQRFlLZjkydVpFRlVq?=
 =?utf-8?B?Umc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bb680712-6c81-48d9-e9bf-08de10df1e90
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2025 20:19:21.1636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3pQbegZnICzwTTUnm8mX0Jbh9KOLM0Q7q3OevIAWZfmPEw/kbj7EXB7iGfI0elqSQD8WYOVB+VR97RRbcQmDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8766
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

Quoting Shekhar Chauhan (2025-10-15 05:02:40-03:00)
>
>On 10/15/2025 8:45, Gustavo Sousa wrote:
>> From: Luca Coelho <luciano.coelho@intel.com>
>>
>> Starting from display version 35, we don't need to use method1 to
>
>In the patch title and this description, can we have something which=20
>explains what exactly is method1 or method2? Seems too vague.

Hm... The referred Bspec has the descriptions of each method.

--
Gustavo Sousa

>
>-shekhar
>
>> calculate the watermark values anymore, so skip it.
>>
>> Bspec: 68985
>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/skl_watermark.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 88342d07727f..fba7448c4920 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -1809,6 +1809,8 @@ static void skl_compute_plane_wm(const struct inte=
l_crtc_state *crtc_state,
>>  =20
>>           if (wp->y_tiled) {
>>                   selected_result =3D max_fixed16(method2, wp->y_tile_mi=
nimum);
>> +        } else if (DISPLAY_VER(display) >=3D 35) {
>> +                selected_result =3D method2;
>>           } else {
>>                   if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
>>                        wp->dbuf_block_size < 1) &&
>>
