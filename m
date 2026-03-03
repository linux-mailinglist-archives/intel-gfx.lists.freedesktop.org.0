Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MQ8J+3Gpmn3TQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 12:33:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F901EDDAA
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 12:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE8210E799;
	Tue,  3 Mar 2026 11:32:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AgxjnygZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A60910E799;
 Tue,  3 Mar 2026 11:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772537569; x=1804073569;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GmlVAZQkWn5IU9TJgExmmuVc6Bx19gq5ZdXZIgGbTp0=;
 b=AgxjnygZknxGNFKd2fjI3JO7YBK8ba05aFxFDw+/kdRHxzjZlJBm1ejf
 Ha2GzhCkYSCJzDuVvhv2qJUnyUSdvHp63ABpxR10k337TygFWpZpOxsxs
 MVFtWTNsDBp9xuwMNmIXbBZ1qHGrtey5QYzmyb/eskjcsgsqGPuEa/7P/
 1hQ10PBPJXImyIbNq7L9CrepSBYIuG4AWAL/l4bPnQLH/hS/Jd0tI9ylv
 akaO3G7THcZwqj0BRpZ7XM9qS7wmNTg/zEx1zU5gQTo4Om+PDfjMVdUqF
 pDUTl9O/DdBTw+TmSwSFfp/SrVcXehtqCUhZZ/ZniAqc+x9UOxhlZHgbb Q==;
X-CSE-ConnectionGUID: URQVpRkiSYKn4WF8m+mxFw==
X-CSE-MsgGUID: pzKzZOiiTXuaTghK6K2j7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="90968231"
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="90968231"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 03:32:39 -0800
X-CSE-ConnectionGUID: Idyqu/4pQc6Czjrg4Gi7JA==
X-CSE-MsgGUID: DmcMkwxBSMCXYwpNpharlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,321,1763452800"; d="scan'208";a="222127605"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 03:31:44 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 03:31:42 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 3 Mar 2026 03:31:42 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 3 Mar 2026 03:30:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HWGAF/rs+YbUx8v6lWQz5x9gceRQlP7MgvojMqJNMiN1WRu8UaerR6ggy8nzOc+qSHUtJm3l48WA0D4tPWLGeaqQ8UZy9Tmfh4hlGudlejCOJiSNAzR2PiIYghYS121p/soTzfw7jkwdPCAWNYe7ScwQ/WwRIcAcqkoP/IKoMC61blkOCyUmz2vZJDrZ7IIu6+NbLwHOv0MpFm8OEvZfjT5WyWYCtWTx7I7KMI4sCp9bencFWJcHYF5KvKagadRp0jEvfsOpLWT5SwlEnrMjK/fCwOtJ+eEP61kxxZuNsnUs6dSenuQDkm8hjs4S6bmHY97rE7fJznfa8h5ub2IU1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GmlVAZQkWn5IU9TJgExmmuVc6Bx19gq5ZdXZIgGbTp0=;
 b=oU6lGZRB62+yABFoy7i3HtPgcpK2rhdNgOjdJtFY8NM2Gr9u0nIpQZLPBSK+slT8pfYje1Jzmw/Vfq/9c08LNpzAYCQA0/IZBHnBaKHIF5tyM6iqogT7sDl9WSy5xFJdRnYLGo7JsQZucgePfKffyNuVcSobA1Ftw0cVGahWSRz2LfSLmYNayp1KvA5QHAalOPas/6hNtaOsrkZNU03IcO7tQbIjoq4a56Eh0UdqiDVwK1oJ0/IWrWNTo7WTDgFOrzhOU3jh675QzplRFcoDZzmkgaIh5X0NRhpLFUswKoXxCEfUh2dvhb5ca9g8UmgmdNJu9aBRUi8hV4yrpOtmuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.21; Tue, 3 Mar 2026 11:30:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 11:30:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>, Dibin Moolakadan Subrahmanian
 <dibin.moolakadan.subrahmanian@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCHv2 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
Thread-Topic: [PATCHv2 2/2] drm/i915/dp: Rename alpm_init to alpm_init_dpcd
Thread-Index: AQHcqiB8iLqCTEvsBU2e1kq+efNuarWbVa+AgADdeICAAHrogA==
Date: Tue, 3 Mar 2026 11:30:40 +0000
Message-ID: <0c15c6bf69fb4d205d1ede8ff9d7bca2afbdaf17.camel@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <20260302084030.463284-1-arun.r.murthy@intel.com>
 <20260302084030.463284-2-arun.r.murthy@intel.com>
 <6f9c65e1-b110-4cad-b2dd-d9d8a1b73a51@intel.com>
 <IA0PR11MB730712128783EA3F50860777BA7FA@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB730712128783EA3F50860777BA7FA@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4914:EE_
x-ms-office365-filtering-correlation-id: a7d147e6-aa2f-4a55-b74d-08de79184cb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700021|7053199007; 
x-microsoft-antispam-message-info: 2lzmeB7jOHIH9LnfCeXQVzGU89Nit0HoCHuF3lk9ynL+HKBXEeJItcsZp3RIBgDghaMOY6xgTbn1FYN/Y6ZcYQkhqgTxTYB6W1k2cU8WPCPtS8Asze/cHduSmhs091SzNlrVyJDMhtCzscRIfnAc2pIsv3XMShx6n39yZ+ZzmnnuJIPHXBhlai7dBv0mXFGuD0xQCqRCkH0rqogAUKkwI0vVU/EReKEOHIFrSo6LiKutkrAsMroFB4N4oWYW3Iz/HgUHecb1G6p+k8GcSQKVn9hgh+q5ND5y87/lToDmI2db5ENR6n2PjGyx2O/hTWaew69OJtEsNjiWyAsdQ8aog9V63t6S7YS5A8f3wkQNGoiYbUTG384LaWH34M2A4/z3f1/68ljQ2ZuFAhOIAjVAJO0BZ+I5e4xiJr6SnNzPx0HbbsXLfYDQLRII/xdyhLO53l1Wd9m6f5ZrmDaXXcJU8JY08/4vuIw+RJQT4Q3wXT2Cps/l6+GfWtfLm3FalyBzWLmYwNx/cdeA3auKOSB2NFA7jXZ2vdniNS0o+JW9E6hk065ABUkaKMxO+2rJTC+5Q4QVE5TNqveFCY+KrJXAU3y8alxA3wbxaAL5MXMWwUQZRXY2Pz8HEUky/3tzG0SVVqEmusqvVYw4AdykT8NSZmyahlrAPpNd/7GhTdDwDkRzwJYRdDShxfKnAz64aDI8MSBxk75blGxzPrlhiHcgYPfi49czOcjSTOEl/Lm6q0Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWxDM2U2WmVTV2FGcHF3a1Y5S2UwZTdqTG9IZlVyRm9mbXV6ZW11elJnUVFR?=
 =?utf-8?B?aXNHYzhtS3RvMlRlaXF1Z3hiaVJ3NzNlRllwQ0x6LzdlZFRIazgyQjNwU3E1?=
 =?utf-8?B?Y2JXaklZYS9JQ3B2VE5iQUR1YzhleFJEZzJvbXBLcys3SVpXS2E2RXEremRD?=
 =?utf-8?B?WXlzd0FiSFJYT1cwSWR3U3J5aVF4YXYyWUN4c0JRaGx2bndrWFN5OXBiclBF?=
 =?utf-8?B?U2dLcWoyUmVnL3hUaXVTSmhnT0RCZTc5cUZwVTZCbzNHTy8yTFNHVzcwVXpq?=
 =?utf-8?B?aVdpOGt3dlo2akp3ZHF6MWhFQVBrb3dmVzdseFlKUWhXV2ZtYmMraXJsNWVB?=
 =?utf-8?B?d0tUQWVacnBzNTBpNS80REprRkExODk0WXpCNEFHOUN5bm0zRWxhWmhuU2d0?=
 =?utf-8?B?Nkw2czVZa1lYSkJsNE5VcTk3dVFzUWF6T0lEeElBTmtlbXRnQWt6Mnplc1Bt?=
 =?utf-8?B?SFh0Vzdsakd5WUJmcnBmSUZmeEFHWFdTWExFTEJtRTA4QTA4a2FtZHV4K3BF?=
 =?utf-8?B?eHlFK3VXYWQ2dXpvUmdhV0tkK0d1ZzhJYWJYaUFraFlpR21PWU1JY1lIV25W?=
 =?utf-8?B?bS9ucGw4OEdPc3N0VkFWSHh5QVgvdVdmc010Y3lHZTJkY2JJckdJVGQrb1VK?=
 =?utf-8?B?UDg1enljTnBhektwMVRxYWpzcGc1TW9IWGZxOXBoa0RCTllUbUgyaW1ZZFBu?=
 =?utf-8?B?Y2ltZUF1UEhNMHkwN1JUdFF3cElTa0JSeFBONlpiUExpVFdFZGtTZVR6U0NH?=
 =?utf-8?B?b2ZTVWw5aWRrM0E2OVhMMlBxTGQ3SkxseG5iUEZGM000VnJNTEVOajdpeXJp?=
 =?utf-8?B?ODA1UGEvSmtJbkN4L1UwcS92U2tSNVYrMlFCWmxlZm1OL2Vtd2M3Q2hDRkgx?=
 =?utf-8?B?cEFMYkExTkFCZnBucGhpTW83bkZsTUdUSEZFNSsxRlowazMxTjJrc2pETGpX?=
 =?utf-8?B?ZmZvRzV0ZG9kVFhINkw2SHlMeVRkTmZVTkpST0xRTWRtcm5BUUxrNmNDSmRS?=
 =?utf-8?B?MlVlRHRnYm52VWYzWm5HMHZmeStOMDQ3eGR1MThtVUVNdzZFbjVqbGM2U2Z6?=
 =?utf-8?B?clVZM2luVEpXMXdMQjZPbmtsZ3R5aERERmM0S0lMNWhjbVIvUnFWeEJtWEdm?=
 =?utf-8?B?REphbWRKcjdQSERrUjZWMlpCVlp4S09xaE84bVlmSUxJc3NMMFZ6ZzNNOHk0?=
 =?utf-8?B?WkNScWk3YlRXSWJmcjhTY1J1NWo0eGFVK1dTaHQxZkZtL1psU2tWV2IrUW8z?=
 =?utf-8?B?T0F3YWpsQnNkYWc1ejdHR2NJWWVHL2Z0QUFqVzdPeTI5SWdXcUM4eE5RNTZi?=
 =?utf-8?B?TGhSNHBGTExkWXVVcVIvSnZZWFB1bE1lbEpBWldnYzA5TUJXY3dXN2lvaDVw?=
 =?utf-8?B?SkRzVjlPOHk1WWdoNjZQS2x0emJRS2Fxd0NGVWVWNUJUT2xTa09vNFRWd1ly?=
 =?utf-8?B?eUxjVnBVWGpmMHNNc3AybEkrRWRqbFlacWhTOXh2aVRmckVvaVJHU0drWk1i?=
 =?utf-8?B?SFQ5NmU2WlkyYW11Wmh5M2hRSWRyV0N5eVFXWW9kdkVsNGd3SVcxQXJDdjhl?=
 =?utf-8?B?Qy9vSVJRZmJzeVQ1bXdGOFpCTHFLTzVrS3hiV3E1Z2NweGNYdy9pS1VJWVYx?=
 =?utf-8?B?Zy9xdWNocmREQ1BpY3B0NGxkUHpmTlJjVGZyNHdPamF5eVZqY2ZoNUQvNk52?=
 =?utf-8?B?SGlIYm93R28xR05xVW91bVhsandjbkhydHFyVlI3WWx4OFB2OFFRQnRXajE2?=
 =?utf-8?B?U2xCTTdmaGtMSlBVbzBMZUZtdEVHanZUMkFIYXpZYXZLYjEzTnhMVUxRMGk1?=
 =?utf-8?B?S1Z3S2xyeldOMEJ4ek1WeExkcFVWSFNtWEIzRzlMaE5oM1NzR0dOcTdCTzVk?=
 =?utf-8?B?blVxL1l3bmlrZTlSQ2xyeXQrR0pqK1JVSHRaTjNBOExCNTBIQm10clNYVkhW?=
 =?utf-8?B?aDZGRTdwQjlmZGJkSjFPTTd3VzJOTnJBd1FpbjBpVnpqZUgvV2VzekRrNStW?=
 =?utf-8?B?QlJOdmErZ093RTZqQXJ0K0pCeFR4TTVNK0l0M0V3cnU2UGI3Y1BmRDFKb2Nz?=
 =?utf-8?B?QnpiLzBFRU5lNkw4VTM0TWNJNEZ6RURVMWpRbWVibldDLy9uTVgyK0twM3ht?=
 =?utf-8?B?UXFsOGtDWG5iN0tZd2JlNTVqUTNadFo1aW1DeS9rOFFFRk0ydUZseHI2aFFX?=
 =?utf-8?B?dVJxaFNFTW1mUU50S2RZM2xxc0prd2pvTFhHc2kxazF3WVhxU2kxdmQ0VE9q?=
 =?utf-8?B?Z1dpTXJXQm1DalM3Y21EdHBNMGhKcTM4M0VuZENMa2QzdVlsUEdYU3Y1SUN3?=
 =?utf-8?B?THplVmV5bEZyeE5pSDdFYmZDWTVKenVPRnh5em8xV3FabDJ6OTJIZWNVSnBN?=
 =?utf-8?Q?Q+GsgtkCXTT31NxUcmreieQ+Sr2jM7FlGBTQALPnNrcZu?=
x-ms-exchange-antispam-messagedata-1: 6yqb88X8+J7wKcpyEiVB5LRdnGi/kzNzWGA=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F96A8E36EB0EE48ACF36D9B2C285536@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7d147e6-aa2f-4a55-b74d-08de79184cb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 11:30:40.5643 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /9pkMz3VzMMgiKpb3UKa2iL3nb2lZR705yij5BdSQReZr1wzv5YnXal0rWHZdKDjC4n4mmjbFE6uHP3DJ8MEh14vPRvus15/Iyj3lPguL8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4914
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
X-Rspamd-Queue-Id: 43F901EDDAA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.51 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:?];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_SPAM(0.00)[0.996];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:email,lists.freedesktop.org:email,patchwork.freedesktop.org:url];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_DNSFAIL(0.00)[intel.com : query timed out];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	R_DKIM_TEMPFAIL(0.00)[intel.com:s=Intel];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gVHVlLCAyMDI2LTAzLTAzIGF0IDA0OjEwICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToN
Cj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBEaWJpbiBNb29s
YWthZGFuIFN1YnJhaG1hbmlhbg0KPiA+IDxkaWJpbi5tb29sYWthZGFuLnN1YnJhaG1hbmlhbkBp
bnRlbC5jb20+DQo+ID4gU2VudDogTW9uZGF5LCBNYXJjaCAyLCAyMDI2IDg6MjggUE0NCj4gPiBU
bzogTXVydGh5LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gPiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBO
YXV0aXlhbCwgQW5raXQgSw0KPiA+IDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT47IE5pa3Vs
YSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsNCj4gPiBIb2dhbmRlciwNCj4gPiBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0h2MiAy
LzJdIGRybS9pOTE1L2RwOiBSZW5hbWUgYWxwbV9pbml0IHRvDQo+ID4gYWxwbV9pbml0X2RwY2QN
Cj4gPiANCj4gPiANCj4gPiBPbiAwMi0wMy0yMDI2IDE0OjEwLCBBcnVuIFIgTXVydGh5IHdyb3Rl
Og0KPiA+ID4gSW4gdGhlIGZ1bmN0aW9uIGludGVsX2FscG1faW5pdCB3ZSBhcmUgcmVhZGluZyB0
aGUNCj4gPiA+IEFMUE1fQ0FQQUJJTElUSUVTDQo+ID4gPiBhbmQgc3RvcmluZyB0aGVtIGluIGlu
dGVsX2RwLCBzbyBhcHBlbmRpbmcgdGhlIGZ1bmN0aW9uIG5hbWUgdG8NCj4gPiA+IF9kcGNkDQo+
ID4gPiBzbyBhcyB0byBhbGlnbiB3aXRoIG90aGVyIGZ1bmN0aW9uIHN1Y2ggYXMgaW50ZWxfcHNy
X2luaXRfZHBjZA0KPiA+ID4gcmVmZXJlbmNlZCBpbiB0aGUgc2FtZSBmdW5jdGlvbi4NCj4gPiAN
Cj4gPiBSZW5hbWUgbG9va3Mgb2theSwgYnV0IG11dGV4X2luaXQoJmludGVsX2RwLT5hbHBtLmxv
Y2spIGxvb2tzIHRvIGJlDQo+ID4gb3V0IG9mIHRoZQ0KPiA+IHBsYWNlIGluIGludGVsX3Bzcl9p
bml0X2RwY2QuDQo+ID4gDQo+IEEgcGF0Y2ggZm9yIHRoaXMgaXMgYWxyZWFkeSBmbG9hdGVkIGJ5
IEFuaW1lc2guDQo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC82ODc3
MTEvP3Nlcmllcz0xNTY0MTcmcmV2PTQNCg0KeW91IGNvdWxkIGFscmVhZHkgZG8gdGhpcyBpbiB5
b3VyIHBhdGNoIChzZXQpLiBJLmUuIHNwbGl0DQppbnRlbF9hbHBtX2luaXQgYXMgaW50ZWxfYWxw
bV9pbml0X2RwY2QgYW5kIGludGVsX2FscG1faW5pdC4gTW92ZSBlZHANCmNvdW50ZXJwYXJ0IGFz
IHlvdSBhcmUgZG9pbmcgaW4gdGhpcyBwYXRjaCBhbmQgdGhlbiBtb3ZlDQppbnRlbF9hbHBtX2lu
aXQgaW50byBpbnRlbF9kcF9pbml0X2Nvbm5lY3Rvci4gSW50ZWxfYWxwbV9pbml0DQppbml0aWFs
aXppbmcgdGhlIG11dGV4IGFuZCBpbnRlbF9hbHBtX2luaXRfZHBjZCByZWFkaW5nIHNpbmsgYWxw
bQ0KY2FwYWJpbGl0aWVzLg0KDQpBbnl3YXlzIHRoaXMgcGF0Y2ggaXMgY2xlYXJseSBmaXhpbmcg
b25lIGlzc3VlIGFuZCBub3QgaW50cm9kdWNpbmcgYW55DQpuZXcuIFdlIGFyZSBub3cgdGFsa2lu
ZyBhYm91dCBleGlzdGluZyBwcm9ibGVtIHdoZXJlIG11dGV4IGlzDQppbml0aWFsaXplIGluZiB3
cm9uZyBwbGFjZToNCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBUaGFua3MgYW5k
IFJlZ2FyZHMsDQo+IEFydW4gUiBNdXJ0aHkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+
ID4gUmVnYXJkcywNCj4gPiBEaWJpbg0KPiA+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQXJ1biBS
IE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jIHwgMiArLQ0KPiA+ID4gwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmggfCAyICstDQo+ID4gPiDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmPCoMKgIHwgMiArLQ0KPiA+
ID4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+
ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2FscG0uYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYw0KPiA+ID4gaW5kZXggYjMzMzRiYzRkMGY5Li44YmE3NDYzZDdmZTEgMTAwNjQ0DQo+ID4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+IEBA
IC00Miw3ICs0Miw3IEBAIGJvb2wgaW50ZWxfYWxwbV9pc19hbHBtX2F1eF9sZXNzKHN0cnVjdA0K
PiA+ID4gaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gPiDCoMKgCQkoY3J0Y19zdGF0ZS0+
aGFzX2xvYmYgJiYNCj4gPiBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKGludGVs
X2RwKSk7DQo+ID4gPiDCoCB9DQo+ID4gPiANCj4gPiA+IC12b2lkIGludGVsX2FscG1faW5pdChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gK3ZvaWQgaW50ZWxfYWxwbV9pbml0X2Rw
Y2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiA+IMKgIHsNCj4gPiA+IMKgwqAJdTgg
ZHBjZDsNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5oDQo+ID4gPiBpbmRleCAxY2Y3MDY2OGFiMWIuLmEyNGE3YTAzYmRhYSAxMDA2
NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5o
DQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0K
PiA+ID4gQEAgLTE1LDcgKzE1LDcgQEAgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsNCj4gPiA+IMKg
IHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7DQo+ID4gPiDCoCBzdHJ1Y3QgaW50ZWxfY3J0YzsN
Cj4gPiA+IA0KPiA+ID4gLXZvaWQgaW50ZWxfYWxwbV9pbml0KHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApOw0KPiA+ID4gK3ZvaWQgaW50ZWxfYWxwbV9pbml0X2RwY2Qoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCk7DQo+ID4gPiDCoCBib29sIGludGVsX2FscG1fY29tcHV0ZV9wYXJhbXMoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IMKgwqAJCQnCoMKgwqDCoMKgwqAgc3RydWN0
IGludGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+IMKgIHZvaWQgaW50
ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
ID4gPiBkaWZmDQo+ID4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMN
Cj4gPiA+IGluZGV4IDE1NDQ3NThjMGJiYy4uNGU5ZGY4OGI5MGNkIDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gPiA+IEBAIC00NzQ5LDcg
KzQ3NDksNyBAQCBpbnRlbF9lZHBfaW5pdF9kcGNkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmlu
dGVsX2RwLA0KPiA+IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rvcg0KPiA+ID4gwqDC
oAlpbnRlbF9kcF9pbml0X3NvdXJjZV9vdWkoaW50ZWxfZHApOw0KPiA+ID4gDQo+ID4gPiDCoMKg
CS8qIFJlYWQgQUxQTSBEUENEIGNhcHMgYmVmb3JlIHJlYWRpbmcgdGhlIFBTUiBDQVBTICovDQo+
ID4gPiAtCWludGVsX2FscG1faW5pdChpbnRlbF9kcCk7DQo+ID4gPiArCWludGVsX2FscG1faW5p
dF9kcGNkKGludGVsX2RwKTsNCj4gPiA+IA0KPiA+ID4gwqDCoAkvKg0KPiA+ID4gwqDCoAkgKiBU
aGlzIGhhcyB0byBiZSBjYWxsZWQgYWZ0ZXIgaW50ZWxfZHAtPmVkcF9kcGNkIGlzDQo+ID4gPiBm
aWxsZWQsIFBTUg0KPiA+ID4gY2hlY2tzDQoNCg==
