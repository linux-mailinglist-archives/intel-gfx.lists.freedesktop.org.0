Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IWjIjKn8GlAWgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:25:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 945CD484CED
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B461010EB59;
	Tue, 28 Apr 2026 12:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJ8Gg4U6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720FC10EB59;
 Tue, 28 Apr 2026 12:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777379118; x=1808915118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PWtruHZLKVEZAoBPw3ByMtpVUbruiruGdjD29URFEZg=;
 b=kJ8Gg4U6BwD+3pw7Zcn6NY9pk5jowK2VNQNkVDRkeBz/S64+jORiqThP
 j9VMGmMgUKxyT9Yw8Uz3D0W4WAYla43vKKP1AnwOp+eT7UOMygEgaAIAC
 q+ITYrKAT8kbGbbmh6Oiebuukxr6nKNsqX+W+smTwSGQsl5TFugRZkbHn
 DkRnjiSd11sDvU8SuETA64YDpCJgcilPSxmLCc81HB/GPw30hBjGNujem
 yPPazPdck+sG8cE+p5MYd1oRdabR2r7RK8y/89Ufa9aW41lTHa3JphGic
 d4CslR5q5oCxTNFdoI/VQSnorkyUfAPkqOlGMXB9w2/29+wP0C4I1UX8l g==;
X-CSE-ConnectionGUID: WdC3jlGYQ9WLRyhvDgTBPQ==
X-CSE-MsgGUID: 7htcM2cAQ2iXN2iXsEgEOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="65815499"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="65815499"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:25:18 -0700
X-CSE-ConnectionGUID: jNQzo5mxRQ6o8/e2VX5rQQ==
X-CSE-MsgGUID: jdpzfwoyRCSTQQ5mtubu2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="257480371"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:25:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:25:17 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:25:17 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.53) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZXQsjDVKertWuAFLg/YHIfAt7haxxp4n2Vxa6mjuUWUBVj7sIPxLEnp6ldrpliNcgGyjo6GlXqeIsD/AKkEd4HdY14M5v1tV/oHSOnLU0MrIzITqGmJ1L8gIp9BTBXOEQq0HMQ4uGFNmNu+b9VFMKANe3MNUeZIwYFLoAflGLgaFJ5xLNRweG0cuk7yt05/DjRlcP7MpStZXMGhD7RTa3YuoR77AZE1VehxCgqIwI3Ik97JfMJWsfjk/T1Ing7/XpQt/Pt3o7rUWXx7/SSRQeDSCbl9x6j949IfU9sOfutRTeWj1dLj+spzvjwWikog3ytScps81UJltv3OAttfguQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PWtruHZLKVEZAoBPw3ByMtpVUbruiruGdjD29URFEZg=;
 b=LTXAJvYhsGI/pQiPR5Yl0Hw86dWTHFh9uRI0QbfMBjjsA1XHNVqQ99EmF1DSFKZrxpnOrANlmlxUfkYAPGnS8T3OitenE9jsWiEw89g5dv0Hxo5TtrH2I3ARDxp2J75uLRYPjxVc//8fZAOy5CW8BFnMuhglqMk7hTEwAi84RLGfJPKbR+GrLQdCLoA/IrdCVF8tFjFLwQ5oMwb6DCXLHhH99DzXCPtbijFdHIStBSDDv+0QRqXV1DrL//V6/VB9fFcF+966nFjOH5FVA2TI415uhrZcbR7tWYNzCH87OZRZsyW1JbmqVaogVDUGwD8HQ2e2x/A0KTyaZhvA4JI9Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by LV1PR11MB8850.namprd11.prod.outlook.com
 (2603:10b6:408:2b4::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.12; Tue, 28 Apr
 2026 12:25:07 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d%2]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 12:25:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 16 DA16260
 as a quirk
Thread-Topic: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 16
 DA16260 as a quirk
Thread-Index: AQHc1kavb0E4A9ixBEGBGyO0Mvy5qrX0Z2UQ
Date: Tue, 28 Apr 2026 12:25:06 +0000
Message-ID: <DS4PPF69154114FE9604C350EDB98C8F30BEF372@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260427130554.86040-1-jouni.hogander@intel.com>
In-Reply-To: <20260427130554.86040-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|LV1PR11MB8850:EE_
x-ms-office365-filtering-correlation-id: e6f53e9d-e629-4f1c-5c5a-08dea5212eb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: 6L9OEZ27s8yYxB4sFmGD8zzskIFetxSiRoiTbUv9jzdh8e5MwBpmP6dRI+/vY2yST3ho11We1tiprbGRUaGM4RnOtgBxYs+qAonIt8q2KPBVA62RfZl32d4Q+dN4Bhfq58H9CtVqt8+Q+dRYD18RqAJ62NugsamRR5sRL/4tI1e1xNKtsHAzGFTLccdZnzHck27Cqxkb+dnP7x9a6q/lfiAb8EFHqWK6fGCyERk41u+9Sxn2FVSh20b2gNaabtXAjUhiHfFTZzcYFLOizB9WsnmDpen/pdKIQcV+nuzkdvs4I5IN0Y3vbR65Q7joHVHxhxXbXzDvuNNy5a+ByCoi4Y3t5PzH5heBNzngQiLwXTj/vJtqAVnAaBpKqYJmcsFt7iWW+1Af/Yt1Fc+cUtrqjEoJ0S9DtnUxAvSwTNyiy5x0wDqszvZpaVbhsgadbryG0CJ7N75QarYxqNvCfJlNgBUOijlKJRFrF178UZuXhz7l425kukrzoPOG+7DdD9Ng2iT70lzP/L0WZvS0kDe2OKH0wWGxuXIJ2o8m0x3NI6eyPqg4nlos2rJD6ZRCsz2oqgG3rMlkypUv+PtDZnh0h9YGTm8sLmSpaBZh6iL1S/oo5OTnplnkviI6gWNu2Fsu7EoU8u7ttsFLq83DQffjNMAtzybQTy48dvzAJ7d60Wh4DcGaGnv6kRWx700HdTZROd1chmiqblKFZj+IvXsfffQeQjqVfbdftooltQchU70eXn5n0KyLXcG8Z3NJj+5K
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TFBuL2lHZkZERzVwUVBQd3hIdHhXc3djWGFSaElnajV3d3RPakxGeGZzZ0Ux?=
 =?utf-8?B?bkVSZXZCSDJERVlSZW1GRHZrSlV5RGdqdjRrT2dQUFdPWTBwM3lab0xkbkFj?=
 =?utf-8?B?YllqN3BmTkd1VFRIWkRPMkVZTlRyK2tseFMycDIzVC9HaVY0cldiaWJtMnN3?=
 =?utf-8?B?M1R2RFNGUzFNdFdNUkU0UTF5OEFpY294ZXhvMG9nSmprOTVOSnluS01LYUpy?=
 =?utf-8?B?dVdIb0pBQk52a2M4U1hFNlkxUjU4YndsMGhmUzEwd3hGUVNXakU1UHZBeWRK?=
 =?utf-8?B?TU1vamh5dE9QektTZC80bWtJak5SdXhLOW9BTzVGNUtvUXViZ0I3TXBLMXo0?=
 =?utf-8?B?MFNUY1RybkVScC85VnJiUHZjTFlTWHM3ODBVbG9MREt2TzNDMnFiWmVaY0pm?=
 =?utf-8?B?b0VBOUcrcDFtMUh5bGhJNDFoQjI5c1B3SElPOG1PRWFlbFArMWhaeG56Kzd1?=
 =?utf-8?B?K0R5QVJ6Q1JMMnU1R1Q2UVFXMk1zWFNSNGFQN0pMRTBPVW5vZ2p0Nks2dTMx?=
 =?utf-8?B?QU43VXE1R25OekR5RW9pOE1TenhMclpHb2xYa3VCRTFPaE8yeUdkNXh3YkEz?=
 =?utf-8?B?WUV1MmRJcXByVDBoQVVnYTF4eCtpMjIwSDdaY1Vob0dKVnJHY2FyOEt3cUZD?=
 =?utf-8?B?MW9GOEg2S3ZTUEM4aGJXRnM0ckpTOWphNCt0bTNQVXpDK1RWdGRLYXdSNGFk?=
 =?utf-8?B?b2FBVEN1VU4yWVpBQ2RRS04wK0NvN01ZWHRFdjhsbnFkMFY5RVFNenBSNWlG?=
 =?utf-8?B?emQ2SW9Ha3FVR1l5Z2V3NVI0Z1FlTXI3R2k3KzR1S0tudUIyNUxqVnZ5dEpS?=
 =?utf-8?B?Y29MU2ZPekpXenpDWENKN3JRSnNSM2RONkFkQXlQVmhaUXN6cXVESS95ck5y?=
 =?utf-8?B?UUFnbGtiM1p6NGdwVEJ2d3pHNHpxZEtkdHlVWVp1cm0rVytvS0xzV1FRdkIz?=
 =?utf-8?B?dFlVUXcxYmMyckl5cHZOWkMvS1VRdHNGMmxKRDROT2lXS3VCTXdMWVBpQWpX?=
 =?utf-8?B?WDNkTm5yanE2Z25JQXBFa2x4aEJTWGMyZ3dIbjhIUk1ld3EvUUgva0poUFFY?=
 =?utf-8?B?QUdQNGY3aVZIbWl1c3k4N3pKZDJsY05OdHhSMnFxNGtmQkJIVGl2V2p6a1c0?=
 =?utf-8?B?REpTclNkMXloVnRTb1lSQzdTaUhTTkF1K3RuTEdTcDNPdmJUN042dnZjMVNJ?=
 =?utf-8?B?VjFwdHMzYmkyaEJORmxkVGxHcVhWTE5FemV3ZUtUMmRZM2NSSUFvVVlscEdP?=
 =?utf-8?B?d01zMDJINUY4RGRKRXFmM0ZDSXBoc1Jmam1iVHkwZExNaEt4S1pGdm5ZUVJG?=
 =?utf-8?B?Z2RsSE9lMk12RHlsdjB1MGpmZHJhcVlhM2ZzZVQ1bmxQTDg1ZjZNYlJJZ2lV?=
 =?utf-8?B?REJBOWg2MDNJYnhMdWVyUXVpMm9OWWh0MVV2V2hyWDhPNTVvTU9Ga3pkeVdq?=
 =?utf-8?B?Zm5sUFkxZ2Q0cmpJMHBYQyttQytDbHVXREpYN1BYM2ZpZDlwNEFlT2syNUx1?=
 =?utf-8?B?NUExU3N0c0tJL2owc1h4c1E4QnlBS3dVSG1sV21tVTZpOFI5N2h4cnpQU2J0?=
 =?utf-8?B?VUJ1SVd0VHB6Tno0a2J4cWYzSUxyZUhZbFFQUnZTM1ZnRXg2UE9nQ2ZmRW5j?=
 =?utf-8?B?RkVsQ2oreFJ5NHgzUWdjNkVmOTRVMU9FdFkvV0UwVllQRFFkb0xoVVgzSllZ?=
 =?utf-8?B?WEFEU3l5WERLR0VVUUdKQkplSnM5cE16aTZySFJmdnRFWExDb3htRXc1T1By?=
 =?utf-8?B?bDJtV2xrMjB5bnVqUjZBd0VpLzdZWFpnZDlsZkVJbWhhSzUwL0pacmtweTho?=
 =?utf-8?B?WDFuTHd3bGU1TkdFb2d3ZkR2endjbVA5bzVGcjd4RlBKYVZUdUNhV29Zc1k0?=
 =?utf-8?B?VDZLVitBWk43ZU02QUZqL1dpT09UN2NtRStxQ3FxQXhURytPcUtpQmNwMHRN?=
 =?utf-8?B?WmthaDArYU9EWXYzcmRmTHVKeWFrV2xWclFQWEF3VTRzSmRGb0tESUo1cjNB?=
 =?utf-8?B?OTZQSVpucTBsa0RRQWoyYktOL2dneGlCTmo0S0hmSER3T3I3eHNuSWRNMGwx?=
 =?utf-8?B?VlhJK3ZpSmlNODZ6TmcwS2Q5S3lSMFV0STdWVkh5QnlKYjFTOUI2L3Q3RW1E?=
 =?utf-8?B?ZWFjQU51NEdTenFzaDNwN0RPWk1uWVptY3g5ZW03ZDJHSWF4RzBQUHI3Sksz?=
 =?utf-8?B?SktBeGFVMSsyTGRLMUNFeUN4dmpFNTN0TXJ4Ny8zOVlRUHlJM2ROS0o2Tlll?=
 =?utf-8?B?R0YxYUdrNjBhTHV4WHpndmZ1UUtyRVZVYzIrdVRxVHZ0amNveDBSeVVKU1ls?=
 =?utf-8?B?Skx0emNBK2d6cUxQUWVOU1gwTUtzOGN6YTFuZkd1OTJVM0cvUG9hdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: UBSNJtL9nVEV/d+eLnuZBoa5Lv8AYJ9uhKVuE9I4lOzfY70KGiAnF466N0jP1/Et8504QmKdj9KsYFh7K5RcRwsYFwB+fQetcdSq7dGXd2kMvz9UQs7IWhVQg303Et7kp9qh3CJ0qWO22JflMQvuIcf4i+KdhEz2ROu+4X0MRFc1XS1BfKlJ7ZfcSRvTNpjqlEl9GAdE3a3L7Rl2Hkau2BX1G/ovTl2q7tQnts99M/rXXtdUBzJXJ6Anj2nxpb7HEiaRbg+ZA0jiYtHRKLGrVcal4ddaoiataKzgNbbZ/+UGVtErKSGxHhnJEuvMnVHwQJmL8wAjYfV0CrL/5UhprA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f53e9d-e629-4f1c-5c5a-08dea5212eb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2026 12:25:06.8879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OG0O5ddr5BwgMJn2BGGHL94htry0MqwOKGGjpT7hourhVQipvmN7W42DAkvHszhGtLTg1R79VdzqP/zBJ3CCpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8850
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
X-Rspamd-Queue-Id: 945CD484CED
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIDI3IEFwcmlsIDIwMjYgMTYuMDYNCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1Ympl
Y3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBEaXNhYmxlIFBhbmVsIFJlcGxheSBvbiBEZWxsIFhQ
UyAxNiBEQTE2MjYwIGFzIGEgcXVpcmsNCj4gDQo+IFdlIGFyZSBvYnNlcnZpbmcgc2FtZSBwcm9i
bGVtcyB3aXRoIERlbGwgWFBTIDE2IERBMTYyNjAgYXMgd2Ugc2F3IHdpdGggWFBTDQo+IDE0IERB
MTYyNjAuIFRoaXMgZGV2aWNlIHNlZW0gdG8gaGF2ZSBhbHNvIExHRCBwYW5lbCB3aXRoIHNhbWUg
ZmVhdHVyZSBhcyBpbiBYUFMgMTQuIER1ZSB0byB0aGlzIGRpc2FibGUgUGFuZWwgUmVwbGF5IGFz
IGENCj4gcXVpcmsgb24gdGhpcyBzZXR1cCBhcyB3ZWxsLg0KPiANCj4gQ2xvc2VzOiBodHRwczov
L2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL3hlL2tlcm5lbC8tL3dvcmtfaXRlbXMvNzY4Mg0K
DQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBT
aWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jIHwg
OCArKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+IGluZGV4IDg4M2Yy
OTdkNGI4My4uYjZlODQwYmZmZDQ0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcXVpcmtzLmMNCj4gQEAgLTI2OSw2ICsyNjksMTQgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBpbnRlbF9kcGNkX3F1aXJrIGludGVsX2RwY2RfcXVpcmtzW10gPSB7DQo+ICAJCS5z
aW5rX291aSA9IFNJTktfT1VJKDB4MDAsIDB4MjIsIDB4YjkpLA0KPiAgCQkuaG9vayA9IHF1aXJr
X2Rpc2FibGVfZWRwX3BhbmVsX3JlcGxheSwNCj4gIAl9LA0KPiArCS8qIERlbGwgWFBTIDE2IERB
MTYyNjAgKi8NCj4gKwl7DQo+ICsJCS5kZXZpY2UgPSBERVZJQ0VfSURfQU5ZLA0KPiArCQkuc3Vi
c3lzdGVtX3ZlbmRvciA9IDB4MTAyOCwNCj4gKwkJLnN1YnN5c3RlbV9kZXZpY2UgPSAweDBkYmEs
DQo+ICsJCS5zaW5rX291aSA9IFNJTktfT1VJKDB4MDAsIDB4MjIsIDB4YjkpLA0KPiArCQkuaG9v
ayA9IHF1aXJrX2Rpc2FibGVfZWRwX3BhbmVsX3JlcGxheSwNCj4gKwl9LA0KPiAgfTsNCj4gDQo+
ICB2b2lkIGludGVsX2luaXRfcXVpcmtzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0K
PiAtLQ0KPiAyLjQzLjANCg0K
