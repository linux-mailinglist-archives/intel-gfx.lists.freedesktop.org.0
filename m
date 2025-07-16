Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C67B0778B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 16:02:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 486E410E288;
	Wed, 16 Jul 2025 14:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d5pZtU8o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F36610E288
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jul 2025 14:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752674538; x=1784210538;
 h=content-transfer-encoding:date:message-id:from:to:cc:
 subject:references:in-reply-to:mime-version;
 bh=aEiWbAtsx4WZx2adFHgk1OoBqBXs3oXS4HtPMbWgCOE=;
 b=d5pZtU8oi6TNaBBSOYA6wlXYZSVjmNdH40vbqwun0uP2V6Mxwr4gv7en
 mo4QTmdxDPLsGH2o4Rv4NOdf1MPjqElk9jNQkmArWuH3IlHij6Xx/CRGJ
 nxiaXUoJzopFmIL1UQVLj1lsLzjkfQcIN+NNq9q8OdlNdjKnAr7HMn8PF
 G4DycK9hQYZG/oqR1IU+os0JN5Otst69WVoXMpAUDkt1VI+7osYM1MejC
 E58Tgixmol00gKbbRUOG+E+odD3UhdJRfqw6opIf0suQrwaXbaQKCQ3nJ
 LjZeLY3+jrq2pcEZV+dypsiJ+sWQW/6Eo0+FnBs7zhobXyCtdi57TevEn A==;
X-CSE-ConnectionGUID: 5ey2T83xR1+64IKNoUGdtA==
X-CSE-MsgGUID: kpwwMnzXTIqnMwMFqTs17Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="65490678"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="65490678"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:02:14 -0700
X-CSE-ConnectionGUID: i/ANXDHhSY6g0S8pYV6ANw==
X-CSE-MsgGUID: GphwvijdROyXWKSC4mEXSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="188517591"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:02:13 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:02:12 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 07:02:12 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.62) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:02:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u+GSvGkjbHuJBZ7h4gFom2LaqUClsmOYaVebIr6nyCQl8A0N+u8s6l/MntpRj8RnI67eQc84eVyrs0nPxXwXdf5d441Zl/sz+YGPK7Me2AZ8grRVNeZukIhfhkXwUr8EyeY0D6cXDWsQTurUMikcuxBSIpnJuaN1fUz2p1LJoT/LtMa6X9Kx2OzfKzcfpdH2oOtFPVj8q+xj9xoOcG7v9Hb71WStJE3RQUSY79/wF3RlOjDylxk1h0SYoDf70biQMfIu/XKUjZ4c0poIB8CV3egNMr1KPjThKMnAgx9Jhx56oU2KT/88uajl0/VYOicoEVaKLNOdvK6w1196yp2i3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aEiWbAtsx4WZx2adFHgk1OoBqBXs3oXS4HtPMbWgCOE=;
 b=ADpZnGdIxXEt7C5laK6Y+njsmPkbQNsm1ou5eQeUBrw0ufl5ZwumwFE/Yf8bp2izK4X8J/jS20yUQeEUryhHtq97AD9Hdb6ijGDRWqrgymwsLSmmsSr6x/ivQxt70or4cni8V502FW9V+SemwfYUTfEd/ZpBifigOX8n+aBsGrHrv0TMV3T2XTFPLPLdfbHf9sTpYfBChKOTPi2Jb73ah9FR8n+J6Jg+a81S7UIg16bhCxMiFTVw59qaSkwlkoRJbTCAdm0u/DNJLCfDUnOhot0FM58n0CdqRpEF8ZpqmQhMR+jtTEYVqBMMrJs1+iYNsV5k7J5BYvKGlmPCpG7XNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA3PR11MB7977.namprd11.prod.outlook.com (2603:10b6:806:2f3::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.37; Wed, 16 Jul
 2025 14:01:50 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Wed, 16 Jul 2025
 14:01:50 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 16 Jul 2025 14:01:45 +0000
Message-ID: <DBDJ9CJS6I9M.1FZ1MVKPCPVTP@intel.com>
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH 3/3] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250716093645.432689-1-sebastian.brzezinka@intel.com>
 <20250716093645.432689-4-sebastian.brzezinka@intel.com>
 <j3q3mnt54wmdhoksxsx2ybv2z63j6femagt4kjmbyailbcpr3m@433enaxizil2>
In-Reply-To: <j3q3mnt54wmdhoksxsx2ybv2z63j6femagt4kjmbyailbcpr3m@433enaxizil2>
X-ClientProxiedBy: WA2P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::24) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA3PR11MB7977:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ab9623d-e189-452b-31e9-08ddc4714f6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YzJmUlB5SHVLbTBmWEJmd3grdXgxQkZINWpnRVQrVmNCRFpVc3JyMmdQNHUw?=
 =?utf-8?B?V3QzM21ZREYvd0RsTU5ZUzAyb2VoaWdmdXErVG5FM3lyOVBoZ1E4SFd2NExj?=
 =?utf-8?B?SjRvTVNiemVqYVVoaS90aFFnaFVUWkZOS0dMQnlUaHI5MFVGYlFzTGRHTWxy?=
 =?utf-8?B?QVNpSEQ2WTUzdUlyYzltOVlxMy9pUDRQdVY5dE5veVpNQURXUWkzSnlaN24y?=
 =?utf-8?B?VjlrR0FLTjFROUlQSzUrZSs0QndtaExsYnBxMm5URmhXMk5RR2hZNlB3ZVlM?=
 =?utf-8?B?bDlkZmI0b0w5bWZPUkk4dW1ZNml6UklaNzJiVkd5U1hkcUxzOHdvR3pUZFZv?=
 =?utf-8?B?dUxnclU5b04rMXI3T0RpaXAyNTlGZUEwUHJaZDVQSTJ6b2hSWGpma0JRV25C?=
 =?utf-8?B?eVBLVmdNTENUZURhRDhFK2Y1ZnNha0FkUlJYbHVFdTNFZVcySEk3RWR6eVpJ?=
 =?utf-8?B?VFZFUWdBZjNtSVBuNm9mNWlXNjZMK2pqcWRvNE92MWNwQXI2WWtXRXBNZzg3?=
 =?utf-8?B?ZzVYTnR5NjJPaGNTcHhmUkREdU94dTEwTm5ueTYvbGo4YkhxR01MVHgrUFhC?=
 =?utf-8?B?RzN0UC9kQmJ2aVRraEZ5R1JjNlZveEtua1FabHdSVXROOWVGdVpEdkNGa1VZ?=
 =?utf-8?B?OVBRbXZ0dzNtMXVnckNEU0dsQmJ6M0w1VmlEZGM4aUYwdnRZRnNmc01Sa0JG?=
 =?utf-8?B?MlpXeTdtb3JIWlBOSUs2WGNVcHNvbU5jOEc2OHBaQzUzYTRZUWxmemM3Rkt2?=
 =?utf-8?B?SGR1NWpreSsrVkltSVdoTVhIVVFuNExyZ3FrYXJLcXFjcGx5U09HN0dFTUNq?=
 =?utf-8?B?WjBHK3I3ZExhdmoydEJ5NnRTN1RUSE9TU1F3RWtNMTlPaWhObWFpeExEdXhl?=
 =?utf-8?B?cTFLTmZNY1htOUdxM2Z5QnJ3cGpoc01ETnNaajdQNkRlYm1JUmkrYm9GNXVv?=
 =?utf-8?B?bGQzYnVkTDJ5K1ZkWWtnUzNLb1RiaWlpYkZXMGpOOVZmVzFrR3BvZVZJeG9w?=
 =?utf-8?B?c1ZQUXNHS3FPYnA5RWVTcWl2bUwzVVUxYXNpWnRtQnV0R1VwajY3dExlRVBU?=
 =?utf-8?B?bmRNdERyY1pFUk1NUS9uNHN2ajhkRzdodFQvb1UrWmtBQ05rNStuYzBGZ3pq?=
 =?utf-8?B?bTI0ZnlvaDM1V08wbXNLaStsRFhuWnFsMjJDeDZQVEkyYzgwaEJoK3dQd0d5?=
 =?utf-8?B?dVRxM2lIU0pNd1o4dlAzdVFLb0dXY29UWnVCZmwyVnFUTWsvS0ZqbDN3UGIv?=
 =?utf-8?B?WHFnZk10aVFxVkQyQWw0TzZxWG1Ja2t0SXNrdVVXM2Vic0UrQ3RjSGczWjcz?=
 =?utf-8?B?d2s3RktrdTBIUVJ2MnBCWFhqbG1wTG1SMFMvSi96QkF6ZUw0SW8yL0RtcGhI?=
 =?utf-8?B?WVdGOG16SEIyN2VIY21paXp1STB3SFNiYnVMS0dXMmpmd2ZXTksrQjJiM0sy?=
 =?utf-8?B?NlM2ejdMNWNvbDBuNEltcW5DeHpOaTRIOGY1TmhhcFE2NDM4cFpEdThSMCtN?=
 =?utf-8?B?UGkxcktsd3o1Qnc0c3hQSDBzMWN3LzU3OXc0Y3pGdWZ3MTIvY1lnell4S2tN?=
 =?utf-8?B?amhKa1NCcnlWa3RWUElIN2JTNFlhT3FXOU01WnlnNDJPUDdkekFDbGR6SjlF?=
 =?utf-8?B?TFRkQzJML1hJK0NwcEJvWWsrdjdhTE96eVdrbVkwRzU3dDNicGhhL1Y0VUZR?=
 =?utf-8?B?aXAxMXpBTEpDZWZMYmE4VVRFSk4zanhTblZjQlNOdnA4YWZ6T1MzRE1GaXl5?=
 =?utf-8?B?Z1R5T3cvN3BzMUFham9iNzFzcmZNRm1DMnhha3R0SVp1TThjTzFmTTg5aTBR?=
 =?utf-8?B?WFRPblJYaVN5NUlCbzI5eDlEcGdpcUE0di9obUZBaDZhR1dYdmJtUGtKaVVJ?=
 =?utf-8?B?VnlIaUVmUExzaWtqcVpWSElaMEU3Z2FrK1E1aElnMnJYT1VCVnpuWGdVL0FD?=
 =?utf-8?Q?VWk1Iu8oLJI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFJHU3grY0wxOTJrd1dETTlZKzJSNG43WFBnQktIdmpmRjFuRTJRQUFPaGF1?=
 =?utf-8?B?eDg1dmQ4a2xORmpyVWhrc2Faek9mVVRnMFdYZDhsQ0hSQkx3bldBUlhKenNC?=
 =?utf-8?B?RTVXU2lHTU5NNVZJY01aaXhEUWUrRlRBL0kzbkJJNTFNSCtUMVJhUlJrWHNG?=
 =?utf-8?B?c1FnU1B6TW1vQmt4TTJOQTM0cGNGSHFUVFZxK3BMa0FMcWo3Q0dFdW0rSkhm?=
 =?utf-8?B?YmNBQ1hYNnFVVFE0ZTZRQVlaR3UwUEJCTkZPbkxhL0hGd2dWdUM0OVB1RTgy?=
 =?utf-8?B?OVJIckozS1NmRnlJVER4MVNqMklna2dMRUpHK2dMZmRXUUsrRXJzRnIvQzNi?=
 =?utf-8?B?Z1dQVy9hSVovOFpvbzhDMHZnRzBkc3VaYmNRUEg2bVFvc3lrNHJKTlh6SXBo?=
 =?utf-8?B?ekhyZGRvU2dJVm0wMnVOSm1NeWlGVHEzS1hBZXAwZmhxTkpYOS9wcFMrczh0?=
 =?utf-8?B?a3ZHTThWdmJCNDRvT0g3cFYwQVREbUd4QWVwL01OYWlmNEtIeC9jMlNkL0li?=
 =?utf-8?B?UThpNEp1U2hxRnZoYVBsb0xsVWo4Sy9ZcG8rdXpVQmhHcWtHWnd4UjhUN1d0?=
 =?utf-8?B?b1dBN2FwMG5IMjJVc29qRkk2aFpnaEoxZ0pmZkpTbFIzbFRzbUVMejBZYjdM?=
 =?utf-8?B?YjBRVU5YdFcxWFA3U1ZUS0J3dHduQVdmc1U5dWNUSTNRNHpCVzJvaU1vaUJE?=
 =?utf-8?B?dklZMFUyRnA5Q0NhK3RubW5aZUswQXQwMlRJU0dxSFRXa2RiVEJOK3VselZp?=
 =?utf-8?B?ZkpXSVErQ2lrVXlyTVRldjVHakhsR3lMcmdjU1hxRXA0dml3ZENFbThxY0RK?=
 =?utf-8?B?aVFGRjhMQWt1cUhDUUFQZEt2YkhDT0VEaGwxczhDWFh2VUpRZWUrcHhYdW1O?=
 =?utf-8?B?cXh6S0d0NVUvTDE3Q0VRWnRraWNpY3BZd3VYWFNTWU9kQjBBYVMyRVNucUxI?=
 =?utf-8?B?WFRlK2xjMTlvSTUrQlAyM3hYWjhwaUVlcXNjMVdGM0dheGVRVUpoYmVBdXF5?=
 =?utf-8?B?anB1dDJ2SFQxSU1WR0FZNmIxdEE4ZTJ2aE4wR2V2SzE1V3VFS3RvcHg2YkR5?=
 =?utf-8?B?U3pEOWs0Yk01WFdtOTRjdXhSNzVhalBRN3Y2TXVEbUNCZ3g1YlV4MGdUNndS?=
 =?utf-8?B?amlRY3lMT1J1MERON0VqRThTN3lWSXBvQ0QrVGRveGhFc29BRzlRa3pXZXBU?=
 =?utf-8?B?K0swVDVrM0NRUnkwUG5KUFVRQml1dVppYXJSTkV6YkZUZkZQZE5ZWnFRM0JY?=
 =?utf-8?B?allraFdNNGE2ZEFrYzNvZWY5T0JRZkI0dWlQSmE1MDloYlFkb1laVjdNRW1M?=
 =?utf-8?B?YTBTUms0SEx2cWhKSktxcXUyODZTZ1oza2hUUnJveU9ZNllTd3JNZ2ZNZjRY?=
 =?utf-8?B?dFVYSVFiWlpMdm9BbU9SeTJqTlhhLzZmQngxTzdwYVBqcXdVY0U1YXh0NWhE?=
 =?utf-8?B?MW9Fb0VOekpCTHEybWM0YlJ6Z2YzSzZYQ2liMU9valNJRDhqMnFhSThMMWh1?=
 =?utf-8?B?Y3JoQyttSWJlWXRJQjVIZjdDTG9XVUNaSkFjdHZtbU9FUXNheDF6S20vSHZx?=
 =?utf-8?B?cXc4Z2RHUFJjY0hLZVphYlM0djJkWlhwNDB5V0pmLzBpNVRiVm5tajRBT3Vq?=
 =?utf-8?B?aVI0S2NiZStvdklwTkxVM2V4RTNyblIyZ3hmL1pueTJ6TzBiMm1uSEg4bkU3?=
 =?utf-8?B?UXZIQnlNQWV0THlLdElKOEdianBLUjNDVGtRTGx2YkcxaXNaQjJxUlRtc1VM?=
 =?utf-8?B?WC8xSWxOSzQvSmUxMjdmYmVqM0NwNG1nMExDVE01c3NGK1RaMGlxWWlXeWtS?=
 =?utf-8?B?VExwTjBQWk1zejNXcXBTQUZBZytJbUVlVEYyaVUySkdyZy9NSDdFeDQrU3R4?=
 =?utf-8?B?TFVaQjhXa0QvMm80TmJMWkdrQkV0T2hia0xsVGo4SHBXSFllSlBqZGszT2lP?=
 =?utf-8?B?aDZWTkpHd1RzYUFUYlFDZTI0emJHYjhMT05jVTRHRjJ5R2x2dzBVOEZ1Q0VB?=
 =?utf-8?B?VVRCelVtbVF1ZmtKU2lDS0VGckQya1JZS2szaEV0Q2d2a1pRNC9ia3hVQjVF?=
 =?utf-8?B?YWxmb1lwVWRvaUE0UjNIcVVVQ1BtSjN2c1MrNXh1ZjVQbjd5SDB0OXR4ODZi?=
 =?utf-8?B?MDk3dHRaY3pwTGpZVVY3TGp3R2xESHQvY0RVR1ZQVnVOeUN1am43YktFS3Ex?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ab9623d-e189-452b-31e9-08ddc4714f6b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 14:01:50.2263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f5ezVrSIyQxF0gofHo9X6soiethUE5n00rqpJrGHNo78gUQj2BS94/BWBAfFgNk6+GUSodUMNMps98aHle/VmdzsCziSfINGZ31gT/DgQcc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7977
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

Hi Andi

On Wed Jul 16, 2025 at 1:52 PM UTC, Andi Shyti wrote:
> On Wed, Jul 16, 2025 at 09:37:27AM +0000, Sebastian Brzezinka wrote:
>> The value 4095 is most likely intended to represent PAGE_SIZE - 1.
>
> "most likely"? We need to be sure :-)

4095 is an oddly specific number, and in this context, it looks to me
like PAGE - 1. I wrote 'most likely' because I want someone to confirm.

--=20
Best regards,
Sebastian

