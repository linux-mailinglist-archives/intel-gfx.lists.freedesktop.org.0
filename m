Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHWmCXZoumnnWAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 09:55:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1132B889B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2026 09:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B3EB10E72D;
	Wed, 18 Mar 2026 08:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g69+VZZA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D8D10E109;
 Wed, 18 Mar 2026 08:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773824116; x=1805360116;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tPZYYfEWJYvvxGDdk/Pc8aK776jmlOIdTDGVoc4wOD8=;
 b=g69+VZZAmZ7dYfXrhKLxRQ3EYl8mTyLtw4/ksg4fqGvyPCM0ZBHgKRWW
 DOluQEOVY0vNpP20I4GOIWI7XEl8fq9fOsP9vlesCfcP8cgbGii7IHdh8
 /GEDyBBPjQ3f4iuAvun8CrYCSKMcWSV06cHrQHahS4AA4R2GlcVFddSGP
 ZlXBWZRvAxwr1mukP06F8AIrcgfqHTUfM1yiD3gbl7JYeBVR1ztVv74sA
 wzjEowOwtU29DWUilg4EhKsEwjnNIukDxcQAC7huQitfBtO/PAR9l6ety
 jzHz+j9stCO5CL+hj3ZGywE6Ar9/4qfjB1xkYjW8/KfS6bYOhBEunK5fA w==;
X-CSE-ConnectionGUID: N/aRjDg2Q0KGGjt0yDjTMQ==
X-CSE-MsgGUID: U01OaBnjRTiKQoWksoEchA==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="97479194"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="97479194"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 01:55:15 -0700
X-CSE-ConnectionGUID: HRxZWW/gSvGB6qINkdeeOg==
X-CSE-MsgGUID: 0kGA2jMnS2mc9+2VtKbwog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="219616987"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 01:55:14 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 01:55:13 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 18 Mar 2026 01:55:13 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 18 Mar 2026 01:55:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PuVCqbibGCb5vTqcfVtFz6klrf63uSOGshlyDJ5Pk6fH9jo5YEiIOPbBA6PCEWG+4UpwSucjQO5Ocs8u7fl++FZsiOc88+RumxrWMXw/UIaxcE86smap0ImrI5vq6p5uIIDf1uFbOOMDRQeDi+pFBFOeCqkkoNJE3o7JtiEA+oLhidqP2dtqTOvssEsh1r9AKm6eStzGxpRgfyiEwamYoN5RZdodRcbyBswUUrQOy8pBTMMh4Ccnmm3DKPSdMb7WeSdffT2a0K9MgUvbRXPUlpHTBLKAQN6qWqN9NaoIk+mSYuvnnwQdQ/eNT6O9PYYEKsjy24A/2FC9QUYi75oqpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPZYYfEWJYvvxGDdk/Pc8aK776jmlOIdTDGVoc4wOD8=;
 b=ZFrW4tRm4ox5z+6vZCw4ksgv908iPpkJ+1tLGBdpYxSbtTC/CUatXJkY2RX65Gno5xInbwpoqqNP/gAHRM3ErgPxZHZOvbuC2w+i7W+559Fj2/fAbrxxx2UdU3Y6sWmY7fE273BOmLdXhjjRFTWImZDsrwaxMmBQjk6AcUEJuVuF4/2/2TUz/EGnZIMSC/26XGa2+/5YFkILqgHqeH9QEX33atHohVYhytcQMdi6vqypgTuwDAEGgTw1fzNHt8ZHSJqTZ+9f7D1P1H4PrgzSA+AlOYHsOlMSAyh1hVLLbRO+XSiEWopXQrhy2+KkMv48h5qL93ziXaWSwl0EpsxFew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY8PR11MB7922.namprd11.prod.outlook.com
 (2603:10b6:930:7b::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.19; Wed, 18 Mar
 2026 08:55:11 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::21d:877c:8b4d:9d7d%2]) with mapi id 15.20.9723.014; Wed, 18 Mar 2026
 08:55:11 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 14 DA14260
 as a quirk
Thread-Topic: [PATCH] drm/i915/psr: Disable Panel Replay on Dell XPS 14
 DA14260 as a quirk
Thread-Index: AQHctdbCqwGUofoKbUCj7ZFb+039zrWz/gMw
Date: Wed, 18 Mar 2026 08:55:10 +0000
Message-ID: <DS4PPF69154114F1909E29187BB25B66AC8EF4EA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260317062402.1888624-1-jouni.hogander@intel.com>
In-Reply-To: <20260317062402.1888624-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY8PR11MB7922:EE_
x-ms-office365-filtering-correlation-id: a6708321-5f2b-414a-ed91-08de84cc0ffe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: 5PHyZvfIy2BP/z0HQaOski+ddJsvAm7cQ+w9FWTbuDJQD9wvl3CQbrPoJ5CkmiNGwZkv7WzBC9GdRTafeI3KR7Wt9VHWRgrzkJU4+RLXTx6v74TQyxUQp6d1Tb7pEoDEx+cgKfz66nrEFggvMX4/GaW3jtePrSBm6B3w1skZimPen+E6BpwG3+Pq1NMNHtz5X8NwZVNBiQWnz20TF/TiFCMpccPwpCLPbY4JRvZ10AwvtigTQWbvRWe24MR3LpD8RpzfLqyB5CY5NtrA1Xq131dF0IH4GpUfqdqyonbWDnp3YBlM1hkEGBKuAZDmWdHOKHBMvTn8Rm8DJIn6GcgTEclmn7PZI5KAPL0CliusPinsEygtF5vSES2eZyj7k+PJ7CKrSFs0L3FkIZynKhUgm0l7zDBpNw3we2UjXQX1/dTX04htwgQWZc8hQgbfOvACDT7zoRg9ZoBSvexVpo78hG8URJLxO6zumVBSJL64jHY1IqQlKdp0z3mSLKCYueFKv4vjnbtp4RyJ6MmxGCGHARA1DaqEbjqsZ5XY3Eo3m9sgqQgEzrZaMyghjVdJcUxcWyHPIYnmWKPzWDyCw+FBzzxoKsUaMOeBhK3w0JlotFI+JmXX+/uV4nHGUYY0yIVD+3yfiHUy1O1ls9eBvXX/8pAAoZUnpJcpAp93+mPOtT3AM1cIrIQRv5Tjd7XG48rbphm2XPInZFluFmROTyZBHJOFTEdQ9oOgo9SEyfUfiJ2k4lvD+JUw1fuVFlxf/Fg+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0VnUmNUdTEvT0JFRXJNWlgvVmhWdllQT1pBN0RmWDdrUTRrZUxyTC9teHJB?=
 =?utf-8?B?ZTE1TXhMNUw1MGV6ZHhtM1kwb1QrTWt4NWNka05odDJHSHZiQUhPYjlISjdn?=
 =?utf-8?B?aTdzSEFLblVxMG5maFE1NWk0cDcvdEwyb3ZicXVsZThUdzdCZ0dkc1l3N3FV?=
 =?utf-8?B?SWhnOHBzbFNERVY2aGtwcWxtSWtBbEdPeStCTWoyRDhDWW5BMEJ0THFvVCtT?=
 =?utf-8?B?U0RGRHZXZENIMC96WFhjS2lsUnFkZkJ6dC85T0VSeTFvTW1yNlcycWV2V2l3?=
 =?utf-8?B?WnVOakwxU3JabENVWWFJWlJqZ1JOaDV4K013cFdHeXg2MDltMVQzOW93WjZL?=
 =?utf-8?B?Z2IwWVVDRXJ4SXNsSW1SRnRCbEdUREVIclpMZkdEWTJDQlZYeUZ3alY2RWpl?=
 =?utf-8?B?M0kwYmpSZEJ1Mk1ic0VoRml6aCtDNFRRZEd3NWlVcnJJbVV1WDVZMHRzL1d4?=
 =?utf-8?B?c3ZvRDA3UjFkRTZmSE5MRlNXWEJ1eFRLd2Fpei9JR0FxL1hiZFNaR0JGdEVU?=
 =?utf-8?B?dTZCcjUzUm9NWEZFNzBBNnJLYzU3YUFsZEE3NElQZEtvNW9SV2lJLzZVRTJY?=
 =?utf-8?B?YjZoaHFlYm1XV3BtSnBTWlBiZmRjcllTSTFQWlNrVmp5eU0xN3BEQTM2ckN1?=
 =?utf-8?B?K3RVVXd2UlVPam9GSWNYTGJqVVRGQ242VXlXY1hSZVNqSm5hSGZNWGlqNkRu?=
 =?utf-8?B?WmdkRWlNR0l3MkRkck5nYmtrRnI4WkRJc0liWnRHa28zUmVpQzh5aWl0bG4x?=
 =?utf-8?B?ZmhTWnJmMGtWQXJKRk0yQk0vcFZzN2NPekE1WEtZUkFERDBNUzl2V2psbFRE?=
 =?utf-8?B?OU9LZlpodWM0U1Rha09nTUhLR1lGU1hQdlBsRjFyb2lzMktuUi9CM2l1R0xp?=
 =?utf-8?B?T1FhVndKK01GU3owZ3FnSndjbVdFMDRpeWJYaHlBL01uODRnMVRPR21GZHNT?=
 =?utf-8?B?T0ZBeFg1RHMwWjRsSUUrMHVtV3luR21jZGVHSjFSSExrMnU4M3RkcXYyWmdB?=
 =?utf-8?B?cXpiQmxYVXkxeUFiT2pLRUx4WDgvNlJmSlA1ZlA5d3R2dk9XOGNPcURORVlP?=
 =?utf-8?B?cWpVSVptTjNVbW1GSlFNdzJTNCs3azlCdkxqYjg2TG1sR2ovREZXVjBuSVBu?=
 =?utf-8?B?dWdsb2xPdm8zV0MzSkwzTVEvVG1mb3ZRVU5wb3Fsejh2SW5wMjc3NDN6Zk1K?=
 =?utf-8?B?UWt6WURWSXlGbmFFOGRJajZ2QTNQaDkrbitHa1JYZjlTN2RFbEh6YVp6Mkcr?=
 =?utf-8?B?ME5lMzJwN3cvVzlyZi9NTzhNdlJtNXg2MmhWQm1GQk01VWpCeGtDeFY4aHJZ?=
 =?utf-8?B?cnFKTVhlS0N6WkpXL3NhdjZJWFp2MlJFcXBuMTRPQlZqS201SjB4RjJ6dldx?=
 =?utf-8?B?NDN1NlhUTFkwOEdKT2drUklCRW1EZnpIUWdrUHlzSktNcmpKUTM4Y05LWEcr?=
 =?utf-8?B?S3BSVnBCdndVTXFNcWJNck1pTzlkQm9XekF2cmJiZkQ1MnB0bmRxcG9zMFpJ?=
 =?utf-8?B?S0lMV3JJNFp2dUFvNFdqalNlWm1IU0tBZEJtMG1pUlRHV0kzcktVbERJNFFl?=
 =?utf-8?B?QWhHVHlhcmZDUUx6c0FhR2hJQmJ3ZnNqd2ZlSW42VlB6VVdScnE4ak1ZbXJt?=
 =?utf-8?B?MERLTUxkVGh5enhkS0pyT2lwTElQZDJyemxWdTVERzlHdGcwdjJtS25UTk13?=
 =?utf-8?B?OEQ1dHB5aVJ6aHd4V3oxZjVzMnNHUVlrQWtScHErL0tXT1FPYUlmWkU0WW5y?=
 =?utf-8?B?RytsMllrY1pNQWdDQlN0K28zSDBEMlR0bi80ZEJHeTZ4alFJbWptVDRPY0lH?=
 =?utf-8?B?bXkrNGlKeVhDZmx1T0srV1hCaVhLRXhxUldyOXp0cU44ZkVJdnlDTzRjOHRM?=
 =?utf-8?B?NGdWTGF2Nk5MQ01wakhSdXVseEY1bFlQZWQ5aCtPWFlaWnFPUC8rUHRvMURF?=
 =?utf-8?B?ZGxVQUdCUnVFWXI1Z3EvNXhHR0l5ZVZ4QWJsNEtwNWY1Mk9YSHlRNitadGdN?=
 =?utf-8?B?a3VsYnJHbE5yejU3V1BCZGdSR1ZyemRZaVdYUmt4QW5LcStLTHdsZ0VFclB1?=
 =?utf-8?B?L2xFcUJNTzBRYjR6bU9rUnpOY1NyaWNOSE5sSlJaLzZjRVpwbXZWOVdwRENZ?=
 =?utf-8?B?MjN6b3dkdWZtaHM3cDJmcmJtUy9CYXhVNER0UVNmbnJOTnZtd1BsZE80MWxh?=
 =?utf-8?B?THpJRWNBQlRvbnFpa3p4TTFwTTRCMEZabUxKZkROd2RJbVMzTXJYcjNJdWxv?=
 =?utf-8?B?RlhvNGd1eURrZEVVbExGc0tQT3hSR2hqS3hlWjJoZTR3UEVpNXJ1ZGN6QjBr?=
 =?utf-8?B?Z0ozV0x3clgxdDIwU2tDN0lWTkdDRTZhTWxsaUlhenZXS3Bhb0U5QT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: XC9T6gTlXNCGfLXmKTR8cgqpjK30/mAT4Ul0s1CfGWvCjVs86lR+hnGNAchqTslkrFGW4jBGgzCTzdJwYq6CuI8AANmbkMIY4e0PSkra9etVJyLE+CMX+EoLvgDFV4dso7ObVEL90b2XcKiKssf5EQ/2S0R07oOsn/fJHVy2yVC1xLSVNAQ87K2wzJid2dkyEDrYvGHBMI2Z5Xs/sWXVDDxWLBvIgmvb2XIje/MCiN2dMac2Kjcdw80ZIbHLaAaiqpbAW1SEOKsI0UVK+U+Qgg+yRP1KWZy5fTm7qGTiyXuKwslsaHhc8xlLzVcgLdw4vDdzZvHXjszbylG1R5v/RQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6708321-5f2b-414a-ed91-08de84cc0ffe
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2026 08:55:10.9606 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kbGLos8Ds2DqENTaexl2lGtWwSTRF05TppjECTo2DZujWxmlQRBZ+Iw2JKPFPFEQJnBlkzUtV92Mcr7kjOzYwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7922
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
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8B1132B889B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBUdWVzZGF5LCAxNyBNYXJjaCAyMDI2IDguMjQNCj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogQ2F2aXR0LCBKb25hdGhhbiA8am9uYXRoYW4uY2F2aXR0QGludGVsLmNvbT47IEhvZ2Fu
ZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hd
IGRybS9pOTE1L3BzcjogRGlzYWJsZSBQYW5lbCBSZXBsYXkgb24gRGVsbCBYUFMgMTQgREExNDI2
MCBhcyBhIHF1aXJrDQo+IA0KPiBBZGQgbmV3IHF1aXJrIChRVUlSS19ESVNBQkxFX1BBTkVMX1JF
UExBWSkgZm9yIGRpc2FibGluZyBQYW5lbCBSZXBsYXkgYXMgcXVpcmsgZm9yIHByb2JsZW1hdGlj
IHNldHVwcy4gQXBwbHkgdGhpcyBuZXdseQ0KPiBhZGRlZCBxdWlyayBvbiBEZWxsIFhQUyAxNA0K
PiBEQTE0MjYwIGlmIHNwZWNpZmljIHBhbmVsIG1vZGVsIGlzIGluc3RhbGxlZC4NCj4gDQo+IFdl
IGFyZSBvYnNlcnZpbmcgcHJvYmxlbXMgd2l0aCBEZWxsIFhQUyAxNCBEQTE0MjYwLiBUaGlzIGRl
dmljZSBoYXMgY2VydGFpbiBMR0QgcGFuZWwgbW9kZWwgd2hpY2ggc2VlbXMgdG8gYmUgcHJvYmxl
bWF0aWMuDQo+IFdlIGhhdmUgc2VlbiBvdGhlciBMR0QgcGFuZWwgbW9kZWwgd2l0aCBzYW1lIE9V
SSBpcyB3b3JraW5nIGZpbmUuIER1ZSB0byB0aGlzIHdlIGNhbid0IGFwcGx5IHRoZSBxdWlyayBv
bmx5IGJhc2VkIG9uIHBhbmVsIE9VSS4NCj4gVGhlcmUgYXJlIGFsc28gY2FzZXMgd2hlcmUgc2Ft
ZSBkZXZpY2UgbW9kZWwgaGFzIGRpZmZlcmluZyBwYW5lbCBtb2RlbC4gV2UgZG9uJ3Qgd2FudCB0
byBkaXNhYmxlIFBhbmVsIFJlcGxheSBvbiBzdWNoIGRldmljZXMuDQo+IEJlc3Qgd2UgY2FuIGRv
IGlzIHRvIGFwcGx5IHRoZSBxdWlyayBiYXNlZCBvbiBib3RoIGRldmljZSBtb2RlbCBhbmQgcGFu
ZWwgbW9kZWwuDQo+IA0KDQpMR1RNLA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0veGUva2VybmVsLy0vaXNzdWVzLzc1MjENCj4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICB8ICA3ICsrKysrKysNCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmMgfCAxNyArKysrKysrKysrKysr
KysrLSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuaCB8ICAxICsN
Cj4gIDMgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiAN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGMxMzEx
NmU2ZjE3Zi4uYjMxOWU1YmQ2Mjc0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gQEAgLTQ5LDYgKzQ5LDcgQEANCj4gICNpbmNsdWRlICJpbnRlbF9o
ZG1pLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfcHNy
X3JlZ3MuaCINCj4gKyNpbmNsdWRlICJpbnRlbF9xdWlya3MuaCINCj4gICNpbmNsdWRlICJpbnRl
bF9zbnBzX3BoeS5oIg0KPiAgI2luY2x1ZGUgImludGVsX3N0ZXAuaCINCj4gICNpbmNsdWRlICJp
bnRlbF92YmxhbmsuaCINCj4gQEAgLTYwOSw2ICs2MTAsMTIgQEAgc3RhdGljIHZvaWQgX3BhbmVs
X3JlcGxheV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGludGVs
X2Nvbm4NCj4gIAlpZiAoaW50ZWxfZHAtPm1zdF9kZXRlY3QgPT0gRFJNX0RQX01TVCkNCj4gIAkJ
cmV0dXJuOw0KPiANCj4gKwlpZiAoaW50ZWxfaGFzX2RwY2RfcXVpcmsoaW50ZWxfZHAsIFFVSVJL
X0RJU0FCTEVfUEFORUxfUkVQTEFZKSkgew0KPiArCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0s
DQo+ICsJCQkgICAgIlBhbmVsIFJlcGxheSBzdXBwb3J0IG5vdCBjdXJyZW50bHkgYXZhaWxhYmxl
IGZvciB0aGlzIHNldHVwXG4iKTsNCj4gKwkJcmV0dXJuOw0KPiArCX0NCj4gKw0KPiAgCXJldCA9
IGRybV9kcF9kcGNkX3JlYWRfZGF0YSgmaW50ZWxfZHAtPmF1eCwgRFBfUEFORUxfUkVQTEFZX0NB
UF9TVVBQT1JULA0KPiAgCQkJCSAgICAmY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5k
cGNkLA0KPiAgCQkJCSAgICBzaXplb2YoY29ubmVjdG9yLT5kcC5wYW5lbF9yZXBsYXlfY2Fwcy5k
cGNkKSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3F1aXJrcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0K
PiBpbmRleCAxYWJiZGQ0MjZlNTguLjhmMWJmOGY0MThlYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3MuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+IEBAIC04Niw2ICs4NiwxNCBAQCBz
dGF0aWMgdm9pZCBxdWlya19lZHBfbGltaXRfcmF0ZV9oYnIyKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5KQ0KPiAgCWRybV9pbmZvKGRpc3BsYXktPmRybSwgIkFwcGx5aW5nIGVEUCBMaW1p
dCByYXRlIHRvIEhCUjIgcXVpcmtcbiIpOyAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIHF1aXJrX2Rp
c2FibGVfcGFuZWxfcmVwbGF5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0K
PiArDQo+ICsJaW50ZWxfc2V0X2RwY2RfcXVpcmsoaW50ZWxfZHAsIFFVSVJLX0RJU0FCTEVfUEFO
RUxfUkVQTEFZKTsNCj4gKwlkcm1faW5mbyhkaXNwbGF5LT5kcm0sICJBcHBseWluZyBkaXNhYmxl
IFBhbmVsIFJlcGxheSBxdWlya1xuIik7IH0NCj4gKw0KPiAgc3RydWN0IGludGVsX3F1aXJrIHsN
Cj4gIAlpbnQgZGV2aWNlOw0KPiAgCWludCBzdWJzeXN0ZW1fdmVuZG9yOw0KPiBAQCAtMjUxLDcg
KzI1OSwxNCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwY2RfcXVpcmsgaW50ZWxfZHBj
ZF9xdWlya3NbXSA9IHsNCj4gIAkJLnNpbmtfb3VpID0gU0lOS19PVUkoMHgzOCwgMHhlYywgMHgx
MSksDQo+ICAJCS5ob29rID0gcXVpcmtfZndfc3luY19sZW4sDQo+ICAJfSwNCj4gLQ0KPiArCS8q
IERlbGwgWFBTIDE0IERBMTQyNjAgKi8NCj4gKwl7DQo+ICsJCS5kZXZpY2UgPSAweGIwODAsDQo+
ICsJCS5zdWJzeXN0ZW1fdmVuZG9yID0gMHgxMDI4LA0KPiArCQkuc3Vic3lzdGVtX2RldmljZSA9
IDB4MGRiOSwNCj4gKwkJLnNpbmtfb3VpID0gU0lOS19PVUkoMHgwMCwgMHgyMiwgMHhiOSksDQo+
ICsJCS5ob29rID0gcXVpcmtfZGlzYWJsZV9wYW5lbF9yZXBsYXksDQo+ICsJfSwNCj4gIH07DQo+
IA0KPiAgdm9pZCBpbnRlbF9pbml0X3F1aXJrcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSkgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtz
LmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+IGlu
ZGV4IDA2ZGEwZTI4NmM2Ny4uNzdlNDkwY2FlZDBkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gQEAgLTIxLDYgKzIxLDcgQEAgZW51bSBp
bnRlbF9xdWlya19pZCB7DQo+ICAJUVVJUktfTk9fUFBTX0JBQ0tMSUdIVF9QT1dFUl9IT09LLA0K
PiAgCVFVSVJLX0ZXX1NZTkNfTEVOLA0KPiAgCVFVSVJLX0VEUF9MSU1JVF9SQVRFX0hCUjIsDQo+
ICsJUVVJUktfRElTQUJMRV9QQU5FTF9SRVBMQVksDQo+ICB9Ow0KPiANCj4gIHZvaWQgaW50ZWxf
aW5pdF9xdWlya3Moc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiAtLQ0KPiAyLjQz
LjANCg0K
