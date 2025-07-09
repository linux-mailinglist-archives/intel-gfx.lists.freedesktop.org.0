Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51810AFF0A1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 20:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75C410E10F;
	Wed,  9 Jul 2025 18:12:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DFDTeLR5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C772A10E10F;
 Wed,  9 Jul 2025 18:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752084747; x=1783620747;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=S+kkCi8VB1daMX5SZ6oCbsMmyeVt4G7FVjAjdUWljpQ=;
 b=DFDTeLR5ndzZU2umQqjW/ytbK9t6rQpSTsflyrFLfOhhCf1i+iguZGF/
 znl6mj1y75fayR9ZANraWHY4yuMICD3RT+rc1YPPTTccHfq/sg0yTWF+C
 zkd67hMChvbxUVJSt45zOXQTlRw6fGLCF+H7i1Lr/5Q/bRlexVo2TPqgx
 I2FIw8neNg5ux1K11BTB7lnqa34dheu+efApeaLV/F94U9VDh2ykMFHJa
 mnLOJ3gDE+dlmkzzLu+3dmAX74rP1/jBhqGEpWlpK7XC74ohiCVguFM88
 xzNUk3EqoAayOwqucRgdS0JvhdZiYPHAWyM/5GbhMmot0YGZRXlDpDO6h Q==;
X-CSE-ConnectionGUID: tudAx27VSrqGu5hbqCpQPw==
X-CSE-MsgGUID: Jz4TbCasRMeBQUPEe9uFbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65706346"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="65706346"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 11:12:08 -0700
X-CSE-ConnectionGUID: 0EukaGPkQW2yWgR8KK4lEg==
X-CSE-MsgGUID: rPZO8RUNQ3C4JOKRdPzqKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="156176569"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 11:12:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 11:12:07 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 11:12:07 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (40.107.102.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 11:12:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f5X/cTk4PN0lRYNZxRivBvEm/L3RA9kh8FXk70arVFS3dTLH4fMmW8JLOWcxuLqj7xKOAY1TrjxlpSHM4hPfsSOc4eLJBY3UsepkElx8VL88mzn7OI5YP61DENkASVyPwnDhOwStwPOYTZFD+i9C0SkKoaezERkP8f+qDFdIToM66yTLsPkORCdliW8WfGtHVRFku4UhqsUTcWCItM4nKkVV1Q7ShDpC35AbWl1IGxUk+eerRiYEeh2p+l9+W91x5vpxLcxjvk3r2L7NWdZXkRNl/6Gqr/u825W9/nEAFpgnUK7Dy0p7iqfDcPyOVuxdNZ8IPzZJeM7BFz1RdzN8VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+kkCi8VB1daMX5SZ6oCbsMmyeVt4G7FVjAjdUWljpQ=;
 b=ldi7IntLffzUIV5pe3LZ5LGr1gZQn1YcvgNN+jIq7JXPF39Gvwjxk2BpN2z0FcfpS3cesRAjdxNKK/gpjAxzsDcCimlY0FL4Xh5t6FkHdyrWrv0s8G37pKZzEVzE7OLweMNWtc7N2mTb5sb6YHMUYEdUDEhl5MNCEBm/OUb9IuCJ7xaZBaZ14QdfpqO/qNtbs7KKRRvffcA4G3SCMP6doaLsJTUjnIit3LC4FxDkW6A1FjHbcDE6AYajNhLlcV9RymomOxAXcT5rjRDPUM33JBoceq0Umc/iz+e2iCz/3TKyWzMT1S3ePhtxn7T1w0TNtH8pf702qD9OnDmz8RYSAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW5PR11MB5763.namprd11.prod.outlook.com (2603:10b6:303:19a::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8901.25; Wed, 9 Jul 2025 18:11:22 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8880.021; Wed, 9 Jul 2025
 18:11:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Topic: [PATCH v2 2/2] drm/i915/psr: Do not disable Panel Replay if PSR2
 is disabled
Thread-Index: AQHb8Kc9L1K5oI2goUG+8WAYnsMpTLQqBX0AgAAS7IA=
Date: Wed, 9 Jul 2025 18:11:17 +0000
Message-ID: <e4f4572425562c23117710d538ab2d8f377bc1f3.camel@intel.com>
References: <20250709075758.2510714-1-jouni.hogander@intel.com>
 <20250709075758.2510714-3-jouni.hogander@intel.com>
 <aG6g5C-nUMPqYSzS@intel.com>
In-Reply-To: <aG6g5C-nUMPqYSzS@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW5PR11MB5763:EE_
x-ms-office365-filtering-correlation-id: 8b07c827-6f21-4a85-70c9-08ddbf13ffd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VUorazZmOGE0ZDdUM1NQRmUvQ1FXRzdqM2l4Z040aE1mYU51N3k2ajdRVWQw?=
 =?utf-8?B?SVpuL1MxY3huSFZQTkFYOU13TW1KVkN3N2Z4VkRYSXhNVStDUSthSGNyN1pL?=
 =?utf-8?B?elZCaDJMS2p1VHMzdnVIMzBTQW53UTBrTmZPU1JqVzhkUXdQcGhWNFl2c2VM?=
 =?utf-8?B?dFI4N0lsaUpnbUx0UllMWlFwNlBmcWtDSXY2WlB4bTZDWlV2ZnFHUE9YU2lw?=
 =?utf-8?B?SlJZckZMaXB5RmpvcHFRdTBPM2NqT0FIREw1QndoQmVZVDBUR0tQRHdJUVNJ?=
 =?utf-8?B?RGt4RUNiMFpMWVFtRmQ4TDJHaHg2cUY0c2U5b3o3ZFU1WUROTWhwQW9uMzBK?=
 =?utf-8?B?VndYN3hXOFNtdS9IQnRRM1QwU1RkMDVvQStjQjN0eElLQ2ZKVzFTNHBuNmZE?=
 =?utf-8?B?SENhVTRKNHI3R0RYOXdLWkF0cGxoMjlINUFoUkE2TmNzNzhvUEJyaGRSVTZP?=
 =?utf-8?B?NVpLc0tTUDk4SzgzZ1FYbFJuRzRGNzRZQ2xIdytBb20zR3JnUzJHS2h4bFEy?=
 =?utf-8?B?SlltQlczWWovOTlOQjdkT3l6QjVvRFhpcFFUUkpqdWhvNjBtcTd4ZVU2UW53?=
 =?utf-8?B?S3lCaWgyTSs3RzJVQjZXbXlmZCsrQkFkRFpQc1BMbkR6UjJMcVZFTldsRnNv?=
 =?utf-8?B?YmZrajl5OUxDcnR3QmplNWxCSHhLTVFNYVF4YkZXMnpBZkI5NExWWnZxOTY1?=
 =?utf-8?B?Q1J3Z3NFdUp4RTIzM3RFVGNtMldMeDNESTh2eTF4NnNiQm9zZUROYVlvd1h2?=
 =?utf-8?B?dDhaRndNdFowclQycWI5TjkwYkdjaUV3V2FwN1pBY3VzaDhFeDByN0k1STlI?=
 =?utf-8?B?Y3Z0ZkxBUTExRlNZWDlEYVdBbDBZSjExTUpEYzVGYVFNMzBkTGNhSzJSa1p2?=
 =?utf-8?B?SkE1L3BtR1FPYW5Ibmd4YlY2V2gzVTNMMUFBc05UeW1LbUJacXBBNHRKY3Ny?=
 =?utf-8?B?M2ErYkRrSTc0RmVjYmU3akJzRkN4OXU0emFSUFlSRHNjM3FKend2cHdGRW1C?=
 =?utf-8?B?Qi9jNlh2SDk0QVFnWnA3NUtRMnV2NGhBNGZxeVBWcGhuK2Z1VUYxOCtiTThH?=
 =?utf-8?B?Yy9pN2x6b2R1RUJ2TnF0VXllRys4Y0d3ZlNzZ2hma3dsSWpPdkEvREI0UTRE?=
 =?utf-8?B?anMraWw0d3dVVGllb1RtY0lNYnZVeUpUWFI2YkNzVDFadWdTWW0vUWNHelFm?=
 =?utf-8?B?WkhNWlJEa1dJbmpDQk4wQmE3b0Y0ZGV1ZlU1UVluY3VKZi9UbEx3WnNxZlpT?=
 =?utf-8?B?d1MydmV6UytVb2FnYjg2OVFqbXZxbE0yZXlJdmtFZVRxaVRXKzNjZlFxZmxF?=
 =?utf-8?B?YzVXb3ZEV0VGaTF6dC9OOHhNVFBCOEZ1K21tbjJOZDlBK3JNNzBIUkp3WDhE?=
 =?utf-8?B?bHNjZk1qS0ovMTdSVGRnTDVJTGdjTnlQY2xkblRhbDVLdXFwYW82SnlrVXpo?=
 =?utf-8?B?Y2MrYVZuTDNGUFlHWWFFRVJsNjc0ZXRGVk12R0FIOW9xRFdRZFUyV0c1TkM2?=
 =?utf-8?B?WlNpZUJ3amgxbWtKN21jNGhiNXBodEV2VWdocGEweFRJWlRiRG50bUlHeVBs?=
 =?utf-8?B?cFF4OE5kN01YNVYzK0dPM3VYaVpyNk5NTXJpc2Q1dDZ6NGp4WHJWZXNVRkpH?=
 =?utf-8?B?TUJDaS82KzltRUpHZzlPMlBENGtPMjdYcllaOWQzQTAyakdVN2RqNFl3WTFr?=
 =?utf-8?B?NE1HbHdMdzl0dnVQenBBRlFPUEhPcWdKbmFhaVFzS29ncmQ1Qnl6ODc0RVgv?=
 =?utf-8?B?cEhMY250SjNiUjZBdnROYnp1cExnUUdYMUMyK2lSdWRPMW9GZ0Z2RXJPWGUv?=
 =?utf-8?B?ejVNdzhZMWpLd05DYXB4MC80cU1UU2dYQ1hKSzU5dWt6dU5yZEZlNzhtMTFi?=
 =?utf-8?B?VEx4UDlQdC9FZXl4MmxBVXBzMDBqWWV1MVlFMUFmNllWNW01N2VBVUtERDhM?=
 =?utf-8?B?aVhuZlc1eVUyc2ZQWG9PTHdsaURBYnZnQTN4ekxBNTV4Njd0OXR2K3FMQmpE?=
 =?utf-8?B?cFRvT2dtRFhRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WGdvTXFZTVFVZ3V6SXdQV3NxTFFlSnNwbmpMMHZmZ0IvK3c3TjgzOG5zbVdP?=
 =?utf-8?B?eDQ5Rm9aU2ZNRnJEU1pjdjk1M3MvL0FRTGpRbjJQUExEZUVZRU5yS21yRTIr?=
 =?utf-8?B?UWRFRlhGNkJwY3FGNG9RcGJRV0t5V1RFWlM4SERLYlovUi96VmFaS2Q5Zndt?=
 =?utf-8?B?ZGpOblpxT2d2VDZSaW5vQUxYelFHZUJNbW1Pb0JoMnhwRWZSbVc1Rk9ubjhq?=
 =?utf-8?B?dTNEdXVORU1GamtuQnJkczBUYlF0TDBvbDk3Z2xNZjVsS25mRlJpSm41YXc0?=
 =?utf-8?B?QUsvY1h3c1I1eEg0TW9UZXNyK2tGaEhKV001eWhHZ3J0MlBvVDJTWXFOSnNJ?=
 =?utf-8?B?VkxJVDZiQlY1R0tCUEhaWG10VTJ5WmxQU1FMMWRzaTB1SGw0VlVuVWRmaVU0?=
 =?utf-8?B?NXpJRmYveUpaT1A3dFdFcTZqR1gwdFRGbWVZaUtVMzRGREgvbE5IdFBHNTFJ?=
 =?utf-8?B?eUx1TUtlNjVya21BbzVkVEVsNlNVUG1DRis5T0xmY1RHN29JbUFnK1NKMjZm?=
 =?utf-8?B?TFJzN0xUMGhUblRncE1ZaWZJaTZPa3BQTklaYnhZNTJDZzJyWmUyVWY0TU5R?=
 =?utf-8?B?ODMrbVVYVWJKeXpTZjdIRGNKL1VTSjM0YTRpNldERmJEY3V0aldxVys2cVYy?=
 =?utf-8?B?b050YTQySi9KcDNCSmxtTzIra2JMUkZPSWVZNVc2eWJUNHREV1E0NjZMZ0o1?=
 =?utf-8?B?Y0RFMVQzaXZscEdwYXJzcVRKUlRCN2lqeDJOYkVoNXJDTlB2aFlrdTZrc1pZ?=
 =?utf-8?B?VC9Kank5ZTh2NVhFdkxIVU9DdGhaME41L3ExcUQ2L25HdEd2aFdaVWdCV1hl?=
 =?utf-8?B?cXVBc3FHbDZZRHpyTjllSzkzeFBCYTV5Nkx3U0xtZVJyZFBvVXM1c0FVWHVr?=
 =?utf-8?B?bVhYRU5UVUZGOTJPbjdCZE5DMWoydE9ScFEzZXMvcW54bitkYmtXRElhMzBF?=
 =?utf-8?B?d1pCV09kSjA5ajJKdklOR0FIV1hoQS9wZWlyNlpGNVdUSEpYMExabThLVVIz?=
 =?utf-8?B?WWVZREtXQkdDRElsUXA1Ymt6UlgxbGJMQzNrM0FJbzBPL3RzczlBekJpbkxo?=
 =?utf-8?B?WklXaG5rZFNpeVJZSnlXZERJSElEVmdpQndvZ1llRTBiVEpRTExCQ0NPWlRh?=
 =?utf-8?B?RHU3cFA5QnE5NHAxQ3g1RFVnR1ErRUQ5U2FwWVY3dnJ2MnYyb25QMXQwWEFQ?=
 =?utf-8?B?cnB0N3ZVWFhtTFQ5NzljRWJkNVRlTnVCSm8yR2JuQStFa1lvcVJUZHZDSzN3?=
 =?utf-8?B?UUFnM003bHVZL01DM3l3c2Q0cDdGaXNCTGRYdEpPYkNRZ3hPckZzUmY3aEdE?=
 =?utf-8?B?c0FoS1dwUnRRV1JxRDE1SlJiQXhRbVQ5TkFEb0xDQ0lHRXB1KzhUbEJaUWd2?=
 =?utf-8?B?MCtsays1Y1NqcTdZTy9tQTcvcmVrQUdsREpsa2tEWHNXZFBZdkVVME12QXBX?=
 =?utf-8?B?dnBJYlRVRXIwWDVYTFJiRmwwSndyd1hmUDdSU0hNazg0MHZJalFEWTBZbWlX?=
 =?utf-8?B?dHR2Yk4zYW81djVBakJINUxlZTlhS1JCdEpRZUYwcUxldmpLWUxoL3BxOWtQ?=
 =?utf-8?B?NGZ2cEYzR2FiK3d5MjVhUk1abzhOeXl4VGw5d3QvTXlZRk5xQ0FXV2FwVzgw?=
 =?utf-8?B?czFhVytsdURuQmZiTDB1bkp0Qzk4Qk5NbFNiZGJoeHhnQml6NzV1UFh0NUZX?=
 =?utf-8?B?RHJXb1JKSzMweVdNQkNzTm5yVkE3MHdYdEJ6K0taUjNqd05saG14a0pjamhJ?=
 =?utf-8?B?TE9FMjg5RGtUemVwNnVBRGhlMXUvQmpjNVBMdFpTV09odzlqaFpDNjFhdklY?=
 =?utf-8?B?YXFFRXJuSGdZSGYwc0ZBY3M0TUlpbWVUNy9IQ2ozUjltb3VlVXI3OGdxZlgx?=
 =?utf-8?B?MjVmUE1xVFN5Szl2bFQvTHhPMEhoTlNOdVo4TldFdGJ0UzNzZjFxZXJySFcz?=
 =?utf-8?B?blJFdFJiVHdkWHdTMGJYMHVKRkhaMEh6WUFNSHg2akdzNjE4b1ZIMC9hYUFB?=
 =?utf-8?B?SzBJeHVTbUUvbi9ITU1sWlBRZkZwZmpKcHlKRjV0b01YSnlFRTB2MU1wcWpF?=
 =?utf-8?B?TzBPR1BFODRRMWcyVWZJb0xQTHd4dzBpOUhmNXBrNm5ydDlxRVQzUHFrUWZa?=
 =?utf-8?B?TDBNdmo1NStMSDN0QlZ4bkdYekhYc1pDY2MrYUx0eTZGaGQwU3lHMlhZZm5X?=
 =?utf-8?B?UU9jd2Q1SGdSY0xETXl3dTlKUjhhR0g4bHlMazVuVUxDUDVGbnRaUFprQjdw?=
 =?utf-8?B?My9YYmxCRmNZcFlJK05HQlAwYnhRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0DE6BA279016B54F83C11675AB91DF66@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b07c827-6f21-4a85-70c9-08ddbf13ffd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2025 18:11:17.3068 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /48mj2gM7vX+nRVVoBtAabId1lCd6N6feq9pHDplXntD8TgSR+fBO4JI2pVO4a+9PZfZbivvr6SWf4Ll0uATn1/YSUr+sFXrwiKTK0G/zJM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5763
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

T24gV2VkLCAyMDI1LTA3LTA5IGF0IDIwOjAzICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgSnVsIDA5LCAyMDI1IGF0IDEwOjU3OjU4QU0gKzAzMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBDdXJyZW50bHkgZGlzYWJsaW5nIFBTUjIgdmlhIGVuYWJsZV9wc3Ig
bW9kdWxlIHBhcmFtZXRlciBjYXVzZXMNCj4gPiBQYW5lbA0KPiA+IFJlcGxheSBiZWluZyBkaXNh
YmxlZCBhcyB3ZWxsLiBUaGlzIHBhdGNoIGNoYW5nZXMgdGhpcyBieSBzdGlsbA0KPiA+IGFsbG93
aW5nDQo+ID4gUGFuZWwgUmVwbGF5IGV2ZW4gaWYgUFNSMiBpcyBkaXNhYmxlZC4NCj4gPiANCj4g
PiBBZnRlciB0aGlzIHBhdGNoIGVuYWJsZV9wc3IgbW9kdWxlIHBhcmFtZXRlciB2YWx1ZXMgYXJl
Og0KPiA+IA0KPiA+IC0xID0gUFNSMSA6IHllcywgUFNSMiA9IHllcywgUGFuZWwgUmVwbGF5IDog
eWVzDQo+ID4gwqAwID0gUFNSMSA6IG5vLMKgIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiBu
bw0KPiA+IMKgMSA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiB5ZXMN
Cj4gPiDCoDIgPSBQU1IxIDogeWVzLCBQU1IyID0geWVzLCBQYW5lbCBSZXBsYXkgOiBubw0KPiA+
IMKgMyA9IFBTUjEgOiB5ZXMsIFBTUjIgPSBubyzCoCBQYW5lbCBSZXBsYXkgOiBubw0KPiA+IA0K
PiA+IEkuZS4gdmFsdWVzIGRpZmZlcmVudCB0aGFuIC0xIGFuZCAwIGFyZSBoYW5kbGVkIGFzIGJp
dG1hc2tzIHdoZXJlDQo+ID4gQklUMA0KPiA+IGRpc2FibGVzIFBTUjIgYW5kIEJJVDEgZGlzYWJs
ZXMgUGFuZWwgUmVwbGF5Lg0KPiA+IA0KPiA+IHYyOg0KPiA+IMKgIC0gbWFrZSBpdCBtb3JlIGNs
ZWFyIHRoYXQgZW5hYmxlX3BzciBpcyBiaXRtYXNrIGZvciBkaXNhYmxpbmcNCj4gPiBkaWZmZXJl
bnQNCj4gPiDCoMKgwqAgUFNSIG1vZGVzDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jwqDCoCB8wqAgNiArKy0tLQ0K
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAg
fCAyMiArKysrKysrKysrKysrKy0NCj4gPiAtLS0tDQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDE5
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4g
aW5kZXggNzUzMTYyNDdlZThhLi4xOTVhZjE5ZWNlNWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4g
QEAgLTExNiw5ICsxMTYsOSBAQCBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFi
bGVfZmJjLA0KPiA+IGludCwgMDQwMCwNCj4gPiDCoAkiKGRlZmF1bHQ6IC0xICh1c2UgcGVyLWNo
aXAgZGVmYXVsdCkpIik7DQo+ID4gwqANCj4gPiDCoGludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWRf
dW5zYWZlKGVuYWJsZV9wc3IsIGludCwgMDQwMCwNCj4gPiAtCSJFbmFibGUgUFNSICINCj4gPiAt
CSIoMD1kaXNhYmxlZCwgMT1lbmFibGUgdXAgdG8gUFNSMSwgMj1lbmFibGUgdXAgdG8gUFNSMikg
Ig0KPiA+IC0JIkRlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsNCj4gPiArCSJF
bmFibGUgUFNSICgwPWRpc2FibGVkLCAxPWRpc2FibGUgUFNSMiAoQklUMCksIDI9ZGlzYWJsZQ0K
PiA+IFBhbmVsIFJlcGxheSAoQklUMSkpLiINCj4gPiArCSJWYWx1ZXMgZGlmZmVyZW50IGZyb20g
MCBhbmQgLTEgYXJlIGhhbmRsZWQgYXMgYml0bWFzayB0bw0KPiA+IGRpc2FibGUgZGlmZmVyZW50
IFBTUiBtb2Rlcy4iDQo+ID4gKwkiRS5nLiB2YWx1ZSAzIGRpc2FibGVzIGJvdGggUFNSMiBhbmQg
UGFuZWwgUmVwbGF5Lg0KPiA+IERlZmF1bHQ6IC0xICh1c2UgcGVyLWNoaXAgZGVmYXVsdCkiKTsN
Cj4gDQo+IFRoaXMgdGhpbmcgaXMgdmVyeSB1bmludHVpdGl2ZS4gV2h5IGRvbid0IHdlIGp1c3Qg
Z2V0IHJlcGxhY2UgaXQNCj4gd2l0aCBhIG5ldyBkaXNhYmxlX3BzciBtb2RwYXJhbSB0aGF0IGlz
IGNsZWFybHkganVzdCBhIGJpdG1hc2sgb2YNCj4gd2hhdCB0byBkaXNhYmxlPw0KDQpJIHdhcyB0
aGlua2luaWcgd2Ugc2hvdWxkIGtlZXAgaXQgYmFja3dhcmQgY29tcGF0aWJsZS4gSSBrbm93IHRo
aXMNCnBhcmFtZXRlciBpcyBpbiB1c2UuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiA+
IMKgDQo+ID4gwqBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkKHBzcl9zYWZlc3RfcGFyYW1zLCBi
b29sLCAwNDAwLA0KPiA+IMKgCSJSZXBsYWNlIFBTUiBWQlQgcGFyYW1ldGVycyBieSB0aGUgc2Fm
ZXN0IGFuZCBub3Qgb3B0aW1hbA0KPiA+IG9uZXMuIFRoaXMgIg0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggYTJiNTY4OGYwYzgyLi45
NTliODY4NjcyZDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBAQCAtMjU0LDEzICsyNTQsMTYgQEAgc3RhdGljIGJvb2wgcHNyMl9nbG9i
YWxfZW5hYmxlZChzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqB7DQo+ID4g
wqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXko
aW50ZWxfZHApOw0KPiA+IMKgDQo+ID4gKwlyZXR1cm4gZGlzcGxheS0+cGFyYW1zLmVuYWJsZV9w
c3IgPT0gLTEgfHwNCj4gPiArCQkhKGRpc3BsYXktPnBhcmFtcy5lbmFibGVfcHNyICYgMHgxKTsN
Cj4gPiArfQ0KPiA+ICsNCj4gPiArc3RhdGljIGJvb2wgc2VsX3VwZGF0ZV9nbG9iYWxfZW5hYmxl
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICt7DQo+ID4gwqAJc3dpdGNoIChpbnRl
bF9kcC0+cHNyLmRlYnVnICYgSTkxNV9QU1JfREVCVUdfTU9ERV9NQVNLKSB7DQo+ID4gLQljYXNl
IEk5MTVfUFNSX0RFQlVHX0RJU0FCTEU6DQo+ID4gwqAJY2FzZSBJOTE1X1BTUl9ERUJVR19GT1JD
RV9QU1IxOg0KPiA+IMKgCQlyZXR1cm4gZmFsc2U7DQo+ID4gwqAJZGVmYXVsdDoNCj4gPiAtCQlp
ZiAoZGlzcGxheS0+cGFyYW1zLmVuYWJsZV9wc3IgPT0gMSkNCj4gPiAtCQkJcmV0dXJuIGZhbHNl
Ow0KPiA+IMKgCQlyZXR1cm4gdHJ1ZTsNCj4gPiDCoAl9DQo+ID4gwqB9DQo+ID4gQEAgLTI2OSw3
ICsyNzIsOCBAQCBzdGF0aWMgYm9vbCBwYW5lbF9yZXBsYXlfZ2xvYmFsX2VuYWJsZWQoc3RydWN0
DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKgew0KPiA+IMKgCXN0cnVjdCBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5ID0NCj4gPiB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiDC
oA0KPiA+IC0JaWYgKChkaXNwbGF5LT5wYXJhbXMuZW5hYmxlX3BzciAhPSAtMSkgfHwNCj4gPiAr
CWlmICgoZGlzcGxheS0+cGFyYW1zLmVuYWJsZV9wc3IgIT0gLTEgJiYNCj4gPiArCcKgwqDCoMKg
IGRpc3BsYXktPnBhcmFtcy5lbmFibGVfcHNyICYgMHgyKSB8fA0KPiA+IMKgCcKgwqDCoCAoaW50
ZWxfZHAtPnBzci5kZWJ1ZyAmDQo+ID4gSTkxNV9QU1JfREVCVUdfUEFORUxfUkVQTEFZX0RJU0FC
TEUpKQ0KPiA+IMKgCQlyZXR1cm4gZmFsc2U7DQo+ID4gwqAJcmV0dXJuIHRydWU7DQo+ID4gQEAg
LTE0MTUsNiArMTQxOSwxMiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChz
dHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAJaWYgKCFpbnRlbF9kcC0+cHNy
LnNpbmtfcHNyMl9zdXBwb3J0KQ0KPiA+IMKgCQlyZXR1cm4gZmFsc2U7DQo+ID4gwqANCj4gPiAr
CWlmICghcHNyMl9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCkpIHsNCj4gPiArCQlkcm1fZGJnX2tt
cyhkaXNwbGF5LT5kcm0sDQo+ID4gKwkJCcKgwqDCoCAiUFNSMiBkaXNhYmxlZCBieSBmbGFnXG4i
KTsNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+ID4gKwl9DQo+ID4gKw0KPiA+IMKgCS8qIEpTTCBh
bmQgRUhMIG9ubHkgc3VwcG9ydHMgZURQIDEuMyAqLw0KPiA+IMKgCWlmIChkaXNwbGF5LT5wbGF0
Zm9ybS5qYXNwZXJsYWtlIHx8IGRpc3BsYXktDQo+ID4gPnBsYXRmb3JtLmVsa2hhcnRsYWtlKSB7
DQo+ID4gwqAJCWRybV9kYmdfa21zKGRpc3BsYXktPmRybSwgIlBTUjIgbm90IHN1cHBvcnRlZCBi
eQ0KPiA+IHBoeVxuIik7DQo+ID4gQEAgLTE1MTcsNyArMTUyNyw3IEBAIHN0YXRpYyBib29sDQo+
ID4gaW50ZWxfc2VsX3VwZGF0ZV9jb25maWdfdmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gPiDCoAkJZ290byB1bnN1cHBvcnRlZDsNCj4gPiDCoAl9DQo+ID4gwqANCj4gPiAtCWlm
ICghcHNyMl9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCkpIHsNCj4gPiArCWlmICghc2VsX3VwZGF0
ZV9nbG9iYWxfZW5hYmxlZChpbnRlbF9kcCkpIHsNCj4gPiDCoAkJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLA0KPiA+IMKgCQkJwqDCoMKgICJTZWxlY3RpdmUgdXBkYXRlIGRpc2FibGVkIGJ5DQo+
ID4gZmxhZ1xuIik7DQo+ID4gwqAJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+ID4gQEAgLTE2NjQsNyAr
MTY3NCw3IEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ICppbnRlbF9kcCwNCj4gPiDCoAl1OCBhY3RpdmVfcGlwZXMgPSAwOw0KPiA+IMKgDQo+ID4g
wqAJaWYgKCFwc3JfZ2xvYmFsX2VuYWJsZWQoaW50ZWxfZHApKSB7DQo+ID4gLQkJZHJtX2RiZ19r
bXMoZGlzcGxheS0+ZHJtLCAiUFNSIGRpc2FibGVkIGJ5DQo+ID4gZmxhZ1xuIik7DQo+ID4gKwkJ
ZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiUFNSL1BhbmVsIFJlcGxheQ0KPiA+IGRpc2FibGVk
IGJ5IGZsYWdcbiIpOw0KPiA+IMKgCQlyZXR1cm47DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gLS0g
DQo+ID4gMi40My4wDQo+IA0KDQo=
