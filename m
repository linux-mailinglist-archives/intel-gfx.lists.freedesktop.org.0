Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cCjuBY0kFGrfKAcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:29:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AF65C93F0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2026 12:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E9110E0D8;
	Mon, 25 May 2026 10:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dqZcGWHJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0242810E0D8;
 Mon, 25 May 2026 10:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779704968; x=1811240968;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=nvYCTbwJnyAoQ3D0D+4/2olRrtwcgDyzEhJ9QADewA8=;
 b=dqZcGWHJbUmY467hY82kjEtTKx/TO3LuLlWRuPvE+hh59ulsZ4aWLgRQ
 3rdxIgJg62m0M7y992AIAqIFFzicGAx7hfEe6Qpipp79QnViH+FrC9Bhw
 GggqVMhWpFPjdjpOWfs5Xj6u+RPqjpFdp0wrnlzS7AXT0Qp5ih5yAsr+N
 F13W+BPIfhoEXH4LogqtEqb1EmiY40mM42VfutOZEm/9h7e6Gm7svX8PN
 l4es/6WK3He6vXYT4BZZEzcAV3za5+DhzhPMnTOGXBPUe6Z52Qgt6syU9
 rby9H/EMGDFkiI8jVrYrsrwW/WuSsoFxKtcS5joK3Yw3gzCMzneUdp9mJ w==;
X-CSE-ConnectionGUID: XZJCgpl4T0Oi4HmLgcC4fg==
X-CSE-MsgGUID: l6vQzqEFTqKfeqdvOUqdIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11796"; a="98102282"
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="98102282"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 03:29:27 -0700
X-CSE-ConnectionGUID: 09b88VRHTBOWw0kfdaFCiQ==
X-CSE-MsgGUID: P/5HsZt0S+KVXt2DwqhFOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,167,1774335600"; d="scan'208";a="245846101"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2026 03:29:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 03:29:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 25 May 2026 03:29:26 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 25 May 2026 03:29:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SVvLfsFxeRSyFZji3K4zcsibhd1g3biorG9+CQAJVL6FYVE8t4SR7c6MQjIr2rPmp+uDUbFcgxEamNkGYfcWxwFZ/ZHE9lb2tdsuhZTC4Bh98VFhlynvoUYnxnhnk5vLWGtf0ArMYjEoIDoGI6hyeSTvOrlMNXoYDWw9Ai7Wk/6emJsHKgFFdmPUkcp3dKfeBT4GHaKfkEhhfAyyosJcF4P5IlfhScctq00BNtz2xsUX9aVBYBuLkTehND0lTnn/baRnFwVj0v0F0GCQdnU1svVTt19WWQr51HjlECLHq3iTtsLSNn8hhMx7JI496alBHnU2OblCm1YTrIxiyVBw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nvYCTbwJnyAoQ3D0D+4/2olRrtwcgDyzEhJ9QADewA8=;
 b=HsgrP9/XzbYvJbZqqrRskmwi8xN1w5ALUeoiF0lZgDx+L8ZEvlsdu4vmqg1AH+dJq6S5I1dlyjNdO4nMjvrledY5WEBBJfo/O1jGOJpI+7qjjfyY2Qns3RPDRhlI1BQqppzt25ITOg5aiKLrzdA9MYe5mhjGTW17S7fAQoHk1lWinVMWjP5S11MnvcuzGYsrJ5hBUov6waQAHKXnuKPgM+gbMPmkRwW7CE6OqVv/M3nssNISlo+eiscO+kfgqIxz+35YDwxNyEF11W6JBmbcbRmF9OLbQjty67wlt8zKWCpO8ofazC4aFG0R6qdk+mvizXF+R0olJkt2yI34ybZAEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA4PR11MB9345.namprd11.prod.outlook.com (2603:10b6:208:56c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Mon, 25 May
 2026 10:29:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.016; Mon, 25 May 2026
 10:29:22 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Handle odd position for planar formats
 in selective fetch
Thread-Topic: [PATCH] drm/i915/display: Handle odd position for planar formats
 in selective fetch
Thread-Index: AQHc4eWFtlCy6J3c302/GjFEbgILprYKCtYAgBSUEYA=
Date: Mon, 25 May 2026 10:29:22 +0000
Message-ID: <105d4e877ab745bc9c3b43905605698be970c2f2.camel@intel.com>
References: <20260512080022.2527094-1-jouni.hogander@intel.com>
 <PH7PR11MB825213472B9A5E7628BA7DE089392@PH7PR11MB8252.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB825213472B9A5E7628BA7DE089392@PH7PR11MB8252.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA4PR11MB9345:EE_
x-ms-office365-filtering-correlation-id: f674d00a-bc7d-443e-d35b-08deba487ced
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700021|11063799006|6133799003|4143699003|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: jQdXSRhkqClPNwDDAbn2k40arbQOWMqWAVxdSkLMCbOnf1gF1Dj3nJOYMH6+jbxfn7lqQ6mTwym2yX44eZM0vg99sibegB68tiry73DUuZf6QSV1K7/f/ZziTEcBHuFh/DQNJ1HGWTqCghuxvDROZtRrj3qPTMNSrwrL50azsu5mf5BxAeR378Ylhv0XfBPzgBfGjV/meMlqDElqEO7gwyZxkDepGNcVt7t5hjgJTlGo0IRbWxBZbb4XFd5oTbmf3sffkLls/d1BjRvB6gSPf5jVw7bHmLgMseridVN3uLxVvF7i9tnF6n0wQZ9YRwZGVBIagl5xvztUlzvxcvLg1mnOWJKUw2jfBaIBN14nDunaVpNpQegtkJTUchnoKiYBaKrC3LBf2aurNlee+B3AVMakMddS1O74FTLmK4ZFgmF/64C2PHXmPxzF6Fg6lf74A1yzxkAT+aV4VruPl3uyPNpdVq9+n18KYtvNkuMdduA8nlL9nNR7jcRjHTZphESNHjNnu47mfKz9KWHK7lTru0KJXVL7f7jROIxzgrG9aDXeF2Gb1260E1Sj0sYfuzQaOHKgLtHQwKhG7IrKYn9VXaXzgt9xeRzKSvwd5CcVwcQ1JKmB+lAvVJGo+nZiJFFMtznesIzPUND979JbB9anEJiGVUwlDEX0KEBq9nd48Sbkq323QeytBw6efRhbQ6z/zaj833VasPa9VVTFlnAj27L4/7p74BiW5NIi/xC9VgbYMdOJU0y1ONAvCoO5aK7R
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700021)(11063799006)(6133799003)(4143699003)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWJNQW00SkFRdTVLMFZFSlM1bCtMTkJHRDdBWHdLUURvYk14Wk1nV3VZMlU2?=
 =?utf-8?B?OVRGNkRXU3NwVHJVVG1UU0xTbzJCTUo4ZnNXVWxyWDhMWFlUUnd1ampqWW9l?=
 =?utf-8?B?MVhoTW5ESGkrajFKa2xDdUw4UFVEcCs5azMyUm13Z0xoWHpjR3FXV2NzN1ZD?=
 =?utf-8?B?ZjRyODhVNmFPZkQzZzJLY09TTVZZa1h4dTlVOVh1QkVuQlRWd3ZwaE5UcVBl?=
 =?utf-8?B?T3VTMVJSellZbEFRazQwYzk5ZFFiUHhlSDdZWkVLZTZEVkYxc3NLV0kwZWIw?=
 =?utf-8?B?VmxxS21KNWd1Q2dXcmNEeEQrbGhxMTZ1S3hjUkFyR2d5dWRDdURtTE95WnJJ?=
 =?utf-8?B?Mjl6aUZYSStMYTVGcU0wOEFwN05EdEpTQmJac1h3dUlZRzZhV0dHdG9DQVZZ?=
 =?utf-8?B?UnBRRmRXNW5SeFozNzJVY1dldzdBTzhwNUwybGhQT2dqVjdOQ1hKSmYwYjNl?=
 =?utf-8?B?NUpLeTUzamlVekdwZHB6Zk14eGUxMnFNcE4vUmlVOGRySEtvOWxLSWVYbEh5?=
 =?utf-8?B?SWNZNDFFKzNCWk01M3VvOGFGKzlLOE9QZ2Y1UGxuSTBDYW82RXJVSjhGL0t5?=
 =?utf-8?B?bkl0SkRzWnhkMGZ3eUxaTG0yNnZZeG40c1BXZjFWZm92TzBRenhhNkg1eDhp?=
 =?utf-8?B?SVRJdDZIWkdVdEdTTW9lQzJUeFhUOHhIYlZwNzdtZFdQcjJnK2w0V1poNWt4?=
 =?utf-8?B?RDNJVC9LZVd3NGh2dkNMdlU4NmMzNWRMOEVlV3RhczBLTWdrNUR3cmhock5K?=
 =?utf-8?B?OUs4TEk1R0srR0V5TW1yK0xsR0dGS21CeGVLbnFPMjlqTDg4eE5uMUF5NjBQ?=
 =?utf-8?B?SDZEOEs4M29iUXFiYlA3SG9WYnVsK0hUQy9FZ1h6UnlvY1pqZVRzc2lHV3RP?=
 =?utf-8?B?akFwQWgyOGp3anZkcjJjc3Zpa1JaL2NmVldIdXdNMDNvLzJoQzM2cFQxcEY3?=
 =?utf-8?B?VllvR3RBa1V3U2ZjbDBuTWRXQi9LczNHV2phSTB5bGxYN2dxNjRnSUZUY3Zy?=
 =?utf-8?B?MUw3NkpYWWZGRHY4ZzFXUDA0Tm1aUnpJem5uYTFoZThJenlja0lDVUhQOVZu?=
 =?utf-8?B?dEs0YS80emY5R25rKzFxVnpKMWRFdmFxY0VBRTh6Sk9nNXF2M3hSS1B3U1Q3?=
 =?utf-8?B?ZGptZWNrQTM5RTBzMnZxZ202a0RRbGFHYzVsZFFkdWZ6Si8wZUVQZHlFeGU4?=
 =?utf-8?B?VEFwdlQrR3NkMWNxWW9IVTZ1SGUxQ2hSUVo2MWI4cmY3QXhtNS84NDhmNEVY?=
 =?utf-8?B?NE9KWTJLNWp2b00wWUhYMnhwME5mZUZpVTdMUFk4VDFnTGxZeDAzTSsyWkts?=
 =?utf-8?B?TzlVRkJnRHlGYzF0alNxemNhOS90Vy9PT3lac0J0OStOSCtLcGtZUnFKaG1x?=
 =?utf-8?B?UjY1M3N1bVFRY1ZCSDdsa3RFZFJJalg4ZUM1UHcrU0hUKyt2UjFKQ0Rnd0lr?=
 =?utf-8?B?K1Y4THNMc084bFdtaXRid2NKbGxsRDdiY3pCTmVRZk5MYldHRXArZEhwbGRr?=
 =?utf-8?B?b01FT2s1Ti9YV3BKdlZ2d0drcENLRjJ5SkdzV3pwbVZYTVVNK0ZGREFRV3Yv?=
 =?utf-8?B?cFVJaHp5QmVxTFpXay92R2RaQzhRTWViejEzZzFjcHhwT2NDZEtIWlBmUFdy?=
 =?utf-8?B?YXpLWFhSZXFaVGJwcUZaRWpMeGNSVmlqQ0M2d0FZczJtK1RWbGhkckh2WHdU?=
 =?utf-8?B?R3EwMmpOdktCcnJxN2VnT1IweEFVamxzNEE1YTJjQXNHTXdTUVpkTHRIUE9U?=
 =?utf-8?B?RmxHYzdRKy9pOVptazB3UEFEQXc4VFRxNS9zZHRXVEtkaUhzQnI3eVFYNmtO?=
 =?utf-8?B?a050c2o3aEZ5ZkpvNUcvSDY4R2F4L0QreEFVQURMSFB3QVAzMFdXMUhBeW1F?=
 =?utf-8?B?QWphWmpGTmpjOTh2ZVVWN2MvQXhiWnpOUDFnai9UNFlsYW5KNytPTWt0SmJx?=
 =?utf-8?B?bEJxREN0a3d5ZjlYVlJyclpuajNNOHVhQ1VMVGhZYnlhSGErVllJYlhLRm9H?=
 =?utf-8?B?V2lPYjZ1dm9FMzZCU3diSkNKc25UMmtwZFJlWjgrQU1rZElpQ1pFOHUrKzU3?=
 =?utf-8?B?OUE3emUxS054ZmIxRDhHMXVnZ3U4SmYzclNBdURYcy9kZXZ2M0h4S2UrM2tW?=
 =?utf-8?B?Z2VZYVZiWWNGN0N3eGVwYXZkRVpscWZGTUZNZnNyQk9DSW82Y3FQVUtObm8x?=
 =?utf-8?B?a2hBY2kwamJwSHdQQ2x4N3dhRkhENWZOS2lzdTFsMG1hTUJOVkhOTjBnUmVY?=
 =?utf-8?B?UFZVVHg1SFJSdTBVc21XNFUzWkl6STdoMnZaUGtGWWNXSlVURDBVcjRaQng0?=
 =?utf-8?B?UWlGWklSU1Z6cEFWVWFnMDg0THRyZG44MkVpL2xqT3JnUlExTHhTVGJqaHp6?=
 =?utf-8?Q?qjFjF2YEtEn7Sip+wvd7Jk/0k+SRXD4DTUjAXWXuFSAJw?=
x-ms-exchange-antispam-messagedata-1: xqFrB7rEJsPFdfVSEps5auFTJWn2cNkZuAE=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8DA4C50258C28145972FDE654DC7AC73@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WJhMMnNbvQjwAJseKMIDEStoSpnaJWpkEdfVuLVq5SNInz2v446JD/ZYIHJjLLcuV2cRJY1mJJ8DvC5n+7g6qWB/u3Lp3iS7OynyAOht1uYx4gGpkJzVs2CzACn63dNs0JGtMdLf3dUcGwN2iEoj8xW2EMxVwXM8b18reSGLN1Rb98gsHrtTTx5RQYJQ7+o/WMPc0PmdocPVhBpgclR5skUo+/Hp+b7RtoaveZW/u9V4Gy4llm8PwV4d7/4JCmEMIbgFiuupv0eawQmQXeOI6GBCmIoHEBvjUZLsr+N3JV1X71EgKj6DXBpZKel/9F2agrevQ/d3xPctq7t48vbXkQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f674d00a-bc7d-443e-d35b-08deba487ced
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2026 10:29:22.9493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b/+/TASowgQJUzEhz1I6Mj7G7sXp6UqXuuUjOwzk+FoA6vBYf4LMOIefrLKuhfIA+clxbuXdlC1sN4DmHUJ2SrWCTE7otAXoMqe1MZ5L7Zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9345
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 60AF65C93F0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTA1LTEyIGF0IDA4OjE0ICswMDAwLCBTcmluaXZhcywgVmlkeWEgd3JvdGU6
DQo+IFRoYW5rIHlvdSBzbyBtdWNoIEpvdW5pLiBOb3Qgc3VyZSBpZiBJIGFtIGNvbnNpZGVyZWQg
YXV0aG9yaXplZCB0bw0KPiBwcm92aWRlIFJCLg0KPiBCdXQgaWYgY2FuIGNvdW50LCANCj4gUmV2
aWV3ZWQtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQoNClRo
YW5rIHlvdSBWaWR5YSBmb3IgeW91ciBzdXBwb3J0IGluIGdldHRpbmcgdGhpcyBmaXhlZC4gTm93
IHB1c2hlZCB0bw0KZHJtLWludGVsLW5leHQuDQoNCkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
DQo+IFJlZ2FyZHMNCj4gVmlkeWENCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4g
PiBTZW50OiAxMiBNYXkgMjAyNiAxMzozMA0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBTcmluaXZhcywgVmlkeWENCj4g
PiA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5
MTUvZGlzcGxheTogSGFuZGxlIG9kZCBwb3NpdGlvbiBmb3IgcGxhbmFyDQo+ID4gZm9ybWF0cyBp
bg0KPiA+IHNlbGVjdGl2ZSBmZXRjaA0KPiA+IA0KPiA+IFNpbmNlIEx1bmFybGFrZSB0aGVyZSBp
cyBubyByZXN0cmljdGlvbiBwbGFuYXIgcGxhbmVzIGhhcyB0byBiZQ0KPiA+IGV2ZW4gcG9zaXRp
b25zLg0KPiA+IER1ZSB0byB0aGlzIHdlIG1heSBlbmQgdXAgaGF2aW5nIG9kZCBvZmZzZXQgZm9y
IFVWLXBsYW5lIGluDQo+ID4gc2VsZWN0aXZlIGZldGNoDQo+ID4gY29uZmlndXJhdGlvbi4gQWRk
IGhhbmRsaW5nIGZvciB0aGlzIGNhc2UgaW50byBzZWxlY3RpdmUgZmV0Y2gNCj4gPiBjb25maWd1
cmF0aW9uLg0KPiA+IA0KPiA+IEJzcGVjOiA2ODkyNw0KPiA+IFN1Z2dlc3RlZC1ieTogVmlkeWEg
U3Jpbml2YXMgPHZpZHlhLnNyaW5pdmFzQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgMiAr
LQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+
ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91
bml2ZXJzYWxfcGxhbmUuYw0KPiA+IGluZGV4IGVmNDMxZGQzMmU3NC4uYWQ0YmZmZjY5MDNkIDEw
MDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNh
bF9wbGFuZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5p
dmVyc2FsX3BsYW5lLmMNCj4gPiBAQCAtMTUzMiw3ICsxNTMyLDcgQEAgc3RhdGljIHZvaWQNCj4g
PiBpY2xfcGxhbmVfdXBkYXRlX3NlbF9mZXRjaF9ub2FybShzdHJ1Y3QgaW50ZWxfZHNiICpkc2Is
DQo+ID4gwqAJaWYgKCFjb2xvcl9wbGFuZSkNCj4gPiDCoAkJeSA9IHBsYW5lX3N0YXRlLT52aWV3
LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55ICsNCj4gPiBjbGlwLT55MTsNCj4gPiDCoAllbHNl
DQo+ID4gLQkJeSA9IHBsYW5lX3N0YXRlLT52aWV3LmNvbG9yX3BsYW5lW2NvbG9yX3BsYW5lXS55
ICsNCj4gPiBjbGlwLT55MSAvDQo+ID4gMjsNCj4gPiArCQl5ID0gcGxhbmVfc3RhdGUtPnZpZXcu
Y29sb3JfcGxhbmVbY29sb3JfcGxhbmVdLnkgKw0KPiA+ICtESVZfUk9VTkRfVVAoY2xpcC0+eTEs
IDIpOw0KPiA+IA0KPiA+IMKgCXZhbCA9IHkgPDwgMTYgfCB4Ow0KPiA+IA0KPiA+IC0tDQo+ID4g
Mi40My4wDQo+IA0KDQo=
