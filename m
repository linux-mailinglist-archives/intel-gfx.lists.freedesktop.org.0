Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOcKGd62pmk7TAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:24:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17BC1EC9B1
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 11:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53DEC10E175;
	Tue,  3 Mar 2026 10:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYQOimPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12D9C10E075;
 Tue,  3 Mar 2026 10:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772533466; x=1804069466;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=2YJa7+Oz80U2ItiKdHAvgbDvMnxQ7VJNdHcLag1x4mQ=;
 b=YYQOimPIOaIrEzIgwHMreGCL3xJzV8NCjZxKVKkHni4Ie3imifZj+xAc
 XvYfI7WXg7/utjLjOFV7uA85pKU7DMdRT/81ENhMYP4Pw95N38kGctf6j
 YA7zwpRS5VVw5HPzA6VATAhh4WssJ9cZK/eY+vBQofphR0KXri5QhBVdU
 nZysFfoIr1skR+98wv1EzDF+VZPLtE2TdGSHtsYGuEEYjhkgMtluYStch
 PJfDYKI74WCgZ4zbYHpZASfR6O0BbXc4C9IciQfdUhLbsHYE3PYz2Ayci
 p3s2LrfERZLZnP6EJ6FVJkrT23EqHkhloZ7YWqt0QHl1gX64F0KG5XsDK Q==;
X-CSE-ConnectionGUID: +6hwR0hwRlWji3uKLxXexg==
X-CSE-MsgGUID: pQmArf7GRrmgoDnvtNZyzQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="99042079"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="99042079"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:24:26 -0800
X-CSE-ConnectionGUID: 8arvf9tCRGmWDRT22xcpKw==
X-CSE-MsgGUID: RQjh85duTRWJQ1uVgvYDYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="255840030"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 02:24:26 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 02:24:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 02:24:25 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.18) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 02:24:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ctKxxZBzrcBsNQRRerdNaAkCVP8WR/+su9HmL6fPF3cIRXB+wOFIe69uk1RNIQY9VfK7jPpCh9koBSEVZwg92NUEu7C83JiPUuyK5Z1Lf5WCwJoVRAnhiTCugfg//ebvQZ07qT3VAxACE6Hz1ObyGajx4WnU6QRMcvyRkLL8QyAA8ZKcesbLllPzjWoaYn8Cf+geqVqlFZXXwS35oow4AVyOT0EF1fR9jBvWghrd5xV01zVtNfBmpuK19c6pSEi/BvryCD7QogzV0bU4SI6VrthORUxZhmqgR5Ix4D+K7d4pwxWsLUkQpD3Hv2V95qye4HSRQfsxb7BwV15+tmrK1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2YJa7+Oz80U2ItiKdHAvgbDvMnxQ7VJNdHcLag1x4mQ=;
 b=A+dcjwI5lewbz7l1U1EnXewR66t+On/spUMxNARCIb691K9iZHfboEQxtT+FTfMjxWUwGzByHxQIJz1ipEFyAtsNWu9adkwUHL4eJZnJ122aRu9sI5N9t5OttHZzUmRUh+9p1X5pkh+2RhMYkTHv5Ioi6I0aHcz5zToVr3nUFY8wNnmCF+KjE45BVy8hx678lG/cGtWyKqocpa18SsZkiHSxeXC33Q11npk3iwScDTwubdOOF6YwnfhqogjuYOX/WvCc7HptYH+mywysJpQlMuqBYQhIcFyttqXiqoJ3lCQ3PumtksGPIkdsqaVIqDfVARYawOGpYEjbcu6k2rxNvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA0PR11MB4606.namprd11.prod.outlook.com (2603:10b6:806:71::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.22; Tue, 3 Mar 2026 10:24:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 10:24:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: Re: [PATCH v5] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v5] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Index: AQHcqjxW0O/iecbh1km4fgIAPhDzpLWcm0WA
Date: Tue, 3 Mar 2026 10:24:10 +0000
Message-ID: <4cbde07056b800d0505d8d662de3c58b2aa03af3.camel@intel.com>
References: <20260302113153.3225806-1-animesh.manna@intel.com>
In-Reply-To: <20260302113153.3225806-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA0PR11MB4606:EE_
x-ms-office365-filtering-correlation-id: 03dc7bcb-67f7-49ba-588f-08de790f0299
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: HM7cW56Invzas+/eJCI1E94cua4UAvkKc3ZFhWiRGRm+Y8L3YHQnnzQb7054W0g0vCBgmj+TyAWEfDsJsfQO3VlqnSkNqE9qRMGDdnkLK3nf/U/BdyOdfyIaPyeWHjWoJBp5oktVicp9waVhPz8cvy7kJaLNlYtnGyatOFiXoErvUYEm7pXMqGGgCJfs4pcPSc2TqEut2VY1icglTzi9D/XxUU6+icv06wAbYRZGZGlW4FrjsKtyHDC3oZZsVEuAAzAysf/+klNlK/HBhPPKm61hx2hsBLMq441Q7ORbzzC80b9Usd5jFNfKsp/Zpmr81lH+O0OEWFA5/X72D9wuz7nMoT48VX5RN62W7J4mP7YudahdKyJvXBR10DpjwedoXOiLDKwo0X8QefOGnTwRBhdS/5cLNBljV4h32ri3jXGlKgIn9Wg9hWKmxBGamV52RG3f1qZ4KOYAhor/2xt/SR3vYc29rb0Z17+XUNVPuB14RUo/6YH9kPO++sjHADzvlTtBSLjZ6EjcngJVZ1NixY2Q1J8ejY96zm9TxbbkkoXn5fBdMTdIP4X3lHJhzcW3htlabRKgn1zYgYc1rAlnbTGR1qZX+jUq7YERyup5P8fyvCNjMHJxckZEP8OJgMcBV8w97Q6c83YtsU9Rv0qKQ1rw6wASS49EwufABt+d9hyfUyk1k+efGHm9uTIShR/KN5dpdsU/hgJ1JkCo7sl++SMFw/VBYaJpWLlJVB/GtnqgDQvKk+rZ/LlAsK5jKes4BRHAXDF73sGnWWv8UcZHxzJ3L3nCWq1YEsUSySz5tMY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RVpVTmZjcUVJWEVLNE9uaWc5MXpvcGFtVkdBOUNKdGJYMGcwejEvRExpVXNt?=
 =?utf-8?B?VkhnWWVWTm04cUx3ZHk5NmVNWU42SktUOENhNnIrZTVPTmN5MjU1V2FBOHJS?=
 =?utf-8?B?d0FtZGtOSFRyc3hRN1M0T0c4bGlHSm5CRzhING1oOUhKTXR1Qi9aRTRWSGFT?=
 =?utf-8?B?TmJxSGphQXZTcEJWWkdxRnF0UE80ZWVxakkvVzZLUG9rSm9RQ210S3p5QkpB?=
 =?utf-8?B?QnlvakNOWDd4MnFZYlp6T1ZjSDlvTHk5Q2RkSjhva25paTIvTmZSak05T0ps?=
 =?utf-8?B?NHhqUWRNUDBDajBzV0VnZDh6L01mR0hQMHl1MW5wSjVGdTg0dnUvMitCRVJG?=
 =?utf-8?B?UmhiMVlLTytSK1h0T0tHbjZHKzJBb0lCeXlrdm9UYWtlR3dnL0FTU3NnSWli?=
 =?utf-8?B?aThmTlM5WFdkNlZaYy8za0tuNXlOTmJGNFArbWEvd2ZYdGRBT2xjM2wydWZO?=
 =?utf-8?B?TWZJN1l0L2xrN2w5WXR4K2xlMm1kSFZSeUttdzhEUS8rQUhyWVh3akMyMGxT?=
 =?utf-8?B?NUlhZUNGaVFvNitZcDAxRE5BeTJvaThBR3V0dmZaUS80YnB5Z2ZsWm43eSt3?=
 =?utf-8?B?WHBOdHhsUXB2SkpReVRZMnFLMjVyV0ZpZTVSeWlPUTl5eTdRSmJSQVJKM2tW?=
 =?utf-8?B?dUwwTU5iTXBIaU0vWlVlcCtjVGNyVEdEUEc5Ukhac2dCQzllSldmdTFuYWIv?=
 =?utf-8?B?NzdJejUveVVoQW5OdEY1bTJ0eTUyQUQrL2lwbEFLN2doTUJZZjR2SXFQR3NQ?=
 =?utf-8?B?UVhGejB4bkNPQTd3VHJSNkxCRzhnMjRQejRZQUZ1YjZkUjcwN3pNbGozeEdS?=
 =?utf-8?B?TDBEVFdZcUZ4em55UVBpazdPbURHV0NaeXU2N0c4Y3IxWVRIbUxjS0crYUo2?=
 =?utf-8?B?aTZpV255OWNoUUVMT3VNZWdXM1FZdC9lNnd0MksxWDI1MmNVVzUzTDNiWjJn?=
 =?utf-8?B?aktRb2cyTlNzNGRBM09mTmFWWmhSUFpjNVlBS1orNlI2R01pY2Q5MG5Ga3FV?=
 =?utf-8?B?SGE0eTdHL2RhQS9nbUprekZKN2tBeTJKeEtUMk92bUptVmtQSUI0QTNETVhs?=
 =?utf-8?B?Y25tbC9wL0M1N25FWUdTWW1kT0pOM3ZUOVFCYXBQRElWR29GMVlFVmxuRTRM?=
 =?utf-8?B?WDg4YXY1SUI0RUJ5cGZIUDhTNFl3a1N0dW85QkpmU3FmelY4RDVUTnk2QTdZ?=
 =?utf-8?B?WGVLRGZWcGI5TmtoVGhocFB4akZTenp3VTVFNXZiUEZJRWI5VHZZWnB6WlNl?=
 =?utf-8?B?Zm02UmIxeENQa2JocTE0T1hJT2JRS215TTJSYmgyRmdlYWhxYXNsdFRPd2FQ?=
 =?utf-8?B?ZHNPcWtSaWdzcmdHQ2hTT25iS04zRjNWNWQrODNwcWh2bnV1djEza0xwZFRL?=
 =?utf-8?B?Q2VUcjZOVjV4MDdkNVgzdDRERi94YnhHa2tvL0pMZTNhdi9lcGR5NVAyN2U4?=
 =?utf-8?B?ekNvam5DcmNOa2hwUTl1RFpnZXZxK3R2Q3p0S2NtenUvd1hzN2ZTbng4VjhK?=
 =?utf-8?B?WnV1bWVvM0ZtYWFKbDMranJaV3d6THlVWlJRb0d5TmRNYmJqTG5jMU8xbjhH?=
 =?utf-8?B?WmlBajhCY2xQZ2xUWWJ0dmlBS3MrcmJzYVMwcVpVY21TOVVKdkNMUFhUc2hr?=
 =?utf-8?B?c0FlcUZmTk5uUU5DRTN3V213OTBhd0JudnVneVhwVS81RDFBVS9iZlBRSTEw?=
 =?utf-8?B?cEtoTHJ4Z043Y2tWQnVXN0h2WnErMHVnK21oVHRnN3BlOVhveDlUYUFmK1R4?=
 =?utf-8?B?MktHdDVWTE1DcGtEYUJTaGwwSCtNSytwNWkwclR0cEFPekIvNERLTkZHeVdB?=
 =?utf-8?B?WHhaUDNoblcyZ0U3Y2YrYm1YamNUSjMxQ2djUmVoQ3VobExhYzhTRzJYcVdC?=
 =?utf-8?B?Z2FiOGtrVStGM3FISkxqdjNPVlRjbGtIUXJjVHJVT3AweVJRSUFuZGllUWtR?=
 =?utf-8?B?QVRPVVAvR0N5OXp5WjB1djdtTnpSM2xHWmtleE1zTWRSRXdDNmhxMFJnTld6?=
 =?utf-8?B?dFBoMFc0cHBpc3ZId1dKVlJuZlE0ODRFVU5oVmp3ODlST3pOaEkrWXhjdUFP?=
 =?utf-8?B?VkpXa0dCcWhMQXRwdTlEeFkzT0RHVHpyYXFIOUx1UkJxNWRoTlVMZThHNHR2?=
 =?utf-8?B?a0dIN0tSbEVlU3UwZUQxODZRUi9VdHhqNWxxa2IxS3Y0M282UWlLQTVZY0xX?=
 =?utf-8?B?N0RkZDJzak16TUQ0R3FNL3JVcWMxSEtmMWdNWGNBUG41ZEpWZCtWY3ppdnk0?=
 =?utf-8?B?ZkV1TC9LWEtmUml4cmNqVTZYbDRvcEpxb0l3bVcxNDZkandTcFpwdzdsRjFz?=
 =?utf-8?B?anZqcnduZmFnOVNFKzgrWmRKQXUveks0OWRHWUdmaHdFUElGU2ZxcXpTT1M2?=
 =?utf-8?Q?tXsLUQ1H+tomL/GM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <597C545045FF5E4B9E9498C55FCB40BE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03dc7bcb-67f7-49ba-588f-08de790f0299
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 10:24:10.7412 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5FPvfErDIK5O+HWTvD2zCku3eiK6WywSLhKVwqCnj6a4yycYpdjk6QgXMdx+mQNiFo/dLDhY81DCmXvPPv/4goMi73PHL4cYDkqjGz+FjFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4606
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
X-Rspamd-Queue-Id: C17BC1EC9B1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gTW9uLCAyMDI2LTAzLTAyIGF0IDE3OjAxICswNTMwLCBBbmltZXNoIE1hbm5hIHdyb3RlOg0K
PiBVbnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRz
IGZvciBQYW5lbA0KPiBSZXBsYXkNCj4gZW5hYmxlZCBEUCBwYW5lbCBkdXJpbmcgaWRsZW5lc3Mg
d2l0aCBsaW5rIG9uLiBFbmFibGUgc291cmNlIHRvDQo+IHJlcGxhY2UNCj4gZHVtbXkgZGF0YSBm
cm9tIHRoZSBkaXNwbGF5IHdpdGggZGF0YSBmcm9tIGFub3RoZXIgYWdlbnQgYnkNCj4gcHJvZ3Jh
bW1pbmcNCj4gVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0K
PiANCj4gdjI6DQo+IC0gRW5hYmxlIHByIGJ3IG9wdGltaXphdGlvbiBhbG9uZyB3aXRoIHBhbmVs
IHJlcGxheSBlbmFibGUuIFtKYW5pXQ0KPiANCj4gdjM6DQo+IC0gV3JpdGUgVFJBTlNfRFAyX0NU
TCBvbmNlIGZvciBib3RoIGJ3IG9wdGltaXphdGlvbiBhbmQgcGFuZWwgcmVwbGF5DQo+IGVuYWJs
ZS4gW0phbmldDQo+IA0KPiB2NDoNCj4gLSBSZWFkIERQQ0Qgb25jZSBpbiBpbml0KCkgYW5kIHN0
b3JlIGluIHBhbmVsX3JlcGxheV9jYXBzLiBbSm91bmldDQo+IA0KPiB2NToNCj4gLSBBdm9pZCBy
ZWFkaW5nIERQQ0QgZm9yIGVkcC4gW0pvdW5pXQ0KPiAtIFVzZSBkcm1fZHBfZHBjZF9yZWFkX2J5
dGUoKSBhbmQgc29tZSBjb3NtZXRpYyBjaGFuZ2VzLiBbSmFuaV0NCj4gDQo+IEJzcGVjOiA2ODky
MA0KPiBSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+
DQo+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gwqAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdz
LmggfMKgIDEgKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aMKgwqDCoCB8wqAgMSArDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jwqDCoMKgwqDCoMKgIHzCoCAxICsNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDM1DQo+ICsrKysrKysrKysrKysrKysrLS0NCj4gwqA0
IGZpbGVzIGNoYW5nZWQsIDM2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdz
LmgNCj4gaW5kZXggNDc0NmU5ZWJkOTIwLi5kYWRhOGRjMjdlYTQgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JlZ3MuaA0KPiBAQCAt
MjI2Myw2ICsyMjYzLDcgQEANCj4gwqAjZGVmaW5lIFRSQU5TX0RQMl9DVEwodHJhbnMpCQkJX01N
SU9fVFJBTlModHJhbnMsDQo+IF9UUkFOU19EUDJfQ1RMX0EsIF9UUkFOU19EUDJfQ1RMX0IpDQo+
IMKgI2RlZmluZcKgIFRSQU5TX0RQMl8xMjhCMTMyQl9DSEFOTkVMX0NPRElORwlSRUdfQklUKDMx
KQ0KPiDCoCNkZWZpbmXCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJMRQkJUkVHX0JJVCgz
MCkNCj4gKyNkZWZpbmXCoCBUUkFOU19EUDJfUFJfVFVOTkVMSU5HX0VOQUJMRQkJUkVHX0JJVCgy
NikNCj4gwqAjZGVmaW5lwqAgVFJBTlNfRFAyX0RFQlVHX0VOQUJMRQkJCVJFR19CSVQoMjMpDQo+
IMKgDQo+IMKgI2RlZmluZSBfVFJBTlNfRFAyX1ZGUkVRSElHSF9BCQkJMHg2MDBhNA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVz
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBpbmRleCA4YTJiMzdjN2JjY2YuLmZiZjc2YWQyYWYxYyAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAg
LTU3Niw2ICs1NzYsNyBAQCBzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yIHsNCj4gwqANCj4gwqAJCQli
b29sIHN1cHBvcnQ7DQo+IMKgCQkJYm9vbCBzdV9zdXBwb3J0Ow0KPiArCQkJYm9vbCBvcHRpbWl6
YXRpb25fc3VwcG9ydDsNCj4gwqAJCQllbnVtIGludGVsX3BhbmVsX3JlcGxheV9kc2Nfc3VwcG9y
dA0KPiBkc2Nfc3VwcG9ydDsNCj4gwqANCj4gwqAJCQl1MTYgc3Vfd19ncmFudWxhcml0eTsNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBpbmRleCAwMjVlOTA2
YjYzYTkuLmYzNWFhZmUxZTg2ZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYw0KPiBAQCAtNjI1MCw2ICs2MjUwLDcgQEAgaW50ZWxfZHBfZGV0ZWN0KHN0cnVj
dCBkcm1fY29ubmVjdG9yDQo+ICpfY29ubmVjdG9yLA0KPiDCoAkJaW50ZWxfZHAtPnBzci5zaW5r
X3BhbmVsX3JlcGxheV9zdXBwb3J0ID0gZmFsc2U7DQo+IMKgCQljb25uZWN0b3ItPmRwLnBhbmVs
X3JlcGxheV9jYXBzLnN1cHBvcnQgPSBmYWxzZTsNCj4gwqAJCWNvbm5lY3Rvci0+ZHAucGFuZWxf
cmVwbGF5X2NhcHMuc3Vfc3VwcG9ydCA9IGZhbHNlOw0KPiArCQljb25uZWN0b3ItPmRwLnBhbmVs
X3JlcGxheV9jYXBzLm9wdGltaXphdGlvbl9zdXBwb3J0DQo+ID0gZmFsc2U7DQo+IMKgCQljb25u
ZWN0b3ItPmRwLnBhbmVsX3JlcGxheV9jYXBzLmRzY19zdXBwb3J0ID0NCj4gwqAJCQlJTlRFTF9E
UF9QQU5FTF9SRVBMQVlfRFNDX05PVF9TVVBQT1JURUQ7DQo+IMKgDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA1YmVhMmVkYTc0NGIuLjI3YmE5
NmVkZThlMiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC00Myw2ICs0Myw3IEBADQo+IMKgI2luY2x1ZGUgImludGVsX2RtYy5oIg0KPiDCoCNp
bmNsdWRlICJpbnRlbF9kcC5oIg0KPiDCoCNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCINCj4gKyNp
bmNsdWRlICJpbnRlbF9kcF90dW5uZWwuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfZHNiLmgiDQo+
IMKgI2luY2x1ZGUgImludGVsX2Zyb250YnVmZmVyLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2hk
bWkuaCINCj4gQEAgLTYwMyw2ICs2MDQsNyBAQCBzdGF0aWMgdm9pZCBfcGFuZWxfcmVwbGF5X2lu
aXRfZHBjZChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgaW50ZWxfY29ubg0K
PiDCoHsNCj4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNw
bGF5KGludGVsX2RwKTsNCj4gwqAJaW50IHJldDsNCj4gKwl1OCB2YWw7DQo+IMKgDQo+IMKgCS8q
IFRPRE86IEVuYWJsZSBQYW5lbCBSZXBsYXkgb24gTVNUIG9uY2UgaXQncyBwcm9wZXJseQ0KPiBp
bXBsZW1lbnRlZC4gKi8NCj4gwqAJaWYgKGludGVsX2RwLT5tc3RfZGV0ZWN0ID09IERSTV9EUF9N
U1QpDQo+IEBAIC02NTAsNiArNjUyLDE1IEBAIHN0YXRpYyB2b2lkIF9wYW5lbF9yZXBsYXlfaW5p
dF9kcGNkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsIHN0cnVjdCBpbnRlbF9jb25uDQo+
IMKgCQnCoMKgwqAgY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5zdV9zdXBwb3J0ID8N
Cj4gwqAJCcKgwqDCoCAic2VsZWN0aXZlX3VwZGF0ZSAiIDogIiIsDQo+IMKgCQnCoMKgwqAgcGFu
ZWxfcmVwbGF5X2RzY19zdXBwb3J0X3N0cihjb25uZWN0b3ItDQo+ID5kcC5wYW5lbF9yZXBsYXlf
Y2Fwcy5kc2Nfc3VwcG9ydCkpOw0KPiArDQo+ICsJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9k
cCkpDQo+ICsJCXJldHVybjsNCj4gKw0KPiArCS8qIFJlc3QgaXMgZm9yIERQIG9ubHkgKi8NCj4g
Kw0KPiArCWRybV9kcF9kcGNkX3JlYWRfYnl0ZSgmaW50ZWxfZHAtPmF1eCwNCj4gRFBfVFVOTkVM
SU5HX0NBUEFCSUxJVElFUywgJnZhbCk7DQo+ICsJY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlf
Y2Fwcy5vcHRpbWl6YXRpb25fc3VwcG9ydCA9IHZhbCAmDQo+ICsJCURQX1BBTkVMX1JFUExBWV9P
UFRJTUlaQVRJT05fU1VQUE9SVDsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHZvaWQgX3Bzcl9p
bml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0DQo+IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQ0KPiBAQCAtMTAyMiwxMSArMTAzMywyOSBAQCBzdGF0aWMgdTggZnJh
bWVzX2JlZm9yZV9zdV9lbnRyeShzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiDCoAly
ZXR1cm4gZnJhbWVzX2JlZm9yZV9zdV9lbnRyeTsNCj4gwqB9DQo+IMKgDQo+ICtzdGF0aWMgYm9v
bCBpbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uKHN0cnVjdCBpbnRlbF9kcA0KPiAq
aW50ZWxfZHApDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19p
bnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IgPSBpbnRlbF9kcC0NCj4gPmF0dGFjaGVkX2Nvbm5lY3RvcjsNCj4gKw0KPiArCWlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA8IDM1KQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gKwlp
ZiAoIWludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19lbmFibGVkKGludGVsX2RwKSkNCj4gKwkJ
cmV0dXJuIGZhbHNlOw0KPiArDQo+ICsJaWYgKCFjb25uZWN0b3ItPmRwLnBhbmVsX3JlcGxheV9j
YXBzLm9wdGltaXphdGlvbl9zdXBwb3J0KQ0KPiArCQlyZXR1cm4gZmFsc2U7DQo+ICsNCj4gKwly
ZXR1cm4gdHJ1ZTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyB2b2lkIGRnMl9hY3RpdmF0ZV9wYW5l
bF9yZXBsYXkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqB7DQo+IMKgCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IMKg
CXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiDCoAllbnVtIHRyYW5z
Y29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29kZXI7DQo+ICsJdTMy
IGRwMl9jdGxfdmFsID0gVFJBTlNfRFAyX1BBTkVMX1JFUExBWV9FTkFCTEU7DQo+IMKgDQo+IMKg
CWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmIHBzci0+c2VsX3VwZGF0ZV9lbmFibGVk
KSB7DQo+IMKgCQl1MzIgdmFsID0gcHNyLT5zdV9yZWdpb25fZXRfZW5hYmxlZCA/DQo+IEBAIC0x
MDM5LDEyICsxMDY4LDE0IEBAIHN0YXRpYyB2b2lkIGRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXko
c3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCkNCj4gwqAJCQnCoMKgwqDCoMKgwqAgdmFsKTsN
Cj4gwqAJfQ0KPiDCoA0KPiArCWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSAmJg0KPiBp
bnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uKGludGVsX2RwKSkNCj4gKwkJZHAyX2N0
bF92YWwgfD0gVFJBTlNfRFAyX1BSX1RVTk5FTElOR19FTkFCTEU7DQo+ICsNCg0KRFAgc3BlYyBz
YXlzOg0KDQoiDQpUaGUgRFAgU291cmNlIGRldmljZSBtYXkgb3B0aW9uYWxseSBlbmFibGUgUFIg
b3B0aW1pemF0aW9uIHdpdGggRFANCnR1bm5lbGluZy4gVGhlIGRldmljZQ0Kc2hhbGwgcXVlcnkg
dGhlIFR1bm5lbGluZyBCcmlkZ2XigJlzIFBSIHR1bm5lbGluZyBvcHRpbWl6YXRpb24gY2FwYWJp
bGl0eQ0KYnkgd2F5IG9mIHRoZQ0KUGFuZWxfUmVwbGF5X1R1bm5lbGluZ19PcHRpbWl6YXRpb25f
U3VwcG9ydCBiaXQgaW4gdGhlDQpEUF9UVU5ORUxJTkdfQ0FQQUJJTElUSUVTDQpyZWdpc3RlciAo
RFBDRCBFMDAwRGhbNl0pLCBhbmQgdGhlbiBlbmFibGUgUFIgb25seSB3aGVuIHRoZSBUdW5uZWxp
bmcNCkJyaWRnZSBpcyBjYXBhYmxlLg0KIg0KDQpUbyBtZSBpdCBzb3VuZHMgbGlrZSB5b3UgY2Fu
J3QgZW5hYmxlIFBSIGlmIHR1bm5lbGluZyBicmlkZ2UgaXNuJ3QgUFINCnR1bm5lbGluZyBvcHRp
bWl6YXRpb24gY2FwYWJsZT8gSWYgdGhpcyBpcyB0aGUgY2FzZSB0aGVuLCBJIHRoaW5rIHlvdQ0K
c2hvdWxkIGFkZCBzb21ldGhpbmcgaW50byAgX3BhbmVsX3JlcGxheV9jb21wdXRlX2NvbmZpZy4g
V2hhdCBkbyB5b3UNCnRoaW5rPw0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IMKgCWludGVs
X2RlX3JtdyhkaXNwbGF5LA0KPiDCoAkJwqDCoMKgwqAgUFNSMl9NQU5fVFJLX0NUTChkaXNwbGF5
LCBpbnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVyKSwNCj4gwqAJCcKgwqDCoMKgIDAsDQo+IEFE
TFBfUFNSMl9NQU5fVFJLX0NUTF9TRl9DT05USU5VT1NfRlVMTF9GUkFNRSk7DQo+IMKgDQo+IC0J
aW50ZWxfZGVfcm13KGRpc3BsYXksIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID5wc3IudHJh
bnNjb2RlciksIDAsDQo+IC0JCcKgwqDCoMKgIFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxF
KTsNCj4gKwlpbnRlbF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChpbnRlbF9kcC0NCj4g
PnBzci50cmFuc2NvZGVyKSwgMCwgZHAyX2N0bF92YWwpOw0KPiDCoH0NCj4gwqANCj4gwqBzdGF0
aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KDQo=
