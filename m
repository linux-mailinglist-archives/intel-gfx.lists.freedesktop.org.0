Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKvjB0KEoGkDkgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 18:34:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AB71AC86C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 18:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDF4110E9DF;
	Thu, 26 Feb 2026 17:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIZZGcXZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7565910E9DE;
 Thu, 26 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772127294; x=1803663294;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JlMLEwi3EekEGL8aDNMAJOyZkRbUt092NEKKV2NsXe4=;
 b=LIZZGcXZM4EAzd4KWZ/IBY6jWmk3YcobDz72gj+SvFUlBfN7abhhoZ66
 /1FokIQwMdlodbTkMJGcP5HDlRPexjBOevLmkIUd3vPfSRoIxrrtdJ1Y0
 02bXESzfeOpx7i9hAP1+x5qwoNaJOOCWrAbb12ubPuguIenh46jxn5/RP
 Ggy+cJi9XMh7Wm6pAhMNLFdWJsSZSnmp98ekxbCKb+aigOw6N25tjYRXl
 CQx6AoE1+GbDS1+aiwQDAazS4+deJLrE/fNGmNetAujlzc2QFIpw2ukEC
 qu5eD2tbTVwCUlUdJfogIxtROV6EBEZ5Ck+ZLbASglU8mKVp483Lf8Waz g==;
X-CSE-ConnectionGUID: 9gez4J/GSVqDOoA8zRPSKQ==
X-CSE-MsgGUID: t/VWbdlpQ92526KLGhJaww==
X-IronPort-AV: E=McAfee;i="6800,10657,11713"; a="75799133"
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="75799133"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 09:34:53 -0800
X-CSE-ConnectionGUID: QLzGgI3fQJqsQVIR5poXBw==
X-CSE-MsgGUID: opR+1VDaSz+HxWrQsGEdQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,312,1763452800"; d="scan'208";a="221257693"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2026 09:34:53 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 09:34:52 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 26 Feb 2026 09:34:52 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 26 Feb 2026 09:34:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QncNmQhVpUPPd9gbhxCfq9BYFr4PSx2wzxUzBiNKgZ6tFYyOOLBzde4yxOI3nQb4sMlMrFKrsr/X3B++TM9MaIH1tJPQeBnyc0h7NkFsvC8gSpfGmMI+iIepWVKO1U7HZviuKNRI2I9Gwfuhgz8RIxGeUlcF23m2DsciFj0RQyl3LbzEPHe7hHOOZm1TgF1A/ORhYBSZfgZsf3+8n3N7PfnhcuKpHtw9Q4Bvb2nFkrtPTMhRW326A1TwZbvRO0NVdmwJ9Pz4k75wdurgirv/4jhgAPLaRVhfxhFSpNbs9cEyD0lHrffQFBhMN6tXoThes0TlXJn9VKOlACC4YjKDpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JlMLEwi3EekEGL8aDNMAJOyZkRbUt092NEKKV2NsXe4=;
 b=MC4dCU1bYY5mMadhMWpYqfE9znw0wkwaBNBpZGMx64KUOTO3rmtUvQrn8yZODLWE8sRtibm0LBudUYYQbxlTlYWUaafVYmVNmMdmw6HRG1cIz7Ekz2Qj+PHlLOkIytVUL+r6xeOzo3yUnPEm6zICjkd0etkREylp71r6ZG3PAa8G2UQHVUd/X9vtn+0b5Eq29bambFGvWBazhTf91RCbuqHwhDXo1QLtQE8yN2e/lMbWBWzTp575bPUmCpgcOq0VBVwSeCW5cw3gu5w4dpwMMHGe8bqlddbGciNlH396JV4dxhptot785egjgwP9WKmmkpxOV/ofO5muCa35J5W04w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB9526.namprd11.prod.outlook.com (2603:10b6:806:4c5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Thu, 26 Feb
 2026 17:34:51 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.20.9654.014; Thu, 26 Feb 2026
 17:34:51 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] Revert "drm/xe/compat: Remove unused i915_reg.h from
 compat header"
Thread-Topic: [PATCH] Revert "drm/xe/compat: Remove unused i915_reg.h from
 compat header"
Thread-Index: AQHcpxGJmSJGWM1Nb0uUHrvqdCaK5rWU5XgAgABYfHA=
Date: Thu, 26 Feb 2026 17:34:50 +0000
Message-ID: <DM4PR11MB63608D63D684CDD00FEDFDB2F472A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260226113413.2045899-1-uma.shankar@intel.com>
 <31400408b96cea86d7485c1079fdc340f5c64280@intel.com>
In-Reply-To: <31400408b96cea86d7485c1079fdc340f5c64280@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB9526:EE_
x-ms-office365-filtering-correlation-id: 2f825315-cdaf-4b14-2a48-08de755d587a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: JvO9zN3ulldyK9JhEG+9lBrqvfMoSKdSTc2mpjB2T2tiIMkVUUWl+H8WG2b84SdfPlRif7XXle/P/fjNYdDP6InlZSJcunn/q5VdgfDRcrfzRm/ryMSitClDNoCGv7Ukg8nyrn3Qh88IVBLRLyCBTDWqKLI8xy4lRn3k/1+VEoDwphju4IsJffRXMbyuJQyENF0MApiWLwu7npofaiFMkV0RmtAIvsMVcl2bzpvdzKvjGyo78bhNPZnA+BJP0SHM7M5CKcZyqYOn4KwYmitIY2Wdilgype3PuSjo5PJZxTMgTF4N96QKIEUL8Lv50dnb3mk2wyWK/We6yFO8uqq43Nc/K+JCG2I0icEv1TiDF17HanAmqm9ubt9jEdZrR/JjryEj4djodwCLvjrQkRiqhdTOuPOIfEg/IbvmxBlyQHYlEGv1jaA2NREoAJlHwBc++A7nhfbyoaa2SJGgiSzuNykuU2dycTYzcJ5Yf4NF3PmkENy3+2XhDf/wgwhRT6/A+/8Od5n111vh8JDyL4KTieyWbxGgK/zJC4+XRdh+w3QXBeLIXMxnLyZKmyDIPo/pnld5/IVDJnbL29s9LViBHzzSJkEikcSAfhpdXiBjGcE4c9WBKvE1kLvejuORVlt7Q27zAb/TjHAaueZS3SWr/ehIvE2DrI1lHVMI0oNEIHpgRI9fPXpus6eNviIyE/1ouK7vr94sWFIN1poSWqzhxjQun52zvLFDfCZ3m8kkX4a3e1NayaYCt8EKQReDZcv6Boewn5kZmd+9WlUtLSRqzEhe7dCHTknsHdKjPxkxIJs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NE9hNGNKWVdQRWxRVGdjbkpzYndKTWFVKzhSOUJoM1hoV01SdWphaDhwUHZl?=
 =?utf-8?B?bWZSYzNIVUZHQm5Hb1UzeHIwbGVTYkdJSzVhZWk0MjY3UklFaGJFcXRBcWpo?=
 =?utf-8?B?Vm9GUzJxMkROQlAxNFczUGEzdEhienpJQ1ZWYnV3cDVzSmxTWGJMTnUzODkr?=
 =?utf-8?B?SWdSMHFsMDFDenBqc2ZmZ3JXTFNDNENXTEpFWlpmNGVmSkx2MXFBU1FiYkhI?=
 =?utf-8?B?U0tqOUh0b3YzWktVdjdhRFVlZlNDZnlmdmxYVVFDMlNLRmhWR1dFY2NEaHlG?=
 =?utf-8?B?ZFErWWhHV0VkTkNaanpjbGJ3Z3RWMXFRSEo1NERYWm8xKzhNak9zL2dkTlUw?=
 =?utf-8?B?Z1hIMkQ5M3ZzN2lIN3BNS3hJeG9VYjUyU0ZDT1BTYXBzektMS0xJMjFpWTJJ?=
 =?utf-8?B?OXBzMllERnJtVTYwc1QxbzlCZGJJaHpMVDdhV3hpRGNkODY5SXVPV3Rzd2oz?=
 =?utf-8?B?clVCa1ZnRjVaK0xpR2tlMS9Gd0FLWldwYk95RFMyS20rdVBRbnZLVDJrRUxp?=
 =?utf-8?B?NGJmWnVjRU1JNmFONkJHdlVkY3FRVG5OeXBMWHo2OVB3K21hTEtTaVdIU2Zq?=
 =?utf-8?B?MDZncGNFKzNrcU1laUV2eGo3ai9DZmxyanFWUmNjdFVPL2VNZnlNN3gyNWZo?=
 =?utf-8?B?Q29lRXlPczJ4VkR0MnZ1WU1WWE5sM05QZWlNNmdma2lUS0VIbkxLOVh3VzBC?=
 =?utf-8?B?cGkwZFBlOGFhZlVaM0NBRnZjZE0vbENlUTM5WXZhMC9nOXNUVDBaZ21SSURl?=
 =?utf-8?B?R09qckRmTkM5cjllUEovL2t3SXg3YnBWUE9IUXNkZk1UelN6RmdBVnNUN0pG?=
 =?utf-8?B?ZUNPYWVYMUpKeHpLbzdqNEtCUVBha1lXRmg4emtWZVlOZGExQW5EYlgyN1l2?=
 =?utf-8?B?YjQ4bzRTdkEzZGhlUWR6SCtOdC9FM2lUNEZTK1V6U0hWL01ZVFVPVE1xSnkw?=
 =?utf-8?B?THJSM2JVY3I5MlZSaFh1LytPdm9yNXBLbkI4cVNXaWpkMCs2RFFTdFpUQS92?=
 =?utf-8?B?RzlVamxnV3UzYXV2SjRHTTMzdzZCUmp0L213YjRXdHQ2NjFaVHJvSHRCSlNy?=
 =?utf-8?B?M1lSd1A3S0dLM0VUOWttWUozUjZJZUJMOURvd0YvUk9nRmxYdUthK29LSEpU?=
 =?utf-8?B?MGRLc3pxNnVxUHluWlBRanJ6NmNMamR1OCtwT1pMYVJqTkU5dVFyYTRSV210?=
 =?utf-8?B?MVFaWjN3Z0VHRFBnUUZoUlVXTDNqcFF5MzkrNGV5MWF6REJ1TDREWVBybjRY?=
 =?utf-8?B?RW9DYWs3RUl6aHFNTllKUFhYNm5Ma3c4N0ZrTC9scGdMT0tPTUZ0MHB1bEYr?=
 =?utf-8?B?Nk1TeWM5ejB0ZmN2Z3hSaDhoYVNjR0paeEtmSkRQOU9CK3N3UkFhYmplbGYr?=
 =?utf-8?B?cm5mK3BWK0JuRVBUR1d3NFk2VWo1VVQ4aHdwa3A2ODRVQ2NPTGZTSDBOeDRS?=
 =?utf-8?B?YzlCMnhmYmFEWCtKL2IzSjVMSnh5a3FVTUREOHhDQ2QxNFdVUDFaZ0FPRXJo?=
 =?utf-8?B?RVdIYW1iVE5PUU1ZWWRzRVc5dHlPcHJ1YTdQR2JwVjNnTTFkMnJ2aUtueXk2?=
 =?utf-8?B?SE9pYXBRSVdqQmtZYm4yeXExZkJkMloxcTZPU3hkQjlPNFBnY3hONk9nT1Rs?=
 =?utf-8?B?cExPY29YWm9CNzFNQ0FGbkhjOUFxMHdsQU45UzFZMklQbG1jOFg4RXJHam5w?=
 =?utf-8?B?eTRrWUxtbklKKzFuVXhYOTBxZFQ1UnRraExkYm5LQWNKelhPRzVlWTVuVnZt?=
 =?utf-8?B?b1NFb2tjUC92OSt2ZTRYM2o0M0QxQUE5dWtwNy8yazV1SjUwb1AvMmlOaVNW?=
 =?utf-8?B?Nmo5TS9YZE9TR1VxcWl1Um1xdTBSYllueHBGY3lpbjYwZEp1cVFYY3c0Uk9p?=
 =?utf-8?B?RktvTUdHWG5XYm00ZlVuSDZCVnB0WjROK2dhK3A3cE12UEl2bVZlNWtPK1cy?=
 =?utf-8?B?Z1NIZTBBQThYN1BIZ2RKSkx4R2NWSDFUVkUvUzlHNndMR3kvZFFyMzVxVkRt?=
 =?utf-8?B?dHMrRkRGMVFEOStxQ2xzM0d2b1pNdG1rczdUSGNnNFFqN2QzdGo3MDZFRnhZ?=
 =?utf-8?B?eEh3RTQwa3ZVRVE2NmU2SXkydy9iay9BMlVuNnpRbEg4NUFuMmN5MU1BeTFp?=
 =?utf-8?B?ckNacDdKRlZmQ2NnanlqYnllZmpiTllBd1VHTW42ZTNoTXpJaGRsYWhoQlpV?=
 =?utf-8?B?MFRKYlozeWtla1R4MHlIL3MrMFpCSDdxdlNuK1NTR1Q1eHc2NzE3R3JXS2sr?=
 =?utf-8?B?UlVNNDlxREpvYkpZOFZZdXZSQW9aSWFLYWZNMzcxSjRBUFJiRVorS1d1dVJ3?=
 =?utf-8?B?bm9pVzlMS1dnblZtUTZDQ2oyUkR0Z3F6UTVSZWVCR2JJc1kvcndEdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f825315-cdaf-4b14-2a48-08de755d587a
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2026 17:34:50.9386 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zoU/DArL+R7EwE/W6FWyP4h5vZyzRHqkVRsncrXboEH1mmMbBYY6DxTF8sqkkCD9CwDRrwdIsNSLczH7n3VrCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB9526
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 25AB71AC86C
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAyNiwgMjAy
NiA1OjQ3IFBNDQo+IFRvOiBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IFN1
YmplY3Q6IFJlOiBbUEFUQ0hdIFJldmVydCAiZHJtL3hlL2NvbXBhdDogUmVtb3ZlIHVudXNlZCBp
OTE1X3JlZy5oIGZyb20NCj4gY29tcGF0IGhlYWRlciINCj4gDQo+IE9uIFRodSwgMjYgRmViIDIw
MjYsIFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IFRoaXMg
cmV2ZXJ0cyBjb21taXQgNDk1M2Q4MDZhNDIzMDg3ZmNjNDlkNGY4ODg0ZmRlODVjZDIzZWMxZS4N
Cj4gPiBDaGFuZ2UgYnJlYWtzIGJ1aWxkIGZvciBkcm0teGUtbmV4dCwgaGVuY2UgcmV2ZXJ0Lg0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNv
bT4NCj4gDQo+IEFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0K
DQpUaGFua3MgSmFuaS4gQ2hhbmdlIHB1c2hlZCB0byBkcm0teGUtbmV4dC4NCg0KV2lsbCBtZXJn
ZSB0aGUgYWN0dWFsIGNoYW5nZSB0aHJvdWdoIGRybS1pbnRlbC1uZXh0DQoNClJlZ2FyZHMsDQpV
bWEgU2hhbmthcg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUt
aGVhZGVycy9pOTE1X3JlZy5oIHwgNiArKysrKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5z
ZXJ0aW9ucygrKQ0KPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2Nv
bXBhdC1pOTE1LWhlYWRlcnMvaTkxNV9yZWcuaA0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfcmVnLmgNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJzL2k5MTVfcmVnLmgNCj4gPiBuZXcgZmls
ZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uODYxOWVjMDE1YWQ0DQo+ID4g
LS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS94ZS9jb21wYXQtaTkxNS1o
ZWFkZXJzL2k5MTVfcmVnLmgNCj4gPiBAQCAtMCwwICsxLDYgQEANCj4gPiArLyogU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IE1JVCAqLw0KPiA+ICsvKg0KPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAy
MyBJbnRlbCBDb3Jwb3JhdGlvbiAgKi8NCj4gPiArDQo+ID4gKyNpbmNsdWRlICIuLi8uLi9pOTE1
L2k5MTVfcmVnLmgiDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
