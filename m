Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJxwEi4YDGrrVwUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 09:58:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7455798B2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 09:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2313C10EAF2;
	Tue, 19 May 2026 07:58:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SG1MaoHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99FD710EAF2
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 07:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779177515; x=1810713515;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=POISRICcECdEw/aXMLzOpc6lfqxJYlzzylECTpNgKuo=;
 b=SG1MaoHHSrGdV//rTaj0dle5imDGyvm7uvzcoPlTGyEc6qEg0Y11TrZl
 04V6P9or6H4OR5zHBdi2YWLvhJueSWO3Dho6Xmc6zGBh4fV+m9HNvBsuU
 +CXfJFETGMXnvXn2wP8800tZwQVApz3SAsRuCACy7IX4d9arpmNTPY9Hb
 MpQ+wDmWIweMBkQu8eO2QjzPK2fl3mAeURtodELFyEkNVKdXG5DSIj0c+
 FV9jzmbqOUmpKmoYlLdzLxjz5+EnUqldAUalckeCtpOhqVdm/4oT5j4kd
 wFHmurQU1rMuoGyyvnDOM1k3un7KXiJ+PzVoXT1xPM2fMfQ/Z5G2aS6bx w==;
X-CSE-ConnectionGUID: LYqTq8hCQm+wrcinLo0uEg==
X-CSE-MsgGUID: 6ZV8s/f0Tqytm9DtgandXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="80168061"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="80168061"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:58:34 -0700
X-CSE-ConnectionGUID: hCmBPYS8SsyAc749Ue9Q2w==
X-CSE-MsgGUID: KHWyANvASh6rt8pehQ+zLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="277806580"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 00:58:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:58:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 19 May 2026 00:58:33 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.63) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 19 May 2026 00:58:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fKVQXRgWZ0uR9X3/veBMCiO3S+RzzeXshdq6FSQlBiF9NaBala6jUj6sina1zVRg5dmDvuE5txiOXApW4LYrm/uq0Lqpzaw5QI7IgiHw7ah8a0iuMPnrrK0pVsPoHHUnhV1CybserRthuJ9d+4ymA1joKHSWW20QwR/df38gSOeeE8RG6zijKjBRTiTEysnOY12jxaxz/fvDfI6uq8V+VSvRkDrxl6mE062ySiC4bb7kYtotjOHPpc+tzkW/mhfecl8eEDNNKfVmHM7YP6lghbrvpsQy/S9LNMS0FBDZ6rJjs4tTKwF2ahCowuyWWuqYNfzg0v7ch0JkP2TNNH1ORg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3BgqQBJkodEY4y/KvtShM2SAT6xc9ffZycj56rmFRUw=;
 b=HKPjIN0bHC17UoA2ICVzMB8n0myL1r63Y+44CHB4BI2I4CYwBslAJ3KVha/g5xofRrYOzW5w4Z3hMDTuHzFuaClnTxddzlY7Siv+kQ/Ipqit1zBh5nw1E7KsKEPkBu3Hs4FZTmOp+RELsaAns9J4a+YRccGT/oC6cTn0Rc8zFseaGn4399cehslGUX5zBSthgikZf3QeTIx0fs9Ar4sTVcUgosbLd8evjzJRbsj228AyuklFnLZ6rt2Zc5jYZDrV0IJPn0lnVdRsUvH72U7FH5UA5eVACeSoOefoR0cB16v/jsfKbiuArJUCjn+KILroBdNxPOnGWDG2GnFSJEM6SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS4PPF7A0031045.namprd11.prod.outlook.com (2603:10b6:f:fc02::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.22; Tue, 19 May
 2026 07:58:24 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.21.0025.023; Tue, 19 May 2026
 07:58:24 +0000
Date: Tue, 19 May 2026 07:58:11 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gt: Fix wakeref underflow on device hotplug
 rebind
Message-ID: <dwcynfbehm6g27aqqngf3hmxonb6lnglsucffubbab4ff4z2gk@wec3obsam5yk>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260518102444.5406-1-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260518102444.5406-1-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DUZPR01CA0020.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46b::16) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS4PPF7A0031045:EE_
X-MS-Office365-Filtering-Correlation-Id: e0a24cca-0f3c-46fd-4031-08deb57c66d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|11063799003|56012099003;
X-Microsoft-Antispam-Message-Info: 3ipuMNMx7qXVGOfZ9LS/NbzXllT5BehLHTVsaMaq5iA0JsrmdOOV2xDZd5OcF+vKXxPiS5weT4cjv4ngtzTu3By8JVA/VjUFdTji+B9CrzLB9DoXmvdZClXxrYV/CzL0+H7AYUz4ma21XE44TQ230f1qaHhX1J2yjZycJ87x2qKLFbC6Z6XYyFJOdUrNYRGgsSbAti5BOKfja2qfugKw4UB3ZX1r96ZDqkZVijb05bf97oEmlO+5BXMTq8QlbkADuQ1gd6Z+wp+WfXkUWIuKLk5dDKCHIvTNWOErxyu7phhL4leZBCjrqZJkBONZ8GUiSJa0ZwZRg252knzcPMJYexi9+HX71lvIpQjfBV8cu0BeW+ZBu2bx7u+9KAA/Jfx8dV40e0YURBEid+TT7SViMKLCTy5220+nHwm7f4qChBLEVJmGWpU/0B2kEAqlmOhKtZzrBobZbA2bJrQpb/ZyIT3u81QxWUPKsbgwj+6OZtUmePZUsntTy5JfVcA50NtvtBJeKuVhqNeQOLammaAAzsFSWsg+jau97FxZGjkT3qCrQAQIgVrusmy38v27oPwniQhgJ8EYibNjvfU4lFrmOBmRBqrzgq2leUOYNLeMUGcPon6Y5Mec+F8trOiS3ci2Z6uhxL/l0T4EPl2DGEJYyave8jgmFal5LbXSjHAIyIlB6eF8VcTSUaCovPORJq+t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(11063799003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGxYcDcxREUwY2VlekdKMmNsQ09LT1BUM1ovNDRXVzlPc0ZhcHJBVnZJUTJL?=
 =?utf-8?B?Sk5hQSs0UFlETkc1RFZvNzNhdGhSM2o3NEVBYTBHTEVuR0tUUGFQSmI2TkI4?=
 =?utf-8?B?WjhEbkN3K0c5d3pRZ0JTTFZBd3JodGVLL0x5bzM1VjJJT3FyNFdZY3Zoam5s?=
 =?utf-8?B?Zm8rNzQ0ak9XUm5CRHZza2lhY09RUFpXUWY2N1dHZm5jWThLSWd6aDVJbVdV?=
 =?utf-8?B?YWl3WmpMVUJQWGZTSkRocWE1VDNqYVFWSElXVDVBaVZ3Rk10ZHFSQVFzTWh2?=
 =?utf-8?B?MUhpVCt3SDRRcW5mWWtNSmNpZ3htY0tMZC9Fc0FlanI2THROaHZmQ1NjYmVR?=
 =?utf-8?B?aWx0cmk0dnY2ODh1bFhwczgyekt5RUJYUVNXZjFMQ0h5bkNxRFBoTVdZR2o1?=
 =?utf-8?B?aHVQajRwd2RWcFlSTmhUNGk3WFUwc3pFVlJOTG9MVS8rajN1bUgrZkc2TCs4?=
 =?utf-8?B?OXRpR2J3QmxpMVM5d0N4d1ZUeklLUmEveXFZQks4S21wOG5lczNGVWN4dFBS?=
 =?utf-8?B?V2doNzluL1dWbmpFaFNpSUJjakRTZ2VBNVlzQ051MmJ3d0YvSnRlUUxCSFZi?=
 =?utf-8?B?YXNBOHpQMlhWYUVhbTdyZHl3MTlRLzJLMTk1cU9oMVBhaTYvWks3eCthK1Rx?=
 =?utf-8?B?ZmpXT1cxOUgwZnB6ZlpLZGtha1Q1dUk5Vm40d0VUMHU4SCt4ditwdjhqSGZi?=
 =?utf-8?B?WExTY2Zwenp1UTc0UGl0Y2YvQTlmV2N3RERXU1BJbEd2enpLTEVCazJ6SXFm?=
 =?utf-8?B?VjBqaXpKSE0rbE1kQnh3UFdIVDhtZ2N5VUdXMjBIbGl1TXYzUXJPQVY5cU40?=
 =?utf-8?B?OWc4QWV4NENwMG4rTEN5cWpyRENsSWNFcFhXTDNGcDdHSHFvWnJXVDBVWEJu?=
 =?utf-8?B?TjFrQm1meGI2TVI5S1NZV2k0ZnNuS0l1UURiNGllMllRMkt4WThQQUhKUzBy?=
 =?utf-8?B?UHN3Um9leW1DbHlrc1ZaL0pZN3c3MmEzeFNRNklpZFE2SVhEWkVyRHdSNkxa?=
 =?utf-8?B?bWdIT2N5TE5jZHh0QXVHMUxQaml6N1dOTVhSVUw0MkxqV1ZJcDN0WGM3UGNQ?=
 =?utf-8?B?UnJieEc1bzVIclhVMEJNZFlpWGl0VU8zOHd4UEZEYTNEK1ZNcm41MGZ0N3Nm?=
 =?utf-8?B?U3dhSTg1RTkwTWlLVmVpLzQvR0lkQTJXNDV5ckJ3RnJFYlozVzdCaXMzQ2la?=
 =?utf-8?B?bGRsOEI1bUF4K2ZObkxBYzR6Vm9xR3llNlE0aFdWVm5ick11Ync5M2JsbnV6?=
 =?utf-8?B?TURNTUwwN2tDaUNLUytaWk9raW54ZTMySE9qTHBkak9HNStoNWdCaE1DSldM?=
 =?utf-8?B?RmxLWHJMVDRmZElGTTZIUER0MHpnQnMxclFVT1RqREZ5UmlVRE90dGg0TjRN?=
 =?utf-8?B?ekZaditlaEZmZUFqYU1WeUdZWS9iWGpRbUFSSUhhUU5aR3gybkJmdXNHSjdp?=
 =?utf-8?B?VFBzSGw5WmNEMDh2cmxkTUl3UEorSFQ0VkwwYWs3SmRKZjRyVDl6NkY5MDkw?=
 =?utf-8?B?dndoZlNZNXhENmdHT2haMTdPMGxWS3JGVXlqRGtjSG5ZdmgxbTgyaEtLdU4x?=
 =?utf-8?B?NzYwNHVET0M0ZkFVdVQ4RmNRZTQrQ1ozRTZFYjVjVms3Z0h5cDVUNXpXQ2tn?=
 =?utf-8?B?Y2tSVjduZSsyRDlEVVd5UURQcjVjUUsyZGIycmFsM1d1c3F6aEw2ckF5aVBu?=
 =?utf-8?B?YWlIRERaZ1lxbUtOaVRKUjhyd1FSZmp5SSszZkNZc01BOEhJdUNIYytWWXYx?=
 =?utf-8?B?L04zU05sblg2ZXREN3NVVzE5SGlKWXNLR1EvMVVqQ2JQOExCMGtoR3Q1bk1h?=
 =?utf-8?B?MHpRUmhVemlTd3FXY2s3SmptL3Y3enVSYVloK1hwUDJPT1FMMXd0VXVUVUZX?=
 =?utf-8?B?WlptTlA2RlEwNXdKVjNqa1lQdGR3RjRncFd1bmJWREt4cWtOVDlETjc1dlNN?=
 =?utf-8?B?QUhjV3pFQ29pMWlPWUZEMWR1RnQxNGRiQWtTMWhjSHpCc05YeG81RVpiWnZm?=
 =?utf-8?B?am0yb0k5UGEzdWN2NVUxaWNleElqaGhGWVJNWG1HM2QyTk0rT1J1dGsyaUJw?=
 =?utf-8?B?dkE0bVhoVVE0TDc2aEFkN1pjRFdWMzNBR0t4N3RNd0p3RDNOOWYrMnp0RjdR?=
 =?utf-8?B?QzgrcG5ZRkc5RFEwRndRUEhETXhlWDZQclBZRzBvVXpjNGxyWlVaemVSZDNa?=
 =?utf-8?B?Q1ZsQVFsT08vdUdlQmlOMkVQekQ0QnJxUzNxaklrSjRhaTJmc2JYUHVzaXpx?=
 =?utf-8?B?VzQ1UUJyNm03eHhMelBhcURDR3RLaFN6dS9wU1dYUUtZcmRrdEY0UmVjSjBY?=
 =?utf-8?B?TFJOTWZFUGtSV3hodG8yS1BIUnJTYmxuYWo5Q3BJSThJYTRRVmFxL1lXRHU4?=
 =?utf-8?Q?BHEk6MdCuPWV4y8M=3D?=
X-Exchange-RoutingPolicyChecked: TcpeIWpyq52IYMl/2EmOYo3SmpKXYno+sdre1RdAbY+kZ0lieQlzQZ63E8XNbYZ4ul+nFhFMAuOV23h+v1C92pw037qIU7HMsOaiOCH6BEtTFgB2N3cta21f8fcxVqOs9KjuzEnzxpTpbvN2eu5pIQEpSZQsbd6Ts2DIyQ6xRv1BbLOdtMsUI3MTdX4SZxmyuQhr20waDDULxsmim56wljRCET2kJ1aTG28oUa0rMJOrstCxiSKulqwLCzkgaBjcxnIYO2FxNwOATw73COrWuKSZ5hdE+PBDlcrYGsNEc0ezgU2v21D2q/YxSpWsaUDfskHn5eWDDjiQxRhS5dGQ5w==
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a24cca-0f3c-46fd-4031-08deb57c66d4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2026 07:58:24.0651 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8AAz6aMhF1k0S2ADZTDzmInHiF2XHfzNAeBV8YHOsBWOX/JSx2MicpN1/8E5/9OOVL8UP2wbybaWO+FW1GV0wV/lfi/NVbwRaG1NWuipm80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF7A0031045
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AB7455798B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

[...]

> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> @@ -475,6 +475,11 @@ void intel_context_enter_engine(struct intel_context *ce)
>  
>  void intel_context_exit_engine(struct intel_context *ce)
>  {
> +	if (unlikely(atomic_read(&ce->engine->wakeref.count) <= 0)) {
> +		intel_timeline_exit(ce->timeline);
Do you know if intel_timeline_exit() tampers with engine's
wakeref counter in any way? If not, you could rearrange the code
a bit to save a few lines:

{
	intel_timeline_exit(ce->timeline);
	if (likely(atomic_read(&ce->engine->wakeref.count) > 0)
		intel_engine_pm_put(ce->engine);
}
 
Otherwise, the code looks sane:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
