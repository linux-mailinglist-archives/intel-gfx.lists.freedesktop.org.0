Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMI5JGw962mfKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:52:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E3245C892
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:52:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58BA710F48F;
	Fri, 24 Apr 2026 09:52:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ddoJEVoM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A38910F48F
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 09:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777024361; x=1808560361;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=4CxhRtRFZEbFEUe0NwdiV3wlz/wd2NpQ3A+ZPlaQvKQ=;
 b=ddoJEVoMSjoZBeR8KUTXL2imUJAFoBgpiYCQSJ5TnGnqxzEhC6MLgwLB
 OCl7XRXrUOWyLL3iaeZm5Gz+hclfO7zr3yfH7iTfqYlGgHl9HvNh8eOs0
 fZ7p/qrfxh9DV5N/djUFjS+B+kYB/CCKiV05/fRjXgMz7LkQRQR5m+BvK
 zRd04uY+Witbqy5RJQt0BKNKYeqhPBE3PZYwFuYxn08qxxrYhTFNfhHnr
 cGwS3mOy1t/QpV6AX3wg1nJ9bQFc0xQnA+jJuCBUlQ+ajK37JIZi6F0GJ
 gcaqnH9zf39i+/HS6taLccuUezZh3GX7PFxO3TvxL68tj0mzPSuEcCXv4 g==;
X-CSE-ConnectionGUID: RLO5V8s9Suu8MbCeub0t/w==
X-CSE-MsgGUID: hQDuwKO8TJStvN4NYAxX+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="89386686"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="89386686"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:52:40 -0700
X-CSE-ConnectionGUID: KnkHxj42R5ynh3jQ8C8OMA==
X-CSE-MsgGUID: Ze97k/GQTfCG3glxEqEykA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="271035370"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:52:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 02:52:40 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 02:52:40 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.38) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 02:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KhD2JH4Un88a1UHjRWEH6KoeMrXrGafpasMRFLghqPwJlwuSjOSnZVvza2zFuYPpi13qmcp3QsFHURsOHdohSwZlneHBW3HySt2/TfYqqxIXWLYEAtyK2q5X+TR4vGSe4/Bv+rYkDWUv/WtkvO8iSRHRUfhPFm96pHUHdmi0Z2shdW+/mXf1ADnqRkeRDBZQBLbJ6MpMUrBBli9x5eGX21fy89zphweg9cJWO/xChwxiw5x9zJSMAg+2cw987GADwodz9O+2NxCo1vFtIP9z1XnSvCUOIy49pcG0S8At0CKCVlu4Vz69X8q+/To6z5enKyLRAIV0B72qPVkzN4t5iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4CxhRtRFZEbFEUe0NwdiV3wlz/wd2NpQ3A+ZPlaQvKQ=;
 b=hKI4RNydLTzqCsPhrcTN9rYyFHlmL+CIw3igmh42958iMPUEyjSCKFdcBy8mldsJCIrqil3HEUNBwLtLPfUSDZe96Cq4/KFsOoMnaUnL86/CQ5KZUItn6EX8Yfe3GO+gnRusLy+DM+6SldUkOzqFSG3W40oc+hubDeHocMp4U1R39prUQy+o0789cuTozFpZBKy18jlyDqiXhuikUEB+AGeEZjSJlwkS+378b/GXYWW1LJlJRhR8OOVx4olU7vrfkqwqKof9MzIx2L16XMJKfLzHbcOqCKN/lVINhtH5o/tMP6WzQVSK2o7s2H4eB4S8hEolXHyVB19Rksotllq8Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS0PR11MB7631.namprd11.prod.outlook.com (2603:10b6:8:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.42; Fri, 24 Apr
 2026 09:52:35 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.012; Fri, 24 Apr 2026
 09:52:35 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 24 Apr 2026 11:52:32 +0200
Message-ID: <DI1AK5I0GGGY.1PKOHQ807N9RK@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v7 2/2] drm/i915/selftests: Run vma tests only if
 current->mm is present
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260421061716.3341529-1-krzysztof.karas@intel.com>
 <20260421061716.3341529-3-krzysztof.karas@intel.com>
In-Reply-To: <20260421061716.3341529-3-krzysztof.karas@intel.com>
X-ClientProxiedBy: DU7PR01CA0024.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::26) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS0PR11MB7631:EE_
X-MS-Office365-Filtering-Correlation-Id: 372be85b-7ba3-4cf0-f3ae-08dea1e735ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 3Zwu47pVviOGK7DHzucH4dzxeQpgF7Z09GauPsuPf9e+7fvLyR/H8KWlSslsJhRP/lqPVNTsk17+UpciiW2reG4vNpZqq4GoZl2cCEkp84AxPNJxmRdK6Ygf/WmkeThc9i6+CRRQfWbX74fZxaQ3jI28WWTrO7baETncmbXpyhrPuWzs1BYUQyf2Vq08OO4uA5oo+Bv+b4HKuIMal+pauyaREq0bH5aNEBkKABDfAYWIt8Lj/VbRU79lH5GOFHYWlkRCFmBbwhB2mCLjJbZ+KK2UrWFH0cRoznylMkn13Ljk8iFb1vDcg+6XSfHso97I64DwnI2iiNcQ7O9aAIL94OE3yx/r6nE/7oGzn13yVkF49fSYIMZu8TrwvgWDpLlIv4iPmDfiNxmKXvuqs/NXV4dOXddm808/a9CowuYIDO3fnYjgXkknb+r9sDEcRwwKzHeRGxjiHsp/PysNdmazfFEYwgqGrhjd4sXBGIaPdEEZUcuaQN/TGp6Hz3rl2G0ElWWny4+ij3kzUZ6U8fh6XFR1mu3d30EGW2DOYAdNc1DbND0MrqndRvTEZZzA7TYyifaG1vmW4UDQ+JVRF7zIcjrjAXXJqxg7maeccVolDjeT1/s2YBLXGPEbNdyizuLWN6fhjMwiMjGTJ3+w+sm6621JsYtJ7mTrbkvQh8P7G0bcUdcgc8iVJbBFr9UZpXOCogusbyI7H1V3lLeKqQ4lzbYQvQGZD4DqVdz0Oxb0ZNI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eDJSM0hzT2M4eFZPaDBkaGtUb2s4czZQWUdUbWp0dEFyeVQwbE1lNXBxZmV1?=
 =?utf-8?B?aEZFak5wcGtZTFRtT0YrdDVxMWhDVmNYcHVrSmdQKy9EWm02UmoyMXZ3SDZO?=
 =?utf-8?B?bHVsSGFmSHF6WjJIeExLRS9PTi9ia0FQUExjYUo3bGFnTHhhQ3NPSGovTzZm?=
 =?utf-8?B?YVAyU2pMUEk2SDZDQVFSQWcvRXEwM1VaaEk0MkY4YlJ5NTVBM2wvVVcrV0Jt?=
 =?utf-8?B?M3FmVzR0RnpsY21rTEdLdEpFOEE2NG9OYjg2eURyVkpRUmg0b01TTyt3ampN?=
 =?utf-8?B?WjZyb2kvSEkzYXJFbzdSRTlXZDkzbkRzay9Cald0NGZFa2hEZ2FtcmdnSEV0?=
 =?utf-8?B?d3Y4MXQ0blVJZTZUMGZrYmRMTWZ4NE9uWVcrRHJhcEw0NTFEZVpLUTk1bXhw?=
 =?utf-8?B?UjY4UUFQU1Z2LzFtWVYrQlhYd1dqV2YwemN2TGVKZkRPMGVlMmkyYjJXSjhW?=
 =?utf-8?B?ZFQ1OTdzWjA2azJlaEFFZzRyVFpWUEltTGdFSzNldS9TQjdvQ2RiN2FZZHho?=
 =?utf-8?B?OG83NkorVVF2MVRMN3djM0hRTW54MGd4V3RWS3JRa1p0R1YvU1cxZmU1MVVC?=
 =?utf-8?B?YWE0V1FPcEJrMTF1amFLZHhpSW1YVVEyeXFRbXg5VmZHc2NPV21MSldlc0lJ?=
 =?utf-8?B?U2ZMWHJwNTdhTk5QdXBYOUpBaHMraEtuYUphQU9pRURVZDdacFBPOEk3TlBt?=
 =?utf-8?B?T09SMWtZcGt6OFZrbVI3dm5aeCsvQUFkYkdFY0RObkhTWUtXRVJnTnFPTURN?=
 =?utf-8?B?V2V6M2cwMlB4V0QzMERKcklTNzJhRzBySitSWEU5cUpCdkRKRHdVcjQ4Z3oz?=
 =?utf-8?B?WGRZK2laLzBGWVN4U1pSYmlBeDVoNDhPTDBNV0d1TXpnZmVtTkhic3Vab0lJ?=
 =?utf-8?B?RFdSNmRLWVZVTWNoYkhlN2Z0YXRobzExa2ZYenF2NG9paVVHRktqM05KVndU?=
 =?utf-8?B?VXpDR1AzQXU2Y0ZxenpQSUdQZFZyVTZPcDNDL3NUQWs3TXJTcldOcEs4MlFa?=
 =?utf-8?B?ejJpQ2xpMGVpUzREUmVpeUxrVVA0NjdaKzU4YWc0M3g2NXZ4ZWpvNEZJYWM4?=
 =?utf-8?B?UWppZzN2MDVwRXJoOWVTZGJGRzg5UFNPYzAyVWVHMDJOZ0Y3WVF1eUZJNXZ6?=
 =?utf-8?B?YmR4M2YyalMweVRvanFEU0QxWjZzYlNBYXRwdC9VMzdSOVhMUER5VW9UZVNE?=
 =?utf-8?B?MnM3UmUrUys5QUpWR2wvTUVNY3k4RmtRQUhBNnZINVZZMXhlM2R4ckdCdXU0?=
 =?utf-8?B?VkZtOHQ2dEhPSUE2NVYwWG5tZ1lCNjNIb0l5eE9GY0Y1RGx5Y2M0aWMyc0Z6?=
 =?utf-8?B?eUtPaW9Wd2hzZE90ZTIzVU5FQklTcDBiYXYzYVE0amkvbkQvaHBDUld5a09G?=
 =?utf-8?B?Y3FBR3lVd2JsZURPTVVIdVlGT2VxNEwzcytaT2JGYm9UZndiVFBTcHZON3Rn?=
 =?utf-8?B?Mk5QV1VWRkZPOUZ0OTVJUkJZeWxqZlgwakFZTm0wVVJQbXI4dzVXWmlkclBo?=
 =?utf-8?B?dzJKd2RKMy84L3NhRk9JMTJBWVZ0TzFNT28yVkVxemNMNjROTHV0R1JoMTRE?=
 =?utf-8?B?MFltRkY3eTNyTldpam96SVdCckdIc2FKZ29xRnNIS3lxVXM5OUo2cWdsTFIy?=
 =?utf-8?B?bUFlTE5tR2FQSjNzdlJnb3NLSk8zMTkrbWhMU2dEV3VMeG1aTURudWdjRmI2?=
 =?utf-8?B?eEtXZzlOUXNCc3FvVmlqbzVlbG9DZkVaQ3I5bjZWMkVOMklkNENrdFoxN1da?=
 =?utf-8?B?Wmd1azJFaDhPcmJVL2lWNTA3TVpLbGtETWxaUmJZMTQ1b1psZ1ltaDFMTWJG?=
 =?utf-8?B?eDFJelpwQVJIZHhEMzViOXlTaS9leElyWjRVUDVlZHNIRnhDYm1ETnZsOU5P?=
 =?utf-8?B?Ny9TMHZyeUs1Tk5TWjFqNnlTSTI1dmxYTnhtSTZLLy9mN05aY1hnKzN3UzND?=
 =?utf-8?B?WUIrb0I1YW5uOXE5eGoyYmpyODVTdURsYzBCZ2JHMnI3Z2xKeXlHYjBvVkk0?=
 =?utf-8?B?RDZKOGJneC82UGJCVjIwZnpGWWNoYkJ1ZUpnV1BSdE1mbFovN3h2RG5mTTlB?=
 =?utf-8?B?Q20rNzF3OWwwK2RlTzkybCs1Nm50K1lMRXNNK1l5WVRHRGREbzNUeHdRdzRL?=
 =?utf-8?B?RWpCY2dTWG1nYnh3ZVZpUEF5OTd5YUN5QkV6YjMwc013WHdTdENaU0ZNbUVR?=
 =?utf-8?B?Z1dpYmtsaUROYUN0Y3E0QmhPbGdPVVVnbG5QYUdENVJMVkpPRzJjOTh3T3gr?=
 =?utf-8?B?eE1MVDlpMlJiNmsxUWNacFdDeDRhYTU0U1R0UzNGNFBHTUhkTHVKWDFuU0lM?=
 =?utf-8?B?Um1SSGtlSnNMN2VCbnZtMThzV3N1K0svODFYTStJaWY4cDFFeTRCd0NwaWs3?=
 =?utf-8?Q?JhSw12ruA5x7y7mA=3D?=
X-Exchange-RoutingPolicyChecked: BR967jmVTtyxXOplJ4M8zYhkSZqTYvb62kyYANCu52SxrsZZ4LKLqMBIQQRp8rJ4QIfOD9WOtDav8BrD3Q4nwl+Wc0fDZKFB/IxzKTtG5nCLNR9XidEmtXhv97fyJea3oDgzAvAi1vySxf013XK80+EI77WUE6jo0YNGX6Us8epZYuYliCFFeyP2BQTw7BdjS0fk6+Ne9BDAhhgrVnwwiJ8xiixdrgl56tRKq+wF0/Rj75TXE01C4c4q7B0MbLHqOnZreMWoa3imk8ozvHrtBN5pru7TQ7g22BkkbBqnMd4fe7w7UFrq8H7EDHt97uez4kCG80OWgUjjyZmmcQqMqg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 372be85b-7ba3-4cf0-f3ae-08dea1e735ed
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2026 09:52:34.9392 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PT4KcbEwJoO97p46XnrGukocTmpZGORik2MFMR3seGVdsz5bqrTna0Jqe5lyC/+17KinS51t6buNM55xA+MghPtmx58R9iQZSZivusXLB/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7631
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
X-Rspamd-Queue-Id: C7E3245C892
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]

Hi Krzysztof,

On Tue Apr 21, 2026 at 8:17 AM CEST, Krzysztof Karas wrote:
> This set of tests require userspace memory to map objects,
> so run them only if that memory is available.
>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
Looks good to me.

Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

--=20
Best regards,
Sebastian

