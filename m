Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7316A6B6DB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 10:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1633910E719;
	Fri, 21 Mar 2025 09:19:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MUCCexDI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6124110E712;
 Fri, 21 Mar 2025 09:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742548790; x=1774084790;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z+ENHeg6uGZ8O1ADAo4PqJV7x+kSX0wuwCOjBGG1/HQ=;
 b=MUCCexDIRpXNvtM+yiSf+WkEUzhXib3+Hk6X6exAOUi88f2iJEnuFFpg
 8OLNmbzdcCDhhau2DC/0nNACY9VA+jRMe3TBuGQo4QicOKobkIvEcp6Bl
 Ui0Lvftz8y+uFuMH0LwYLmdTb7si6grQcxydnLLfXfvVePfaI6HBRO6pY
 hIw94k1Y9F5W41jRYIOjPW8nPfG+XOJq+p6FRrz9UTbwOfXJ7M5FFqy+k
 21QCWdr24GZUQq3ZJbFCWyCQ/w/EZczj+VBGl1LFweLiRXjUY+djKSVWa
 jzXp4ZoVw8c+MccWKFYmTQ7t0mpb+ml876aWxtlBdRi3OYm8WfOAqoqma w==;
X-CSE-ConnectionGUID: TrGFAMD+SuisIrAfyPk5EQ==
X-CSE-MsgGUID: S+qxpnugScyc/vDeyBC9DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43821244"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43821244"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:19:50 -0700
X-CSE-ConnectionGUID: jfFNEXpsS3aV9AlCmpXcLQ==
X-CSE-MsgGUID: iklj8ZMTSoSBi6cGckpGMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123322959"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:19:50 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 21 Mar 2025 02:19:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 21 Mar 2025 02:19:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 02:19:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nqTojDS6CDmhqwJeM1Ud5mzWK+7MUKEwg4r2yR4zakGdKTRCSJ4X8CznE3kpdRbh++xTsWuDPbwyMeW2L1+8o8L7pyWlByIBig4v3by+Yj9/G4Pc/m85amf3DKwcYAm6sPmupEErPsYChB7r5ULXdnU978KmDMrCmnJMU/AezEvwErsI7XtKN3sVgT2JVarZAwkxCZJava0eRBLaRqLNvjssv+/nvhM5Li3KPZKkJvjrX1W0O91+9O5wiUSu9JADix8kWcmD1HCKCAa1XqkxRm/j62QRAih9U3C3uceclrYiVFDODQRMmss4jtH+MQaNILjQkOZCTzyfRnxyM1cXIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z+ENHeg6uGZ8O1ADAo4PqJV7x+kSX0wuwCOjBGG1/HQ=;
 b=WJpVMCFvZNKU0roITol7m1fyAILzsto6wmbRugC9/Er7nGqO3nbBo8yHl0o9ApGiMWtJYo7LTzokBSmZpI8LoZtvBB2TiQpFDEVGlfQzXEGfUQOZph/MTvHidSzWqc+KepSMzF666efEeikDklG2bMfodkv+QXVokFQ17kUbFgEwsVmRnmSydosnyZSr38JdkT0cZ1lTCn1BCQAyyiOg25zdx0gPuDMMlWZhqRIl7T3pK3ZJxfbbArCsB3aF4POCR9Wv/J5HVozXQQJOagKqgLnaWdTFB3svAAhAtBoHzEd4ccrHw86t0Tyk73YKYjo33A09RA5ze/cq7iIurMV/7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Fri, 21 Mar
 2025 09:19:42 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%5]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 09:19:41 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Check transcoder Selective Update support
 for PR as well
Thread-Topic: [PATCH] drm/i915/psr: Check transcoder Selective Update support
 for PR as well
Thread-Index: AQHbj1jKbE7esUlgy0qbzeuk1dit5bN9Xp8A
Date: Fri, 21 Mar 2025 09:19:41 +0000
Message-ID: <BL1PR11MB597961E4A62815BC9A12407CF9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20250307120035.2976127-1-jouni.hogander@intel.com>
In-Reply-To: <20250307120035.2976127-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|CH3PR11MB7842:EE_
x-ms-office365-filtering-correlation-id: f48cc9df-d364-4d0d-53eb-08dd68598336
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?eHlKNlp4WTFRb0c3eHJTbXNBMGxVU3dMOGhUWFhzMXhmTUVlQjZ1Q0VtdGhS?=
 =?utf-8?B?T2N6ZEhjQ2hzRmVPa0gyL0JtN2NaN0QvdDZtQlNsUUF3QmIxaVdLN1VCSW11?=
 =?utf-8?B?T1NHQlVDVzZGRzVJbzA2b0pYeStqNWpvejArUmpHUHk4RDEvK3J0VHhqNDRG?=
 =?utf-8?B?eWJMaEMwdU9iMWE3dGxSYjZHMGsrbmQxdFpWYnpLYnphNVhEMEZVQzhkMEI4?=
 =?utf-8?B?a2VzNHpSNVNjNDBjdTA4OXRkMkpWTmFYTnh3VnVIUytXN1JpOGdGKzNEbFdP?=
 =?utf-8?B?YVVzNkFZa3BxZXkxQ2NCblVjc3lRdmJldE1ET1R6WkJ0N3l5VmszV0M0SEtk?=
 =?utf-8?B?UVN3dC9RSmN5U0EvUC9iaFAxWFRMRjVwZDc2b0trV0JOdVZ1R3VXSHBXNlEw?=
 =?utf-8?B?RnEwTWVYNUtwa2g1NDBWeUJ4WG9zeHJLWTRZMmRyZmdSNXZWbGlTTFEvajVr?=
 =?utf-8?B?aHd5RC9OalF5Z3MveGxtajJKbTdVTXMya0l4N3RnZnVvNzdMWVpUWUEwc0pU?=
 =?utf-8?B?b2pVZlA1S3FMaUlKTHhhdFZkZC9iV3o4SXF3Uktva2NmcGVZL3J0SzVhbkla?=
 =?utf-8?B?TWN2ekkwL1B1Yzl6d0pxZDJRMWgyRmtmMk5JNmdZMGhsSjNhOWkvLzFOQmli?=
 =?utf-8?B?R2k2QnpxNGpFZ05YaUJrUGszS05FL21WUE1TYTE4WCttVkJ5YlBmOG5MY2hW?=
 =?utf-8?B?NXZKVlRPTFBXU0l3WmdES2E3N1h6U3BEVlFkcUVuTUxxeUQ3QmVmZnhGelBS?=
 =?utf-8?B?MkJwTnExWFZQT3g3VXE1MUNodklDam9Rd3lJNFE5Yjd1THJGdDFDcXU5bVQ4?=
 =?utf-8?B?eThyUTVMTkFxMEJVSmtuUzd4aVZsalJUNG95UXR4Z1pUSGsxb1JoZFpaaFJt?=
 =?utf-8?B?cm9DQ0dvZS9KV0dYM2lIUGVDa24xSmtlaHltUGgxbXl6bnYrZzRaUWE5aGor?=
 =?utf-8?B?c01hcWJ6NFVWSkpZZ3lBeE1nRmE2ZDBKV2JYOHJGZ2luc0lZTWE2Ny83RUti?=
 =?utf-8?B?YkU0bWovL3liaG1yb3ZCVXdxVkVlSE8ya3NFWmM3UGZCSWlaazQ5T3JTS0F2?=
 =?utf-8?B?dHE4V0IzVzJ3UHdOQXkxME9pN1ZVWS9RdWxURVpYUGJDaTZDRHBtV1UrcmlZ?=
 =?utf-8?B?ZXFHd0xXeXJ1dWpYTWVCUHRES2pHb3lXbkVZaXRHY29wOWhFdFl1UGNwKzh1?=
 =?utf-8?B?WE44UUl6UWI5eEpsd3dsOTh4OWFOK09IRmpmSmJYaDhaSjZwWFl0ekdlKzJl?=
 =?utf-8?B?SmhQZ1VxUThKTHFCc2l1QzNDNVlZSTBhazdNbU5IK3RHd0RjOTU5b2l0K0R0?=
 =?utf-8?B?eVJKdENPY2UyekhQZnozSXJEd0FwdGRXYk1HRDlCY01SKzBDSjhsSC8rYitD?=
 =?utf-8?B?U2ZrVlpCK2szdkZ1T25LaDJ0Sk9YL0hGKzNyQVZiT2ZIdU4zRmI0WnJmL0ZF?=
 =?utf-8?B?WjlYTXYyaEx1ZDJkb0xYRnliTGUvOE1YWnlrNGxnNHBjejZTazhEUTBCa3lI?=
 =?utf-8?B?eWhmYWZ5NjZFYWw0cFdjQkszQXRYNHdFZWRENk1ydzVIUzZMMlhrVHVPd1Jh?=
 =?utf-8?B?aFRBTGkwNFNpVkJQcVpCVTJFTnVWMm1HaGp6YzQzbnYyckZvYnV6MlF4YVdT?=
 =?utf-8?B?WUQ2RmFPOGRSYUZvNjhKUWlGY0czRkVpNXExWDUxZWVrTTk1SnBFUkF6Wkcr?=
 =?utf-8?B?Y1VaVTVCU1JpNXA4TStFUm5lcjIrSzZHWmNGMU0xWGpaQ0p1M0YwRGFiZWMr?=
 =?utf-8?B?Zk15V2ZnamExb3BrZ09jWlBmWXRjcE9iVGRSazk0RTROWkhXTzNHc3ZNN3hv?=
 =?utf-8?B?bjZKaHFGZVlITlNZeE5RY2lkR0dTT0V0S2t3dzVCb2E2US90b254LzczV2Z1?=
 =?utf-8?B?UTVBc3l3dWJYYXFGNEVHKzlITVZSS2VYcURqenRNazJJTk9tb1p5N0lWbWtD?=
 =?utf-8?Q?UZdgMNAH4Z5JETRfLo8hjWxCmpRKnQRR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmprSDZvdDBWVGRlOE9OZ2RLV3JrT3IxRGp0MzZRQXpQS2JWdjdmUGJCZTRr?=
 =?utf-8?B?KzFueDUzZngwUWlwQm4zOW9pNERnS0xDUXhHTnkzTDBQb3BMNmt4a01IYUpj?=
 =?utf-8?B?dEZSQXVnL0NxckM1Lyt1RWpqOE1CVzJEREdGUGczYmZGYkhRVlh0aWo4M3B6?=
 =?utf-8?B?VW1CZG9RYi9KT2hsMVZYQ2pyTHR5Rm9KK0tTaE5CWjkxc2tSRDduTUNWSGc2?=
 =?utf-8?B?dys5dFQrUW5Pajh2cnhvUThLVVpXUUFGT29jbjArdWlBN3RFcjFaWlhQWlBx?=
 =?utf-8?B?bUI3NDd5U09PdzlXaW8yWDl2THZ5Tk5aTktQWUwxSmN4U0xUQzZOblNoSmJi?=
 =?utf-8?B?ODY4b3FzcWlJYllaN3JzazNaVGxjV2I1NCtVTzNoMTJuZVdPbjUwRGlCVkJX?=
 =?utf-8?B?T0xjSVViN2NiNkc3QU0wQjJ2WHUxZlRFQStmV0s5LzJScGdDNDRjcEFuaFZC?=
 =?utf-8?B?a09XaUZZTStLYW1uNmRMcWFXMytUNml1SnRGSnNOdVBSb0FKUW9qWTUwL0Ir?=
 =?utf-8?B?T3RwU0x0Nm5NSXJJV0lDM1M0ZjhxVTcxU1hXRm50UGo0cTVNTXl3KzFhb1ds?=
 =?utf-8?B?dnk4OHdFMWRNMHJaUFlqd0FKaHBQV0lTd21vTnNHblZ4UnlRY3VCVlMzbDFn?=
 =?utf-8?B?L3QwTXRhU0wrcC82L1crbXR4Q1J1TngzT1JhMXByN2pJcGZaSmp4b1dqYXpI?=
 =?utf-8?B?ek9lOGlua1pGbVl0Z0dJL2xxeG8zUGVQemM1ajVEd1djQkRBK3J0Ti9TaGRD?=
 =?utf-8?B?VWloN2ZjNWgyMGdNRE5EWlFPL1hqUzI3bnkzMTVNdWlXaGR5TmhONkFFcjg1?=
 =?utf-8?B?aHY1TmZ1MzBBcHdEVHkybWdzZ3o0UVlubmNORms3ZXVrSDJZaXlHMTd5Q2JV?=
 =?utf-8?B?VnR0cEE0Zzd1ZFhRem1QT0Z3d0xORWJ1RDRNZHl5TkJpMGlOcjFvSkdTVnNF?=
 =?utf-8?B?N3pnK0oxclFDLzZUeUZZTkloaTV3RWpkZ0JzQlI2QUx1WER3YW9GYmtYdVFH?=
 =?utf-8?B?S3BKci91SzFDVFdYK1gvWUJ6ckNNakFNV0VGeDlyQTFGMzZjYjJwN2t2dmI3?=
 =?utf-8?B?WVYvR05pTElLa2kreU5DWVhqRjhVTXBvbG5wb2FsTDM2TlVNdlhkQXNhY1o2?=
 =?utf-8?B?LzZWcXlkVjRhd01xcGdFS0Ric0RLSlhyR2tERmdtR08zSVdsTFR2Mk9mZU56?=
 =?utf-8?B?RndRczlxbm54aUlEbjJOK0xwTTByRHo1bUx3ZDVSbVVMZmZReTlYZEVmdkpu?=
 =?utf-8?B?ajdxeVBmeC9kMDRhVmUycTVqUEJCdjRXT1IxVnB2RUNaSE11UHczTW4rYkVx?=
 =?utf-8?B?WUQ4dXVzdnQ2RDV3R3ZQckhOcWVsd0EyR05SV3NQOWFMeUsrVDd1N1F3NERx?=
 =?utf-8?B?YmVYcC9oaVZKWGlURjcxOFZaWWhpektEZFZzWDJTdFpzOXBsdTYrYWdkLzVi?=
 =?utf-8?B?b1lKVEgvVEJ5UzJ6cjdpZWtKZE14SzZyOHhiMVpzUDF6NXRZUmF3YkxST3Zs?=
 =?utf-8?B?QXNTaEtLNGFuaElRbXNveUJWaS9Da0M5VzdNajBGc1BkbC9YYnU0RUZXUjAz?=
 =?utf-8?B?SzUyZnNqSVNnMWN1VmwxSHREMldFUGVxUXZOTTU4RjhZYXJQRW13TytlakVk?=
 =?utf-8?B?R1g1RCtOb05xdDVqbnhzOU1Xc0pPNVVINjFzN1NVaWVQelNvWFFaYTA3MlB1?=
 =?utf-8?B?RHhUOVE2MEd1OWZUb3IzU213eDBqVnZQa0s1Smlsa3dGZHBVdENSUXYwRWNl?=
 =?utf-8?B?aFlJU290SjdVUTZnZCtmTk41MUVxWGZQblhYTmNoTG1VbmpDSDhCNjFxaWpx?=
 =?utf-8?B?THY3RGtsNHJwUlpwSVpnSlFGc2tVTHM2cGVqNkgxMXhTaThrRjlaRVRGSGsw?=
 =?utf-8?B?RGplTnFremo4MDNJNUNrZW5FWGFGR1BVQkxuQ1I3VnhxYStRV0FUREQ2cVpo?=
 =?utf-8?B?YVJQbDEvNXE4QWZmT2tkQnUyVlB4L3I4WnkxWWJnWlQ1UU40Qi9VVzJxQTNk?=
 =?utf-8?B?Qk1tVTJoaXRwVk5YNmo5ZVpiZGYrS1dwNGFWZEZ2WG1ETmNvZkQ0Mi8rZnFr?=
 =?utf-8?B?U3g2ZXg1blhuelhTdEhUd3BmVWsvK200UGtqclpwK3c1cFovakVzV1BjRUlX?=
 =?utf-8?Q?/4YKsfZ5oRN2qMiyQFGUvq6ZM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f48cc9df-d364-4d0d-53eb-08dd68598336
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2025 09:19:41.9011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kAjOg4Ilpa3pyKRKSp7WXW+NwC7rbt/tTOmF6zeTgdl9GSQRnW6dKeeWvmiuvCa9378syRVMzBBJSF9RgN0QDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggNywgMjAyNSA1OjMxIFBNDQo+IFRvOiBp
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L3BzcjogQ2hlY2sgdHJhbnNjb2RlciBTZWxlY3Rp
dmUgVXBkYXRlIHN1cHBvcnQNCj4gZm9yIFBSIGFzIHdlbGwNCj4gDQo+IFdlIG5lZWQgdG8gZW5z
dXJlIHRyYW5zY29kZXIgaXMgc3VwcG9ydGluZyBTZWxlY3RpdmUgVXBkYXRlIGluIGNhc2Ugb2Yg
UGFuZWwNCj4gUmVwbGF5IGFzIHdlbGwuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTQgKysrKysrKy0tLS0tLS0NCj4gIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggNzRhYTdiYTM0ZmRh
Li44NGU0ZDZmMWYzYTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBAQCAtMTQ5MSwxMyArMTQ5MSw2IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJf
Y29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJCXJldHVybiBm
YWxzZTsNCj4gIAl9DQo+IA0KPiAtCWlmICghdHJhbnNjb2Rlcl9oYXNfcHNyMihkaXNwbGF5LCBj
cnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpIHsNCj4gLQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+
ZHJtLA0KPiAtCQkJICAgICJQU1IyIG5vdCBzdXBwb3J0ZWQgaW4gdHJhbnNjb2RlciAlc1xuIiwN
Cj4gLQkJCSAgICB0cmFuc2NvZGVyX25hbWUoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKTsN
Cj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtCX0NCj4gLQ0KPiAgCS8qDQo+ICAJICogRFNDIGFuZCBQ
U1IyIGNhbm5vdCBiZSBlbmFibGVkIHNpbXVsdGFuZW91c2x5LiBJZiBhIHJlcXVlc3RlZA0KPiAg
CSAqIHJlc29sdXRpb24gcmVxdWlyZXMgRFNDIHRvIGJlIGVuYWJsZWQsIHByaW9yaXR5IGlzIGdp
dmVuIHRvIERTQyBAQA0KPiAtMTU3OSw2ICsxNTcyLDEzIEBAIHN0YXRpYyBib29sIGludGVsX3Nl
bF91cGRhdGVfY29uZmlnX3ZhbGlkKHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJ
CWdvdG8gdW5zdXBwb3J0ZWQ7DQo+ICAJfQ0KPiANCj4gKwlpZiAoIXRyYW5zY29kZXJfaGFzX3Bz
cjIoZGlzcGxheSwgY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpKSB7DQo+ICsJCWRybV9kYmdf
a21zKGRpc3BsYXktPmRybSwNCj4gKwkJCSAgICAiU2VsZWN0aXZlIHVwZGF0ZSBub3Qgc3VwcG9y
dGVkIGluIHRyYW5zY29kZXINCj4gJXNcbiIsDQo+ICsJCQkgICAgdHJhbnNjb2Rlcl9uYW1lKGNy
dGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7DQo+ICsJCWdvdG8gdW5zdXBwb3J0ZWQ7DQo+ICsJ
fQ0KPiArDQoNClBhbmVsIHJlcGxheSBmb3IgRURQIGlzIGZpbmUgd2l0aCB0aGUgYWJvdmUgY2hh
bmdlIGJ1dCBwYW5lbCByZXBsYXkgZm9yIERQIGNhbiBiZSBzdXBwb3J0ZWQgYnkgYWxsIERQMi4w
IHRyYW5zY29kZXIgYW5kIGZvciB0aGF0IG1heWJlIG9ubHkgdHJhbnNjb2Rlcl9oYXNfcHNyMigp
IGlzIG5vdCBjb3ZlcmluZyBmb3IgRFAuICBBZGRpdGlvbmFsIGNoZWNrIGZvciBEUDIuMCBjYW4g
YmUgYWRkZWQgZm9yIERQIGxpa2UgLSB0cmFuc2NvZGVyX2hhc19wc3IyIHx8IEhBU19EUDIwLiBQ
bGVhc2UgY29ycmVjdCBtZSBpZiBJIGFtIG1pc3Npbmcgc29tZXRoaW5nLg0KDQoNClJlZ2FyZHMs
DQpBbmltZXNoDQoNCj4gIAlpZiAoIWNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgJiYNCj4g
IWludGVsX3BzcjJfY29uZmlnX3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKSkNCj4gIAkJZ290
byB1bnN1cHBvcnRlZDsNCj4gDQo+IC0tDQo+IDIuNDMuMA0KDQo=
