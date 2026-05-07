Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0BDbOSNq/Gn0PgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 12:32:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB814E6CE8
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 12:32:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719E710E256;
	Thu,  7 May 2026 10:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KXEZf9DR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E57A10E1FC;
 Thu,  7 May 2026 10:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778149917; x=1809685917;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=P0BrjcvrJSZlH49SxoN61WVa2kElfuYwENK+T0puBLA=;
 b=KXEZf9DRW6xuyGA9LwESkYJGdu5tKxnJiALBag3vKxdUeoy5aXqLwDni
 Rdk9WmFT36BxaB/JJqHr4xWhFfR7FroM9PXVVNydmUtrTUBhvo5HKMSxV
 HQo7kplBSaTdSBwGP1WGxbMCO8bXniVi37DpYYt/LGOWmAkeshFtIlmG0
 tU85p/+USO2OfSlfEkSTH02Eyc1tW2CbK0ciF4hf3x/Oy5QifN5d7xSDU
 PQLz5uKny7xB5iT9KcUrMuMva1rFjcWcu+O8urv7m9Ji4GF3NunNIsuOM
 ufK2+DoqsOZXhspDG1o9C/qYfxO3uwTeBoPtsZOucc60oa7ZUxc+OFluy Q==;
X-CSE-ConnectionGUID: TjiTM6vjTuChM6mdq/DajA==
X-CSE-MsgGUID: VIh86ZOgTmS2zNEfuvAkGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11778"; a="79088642"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79088642"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 03:31:57 -0700
X-CSE-ConnectionGUID: 2OEy8qYOSjafPl5vDF60yA==
X-CSE-MsgGUID: s6zP3BZgTia9iJ991Lvysg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="233764107"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 03:31:57 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 03:31:56 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 03:31:56 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 03:31:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O4w+iwg5aZFxp/jP/eg0tmoB8CR7IfKavg+V/s0N2LPyiuafLrWObJjjCBn/Xxkd4VPfvmgkp6oKAPc8v86tUFS2vtOsPLugS8jsSuqoKbSb9lPbkwp9BWTfD3WlRiaGdKgUzDBR2kX01SQfmllE477Y2ZoPbpEmBdALwORZ2z44dBXCBjsSxG356ReDvWNM+b9n80h5Ob//YEW96PoWlQOnboM5VASoWND2UVjzoublmsaNhxoiiLjEq2m7crf+MosDlBdcmuuRvAmlxNeDVmuQ6zyFvk13x82uUi+PD5qzONbILiQhCD/txa5b/9g/uJJdapzmMkIWA+VMKQg/UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2XQCz092rPaVEcHO8kHVJOg4JWJW3B10fACZACFc5jg=;
 b=KBVCJ+k+vCjIzAuXwti9cgjQaU7uPbFm9XPMlMtjf+VT9yZqx002Eqd/qIxhU6w2JwP3gWu7L/icbJuq7f9LGOyLeX4UMSNN6xYvQ38c8bxapvl2n0WHNSYxE+MXr4a3ML7WFH7eQ5jXBCO5oA40nk6DYLBhIXiFFWRv6W0k9/9zCptBIBRdN4Q6FwCrYR87HhLoqvenqlYekjJxEcR1P3PtevqNlsj/5URXDrTbWNyZFl8rgfF1N4xeewZgAYCRPyU38SomLBSEP3N2IknrSfNeLHwlWwx4wYBIBmRbUIAoKdgFsphHvXLhxjU5BjEI2WBycBq0OkVTpimzoenBQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW4PR11MB5909.namprd11.prod.outlook.com (2603:10b6:303:168::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.18; Thu, 7 May
 2026 10:31:53 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.025; Thu, 7 May 2026
 10:31:52 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Thu, 7 May 2026 12:31:47 +0200
Message-ID: <DICDJAAM6Q5W.1PS8YRE9KFJ0D@intel.com>
Subject: Re: [PATCH] drm/i915: Fix potential UAF in TTM object purge
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <dri-devel@lists.freedesktop.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>, Matthew Auld <matthew.auld@intel.com>,
 =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, "Andi
 Shyti" <andi.shyti@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.21.0
References: <20260507101653.321535-2-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20260507101653.321535-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: DU7P194CA0003.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:10:553::24) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW4PR11MB5909:EE_
X-MS-Office365-Filtering-Correlation-Id: fcefd105-3cc1-4ed5-dde4-08deac23da9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|56012099003|18002099003|22082099003|3023799003;
X-Microsoft-Antispam-Message-Info: Dr6rYviiVxFi3o0ukDXbGG0OBJ/5y5GEsaKiMfMOD8HqDXJuuXF7vUI8gxuGkd6waHGgA90I+m0slXH/I7tZnCAcv9KQNbWUw+3b1c15PkjBxPjD3XVvb/U25M9nUw8k5Hah13NfoJr6a3WyzvKPVOaL7m62EZF5tMFneDTG5wnaqkGIVWOmpWL9DKlYGO3FI8ts18rUyxjgFiFb7RklruObSQg2RY02yaNFBJf23dX6NDwMqaaie8Y1mviND78GhHHQEISAeqj4xIh5uisDby/Zvzug06qgy56L+zflE7yLndCqyiE462MA5ATRpwxl2Zr/hyTMUwI5xSytcB9fDXDmd5I39gK75aly03W3J+SkQwkqXSqTWUbgVGet4SC9q7QPhjQDiOPe9fizV7eYl8sE9IHHkSwDzASAH0kGv6qMIsVYTQ560Mv+uY2g68YDLrEwAmt4pEHQmrvmbBMEwhZqXLOJe5prV96RMb8fGGRBWADwosxYWfSTBuOpjMSkYvO3hDNz6j6QsE41BVZ5TAAIODDXXIzLbTXc9fjZaJdwj+Jxc1EowETn8DpZC4uvIf8tARCw3EXKdePjwb2rzIREK9DOrvMOuDFJNYDvBagQaYUL9U1oTFzMqrbzlWngcoiR7//mFE/8qmPoDWrE7A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(56012099003)(18002099003)(22082099003)(3023799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b05Xa01ROHNFTDQ1UWhhY3FuMWhCWmxuamNSeFRaVHFwdTF5M2R5bEpreUZw?=
 =?utf-8?B?VjBHL1p6OHprS3I1VGhhcHRpQ1gwUDdMNVNoTk16MlRXbThnY3pocDV4NzlC?=
 =?utf-8?B?b0NpQ2lhMW5DWERxTnpHR1J5T01VWWFSZU1oYUdCSDB5NHZsZXB0em9qbXFR?=
 =?utf-8?B?K2V5QWRKOTNSd3NxSHMzNDVqTkVMR2M4bEdzRTRXcTV2aGtwd0pwZjUrRU4x?=
 =?utf-8?B?RnlmMytlVHZaSHNhSGxnNkplL0NZd25Vc0pnb0dHOHhvZjE3Z3FBcWxRaXF5?=
 =?utf-8?B?VVBoTFpGS2w3OHRyRVBWZkZndTF2M0ZTOTd6ZHlUVityOVdqWVIwQ1VjQTdT?=
 =?utf-8?B?K0E3dmVNK3ZabXM0ZDkrd28veE92b0JTWGcya3lpd3RxVnVnNC8xdlRoRmNl?=
 =?utf-8?B?aE9vcXlLdXkzaTI0cG9JRGp0bU9oejdRRlcxalN4aVJvTVVnaC80L3p4NmpL?=
 =?utf-8?B?NUJOdUxjZUlhL29Hc2VKUy8xUFJFQlZ3TWpYNzZNMnJSdXUvR1UxcElteTVM?=
 =?utf-8?B?bHNEdXR4am1QeVdEaWU2SmVQUnI4dXFYK0E1SHE1d0F4bjQwa0hudmRxODBi?=
 =?utf-8?B?dFFVdHdYMWwzcjFJUzRlaE1lWm5zM29SUUFRYThqUHFjOVBOU0VIaGxEaTl2?=
 =?utf-8?B?cVBxTVF3T1lBK2laNWhRemE2WDI1c2dueWZBajlPckpNNWFVU3lSWmo3Rkk5?=
 =?utf-8?B?VVZJeFFOSWd6STFUS3M5OG1IY1ZvQ2Z4aGJuMWNlNHBlVnRnR2pCMnZSK3RM?=
 =?utf-8?B?OThwWklIUEN1NzhyZ3RsdS9aNEJCN3U4NlhMR3B5a0hEZVdBdkh4NHFZU3NY?=
 =?utf-8?B?MkQrcUU4dStSZVV6R2JoSDJOS0lMaS8xdW5XcnBjbXJSLytyaHdaY25PNGg0?=
 =?utf-8?B?M0xGV0N1QzJRQlp0TDdyd1lkMTVMeUIzWGJoNUl6VGxySkVBV1UzUG9CcFVQ?=
 =?utf-8?B?ODVqSi9FSGJDMlFzRWVUZWRXRmhqdFgyR2RuZjU3VHpVYUErRnJSVzc2V1RN?=
 =?utf-8?B?QU1pcmpjekRUNnlxbG8vNDc2ZnBSUmdSSVFkekI3T1BENVBXZmg4a0pNc052?=
 =?utf-8?B?NUFiMmppL05vdWhxK284bUJEajVHaHJrRCt1cjZLZmtmK0NKT2JhcWtaME1m?=
 =?utf-8?B?MTVnelpydWdld3dOQStxVHk1MjRqdTFjZWgwcnBXOUdCWmR1V2NLcG43bVBF?=
 =?utf-8?B?eit0b2ZieE5vTFlDS0hzUTZKcG5ZK0dJNkpCS1dpb0VTTkFrUGJDNnY5MkVR?=
 =?utf-8?B?bTI4SzE2MUJiM2c3ZVNxSFVQcHZPMEdKVFhFY2FjRzRCeW5qdk1uM0ZsSHRl?=
 =?utf-8?B?UzBTRzNlQlpNS1hTR2lYNUUreFJTRm51Y0RCSmxyUGpicDhCNHpVZXE5MUhi?=
 =?utf-8?B?dDlvT2FFd29Oamx6NzZjczZzejhSUnBQSXZtdW5vNkdhajBhZnRnMmlGL3pr?=
 =?utf-8?B?eFhaMmkzc3poa0Voc0lWWlU2SDBMMm53c2M5SEFDRlRadytqM1NNUlhITVd2?=
 =?utf-8?B?d3lLNmhiN01nSVpVNW9YcU9zYUdBUE1CbEhLVkVmVmFnNFQzd2tkSm1XbGRk?=
 =?utf-8?B?R0JhcEVsM3RnY1g5eFZ2T2J1eStjWGpiM21ya1J6V0I1em5GQzNsUlQ1anVD?=
 =?utf-8?B?cXlWY2lvb3lKZGRQZ0NEMjBzSjFCU0c3S0lxdk9Ia09rTHNPeVdTbWllZjMz?=
 =?utf-8?B?VEdyVktKQ0o2SG1ralNQazNkdVVOL1lLNUo3MXh2MGdMNVlLcS9MM2w2ZHQr?=
 =?utf-8?B?Sytha1ZoSHJuMnlSc21seUNNZWtxVWxPVHZTRW9lZTlZTVVydlh6ZEJ4czBK?=
 =?utf-8?B?VEZ1S1F5RC81VmNPUy9zMVpaZVhEZ3JTQjVYRlhBTHhHdEJ4dzNtdjdkTERh?=
 =?utf-8?B?U2hrOXNYd1QycXVOQkV1ZWlXV1A3N044eTBZTFI1eS92Ui9yUiszcVIrQkVm?=
 =?utf-8?B?M1B3VEtCME5Ha24zZzl6eGVpL3N1YlVkVWowTXNUYm8wcGtFRUh4YVRkRjc2?=
 =?utf-8?B?MDBUajZzV1M4RjU5eWJ4TTFBTWh0UFNtVmRkWFFTUHZPdHNxYUpNZUFNa2lq?=
 =?utf-8?B?eHF4R0VLZTU1am1OV2xmamZ0YmtWYjZpUmR0cjFnSkMrVFcrMkJoV3lRbU4v?=
 =?utf-8?B?dHMxUkg5WUN2bDA0NmVXZGk3dHZBMVgrWTFrUDJyVnIrWHdjZFZUMjFRNDc1?=
 =?utf-8?B?L3lkVkFWNGYrSWxDMmpsVWUwcGRsajFOZ09qcytRVWpKQWRVZURWZm5XYjlV?=
 =?utf-8?B?ZXV1aU5HWFZ0WGJjK0dPMVNDNWlGbHI5TGthMUFTVmJ4UFpQTHZ3U0lwSDND?=
 =?utf-8?B?VC94SUd1aEdlYkdrdjl0dmdFblJSWlYwWW0zc0VNN1l3djBXdkptemdUUXkx?=
 =?utf-8?Q?dciaBkyXTvO6UeTY=3D?=
X-Exchange-RoutingPolicyChecked: OfBoZGVYORehYaLoKEsTTbDc7MQyx8ilV943H0Hjs72arj+X2ImYXvYLJPLPg5uuB971T9naetypLXIUsVjl9sp4yrEIgCcP1LsDjoAE5Al7l1UMazx45qbcAbmVf6z7nUN5T3wVfDPVG+KgKV0zjIhpMLYLS4E0rHJvkZUX87tMjs7URkZEgDfwoQ3whT+bsTurea/eVcQAR+my3LokMWzI9bg7Tl1zkAuuV1h/w7XiQ6LUsmHqovnX6Now8KPqFCFAhf3Z+qDdqs5DMH6R1GPekhreG/W/RrpLvYSxv7EaKPm7vvNDJk1mq3/iliI8RUhVac5veaea38ulLdQMgw==
X-MS-Exchange-CrossTenant-Network-Message-Id: fcefd105-3cc1-4ed5-dde4-08deac23da9b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 10:31:52.8220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D4DzuNbmxSQFyU/XgQe7tG+K8FK23l5pqQq5dWpPAeJAeIxDdME5VjyUPs2MWlvbv3R7uuyr1d63mpDZ3hCIcrMQ//AZVzbG4MMvoNhRkow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5909
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
X-Rspamd-Queue-Id: 9BB814E6CE8
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
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,decode_stacktrace.sh:url,gitlab.freedesktop.org:url];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Hi Janusz,

On Thu May 7, 2026 at 12:15 PM CEST, Janusz Krzysztofik wrote:
> A user reported hitting the following bug under heavy use on DG2:
>
> [26620.095550] Oops: general protection fault, probably for non-canonical=
 address 0xa56b6b6b6b6b6b8b: 0000 1 SMP NOPTI
> [26620.095556] CPU: 2 UID: 0 PID: 631 Comm: Xorg Not tainted 6.18.8 #1 PR=
EEMPT(lazy)
> [26620.095558] Hardware name: ASRock B850M Steel Legend WiFi/B850M Steel =
Legend WiFi, BIOS 3.50 09/18/2025
> [26620.095559] RIP: 0010:i915_ttm_purge+0x84/0x100 [i915]
> [26620.095604] Code: 00 00 00 48 8d 54 24 10 48 89 e6 48 89 fb e8 83 aa a=
e ff 85 c0 75 6f 48 83 bb a8 01 00 00 00 74 2c 48 8b 45 78 48 85 c0 74 23 <=
48> 8b 78 20 48 c7 c2 ff ff ff ff 31 f6 e8 7a 73 e3 e0 48 8b 7d 78
> [26620.095605] RSP: 0018:ffffc90005fd7430 EFLAGS: 00010282
> [26620.095607] RAX: a56b6b6b6b6b6b6b RBX: ffff8881f46c3dc0 RCX: 000000000=
0000000
> [26620.095608] RDX: 0000000000000000 RSI: 0000000000000246 RDI: 00000000f=
fffffff
> [26620.095609] RBP: ffff888289610f00 R08: 0000000000000001 R09: ffff88823=
b022000
> [26620.095609] R10: ffff888103029b28 R11: ffff8881fc7f3800 R12: ffff88810=
b6150d0
> [26620.095609] R13: ffff888289610f00 R14: 0000000000000000 R15: ffff8881f=
46c3dc0
> [26620.095610] FS: 00007f1004d86900(0000) GS:ffff88901c858000(0000) knlGS=
:0000000000000000
> [26620.095611] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [26620.095611] CR2: 00007f0fdf489000 CR3: 000000035b0c1000 CR4: 000000000=
0750ef0
> [26620.095612] PKRU: 55555554
> [26620.095612] Call Trace:
> [26620.095615] <TASK>
> [26620.095615] i915_ttm_move+0x2b9/0x420 [i915]
> [26620.095642] ? ttm_tt_init+0x65/0x80 [ttm]
> [26620.095644] ? i915_ttm_tt_create+0xc6/0x150 [i915]
> [26620.095667] ttm_bo_handle_move_mem+0xb6/0x160 [ttm]
> [26620.095669] ttm_bo_evict+0x100/0x150 [ttm]
> [26620.095671] ? preempt_count_add+0x64/0xa0
> [26620.095673] ? _raw_spin_lock+0xe/0x30
> [26620.095675] ? _raw_spin_unlock+0xd/0x30
> [26620.095675] ? i915_gem_object_evictable+0xb7/0xd0 [i915]
> [26620.095704] ttm_bo_evict_cb+0x6e/0xd0 [ttm]
> [26620.095705] ttm_lru_walk_for_evict+0xa6/0x200 [ttm]
> [26620.095708] ttm_bo_alloc_resource+0x185/0x4f0 [ttm]
> [26620.095709] ? init_object+0x62/0xd0
> [26620.095712] ttm_bo_validate+0x7a/0x180 [ttm]
> [26620.095713] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095714] __i915_ttm_get_pages+0xb0/0x170 [i915]
> [26620.095737] i915_ttm_get_pages+0x9f/0x150 [i915]
> [26620.095759] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
> [26620.095786] ? alloc_debug_processing+0xd0/0x100
> [26620.095787] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095788] ? i915_vma_instance+0xa0/0x4e0 [i915]
> [26620.095822] __i915_gem_object_get_pages+0x2f/0x40 [i915]
> [26620.095848] i915_vma_pin_ww+0x706/0x980 [i915]
> [26620.095875] ? i915_gem_do_execbuffer+0xedc/0x2b40 [i915]
> [26620.095904] eb_validate_vmas+0x170/0xa00 [i915]
> [26620.095930] i915_gem_do_execbuffer+0x1201/0x2b40 [i915]
> [26620.095953] ? alloc_debug_processing+0xd0/0x100
> [26620.095954] ? _raw_spin_unlock_irqrestore+0x16/0x30
> [26620.095955] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
> [26620.095977] ? __wake_up_sync_key+0x32/0x50
> [26620.095979] ? i915_gem_execbuffer2_ioctl+0xc9/0x240 [i915]
> [26620.096001] ? __slab_alloc.isra.0+0x67/0xc0
> [26620.096003] i915_gem_execbuffer2_ioctl+0x11a/0x240 [i915]
>
> Results from decode_stacktrace.sh pointed to dereference of a file pointe=
r
> field of a i915 TTM page vector container associated with an object being
> purged on eviction.  That path is taken when the object is marked as no
> longer needed.
>
> Code analysis revealed a possibility of the i915 TTM page vector containe=
r
> being replaced with a new instance inside a function that purges content
> of the object, should it be still busy.  That function is called,
> indirectly via a more general function that changes the object's placemen=
t
> and caching policy, before the problematic dereference, but still after
> a pointer to the container is captured, rendering the pointer no longer
> valid.
>
> Fix the issue by capturing the pointer to the container only after its
> potential replacement.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/14882
> Fixes: 7ae034590ceae ("drm/i915/ttm: add tt shmem backend")
> Cc: stable@vger.kernel.org # v5.17+
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: "Thomas Hellstr=C3=B6m" <thomas.hellstrom@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i9=
15/gem/i915_gem_ttm.c
> index de70517b4ef22..091972f3bb7bd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -419,13 +419,12 @@ void i915_ttm_free_cached_io_rsgt(struct drm_i915_g=
em_object *obj)
>  int i915_ttm_purge(struct drm_i915_gem_object *obj)
>  {
>  	struct ttm_buffer_object *bo =3D i915_gem_to_ttm(obj);
> -	struct i915_ttm_tt *i915_tt =3D
> -		container_of(bo->ttm, typeof(*i915_tt), ttm);
>  	struct ttm_operation_ctx ctx =3D {
>  		.interruptible =3D true,
>  		.no_wait_gpu =3D false,
>  	};
>  	struct ttm_placement place =3D {};
> +	struct i915_ttm_tt *i915_tt;
>  	int ret;
> =20
>  	if (obj->mm.madv =3D=3D __I915_MADV_PURGED)
> @@ -435,6 +434,7 @@ int i915_ttm_purge(struct drm_i915_gem_object *obj)
>  	if (ret)
>  		return ret;
> =20
> +	i915_tt =3D container_of(bo->ttm, typeof(*i915_tt), ttm);
Just a small nit: you could move the container_of() inside the if
block, so it=E2=80=99s only evaluated after checking that bo->ttm is nonNUL=
L.

>  	if (bo->ttm && i915_tt->filp) {
>  		/*
>  		 * The below fput(which eventually calls shmem_truncate) might




--=20
Best regards,
Sebastian

