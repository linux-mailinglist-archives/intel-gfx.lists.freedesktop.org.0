Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHgWC4fqnmk/XwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 13:26:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8854219748F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 13:26:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D095A10E76B;
	Wed, 25 Feb 2026 12:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LCjk5A2V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FCD010E76B;
 Wed, 25 Feb 2026 12:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772022403; x=1803558403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=rfqL1C2G12yUUUc9LZQ9shAg0vTJ8IJaKV/vGyp/oIE=;
 b=LCjk5A2VpBT1K3dS1KlwWDVad3nR9Y07tZLUgD9AsF1MxegvFQ3V0ZwN
 ciQZCpr/LAQ1Cnf0itvfT5Hdz23mCOJOwAu4wBnjSo0jQlai2jq/I7r5g
 Uno71spmVW2EJs0zZ25ePRBGlJG+yXAF8jA0k3CMD/G0+vCDb7yTtAr6t
 mY42/m8S0VwbIuqoyxW4YjFaGZJIIDVcUaaWU2gCPUaW2Bq+/z+yq6UM+
 bxnNfb1SPFyXl5400+f/UgapLZzGo9ZoPbcMPblY90/04iOk7WppDNfNo
 iFMIJoz3/sJ+yoj0cX/rf/W9e54P0RzrbPE3eaL+J2AmMY+fZAMmVS0nr w==;
X-CSE-ConnectionGUID: YtQD8D3US8WtOO94k1bHzQ==
X-CSE-MsgGUID: g/cdWPBNQ4mGiSe5cUrrCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="98523766"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="98523766"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:26:43 -0800
X-CSE-ConnectionGUID: cWaNkTelRu6WZUaZGYrgRQ==
X-CSE-MsgGUID: 0+Rwc50SSxaGV5exfYXVTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="246773393"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 04:26:42 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:26:41 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 04:26:41 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.29)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 04:26:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t4WLcFr95BvonaFOWWyg7WxkDkHi0xbzkCcZb7KFWniST8uXtfUuZZyIu9VSJ8ibbDpN9lmzroJmLOpMinX86DqCHDscRNlUcTIPLSzlIXkomKyIOG6o/OIsHzRptBcAw3B1uzOJqAvFVWgOYHFrshbqk4amG/EqK4cXycaDqacLV0bGTDIgRVGAo6ROvHyJ47pxafLDu8BjUe2x2D0dR8CJCT3yhUnukyyr2pDqUOzLWVnPLypF3rG5vBxyWHIbMLluc4+6rSvZdPST50OrUpd+Wln1XC2Gg4gCZkQ3gbat6wxq0ifVbuh9sT4v78qczHL+Zb1wAsWV5TLaudn2HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rfqL1C2G12yUUUc9LZQ9shAg0vTJ8IJaKV/vGyp/oIE=;
 b=qc0kh1N6FXtxZDvxuNX8LdmfnGLAECO8q4DFMkgFc80QYtpu40qAgSCqNmNKqgowU1bBWiSceg39If5a4bSgzRNhUFnd4Z5zObBFgfwpi8UM/ryiF55PeW0VVTic2cs/pxM9dOeiU6kESnqCFKi0DYSJK/5m1lrBlF6CVRB1/lIhSvvhDpgfyyZNdg1+y9lxOU4hxbdP4X00a+24yKG5kVHJtiXtQGWNzuULkhQvVJQwENo0v7p6TQl4Mlp4LZMbkRjx7THI/jD1q5JzLJv4jR9fu1CiA7iEInDudqiNmdgeJbUUWFdh82nTnXb9zkNA13TL9OCM0e90tlXckOzk6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6444.namprd11.prod.outlook.com (2603:10b6:208:3a7::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 12:26:38 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%2]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 12:26:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH 4/5] drm/i915/psr: DSC configuration for Early Transport
Thread-Topic: [PATCH 4/5] drm/i915/psr: DSC configuration for Early Transport
Thread-Index: AQHcoaDWQlorqpERHUGq3fG74xw1FbWTWw+AgAAFp4A=
Date: Wed, 25 Feb 2026 12:26:38 +0000
Message-ID: <aa56d3f2feed36908dcc7bb8f16cd0db81e933d6.camel@intel.com>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-5-jouni.hogander@intel.com>
 <528b9b9c-920d-4146-a4f7-97db356e7f28@intel.com>
In-Reply-To: <528b9b9c-920d-4146-a4f7-97db356e7f28@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6444:EE_
x-ms-office365-filtering-correlation-id: 508df821-8fde-47b2-e5c5-08de74691fd7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: hq4KynsMGvXd4w4w/U2K2sKBL5qFlHsnO6e1um0v/9MhIomF2hNOCBYp52pI1OIVLLtMGRd5q620m8iIEZ5eE5yLJbmS19XjCTbJtEpK6y/hCMctmmE1I1HiejChNu9QrioJtUYl4zCChEt5VOIqGql11tUB6bRfibi3Tq+rShmxZZr30K6AHRgRhtuFk8w93/Cyyn0m8BxnvpaMrIsQVYyQYVctE9xy67K30A4nbclWELC5k3PjtGw519U6lmVjblUOwJns2bKG3JR8ieBRrUp5fTbUPD2xgubJd76eBOvWldGfGDhnwhTLkXxDGfX3oR1Cdcq3w1IHMeuvmG49F1J+TpnTcIhqGzubrWESRfgB90ZE3jPi48epig2M+WyN6U4tHHSyHcprNtD0V2NZZkU6uffEKbsNG1det8sf2NK/PwL/1bKTHAG6G1B46A3qH9hCnJhVpG3wtLSYcOOTFfpj62qSw7Dlp8Qp3x0E9lupVhYQw2z9Yev8yRzvmUQ5N1/hxcuPEsNGaLiaju/9+t9dA1oDNyGpYI/uVFIZgqbJbZ67BbnfkzjNar8Opwo73ploeI1a87+RqFEji75pchySillLgKF5z2xZcEMnTTtCPcYK5iRBb/jW6JO9kkddrIqPcd1RuSIf7r01IA9LZaZDcIM5cTROqjghjkS7icIVPfcVelRGuCm+SWjCJ4DE6JCBphWp9f/669jTm3oEa3rGbvQ3V+nZHoQFBeWU93WnRxsqSHmoLFBUEXEkbrAb/0IXjaKgTRJDA9la+ytHykI2PGChIi09SlHTKPDQvI4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME5NZkFSYnFmRlRVUmRFQTdJME96ZWxQYTB0Si9jVEJxOWs5YkRLeGdFbEFP?=
 =?utf-8?B?VkdFTStGRERVVEJWN0xtWmVQYjBPWEI1OEl3N2hwV3BHOHBoSEpaNlJ1YWVy?=
 =?utf-8?B?elFwMy9CL2RVMHJvUkR2Y3lDK3hNSSs5ajZOK2R0bDI2blpXalR4QmFNZkRi?=
 =?utf-8?B?VFZuYUlacDl2TTVHSG45VG9GUkd5K2tray91OUorZVV6MlF2SDl0a0hhaVh0?=
 =?utf-8?B?cW8xSC9ncE04emFiWUFzTERIa0dVTWxkU3pPWEhUWFpYWXIrOEgxOWdnZnlO?=
 =?utf-8?B?aHhqZXdVbVErTEtlQWJpaEhsSkNnMCs4K01TZTYyRS95bURkTFY3TlhEVll5?=
 =?utf-8?B?V2NKblg0anVpdnhWOEc3dk9mK2dOcFZ2ZnZUZG1oRzFjRFpPUWM5dkYwZFBr?=
 =?utf-8?B?UWgzYUJiTUl4aThJVTRMbDRndm9nbFhubTljMUZoQ2hkSjdSUUkydUF2Vndq?=
 =?utf-8?B?ZjNKNnVZUFpaS20zVGRVcmgzaFNXQS9yRlZGM3VCdGREWHBNaG11dncrNW0x?=
 =?utf-8?B?ZkxHcEJvUDl2ZnhqYWFrK20veTRGSWNpQklWclZ1d1ZCOFhXNnVBL3hXL1k1?=
 =?utf-8?B?Yk52cmFUaWRXR2V5bVF4R1dUbEcrU1RPcXZaWFczM2FDaEtmQkgzd0FNNzdY?=
 =?utf-8?B?ZEJVUHc5L0VacjVraGplZzU4d3RmVllaOHNwTThhYk0wb05MYWNPMm5BSFRC?=
 =?utf-8?B?STFySnVESGNwc082dUpWeWFqalJCV0lMeEw3a0V5bm1nYUZZSExIc0ZFcEc3?=
 =?utf-8?B?RnB1SU05ZzlSV0gyYjVjc0owblNOaSs0VUJRYnJDUjhyYWZwTW1naTQ5QXdO?=
 =?utf-8?B?aWU4UWxwVzRWRHhvNDM0dFZMc05jL2drdDFPWWJpanFTWENSOFAwNmlkVlJR?=
 =?utf-8?B?NEpqakhmSHJGR1pQekRkS0RsLzJYYlVldlZGWVdiYXM1enpJQkZkc3YyMFdT?=
 =?utf-8?B?WHJDck9NMDRmdHI0ZDhPcmVWdWtiSWZMZjl5UEpUS3lEM0gvSzRpUndPaVNa?=
 =?utf-8?B?dWhPRkYrTU4yTkptSkVyVlFxODNMYlZmYlBFeU1wdmNpUjh5aU4vS0dlcmJE?=
 =?utf-8?B?WnRWQ2Y1NjlkclRhdTg3SDV2M0dzaE5MTVJnMXlCT0hCSUZraG9FZ21ZRGhZ?=
 =?utf-8?B?WnJ1c2pGRzdTRmdLZGVzMGxVNEUwaW9RRWo2V2luQWRDV0hmUVRvMGZoQmlz?=
 =?utf-8?B?cUg0MjdnS0JTekRlaE5OR0hReThwbTRnZy8xZDJTSmJHb1NTaFQ2eS96TXlL?=
 =?utf-8?B?SHBvNnpQTmxIY3JXQVJ6YTdkWnpsMC84aGpqNXhlcXgxN1lPUnloaktvOHc3?=
 =?utf-8?B?b25wbFhFWXlLRnRJT0JnSisxNEpYL1VsSWgvMm9NYU9kWFFzYlV2S1NEYStz?=
 =?utf-8?B?NkhnWmVkd1BIYkk1TFRJUGt0blB6Nm5EcXNsajRKY0tzMWF2aXI4MVJhaWdM?=
 =?utf-8?B?S00vOVQ0TlVFeVZybnhaTFNZYkpDeGMrV2dXRTN6K2p0bVJodDFMVTJSQTll?=
 =?utf-8?B?M0s2UjVEbGUxWnZzbzFFeFh0M2tFRnczcW1zTlkycmlLZkpIZmk3VmNtckNV?=
 =?utf-8?B?bFVSUUxHcDZYcE84TjR1Z1pYbE9kOFdiWFAyZkpYajRsaTJhQWxpWHR0Mi9p?=
 =?utf-8?B?ckRxbTRPa3dpVU5NL2pidTk0cHl3a0ExNksyeGNRNmdtaU85UUQ1d0x3ZHZS?=
 =?utf-8?B?WDhydURFcms5QU50SkhUdmdnS3FtdjQ2cVZubjBOYjdtV0V5UkJ5QVhUSE05?=
 =?utf-8?B?R0IvbHVyb3ZEUUF5WWYzKzl6MXdIL1huSWJvQXAwVDFTUUN1SmoveUNqbWx1?=
 =?utf-8?B?ckxlaDY3am4xWjhqdzkreGFLM3g1cnVHMERzM0tWemoxcmp2cVM1d2gyeXk3?=
 =?utf-8?B?T1FMbzAvaThCcHJZRjNDaFFGOUN6b1M3SGM0WXNlZUNPb3JHZ1k3MzQ2NW1r?=
 =?utf-8?B?YzR6Mk04ZGpjSTB2N0EvSnV0T2JYTU1USzVvci9lZXVMelZFellERWdBdUYx?=
 =?utf-8?B?aHVIY2JhZG1EYmdMd0N1T0oxaExnQlRaRkNOTS9KUDh0NkJJZ3g0bmsvaCti?=
 =?utf-8?B?bHpQcjJVRUhlaXhQUDAyRkluazN5RlFSbEdvNmt3TWhmK0c2K1U5UHFuWHZy?=
 =?utf-8?B?NmFYR0NnUlRWdlZPWi9yWDcveWNHTXVZUSsyRmk2NVMwU3RGdzdJZGw2Qjg2?=
 =?utf-8?B?U3lqU1IyblFmRyt5V25vV29yaTFBaVBLWllyeVoyWjVoWHZGU3dyRm9mY2tY?=
 =?utf-8?B?NEM2LzFnRXc5aUo5NFNFck1GeWd2ejBpWUNURUhUcGtYT0R4QkpkSnZtMklj?=
 =?utf-8?B?dFIwejlnRFpRbkU5cTBpS2JYYmp5a1o2QUJBODNxbW02UXI2VCtKaml6cXZC?=
 =?utf-8?Q?OJm23rIUp8397D6ERTppZB0tkvtXfopls2I5jUasOc9E/?=
x-ms-exchange-antispam-messagedata-1: 4KVb0APOh+2ndUTwYsR54IhPa1JJcs3Zk/8=
Content-Type: text/plain; charset="utf-8"
Content-ID: <32F687418145174F8D253FFF9A885EE4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 508df821-8fde-47b2-e5c5-08de74691fd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2026 12:26:38.7659 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AUukNRAveTiocaUzOSrU6HnnxyA+muIAu31bpwsITXFmy3MMvHdBu5X8m+QZdpMiX6U+7KgKIoJslsQ0muwtxVPWJp6zUOYHzvDGyv3QlIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6444
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8854219748F
X-Rspamd-Action: no action

T24gV2VkLCAyMDI2LTAyLTI1IGF0IDE3OjM2ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDIvMTkvMjAyNiA2OjM3IFBNLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6DQo+
ID4gVGhlcmUgaXMgU2VsZWN0aXZlIFVwZGF0ZSBzbGljZSByb3cgcGVyIGZyYW1lIGFuZCBwaWN0
dXJlIGhlaWdodA0KPiA+IGNvbmZpZ3VyYXRpb25zIG5lZWRlZCBvbiBEU0Mgd2hlbiB1c2luZyBT
ZWxlY3RpdmUgVXBkYXRlIEVhcmx5DQo+ID4gVHJhbnNwb3J0LiBDYWxjdWxhdGUgYW5kIGNvbmZp
Z3VyZSB0aGVzZSB3aGVuIHVzaW5nIEVhcmx5DQo+ID4gVHJhbnNwb3J0Lg0KPiA+IA0KPiA+IEJz
cGVjOiA2ODkyNw0KPiA+IEZpeGVzOiA0NjdlNGUwNjFjNDQgKCJkcm0vaTkxNS9wc3I6IEVuYWJs
ZSBwc3IyIGVhcmx5IHRyYW5zcG9ydCBhcw0KPiA+IHBvc3NpYmxlIikNCj4gPiBDYzogPHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmc+ICMgdjYuOSsNCj4gDQo+IA0KPiBUaGlzIHBhdGNoIG5lZWRzIHRo
ZSBvdGhlciBwYXRjaCB3aGVyZSByZWdpc3RlcnMgYXJlIGRlZmluZWQuIEkgYW0NCj4gbm90IA0K
PiBzdXJlIGlmIHN0YWJsZSB3aWxsIG9ubHkgcGljayB0aGlzIHBhdGNoIG9yIHdpbGwgdHJ5IHRv
IGZpbmQgb3V0IHRoZSANCj4gZGVwZW5kZW5jeSBwYXRjaC4NCj4gDQo+IFdlIG5lZWQgdG8gY2hl
Y2sgaWYgdGhlcmUgaXMgYSB3YXkgdG8gdGVsbCB0aGUgZGVwZW5kZW5jeQ0KPiBwYXRjaC9jb21t
aXQgDQo+IHRvIHN0YWJsZSwgc28gdGhhdCBib3RoIHBhdGNoZXMgYXJlIGFwcGxpZWQgdG9nZXRo
ZXIuDQo+IA0KPiBJZiB3ZSB3YW50IHRoaXMgY2hhbmdlIHRvIGdldCBwb3J0ZWQgdG8gb2xkZXIg
a2VybmVscywgd2UgbWlnaHQgbmVlZA0KPiB0byANCj4gc3F1YXNoIHRoZSByZWdpc3RlciBkZWZp
bml0aW9uIHBhdGNoIHdpdGggdGhpcyBwYXRjaC4NCj4gDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAg
MSArDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDC
oMKgwqAgfCAyNA0KPiA+ICsrKysrKysrKysrKysrKysrKysNCj4gPiDCoCAyIGZpbGVzIGNoYW5n
ZWQsIDI1IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gaW5kZXggZThlNGFm
MDNhNmE2Li44OTAzODA0YzA0YjEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xMzgxLDYgKzEz
ODEsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7DQo+ID4gwqDCoAl1MzIgcHNyMl9tYW5f
dHJhY2tfY3RsOw0KPiA+IMKgIA0KPiA+IMKgwqAJdTMyIHBpcGVfc3Jjc3pfZWFybHlfdHB0Ow0K
PiA+ICsJdTMyIGRzY19zdV9wYXJhbWV0ZXJfc2V0XzBfY2FsYzsNCj4gDQo+IEkgdGhpbmsgbGV0
J3MganVzdCBoYXZlIGEgYm9vbCBwYXJhbWV0ZXIgc29tZXRoaW5nIGxpa2UgDQo+IHBzcl9zdV91
cGRhdGVfZHNjX3Bwcy4NCj4gDQo+IFdlIGNhbiBzZXQgdGhpcyBib29sIHZhcmlhYmxlIGR1cmlu
ZyBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoKQ0KDQpZb3UgbWVhbiBjYWxjdWxhdGluZyB2
YWx1ZSBmb3IgdGhlIHJlZ2lzdGVyIHdoZW4gd3JpdGluZyBpdD8gSSB0aGluaw0KZm9yIHRoYXQg
cHVycG9zZSB3ZSBjYW4gcmVseSBvbiBjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25f
ZXQNCmFuZCBjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlLiBObyBuZWVkIHRvIGFk
ZCBuZXcgYm9vbGVhbi4NCkxldCdzIGRvIGl0IHRoYXQgd2F5Lg0KPiANCj4gDQo+ID4gwqAgDQo+
ID4gwqDCoAlzdHJ1Y3QgZHJtX3JlY3QgcHNyMl9zdV9hcmVhOw0KPiA+IMKgIA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggMzMxNjQ1
YTJjOWY2Li4wYTI5NDhlYzMwOGQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjYxOCw2ICsyNjE4LDExIEBAIHZvaWQNCj4gPiBp
bnRlbF9wc3IyX3Byb2dyYW1fdHJhbnNfbWFuX3Rya19jdGwoc3RydWN0IGludGVsX2RzYiAqZHNi
LA0KPiA+IMKgIA0KPiA+IMKgwqAJaW50ZWxfZGVfd3JpdGVfZHNiKGRpc3BsYXksIGRzYiwgUElQ
RV9TUkNTWl9FUkxZX1RQVChjcnRjLQ0KPiA+ID5waXBlKSwNCj4gPiDCoMKgCQkJwqDCoCBjcnRj
X3N0YXRlLT5waXBlX3NyY3N6X2Vhcmx5X3RwdCk7DQo+ID4gKwlpbnRlbF9kZV93cml0ZV9kc2Io
ZGlzcGxheSwgZHNiLA0KPiA+IERTQ19TVV9QQVJBTUVURVJfU0VUXzBfRFNDMChjcnRjLT5waXBl
KSwNCj4gPiArCQkJwqDCoCBjcnRjX3N0YXRlLQ0KPiA+ID5kc2Nfc3VfcGFyYW1ldGVyX3NldF8w
X2NhbGMpOw0KPiA+ICsJaWYgKGludGVsX2RzY19nZXRfdmRzY19wZXJfcGlwZShjcnRjX3N0YXRl
KSA+IDEpDQo+ID4gKwkJaW50ZWxfZGVfd3JpdGVfZHNiKGRpc3BsYXksIGRzYiwNCj4gPiBEU0Nf
U1VfUEFSQU1FVEVSX1NFVF8wX0RTQzEoY3J0Yy0+cGlwZSksDQo+ID4gKwkJCQnCoMKgIGNydGNf
c3RhdGUtDQo+ID4gPmRzY19zdV9wYXJhbWV0ZXJfc2V0XzBfY2FsYyk7DQo+ID4gwqAgfQ0KPiA+
IMKgIA0KPiA+IMKgIHN0YXRpYyB2b2lkIHBzcjJfbWFuX3Rya19jdGxfY2FsYyhzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlLA0KPiA+IEBAIC0yNjY4LDYgKzI2NzMsMjMg
QEAgc3RhdGljIHUzMg0KPiA+IHBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoMKgCXJldHVybiBQSVBFU1JDX1dJ
RFRIKHdpZHRoIC0gMSkgfCBQSVBFU1JDX0hFSUdIVChoZWlnaHQgLQ0KPiA+IDEpOw0KPiA+IMKg
IH0NCj4gPiDCoCANCj4gPiArc3RhdGljIHUzMiBwc3IyX2RzY19zdV9wYXJhbWV0ZXJfc2V0XzBf
Y2FsYyhzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+ICsJCQkJ
CcKgwqDCoCBib29sIGZ1bGxfdXBkYXRlKQ0KPiA+ICt7DQo+ID4gKwljb25zdCBzdHJ1Y3QgZHJt
X2RzY19jb25maWcgKnZkc2NfY2ZnID0gJmNydGNfc3RhdGUtDQo+ID4gPmRzYy5jb25maWc7DQo+
ID4gKwlpbnQgc2xpY2Vfcm93X3Blcl9mcmFtZSwgcGljX2hlaWdodDsNCj4gPiArDQo+ID4gKwlp
ZiAoIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCB8fCBmdWxsX3VwZGF0ZQ0K
PiA+IHx8DQo+ID4gKwnCoMKgwqAgIWNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUp
DQo+ID4gKwkJcmV0dXJuIDA7DQo+ID4gKw0KPiANCj4gQWx0aG91Z2ggd2UgYXJlIG1ha2luZyBz
dXJlIHRoYXQgaGVpZ2h0IG9mIHRoZSBwc3IyX3N1X2FyZWEgaXMgYSANCj4gbXVsdGlwbGUgb2Yg
dGhlIHNsaWNlX2hlaWdodCwgcGVyaGFwcyBpdCB3b3VsZCBiZSBnb29kIHRvIGhhdmUgYSANCj4g
ZHJtX1dBUk4gaGVyZSB0byBmbGFnIGFueSBtaXNjb25maWd1cmF0aW9uIGkuZS4gaWYgaGVpZ2h0
IGlzIG5vdCBhIA0KPiBtdWx0aXBsZSBvZiBzbGljZV9oZWlnaHQuDQoNCkkgd2lsbCBhZGQgdGhh
dCB3YXJuaW5nIGFuZCBtb3ZlIHRoZXNlIHRvIGludGVsX3Zkc2MuYy4gSSB3aWxsIGFsc28NCm1v
dmUgdGhvc2UgcmVnaXN0ZXIgZGVmaW5pdGlvbnMgeW91IGNvbW1lbnRlZCBpbiBwYXRjaCAyLg0K
DQo+IA0KPiANCj4gPiArCXNsaWNlX3Jvd19wZXJfZnJhbWUgPSBkcm1fcmVjdF9oZWlnaHQoJmNy
dGNfc3RhdGUtDQo+ID4gPnBzcjJfc3VfYXJlYSkgLyB2ZHNjX2NmZy0+c2xpY2VfaGVpZ2h0Ow0K
PiA+ICsJcGljX2hlaWdodCA9IHNsaWNlX3Jvd19wZXJfZnJhbWUgKiB2ZHNjX2NmZy0+c2xpY2Vf
aGVpZ2h0Ow0KPiA+ICsNCj4gPiArCXJldHVybg0KPiA+IERTQ19TVV9QQVJBTUVURVJfU0VUXzBf
U1VfU0xJQ0VfUk9XX1BFUl9GUkFNRShzbGljZV9yb3dfcGVyX2ZyYW1lKQ0KPiA+IHwNCj4gPiAr
CQlEU0NfU1VfUEFSQU1FVEVSX1NFVF8wX1NVX1BJQ19IRUlHSFQocGljX2hlaWdodCk7DQo+ID4g
K30NCj4gDQo+IFNpbmNlIHRoaXMgd3JpdGVzIGEgRFNDIHJlZ2lzdGVyIGJlbG9uZ2luZyB0byBQ
UFMgU2V0IDAsIHRoaXMNCj4gZnVuY3Rpb24gDQo+IHNob3VsZCBiZSBtb3ZlZCB0byBpbnRlbF92
ZHNjLmMuDQo+IA0KPiBBbHNvLCBiYXNlZCBvbiB0aGUgYm9vbGVhbiBmbGFnIChwc3Jfc3VfdXBk
YXRlX2RzY19wcHMpIGRpc2N1c3NlZA0KPiBhYm92ZSwgDQo+IHRoaXMgZnVuY3Rpb24gc2hvdWxk
IHNpbXBseSByZXRyaWV2ZSB0aGUgcmVxdWlyZWQgZmllbGRzIGZyb20NCj4gY3J0Y19zdGF0ZSAN
Cj4gYW5kIHByb2dyYW0gdGhlIHJlZ2lzdGVyLg0KDQpOb3cgYXMgeW91IHBvaW50ZWQgdGhpcyBv
dXQgSSBzZWUgdGhlcmUgaXMgbm8gcmVhbCByZWFzb24gZm9sbG93IHdoYXQNCmlzIGRvbmUgZm9y
IFBTUjJfTUFOX1RSS19DVEwuDQoNCj4gDQo+IFN1Y2ggYSBoZWxwZXIgZnVuY3Rpb24gc2hvdWxk
IHRoZW4gYmUgY2FsbGVkIGZyb20gDQo+IGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJr
X2N0bCgpIGluIHBsYWNlIG9mIHRoZSBkaXJlY3QgDQo+IGludGVsX3JlZ193cml0ZSgpIGNhbGwu
DQo+IA0KPiBJTU8sIGFsbCByZWdpc3RlciByZWFkcy93cml0ZXMsIGFsb25nIHdpdGggdGhlIHdy
YXBwZXJzL2hlbHBlcnMNCj4gYXJvdW5kIA0KPiB0aGVtLCBzaG91bGQgbGl2ZSBpbiB0aGUgZmls
ZSBjb3JyZXNwb25kaW5nIHRvIHRoZSBibG9jayB0aGF0IG93bnMNCj4gdGhvc2UgDQo+IHJlZ2lz
dGVycywgYmFzZWQgb24gY29udGV4dC4NCg0KT2ssIHlvdSBjb252aW5jZWQgbWUuIEkgd2lsbCBt
b3ZlIHRoZXNlLg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiANCj4gUmVnYXJkcywN
Cj4gDQo+IEFua2l0DQo+IA0KPiA+ICsNCj4gPiDCoCBzdGF0aWMgdm9pZCBjbGlwX2FyZWFfdXBk
YXRlKHN0cnVjdCBkcm1fcmVjdA0KPiA+ICpvdmVybGFwX2RhbWFnZV9hcmVhLA0KPiA+IMKgwqAJ
CQnCoMKgwqDCoCBzdHJ1Y3QgZHJtX3JlY3QgKmRhbWFnZV9hcmVhLA0KPiA+IMKgwqAJCQnCoMKg
wqDCoCBzdHJ1Y3QgZHJtX3JlY3QgKnBpcGVfc3JjKQ0KPiA+IEBAIC0zMDI2LDYgKzMwNDgsOCBA
QCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gwqDCoAlwc3IyX21hbl90cmtfY3RsX2NhbGMoY3J0Y19zdGF0
ZSwgZnVsbF91cGRhdGUpOw0KPiA+IMKgwqAJY3J0Y19zdGF0ZS0+cGlwZV9zcmNzel9lYXJseV90
cHQgPQ0KPiA+IMKgwqAJCXBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhjcnRjX3N0YXRl
LA0KPiA+IGZ1bGxfdXBkYXRlKTsNCj4gPiArCWNydGNfc3RhdGUtPmRzY19zdV9wYXJhbWV0ZXJf
c2V0XzBfY2FsYyA9DQo+ID4gcHNyMl9kc2Nfc3VfcGFyYW1ldGVyX3NldF8wX2NhbGMoY3J0Y19z
dGF0ZSwNCj4gPiArCQkJCQkJCQkNCj4gPiAJCcKgwqAgZnVsbF91cGRhdGUpOw0KPiA+IMKgwqAJ
cmV0dXJuIDA7DQo+ID4gwqAgfQ0KPiA+IMKgIA0KDQo=
