Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Zq11Al2xO2q3bQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:28:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA646BD5C4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 12:28:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eLSm2ebA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907F010EAD9;
	Wed, 24 Jun 2026 10:28:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 890CC10EAD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2026 10:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782296921; x=1813832921;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=bAXQj8wJI+RQrRoeHrttDVRNoSg0CNuvK9G5OflFHcY=;
 b=eLSm2ebAUBB9SuKIPyfDiTWebNUjoYJzwhcUr1O9ztcvXyM76Oc01TN3
 XBn6SDvcUUQLxNg7dNeoGUOW1V7PVpVYEdjGWi/Wmye18SIYrPz25sLv3
 aPucPgMmHYbwsGxHFediMyxtf2ktEJKVD2yjrr54zoA7A3kkwtRwM22Xw
 sOjpbSO28RlHtzo4pEpT1WOhildN+w6Q1JOO2f5iBcwyJI0ajNSLcgn2i
 JazIqOa231ylp+CEmSbEpRakAYw2fg7vuRtHMxY6YfvONJzT8pB3rnm55
 nzSvS/sbARRDfsMNssOwDlRF9SHVEXopTZmqtEV1EKzRV69mpGrXhWSRF w==;
X-CSE-ConnectionGUID: NaimIdZ4Qk2O9EPjfPMiCA==
X-CSE-MsgGUID: alDEuvcZQsWweaQzIo0sQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="105847894"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="105847894"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 03:28:41 -0700
X-CSE-ConnectionGUID: u3cKOOLyQCOpA6Ek0F2UAg==
X-CSE-MsgGUID: kiZBsN1SSAaQ2u1yYAkc0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="247439512"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 03:28:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 03:28:40 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 03:28:40 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.33) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 03:28:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C7oqkZitAwpQ7MvoGEEqjvg0yygGXt5rHEJTMmvBlRswDKajO8tae1OvC1qWrQ/VH0Qb9y6KiA6qWGhnjrvUm4I5bcIN9t6RZLFud2IuwNdOwyMCFiqoINE7OvztOtFW6Yw1DGQ/ueCLmX0LdsGqZmJUOMFPq52ThChlDiSU3mu4RqEwAi6+xPD0rrYq1HV+PpsyTBjvLNzuAFp5S/S/M1KBPGWvIjyZYDIrol10H+Q3+yr1SrmmpLwyY+mCfThhUH1qgINLeI1ZXX2vqgqi+BiOyc0/qoOkzgzSlhBdvJ1sxkW24mvpoPFARz8SiPKID/e0SxLUFZCFxY4Vv2WQmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ii+ePkDUuBlUwMS2yGPwuHctELQUxvY5y9mfdgRpohk=;
 b=g1ewpEo76vvlt2WiHohgmAqJkQN0jUIN6iDLhXe+7pQmVb/HzW9W/uMDBWn072bWYw2tjZi1SIQunLv0hXbGhnzW7ExSETHJOI13s4w9P7ajTcNEqausCEXsTFV82LXs6TCmezCN/zCps2K5naRkINbajUipxB8bJb+u67DbnoSi01uKjNgeWnw7UyI8vF/iKBA32RV1TkvdMnnL+8giNnqpLo7Ql0VsXyePf3jG5HBHeLM2jDrNOIwbiBrsWi+1qbUWg/62u6u76pb113d9oxknAPB6Gy9WefpgKfmMT64xz+RcLgl4mr5FKn+3bLO+ZUqTQEK0xfqYrqTClQ67Tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4SPRMB0067.namprd11.prod.outlook.com (2603:10b6:303:221::22)
 by PH8PR11MB8015.namprd11.prod.outlook.com (2603:10b6:510:23b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Wed, 24 Jun
 2026 10:28:37 +0000
Received: from MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a]) by MW4SPRMB0067.namprd11.prod.outlook.com
 ([fe80::3605:4f97:fbe7:2c4a%3]) with mapi id 15.21.0113.020; Wed, 24 Jun 2026
 10:28:37 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 24 Jun 2026 12:29:06 +0200
Message-ID: <DJH7JDWM7XPO.2G0OQ6XWLI13Q@intel.com>
CC: Martin Hodo <martin.hodo@intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, =?utf-8?q?Thomas_Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Simona Vetter <simona.vetter@ffwll.ch>,
 <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915: Return NULL on error in active_instance
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, "Intel graphics driver
 community testing & development" <intel-gfx@lists.freedesktop.org>,
 "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
X-Mailer: aerc 0.21.0
References: <20260624090940.74840-1-joonas.lahtinen@linux.intel.com>
 <DJH67X9IJD3J.1YRKHO7I0JSZF@intel.com>
 <178229668435.102045.3320967434448969310@jlahtine-mobl>
In-Reply-To: <178229668435.102045.3320967434448969310@jlahtine-mobl>
X-ClientProxiedBy: DUZP191CA0004.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::23) To MW4SPRMB0067.namprd11.prod.outlook.com
 (2603:10b6:303:221::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4SPRMB0067:EE_|PH8PR11MB8015:EE_
X-MS-Office365-Filtering-Correlation-Id: a2c7468b-3060-422c-9642-08ded1db5a04
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|6133799003|22082099003|18002099003|4143699003|56012099006|5023799004|11063799006;
X-Microsoft-Antispam-Message-Info: WUgXEREuW8T8nlVOALROeR6U8vKmuitiXpi83OXfkfynAtm7Kv7FwVfKU4qEJFdiA772ndH/ppqxvuwmLOKxr8vBDcSPvKKXOq7BxmDm+LJzApm3O3/Pc+KKfSpciJgGCdEM2PyjW0RTpPWb670pZngXBGjFBdNQShF0PEPQwis2pefxpqALD6HYiv6znGy52BCIjiyAm1i51bTIai6xqD+lzmM5pmYtPq+hfvQgLdnFK86gvr2DMAsP+E6My+ovGHt8D0UrJA4Pxjq5/eKvqs0RzUpggGTUF0wHWHmepHjK7UzE5Q4bb+kCGwLv1BjW9OeZh5bpBroNgSw9I47hmB/+d9OHfNSBgy5EXhoGwyEorLU6KmZ7IsS6whM7VpkP4zcHsELrDV57cAA2e1i0daYybMlWVHoyjG10LzJYzZqr0zaj0vUbWw0t6mOBMP8LFbOdOfK0uKkzu+3YHSUFXkUxAwTVQrsEafvko85JOdT159/YcufVvQv9ElpAn6mN5aDUiaR+yyAFZt+XaFKCnb7X8Fslspt6DZAAWYa0rygUPHg6e00HFPsZ8tUkokiipd8mMxpOEVnXsIFeMFOh3571szcEYVcBFnuLghZapxFXrQBuoESrm2GXlyYKBnTSB2tsF9seRlpDD0oIW12BpwjWMLXGRGBaICgoS+VNNv4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4SPRMB0067.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(6133799003)(22082099003)(18002099003)(4143699003)(56012099006)(5023799004)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZjdSSDNMYTFzRFdsNWNhVFRKaEQwK1hWdWd4LzZpeGY0aDhlM2xFdzRQVEV0?=
 =?utf-8?B?MklQQXRSRnliS0kxc1JIbk85My9ZajEvRXNRN2J4alVqZ3NjTElTVjhXajhx?=
 =?utf-8?B?eUkwZGFOZDh6SjNCa2tUZk9iYS9EeG0zQ2UvcWNBNmxLenVFeDRCRXIwdjYz?=
 =?utf-8?B?K1dzdVY2anRkVGhadXZONUY5ZWQ2L0tKa0tPM3U4TG12UTlIVW51c3ZTdkZE?=
 =?utf-8?B?eDJMYVo2YVh3cnNTUUVKSTlZaDg5eHE4YzBQWWNRMVROMFl4Q0lLMTRabnAz?=
 =?utf-8?B?L2lGdUV0Mndmb2trM3o2dkhiWUZtRC94c293TFZKYmMwU0FWNXJMWWdwUXY1?=
 =?utf-8?B?M09VMCtuNVBrR2NGZmZGVEZDK1BaMTA5TTZhTS9RQ3VVN2Zwcmszc1lGVWRS?=
 =?utf-8?B?TGE3RWp4RDJBbmFkRXpKVitjbDZWVGlEeW9jVWxGYTBmdlhLbEFmcFJ2YVlS?=
 =?utf-8?B?NUs5aEhRZjNDZ09Ua1hyNnJuRDhUeWVXd1VJUVRjR2xBSzlzRDU0Ykh6b1R2?=
 =?utf-8?B?dlRUYTJob1c2bmZ5UE9kNUhkWHBiOXpNYXZaMHVjQ244ZVhIYitZZHJYMSt3?=
 =?utf-8?B?SWZPbDFMazR2ajVkSHRpTi83SEZwTDNDeTVBaGpXNTZkai9aZFJ0YTg5YU9m?=
 =?utf-8?B?ZkpqUDV3U0xyVnVQa0Mxc2cwWGVvb3k4NkkrTWZacWJoYU5KSnM0NzhSMG9j?=
 =?utf-8?B?TWNLZDNJR1E0QjRnWi9wL1g2RXI3SnFRZU9weHU3Z21PdmtzZnVURmtIK2ZN?=
 =?utf-8?B?WTRJNmJFZUlOS2gzMGFBZllXeEIyeDJwMzhYS1hncWF5aE9JeHFiNnMwVksr?=
 =?utf-8?B?Nzdrd1hTOUU3UTZEWUNRZ2JQNmhTSW1QdWVhWUpDZENpMFV5dytNR1pJcklr?=
 =?utf-8?B?ZTMwOHBUWlRKUmNSZ3h5TEJBYnc2R3JTb0JwNjZzKzZwOW1NamhFTkpSdnR2?=
 =?utf-8?B?UVFaVExpSVBzbGcrQTRlKzZjU1d2Umg3ekZsd0RQZTdIQmx4VHJCb05MSlBx?=
 =?utf-8?B?dkVGQUh6eGk2Vml3bW04cHFRMnBJKzNFbVBkWDRFSWsvekQ1OGI2aGdOOEU0?=
 =?utf-8?B?VnlKTGdWOW9UREgyeW1wVUZrbnVQRU9PT3hVdHhFUkhUdGhZUThCdHJwT2sz?=
 =?utf-8?B?SzNUdytJT0Z0N3ZHZFNVdjgyb3FGZ0xMaVRjYzhwc1ZVS0tZclNDQzV0ZjAv?=
 =?utf-8?B?RW0vOXd3NUtCaU1LZjlOMnJUV000RGJRYVVxNGxSb29xS2tZb044ZGx3ZGpD?=
 =?utf-8?B?UG1QMzRxV2JjV3VTOUYzUzZERkMvWXhCOWpRWGJnUDBFM2J3aTViY05LbzV2?=
 =?utf-8?B?Z2MzaGFUUTFKL2VMdCsvOTU0c052MzdTU0oyck1uQm42UGp1WWZMazhTNW1u?=
 =?utf-8?B?Nndvd2lRM0Mzc3NGNjMyK1E4NXBxa1E1eDhsdHRBVzBLSWxxbE0rSk1ONDN3?=
 =?utf-8?B?enhVUnZZMzFEcnNwdFJCQzF2bDVBWVVYbXU4ejVHUStmL0ZmNGdrc3psSVR6?=
 =?utf-8?B?MGprN1NjTE55M0ZWc2ZSNDFmazZLbWpIYmQ3U3ZVRU5xQTQwVVlNWVRCNVc5?=
 =?utf-8?B?SGRWTXh2aTdNcndnT1dtMlVYc0doTkVPZElmKzVVc3ByQnRyb2IxcmVtOTFT?=
 =?utf-8?B?NDVyZklOV2xGUC9HaE9kZTVobmQrS0tiaXZlcHZONXdINVJDM3d4M3YrT1Vw?=
 =?utf-8?B?aURsWXdqSDFyM2tuaVpsaVlydFR4SjBVajlFb0s5bmpUVWNQdUlJaHN1akVH?=
 =?utf-8?B?Q2NlcXZqL2ZGRGMyaDJCcmZlNkM3OE1GeW1NRURiU1lacUw4djBZU2lKaUNa?=
 =?utf-8?B?VTVTeng0VXY4NHVhZmxXSlk0bnlVSDZYQk1xODh2YnBnMy9RSVpPSlExaHFF?=
 =?utf-8?B?aUZScTUxWExMMEhwY05pQ2FOZmhmSEhhS0lZaG1QeEZ3aXJZZTlXbzdtTTJ5?=
 =?utf-8?B?bG5zVzh6cjBtekNGd2NMN3J5cHoxVE1ON1VmWmR4MGsvS2pmS29tcWY1L20y?=
 =?utf-8?B?NTdFTjVoV2c5ZUpuVDV3QmpvQTNVYmFDdHZjY2ZoSmxXUkZwR0Jma2llTWla?=
 =?utf-8?B?cjdrNGxsR1RDeDBxTmFETG5tMHpQbG8yV2M1Q0l0ZDZFMzdCL3kydjlqU015?=
 =?utf-8?B?Q1V2ZWdONU1OcVA2dkxvOGR4aW5NVklEUDI2WmJhRkZPMjZmdTZrRk5FK1I1?=
 =?utf-8?B?RTB4MXNJNGsyeEFLV3FBVWhuUGQzb0VOaXEwRXIrMVoxMEhlNFFqYWxYeWE4?=
 =?utf-8?B?L21JZGtBcFVkLzFxOEZ1ZGlOL2tpamxod3YyZ2Y3bTFqNGNta0IxalFQN25C?=
 =?utf-8?B?eFFvR2k3a1krL1BxRkF4N3ZieVRkNndjSXNLYm1TNXM1anQxa0JVV0czdzBp?=
 =?utf-8?Q?vlr0ywCtxIA9vr00=3D?=
X-Exchange-RoutingPolicyChecked: sz39TLvBsQkiNGGdf/LS7CxlbtyooGQtB5bpL5AvD/W8tYhOIFd0KIv/W4gHGmuOm4JB0sXAkpsZ2DmwX53deXweDKegJS4WV47wiFuuvj6567YSsfgRETzmrx6l24fTy09+oSzX3y79+ZNFTCauRtlEX0Q+B7SLtuuQzz+lFLsjiRlPAlFlBE5+639eX9JOUYhcRmAiue+hTV9UOQaYi7+F8W5wknivsfI01QM/mb0CiiIUYGGBMajAxxT6qznkTNTvIFHn9sRaC4RwKUMKau3U04qdCFShaIKhaIwrRJ0kDB3Rns5X/6ElfuCzK6J+Cd4hDWKjMYMy1/mkAMTuBw==
X-MS-Exchange-CrossTenant-Network-Message-Id: a2c7468b-3060-422c-9642-08ded1db5a04
X-MS-Exchange-CrossTenant-AuthSource: MW4SPRMB0067.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2026 10:28:37.2373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sw/u7haC/URJkdGX2367rMRBEtzkYX2oN0cTeExXY5Yzni4Cjf6CCRqbJ0Z7IqqFEztiQy1JmEMqpoHvijhClQbuWkJYYgBV59dxymqmjYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8015
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:martin.hodo@intel.com,m:maarten.lankhorst@linux.intel.com,m:thomas.hellstrom@linux.intel.com,m:simona.vetter@ffwll.ch,m:stable@vger.kernel.org,m:joonas.lahtinen@linux.intel.com,m:sebastian.brzezinka@intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5DA646BD5C4

On Wed Jun 24, 2026 at 12:24 PM CEST, Joonas Lahtinen wrote:
> Quoting Sebastian Brzezinka (2026-06-24 12:27:07)
>> Hi,
>> On Wed Jun 24, 2026 at 11:09 AM CEST, Joonas Lahtinen wrote:
>> > Avoid returning &node->base when node is NULL due to OOM
>> > during GFP_ATOMIC allocation.
>> >
>> > Discovered using AI-assisted static analysis confirmed by
>> > Intel Product Security.
>
> <SNIP>
>
>> > +++ b/drivers/gpu/drm/i915/i915_active.c
>> > @@ -318,7 +318,7 @@ active_instance(struct i915_active *ref, u64 idx)
>> >        */
>> >       node =3D kmem_cache_alloc(slab_cache, GFP_ATOMIC);
>> >       if (!node)
>> > -             goto out;
>> > +             goto err;
>> just a nit: this jump is not neccesery, you could return early.
>
> We specifically want to embrace the onion error handling idiom with goto
> rather than doing the spinlock release inline here.
>
> Preferred error handling should look more like:
>
> 	if (!try_lock(lock))
> 		goto err;
>
> 	mem =3D alloc();
> 	if (!mem)
> 		goto err_lock;
>
> 	if (!bla_bla(mem, bar))
> 		goto err_mem;
>
> 	...
>
> err_mem:
> 	free(mem);
> err_lock:
> 	unlock(lock);
> err:
> 	return ret;
>
> Rather than:
>
> 	if (!try_lock(lock))
> 		return ret;
>
> 	mem =3D alloc();
> 	if (!mem)
> 	{
> 		unlock(lock);
> 		return ret;
> 	}
>
> 	if (!bla_bla(mem, bar))
> 	{
> 		free(mem);
> 		unlock(lock);
> 		return ret;
> 	}
>
> 	...
>
> Regards, Joonas
Good to know, thanks for the explanation.

--=20
Best regards,
Sebastian

