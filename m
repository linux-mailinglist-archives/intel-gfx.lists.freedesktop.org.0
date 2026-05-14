Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eCWAMj9lBWoZWAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 08:01:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCB653E2B0
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 08:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F3010F10D;
	Thu, 14 May 2026 06:01:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U/zk/Euz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09F7310F10A;
 Thu, 14 May 2026 06:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778738492; x=1810274492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=l6S177hp6j0YU+kkC45JKRXKKaJpuwojHo/aL449q+A=;
 b=U/zk/Euz5UsRi1AmRQVvs4FAhMtuOzUUdmOAA4IlKvvE5gleSOuvUN4M
 XaEldKQVK4NSAR3RHwaPX+Rk1jH9lcmTrSwp4py2890gW8wDJal893T2i
 aa74fxvrkWDOMle4Jm2n6/ywIaLoGdXctaeX/KhIoBEKoK9U9jVO3BA/w
 vR9gGbQ+lzV5K0nVA/E882gi2rL5L902aP51G2RWKJWy36FCVIN0OHTaU
 bjhP/Kj+bfeRpHHfzDS/7uZp/HP0JpMf/4Fs5e7kd5wteSI/FbQHpExW8
 wMgm9h/7LmA2p6/R7y09DVGgzE8KGDbTtVAyAonK3Tf/R0o53CcoiYtbI g==;
X-CSE-ConnectionGUID: QPbbN862RvaAuxFZeou7QA==
X-CSE-MsgGUID: G7oMpkINQaqVjhRhzt9o3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90250724"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="90250724"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 23:01:31 -0700
X-CSE-ConnectionGUID: PpO4tsydReeDEIFqsIRsRg==
X-CSE-MsgGUID: eYRxcf1ZT9WJLgnXra3QQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="237311687"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 23:01:32 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 23:01:30 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 23:01:30 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 23:01:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b0+x5S+A6c2GaU4nIV1fZJmXpfsGSTjroIqjj8wSWtl0++6t+YBTV8CXsesD8i/2lbkLNuUuTxQUxLTKkwCAL+51AuBFr/mZM4zmiTtEYlawdjFTU8VsoiG+8o8YS99dsWk+fnv77G8D1fugs/mcadSuZjYq29GRR4cXB3zNZFQiF8fkBAyxuT6SnT7OsW7wAnOm3iTA7CAIUCZsPej2UoXl6KdlQIYqBa7RKvPp2y2SDxxp2spZOfHhsJ9DP1QsIkt3yN0nV9icGptAqSCvqZHz2diCn+Al/952LBXFAW4LxtO1eb+gt2jaQK6JBQtHpieZrXjnjeaMY50yoLMgVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l6S177hp6j0YU+kkC45JKRXKKaJpuwojHo/aL449q+A=;
 b=ZXcqlRtOMPZz4Vlm3+ffoZXLp1BLsJhdLFsCp5yNRYv4cWZirJ78FeNy0V1vmCLoMX3xjCvqOgiS0ODBDHmTiUEBd7YzA+HkgC8PIwA16xuggRV3SosFIuFvROMXb4pA8fVfodSHkAx4la7JrM8O+l9D+M/O2Mgzh/6PGGIXIWL0eWe2tEfxFnhaGdsM3dlA8og4UGj0EQuMjUeM9nqGPlYEtxg+p4wJlRCE7OvP87Ojd3IGDn52yEKL62UHNW2jqhzbeR77XVHO4DvMGTxnwDlkMaOXUmoab5R4HxE9GbMLvjzEBgQCbgV+sS/7iU6wzE9zyRpXUcR8CAy6ChCxFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB4862.namprd11.prod.outlook.com
 (2603:10b6:a03:2de::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Thu, 14 May
 2026 06:01:22 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 06:01:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/4] drm/i915/psr: Add defininitions for
 INTEL_WA_REGISTER_CAPS DPCD register
Thread-Topic: [PATCH 1/4] drm/i915/psr: Add defininitions for
 INTEL_WA_REGISTER_CAPS DPCD register
Thread-Index: AQHczJprMbwjYxD37UecmV8fhyAUDLYNNMYg
Date: Thu, 14 May 2026 06:01:22 +0000
Message-ID: <DM3PPF208195D8D7B1D2729B0B46B45BAF6E3072@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-2-jouni.hogander@intel.com>
In-Reply-To: <20260415054000.400070-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB4862:EE_
x-ms-office365-filtering-correlation-id: e26f328c-2e55-48f9-bb1f-08deb17e39ba
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|4143699003|18002099003|22082099003|56012099003|11063799003;
x-microsoft-antispam-message-info: 1rbeGVs1nzrKU7A9YzVuWxeOyDkg2C16RZrApbECmkmODBKi2FwtmXpoTXHHkLgJsWR3ZxoKbHHtpdcylEG+00ytlEk7KQ+VExX7KHOycLgPH1XP+2k0GYJY8+Xo0Xuoy8loljvZRkaW+QQMjbrEd9mfBWeLjbklQ1zreAi/f1qTyxVq4950ppCxDstBTBRlw8KgCxqBpVLVTGFaVy06s64QpXVBVW/85r7awPITlauD6yuxxzUTOddjCbG7/FmZMNbXTkrqOV0EZT75mXqNaI/sonjlHd0zOqbOiszIMGbBrv3hpIK1OsuTc8kBoNTl1C9dmBBNnm4OGO7ExivVcCDsfGe2dElQmb6hpgsShPM1nbP+g1WeXns85hWYeOEcL7yRebPCjHsGXtFa/pbTFasUCcBNtOoJ4OIOxYf6rO7NtxxZlDGI1+EfU567UdnxneeHjGc3OuCsc71gyyoMcYQUy4F2x5ys631sB7kekxmw9n+8ZIfwC41bNe/m++I77DamgBhjy/OwYf4F9vhuzCbHwX/2x/+jANVeBsE/CdXOVxhKz9TWkWngreGKcdryEQFpldA2k8gfC3FBEsee8sHBsJSy7JCR4DigrH+foLRF4aEk39rWGDgnv1yEaCNmvVhpyLEFXDq7PUt/tBOvkKsPxxJ2g78xSrWUlFoRPCZA02/KUFBWO/54WjLqcxf0fRjzHq1WcLBbPJmxlQPywrw5rgVEnJXfB9BzT0qqxUseBXZ6qps5t0P1qGSkZpBf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(4143699003)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WmF4SnRvNFA2MmVLdjc4RGlDQ0JPaFRsaXZLZnZPNmI1dGFRWWo1dUJKcWNp?=
 =?utf-8?B?RFpBWDNkUVo2WnVmWlAzejZpWmlMMnF4aDlxTTZNa0lRUlFLdkFyNnBlSVI1?=
 =?utf-8?B?SUNHUnlQL3VlZHl1anVlTWgyUzRvK0VzZ0MvTVA3cllTL05mOUJnKzM1SkRZ?=
 =?utf-8?B?anN5bzZ2OGV1WjgvOHJSK0RlVHBEOW5IQWNVdzdMcEl0VHgxZ0VrVnpvQ2dW?=
 =?utf-8?B?VFUvekNpK1JGY2Z6RG5QaEpZNE8rN2IxUXc5SEFpR0ZDdWRKUzhHV000ZzJU?=
 =?utf-8?B?NzExWmF0REkyQnIzelg1bkx5RWVJWEFRcDk5VkxaWGFlM1M2eDVCZGVTNlV2?=
 =?utf-8?B?TEpaLzNmZkRubWxUYzN1dVJPaVJZd2VUU0Y2RlhwRzJmc1RLMG5HT0ZGd2Fz?=
 =?utf-8?B?V1NYRnk5SmFZYlhIMjFGUEFpWmZlMXdOeHR1QWhDY3pNL05VSCthQjR5c095?=
 =?utf-8?B?L1JMYkVJOFFwUlNzbUtzemhpS284WS81azBUNFdTQ0cvQVdOeGRhOENSY0l0?=
 =?utf-8?B?NXZldFZhYnRkYzVINi8vUFdtUDdWN2NDYmVHUy9Fa0dpTzE1Y1pmWGRERFI5?=
 =?utf-8?B?T0hzQVJSWGFIaHVaZGoydjZ0bDlTUTh0WEhmNml2Tm91VkwrekNKOU9QMXVq?=
 =?utf-8?B?amNQU0JKTUJoNG1SYnQ0NGQ2dmhEQ0FWV3JWY3UvWnduQU8rREVKMm1XTVRF?=
 =?utf-8?B?RXhBRWhMVSs5Q3NpVXJuNzF3ZDhhbytLRFlhTDRzOTMyT2xTMGJlTkRGemkz?=
 =?utf-8?B?VUNlc2xEelQ4amRsSi9nSFdEY0FDSndLeDRoVUJnOHJLYmZaK0h0UzMvSVYw?=
 =?utf-8?B?ejFseDNYT1ZGUzQ4NnpPQjlCRE5BRi9YcHNDUStHVWdMVjR6bnlEakJSZk5J?=
 =?utf-8?B?dXhHQmFxQ21tWFBmWHpCS0ZYTzA1TjNpWWNmNmtMQ3R6U0RRQS96WGhveDhw?=
 =?utf-8?B?MG5uL2VDQ1lpNGNhQlM1OVdlU1NsbzRjOS82UVFkMzM2bGdrRkJHckpUQU5F?=
 =?utf-8?B?MVBBWmttWjZZaW5Bcys4ZEovMXdBWllLK2drRWdTekF4Z1JCWm5BQUFvSFAr?=
 =?utf-8?B?RWZuL3VVd3JTRzh3aXFjWms2Y2tJcmlYU0d2MHhqa0pvTDMyMVJCRFJNSDl6?=
 =?utf-8?B?T1BaemtUaGczQW95WEV5aEMyUE9vb2MyS3RzOE41VGVPYjQrdkNFb0Y4Mko5?=
 =?utf-8?B?dE1tK29nZFNsY0daWEtjTmdIWjM5NG92SGlwVzJ5dW1XQXlDY1NQVTBHZzI1?=
 =?utf-8?B?UHczNFlSek8xSTRGVlVTNEJKYmdqT0I2OERCTXg0dXVjR3hHd1JZMTZhRWpY?=
 =?utf-8?B?NStpMHpJaWdEVkhkVWk2aGE5UjFuRWg3eFd6WGJZWGdzYjZzWG9EVWJ1Z3Q3?=
 =?utf-8?B?QjJXRm56azFVTWljTVU2T2I0dm10ZTRQWDZ5WGVkSVhoODdtMER4ZmFZWG5j?=
 =?utf-8?B?bkpJd1h1ZUZwYzQ5aFMxSmd1R0NRWkRsRnl6MkRYMXFYdmZpOWhPcW1LVDVK?=
 =?utf-8?B?Tlp5azhYdTV2U0NnckhkSjVicGRBUTVJakhqK3hyTkd5NlhxalpNYTMrU1Zt?=
 =?utf-8?B?QWt2bVkrdUpJRDZBZzVxdlBFdm5KZ1piU2dGWnZ5Y0o1dkIwb2FWU056cEVI?=
 =?utf-8?B?RDVnQmgvd2lzVGdxSGloL09zNGdDWDkzZHlYa1NhTXJaWnhJdFdHTnhVdFhu?=
 =?utf-8?B?SDBMN1pzc0NqQ2FYYlRGOXhuS3RrVWpxa1VTYkVXdE5lTmJIdUVHUWdMalRy?=
 =?utf-8?B?OWtCT0JYRWxFQlFHRlJMek03RTlZUUFleHF5eFFSdkpQQjZURGVScnNlRlFh?=
 =?utf-8?B?K1ZLS2kzayt4czlxQWI1YnNvM2lDYnVQNGNFd3B3YzgxM0hFRXJCd29ERnBL?=
 =?utf-8?B?SEMvUVd5RkpDM2VBQlBmcUs5aWdKc2FzenFLZE1tTWJla2NQdGZYR2xaa0FB?=
 =?utf-8?B?cDJXNStUZEc1RjcybXEyVVFZQkJNMmppdlJtVjhkbXFqZXZOMXZYZ3I5Z0NI?=
 =?utf-8?B?ZWJlYTcyQlJXY0hmMVhtUnJxWUFjRDNRSCsrQjhkaURndUxtbXNxTy9NY3J2?=
 =?utf-8?B?cWNGM0paTHVVeSsvMm9ieUIzNkt0SnZvT3VGNEw2ZzJJOHRDK21sdy9DYzJF?=
 =?utf-8?B?eEhBNXhKV2tZMlh3T3pPUFhqZ240bGk2Z3B0azFGeHZiRmljUFN6ZkhxTkR1?=
 =?utf-8?B?MXBjdzVTenZLaURWZUJKOTg4bG1VWkdrZWVJNVZnb2E0R05lL2RoaTVRYjBD?=
 =?utf-8?B?bUFjODVuVmY5dUZ0dlpROFR1b3VzdStPYTN0ak9NZGtaNXNqbWFrYlFNY20r?=
 =?utf-8?B?WktQeFpqREZzWmdZZXZPbVJoSElGTm5CNXJDUmJJakJrOE5uUy8zZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ej4ZHhUyybMtJLS1HxAN7c84Bz5TE3azexp8pdmp53p1bbchpEufW0wTc9m2T73pgmeZo1UnTxYJ+5yxzorke2DqPf8ODMMKsx/HQKA/o+ir6xabOU7+wGcx8w6p1YdnunfeinmJmm8xcTceVtusisiMj7n2jFyTwpduWI6HttNuuHA9b7sqi7pXnqq5lbfLhB7c0ZtLn8zl2Splphy5/eH9ZOKKzwW73uQWvzQRg95+faIrvgm8fj4b5Nl8WzYuiFwGrZ2LICjTgDIKtD3Qcq0T3x5rxb9jPkWK24gbWoqeFEYUqOyu0GmaxLQ4dtP1iXvNwYyW6k4DiKnS6e6b4g==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e26f328c-2e55-48f9-bb1f-08deb17e39ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 06:01:22.5439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wqmqCIN6VIUvtB6Ln+FG3jOchAX16GBH8pJdxUKc3pzPLSytKOzwfYlBVD2bPDPLVTBfP0eM5+CK+QUcZihujQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4862
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
X-Rspamd-Queue-Id: 3CCB653E2B0
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBbUEFUQ0ggMS80XSBkcm0vaTkxNS9wc3I6IEFkZCBkZWZpbmluaXRpb25zIGZv
cg0KPiBJTlRFTF9XQV9SRUdJU1RFUl9DQVBTIERQQ0QgcmVnaXN0ZXINCj4gDQo+IEVEUCBzcGVj
aWZpY2F0aW9uIHNheXM6DQo+IA0KPiAiSWYgZWl0aGVyIFZTQyBTRFAgaXMgdW5hYmxlIHRvIGJl
IHRyYW5zbWl0dGVkIDEwMCBucyBiZWZvcmUgdGhlIFNVIHJlZ2lvbiwgdGhlDQo+IFNvdXJjZSBk
ZXZpY2UgbWF5IG9wdGlvbmFsbHkgdHJhbnNtaXQgdGhlIFZTQyBTRFAgZHVyaW5nIHRoZSBwcmlv
ciB2aWRlbyBzY2FuDQo+IGxpbmXigJlzIEhCbGFuayBwZXJpb2QgVGhlcmUgaXMgYSBJbnRlbCBz
cGVjaWZpYyBkcm0gZHAgcmVnaXN0ZXIgY3VycmVudGx5IGNvbnRhaW5pbmcNCj4gYml0cyByZWxh
dGVkIGhvdyBUQ09OIGNhbiBzdXBwb3J0IFBTUjIgd2l0aCBTRFAgb24gcHJpb3IgbGluZS4iDQo+
IA0KPiBVbmZvcnR1bmF0ZWx5IG1hbnkgcGFuZWxzIGFyZSBoYXZpbmcgcHJvYmxlbXMgaW4gaW1w
bGVtZW50aW5nIHRoaXMuIFNvIHRoZXJlDQo+IGlzIGEgY3VzdG9tIEludGVsIHNwZWNpZmljIERQ
Q0QgcmVnaXN0ZXIgKElOVEVMX1dBX1JFR0lTVEVSX0NBUFMpIHRvIGZpZ3VyZQ0KPiBvdXQgaWYg
dGhpcyBpcyBwcm9wZXJseSBpbXBsZW1lbnRlZCBvbiBhIHBhbmVsIG9yIGlmIHBhbmVsIGRvZXNu
J3QgcmVxdWlyZSB0aGF0DQo+IDEwMCBucyBkZWxheSBiZWZvcmUgdGhlIFNVIHJlZ2lvbi4gSGVy
ZSBhcmUgdGhlIGRlZmluaXRpb25zIGluIHRoaXMgY3VzdG9tIERQQ0QNCj4gYWRkcmVzczoNCj4g
DQo+IDAgPSBQYW5lbCBkb2Vzbid0IHN1cHBvcnQgU0RQIG9uIHByaW9yIGxpbmUNCj4gMSA9IFBh
bmVsIHN1cHBvcnRzIFNEUCBvbiBwcmlvciBsaW5lDQo+IDIgPSBQYW5lbCBkb2Vzbid0IGhhdmUg
MTAwbnMgcmVxdWlyZW1lbnQNCj4gMyA9IFJlc2VydmVkDQo+IA0KPiBBZGQgZGVmaW5pdGlvbnMg
Zm9yIHRoaXMgbmV3IHJlZ2lzdGVyIGFuZCBpdCdzIHZhbHVlcyBpbnRvIG5ldyBoZWFkZXINCj4g
aW50ZWxfZHBjZC5oLg0KPiANCg0KV2l0aCBKYW5pJ3MgY29tbWVudHMgYWRkcmVzc2VkIExHVE0s
DQpSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQoN
Cj4gQnNwZWM6IDc0NzQxDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmku
aG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBjZC5oIHwgMTUgKysrKysrKysrKysrKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBjZC5oDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGNkLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwY2QuaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAw
MDAwMDAwMDAuLjY3MDUxM2ZmNTU1Mg0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBjZC5oDQo+IEBAIC0wLDAgKzEsMTUgQEANCj4g
Ky8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8NCj4gKy8qDQo+ICsgKiBDb3B5cmln
aHQgwqkgMjAyNiBJbnRlbCBDb3Jwb3JhdGlvbg0KPiArICovDQo+ICsNCj4gKyNpZm5kZWYgX19J
TlRFTF9EUENEX0hfXw0KPiArI2RlZmluZSBfX0lOVEVMX0RQQ0RfSF9fDQo+ICsNCj4gKyNkZWZp
bmUgSU5URUxfV0FfUkVHSVNURVJfQ0FQUw0KPiAJMHgzZjANCj4gKyMgZGVmaW5lDQo+IElOVEVM
X1dBX1JFR0lTVEVSX0NBUFNfUFNSMl9FQVJMWVNDQU5MSU5FX1NEUF9TVVBQT1JUX01BU0sNCj4g
CVJFR19HRU5NQVNLKDEsIDApDQo+ICsjIGRlZmluZSBJTlRFTF9XQV9SRUdJU1RFUl9DQVBTX0ZB
TExfQkFDS19UT19QU1IxDQo+IAkwDQo+ICsjIGRlZmluZSBJTlRFTF9XQV9SRUdJU1RFUl9DQVBT
X1BTUjJfV0lUSF9FQVJMWV9TQ0FOTElORQ0KPiAJMQ0KPiArIyBkZWZpbmUgSU5URUxfV0FfUkVH
SVNURVJfQ0FQU19QU1IyX1dJVEhPVVRfRUFSTFlfU0NBTkxJTkUNCj4gCTINCj4gKw0KPiArI2Vu
ZGlmIC8qIF9fSU5URUxfRFBDRF9IX18gKi8NCj4gLS0NCj4gMi40My4wDQoNCg==
