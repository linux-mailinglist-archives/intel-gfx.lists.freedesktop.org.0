Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6OF5JrRqTGrQkAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 04:55:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 948E3716E95
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 04:55:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="Pzuc/IoX";
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E942610E29E;
	Tue,  7 Jul 2026 02:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDF8C10E29E;
 Tue,  7 Jul 2026 02:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783392944; x=1814928944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kbd2uKzfnRPU424xNSIgeQX2Fp/KByCbb9L8/IUKYUY=;
 b=Pzuc/IoXPbUOYf1SbE+gmZrAnp6pdH1O0uaFaLcdc6NtoEvOTnJ0Lbxp
 HgNFdfVCUMfN7/52uccZJlEnDLqVrg4x5jPswZonM/h6r/56YM09diDeK
 aRdWjZ8N1tNO+xBwRxOTiFBSk0OYN6kp/7qMQZ+BJ8ccVe1HTngTIVbZ5
 LVC59B4FifQG2Db7tz55KzIR6O8ssQzSFSD4vCLsDTLMJQnY6qJLti5pO
 axd4BJrhDtenx2n4Tm0OnpFlQgzjjZtSlDEMpdsEIxgfVkdYscchBj7+t
 skdnCKxCwOnKcAE+yZ0c7YaUxarBPmgGT3lgBLZuWtkc/CAX32UbBNG0/ w==;
X-CSE-ConnectionGUID: EghLi0/oROqC7Xm4SY5Pmg==
X-CSE-MsgGUID: L8FYf664RC2+ZIoD5Imi9w==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="83896825"
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="83896825"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 19:55:44 -0700
X-CSE-ConnectionGUID: rW2BpUIZQUqwZQIlMpC18Q==
X-CSE-MsgGUID: WCb+8RO0Sp+OBZm2hzE24A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,151,1779174000"; d="scan'208";a="252803926"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 19:55:43 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 19:55:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 6 Jul 2026 19:55:42 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 6 Jul 2026 19:55:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NCCMqD43/MjGEegPHYaAxXP3DHzK6sRug9o/r+qA663mN7D6rgxrcy2z01EPu+cpnM016tuStpLpOCdjGVXzySquT/jEwpIJfTAydWoM0I9d0LiIst91K3JXHvNoO1ZHoAZwPEbOMl84+g81woE/ysOoxFBit5eDwTCgC3qrBUfB19p4mEV0UzlaD2t/+NUANqOU3h8aE7czz6nQzhSHyE8hepfpAcumE2BfCltiXEDDKalx/VrpT8obg/HxDv6xTD2XvfQj1Ev8CK/Oy9na/TFz1HWmdnOcTFjbdzfoJOYJL91n4l5sEswDOSQns2xpqtf4rzg0ZVvte9NmyQWNpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I5hJwE95Elw88PHKKWWzpeoWLQQ5mRVVqgyqHuTDmf8=;
 b=ThUyui53uQPgBI1ptXctp2ar3vELZfqOO4LzLuxPcVrWznfe4DYcouMjUehQs93IpWAGiaDp0iXHyv9szY+taTk4Ur4MTaWdqmzC46LEXfzPev5qfMT1RFJL6Z7AOoX2+Eu+043AradEdYIrCc0LwuBkYQMoBfjJp8Zaai5/fTVNMxGFmUaKNB2IwOiKONV2jSN+8nQjD5V3AEfPcYQan7MOru51Rz6RmZyKhOe8SbkexBM/R+to4fEES15VeBt8g40p1ZehxWndA89DSK2VjQVDgUxJzcyKaQ7Tm0KSElgF+LBSgJPzuUgpsazg2nhBTZEsatAybnJBH+VF0PDGhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by CH3PR11MB7868.namprd11.prod.outlook.com (2603:10b6:610:12e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.11; Tue, 7 Jul
 2026 02:55:35 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Tue, 7 Jul 2026
 02:55:35 +0000
Message-ID: <af9af571-bf47-408c-a475-584d67550d30@intel.com>
Date: Tue, 7 Jul 2026 08:25:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915/psr: Allow SCL=0 on platforms with
 always-on VRR TG"
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jouni.hogander@intel.com>, <suraj.kandpal@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>
References: <20260622101736.2389991-1-ankit.k.nautiyal@intel.com>
 <51f6951d566ceda03eb47402904f8fe91c7a9f38@intel.com>
 <bd2843d5-7158-464f-94ba-d7217d31f5c9@intel.com> <akv1vPFwizYGa7t1@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <akv1vPFwizYGa7t1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0148.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b9::13) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|CH3PR11MB7868:EE_
X-MS-Office365-Filtering-Correlation-Id: a5601500-6316-4cf0-6d39-08dedbd33789
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|23010399003|4143699003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: i9bl28Jw3WfMlMN/REtk8aGL2KH14Tag+PtIlpoWtDxdngCmdcQLs21+mfsg2QS3u3lmzRT76gCBriPZjlzGNU4AP+MxXPqOO+AljtfxVG0Y7yohobXsFi2BA6jf+5WComEwHcQvOYRl4WgILmUYrjpBrbSSQnCBwGqXCpoupRBtL6K8p/ABjyY/ZnKrB0/8o1wvG2ve0xr48om3cVsSSjDusHi/9oOqwZTkF2c+V058JCqWmEKTkS096zTzOIYwKPgLwy22X/NggCeIqdk3aMtQMHcS4h7A4reeCxBDG4uBV6oNFbAlMifgtlmIc+JGOFHsLwEwh9EwtU43YgJG4ENGD4Az/cLVjlFd/E+k4mg28gu5Eqj5E9aZ6AtjAq115X5ksJHu0+7zODG0uak75QA2WII6UR/jp4mofFezojxqio9b63+lTE/CZCOCyXuhtFfu8S4ep73TriSEI5zMV9Xzc5Mat1vKymHgKSY7kwFXaOsqjohpm6rMHud3kZ7HZicnvImQy6Y+x7UtqOtaiVX/ccEzZhFD2ZT0X1iF3cigK4uyhdXXJK1f6gj7wDY/w6cojsAExrkFZL5VEYie97cxk+X/VkCWfYdrlbjQwU0A/owud74AitoyjuGvmPOHD1AKCicFqFRoBMByMG8hJ99MJS639MFBv1pPHFe+IuA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(23010399003)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eFZtenhRVEQ2bUdZSFFmNFNOUjhxL0RvaW1MNkpqUkxrSmgzTk5rK0ZXVm9s?=
 =?utf-8?B?MC9vSDRPSzhxeVhKa25weklSSkFMOEFnZHozZ1ltSzk0ZkpZUThEbTdJb0VT?=
 =?utf-8?B?VkwrMld6SCtXWWkzUmVOV1Z1bVd2R0UrRm5SbXJpL0xPMUhCUmhyVnNhQ3dV?=
 =?utf-8?B?ckltUURDc3ZYTFo0Qyt4ems3eGl5dFgzd0tQanVlZ1YzaGRPL2djRGpvMTM0?=
 =?utf-8?B?RXdzR3dTcHIweWpGYzJxQzhBWk5vK2RMVmdEK00xenZmemZxNjQ1NWowMnBX?=
 =?utf-8?B?V1NuU3lwV0ZFRTBlWXAzSFF0QVdnR1lWYWNxSDNYVGpidDZLcGJtSUFLK0s3?=
 =?utf-8?B?bFJrYW43c2NtcWtqeVpJeFpQSEpRQzB3NUtaVlRRSG5LMklwQlJEK3lxaXdt?=
 =?utf-8?B?Qmgrck0vaktvUkY1dzlneVdVT3pwTHVjVkhXeUFuS0swTGk1dDc0Q3haNENU?=
 =?utf-8?B?OExiQ2RGM2cyWmpPTllkek9uRHF3OU9PQWw5bUt0SDhUWlp5dXJ3TExNWFM4?=
 =?utf-8?B?eEJ1SHl3Nk5md3ZjRTFxRDlic1hLRW5qSnhyZmt4dXB2SThYN2dWWXF3Um4v?=
 =?utf-8?B?OGFIMlR0RXg4Y2Y5U2c4MTFSM1JMRUJRWkFqMHRpclBpOGFjeEZ6eC9XRC8y?=
 =?utf-8?B?bks4cVFiZmM3ZWVSalJwSzNyYmZPaUhNRm04bG94M0w5RVZZWXNDYktZNjlG?=
 =?utf-8?B?N2pzenJlc3lnV1dHNjRreHhDRGw0S2x2VnhEcUhMejlSMWJ1cnMvZDJSczdi?=
 =?utf-8?B?Q08yMTBwdzhkcngybkRJVUtMR2hOTG1oTm5qaUZKeXMxVlMzTnVpeHNoSHkx?=
 =?utf-8?B?MUY2NHlmMDV1KzVIMmdvQVd4Rzd2QjQyckdsVW56M1ZhZGxnVU5hVkNFUGpE?=
 =?utf-8?B?T2UwMlBNMTlUNnpNcy81OS9uanlGVXRURkEremFNQy85UnVYMVU2K29GQThZ?=
 =?utf-8?B?bkVFK0U4TEhpejNseWNNT08wVFU2WDlqclVHMkhySTNKRnhLN0lNaDBxK1Jl?=
 =?utf-8?B?OERXSldmVVhqNEFQdGdoOGhuaCtUR2hqQUk4Q2YzTVNlRGJ6S1M2SHY0Q2N2?=
 =?utf-8?B?WjJPZjFsYWJES1BWOUZmclI4MmV5Z0lxM1NzOW1nejN1cVVPdDM2WHdFY0Zv?=
 =?utf-8?B?alNUNlNhNDczbkExeUpZd0U0L0pjblpMWmpMZ0FxSU1DcXlsbVU0dEM2a01h?=
 =?utf-8?B?T21KQmErMW1LOHZvN25pbXBrc1I1RHo3dGtQM1hyMS8rR1drN3N0OThSNHNy?=
 =?utf-8?B?YkFjMGVCQnU5dXdwWjFXVmJBQjBJcHhXNyt1Q0lTOUNjNXVOU3JtL0FhVFJL?=
 =?utf-8?B?U1BhdzQ2N1ZTWFg2aVcxbVJLOFVVUFd6VzhKbUhaRFhDSDhGdFJCU3YvejV4?=
 =?utf-8?B?d1ExejJnelBLRFdON0M3V0p0Y1dqTC9NOFpwc3BuaE0weUNNOXhJRXM4R0hj?=
 =?utf-8?B?TElkYkRMV280dkNKM3kvSzlSaDNSYWpsR1h5YmdBUDdTc0lTdFhrZEd1U3Fm?=
 =?utf-8?B?Y1h2L040T3ZyZFNuZkl3ZUVTaHZ5aGpQOS9PWnRaa3hLbnhXTFhid2UxRWpM?=
 =?utf-8?B?UVBHcnkxdFZwdWRUOWduVjBLZk40bjczV0hPUUpLY1kxQ1RUR1JNVTNocEpX?=
 =?utf-8?B?RjZHdVdaaXcxOHJCNERFTjNNeEk3RHlLSld0c05tcnhOMDY5M3ZJUlluR2hv?=
 =?utf-8?B?YWN1VGFqcUh5RXR2TWg4TFN2R0NzSjVLbzRhYzc0dm9KRDlGWFozcFFzMmtm?=
 =?utf-8?B?QjlWUDZQdGJ3QVJDckVKZHZTeUxrS2hzaTZCYzI0b2tHV2kyZEFWVmgrR2JF?=
 =?utf-8?B?S2VNeEdZc3hzODJKTkF2aW5nZjZOUno3ZDR6eWlLeElLTVJBblhMWmh1UFdH?=
 =?utf-8?B?aVpxdzlwdmhUY1BCOXBpVzRuc3o2cDBkOWdDWUZTNHlFT2hNSS81ZGZPVmI0?=
 =?utf-8?B?N0I5TTVueGFjVGNLQW9jK09aZkJjUG1TT0xpVHd5YUlyV2V1TkVadTVidjMy?=
 =?utf-8?B?YkpJcDUzTllPdnZiTERZRUtHaG05di8ydDhaNmY4NzZ5UzJpZGRxejhIQ0o0?=
 =?utf-8?B?RVNYZ0ZLdjloL1RJU0NhanN5Y1JZYmlNczNET2Fvb0FBNHJWM1NJZXhJbjJk?=
 =?utf-8?B?WUwvdEVCNVloZzQ5WW9oWnpDYWp6b2g1TlBNeUlUYXY3aFJTR09YM04xK2gr?=
 =?utf-8?B?eDZSTFI2OGorTGFOYTlqbSt1WmNucWdiclUwMExYRWhMVUR1TlRPd1U2d1I0?=
 =?utf-8?B?dDFZNTN6VzVCYzU0aWVhTGs0SmduRUpnd016SzBuUEZCOTJEYW5reFI4RmJJ?=
 =?utf-8?B?K3BkUXRCZTN5UU9tTHU0bG1qMndkeXFsNEg1MjlWNzcwYnUycUhVRUZscWFk?=
 =?utf-8?Q?GmymbBXDJdAFGb/8=3D?=
X-Exchange-RoutingPolicyChecked: feLmelhmsK04OPp9uZEUYg+7gbCE4hLd2XJikLL8kIu9gTtVKFRTMJmtVWhRCfEUolBlma/Sn04dftxh8gVqSPHh7Zmp+Ju17tpKNTCD+kKx9MhtACUlAKl//DItDT53XVgUsTfLceMXP0DCBPVP6EcQjit/jJ8lVr+kj72WYwwFajhSRbgyEtljVa0HKh+XclDzowfAdiQCsRhHheUr5g3Pei/eFSqJx/KjVRodIezqp1QaASGASkokbVlxkzzub0pHbMnHRWg9lbJqcHkX4RmWYoyru0y1K3ZC3RTXdAyGADLUJiJzq1EJMvbul0p+yvOPLmDB8l+bxdzVQ/mdUw==
X-MS-Exchange-CrossTenant-Network-Message-Id: a5601500-6316-4cf0-6d39-08dedbd33789
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 02:55:35.3640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TZ5tqyJttRjBwLEhddAguWVz2avhwM37mDUNxY66nesmeM/5kBlrCiDohKA/5IOsMIUDmL4iZDzMgyG7Am23ZdYCJ2T2pekX0yLI8EfZXlQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7868
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,lists.freedesktop.org:from_smtp];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 948E3716E95


On 7/7/2026 12:06 AM, Rodrigo Vivi wrote:
> On Fri, Jul 03, 2026 at 08:44:05AM +0530, Nautiyal, Ankit K wrote:
>> On 7/2/2026 9:20 PM, Jani Nikula wrote:
>>> On Mon, 22 Jun 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>>> This reverts commit 4f1cab2e4863d96ce13b8d94151f4848e38c3d5b.
>>>>
>>>> Allowing SCL=0 on platforms with always-on VRR timing generator is
>>>> causing underruns and other issues on PTL in some cases.
>>>>
>>>> SCL still needs to be non-zero in certain scenarios. Revert for now
>>>> until this is better understood.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> This would've needed
>>>
>>> Fixes: 4f1cab2e4863 ("drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG")
>>>
>>> to have it be picked up for v7.2-rc2. Please talk to Joonas to ensure it
>>> gets picked up for -rc3.
>>
>> Hi Jani,
>>
>> Sorry I missed to add the fixes tag.
>>
>> I'll coordinate with Joonas to make sure the revert gets picked up for
>> v7.2-rc3.
> done, pushed to drm-intel-fixes with the appropriate Fixes tag.
>
> Thanks,
> Rodrigo.


Thanks Rodrigo!

Regards,

Ankit

>
>>
>> Thanks,
>>
>> Ankit
>>
>>
>>> BR,
>>> Jani.
>>>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
>>>>    1 file changed, 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>>> index 911afb9cb24e..92af21d823a3 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>> @@ -1405,9 +1405,6 @@ int _intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state
>>>>    	    needs_panel_replay)
>>>>    		return 0;
>>>> -	if (intel_vrr_always_use_vrr_tg(display))
>>>> -		return 0;
>>>> -
>>>>    	return 1;
>>>>    }
