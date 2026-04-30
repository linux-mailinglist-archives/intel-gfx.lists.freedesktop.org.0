Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO9JFXHE8mkjuAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 04:54:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C9649C98C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 04:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA89A10E002;
	Thu, 30 Apr 2026 02:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZP7hgAoc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D7D10E002;
 Thu, 30 Apr 2026 02:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777517679; x=1809053679;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=abS8YPtv4hvWK98Pe6gJv7rjUWxBkOzceXOUm6pvR1M=;
 b=ZP7hgAocPnMTI1Rlcmv5NJkDHNq60Yx1Kv66nWJzPBf7grJ7Qxl2IPN5
 Sn0NWqNgqyhSQFyLXwZZXILzKDW5FTrxNKL6i4x3qlRALHndkfGXdN6Zq
 eeYzr4+QW44Bbf8lWjY+aluIHala75nseAafb9dE7jXllTqWe9lOtGfhW
 EyqWT+q1ZpvBgofLjT0acSAGC4ECavtwAfdguk0lerOjU8eBPUWDseuAp
 O75jqzOMDMbK0ZN0IC8nuf9WuCnb87Lw8yw8F92+SX+irVQccqQkCI4Uw
 RI9DqPMxjJaRfLQ/v3ViMnlXuCATVUugdqGaso80P/AdIyg8ZRAdhiZNX Q==;
X-CSE-ConnectionGUID: 9StoXFyHQ/2nCaJiQQO+fQ==
X-CSE-MsgGUID: ySOxpaOsQky4NYkw+jHsLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78447916"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="78447916"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 19:54:38 -0700
X-CSE-ConnectionGUID: ZUzs1we0SxG/ZHKLA7PuBg==
X-CSE-MsgGUID: yZbd0QEhQJiqXYVcyuFxKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="231811415"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 19:54:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 19:54:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 29 Apr 2026 19:54:36 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 29 Apr 2026 19:54:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fk+W7WiP+0vsgdic34mFSybjm11QXNKuJiUgtNmcTO1d6WMbPTnnae8ksnrzWekiuMAkl+BKRV3dhpgFr+FuTQlBMJ69HT76sYWCP+CQT5gkrQtlMtiPgfaZtJaUFNKjArGuDnWjSRTmaQTfA2NPiI8JbLG0+DvHwUIUBVjtFFtpjQdFkiM6BRtY6O3/yvbRl13GVIHpqkvTF6a9HKU5j+LkWKtlUiJtD9GHt9HpmL7r+aHLWa13rox/yUx/X54S9NtLlWZ66m8iSLez5jLlHEvGQi2RKGXyZ7iC2+l4CEow9u/45uKl+ZfKSp4bejHNj6Ygz3XKtOTwhQEKVH4b7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=abS8YPtv4hvWK98Pe6gJv7rjUWxBkOzceXOUm6pvR1M=;
 b=CLBYtqSqpxA4EI8q4PE7olbL1xJc7U7JuOZci2Gqc0t0DtZ5iMhYfKEfp7IJ5zCHGM/G96hXuxUAxKGHTQKmToQ2ZR+C6hwghJ/OVjFu23LX9Cym/w2nFWJ9mW2GXLCnYSVvwF2YuXRKEphdzsI5SJT3n1ndFDtocHMN1+jkmEp15etd0tyO9SfJ3z/qMOIddag0hjwMGJ9zs5glfI2Zd1gCQwQHjhTkMdDllVBBiFMRvktq2fMTzZ3AwxPWWNIU0r6REm+cE7ZMpZU1MT/QYRUKVkmMEJ55iVgigKm+fz3asALmI7kxhDjg0ST/02bNq3snu1722G6Uwl/RTwYxDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB4983.namprd11.prod.outlook.com
 (2603:10b6:510:40::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 02:54:33 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9846.025; Thu, 30 Apr 2026
 02:54:33 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: John Harrison <John.Harrison@Igalia.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "S, Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah,
 Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "kernel-dev@igalia.com" <kernel-dev@igalia.com>
Subject: RE: [PATCH v3 00/26] Enable Pipe writeback
Thread-Topic: [PATCH v3 00/26] Enable Pipe writeback
Thread-Index: AQHcvEekZDRpUBxAzEagQXCDhYV1ObX2xXeAgABaFfA=
Date: Thu, 30 Apr 2026 02:54:33 +0000
Message-ID: <DM3PPF208195D8D07AFB5DBC81A0AA9540FE3352@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <6ceb624d-36ad-43a2-8635-ad2f50cc01f7@Igalia.com>
In-Reply-To: <6ceb624d-36ad-43a2-8635-ad2f50cc01f7@Igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB4983:EE_
x-ms-office365-filtering-correlation-id: 6ebeea42-f570-4777-eea7-08dea663cea7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|22082099003|18002099003|56012099003;
x-microsoft-antispam-message-info: VKoC/f1TDD2jHJKfmY+FsRpGw1yQLcaRG72Y6R3jFxoZ3MZQypINsCnU+ztY0Rzmjex/W4jqQgIX8DeL3ETcAGjkKApQdKjm0BVQ4JsLkggeZSyPXlI/mM8rNm0hatWFRzGSvt3mwAiFfGIYuuFvy8NxrE9Ahb9R1a63UNFl85Pcqh4ZxqrhCjjFyI9Q43NgcTsViEUCntE99hpc1LwIA4u6bBZof88yz+/iC/Pf+CVj0Ce0vPCTXtDC7Asl/KmG9mQVmq9+h64NCu568uqyzD9yTjRyeM8YuV2vc5aJcWdnIluZIAOnKZOA22kb7zUQPPTKRoIJMZR61+TKGSSPAAtTsZDOdDGVKMX+GzopDBs6VlDqpxzff/2DLxHSyC39BK7y/niu1DKCQ553Feq4CoUIeaMASyLwJ5MHxyiFCNBtvB0RjufwGr1bZI2I2rYcpFSydsZtCO8ZVQlgxQwoXpqNHzgDigxOduokLAkLfqXTi8X3VNVK89xqWFQSZ3IDsjoKp6M7E7dDpMzFcytqppZjOLYLWBTPa4H+xoCjWVJ9Z+OW7noyC3DeWHyxq/zvuAl6mDP3Fzyq4l0EMdKzzVREeahwn64xBKWMGd3EohcGGEjSm/rWkIRhBEoyWl4ydxf3jaPN7AZzilhaDDvNd1GNwOjWd/DPW5jHSD3mB8z8KcYnk7itxiThqPLzQdRvzCCC6rHq1zvjxt/3g8MNaqv8lUaw2tgo5iVtO7djWN8HUZ6PEbVuGEvXluzypUcD0PZUZCwNiPhRKc7bYQVpDyzvdpZkpsad84p1cN6wmAs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZG5kQncxaGpoREJ0a2xrM0VkY1I1WGdVNUlOeEcrSloxRnp0NmYrTmRXdU12?=
 =?utf-8?B?UXpKTk9IMllWNGl2Mk43NldEQ214azBMSFIrc2RieXFLZE9jOVpJTzRHTGJm?=
 =?utf-8?B?eXVWMzF3cldoOW1ibVYrUEhnVmIvWlZjclZOT3dSNFJDV2t5akVybkxpazRv?=
 =?utf-8?B?VzZLbWF1U2cyaHNMRnpLSldNbFBESHlWRzdKS29zQlM4eW5TdlQ0V2luNUw2?=
 =?utf-8?B?QlZ3U0lRSEk0S3NKVVBiWG1JaGhBSmswY1I5WFZBNXpKb3l4RVI2Z2cvUkJP?=
 =?utf-8?B?dmJ5cFFYSkFpTWxVTVk4bzN0K1pmd1VWMW56UlRvblRsbVVCUVNBYnVtQ0tT?=
 =?utf-8?B?SzVtU25rRm8zTlYxTXB4VFd0aTFpci9xZ2ZFRWRnUjNMOEJ1dU9LZGxrV2lP?=
 =?utf-8?B?RFdWeFN4OEdLKzlRVEU0R2ZxRGhPekJ0Z2JiQ25GN2FtODZxdEZTS0pBamVz?=
 =?utf-8?B?TUlkN2lpRmtlWlVMaURCMi91aFU5Nkh3bHZsSERPWGZOUEdJTm1sNWhYMjFi?=
 =?utf-8?B?ZDZ6dWpnSlViVXNmWjB6a0YwaWNJNHhXeFpCb0w5cjBHZUNibkZBZnc4em5j?=
 =?utf-8?B?YXVyZ2N5S0c2RTlXT1NuaEFITkFZdjdlem8wZGR3Rjh6TXNDVkg2RzY4SlJn?=
 =?utf-8?B?WnE1QkZWSkwwZFU5cXFkV1F1dGNKRGR5SWtHYVRSTFlURnBVTTlBZkU1Q2JB?=
 =?utf-8?B?M2NQNExtWGRZakwvQlJnQjN6K1lKKzJMTHIrSTNhUE1Ra0ZGN0hIdzZ0b2x5?=
 =?utf-8?B?eWJyanBXSVNmOVZtVHc2OFpjN25XUmJkb3RFT3d4Q2M1ZXVuQXF3dlZlcGI0?=
 =?utf-8?B?aXNhb01JQXNSZ3R6UG4wKzVSSlhSNFU5SUEva3pHckUrcW9sbEpZVnVPZFJl?=
 =?utf-8?B?bHhGTVJyZHhhdHIwd2NVMUhubjJnS0tHVzdxOFc1TmFVRzNjYzlJWlk1QXlY?=
 =?utf-8?B?ZXoxanFydDZZQXV1OTRjTC80RGM2STVwcU9XQnoxTnFzTXdVMGhFdGpTbm9s?=
 =?utf-8?B?SjdnRG45b3NsYUQ5SFVrcGNoL2k0bTZBOTE1OVdSVEZOQmpiTmlWUEo4V0VP?=
 =?utf-8?B?TjNLYzlTc2tBTDh3SFp4NFQrV1dEbVlPYSs0bDQwbkJHOFV5RjhuQ1hwaTBP?=
 =?utf-8?B?NXB1RUQyT3RzSlVsdUE2dzU2RXJiZ252dVdDeDdTbllrclZJWXlMbnJkVnl2?=
 =?utf-8?B?WHdQenlBNGRVUUcySXBLeDUvM3VsVDBMU0ZoajhERHU3QldWU1MxNzRIVGs3?=
 =?utf-8?B?TERjQXVlcnNuWVhERlc4OS9oY3F3MVQ2all3MXlENjZuaExIK05hT1lIT2RB?=
 =?utf-8?B?NVlyU2NnRlU3a0JZeUxUMmxoTHllWDlQLyttREFkRjFZaGt2YW9CVUJ6ckdk?=
 =?utf-8?B?bEcxWkRzU1JCUW01Wk9DOXNPWSt2eXNOSDc5aUd5Sk5CcW4ySEh3VWtZUS9u?=
 =?utf-8?B?eGwvLzB2UnVRcUJ5WTVQNGtIV2t0YXVFTGpXd2luZ0hvanlYak56SllBN0o2?=
 =?utf-8?B?cUtqTDNjaktQR2JQd1ZqV2l6Qy9WVTFZck1sU0ZzUnJhbUVRbS9rZUlqVnhw?=
 =?utf-8?B?eTdHWDhYZkRiSXdqeVlkbHdFOWp5WGhSbHk0YXR1RFF4ZXI4RXd2R3AwTHJK?=
 =?utf-8?B?TVI2MFZkT3FiRlNkWlRMUmY0R0o4TjZEV2NTQncyL2RqWExqUnd5WkpSNmJC?=
 =?utf-8?B?Nm5VNGdwa2dKTmxJSFlaVGJ4aSs0dUVRSWNaSlZlWmFkRkpyWjM5eWJiMUEw?=
 =?utf-8?B?cEZSelNSbWlwM0VlbHVWYVEwZVZOT0dWTWs1K21uQTFsN3pINmtWRWNwM0VS?=
 =?utf-8?B?RXlDakdBSkh0Q3piY2pWSmo1ait0Q3VYeWZIekkwVkgrMFpVd3B4dHhBZlJR?=
 =?utf-8?B?Mlc0VWJkc3ZMLzN6RnBpVHZpQzJDbmtMMHVxbUY5Tm1maHptM2pQcmRVSDZi?=
 =?utf-8?B?U1Q4bVl2VTlWS3NLQWxFWTZydGMrMlhKNVJzSy9XSDA0dWV5VGRtLzN3WmMr?=
 =?utf-8?B?WWVHenlGblcwblg3c1NYQ240RHk1d09BL3RNUzR5T1M2V0EzbGhwZkR5Tkky?=
 =?utf-8?B?dE00T215Z0ZETnZNVHYwZGRPQ3YwSFBVM0lPRGNvR1N3TjI4bFRXQm13dDZm?=
 =?utf-8?B?Y1NUVVV3Y3hzUE1kSkcvbkFhWmRMNVJVQWRreDJidE5pR29YL2RMOU1ack9O?=
 =?utf-8?B?eDlucDJlME9qMGRBRHl5OFhNcW1Obm5GRzJmY09mNjh2U0hiRWQ5OXFNckJU?=
 =?utf-8?B?anVpbk8zUnNyRU5RdFZZQmVjcTlFeGVTUlpjWnRyZWwyR3pGaHVzS1lqOXdM?=
 =?utf-8?B?dzV5WEZ5LzBtNWxRUzhnZURTM3BNSlk2cGxIaWpWS3FubHNkMHozdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: kkNcs13fbuoVuQo/ZmF8B/EuY7oE9ufq7Xfqbjk6bXqy2p6jYRUhvGoFXNC1bZ0O2QPMv4Tn8We0iOlh5ZvpFycnFQdsbi3rwum8rM0wb/OUrBydsM9AjLAGnzacFo0hqqNxY9y/70UEvi2KdQiLtHer6MRDuC+lXi2UV+7/VirFUaWLyepu0XmsK7TfEJLMT08f9WrMeO+bRdb6IiQ8sjbwDXgJVqkZEsYMfEbKSrzQubk7fDBtsF9zuYdMreQviwKJ+EwFC1WRzaYje8WWyels5gAeTr04u6Ea0vhLSW2aJbKaBzuLlSSpgvnSlSxBTFqzpz1A2iNFRaWApsRlcg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ebeea42-f570-4777-eea7-08dea663cea7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 02:54:33.1918 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PJFoXeIDVzj9SHZPOuZKUeZ80wEmIvcn2CFWiqwRoyb8/AVt7zmXMkEVzodbXernWwPfYWc/TOZE1ROiqnsFew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4983
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
X-Rspamd-Queue-Id: B0C9649C98C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

PiANCj4gT24gMy8yNS8yNiAwNDowNywgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBUaGlzIHNl
cmllcyBhaW1zIHRvIGVuYWJsZSBwaXBlIHdyaXRlYmFjayBmdW5jdGlvbmFsaXR5IG9uIEFETFAg
d2hlcmUNCj4gPiBpdCBoYXMgYmVlbiB0ZXN0ZWQuIFRoZSBwbGFuIGlzIHRvIHNsb3dseSBhY2Nv
bW9kYXRlIGFsbCBzdXBwb3J0ZWQNCj4gPiBoYXJkd2FyZSBhZnRlciB0aGlzIGZ1bmN0aW9uYWxp
dHkgaXMgdGVzdGVkIG9uIHRoZW0uDQo+ID4gVGhpcyBzZXJpZXMgY3VycmVudGx5IHNpdHMgb24g
dG9wIG9mIHR3byBzZXJpZXMgc3RpbGwgdW5kZXIgcmV2aWV3IGluDQo+ID4gZHJtIGNvcmUuIFRo
ZXkgYXJlIHNxdWFzaGVkIGFzIHRoZSBmaXJzdCB0d28gcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4N
Cj4gPiBUaGlzIHNlcmllcyBlbmFibGVzIHRoZSB0cmlnZ2VyZWQgY2FwdHVyZWQgbW9kZSB3aGVy
ZSB3ZSBuZWVkIHRvDQo+ID4gdHJpZ2dlciBhIGNhcHR1cmUuDQo+ID4NCj4gPiB2Mg0KPiA+IC0g
RG8gcmVxdWlyZWQgY2hhbmdlcyB0byB0YWtlIGludG8gYWNjb3VudCB0aGUgbmV3IGRybSB3cml0
ZWJhY2sNCj4gPiAgICBmcmFtZXdvcmsNCj4gPg0KPiA+IHYzDQo+ID4gLSBGaXggcGF0Y2ggc2Vy
aWVzIHRvIGFwcGx5IGNsZWFubHkNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRw
YWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiANCj4gSGVsbG8sDQo+IA0KPiBJIHRyaWVk
IHRoaXMgb3V0IChvbiBhIExOTCBiZWNhdXNlIEkgZG9uJ3QgaGF2ZSBhbiBBREwgYXQgdGhlIG1v
bWVudCkgYW5kIGhpdCBhDQo+IGJ1bmNoIG9mIGlzc3VlcyB3aXRoIG51bGwgcG9pbnRlciBkZXJl
ZmVyZW5jZXMuDQo+IA0KPiBJdCBsb29rcyBsaWtlIHRoZSBpbnRlbF93cml0ZWJhY2tfY29ubmVj
dG9yOjpqb2IgZmllbGQgaXMgbmV2ZXIgZmlsbGVkIGluIGJ1dCBpdCBpcw0KPiBiZWluZyB1c2Vk
LiBGdXJ0aGVyLCBpdCBsb29rcyBsaWtlIHRoYXQgZmllbGQgZXhpc3RzIGJlY2F1c2UgY29ubl9z
dGF0ZS0NCj4gPndyaXRlYmFja19qb2IgaXMgZ29uZSBieSB0aGUgdGltZSB0aGUgY2FwdHVyZSBm
dW5jdGlvbiBpcyBjYWxsZWQuIEhvd2V2ZXIsIHRoZQ0KPiBjYXB0dXJlIGZ1bmN0aW9uIGlzIHN0
aWxsIHVzaW5nIHRoYXQgbnVsbCBqb2IgcG9pbnRlciBpbnN0ZWFkIG9mIGNhY2hpbmcgdGhlDQo+
IHJlcXVpcmVkIGluZm8gaW4gdGhlIGludGVsIHNwZWNpZmljIHN0cnVjdHVyZS4NCj4gDQo+IFNw
ZWNpZmljYWxseSwgaW4gaW50ZWxfd3JpdGViYWNrX2F0b21pY19jb21taXQoKSBpdCBzYXlzOg0K
PiAgwqAgwqAgZHJtX3dyaXRlYmFja19xdWV1ZV9qb2IoY29ubmVjdG9yLCBjb25uX3N0YXRlKTsN
Cj4gIMKgIMKgIGludGVsX3dyaXRlYmFja19jYXB0dXJlKHN0YXRlLCBpbnRlbF9jb25uZWN0b3Ip
Ow0KPiANCj4gQW5kIHRoZSBkb2MgZm9yIHRoZSBkcm0gY2FsbCBleHBsaWNpdGx5IHNheXMgaXQg
Y2xlYXJzIHRoZSB3cml0ZWJhY2tfam9iIGZpZWxkIHRoYXQNCj4gdGhlIGNhcHR1cmUgZnVuY3Rp
b24gdHJpZXMgdG8gdXNlLg0KPiANCj4gSSBtYWRlIHRoZSBhdHRhY2hlZCBjaGFuZ2VzIHRvIG15
IGxvY2FsIHRyZWUgYW5kIEkgbm8gbG9uZ2VyIGdldCBhbnkga2VybmVsDQo+IHBhbmljcy4gSSBk
byBnZXQgYSAiZmxpcF9kb25lIHRpbWVkIG91dCIgZm9sbG93ZWQgYnkgYSBidW5jaCBvZiB3YXJu
cyBhbG9uZyB0aGUNCj4gbGluZXMgb2YgImF0dGFjaGVkIGNydGMgaXMgYWN0aXZlLCBidXQgY29u
bmVjdG9yIGlzbid0Ii4NCj4gSSdtIGd1ZXNzaW5nIHRoaXMgaXMgcmVsYXRlZCB0byBydW5uaW5n
IG9uIHVuc3VwcG9ydGVkIGhhcmR3YXJlPyBXaGF0IHdvdWxkDQo+IGJlIG5lZWRlZCB0byBlbmFi
bGUgdGhpcyBmb3IgTE5MPw0KDQpIaSBKb2huLA0KY3VycmVudGx5IHRoaXMgc2VyaWVzIGlzIGp1
c3QgYSByZWRlc2lnbmVkIHZlcnNpb24gdG8gY2hlY2sgaWYgdGhlIGV4cGVjdGVkIGNoYW5nZXMg
aW4gRFJNIGNvcmUgd29ya3Mgd2l0aCBvdXIgZGVzaWduLCB0aGVyZSBhcmUgc29tZSBmbGF3cyB0
aGF0IGNyZWVwZWQgaW4gZHVlIHRvIHRoaXMuIEN1cnJlbnRseSB0aGlzIGlzIG5vdCB1cCBvbiBt
eSBwcmlvcml0eSBsaXN0IGJlY2F1c2UgdGhlcmUgYXJlIHR3byBzZXJpZXMgbWVudGlvbmVkIGlu
IGNvdmVyIGxldHRlciB3aGljaCBhcmUgc3RpbGwgbm90IHRvdGFsbHkgUmInZCBzdG9wcGluZyBt
ZSBmcm9tIGxvb2tpbmcgaW50byB0aGlzIHNlcmllcyBhbmQgZml4aW5nIGl0IGJhY2sgdXAuIElm
IHlvdSBjYW4gaGF2ZSB0aGUgbG9vayBhdCB0aG9zZSBEUk0gY2hhbmdlcyBhbmQgUmIgdGhlbS4g
VGhlcmUgYXJlIHNvbWUgbW9yZSBjaGFuZ2VzIHRoYXQgTE5MIHJlcXVpcmVzIHRvIGdldCB3cml0
ZWJhY2sgd29ya2luZy4NCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiANCj4gDQo+IA0K
PiBUaGFua3MsDQo+IEpvaG4uDQo=
