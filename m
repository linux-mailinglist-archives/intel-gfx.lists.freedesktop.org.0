Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kF7HIZDDs2mEagAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 08:58:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D52D27F1C5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 08:58:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202F310EB07;
	Fri, 13 Mar 2026 07:58:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dlh/sIKS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5F5510EB06;
 Fri, 13 Mar 2026 07:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773388684; x=1804924684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=y7lMZxQU7P41qoRaERAaaMWEUvg6FByF8BFPIRcyqu0=;
 b=dlh/sIKSzPq6fPMhlN27oN96DbZL8pVechBDmgZSF9o5x9sUp3J1Cx8r
 09zeRDQim5Eohp/y/WYnUsp+jOrJ/aWqwqa/JTPDwcg7a4OMQkDXPVy8U
 bGPZ7YVj4CGKKsORXp1ZnENel3JNKiLTQ9n4rqAwuGjUZCIVSZZYpfNsX
 on7j/3MxT3F/Q+BeiveFTPJBz30WyLdKdq6pjMRfQsiy6kBEoesmDTHHD
 LCCOkz3h+rasGfqvPcFrYvlv7UTEtPUHR5DHtC3r2o/bSnnpPjMG5Yub0
 X/vC8Z2b8ABaIXPCtCmlhsfGr5WVYI3f28UnKmv4yrnR3NFE7KZm7WfLJ w==;
X-CSE-ConnectionGUID: wGuubRqRRVek4JqhQadhpw==
X-CSE-MsgGUID: gL23ozgfRNuZLYmOw4BtwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="84811099"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="84811099"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 00:58:03 -0700
X-CSE-ConnectionGUID: 5e+KDXJIRyWDV6UPO7rYHw==
X-CSE-MsgGUID: fOmapDbiQPSbuNOcDYcPYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="246306579"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 00:57:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 00:57:55 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 00:57:55 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.15)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 00:57:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U+9DkCevNQJUzXhG7q3d3bjzlqDO9Ou3bICMKl5GHygj+xyo19kqghShStO+bCVVHT75/SpHCNGXuTkdpOT+oYVM6sbSMejZSKthrOez4Uw00SHojl+pSMq8ARdihGdkk6DNKflTEX7zcDFGcBVS/9ubKv9/vwZy8cDd2alF++xD1/VGFgVWeEy4bYu+26spWJ4c6ag3/l6EbktnOJEOo2NRaPwrJXhAYUznJBVHsmsXCziP5tCFpHNbxT4pPShvim4fvOX68IIMx9hytPX4LavQbxWwBcAj89FGA1lEjS3jif1+AB8osO9i5BrjP7s4FltfBpJrR1FzizGioBCgbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y7lMZxQU7P41qoRaERAaaMWEUvg6FByF8BFPIRcyqu0=;
 b=VfBQhhL8sguBmgzBOxV979i6EvzbHrk7HhWQfvaO7dQ4d4ATvUnKWDn9Wu/N3RUDl2qo6lv6EeWe+tR9+ATcrVR8wv5od0hTC7DW91VmUk2TGk9p5OuXwAt9xuQ5kOgFs9Xs653tL+nFqP3SQx+YNpF76IQgfEB9rQ1YMHstl0g7rt/RvWcW0LL4cE4uNB/yr7uM/r6O4AoeQqF2VzmJt+UYD0Bnxa72euvNYpatQw6jmgaAsVftyC/tdnPHyQR1vzWmsFtDbcIfiYB2E3KoyRCmPnBHQ6XfTLNCKdZVoX3DyBQcXQFbeiAh9I9ziuZENMt89hfY4KRy7662Q0WliA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7924.namprd11.prod.outlook.com (2603:10b6:930:7a::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.7; Fri, 13 Mar 2026 07:57:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9723.004; Fri, 13 Mar 2026
 07:57:44 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Nikula, 
 Jani" <jani.nikula@intel.com>, "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Topic: [PATCH v7 0/3] Panel Replay BW optimization
Thread-Index: AQHcseFtvVqfVU+4l0S51ihL3Qu0I7Wqij2AgAB4/YCAAOsygIAAKjeAgAABvQA=
Date: Fri, 13 Mar 2026 07:57:43 +0000
Message-ID: <cbd5a8b6e612da35d03440b18f81138f3fa48349.camel@intel.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <07a6b5ed17b3781aa6f769d92b8409d3519c21ea.camel@intel.com>
 <abLZS_Xn2mnKAgLq@ideak-desk.lan>
 <34d06e837ea473c4f1a6456ae2da55c97e58fc67.camel@intel.com>
 <abPCARYnIAdJHuxf@ideak-desk.lan>
In-Reply-To: <abPCARYnIAdJHuxf@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7924:EE_
x-ms-office365-filtering-correlation-id: 73451d05-a78c-4181-8614-08de80d63562
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|18002099003|22082099003|56012099003|38070700021;
x-microsoft-antispam-message-info: YfCxq6d+E76LV5gwR9CJ5Japy4uSKoFZLyQrAX39Gn+v2WQ0rfzF5H90T++SNxQzJT85eNGSYHMXC+pO0aCnPFpCna9PFajBwIUckAqNft5uJygccW6QCeksIXHzrZe+T3A/0A6g1owpWsGJqG+86vcuJHFOo5dPPhIqRehhjGH8vqwHhPSqVDkJk7Dg0igAbTgx8HCiDLURfWSCW1IJ3JvAuxAWoKKCEX1E+fetKOLhyz4suPkFu05Xs8dErkYGlKItl8vs4WKLy+4bKkZ2WX+KJbxVitlPZtWQwl6BD9UvUvKmEQqkCdpp+8rrnaaT14W0fJgQpDMSsmWZUxK3bb/SrOGdZLbC6E/G/q6zL1pLRchefxPC5xJ0CYx4Kw4IPM0crliNGYnycMfikC3SjN6OanaA0JnVAo6P5BKwjZFezPCQZxmwO2LF7ium8Er4lbereZlMqV0hmulUGLldjzxaheTKsvHEmub6lwQBuXplajPZ3vf2yFDofn/kVN0sz91YOn7CVZ7RkfAxyc4LIWfDuUzOw83YYusKfBJPtpZELxCRluPPzCDVEC+YdhMIRGktvmBjTTsJv5eAtoRdMJ0Y5Y6yB3uGbXJXdUU7UYB4meO9ZY1RPYT+3wYroOuQmb5vfR/xFnWorr+A7nfxvZHjlie70NNqCU20RRzHfIJk00jzWqaxaT6y7MsrtdoWj8JFikuFpSAxHkhMzmV9NrWBlB6fZmFs7COlgkSr1U1a0fLZBa7pdnFRQvVy88F37lXlrb13o0xsxOK2oXg8nLS+NXwJK8cx5PmJA9fPZGo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(18002099003)(22082099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b1c3YW1aOG4xT1BuajNFZTBiMVExOXE1d1lCd2ZiNHNWdFNQZXIwSzkzZmRs?=
 =?utf-8?B?WFVFRFk1YUhIcDBQTG9RNUl2b1FGcE9QNGtEeUhxSDNQUUVBeVFkVDdVdERY?=
 =?utf-8?B?cGIzcmRaWGc5UFVWM1h3cDlWb2J0TWl4MlBmZk5zbHNsczNDUzY0TEJmTjRI?=
 =?utf-8?B?U0lZd1dkRVFuZWlTYlNneWxZMVI4YW50bkwxdkc0VW4rdTlVblNpeittSnd2?=
 =?utf-8?B?R3hQS1BlNTNlUmNVR0lKS1hkU05pWnhYRlNyUHpVdVRxblpqNzdZaWVwUzBj?=
 =?utf-8?B?ZVMwS0R2eVZHZGhWNUp6M2EzVC80bXJYeEtBUldSazhPZDk4aytNRHVTTnhj?=
 =?utf-8?B?MWlPVzYrUnhsZisySDdiVnVtVkwzM2FKOHlqUCtpams2NVF6c2t3Q2F2UHNh?=
 =?utf-8?B?bzlMcmJidldSbzRISDh3c3c5ZmE3L0NwWFgvaDNyZitxdThDdFdrNXIyWUxV?=
 =?utf-8?B?ZFdVcjl2WFpHUnp3SUlqQXFZd2h0MGxGeXRndCs3cXNuREJrWGdZZjlCMU02?=
 =?utf-8?B?ZmlyVzF2SjRIQ25qYVE0ZzdlRGtxdEhOZG1QTjBwOE1BWDBaREJDdy9LVFhh?=
 =?utf-8?B?bU54MjVManZQL0VvbnZVaUNGYnJzbFlSaDhQdllPblJTdEpDWk5INnhsS2tI?=
 =?utf-8?B?Ry9DUlZEOVI0SkEyb0ZsaVJ1TmFlUU91TFB4b2xRZ3MzUXpZT1pHV1N0SVY5?=
 =?utf-8?B?Y0tmMDM3bzc4cEtydjMrN1NESStVano3ZzJ3NXkzMXJKTUd4OEt4QVFxdEUr?=
 =?utf-8?B?VzE0Y3MrVEdxMVNMd1F2YTd3c0pCZC9seFpNNHo4akdPa3ZwMTg0UnNweTUw?=
 =?utf-8?B?MHI2RGIwUTVRYWtHNm1OeTJBV3NWODhMWlJFMUEveVNJWFQzc2JhYndYelNp?=
 =?utf-8?B?WVZLOTRhREdkNGFDb1BVUVdYcXlIMk9ralNHTW5NOXJMTy9HSTZESnVSUVBT?=
 =?utf-8?B?dDNTVlBZNHRYMnBENjdqZm4vZjBWUUhyZkJCWHdIRDVjTVFoVStwRE5vSkd0?=
 =?utf-8?B?akJBdWpkbWcvWnliRS9rZFVNREJDaXd5Z1lrcGdTMVFuUVlCbndKSW5IZGZD?=
 =?utf-8?B?eTc0VkxhNzJ1cnZ0dGR6THlRdExYa2crcXZtNWlyNm1LR0tMRDl0VVFWQ0Iz?=
 =?utf-8?B?eUhwV2w5VDVha3lsa2lVeGVkYVM3Y3hxdnZ1N0tSQ2FDc05lRm83aXpMV3l2?=
 =?utf-8?B?WWtMVVhCMGtmTWgrSGpVM3EybzZBMVd1b2t3OVhab2lRemRwU3Y1S2FWYWt5?=
 =?utf-8?B?WG9kRkI3VEFWVEtXU1VXMnN4a2ppaHpaVndpUzNCbDc4dDJsSjhiZk5JdnRM?=
 =?utf-8?B?UFZVRXhsMVh4Z3k3ZEpZZFBrcnVtRGQ5d0R5VlllWFFKNUtvblp3U012N0lr?=
 =?utf-8?B?Y1crS00wcU10SWo5b2lOWkRCblhaK09UU2plcmtGSWtMNjlSbkdsTjRHRFls?=
 =?utf-8?B?MjRqamRPZml3VVNRU2ZpditlR254YjJXRU9ycUNabzZHYnFHMTB1ZFpSa00r?=
 =?utf-8?B?S0hKRk1mejJYL0RHaUwwdU9qeHh3Qi9HaWNDM20wQlZ3c3NFWXdYVjRuY0hF?=
 =?utf-8?B?K3BTb256MFR2MVVnaGtiVXI5NmRvNUJMTFIvQ3FDd1puUEtyTjQxYUllMkJ0?=
 =?utf-8?B?ZS9Dc1lIMis3cCtKY0FxOE5OMzM3bXk4ZG5PQ0s4aGJnd05XMS8vNDNCdUpK?=
 =?utf-8?B?VHN6WVpXMWhhZ3lIRGdJcE1ydVo2Z0NLTERCYjNhNGlETUo4UkdxM2NoazM2?=
 =?utf-8?B?N2lBd2I0VVAxcGZtMEduNXh2K2NyaFJ4K2dXd3JZTnlZcmM1VWxQb0ErcGtB?=
 =?utf-8?B?SzNrNnY3TFVQK2QvTnBCT2N5L0I1TG9zQmpZMUNOM3BsSXo0WWdpVHJJMW1X?=
 =?utf-8?B?emZoQThQSlpHVTY1V05qcmhXbXIvOFU0aXFHbkZGUzU3Wmw5S0ZTdTF4Y1RX?=
 =?utf-8?B?SXBBQ2xqbURuRGVhVjNqaVNGTzBNTjFsL2NCN3NoVVdCTFYzWHlYVGJ2VGEw?=
 =?utf-8?B?RkN3STFNS1lmeENPUmRpWlZIQURVQ1RrVWVESUpTWXZlNnVkZXlETllGVnY0?=
 =?utf-8?B?T09VL2pEM3I5bmQwN0pPL0s2a0hnRjJlMUgwYVR3TFo5QWc4TjlTK3hMZjB6?=
 =?utf-8?B?M2xCTFNNTmJYQmJnMHR5YzJmU2EwK0JRdFRVM0Z0YWcwd0Y1ektiRmttbUI2?=
 =?utf-8?B?RWZad3hkelhKL2pSNWxXZFdTVjlyNURLUGpkbGhJalh0VmppbDFpZG9HM2hr?=
 =?utf-8?B?OHNuRzh5aGtTb0dERGdMQXpSWGYrdmNDVzRuQmtwbTM2SjdqSEd2YWRETlNx?=
 =?utf-8?B?L0d3cEpCQWMrQUZZOFZWRVhvVEMzY0FHcDJsN3M1K2xaVnpIeGZmTmxTd01k?=
 =?utf-8?Q?PY8K+L0nHrTGvBNYBh/+GazN1Dzo3Zm+VVbMshtXkMTun?=
x-ms-exchange-antispam-messagedata-1: B1uXlMlxujy9+v4gmPLfpH2EGOBgeELk0Nc=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F36F6E6FCD2B847991CFB671C53815B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: a+TTjs83rHjJWemSK9ucF0PU62mdDJLJXWlN/5VhrQkdVyLsYvRzA5LzuX3zRvPYz+cUygesr//SBIHSJv/yImEL8xeaZmJNVYa/jpOMl+jgM9s5HYxNRU0kPwwTrMQoYKip27VySCfrulZVxwQ7tgy27nuD4EGOXLPbcy4Q6NXMXiwIyCHsXtruQcRCdgILQm0C6YD63GviyOAx790kGeT7TV+T37PEbtakNdBFjn6UjoRLertwoUs9g4G0uyzPtV5A7g8BsYmdDtlR2RbDZ0hCR709WVOeHHprVWbL5z70yNn6gZZufbPCezjz7j/+MStKxtxQWbCHnJSClOsz/Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73451d05-a78c-4181-8614-08de80d63562
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 07:57:43.9310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GryDjbamKE2bB9sid73jspZ+EpTnTfL7R8VnG3Xghlc1wnaNNe8siUBnTHw7cU6t1HOOBHqyW9w8tH0DNB/Tsan+fiYGVvckQkXf9LiEhuU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7924
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 1D52D27F1C5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTAzLTEzIGF0IDA5OjUxICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEZyaSwgTWFyIDEzLCAyMDI2IGF0IDA3OjIwOjI0QU0gKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiBPbiBUaHUsIDIwMjYtMDMtMTIgYXQgMTc6MTggKzAyMDAsIEltcmUgRGVhayB3
cm90ZToNCj4gPiA+IE9uIFRodSwgTWFyIDEyLCAyMDI2IGF0IDEwOjA1OjM1QU0gKzAyMDAsIEhv
Z2FuZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+ID4gT24gVGh1LCAyMDI2LTAzLTEyIGF0IDEwOjMw
ICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0KPiA+ID4gPiA+IFVudXNlZCBiYW5kd2lkdGgg
Y2FuIGJlIHVzZWQgYnkgZXh0ZXJuYWwgZGlzcGxheSBhZ2VudHMgZm9yDQo+ID4gPiA+ID4gUGFu
ZWwNCj4gPiA+ID4gPiBSZXBsYXkNCj4gPiA+ID4gPiBlbmFibGVkIERQIHBhbmVsIGR1cmluZyBp
ZGxlbmVzcyB3aXRoIGxpbmsgb24uIFRoaXMgcGF0Y2gNCj4gPiA+ID4gPiBzZXJpZXMNCj4gPiA+
ID4gPiBlbmFibGluZyB0aGUgc2FtZS4NCj4gPiA+ID4gDQo+ID4gPiA+IEdlbmVyaWMgY29tbWVu
dCBvbiB0aGlzIHBhdGNoIHNldC4gTWF5YmUgd2Ugc2hvdWxkIGFkZCBvbmUgbW9yZQ0KPiA+ID4g
PiBwYXRjaA0KPiA+ID4gPiB3aXRoICJGaXhlcyIgdGFnOg0KPiA+ID4gPiANCj4gPiA+ID4gRml4
ZXM6IGU2MGNmZjQ1M2I4MiAoImRybS9pOTE1L2RwOiBFbmFibGUgRFAgdHVubmVsIEJXDQo+ID4g
PiA+IGFsbG9jYXRpb24NCj4gPiA+ID4gbW9kZSIpDQo+ID4gPiA+IENjOiBJbXJlIERlYWsgPGlt
cmUuZGVha0BpbnRlbC5jb20+DQo+ID4gPiA+IENjOiA8c3RhYmxlQHZnZXIua2VybmVsLm9yZz4g
IyB2Ni45Kw0KPiA+ID4gDQo+ID4gPiBXaHk/IEFzIEkgdW5kZXJzdGFuZCB0aGUgUGFuZWwgUmVw
bGF5IEJXIG9wdGltaXphdGlvbiBvbiBhIERQDQo+ID4gPiB0dW5uZWxlZA0KPiA+ID4gbGluayBp
cyBhbiBfb3B0aW9uYWxfIGZlYXR1cmUsIHdoZXJlYnkgdGhlIGZyZWUgQlcgY2FuIGJlIHVzZWQg
YnkNCj4gPiA+IHRoZQ0KPiA+ID4gVGh1bmRlcmJvbHQgcHJvdG9jb2wgZm9yIG90aGVyIHB1cnBv
c2VzIHRoYW4gZm9yIHRoZSBnaXZlbg0KPiA+ID4gZGlzcGxheQ0KPiA+ID4gc3RyZWFtIGZvciB3
aGljaCBQYW5lbCBSZXBsYXkgaXMgZW5hYmxlZC4gSU9XLCBpdCBsb29rcyB0byBtZSBhDQo+ID4g
PiB2YWxpZA0KPiA+ID4gY29uZmlndXJhdGlvbiB0byBlbmFibGUgUGFuZWwgUmVwbGF5IG9uIGEg
RFAgdHVubmVsZWQgbGluaw0KPiA+ID4gd2l0aG91dA0KPiA+ID4gZW5hYmxpbmcgdGhlIFBhbmVs
IFJlcGxheSBCVyBvcHRpbWl6YXRpb24gb24gaXQuDQo+ID4gDQo+ID4gTXkgb3JpZ2luYWwgY29t
bWVudCB3YXMgYWJvdXQgRFAgc3BlYzoNCj4gPiANCj4gPiAiDQo+ID4gVGhlIERQIFNvdXJjZSBk
ZXZpY2UgbWF5IG9wdGlvbmFsbHkgZW5hYmxlIFBSIG9wdGltaXphdGlvbiB3aXRoIERQDQo+ID4g
dHVubmVsaW5nLiBUaGUgZGV2aWNlDQo+ID4gc2hhbGwgcXVlcnkgdGhlIFR1bm5lbGluZyBCcmlk
Z2XigJlzIFBSIHR1bm5lbGluZyBvcHRpbWl6YXRpb24NCj4gPiBjYXBhYmlsaXR5DQo+ID4gYnkg
d2F5IG9mIHRoZQ0KPiA+IFBhbmVsX1JlcGxheV9UdW5uZWxpbmdfT3B0aW1pemF0aW9uX1N1cHBv
cnQgYml0IGluIHRoZQ0KPiA+IERQX1RVTk5FTElOR19DQVBBQklMSVRJRVMNCj4gPiByZWdpc3Rl
ciAoRFBDRCBFMDAwRGhbNl0pLCBhbmQgdGhlbiBlbmFibGUgUFIgb25seSB3aGVuIHRoZQ0KPiA+
IFR1bm5lbGluZw0KPiA+IEJyaWRnZSBpcyBjYXBhYmxlLg0KPiA+ICINCj4gPiANCj4gPiBUaGF0
IHNvdW5kcyBsaWtlIFBSIGNhbiBiZSBlbmFibGVkIG9ubHkgd2hlbiBQYW5lbCBSZXBsYXkgVHVu
bmVsaW5nDQo+ID4gT3B0aW1pemF0aW9uIGlzIHN1cHBvcnRlZD8NCj4gDQo+IFRoZSBTdGFuZGFy
ZCByZWZlcnMgdG8gdGhlIF9vcHRpbWl6YXRpb25fIG9mIHRoZSBQYW5lbCBSZXBsYXkNCj4gZnVu
Y3Rpb25hbGl0eSBvdmVyIGEgdHVubmVsLiBUaGlzIG9wdGltaXphdGlvbiBjYW4gYmUgZWl0aGVy
IGVuYWJsZWQNCj4gYnkNCj4gdGhlIHNvdXJjZSB3aGVuIGVuYWJsaW5nIHRoZSBQYW5lbCBSZXBs
YXkgZnVuY3Rpb25hbGl0eSBvdmVyIGEgdHVubmVsDQo+IG9yDQo+IHRoZSBvcHRpbWl6YXRpb24g
Y2FuIGJlIGxlZnQgZGlzYWJsZWQgYnkgdGhlIHNvdXJjZSB3aGVuIGVuYWJsaW5nIHRoZQ0KPiBQ
YW5lbCBSZXBsYXkgZnVuY3Rpb25hbGl0eSBvdmVyIGEgdHVubmVsLg0KPiANCj4gVGhlIG9wdGlt
aXphdGlvbiBtZWFucyB0aGF0IHRoZSBCVyBvZiB0aGUgc3RyZWFtLCBub3Qgb3RoZXJ3aXNlIHVz
ZWQNCj4gZm9yDQo+IHRyYW5zZmVycmluZyBhY3RpdmUgcGl4ZWxzIG9yIG90aGVyIGRhdGEgKGku
ZS4gZHVtbXkgcGl4ZWxzKSBjYW4gYmUNCj4gdXNlZA0KPiBieSB0aGUgVGh1bmRlcmJvbHQgcHJv
dG9jb2wgdG8gdHJhbnNmZXIgbm9uLWRpc3BsYXkgdHJhZmZpYy4gSWYgdGhlDQo+IFBhbmVsIFJl
cGxheSBpcyBlbmFibGVkIG92ZXIgYSB0dW5uZWwgd2l0aG91dCB0aGlzIG9wdGltaXphdGlvbiwg
dGhlbg0KPiB0aGUgVGh1bmRlcmJvbHQgcHJvdG9jb2wgaXMgbm90IGFsbG93ZWQgdG8gdXNlIHRo
aXMgQlcgZm9yIG90aGVyDQo+IHB1cnBvc2VzIChpLmUuIGl0IGp1c3QgdHJhbnNmZXJzIGFsbCB0
aGUgZGlzcGxheSB0cmFmZmljIGl0IHJlY2VpdmVzDQo+IGZyb20gdGhlIHNvdXJjZSBhcy1pcyku
DQoNCk9rLCB0aGVuIG15IG9yaWdpbmFsIGNvbW1lbnQgd2Fzbid0IHZhbGlkIGF0IGFsbC4NCg0K
U29ycnkgQW5pbWVzaCBmb3Igc3RlZXJpbmcgaW50byB3cm9uZyBkaXJlY3Rpb24gaGVyZS4gQmFz
ZWQgb24gY29tbWVudA0KZnJvbSBJbXJlIEkgdGhpbmsgeW91IGNhbiBkcm9wIHBhdGNoIDMuDQoN
CkJSLA0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4gSm91bmkgSMO2
Z2FuZGVyDQo+ID4gDQo+ID4gPiANCj4gPiA+ID4gVGhpcyBwYXRjaCB3b3VsZCBqdXN0IGFkZDoN
Cj4gPiA+ID4gDQo+ID4gPiA+IGlmIChpbnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxl
ZChpbnRlbF9kcCkpIHsNCj4gPiA+ID4gCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwNCj4gPiA+
ID4gCQnCoMKgwqAgIlBhbmVsIFJlcGxheSBpcyBkaXNhYmxlZCBhcyBEUCB0dW5uZWxpbmcNCj4g
PiA+ID4gZW5hYmxlZFxuIik7DQo+ID4gPiA+IAlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+IH0NCj4g
PiA+ID4gDQo+ID4gPiA+IGludG8gX3BhbmVsX3JlcGxheV9jb21wdXRlX2NvbmZpZy4gdGhpcyBj
b3VsZCBiZSBmaXJzdCBwYXRjaCBpbg0KPiA+ID4gPiB5b3VyDQo+ID4gPiA+IHNldC4gV2hhdCBk
byB5b3UgdGhpbms/DQo+ID4gPiA+IA0KPiA+ID4gPiBCUiwNCj4gPiA+ID4gSm91bmkgSMO2Z2Fu
ZGVyDQo+ID4gPiA+IA0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1l
c2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+
IEFuaW1lc2ggTWFubmEgKDMpOg0KPiA+ID4gPiA+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IEFkZCBk
cm0gaGVscGVyIHRvIGNoZWNrIHByIG9wdGltaXphdGlvbg0KPiA+ID4gPiA+IHN1cHBvcnQNCj4g
PiA+ID4gPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBQYW5lbCBSZXBsYXkgQlcgb3B0aW1pemF0aW9u
IGZvciBEUDIuMA0KPiA+ID4gPiA+IHR1bm5lbGluZw0KPiA+ID4gPiA+IMKgIGRybS9pOTE1L2Rp
c3BsYXk6IERpc2FibGUgUGFuZWwgUmVwbGF5IGZvciBEUC10dW5uZWxpbmcNCj4gPiA+ID4gPiB3
aXRob3V0DQo+ID4gPiA+ID4gwqDCoMKgIG9wdGltaXphdGlvbg0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5jwqDCoMKgwqDCoMKg
IHwgMTcNCj4gPiA+ID4gPiArKysrKysrKysrDQo+ID4gPiA+ID4gwqAuLi4vZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmggfMKgIDEgKw0KPiA+ID4gPiA+IMKgLi4uL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jwqDCoMKgIHwgMTQgKysrKysrKysr
DQo+ID4gPiA+ID4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmjC
oMKgwqAgfMKgIDYgKysrKw0KPiA+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAzMQ0KPiA+ID4gPiA+ICsrKysrKysrKysrKysrKysr
LS0NCj4gPiA+ID4gPiDCoGluY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwX3R1bm5lbC5owqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgIDYgKysrKw0KPiA+ID4gPiA+IMKgNiBmaWxlcyBjaGFuZ2VkLCA3
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4gPiA+IA0KPiA+ID4gPiANCj4g
PiANCg0K
