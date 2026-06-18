Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ck3gIGS6M2opFgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:29:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D820E69EDF5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:29:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=m7wX3Mtp;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68BC10ED4C;
	Thu, 18 Jun 2026 09:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FDA110ED2F;
 Thu, 18 Jun 2026 09:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781774944; x=1813310944;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=v+SdWupzSVALvXcp6quhoa2QOOFh+TySSQbFEXgTdKs=;
 b=m7wX3Mtpjg4SIPa1Kiv84BEQM/DPPV47OMVDmgYnEkngv2BRuww3CyFb
 zXpldC1Wd/lD5z467N1/8TTz13i8PvEw6BfGNFVpNGDFs1KFgnzFHPXXT
 DN/mr3NbI2snL/OxuncL5X/ULWtAUFsLaeozhpVh3GAA5mOfgaZPsjf0s
 3BHAHn8cxXsNy8GRhI14vRjWIhF2ntklWjZ5LG9gnSCmAoIAXGaWV76G6
 VsVStSuWGgrAq9ktlVpB+yCdjH1S+haOOLAwPN/iMb/wmuc32F1mZwzm6
 1E4rxqjLCTod+QAkru/NIMuYc73MOvE4byS+3wthHi/DUPCRkg7Lh7lJp g==;
X-CSE-ConnectionGUID: bOmNJdibQCGuqoDqX2ATWA==
X-CSE-MsgGUID: x1Ys8f1MQmy9WLYO4RwfpQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="81711447"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="81711447"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:29:02 -0700
X-CSE-ConnectionGUID: VyQfScTfQ7mrsGxxj1Xsjw==
X-CSE-MsgGUID: +PHCOL1mTWCKIwDsSuapNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="272399050"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:29:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:29:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 02:29:02 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.69) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:29:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MH8lCtI1LLAydHVxyq+tWZJhSIL41hTgRjzuLgea474O5HX+Jr1jrvsnoLl2EoKMaM61sKLNoVrCKW/onQnFlaOeHoGvyMMHdu+8j6xBhoPUwZQaPG138/qhpkBECxi/Im/RTtmqXyIv2rNcSTKNBiXXqCH2B34ozL8CK1s55XXAc3WAm696s860ChRc3Zy6Z++kIIfGib4V466bqjQ+ln5NWO0S20vvQb+Ru6SUjkun2lbCmSw5p6m3jAI9FWdRxjwd/WoYTJjxvBQvCIG75RuHcrADoHZf2jOS+LcAOFnwdlQKIqxN99vjvSWx/LGzmzrf8xH3352O6xZVLJtEaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+SdWupzSVALvXcp6quhoa2QOOFh+TySSQbFEXgTdKs=;
 b=k7VayL6okiqIcUZQ07GTu06LhTwjXKkY4CS5ZtGhs0fixbrt5PjA/xOdx4UeUAJfTB8P/NV3l5/KJDCZP1muqr27/WE65bEtwTSrmGPa5kfdMQR6SelnnR03B+j/VLaM4kt+u7cvjqNgzctbihSSNZaf6Z7AQGlBys6Vs5yiW8oG0XZmHf0TRTggcchHMrT9tO6skD9QQJ4HPw1FffyZgt1eY0TnOpm5S2pNOhCWYhKh9w5ddp3cXjL4qZYdKQnpOc3tFTsxOgn+qx28tvpQrM5TH5GbhbR/ifivZQWmD8rbB00HHZQuif1WnUY/D0c3loOXv3qXvcottKaPpmh2MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CH3PR11MB8517.namprd11.prod.outlook.com (2603:10b6:610:1ad::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Thu, 18 Jun
 2026 09:28:59 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0113.015; Thu, 18 Jun 2026
 09:28:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 2/3] drm/i915/psr: Detect possible ALPM errors on Panel
 Replay as well
Thread-Topic: [PATCH 2/3] drm/i915/psr: Detect possible ALPM errors on Panel
 Replay as well
Thread-Index: AQHc+iz/hd+Ks2vZ2kOP6OOsnl8hLrZEFT5A
Date: Thu, 18 Jun 2026 09:28:59 +0000
Message-ID: <DS0PR11MB80496FB56F3D17298D25C0F9F9E32@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260612053249.246878-1-jouni.hogander@intel.com>
 <20260612053249.246878-3-jouni.hogander@intel.com>
In-Reply-To: <20260612053249.246878-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CH3PR11MB8517:EE_
x-ms-office365-filtering-correlation-id: 04556a32-7a65-4767-0550-08decd1c06e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|23010399003|38070700021|22082099003|18002099003|4143699003|56012099006|11063799006;
x-microsoft-antispam-message-info: Dkil4A5F0uuLHfxePwwXcplVwU4kK7P40RvLv4hNMoxIcDQC6LU+zbwDq9Fskrlc6QpEtBCIOaRMqmW9BhQcLGC0yVrLCQbrtp2RGLMrzQv5gFyDpKVsuyLxQ12g3z9ZRHPkHdjPPq7zbC0r7Kh2GVj48+NZC1BiLcLRHamV+RxQ/8I0jY4jOfYL7iksECYZ5ImXOt9fWoCdiysGYh8TGadewZjVP3JLWH5RDlxosO/W5a5/0JTO1uadFJlyI7/+XdvTYYDMdQrw7C9ae43ilfrqJimxa2RN/WF+YWbj0Q5gT0BzpvRVIjbZK5wf6IiDckZBvMkfs0kai0HvesDpW++QTrAf1FgB4HjclSBd59G3wmtJ4hZ2ePCgyvqSBcrLICfqGhMBbihRqJxdoUuR7vnVwiqNwK7JC5/RO/s82E9TLEsdi7XkzpUZMLo726LnddCXCtnIGvyESc6FNkogw9QkaSTZplWlW92MgF6w/DwSgmaDm+L2em+7H+d9oqPzndWekh9jp7gccb1c2I7wMKdeBxo9tav3/M4VyGDmv/JIzu8rA66ZloosH8idUyuKSnVqBbKuwQJGq4LA3D2CYnD1qnNrErIMxNzLrbfxkAhK00c+YXApHbPazulGSfSFipKvZfjKu+1qR04ketFcf5MwFGOXjpfuc9y6ulKrhmEyQoSBoUMTrXjTj7JNVbdFO9dBXA3Xz/vpP1EALS5rXw9MiAjQKl4LdNuLXecJAUb9WmP12yIt7v0ilZhThRhE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(23010399003)(38070700021)(22082099003)(18002099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VTk1eWladTdOVUhUK2lZZGxlcUJ6SE1hWjgxbVVRb29rQ2xhYkg3TEJhWXRX?=
 =?utf-8?B?ZmdIcUEyandqSFA0bWZjN3RYamtsVnpCZzlEMEhVMjlXNWFRZ1JPM0VyMnpx?=
 =?utf-8?B?K05hRTYrdGpVWWNIRnVTU2E5NE9jWGtsbDVxMXNhM0h2VjdsMzFqdFNoR2xl?=
 =?utf-8?B?UzJDM3JmblJ1YjVHZ25IUEhsTS9HME80aHIyTEc5VE9vT1JSZFEveFdOVE1E?=
 =?utf-8?B?dzVwZ2s0NzErZ3hNc2tZUjgrWU12KzhzRlJZU3Bjd1ZmbWREQ2hxUFBZV3Nj?=
 =?utf-8?B?aXova2JraE5qMTV0TElQVUM3WTMvaVI3YUp0eEF1SkxnOXNCbVdGUmJiUUsv?=
 =?utf-8?B?ckc1dFdadXNRaU10M0I0ZFVTQWp6MmpoWHA2RXVCazRQRUxHZ25ZOGxpVzhS?=
 =?utf-8?B?U294KzZFOERBZE5nbi9XTG54eXdKSjhVR2tIZWtxYzlCTGZBSGU2N3Y0MjR1?=
 =?utf-8?B?aU9Sd05wdjRXT1FoMi9sNGlFTHpuUlVaSTRUUUdwbWFNZEsyVDUramhBMHo3?=
 =?utf-8?B?a01KcWJPekwvdERUNEZ4d0oxSWRJUnFaNnJ6UG5Hb3RPUnNpVHJiZEdWRmxI?=
 =?utf-8?B?Q25lcHNoWGI4bGRYTW5WTisvTHhKUGw2M0xyQm9qQ1hzVml2TzNtWkRwNk1v?=
 =?utf-8?B?cUNMTU1SVGNsaDE5d2FUdGl3R2xRaGtEeklRMm9WWUFlanV1azRncDdOZVJP?=
 =?utf-8?B?NTdDSEF2c2NDVDFMRW1hVWpJZGVjcXRlRWZKQnE1ZFhzUFZ3RWl3SXJCeHdJ?=
 =?utf-8?B?MWxWRm0yaG1tQW1HaGN1TUF6aUpNaGlVaDdrM2k4a051aGptRW0rU0dRdGRT?=
 =?utf-8?B?ZjlYOVJiOExjQ1hkV3gxSCtHd0VxOUkvQVZBR09KbmxMUndqazYxWWh3VDlk?=
 =?utf-8?B?Vy80emZrajRPUXBGSDl2WGFVT2RjU0lOZVhuUi9ZNUVrMlpBUWFrYXRzdW55?=
 =?utf-8?B?YjlXWG82SXRXTUh3MlZBVERZNExMM0VJMnN4dlM3UXVYVHJ3SFcyaCtSVy9y?=
 =?utf-8?B?RFBrYUxrNTg4ZFlVVjBnaHV5cEJ3M1AwRmdQNUl1UjN6TEFHQTl2OE9TMjJY?=
 =?utf-8?B?eVNBY0J5OTZDYnRnN1JmRy9ZNWltUVhaTndRN3dMM1hqanVaTDYxYVBBWjV4?=
 =?utf-8?B?Vi9XS0U2WlJTTkFPSGhVUW9taE8veVRVUWRPQVJTcy8vcmRJWjArN3QvRkhx?=
 =?utf-8?B?dUQyZElPYXBOY1cvTFB4eXFQalV4WFNpTW9vWCtuSUFZMWJMNzdpODVUQ2k3?=
 =?utf-8?B?VVE4WGtRemxoTXJRcWZvZ2VxVWs3T1loOU5ZODAwZTNCS0F2b0dHVlB5b0ZM?=
 =?utf-8?B?cEVhalF3NW51Y1hPbmVKY1pBMnhiWkVCWkJqdW5HaHl3U0Z1Nmt3TjZoVlcz?=
 =?utf-8?B?V3poa1dGMWYwQkdCOHJDYzRnUzBzdkhKYnJYZmNZRjdkM3lmU0dNWHQzV0F6?=
 =?utf-8?B?NGlhM0J6MjZiaXlRd0ZTbzc2NE5VNXhOMTdSVDBRZUlpeXZ3VmdJanZKd1Vr?=
 =?utf-8?B?dUI2WU9CWkFncWRFY3ZRL3FXSm5nQ012enc1eFAwQW16bEtncnVrSHpqSEVS?=
 =?utf-8?B?dHpQOHJoQ005YkRsZld2TndCYUN0Vm1BRGlnOWhIalBEbklkcEZVYW0zT3E0?=
 =?utf-8?B?dmx0YUQrb2IzaXgyVHRCY0xLaTJTTDh6OVRvdjBHTnFLcmJHUzJKcG1NTkhG?=
 =?utf-8?B?Nk9hWk4rUEFTb1hrUC9BRzhNbFp2ZHpBaTZKM1dVb1EyaElyRDluaXAzMWVo?=
 =?utf-8?B?T3BwaWJaWktIYlpuSkdwK0R0OEFnT3U4MEk3eDFKY05LSUk2WEdMcWFxZUFs?=
 =?utf-8?B?b0dtT0hibzhJeWlyRWdONjZLUmdtbm5GSDBNYlpRMnl3VmJkUldNL0RCekVK?=
 =?utf-8?B?Y3QxVG1sRWlWbDJoZFpRM05QaWJzbHFvL1cwQnk4WjBuS2J3UlpsV0puNXpj?=
 =?utf-8?B?YWEwamFFSzdyNmROSzdKdC82dmlLSG85L08xL0lDV2R1ZnRQcGhQbDBMeTd2?=
 =?utf-8?B?WGJSL3VqZWVFc3Zubk5EbHZEY3hDZGw5elNTVWhKTGpub09jUGpvOHlyUEJ1?=
 =?utf-8?B?bGpQQW5melF3Q3pBTFNRSmpTM0dZam5LUUZNZkhTRmVEem9VL0tPc05pOUts?=
 =?utf-8?B?VDAwSGZqQmgzcnQ1K2NRNmZCOStpR0NlMWtPUlp4T1hXVVVwMkhiYUFSUkJX?=
 =?utf-8?B?dXRqNUhVNjFzdWJJWlBydy9XWXNhUnh2d0xNdXY0WGtkN1NGK1o0TjZNZjRl?=
 =?utf-8?B?V1NGWXJuOGdNQVBXQVpJRHplclovYlgvczd0c0FzeDNsR21aNnVQNm0ralRH?=
 =?utf-8?B?ZnovSXNTb0hMdVU4SWp5Vy9nVGxvTW1XSVFEMEE0Q2JZTG9xRXczdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: K6/Y4AKsGghH/kHoIjZvU8ZKfNtGnuR/ZKKsuit/UWkLppdbSspAxv4P1mlZAVvxnqsVX7JVpSXrGyZCH5Li0c/AExZPmelHwpeHlG+/knlZyZIMvWwYBnXbLBHLYncpWjNbW4V0rSvwJD/vExKCrctip+Rn9ah7+K8frIn8q1iv83V7uHdEUT1yt0cQExZU+bzSip9++LtfbOwBbktoKuDAXoumSySmASK3I4TGTdn1lgJbSzI1NSgmYvTpA9TBwinhLegEqYg6+U6ybXJfCmKFEdPwf70ZV6++OcxBbXdGfv8KInCz4FIAtXFZROmG88E59JMzwaNzyWrH9EDvBg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04556a32-7a65-4767-0550-08decd1c06e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 09:28:59.1307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X05YbnDOaT5/PTf5dE8NfXouBUyZNh8zSz9wThwMURjWkx/v9G1OUwHYPepNQzCegYqVJaTgq79VNZ9vtJRufA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8517
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D820E69EDF5

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBKdW5lIDEyLCAyMDI2IDExOjAzIEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBbUEFUQ0ggMi8zXSBkcm0vaTkxNS9wc3I6IERldGVjdCBwb3NzaWJsZSBB
TFBNIGVycm9ycyBvbiBQYW5lbA0KPiBSZXBsYXkgYXMgd2VsbA0KPiANCj4gUGFuZWwgUmVwbGF5
IGlzIGFsc28gdXNpbmcgQUxQTS4gQ3VycmVudGx5IHBvc3NpYmxlIEFMUE0gZXJyb3JzIGFyZSBk
ZXRlY3RlZA0KPiBvbmx5IHdoZW4gUFNSMiBpcyBlbmFibGVkLiBEZXRlY3QgcG9zc2libGUgQUxQ
TSBlcnJvcnMgYWxzbyB3aGVuIGVEUCBQYW5lbA0KPiBSZXBsYXkgaXMgZW5hYmxlZC4NCj4gDQo+
IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29t
Pg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDYgKysrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGluZGV4IDk5ZDM1N2JmZDg0YjcuLmE4NDhjNTdlNGNlNWQgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMzg2Niw3ICszODY2LDgg
QEAgc3RhdGljIHZvaWQgcHNyX2FscG1fY2hlY2soc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9k
cCkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gDQo+
IC0JaWYgKCFwc3ItPnNlbF91cGRhdGVfZW5hYmxlZCkNCj4gKwlpZiAoKCFwc3ItPnNlbF91cGRh
dGVfZW5hYmxlZCAmJiAhaW50ZWxfZHAtDQo+ID5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQpIHx8
DQo+ICsJICAgICFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiAgCQlyZXR1cm47DQo+IA0K
PiAgCWlmIChpbnRlbF9hbHBtX2dldF9lcnJvcihpbnRlbF9kcCkpIHsNCj4gQEAgLTM5ODAsNyAr
Mzk4MSw2IEBAIHN0YXRpYyB2b2lkIF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwDQo+
ICppbnRlbF9kcCkNCj4gIAkvKiBjbGVhciBzdGF0dXMgcmVnaXN0ZXIgKi8NCj4gIAlkcm1fZHBf
ZHBjZF93cml0ZV9ieXRlKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVTLA0KPiBl
cnJvcl9zdGF0dXMpOw0KPiANCj4gLQlwc3JfYWxwbV9jaGVjayhpbnRlbF9kcCk7DQo+ICAJcHNy
X2NhcGFiaWxpdHlfY2hhbmdlZF9jaGVjayhpbnRlbF9kcCk7DQo+ICB9DQo+IA0KPiBAQCAtNDAw
MSw2ICs0MDAxLDggQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2Rw
DQo+ICppbnRlbF9kcCkNCj4gIAllbHNlDQo+ICAJCV9wc3Jfc2hvcnRfcHVsc2UoaW50ZWxfZHAp
Ow0KPiANCj4gKwlwc3JfYWxwbV9jaGVjayhpbnRlbF9kcCk7DQo+ICsNCj4gIGV4aXQ6DQo+ICAJ
bXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiAgfQ0KPiAtLQ0KPiAyLjQzLjAN
Cg0K
