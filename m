Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ME1ALq1A62nZKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:06:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 307C745CBC7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 12:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8F5A10F4C3;
	Fri, 24 Apr 2026 10:06:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JXXh+tQq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E00D10F4C3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 10:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777025195; x=1808561195;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=M580mS0Ugg0CII0RKShtun52uiegKE52Apr4IkpcL7Q=;
 b=JXXh+tQqGUpNotLwzXQae5PDAGko/LazC62LBdY1q0VgmbbwvpwzSeW6
 p3mPmi1RzQkDTcdWSyJt9uuJN/BnI1h/NtjiXFJhKfgH3psKzohhdjJ6T
 iAPMhiVsGpG3aGsk6d08alAVVNeFJGijChG5RMaqGQZM2PWeyakbmEKTe
 OwCCX61eI3Zw2yH3kC9i5uBb2io42WxDXGgXo9rE92zO3jRDbkWmV+P8S
 k/+s2XVnyoOWyjI2+8xB5mJl8HWXPRYRGk3N+Il5lVao/eKTW2uwOPdqm
 gSjzJhWZd6PnDqHMuV6Yp/WDaV/JPP7rlTcn0nKyiYu6xOIVNwKo7AKgs g==;
X-CSE-ConnectionGUID: SkNCa/xcR4ukcq1tI1BtzA==
X-CSE-MsgGUID: TJWmgTrcTkabfG4ei+075A==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="81611132"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="81611132"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:06:35 -0700
X-CSE-ConnectionGUID: wunttZKPS9yWicWRDBn34A==
X-CSE-MsgGUID: KfM2+Jt2TBCxkLMPU41oEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="232772240"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 03:06:34 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 03:06:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 24 Apr 2026 03:06:33 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.52)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 24 Apr 2026 03:06:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k+HlLyTwtYhLve9soWDgQD6v7ccs6JJ8Syp4RIqVDD5wTRpOWPpo7+gihh0ovZF7HJ1LoGXeWBOHfsOe4BhOB/+R1j7PPkZgQXHUfmjogYgXe4bmaHEaYvrIABPmd4id42IpusgaXGn3hRPagt95L7Dbw+FX0OYxuoOVg8AYEXnk7MiaUIHaDiZvhst9osijtPacw5Aum65PJrjxBYh+Kr6bhMbi0Tgcs1H2QbRAL0R1uQqZYP0D+2hvfYuAUOE129I4CnW2nthzG99kPpAi2XrDZJ1QCxnxWdX/u92O554pn8e/jzn/x6UxKPzRIsZvSaO3JUEVbnnCNSseECipxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QbHof2eS0gBTw07KyNnV5mpjTNX8mVGTYfiXT4uUFY0=;
 b=E25AOg83eIUT0ejQYPnzB7iMfl5JrY6GFRjt/OsfSpuRVmp8MGp7VfWx/+vdZOwYyB0KLmOoipTkpm0KxF8aoAXdOJ3kXSniNDoEIIMlTqCoN7nXhLRXkSgiIHiPVg39UG4sUSimV6qR2e2sNCMoTj4wQpA76Jce6dFNFvI8ZJTvYqUE7W5PzukrxVNZ2dNrwELrA9dbZX8YKGU0f9q4S5yLYFNjj955W+qhBcR7srK9584xW5QlMOsYBjXTyIO/La8/E6qZ7UNdsNlStH7nbqqs1gUJljkZD4KG8z/Gmrmr6LJUHI40jlPP2dGqJuJyJNMy3DFbd6Afn/wUOi4FAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS7PR11MB9475.namprd11.prod.outlook.com (2603:10b6:8:26b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.22; Fri, 24 Apr
 2026 10:06:32 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::9eab:962:806:3794%4]) with mapi id 15.20.9846.012; Fri, 24 Apr 2026
 10:06:31 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 24 Apr 2026 12:06:27 +0200
Message-ID: <DI1AUT3OG3YM.1KQREBT065NFV@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v7 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.21.0
References: <20260421061716.3341529-1-krzysztof.karas@intel.com>
 <20260421061716.3341529-2-krzysztof.karas@intel.com>
In-Reply-To: <20260421061716.3341529-2-krzysztof.karas@intel.com>
X-ClientProxiedBy: DU2PR04CA0008.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::13) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS7PR11MB9475:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b97978c-849c-4e86-76dc-08dea1e92849
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: YWtwyEbjt9/d9tcG2Y+BQDi895s4+o6nC69s2gbeT2r/mY3DhbJMvkAbBYiZr+OE7TCglq7i95mKuzuBHwIfQmS6wlq7GLWfXj9qLXpH8H9MFvCap+CV5BeMKxI68UNN2so/knbwDETQDpkecVETZtLNEZ2pYdFMMFUjhrj12DMvgDxyjzlhWyEVhJ11u4EYWqUHN8Q+Ev7dKpHaxWvydDMdyEj6mcsfOKt+BSgXJ/RbpcTO0tt2eSN7Ikeasmg/vmNOohuzziMcDUvlGCN8EV4QGL0fbNc5pWpOJJFfQr6euYuynd0tms6pbs2pXb60eva3tAxE3SZDZzx7gAV8JObX1EXmS6D+qjee3MtNhdjL31DzSC+61t2LPvc/IqoA4Xy6ALItx6s/OWx3MtiDjgzmgt/mmEGBGlYUx1nqGZP95VD6gHTGDa1QU/N8yWNPHpA8fsh/oUiWl4PNik/IHDeQiMqyAOunIAMiUTdlhnHg9XLLGvGmrNa6GWIgtN35OZhNcqc+62tkWvLcLsahucWvx8gt56NYGsw8ENgAGgHpXBmutpOLqivTAhPd9nikQCaWufrqKx/yzz6w+1/MlnolW1eW8+0fAnhc57NRlGthNjEL1JFPMOKBaORrI10dSCX4PODlrYq3LCfYpboEWY6CW6MyNaEJK9s4dpv8V2FDCGycS/jgT0RzlOdt8mRM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vkxrb3Z4SURWZXJoWVptaDJVV1EzWEdXN0MrM0YrQVhETTJVM2J1UHhaOXc3?=
 =?utf-8?B?dGljZzNVQUNlaUhUREZIWXJzMTRuVzdQVHFaWjdZV0JFVEpKckJYcGhXWFRI?=
 =?utf-8?B?MTNtTS9QSDlmRHpTMVEyY1lRenYzWW8rVFFkQWorTmkxbmVSajUwRDN6ckwy?=
 =?utf-8?B?eU5ZVjFKc2NNcHc5YjRzM0c0enJsYUw4Qll4RUY3KzQva3RkRHRwbkdEUVdG?=
 =?utf-8?B?TndMK01xZC9YMHQyNmY2NUlNZ2xMNjVnai9CUTRsajNLUmtjVDFYQk5sY1Ar?=
 =?utf-8?B?UG5JNk9TL0FaQXJubmdzNDdsalBRalpVb05kU3VwaiswZk1SRWM2dUFFRVhp?=
 =?utf-8?B?dkxnSFVST0JESjlxU1NCZGN3L3pTTk9nQ0Q3MzgzdTZ2ZGJ4RFNuQTBXK0lw?=
 =?utf-8?B?cldFdVdHTno2bS9NWkQ2aDZvYkswOHRKTWFISjNHc2MxNStZSEN5dVg4VTcr?=
 =?utf-8?B?RkVYeCtibHRGZ1V0NWduRHFvWHE2MFVOK2lrZ1I2S2ZqdmpHOXNiZ0JVYm5z?=
 =?utf-8?B?WGdrbi81azJyU2NQSXB1N0x2a2NsVXhONlBNZHd5bUwvL3pYbWVkcDdtdkhh?=
 =?utf-8?B?cVU2cEkwQlB2NEJwMjBscWQ0bWtLRzRQSU5MK2dKd3o0eVQ4MVQ4OGtrR1ow?=
 =?utf-8?B?ck02T1h5bGEvVzlPaFoxbzhkc3JqdHlOMCsxUFo0UUc2blJHS0QwVHJEd3Za?=
 =?utf-8?B?UGdaRzVLOCtVK002MEdRd2p0UmJsVVAza201T2NkUEJ3a3JBbStpRWVuUGhn?=
 =?utf-8?B?bmJUaS80Rko5ZGFRNVoweHVSamlVQ3hLSFZpc3ozZE50S0F0WWVUTFRaRDU1?=
 =?utf-8?B?NlBaVmptVVVDNktyZmdFSkxBa1ladW5sL01ISTBrWDRjQUpnR1lYdk1FMDR3?=
 =?utf-8?B?aWlGcXV6OVZyeHBqbC9iUktNYmxHSG9nN3V5b01JWFFFZUZsL3d3aXQxSWJH?=
 =?utf-8?B?VUJsaVhtOENieHJmYnBOSmZUMHg0azJZZ0J0UDhRck5HR2lNT1RoVHpWTXlW?=
 =?utf-8?B?L0V4K2ZuRXJ6S3ZNWGxCYUVjelN6M0srNjd3OUtFMTNXWXNZRzJ0dVFhVmh1?=
 =?utf-8?B?UVM4VXdIejhicUlZMUFyR1JKSENuZU03MjI2KzFkQ3JzRG9uUHE4ZmFqM2l2?=
 =?utf-8?B?VzYza1ZxRmxmK3dFdmRmTklhNW05V25rUkg3TzE4K0l2c3FtYnR2UVJkSkdG?=
 =?utf-8?B?UHZRRnB1eEZ6MXdBa0k3STlpNlBpb0JEYWdnbFlJaHRCQWU0eVlPcjlkdlJm?=
 =?utf-8?B?ZzBuQWZETmNJYXA1OXQzU0lXYkhkVVZ6aEdnblZXaDFTaFFmWUpRRTZ1NldG?=
 =?utf-8?B?QU1YVXRxNmI3TFlPc0pnRnVlQkNWaWZQZ1ZuVXllWUxhd2hKVUg3aVE5bW9F?=
 =?utf-8?B?aXdnOUkzL0s1akUvYnFZSTFUYmVJWXdNcTlrRkpEbC9Cc2pqaWhnTitlbzNS?=
 =?utf-8?B?YnAvdDhDeWxXMXZCZ3ZBa2ZzQ1o1TGxkekI0ZzE2cWt4UmFyU1hEYUYzWFo3?=
 =?utf-8?B?Vm9RbDQxT3JnWDdwNUpkNnMxd0wzbWtjNDQ3UGQvVmdIeEt1WXZOU1RYVnh0?=
 =?utf-8?B?Yk1hTDdHbG82MWU4blRJaWtVR0hJVFNaTDMvZ3hTdXVvejhQa0ZJZm9SS0RO?=
 =?utf-8?B?SzhtVVBaN2ZJa1l6TE16WThsenMxSFYrcnM1SzlQSGp6N0prVXExaEkxZVhZ?=
 =?utf-8?B?alorNjJNNUh3OU44K1loS2ZFVHlDQlEzckZtTWpkRjZmNFZTUWZ2MGg5cmI5?=
 =?utf-8?B?Z05COVJpUFZLVXBHU2tERk1oOUlzYVJ4LzY2WW5JS3cxL0dCRThDRW54aUtn?=
 =?utf-8?B?b1F5a2VyWVQ1aTNwemtXT1BxMmh5STIwc1VrSEV6cXMwMUU0QUx1bUh6ajEw?=
 =?utf-8?B?Rm5sTlZ3aWkvZDRQWjhsN01FWm1OWnFHQ0t3ZnVNdy9zcXFYNSt1ZlRvQ0JB?=
 =?utf-8?B?RU9xOGdOSDNEbWZISjY1RER2RnNPSUFncHBOcWZ2NUtOd21WbktLdExuQmZW?=
 =?utf-8?B?a3RQRi9rQzRKdE9mWWMzRmdPcENHc1MxdjJ2d3NrTFB6Tlp6Yk04SmhOT1k1?=
 =?utf-8?B?YTcrR3ZCUlBOdkZTek91MkpJRVo1dmpSait1RmFpYkpSRU8vWUZ6eWtBamNT?=
 =?utf-8?B?cStLSUlYVHFTZDVsM2s5S0l2NldLSnJONHkzaHhueDJwSkUrUm9KaFdLM1JE?=
 =?utf-8?B?YWR5cGZqbndFUk0xOUVwTW5Xa01XQ0dINjRFeUJ2YThlNDZmb0IwVkxwNEE0?=
 =?utf-8?B?dEliUG1CZTRuSkxFR0lSTUYwMTJOUlN0bEROcFhLdjNsRkZqVUV5ejRNdlFO?=
 =?utf-8?B?RzZlZWZnM1dub3hQT0RCOW5jQ0xMNDBVMzh6UWd5SUxMVjF3cUdPYVFxVmlU?=
 =?utf-8?Q?Xagco2z+JuTJQtN8=3D?=
X-Exchange-RoutingPolicyChecked: kKoCMvIK8N6m23keTCtzgpWLghKn8ui7qybM0mIN2MbXD2OIrTe/ceV9X6+0xmPsR+JxOoDiNgvrCqDtQu8SIfOtmuFVW2txg4ty2RI8yvJMOXVhbHqRr0V5qm7e2WUoqmlk7et1Ln8BmWW6Azw+lA2nNc27NVmj+eIttXWNDFrALiflO7VBsOBpO4PW9Xf16noi1AirBGiVPiqsgDDJTFL+p8kjzDx65YCrlYAe8r4cbDOJvj6hhsYAVbCoLihRhR3sMEQdypp0fpVvj22VhwiPOM4ACLEmeq/bBWlTIbCRaOyqMZa5masD9EGbWsSP8p6UzyqPlhRFByS/xzerkw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b97978c-849c-4e86-76dc-08dea1e92849
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2026 10:06:31.2666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o3PUyADGJ8FrBZsaa6snPv+A37dEg3zDBIkXz8YvSzHkujYJBaHYc1sKr/q3nEn2b67GVOKBAdFR3o0fgbnAdDvvgAtucBZVh6BjhtKOweQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9475
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
X-Rspamd-Queue-Id: 307C745CBC7
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
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
> Migration testing in i915 assumes current task's address space
> to allocate new userspace mapping and uses it without
> registering real user for that address space in mm_struct.
> On single NUMA node setups PCI probe executes in the same
> context as userspace process calling the test (i915_selftest
> from IGT), but when multiple nodes are available, the PCI code
> puts probe into a kernel workqueue. This switches execution to
> a kworker, which does not have its own address space in
> userspace and must borrow such memory from another process, so
> "current->active_mm" is unknown at the start of the test.
>
> It was observed that mm->mm_users would occasionally be 0
> or drop to 0 during the test due to short delay between
> scheduling and executing work in forked process, which reaped
> userspace mappings, further leading to failures upon reading
> from userland memory.
>
> Prevent this by adding a PID parameter to a trusted task, so its
> mm struct may be used if needed.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthre=
ad")
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v5 (Janusz):
>  * Remove missing PID warning.
>
> v6:
>  * Move mm handling to a separate function. (Andi)
>  * Validate user provided PID. (Janusz)
>
> v7 (Andi):
>  * Add missing mm reference release on error path.
>
>  drivers/gpu/drm/i915/i915_selftest.h          |  1 +
>  .../gpu/drm/i915/selftests/i915_selftest.c    | 62 ++++++++++++++++++-
>  2 files changed, 62 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/=
i915_selftest.h
> index 72922028f4ba..e29ca298e7eb 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -35,6 +35,7 @@ struct i915_selftest {
>  	unsigned long timeout_jiffies;
>  	unsigned int timeout_ms;
>  	unsigned int random_seed;
> +	unsigned int userspace_pid;
>  	char *filter;
>  	int mock;
>  	int live;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu=
/drm/i915/selftests/i915_selftest.c
> index 8460f0a70d04..71f61328e14b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_priva=
te *i915)
>  		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
>  }
> =20
> +static struct mm_struct *
> +get_mm(int u_pid_nr)
> +{
> +	struct pid *u_pid =3D find_get_pid(u_pid_nr);
> +	struct task_struct *task;
> +	struct mm_struct *mm;
> +
> +	if (!u_pid) {
> +		pr_warn("Could not find PID: %d\n", u_pid_nr);
> +		return NULL;
> +	}
> +
> +	task =3D get_pid_task(u_pid, PIDTYPE_PID);
> +	put_pid(u_pid);
> +	if (!task) {
> +		pr_warn("Could not find task for PID: %d\n", u_pid_nr);
> +		return NULL;
> +	}
> +
> +	if (task->flags & PF_KTHREAD) {
> +		pr_warn("Task not in userspace: %d\n", u_pid_nr);
> +		put_task_struct(task);
> +		return NULL;
> +	}
> +
> +	mm =3D get_task_mm(task);
> +	put_task_struct(task);
> +	if (!mm) {
> +		pr_warn("Could not find address space of task with PID: %d\n", u_pid_n=
r);
> +		return NULL;
> +	}
> +
> +	return mm;
> +}
> +
>  static int __run_selftests(const char *name,
>  			   struct selftest *st,
>  			   unsigned int count,
>  			   void *data)
>  {
> +	int u_pid_nr =3D i915_selftest.userspace_pid;
> +	struct mm_struct *mm =3D NULL;
>  	int err =3D 0;
> =20
>  	while (!i915_selftest.random_seed)
> @@ -201,14 +238,32 @@ static int __run_selftests(const char *name,
>  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=3D0x=
%x st_timeout=3D%u\n",
>  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> =20
> +	/**
I=E2=80=99m not entirely sure, but ** might be used for documentation comme=
nts.

> +	 * If we are running in a kthread on a multi NUMA system and the user p=
assed
> +	 * a valid PID of a userspace task, then we may borrow its address spac=
e
> +	 * to prepare a safe environment for the mmap selftests.
> +	 */
> +	if (!current->mm && u_pid_nr) {
> +		mm =3D get_mm(u_pid_nr);
> +		if (mm) {
> +			kthread_use_mm(mm);
> +			mmput_async(mm);
I don=E2=80=99t understand the use of mmput_async here. Why are we calling
mmput at this point? You keep using this mm, so the refcount can=E2=80=99t
actually drop. I would rather expect a pattern like kthread_unuse_mm
 -> mmput_async ...

> +			if (unlikely(!current->mm))
> +				pr_warn("Could not set mm as current->mm\n");
> +		}
> +	}
> +
>  	/* Tests are listed in order in i915_*_selftests.h */
>  	for (; count--; st++) {
>  		if (!st->enabled)
>  			continue;
> =20
>  		cond_resched();
> -		if (signal_pending(current))
> +		if (signal_pending(current)) {
> +			if (mm)
> +				kthread_unuse_mm(mm);
... here
>  			return -EINTR;
> +		}
> =20
>  		pr_info(DRIVER_NAME ": Running %s\n", st->name);
>  		if (data)
> @@ -226,6 +281,9 @@ static int __run_selftests(const char *name,
>  		 st->name, err))
>  		err =3D -1;
> =20
> +	if (mm)
> +		kthread_unuse_mm(mm);
... and here

--=20
Best regards,
Sebastian

